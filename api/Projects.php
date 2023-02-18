<?php

require_once('Turbo.php');

class Projects extends Turbo
{
	/*
	*
	* The function returns the project by its id or url
	* (depending on the argument type, int - id, string - url)
	* @param $id project id or url
	*
	*/
	public function get_project($id)
	{
		if (is_int($id))
			$where = $this->db->placehold(' WHERE b.id=? ', intval($id));
		else
			$where = $this->db->placehold(' WHERE b.url=? ', $id);

		$lang_sql = $this->languages->get_query(array('object' => 'project', 'px' => 'b'));

		$query = $this->db->placehold("SELECT b.id, b.category_id, b.url, b.name, b.client, b.site, b.type, b.annotation, b.text, b.meta_title,
		                               b.meta_keywords, b.meta_description, b.visible, b.date, b.position, b.last_modified, " . $lang_sql->fields . "
		                               FROM __projects b " . $lang_sql->join . " $where LIMIT 1");
		if ($this->db->query($query))
			return $this->db->result();
		else
			return false;
	}

	/*
	*
	* The function returns an array of projects that match the filter
	* @param $filter
	*
	*/
	public function get_projects($filter = array())
	{
		// Default
		$limit = 1000;
		$page = 1;
		$project_id_filter = '';
		$category_id_filter = '';
		$visible_filter = '';
		$keyword_filter = '';
		$order = 'b.position DESC';
		$projects = array();

		$lang_id  = $this->languages->lang_id();
		$px = ($lang_id ? 'l' : 'b');

		if (isset($filter['limit']))
			$limit = max(1, intval($filter['limit']));

		if (isset($filter['page']))
			$page = max(1, intval($filter['page']));

		if (!empty($filter['id']))
			$project_id_filter = $this->db->placehold('AND b.id in(?@)', (array)$filter['id']);

		if (!empty($filter['category_id'])) {
			$category_id_filter = $this->db->placehold('AND b.category_id in(?@)', (array)$filter['category_id']);
		}

		if (isset($filter['visible']))
			$visible_filter = $this->db->placehold('AND b.visible = ?', intval($filter['visible']));

		if (!empty($filter['sort']))
			switch ($filter['sort']) {
				case 'position':
					$order = 'b.position DESC';
					break;
				case 'name':
					$order = 'b.name';
					break;
				case 'date':
					$order = 'b.date DESC,b.id DESC';
					break;
			}

		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword)
				$keyword_filter .= $this->db->placehold('AND (' . $px . '.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR ' . $px . '.meta_keywords LIKE "%' . $this->db->escape(trim($keyword)) . '%") ');
		}

		$sql_limit = $this->db->placehold(' LIMIT ?, ? ', ($page - 1) * $limit, $limit);

		$lang_sql = $this->languages->get_query(array('object' => 'project', 'px' => 'b'));

		$query = $this->db->placehold("SELECT b.id, b.category_id, b.url, b.name, b.client, b.site, b.type, b.annotation, b.text,
		                                      b.meta_title, b.meta_keywords, b.meta_description, b.visible,
		                                      b.date, b.position, b.last_modified, " . $lang_sql->fields . "
		                                      FROM __projects b " . $lang_sql->join . " WHERE 1 $project_id_filter $category_id_filter $visible_filter $keyword_filter
		                                      ORDER BY $order $sql_limit");

		if ($this->settings->cached == 1 && empty($_SESSION['admin'])) {
			if ($result = $this->cache->get($query)) {
				return $result; // return data from memcached
			} else {
				$this->db->query($query); // otherwise pull from the database
				$result = $this->db->results();
				$this->cache->set($query, $result); // put into cache
				return $result;
			}
		} else {
			$this->db->query($query);
			return $this->db->results();
		}
	}

	/*
	*
	* The function calculates the number of projects that match the filter
	* @param $filter
	*
	*/
	public function count_projects($filter = array())
	{
		$project_id_filter = '';
		$category_id_filter = '';
		$visible_filter = '';
		$keyword_filter = '';

		if (!empty($filter['id']))
			$project_id_filter = $this->db->placehold('AND b.id in(?@)', (array)$filter['id']);

		if (!empty($filter['category_id'])) {
			$category_id_filter = $this->db->placehold('AND b.category_id in(?@)', (array)$filter['category_id']);
		}

		if (isset($filter['visible']))
			$visible_filter = $this->db->placehold('AND b.visible = ?', intval($filter['visible']));


		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword)
				$keyword_filter .= $this->db->placehold('AND (b.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR b.meta_keywords LIKE "%' . $this->db->escape(trim($keyword)) . '%") ');
		}

		$query = "SELECT COUNT(distinct b.id) as count
		          FROM __projects b WHERE 1 $project_id_filter $category_id_filter $visible_filter $keyword_filter";

		if ($this->settings->cached == 1 && empty($_SESSION['admin'])) {
			if ($result = $this->cache->get($query)) {
				return $result; // return data from memcached
			} else {
				if ($this->db->query($query)) {
					$result = $this->db->result('count');
					$this->cache->set($query, $result); // put into cache
					return $result;
				} else
					return false;
			}
		} else {
			if ($this->db->query($query))
				return $this->db->result('count');
			else
				return false;
		}
	}

	/*
	*
	* Create a project
	* @param $project
	*
	*/
	public function add_project($project)
	{
		$project = (array) $project;

		if (empty($project['url'])) {
			$project['url'] = preg_replace("/[\s]+/ui", '-', $project['name']);
			$project['url'] = strtolower(preg_replace("/[^0-9a-zа-я\-]+/ui", '', $project['url']));
		}

		// If there is a project with this URL, add a number to it
		while ($this->get_project((string)$project['url'])) {
			if (preg_match('/(.+)_([0-9]+)$/', $project['url'], $parts))
				$project['url'] = $parts[1] . '_' . ($parts[2] + 1);
			else
				$project['url'] = $project['url'] . '_2';
		}

		$project = (object)$project;
		$result = $this->languages->get_description($project, 'project');
		if (!empty($result->data)) $project = $result->data;

		if ($this->db->query("INSERT INTO __projects SET ?%", $project)) {
			$id = $this->db->insert_id();
			$this->db->query("UPDATE __projects SET `last_modified`=NOW(), position=id WHERE id=?", $id);

			if (!empty($result->description)) {
				$this->languages->action_description($id, $result->description, 'project');
			}
			return $id;
		} else
			return false;
	}

	/*
	*
	* Update project(s)
	* @param $project
	*
	*/
	public function update_project($id, $project)
	{
		$project = (object)$project;
		$result = $this->languages->get_description($project, 'project');
		if (!empty($result->data)) $project = $result->data;

		$query = $this->db->placehold("UPDATE __projects SET `last_modified`=NOW(), ?% WHERE id in(?@) LIMIT ?", $project, (array)$id, count((array)$id));
		if ($this->db->query($query)) {
			if (!empty($result->description)) {
				$this->languages->action_description($id, $result->description, 'project', $this->languages->lang_id());
			}
			return $id;
		} else
			return false;
	}

	/*
	*
	* Delete project
	* @param $id
	*
	*/
	public function delete_project($id)
	{
		if (!empty($id)) {

			// Removing images
			$images = $this->get_images(array('project_id' => $id));
			foreach ($images as $i)
				$this->delete_image($i->id);

			// Removing related projects
			$related = $this->get_related_projects($id);
			foreach ($related as $r)
				$this->delete_related_project($id, $r->related_id);

			// Remove project from related to others
			$query = $this->db->placehold("DELETE FROM __related_projects WHERE related_id=?", intval($id));
			$this->db->query($query);

			// Delete reviews
			$comments = $this->comments->get_comments(array('object_id' => $id, 'type' => 'project'));
			foreach ($comments as $c)
				$this->comments->delete_comment($c->id);

			// Removing languages
			$query = $this->db->placehold("DELETE FROM __lang_projects WHERE project_id=?", intval($id));
			$this->db->query($query);

			$query = $this->db->placehold("DELETE FROM __projects WHERE id=? LIMIT 1", intval($id));
			if ($this->db->query($query)) {
				$query = $this->db->placehold("DELETE FROM __comments WHERE type='project' AND object_id=? LIMIT 1", intval($id));
				if ($this->db->query($query))
					return true;
			}
		}
		return false;
	}

	public function get_related_projects($project_id = array())
	{
		if (empty($project_id))
			return array();

		$project_id_filter = $this->db->placehold('AND project_id in(?@)', (array)$project_id);

		$query = $this->db->placehold("SELECT project_id, related_id, position
					FROM __related_projects
					WHERE 
					1
					$project_id_filter   
					ORDER BY position       
					");
		$this->db->query($query);
		return $this->db->results();
	}

	// Function returns related projects
	public function add_related_project($project_id, $related_id, $position = 0)
	{
		$query = $this->db->placehold("INSERT IGNORE INTO __related_projects SET project_id=?, related_id=?, position=?", $project_id, $related_id, $position);
		$this->db->query($query);
		return $related_id;
	}

	// Deleting a linked project
	public function delete_related_project($project_id, $related_id)
	{
		$query = $this->db->placehold("DELETE FROM __related_projects WHERE project_id=? AND related_id=? LIMIT 1", intval($project_id), intval($related_id));
		$this->db->query($query);
	}

	function get_images($filter = array())
	{
		$project_id_filter = '';
		$group_by = '';

		if (!empty($filter['project_id']))
			$project_id_filter = $this->db->placehold('AND i.project_id in(?@)', (array)$filter['project_id']);

		// images
		$query = $this->db->placehold("SELECT i.id, i.project_id, i.name, i.filename, i.position
									FROM __images_project AS i WHERE 1 $project_id_filter $group_by ORDER BY i.project_id, i.position");
		$this->db->query($query);
		return $this->db->results();
	}

	public function add_image($project_id, $filename, $name = '')
	{
		$query = $this->db->placehold("SELECT id FROM __images_project WHERE project_id=? AND filename=?", $project_id, $filename);
		$this->db->query($query);
		$id = $this->db->result('id');
		if (empty($id)) {
			$query = $this->db->placehold("INSERT INTO __images_project SET project_id=?, filename=?", $project_id, $filename);
			$this->db->query($query);
			$id = $this->db->insert_id();
			$query = $this->db->placehold("UPDATE __images_project SET position=id WHERE id=?", $id);
			$this->db->query($query);
		}
		return ($id);
	}

	public function update_image($id, $image)
	{

		$query = $this->db->placehold("UPDATE __images_project SET ?% WHERE id=?", $image, $id);
		$this->db->query($query);

		return ($id);
	}

	public function delete_image($id)
	{
		$query = $this->db->placehold("SELECT filename FROM __images_project WHERE id=?", $id);
		$this->db->query($query);
		$filename = $this->db->result('filename');
		$query = $this->db->placehold("DELETE FROM __images_project WHERE id=? LIMIT 1", $id);
		$this->db->query($query);
		$query = $this->db->placehold("SELECT count(*) as count FROM __images_project WHERE filename=? LIMIT 1", $filename);
		$this->db->query($query);
		$count = $this->db->result('count');
		if ($count == 0) {
			$file = pathinfo($filename, PATHINFO_FILENAME);
			$ext = pathinfo($filename, PATHINFO_EXTENSION);
			$webp = 'webp';

			// Delete all resizes
			$rezised_images = glob($this->config->root_dir . $this->config->resized_images_dir . $file . ".*x*." . $ext);
			if (is_array($rezised_images))
				foreach (glob($this->config->root_dir . $this->config->resized_images_dir . $file . ".*x*." . $ext) as $f)
					@unlink($f);

			$rezised_images = glob($this->config->root_dir . $this->config->resized_images_dir . $file . "*." . $webp);
			if (is_array($rezised_images)) {
				foreach (glob($this->config->root_dir . $this->config->resized_images_dir . $file . "*." . $webp) as $f) {
					@unlink($f);
				}
			}
			@unlink($this->config->root_dir . $this->config->original_images_dir . $filename);
		}
	}

	/*
	*
	* Next project
	* @param $project
	*
	*/
	public function get_next_project($id)
	{
		$this->db->query("SELECT date FROM __projects WHERE id=? LIMIT 1", $id);
		$date = $this->db->result('date');
		$this->db->query("SELECT category_id FROM __projects WHERE id=? LIMIT 1", $id);
		$category_id = $this->db->result('category_id');

		$this->db->query(
			"(SELECT id FROM __projects WHERE date=? AND id>? AND visible  ORDER BY id limit 1)
		                   UNION
		                  (SELECT id FROM __projects WHERE date>? AND category_id=? AND visible ORDER BY date, id limit 1)",
			$date,
			$id,
			$date,
			$category_id
		);
		$next_id = $this->db->result('id');
		if ($next_id)
			return $this->get_project(intval($next_id));
		else
			return false;
	}

	/*
	*
	* Previous project
	* @param $project
	*
	*/
	public function get_prev_project($id)
	{
		$this->db->query("SELECT date FROM __projects WHERE id=? LIMIT 1", $id);
		$date = $this->db->result('date');
		$this->db->query("SELECT category_id FROM __projects WHERE id=? LIMIT 1", $id);
		$category_id = $this->db->result('category_id');

		$this->db->query(
			"(SELECT id FROM __projects WHERE date=? AND id<? AND visible ORDER BY id DESC limit 1)
		                   UNION
		                  (SELECT id FROM __projects WHERE date<? AND category_id=? AND visible ORDER BY date DESC, id DESC limit 1)",
			$date,
			$id,
			$date,
			$category_id
		);
		$prev_id = $this->db->result('id');
		if ($prev_id)
			return $this->get_project(intval($prev_id));
		else
			return false;
	}
}
