<?php

require_once 'api/Turbo.php';

class ProjectsAdmin extends Turbo
{
	public function fetch()
	{
		if ($this->request->method('post')) {
			$positions = $this->request->post('positions');
			$ids = array_keys($positions);
			sort($positions);
			$positions = array_reverse($positions);

			foreach ($positions as $i => $position) {
				$this->projects->updateProject($ids[$i], ['position' => $position]);
			}

			$ids = $this->request->post('check');

			if (is_array($ids))
				switch ($this->request->post('action')) {
					case 'disable': {
							$this->projects->updateProject($ids, ['visible' => 0]);
							break;
						}
					case 'enable': {
							$this->projects->updateProject($ids, ['visible' => 1]);
							break;
						}
					case 'delete': {
							foreach ($ids as $id)
								$this->projects->deleteProject($id);
							break;
						}
				}
		}

		$filter = [];
		$filter['page'] = max(1, $this->request->get('page', 'integer'));
		$filter['limit'] = $this->settings->projects_num_admin;

		$projectsCategories = $this->projectsCategories->getProjectsCategoriesTree();
		$this->design->assign('projects_categories', $projectsCategories);

		$categoryId = $this->request->get('category_id', 'integer');
		$category = $this->projectsCategories->getProjectsCategory($categoryId);
		
		if ($categoryId && $category) {
			if (property_exists($category, 'children')) {
				$filter['category_id'] = $category->children;
			} else {
				$filter['category_id'] = [];
			}
		} else {
			$category = null;
		}

		$this->design->assign('category', $category);

		if ($f = $this->request->get('filter', 'string')) {

			if ($f == 'visible') {
				$filter['visible'] = 1;
			} elseif ($f == 'hidden') {
				$filter['visible'] = 0;
			}

			$this->design->assign('filter', $f);
		}

		$keyword = $this->request->get('keyword', 'string');

		if (!empty($keyword)) {
			$filter['keyword'] = $keyword;
			$this->design->assign('keyword', $keyword);
		}

		$projectsCount = $this->projects->countProjects($filter);

		if ($this->request->get('page') == 'all') {
			$filter['limit'] = $projectsCount;
		}

		$projects = $this->projects->getProjects($filter);
		$this->design->assign('projects_count', $projectsCount);

		$this->design->assign('pages_count', ceil($projectsCount / $filter['limit']));
		$this->design->assign('current_page', $filter['page']);

		$projects = [];

		foreach ($this->projects->getProjects($filter) as $p) {
			$projects[$p->id] = $p;
		}

		if (!empty($projects)) {
			$projectsIds = array_keys($projects);

			foreach ($projects as &$project) {
				$project->images = [];
			}

			$images = $this->projects->getImages(['project_id' => $projectsIds]);

			foreach ($images as $image) {
				$projects[$image->project_id]->images[$image->id] = $image;
			}
		}

		$this->design->assign('projects', $projects);

		return $this->design->fetch('projects.tpl');
	}
}
