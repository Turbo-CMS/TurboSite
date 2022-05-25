<?php

require_once('api/Turbo.php');

############################################
# Class Properties displays a list of product parameters
############################################
class UsersAdmin extends Turbo
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
								$this->users->update_user($id, array('enabled' => 0));
							break;
						}
					case 'enable': {
							foreach ($ids as $id)
								$this->users->update_user($id, array('enabled' => 1));
							break;
						}
					case 'delete': {
							foreach ($ids as $id)
								$this->users->delete_user($id);
							break;
						}
				}
		}
		$filter = array();
		$filter['page'] = max(1, $this->request->get('page', 'integer'));
		$filter['limit'] = 20;

		// Search
		$keyword = $this->request->get('keyword', 'string');
		if (!empty($keyword)) {
			$filter['keyword'] = $keyword;
			$this->design->assign('keyword', $keyword);
		}

		// Sorting users, save in session so that the current sorting is not reset
		if ($sort = $this->request->get('sort', 'string'))
			$_SESSION['users_admin_sort'] = $sort;
		if (!empty($_SESSION['users_admin_sort']))
			$filter['sort'] = $_SESSION['users_admin_sort'];
		else
			$filter['sort'] = 'name';
		$this->design->assign('sort', $filter['sort']);

		$users_count = $this->users->count_users($filter);
		// Show all pages at once
		if ($this->request->get('page') == 'all')
			$filter['limit'] = $users_count;

		$users = $this->users->get_users($filter);
		$this->design->assign('pages_count', ceil($users_count / $filter['limit']));
		$this->design->assign('current_page', $filter['page']);
		$this->design->assign('users', $users);
		$this->design->assign('users_count', $users_count);
		return $this->body = $this->design->fetch('users.tpl');
	}
}