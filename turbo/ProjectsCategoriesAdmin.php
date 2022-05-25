<?php

require_once('api/Turbo.php');

class ProjectsCategoriesAdmin extends Turbo
{
	function fetch()
	{
		if ($this->request->method('post')) {
			// Actions with selected
			$ids = $this->request->post('check');
			if (is_array($ids))
				switch ($this->request->post('action')) {
					case 'disable': {
							foreach ($ids as $id)
								$this->projects_categories->update_projects_category($id, array('visible' => 0));
							break;
						}
					case 'enable': {
							foreach ($ids as $id)
								$this->projects_categories->update_projects_category($id, array('visible' => 1));
							break;
						}
					case 'delete': {
							foreach ($ids as $id)
								$this->projects_categories->delete_projects_category($id);
							break;
						}
				}

			// Sorting
			$positions = $this->request->post('positions');
			$ids = array_keys($positions);
			sort($positions);
			foreach ($positions as $i => $position)
				$this->projects_categories->update_projects_category($ids[$i], array('position' => $position));
		}

		$projects_categories = $this->projects_categories->get_projects_categories_tree();

		$this->design->assign('projects_categories', $projects_categories);
		return $this->design->fetch('projects_categories.tpl');
	}
}
