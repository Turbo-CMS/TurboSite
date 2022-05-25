<?PHP

/**
 * Turbo CMS
 *
 * @author	Turbo CMS
 * @link	https://turbo-cms.com
 *
 * This class uses the project.tpl and project.tpl templates
 *
 */

require_once('View.php');

class ProjectsView extends View
{
	public function fetch()
	{
		$url = $this->request->get('project_url', 'string');

		// If the project address is specified
		if (!empty($url)) {
			// Displaying the project
			return $this->fetch_project($url);
		} else {
			// Otherwise, we display a list of projects
			return $this->fetch_projects($url);
		}
	}

	private function fetch_project($url)
	{
		// Selecting a project from the database
		$project = $this->projects->get_project($url);
		$project->images = $this->projects->get_images(array('project_id' => $project->id));
		$project->image = &$project->images[0];

		// If not found - error
		if (!$project || (!$project->visible && empty($_SESSION['admin'])))
			return false;

		// Last-Modified 
		$LastModified_unix = strtotime($project->last_modified); // time the page was last modified
		$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
		$IfModifiedSince = false;
		if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));
		if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
			$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
		if ($IfModifiedSince && $IfModifiedSince >= $LastModified_unix) {
			header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified');
			exit;
		}
		header('Last-Modified: ' . $LastModified);

		// Name autocomplete for comment form
		if (!empty($this->user))
			$this->design->assign('comment_name', $this->user->name);

		// Accept comment
		if ($this->request->method('post') && $this->request->post('comment')) {
			$comment = new stdClass;
			$comment->name = $this->request->post('name');
			$comment->text = $this->request->post('text');
			$captcha_code =  $this->request->post('captcha_code', 'string');

			if ($this->settings->comments_tree_projects == "on") {
				$comment->parent_id = $this->request->post('parent_id');
				$comment->admin = $this->request->post('admin');
			}

			// Let's pass the comment back to the template - in case of an error, you will need to fill out the form
			$this->design->assign('comment_text', $comment->text);
			$this->design->assign('comment_name', $comment->name);

			if ($this->settings->comments_tree_projects == "on") {
				$this->design->assign('parent_id', $comment->parent_id);
			}

			// Checking the captcha and filling out the form
			if ($this->settings->captcha_project && ($_SESSION['captcha_project'] != $captcha_code || empty($captcha_code))) {
				$this->design->assign('error', 'captcha');
			} elseif (empty($comment->name)) {
				$this->design->assign('error', 'empty_name');
			} elseif (empty($comment->text)) {
				$this->design->assign('error', 'empty_comment');
			} else {
				// Create a comment
				$comment->object_id = $project->id;
				$comment->type      = 'project';
				$comment->ip        = $_SERVER['REMOTE_ADDR'];

				// If there were approved comments from the current ip, we approve immediately
				$this->db->query("SELECT 1 FROM __comments WHERE approved=1 AND ip=? LIMIT 1", $comment->ip);
				if ($this->db->num_rows() > 0)
					$comment->approved = 1;

				// Adding a comment to the database
				$comment_id = $this->comments->add_comment($comment);

				// Sending email
				$this->notify->email_comment_admin($comment_id);

				// Get saved captcha
				unset($_SESSION['captcha_code']);
				header('location: ' . $_SERVER['REQUEST_URI'] . '#comment_' . $comment_id);
			}
		}

		if ($this->settings->comments_tree_projects == "on") {
			$filter = array();
			$filter['type'] = 'project';
			$filter['object_id'] = $project->id;
			$filter['approved'] = 1;
			$filter['ip'] = $_SERVER['REMOTE_ADDR'];

			// Sort comments, save in session so that the current sorting remains for the entire site
			if ($sort = $this->request->get('sort', 'string'))
				$_SESSION['sort'] = $sort;
			if (!empty($_SESSION['sort']))
				$filter['sort'] = $_SESSION['sort'];
			else
				$filter['sort'] = 'rate';
			$this->design->assign('sort', $filter['sort']);

			// Reading the total number of comments to calculate pages         
			$comments_count = $this->comments->count_comments($filter);

			// Tree comments to the project
			$comments = $this->comments->get_comments_tree($filter);
			$this->design->assign('comments_count', $comments_count);
		} else {

			// Project comments
			$comments = $this->comments->get_comments(array('type' => 'project', 'object_id' => $project->id, 'approved' => 1, 'ip' => $_SERVER['REMOTE_ADDR']));
		}

		// Related projects
		$related_ids = array();
		$related_projects = array();
		foreach ($this->projects->get_related_projects($project->id) as $p) {
			$related_ids[] = $p->related_id;
			$related_projects[$p->related_id] = null;
		}
		if (!empty($related_ids)) {
			foreach ($this->projects->get_projects(array('id' => $related_ids, 'in_stock' => 1, 'visible' => 1)) as $p)
				$related_projects[$p->id] = $p;

			$related_projects_images = $this->projects->get_images(array('project_id' => array_keys($related_projects)));
			foreach ($related_projects_images as $related_project_image)
				if (isset($related_projects[$related_project_image->project_id]))
					$related_projects[$related_project_image->project_id]->images[] = $related_project_image;

			foreach ($related_projects as $id => $r) {
				if (is_object($r)) {
					$r->image = &$r->images[0];
				} else {
					unset($related_projects[$id]);
				}
			}
			$this->design->assign('related_projects', $related_projects);
		}

		$this->design->assign('comments', $comments);
		$this->design->assign('project',  $project);

		// Category
		$this->design->assign('projects_category', $this->projects_categories->get_projects_category(intval($project->category_id)));

		// Neighboring projects
		$this->design->assign('next_project', $this->projects->get_next_project($project->id));
		$this->design->assign('prev_project', $this->projects->get_prev_project($project->id));

		// Meta tags
		$this->design->assign('meta_title', $project->meta_title);
		$this->design->assign('meta_keywords', $project->meta_keywords);
		$this->design->assign('meta_description', $project->meta_description);

		$auto_meta = new StdClass;

		$auto_meta->title       = $this->seo->project_meta_title       ? $this->seo->project_meta_title       : '';
		$auto_meta->keywords    = $this->seo->project_meta_keywords    ? $this->seo->project_meta_keywords    : '';
		$auto_meta->description = $this->seo->project_meta_description ? $this->seo->project_meta_description : '';

		$auto_meta_parts = array(
			'{project}' => ($project ? $project->name : ''),
			'{page}' => ($this->page ? $this->page->header : ''),
			'{site_url}' => ($this->seo->am_url ? $this->seo->am_url : ''),
			'{site_name}' => ($this->seo->am_name ? $this->seo->am_name : ''),
			'{site_phone}' => ($this->seo->am_phone ? $this->seo->am_phone : ''),
			'{site_email}' => ($this->seo->am_email ? $this->seo->am_email : ''),
		);

		$auto_meta->title = strtr($auto_meta->title, $auto_meta_parts);
		$auto_meta->keywords = strtr($auto_meta->keywords, $auto_meta_parts);
		$auto_meta->description = strtr($auto_meta->description, $auto_meta_parts);

		$auto_meta->title = preg_replace("/\{.*\}/", '', $auto_meta->title);
		$auto_meta->keywords = preg_replace("/\{.*\}/", '', $auto_meta->keywords);
		$auto_meta->description = preg_replace("/\{.*\}/", '', $auto_meta->description);

		$this->design->assign('auto_meta', $auto_meta);

		return $this->design->fetch('project.tpl');
	}

	// Project list display
	private function fetch_projects()
	{

		$filter = array();

		// If the keyword is set
		$keyword = $this->request->get('keyword');
		if (!empty($keyword)) {
			$this->design->assign('keyword', $keyword);
			$filter['keyword'] = $keyword;
		}

		// GET parameters
		$category_url = $this->request->get('category', 'string');

		// Select the current category
		if (!empty($category_url)) {
			$category = $this->projects_categories->get_projects_category((string)$category_url);
			if (empty($category) || (!$category->visible && empty($_SESSION['admin'])))
				return false;
			$this->design->assign('projects_category', $category);
			$filter['category_id'] = $category->children;
		}

		// Sorting projects, save in session so that the current sorting remains for the entire site
		if ($sort = $this->request->get('sort', 'string'))
			$_SESSION['sort'] = $sort;
		if (!empty($_SESSION['sort']))
			$filter['sort'] = $_SESSION['sort'];
		else
			$filter['sort'] = 'position';
		$this->design->assign('sort', $filter['sort']);

		// Number of projects on 1 page
		$items_per_page = $this->settings->projects_num;

		// Select only visible projects
		$filter['visible'] = 1;

		// Current page in pagination
		$current_page = $this->request->get('page', 'integer');

		// If not set, then equal to 1
		$current_page = max(1, $current_page);
		$this->design->assign('current_page_num', $current_page);

		// Calculate the number of pages
		$projects_count = $this->projects->count_projects($filter);

		// Show all pages at once
		if ($this->request->get('page') == 'all')
			$items_per_page = $projects_count;

		$pages_num = ceil($projects_count / $items_per_page);
		$this->design->assign('total_pages_num', $pages_num);

		$filter['page'] = $current_page;
		$filter['limit'] = $items_per_page;

		// Projects 
		$projects = array();
		foreach ($this->projects->get_projects($filter) as $p)
			$projects[$p->id] = $p;

		// If you searched for a project and found exactly one, redirect to it
		if (!empty($keyword) && $projects_count == 1)
			header('Location: ' . $this->config->root_url . '/project/' . $p->url);

		if (!empty($projects)) {
			$projects_ids = array_keys($projects);
			foreach ($projects as &$project) {
				$project->images = array();
			}

			$images = $this->projects->get_images(array('project_id' => $projects_ids));
			foreach ($images as $image)
				$projects[$image->project_id]->images[] = $image;

			foreach ($projects as &$project) {
				if (isset($project->images[0]))
					$project->image = $project->images[0];
			}

			$this->design->assign('projects', $projects);
		}

		// Set meta tags depending on the request
		$auto_meta = new StdClass;

		$auto_meta->title = "";
		$auto_meta->keywords = "";
		$auto_meta->description = "";

		$auto_meta_parts = @array(
			'{category}' => ($category ? $category->name : ''),
			'{page}' => ($this->page ? $this->page->header : ''),
			'{site_url}' => ($this->seo->am_url ? $this->seo->am_url : ''),
			'{site_name}' => ($this->seo->am_name ? $this->seo->am_name : ''),
			'{site_phone}' => ($this->seo->am_phone ? $this->seo->am_phone : ''),
			'{site_email}' => ($this->seo->am_email ? $this->seo->am_email : ''),
		);

		if ($this->page) {
			$this->design->assign('meta_title', $this->page->meta_title);
			$this->design->assign('meta_keywords', $this->page->meta_keywords);
			$this->design->assign('meta_description', $this->page->meta_description);

			$LastModified_unix = strtotime($this->page->last_modified);

			$auto_meta->title       = $this->seo->page_meta_title       ? $this->seo->page_meta_title       : '';
			$auto_meta->keywords    = $this->seo->page_meta_keywords    ? $this->seo->page_meta_keywords    : '';
			$auto_meta->description = $this->seo->page_meta_description ? $this->seo->page_meta_description : '';
		} elseif (isset($category)) {
			$this->design->assign('meta_title', $category->meta_title);
			$this->design->assign('meta_keywords', $category->meta_keywords);
			$this->design->assign('meta_description', $category->meta_description);

			$LastModified_unix = strtotime($category->last_modified);

			$auto_meta->title       = $this->seo->category_meta_title       ? $this->seo->category_meta_title       : '';
			$auto_meta->keywords    = $this->seo->category_meta_keywords    ? $this->seo->category_meta_keywords    : '';
			$auto_meta->description = $this->seo->category_meta_description ? $this->seo->category_meta_description : '';
		} elseif (isset($keyword)) {
			$this->design->assign('meta_title', $keyword);
		}

		$auto_meta->title = strtr($auto_meta->title, $auto_meta_parts);
		$auto_meta->keywords = strtr($auto_meta->keywords, $auto_meta_parts);
		$auto_meta->description = strtr($auto_meta->description, $auto_meta_parts);

		$auto_meta->title = preg_replace("/\{.*\}/", '', $auto_meta->title);
		$auto_meta->keywords = preg_replace("/\{.*\}/", '', $auto_meta->keywords);
		$auto_meta->description = preg_replace("/\{.*\}/", '', $auto_meta->description);

		$this->design->assign('auto_meta', $auto_meta);

		// Last-Modified 
		if (isset($LastModified_unix)) {
			$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModified_unix);
			$IfModifiedSince = false;
			if (isset($_ENV['HTTP_IF_MODIFIED_SINCE']))
				$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));
			if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE']))
				$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
			if ($IfModifiedSince && $IfModifiedSince >= $LastModified_unix) {
				header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified');
				exit;
			}
			header('Last-Modified: ' . $LastModified);
		}

		$body = $this->design->fetch('projects.tpl');

		return $body;
	}
}
