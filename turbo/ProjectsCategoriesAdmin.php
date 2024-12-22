<?php

require_once 'api/Turbo.php';

class ProjectsCategoriesAdmin extends Turbo
{
	function fetch()
	{
		if ($this->request->method('post')) {
			$ids = $this->request->post('check');

			if (is_array($ids))
				switch ($this->request->post('action')) {
					case 'disable': {
							foreach ($ids as $id) {
								$this->projectsCategories->updateProjectsCategory($id, ['visible' => 0]);
							}

							break;
						}
					case 'enable': {
							foreach ($ids as $id) {
								$this->projectsCategories->updateProjectsCategory($id, ['visible' => 1]);
							}

							break;
						}
					case 'delete': {
							foreach ($ids as $id) {
								$this->projectsCategories->deleteProjectsCategory($id);
							}

							break;
						}
				}

			$positions = $this->request->post('positions');
			$ids = array_keys($positions);
			sort($positions);

			foreach ($positions as $i => $position) {
				$this->projectsCategories->updateProjectsCategory($ids[$i], ['position' => $position]);
			}
		}

		$projectsCategories = $this->projectsCategories->getProjectsCategoriesTree();

		$this->design->assign('projects_categories', $projectsCategories);

		return $this->design->fetch('projects_categories.tpl');
	}
}
