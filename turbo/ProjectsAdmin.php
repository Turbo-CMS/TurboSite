<?php

require_once('api/Turbo.php');

class ProjectsAdmin extends Turbo
{
	public function fetch()
	{
		// Action processing
		if ($this->request->method('post')) {

			// Sorting
			$positions = $this->request->post('positions');
			$ids = array_keys($positions);
			sort($positions);
			$positions = array_reverse($positions);
			foreach ($positions as $i => $position)
				$this->projects->update_project($ids[$i], array('position' => $position));

			// Actions with selected
			$ids = $this->request->post('check');
			if (is_array($ids))
				switch ($this->request->post('action')) {
					case 'disable': {
							$this->projects->update_project($ids, array('visible' => 0));
							break;
						}
					case 'enable': {
							$this->projects->update_project($ids, array('visible' => 1));
							break;
						}
					case 'delete': {
							foreach ($ids as $id)
								$this->projects->delete_project($id);
							break;
						}
				}
		}

		$filter = array();
		$filter['page'] = max(1, $this->request->get('page', 'integer'));
		$filter['limit'] = $this->settings->projects_num_admin;

		// Categories
		$projects_categories = $this->projects_categories->get_projects_categories_tree();
		$this->design->assign('projects_categories', $projects_categories);

		// Current category
		$category_id = $this->request->get('category_id', 'integer');
		$category = $this->projects_categories->get_projects_category($category_id);
		$this->design->assign('category', $category);
		if ($category_id && $category)
			$filter['category_id'] = $category->children;

		// Current filter
		if ($f = $this->request->get('filter', 'string')) {

			if ($f == 'visible')
				$filter['visible'] = 1;
			elseif ($f == 'hidden')
				$filter['visible'] = 0;
			$this->design->assign('filter', $f);
		}

		// Search
		$keyword = $this->request->get('keyword', 'string');
		if (!empty($keyword)) {
			$filter['keyword'] = $keyword;
			$this->design->assign('keyword', $keyword);
		}

		$projects_count = $this->projects->count_projects($filter);
		// Show all pages at once
		if ($this->request->get('page') == 'all')
			$filter['limit'] = $projects_count;

		$projects = $this->projects->get_projects($filter);
		$this->design->assign('projects_count', $projects_count);

		$this->design->assign('pages_count', ceil($projects_count / $filter['limit']));
		$this->design->assign('current_page', $filter['page']);

		$projects = array();
		foreach ($this->projects->get_projects($filter) as $p)
			$projects[$p->id] = $p;


		if (!empty($projects)) {

			// Projects 
			$projects_ids = array_keys($projects);
			foreach ($projects as &$project) {
				$project->images = array();
			}

			$images = $this->projects->get_images(array('project_id' => $projects_ids));
			foreach ($images as $image)
				$projects[$image->project_id]->images[$image->id] = $image;
		}

		$this->design->assign('projects', $projects);
		return $this->design->fetch('projects.tpl');
	}
}
