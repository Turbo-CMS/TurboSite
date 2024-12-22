<?php

require_once 'View.php';

class ProjectsView extends View
{
	public function fetch()
	{
		$url = $this->request->get('project_url', 'string');

		if (!empty($url)) {
			return $this->fetchProject($url);
		} else {
			return $this->fetchProjects($url);
		}
	}

	/**
	 * Fetch Project
	 */
	private function fetchProject($url)
	{
		// GET Parameters
		$project = $this->projects->getProject($url);
		$project->images = $this->projects->getImages(['project_id' => $project->id]);
		$project->image = &$project->images[0];

		// Visible Admin
		if (!$project || (!$project->visible && empty($_SESSION['admin']))) {
			return false;
		}

		// Last Modified
		$LastModifiedUnix = strtotime($project->last_modified);
		$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModifiedUnix);
		$IfModifiedSince = false;

		if (isset($_ENV['HTTP_IF_MODIFIED_SINCE'])) {
			$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));
		}

		if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])) {
			$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
		}

		if ($IfModifiedSince && $IfModifiedSince >= $LastModifiedUnix) {
			header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified');
			exit;
		}

		header('Last-Modified: ' . $LastModified);

		// Comments
		if (!empty($this->user)) {
			$this->design->assign('comment_name', $this->user->name);
		}

		// Comment Form
		if ($this->request->method('post') && $this->request->post('comment')) {
			$comment = new stdClass();

			$comment->name = $this->request->post('name');
			$comment->text = $this->request->post('text');
			$comment->parent_id = $this->request->post('parent_id');
			$comment->admin = $this->request->post('admin');

			$captchaCode =  $this->request->post('captcha_code', 'string');

			$this->design->assign('comment_text', $comment->text);
			$this->design->assign('comment_name', $comment->name);
			$this->design->assign('parent_id', $comment->parent_id);

			if ($this->settings->captcha_project && ($_SESSION['captcha_project'] != $captchaCode || empty($captchaCode))) {
				$this->design->assign('error', 'captcha');
			} elseif (empty($comment->name)) {
				$this->design->assign('error', 'empty_name');
			} elseif (empty($comment->text)) {
				$this->design->assign('error', 'empty_comment');
			} else {
				$comment->object_id = $project->id;
				$comment->type = 'project';
				$comment->ip = $_SERVER['REMOTE_ADDR'];

				$approveComment = $this->db->query("SELECT 1 FROM __comments WHERE approved=1 AND ip=? LIMIT 1", $comment->ip);

				if ($this->db->numRows($approveComment) > 0) {
					$comment->approved = 1;
				}

				$commentId = $this->comments->addComment($comment);

				$this->notify->emailCommentAdmin($commentId);

				unset($_SESSION['captcha_code']);

				header('Location: ' . $_SERVER['REQUEST_URI'] . '#comment_' . $commentId);
			}
		}

		// Comments List
		$filter = [
			'approved' => 1,
			'type' => 'project',
			'has_parent' => false,
			'object_id' => $project->id,
			'ip' => $_SERVER['REMOTE_ADDR']
		];

		// Sort
		if ($sort = $this->request->get('sort', 'string')) {
			$_SESSION['comments_project'] = $sort;
		}

		if (!empty($_SESSION['comments_project'])) {
			$filter['sort'] = $_SESSION['comments_project'];
		} else {
			$filter['sort'] = 'rate';
		}

		$this->design->assign('sort', $filter['sort']);

		// Pagination Comments
		$itemsPerPage = $this->settings->comments_num;
		$currentPage = max(1, $this->request->get('page', 'integer'));

		$this->design->assign('current_page_num', $currentPage);

		$commentsCount = $this->comments->countComments($filter);
		$pagesNum = ceil($commentsCount / $itemsPerPage);

		$this->design->assign('total_pages_num', $pagesNum);

		if ($this->request->get('page') == 'all') {
			$itemsPerPage = $commentsCount;
		}

		$filter['page'] = $currentPage;
		$filter['limit'] = $itemsPerPage;

		// Get Comments
		$comments = $this->comments->getComments($filter);

		$children = [];

		foreach ($this->comments->getComments() as $c) {
			$children[$c->parent_id][] = $c;
		}

		// Related Projects
		$relatedIds = [];
		$relatedProjects = [];

		foreach ($this->projects->getRelatedProjects($project->id) as $p) {
			$relatedIds[] = $p->related_id;
			$relatedProjects[$p->related_id] = null;
		}

		if (!empty($relatedIds)) {
			foreach ($this->projects->getProjects(['id' => $relatedIds, 'in_stock' => 1, 'visible' => 1]) as $p) {
				$relatedProjects[$p->id] = $p;
			}

			$relatedProjectsImages = $this->projects->getImages(['project_id' => array_keys($relatedProjects)]);
			foreach ($relatedProjectsImages as $relatedProjectImage) {
				if (isset($relatedProjects[$relatedProjectImage->project_id])) {
					$relatedProjects[$relatedProjectImage->project_id]->images[] = $relatedProjectImage;
				}
			}

			foreach ($relatedProjects as $id => $r) {
				if (is_object($r)) {
					$r->image = &$r->images[0];
				} else {
					unset($relatedProjects[$id]);
				}
			}

			$this->design->assign('related_projects', $relatedProjects);
		}


		// Design
		$this->design->assign('project',  $project);
		$this->design->assign('comments', $comments);
		$this->design->assign('children', $children);
		$this->design->assign('comments_count', $commentsCount);

		// Category
		$category = $this->projectsCategories->getProjectsCategory((int) $project->category_id);
		$this->design->assign('category', $category);

		// Next & Prev
		$this->design->assign('next_project', $this->projects->getNextProject($project->id));
		$this->design->assign('prev_project', $this->projects->getPrevProject($project->id));

		// Meta Tags
		$this->design->assign('meta_title', $project->meta_title);
		$this->design->assign('meta_keywords', $project->meta_keywords);
		$this->design->assign('meta_description', $project->meta_description);

		$autoMeta = new StdClass;

		$autoMeta->title = $this->seo->project_meta_title ?: '';
		$autoMeta->keywords = $this->seo->project_meta_keywords ?: '';
		$autoMeta->description = $this->seo->project_meta_description ?: '';

		$autoMetaParts = [
			'{project}' => $project ? $project->name : '',
			'{category}' => $category ? $category->name : '',
			'{page}' => $this->page ? $this->page->header : '',
			'{site_url}' => $this->seo->am_url ?: '',
			'{site_name}' => $this->seo->am_name ?: '',
			'{site_phone}' => $this->seo->am_phone ?: '',
			'{site_email}' => $this->seo->am_email ?: '',
		];

		$autoMeta->title = strtr($autoMeta->title, $autoMetaParts);
		$autoMeta->keywords = strtr($autoMeta->keywords, $autoMetaParts);
		$autoMeta->description = strtr($autoMeta->description, $autoMetaParts);

		$autoMeta->title = preg_replace("/\{.*\}/", '', $autoMeta->title);
		$autoMeta->keywords = preg_replace("/\{.*\}/", '', $autoMeta->keywords);
		$autoMeta->description = preg_replace("/\{.*\}/", '', $autoMeta->description);

		$this->design->assign('auto_meta', $autoMeta);

		// Display
		return $this->design->fetch('project.tpl');
	}

	/**
	 * Fetch Projects
	 */
	private function fetchProjects()
	{
		$filter = [];

		// Search
		$keyword = $this->request->get('keyword');

		if (!empty($keyword)) {
			$this->design->assign('keyword', $keyword);
			$filter['keyword'] = $keyword;
		}

		// GET Parameters
		$categoryUrl = $this->request->get('category', 'string');

		// Category
		if (!empty($categoryUrl)) {
			$category = $this->projectsCategories->getProjectsCategory((string) $categoryUrl);

			if (empty($category) || (!$category->visible && empty($_SESSION['admin']))) {
				return false;
			}

			$this->design->assign('projects_category', $category);

			$filter['category_id'] = $category->children;
		}

		// Sort
		if ($sort = $this->request->get('sort', 'string')) {
			$_SESSION['sort_project'] = $sort;
		}

		if (!empty($_SESSION['sort_project'])) {
			$filter['sort'] = $_SESSION['sort_project'];
		} else {
			$filter['sort'] = 'position';
		}

		$this->design->assign('sort', $filter['sort']);

		// Pagination
		$itemsPerPage = $this->settings->projects_num;

		$filter['visible'] = 1;

		$currentPage = $this->request->get('page', 'integer');

		$currentPage = max(1, $currentPage);
		$this->design->assign('current_page_num', $currentPage);

		$projectsCount = $this->projects->countProjects($filter);

		if ($this->request->get('page') == 'all') {
			$itemsPerPage = $projectsCount;
		}

		$pages_num = ceil($projectsCount / $itemsPerPage);
		$this->design->assign('total_pages_num', $pages_num);

		$filter['page'] = $currentPage;
		$filter['limit'] = $itemsPerPage;

		// Projects 
		$projects = [];

		foreach ($this->projects->getProjects($filter) as $p) {
			$projects[$p->id] = $p;
		}

		if (!empty($keyword) && $projectsCount == 1) {
			header('Location: ' . $this->config->root_url . '/project/' . $p->url);
		}

		if (!empty($projects)) {
			$projectsIds = array_keys($projects);

			foreach ($projects as &$project) {
				$project->images = [];
			}

			$images = $this->projects->getImages(['project_id' => $projectsIds]);

			foreach ($images as $image) {
				$projects[$image->project_id]->images[] = $image;
			}

			foreach ($projects as &$project) {
				if (isset($project->images[0])) {
					$project->image = $project->images[0];
				}
			}

			// Design
			$this->design->assign('projects', $projects);
		}

		// Meta Tags
		$autoMeta = new StdClass;

		$autoMetaParts = [
			'{category}' => isset($category, $category->name) ? $category->name : '',
			'{page}' => $this->page ? $this->page->header : '',
			'{site_url}' => $this->seo->am_url ?: '',
			'{site_name}' => $this->seo->am_name ?: '',
			'{site_phone}' => $this->seo->am_phone ?: '',
			'{site_email}' => $this->seo->am_email ?: '',
		];

		if ($this->page) {
			$this->design->assign('meta_title', $this->page->meta_title);
			$this->design->assign('meta_keywords', $this->page->meta_keywords);
			$this->design->assign('meta_description', $this->page->meta_description);

			$LastModifiedUnix = strtotime($this->page->last_modified);

			$autoMeta->title = $this->seo->page_meta_title ?: '';
			$autoMeta->keywords = $this->seo->page_meta_keywords ?: '';
			$autoMeta->description = $this->seo->page_meta_description ?: '';
		} elseif (isset($category)) {
			$this->design->assign('meta_title', $category->meta_title);
			$this->design->assign('meta_keywords', $category->meta_keywords);
			$this->design->assign('meta_description', $category->meta_description);

			$LastModifiedUnix = strtotime($category->last_modified);

			$autoMeta->title = $this->seo->category_meta_title ?: '';
			$autoMeta->keywords = $this->seo->category_meta_keywords ?: '';
			$autoMeta->description = $this->seo->category_meta_description ?: '';
		} elseif (isset($keyword)) {
			$this->design->assign('meta_title', $keyword);
		}

		$autoMeta->title = strtr($autoMeta->title, $autoMetaParts);
		$autoMeta->keywords = strtr($autoMeta->keywords, $autoMetaParts);
		$autoMeta->description = strtr($autoMeta->description, $autoMetaParts);

		$autoMeta->title = preg_replace("/\{.*\}/", '', $autoMeta->title);
		$autoMeta->keywords = preg_replace("/\{.*\}/", '', $autoMeta->keywords);
		$autoMeta->description = preg_replace("/\{.*\}/", '', $autoMeta->description);

		$this->design->assign('auto_meta', $autoMeta);

		// Last Modified 
		if (isset($LastModifiedUnix)) {
			$LastModified = gmdate("D, d M Y H:i:s \G\M\T", $LastModifiedUnix);
			$IfModifiedSince = false;

			if (isset($_ENV['HTTP_IF_MODIFIED_SINCE'])) {
				$IfModifiedSince = strtotime(substr($_ENV['HTTP_IF_MODIFIED_SINCE'], 5));
			}

			if (isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])) {
				$IfModifiedSince = strtotime(substr($_SERVER['HTTP_IF_MODIFIED_SINCE'], 5));
			}

			if ($IfModifiedSince && $IfModifiedSince >= $LastModifiedUnix) {
				header($_SERVER['SERVER_PROTOCOL'] . ' 304 Not Modified');
				exit;
			}

			header('Last-Modified: ' . $LastModified);
		}

		// Display
		$body = $this->design->fetch('projects.tpl');

		return $body;
	}
}
