<?php

require_once 'api/Turbo.php';

class ProjectsCategoryAdmin extends Turbo
{
	private	$allowedImageExtentions = array('png', 'gif', 'jpg', 'jpeg', 'ico', 'svg');

	function fetch()
	{
		$category = new stdClass;

		if ($this->request->method('post')) {
			$category->id = $this->request->post('id', 'integer');
			$category->parent_id = $this->request->post('parent_id', 'integer');
			$category->name = $this->request->post('name');
			$category->name_h1 = $this->request->post('name_h1');
			$category->visible = $this->request->post('visible', 'boolean');
			$category->url = trim($this->request->post('url', 'string'));
			$category->meta_title = $this->request->post('meta_title');
			$category->meta_keywords = $this->request->post('meta_keywords');
			$category->meta_description = $this->request->post('meta_description');
			$category->description = $this->request->post('description');

			if (($c = $this->projectsCategories->getProjectsCategory($category->url)) && $c->id != $category->id) {
				$this->design->assign('message_error', 'url_exists');
			} else {
				if (empty($category->id)) {
					$category->id = $this->projectsCategories->addProjectsCategory($category);
					$this->design->assign('message_success', 'added');
				} else {
					$this->projectsCategories->updateProjectsCategory($category->id, $category);
					$this->design->assign('message_success', 'updated');
				}

				if ($this->request->post('delete_image')) {
					$this->projectsCategories->deleteImage($category->id);
				}

				$image = $this->request->files('image');

				if (!empty($image['name']) && in_array(strtolower(pathinfo($image['name'], PATHINFO_EXTENSION)), $this->allowedImageExtentions)) {
					$this->projectsCategories->deleteImage($category->id);
					move_uploaded_file($image['tmp_name'], $this->root_dir . $this->config->categories_images_dir . $image['name']);
					$this->projectsCategories->updateProjectsCategory($category->id, ['image' => $image['name']]);
				}

				$category = $this->projectsCategories->getProjectsCategory((int) $category->id);
			}
		} else {
			$category->id = $this->request->get('id', 'integer');
			
			if (!empty($category->id)) {
				$category = $this->projectsCategories->getProjectsCategory($category->id);
			} else {
				$category->id = null;
				$category->name = '';
				$category->name_h1 = '';
				$category->url = '';
				$category->visible = 1;
				$category->parent_id = null;
				$category->image = '';
				$category->meta_title = '';
				$category->meta_keywords = '';
				$category->meta_description = '';
				$category->description = '';
			}
		}

		$projectsCategories = $this->projectsCategories->getProjectsCategoriesTree();

		$this->design->assign('category', $category);
		$this->design->assign('projects_categories', $projectsCategories);

		return  $this->design->fetch('projects_category.tpl');
	}
}
