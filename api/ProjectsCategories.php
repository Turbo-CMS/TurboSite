<?php

require_once 'Turbo.php';

class ProjectsCategories extends Turbo
{
	private $allProjectsCategories;
	private $projectsCategoriesTree;

	/**
	 * Get Projects Categories
	 */
	public function getProjectsCategories()
	{
		if (!isset($this->projectsCategoriesTree)) {
			$this->initProjectsCategories();
		}

		return $this->allProjectsCategories;
	}

	/**
	 * Get Projects Categories Tree
	 */
	public function getProjectsCategoriesTree()
	{
		if (!isset($this->projectsCategoriesTree)) {
			$this->initProjectsCategories();
		}

		return $this->projectsCategoriesTree;
	}

	/**
	 * Get Projects Category
	 */
	public function getProjectsCategory($id)
	{
		if (!isset($this->allProjectsCategories)) {
			$this->initProjectsCategories();
		}

		if (is_int($id) && array_key_exists((int) $id, $this->allProjectsCategories)) {
			return $category = $this->allProjectsCategories[intval($id)];
		} elseif (is_string($id)) {
			foreach ($this->allProjectsCategories as $category) {
				if ($category->url == $id) {
					return $this->getProjectsCategory((int) $category->id);
				}
			}
		}

		return false;
	}

	/**
	 * Add Projects Category
	 */
	public function addProjectsCategory($category)
	{
		if (!is_array($category)) {
			$category = (array) $category;
		}

		if (empty($category['url'])) {
			$category['url'] = preg_replace("/[\s]+/ui", '_', $category['name']);
			$category['url'] = strtolower(preg_replace("/[^0-9a-zа-я_]+/ui", '', $category['url']));
		}

		while ($this->getProjectsCategory((string)$category['url'])) {
			if (preg_match('/(.+)_([0-9]+)$/', $category['url'], $parts)) {
				$category['url'] = $parts[1] . '_' . ($parts[2] + 1);
			} else {
				$category['url'] = $category['url'] . '_2';
			}
		}

		$category = (object)$category;

		$result = $this->languages->getDescription($category, 'project_category');

		if (!empty($result->data)) {
			$category = $result->data;
		}

		$this->db->query("INSERT INTO __projects_categories SET ?%", $category);

		$id = $this->db->insertId();

		$this->db->query("UPDATE __projects_categories SET position=id WHERE id=?", $id);

		if (!empty($result->description)) {
			$this->languages->actionDescription($id, $result->description, 'project_category');
		}

		unset($this->projectsCategoriesTree);
		unset($this->allProjectsCategories);

		return (int) $id;
	}

	/**
	 * Update Projects Category
	 */
	public function updateProjectsCategory($id, $category)
	{
		if (!is_array($category)) {
			$category = (array) $category;
		}

		$category = (object) $category;

		$result = $this->languages->getDescription($category, 'project_category');

		if (!empty($result->data)) {
			$category = $result->data;
		}

		$query = $this->db->placehold("UPDATE __projects_categories SET last_modified=NOW(), ?% WHERE id=? LIMIT 1", $category, (int) $id);
		$this->db->query($query);

		if (!empty($result->description)) {
			$this->languages->actionDescription($id, $result->description, 'project_category', $this->languages->langId());
		}

		unset($this->projectsCategoriesTree);
		unset($this->allProjectsCategories);

		return (int) $id;
	}

	/**
	 * Delete Projects Category
	 */
	public function deleteProjectsCategory($id)
	{
		$category = $this->getProjectsCategory((int) $id);

		if (!$category) {
			return false;
		}

		foreach ($category->children as $childId) {
			if (!empty($childId)) {
				$this->deleteImage($childId);

				$query = $this->db->placehold("DELETE FROM __projects_categories WHERE id=? LIMIT 1", $childId);
				$this->db->query($query);

				$this->initProjectsCategories();

				$this->db->query("DELETE FROM __lang_projects_categories WHERE project_category_id IN(?@)", $category->children);
				$this->db->query($query);
			}
		}

		return true;
	}

	/**
	 * Delete Image
	 */
	public function deleteImage($categoriesIds)
	{
		$categoriesIds = (array) $categoriesIds;

		$query = $this->db->placehold("SELECT image FROM __projects_categories WHERE id IN(?@)", $categoriesIds);

		if ($this->db->query($query)) {
			$filenames = $this->db->results('image');
		}

		if (!empty($filenames)) {
			$query = $this->db->placehold("UPDATE __projects_categories SET image=NULL WHERE id IN(?@)", $categoriesIds);
			$this->db->query($query);

			foreach ($filenames as $filename) {
				$query = $this->db->placehold("SELECT count(*) AS count FROM __projects_categories WHERE image=?", $filename);
				$this->db->query($query);

				$count = $this->db->result('count');

				if ($count == 0) {
					$file = pathinfo($filename, PATHINFO_FILENAME);
					$ext = pathinfo($filename, PATHINFO_EXTENSION);
					$webp = 'webp';

					$resizedImages = glob($this->config->root_dir . $this->config->resized_category_images_dir . $file . "*." . $ext);

					if (is_array($resizedImages)) {
						foreach ($resizedImages as $f) {
							if (is_file($f)) {
								@unlink($f);
							}
						}
					}

					$resizedImages = glob($this->config->root_dir . $this->config->resized_category_images_dir . $file . "*." . $webp);

					if (is_array($resizedImages)) {
						foreach ($resizedImages as $f) {
							if (is_file($f)) {
								@unlink($f);
							}
						}
					}

					@unlink($this->config->root_dir . $this->config->categories_images_dir . $filename);
				}
			}

			unset($this->initArticlesCategories);
		}
	}

	/**
	 * Initializes Projects Categories
	 */
	private function initProjectsCategories()
	{
		$tree = new stdClass();
		$tree->subcategories = [];

		$pointers = [];
		$pointers[0] = &$tree;
		$pointers[0]->path = [];

		$langSql = $this->languages->getQuery(['object' => 'project_category', 'px' => 'c']);

		$query = $this->db->placehold(
			"SELECT 
				c.id, 
				c.parent_id, 
				c.name, 
				c.name_h1, 
				c.description, 
				c.url, 
				c.meta_title, 
				c.meta_keywords, 
				c.meta_description, 
				c.image, 
				c.visible, 
				c.position, 
				c.last_modified, 
				$langSql->fields 
			FROM __projects_categories c 
				$langSql->join 
			ORDER BY 
				c.parent_id, 
				c.position"
		);

		if ($this->settings->cached == 1 && empty($_SESSION['admin'])) {
			if ($result = $this->cache->get($query)) {
				$projectsCategories = $result;
			} else {
				$this->db->query($query);
				$result = $this->db->results();
				$this->cache->set($query, $result);
				$projectsCategories = $result;
			}
		} else {
			$this->db->query($query);
			$projectsCategories = $this->db->results();
		}

		$finish = false;

		while (!empty($projectsCategories)  && !$finish) {
			$flag = false;

			foreach ($projectsCategories as $k => $category) {
				if (isset($pointers[$category->parent_id])) {
					$pointers[$category->id] = $pointers[$category->parent_id]->subcategories[] = $category;

					$curr = $pointers[$category->id];
					$pointers[$category->id]->path = array_merge((array) $pointers[$category->parent_id]->path, array($curr));

					unset($projectsCategories[$k]);
					$flag = true;
				}
			}

			if (!$flag) {
				$finish = true;
			}
		}

		$ids = array_reverse(array_keys($pointers));

		foreach ($ids as $id) {
			if ($id > 0) {
				$pointers[$id]->children[] = $id;

				if (isset($pointers[$pointers[$id]->parent_id]->children)) {
					$pointers[$pointers[$id]->parent_id]->children = array_merge($pointers[$id]->children, $pointers[$pointers[$id]->parent_id]->children);
				} else {
					$pointers[$pointers[$id]->parent_id]->children = $pointers[$id]->children;
				}
			}
		}

		unset($pointers[0]);
		unset($ids);

		$this->projectsCategoriesTree = $tree->subcategories;
		$this->allProjectsCategories = $pointers;
	}
}
