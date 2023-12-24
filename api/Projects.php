<?php

require_once 'Turbo.php';

class Projects extends Turbo
{
	/*
	* Get Project
	*/
	public function getProject($id)
	{
		if (is_int($id)) {
			$where = $this->db->placehold('WHERE p.id=?', (int) $id);
		} else {
			$where = $this->db->placehold('WHERE p.url=?', $id);
		}

		$langSql = $this->languages->getQuery(array('object' => 'project', 'px' => 'p'));

		$query = $this->db->placehold(
			"SELECT 
				p.id, 
				p.category_id, 
				p.url, 
				p.name, 
				p.client, 
				p.site, 
				p.type, 
				p.annotation, 
				p.text, 
				p.meta_title,
				p.meta_keywords, 
				p.meta_description, 
				p.visible, 
				p.date, 
				p.position, 
				p.last_modified, 
				$langSql->fields
			FROM __projects p 
				$langSql->join 
				$where 
			LIMIT 1"
		);

		if ($this->db->query($query)) {
			return $this->db->result();
		} else {
			return false;
		}
	}

	/*
	* Get Projects
	*/
	public function getProjects($filter = [])
	{
		$limit = 1000;
		$page = 1;
		$projectIdFilter = '';
		$categoryIdFilter = '';
		$visibleFilter = '';
		$keywordFilter = '';
		$order = 'p.position DESC';

		$langId  = $this->languages->langId();
		$px = ($langId ? 'l' : 'p');

		if (isset($filter['limit'])) {
			$limit = max(1, (int) $filter['limit']);
		}

		if (isset($filter['page'])) {
			$page = max(1, (int) $filter['page']);
		}

		if (!empty($filter['id'])) {
			$projectIdFilter = $this->db->placehold('AND p.id IN(?@)', (array) $filter['id']);
		}

		if (!empty($filter['category_id'])) {
			$categoryIdFilter = $this->db->placehold('AND p.category_id IN(?@)', (array) $filter['category_id']);
		}

		if (isset($filter['visible'])) {
			$visibleFilter = $this->db->placehold('AND p.visible=?', (int) $filter['visible']);
		}

		if (!empty($filter['sort']))
			switch ($filter['sort']) {
				case 'position':
					$order = 'p.position DESC';
					break;
				case 'name':
					$order = 'p.name';
					break;
				case 'date':
					$order = 'p.date DESC,p.id DESC';
					break;
			}

		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword) {
				$keywordFilter .= $this->db->placehold('AND (' . $px . '.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR ' . $px . '.meta_keywords LIKE "%' . $this->db->escape(trim($keyword)) . '%") ');
			}
		}

		$sqlLimit = $this->db->placehold(' LIMIT ?, ? ', ($page - 1) * $limit, $limit);
		$langSql = $this->languages->getQuery(array('object' => 'project', 'px' => 'p'));

		$query = $this->db->placehold(
			"SELECT 
				p.id, 
				p.category_id, 
				p.url, 
				p.name, 
				p.client, 
				p.site, 
				p.type, 
				p.annotation, 
				p.text,
		        p.meta_title, 
				p.meta_keywords, 
				p.meta_description, 
				p.visible,
		        p.date, 
				p.position, 
				p.last_modified, 
				$langSql->fields
		    FROM __projects p 
			    $langSql->join
			WHERE 1 
				$projectIdFilter 
				$categoryIdFilter 
				$visibleFilter 
				$keywordFilter
		    ORDER BY 
				$order 
				$sqlLimit"
		);

		if ($this->settings->cached == 1 && empty($_SESSION['admin'])) {
			if ($result = $this->cache->get($query)) {
				return $result;
			} else {
				$this->db->query($query);
				$result = $this->db->results();
				$this->cache->set($query, $result);
				return $result;
			}
		} else {
			$this->db->query($query);
			return $this->db->results();
		}
	}

	/**
	 * Count Projects
	 */
	public function countProjects($filter = [])
	{
		$projectIdFilter = '';
		$categoryIdFilter = '';
		$visibleFilter = '';
		$keywordFilter = '';

		if (!empty($filter['id'])) {
			$projectIdFilter = $this->db->placehold('AND p.id in(?@)', (array) $filter['id']);
		}

		if (!empty($filter['category_id'])) {
			$categoryIdFilter = $this->db->placehold('AND p.category_id IN(?@)', (array) $filter['category_id']);
		}

		if (isset($filter['visible'])) {
			$visibleFRilter = $this->db->placehold('AND p.visible = ?', (int) $filter['visible']);
		}


		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword) {
				$keywordFilter .= $this->db->placehold('AND (p.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR p.meta_keywords LIKE "%' . $this->db->escape(trim($keyword)) . '%") ');
			}
		}

		$query = $this->db->placehold(
			"SELECT COUNT(distinct p.id) AS count
			FROM __projects p WHERE 1 $projectIdFilter $categoryIdFilter $visibleFilter $keywordFilter"
		);

		if ($this->settings->cached == 1 && empty($_SESSION['admin'])) {
			if ($result = $this->cache->get($query)) {
				return $result;
			} else {
				if ($this->db->query($query)) {
					$result = $this->db->result('count');
					$this->cache->set($query, $result);
					return $result;
				} else
					return false;
			}
		} else {
			if ($this->db->query($query)) {
				return $this->db->result('count');
			} else {
				return false;
			}
		}
	}

	/**
	 * Add Project
	 */
	public function addProject($project)
	{
		$project = (array) $project;

		if (empty($project['url'])) {
			$project['url'] = preg_replace("/[\s]+/ui", '-', $project['name']);
			$project['url'] = strtolower(preg_replace("/[^0-9a-zа-я\-]+/ui", '', $project['url']));
		}

		while ($this->getProject((string)$project['url'])) {
			if (preg_match('/(.+)_([0-9]+)$/', $project['url'], $parts)) {
				$project['url'] = $parts[1] . '_' . ($parts[2] + 1);
			} else {
				$project['url'] = $project['url'] . '_2';
			}
		}

		$project = (object) $project;

		$result = $this->languages->getDescription($project, 'project');

		if (!empty($result->data)) {
			$project = $result->data;
		}

		if ($this->db->query("INSERT INTO __projects SET ?%", $project)) {
			$id = $this->db->insertId();
			$this->db->query("UPDATE __projects SET last_modified=NOW(), position=id WHERE id=?", $id);

			if (!empty($result->description)) {
				$this->languages->actionDescription($id, $result->description, 'project');
			}

			return $id;
		} else {
			return false;
		}
	}

	/**
	 * Update Projects
	 */
	public function updateProject($id, $project)
	{
		$project = (object)$project;

		$result = $this->languages->getDescription($project, 'project');

		if (!empty($result->data)) {
			$project = $result->data;
		}

		$query = $this->db->placehold("UPDATE __projects SET last_modified=NOW(), ?% WHERE id IN(?@) LIMIT ?", $project, (array) $id, count((array) $id));

		if ($this->db->query($query)) {
			if (!empty($result->description)) {
				$this->languages->actionDescription($id, $result->description, 'project', $this->languages->langId());
			}
			return $id;
		} else
			return false;
	}

	/*
	* Delete project
	*/
	public function deleteProject($id)
	{
		if (!empty($id)) {

			$images = $this->getImages(['project_id' => $id]);

			foreach ($images as $i) {
				$this->deleteImage($i->id);
			}

			$related = $this->getRelatedProjects($id);

			foreach ($related as $r) {
				$this->deleteRelatedProject($id, $r->related_id);
			}

			$query = $this->db->placehold("DELETE FROM __related_projects WHERE related_id=?", (int) $id);
			$this->db->query($query);

			$comments = $this->comments->getComments(['object_id' => $id, 'type' => 'project']);

			foreach ($comments as $c) {
				$this->comments->deleteComment($c->id);
			}

			$query = $this->db->placehold("DELETE FROM __lang_projects WHERE project_id=?", (int) $id);
			$this->db->query($query);

			$query = $this->db->placehold("DELETE FROM __projects WHERE id=? LIMIT 1", (int) $id);

			if ($this->db->query($query)) {
				$query = $this->db->placehold("DELETE FROM __comments WHERE type='project' AND object_id=? LIMIT 1", (int) $id);

				if ($this->db->query($query)) {
					return true;
				}
			}
		}
		return false;
	}

	/*
	* Get Related Projects
	*/
	public function getRelatedProjects($projectId = [])
	{
		if (empty($projectId)) {
			return [];
		}

		$projectIdFilter = $this->db->placehold('AND project_id IN(?@)', (array) $projectId);

		$query = $this->db->placehold(
			"SELECT 
				project_id, 
				related_id, 
				position
			FROM __related_projects
			WHERE 1
				$projectIdFilter   
			ORDER BY 
				position"
		);

		$this->db->query($query);
		return $this->db->results();
	}

	/*
	* Add Related Projects
	*/
	public function addRelatedProject($projectId, $relatedId, $position = 0)
	{
		$query = $this->db->placehold("INSERT IGNORE INTO __related_projects SET project_id=?, related_id=?, position=?", $projectId, $relatedId, $position);
		$this->db->query($query);

		return $relatedId;
	}

	/*
	* Delete Related Projects
	*/
	public function deleteRelatedProject($projectId, $relatedId)
	{
		$query = $this->db->placehold("DELETE FROM __related_projects WHERE project_id=? AND related_id=? LIMIT 1", (int) $projectId, (int) $relatedId);
		$this->db->query($query);
	}

	/*
	* Get Images
	*/
	function getImages($filter = [])
	{
		$projectIdFilter = '';
		$groupBy = '';

		if (!empty($filter['project_id'])) {
			$projectIdFilter = $this->db->placehold('AND i.project_id IN(?@)', (array) $filter['project_id']);
		}

		$query = $this->db->placehold(
			"SELECT 
				i.id, 
				i.project_id, 
				i.name, 
				i.filename, 
				i.position
			FROM __images_project AS i 
			WHERE 1 
				$projectIdFilter 
				$groupBy 
			ORDER BY 
				i.project_id, 
				i.position"
		);

		$this->db->query($query);

		return $this->db->results();
	}

	/*
	* Add Image
	*/
	public function addImage($projectId, $filename, $name = '')
	{
		$query = $this->db->placehold("SELECT id FROM __images_project WHERE project_id=? AND filename=?", $projectId, $filename);
		$this->db->query($query);

		$id = $this->db->result('id');

		if (empty($id)) {
			$query = $this->db->placehold("INSERT INTO __images_project SET project_id=?, filename=?", $projectId, $filename);
			$this->db->query($query);

			$id = $this->db->insertId();

			$query = $this->db->placehold("UPDATE __images_project SET position=id WHERE id=?", $id);
			$this->db->query($query);
		}

		return ($id);
	}

	/*
	* Update Image
	*/
	public function updateImage($id, $image)
	{

		$query = $this->db->placehold("UPDATE __images_project SET ?% WHERE id=?", $image, $id);
		$this->db->query($query);

		return ($id);
	}

	/**
	 * Delete Image
	 */
	public function deleteImage($id)
	{
		$query = $this->db->placehold("SELECT filename FROM __images_project WHERE id=?", $id);
		$this->db->query($query);

		$filename = $this->db->result('filename');

		$query = $this->db->placehold("DELETE FROM __images_project WHERE id=? LIMIT 1", $id);
		$this->db->query($query);

		$query = $this->db->placehold("SELECT count(*) AS count FROM __images_project WHERE filename=? LIMIT 1", $filename);
		$this->db->query($query);

		$count = $this->db->result('count');

		if ($count == 0) {
			$file = pathinfo($filename, PATHINFO_FILENAME);
			$ext = pathinfo($filename, PATHINFO_EXTENSION);
			$webp = 'webp';

			$resizedImages = glob($this->config->root_dir . $this->config->resized_images_dir . $file . "*." . $ext);

			if (is_array($resizedImages)) {
				foreach ($resizedImages as $f) {
					if (is_file($f)) {
						@unlink($f);
					}
				}
			}

			$resizedImages = glob($this->config->root_dir . $this->config->resized_images_dir . $file . "*." . $webp);

			if (is_array($resizedImages)) {
				foreach ($resizedImages as $f) {
					if (is_file($f)) {
						@unlink($f);
					}
				}
			}

			@unlink($this->config->root_dir . $this->config->original_images_dir . $filename);
		}
	}

	/*
	* Next Project
	*/
	public function getNextProject($id)
	{
		$this->db->query("SELECT date FROM __projects WHERE id=? LIMIT 1", $id);

		$date = $this->db->result('date');

		$this->db->query("SELECT category_id FROM __projects WHERE id=? LIMIT 1", $id);

		$categoryId = $this->db->result('category_id');

		$this->db->query(
			"(SELECT id FROM __projects WHERE date=? AND id>? AND visible  ORDER BY id limit 1)
		    UNION
		    (SELECT id FROM __projects WHERE date>? AND category_id=? AND visible ORDER BY date, id limit 1)",
			$date,
			$id,
			$date,
			$categoryId
		);

		$nextId = $this->db->result('id');

		if ($nextId) {
			return $this->getProject((int) $nextId);
		} else {
			return false;
		}
	}

	/*
	* Prev Project
	*/
	public function getPrevProject($id)
	{
		$this->db->query("SELECT date FROM __projects WHERE id=? LIMIT 1", $id);

		$date = $this->db->result('date');

		$this->db->query("SELECT category_id FROM __projects WHERE id=? LIMIT 1", $id);

		$categoryId = $this->db->result('category_id');

		$this->db->query(
			"(SELECT id FROM __projects WHERE date=? AND id<? AND visible ORDER BY id DESC limit 1)
		    UNION
		    (SELECT id FROM __projects WHERE date<? AND category_id=? AND visible ORDER BY date DESC, id DESC limit 1)",
			$date,
			$id,
			$date,
			$categoryId
		);

		$prevId = $this->db->result('id');

		if ($prevId) {
			return $this->getProject((int) $prevId);
		} else {
			return false;
		}
	}
}
