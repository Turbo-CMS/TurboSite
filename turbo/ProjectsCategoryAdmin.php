<?php

require_once('api/Turbo.php');

class ProjectsCategoryAdmin extends Turbo
{
	private	$allowed_image_extentions = array('png', 'gif', 'jpg', 'jpeg', 'ico');

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

			// Do not allow duplicate section URLs
			if (($c = $this->projects_categories->get_projects_category($category->url)) && $c->id != $category->id) {
				$this->design->assign('message_error', 'url_exists');
			} else {
				if (empty($category->id)) {
					$category->id = $this->projects_categories->add_projects_category($category);
					$this->design->assign('message_success', 'added');
				} else {
					$this->projects_categories->update_projects_category($category->id, $category);
					$this->design->assign('message_success', 'updated');
				}
				// Deleting an image
				if ($this->request->post('delete_image')) {
					$this->projects_categories->delete_image($category->id);
				}
				// Image upload
				$image = $this->request->files('image');
				if (!empty($image['name']) && in_array(strtolower(pathinfo($image['name'], PATHINFO_EXTENSION)), $this->allowed_image_extentions)) {
					$this->projects_categories->delete_image($category->id);
					move_uploaded_file($image['tmp_name'], $this->root_dir . $this->config->categories_images_dir . $image['name']);
					$this->projects_categories->update_projects_category($category->id, array('image' => $image['name']));
				}
				$category = $this->projects_categories->get_projects_category(intval($category->id));
			}
		} else {
			$category->id = $this->request->get('id', 'integer');
			$category = $this->projects_categories->get_projects_category($category->id);
		}

		$projects_categories = $this->projects_categories->get_projects_categories_tree();

		$this->design->assign('category', $category);
		$this->design->assign('projects_categories', $projects_categories);
		return  $this->design->fetch('projects_category.tpl');
	}
}
