<?php

require_once 'Turbo.php';

class Users extends Turbo
{
	private $salt = '8e86a279d6e182b3c811c559e6b15484';

	/**
	 * Get Users
	 */
	function getUsers($filter = [])
	{
		$limit = 1000;
		$page = 1;
		$keywordFilter = '';

		if (isset($filter['limit'])) {
			$limit = max(1, (int) $filter['limit']);
		}

		if (isset($filter['page'])) {
			$page = max(1, (int) $filter['page']);
		}

		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword) {
				$keywordFilter .= $this->db->placehold('AND (u.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR u.email LIKE "%' . $this->db->escape(trim($keyword)) . '%"  OR u.last_ip LIKE "%' . $this->db->escape(trim($keyword)) . '%")');
			}
		}

		$order = 'u.name';
		if (!empty($filter['sort']))
			switch ($filter['sort']) {
				case 'date':
					$order = 'u.created DESC';
					break;
				case 'name':
					$order = 'u.name';
					break;
				case 'email':
					$order = 'u.email';
					break;
			}

		$sqlLimit = $this->db->placehold(' LIMIT ?, ? ', ($page - 1) * $limit, $limit);

		$query = $this->db->placehold(
			"SELECT 
				u.id, 
				u.email, 
				u.password, 
				u.name, 
				u.phone, 
				u.enabled, 
				u.last_ip, 
				u.created 
			FROM __users u
			WHERE 1 
				$keywordFilter 
			ORDER BY 
				$order 
				$sqlLimit"
		);

		$this->db->query($query);

		return $this->db->results();
	}

	function countUsers($filter = [])
	{
		$keywordFilter = '';

		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword) {
				$keywordFilter .= $this->db->placehold('AND u.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR u.email LIKE "%' . $this->db->escape(trim($keyword)) . '%"');
			}
		}

		$query = $this->db->placehold(
			"SELECT count(*) AS count 
			FROM __users u WHERE 1 $keywordFilter"
		);

		$this->db->query($query);

		return $this->db->result('count');
	}

	/**
	 * Get User
	 */
	public function getUser($id)
	{
		if (gettype($id) == 'string') {
			$where = $this->db->placehold('WHERE u.email=?', $id);
		} else {
			$where = $this->db->placehold('WHERE u.id=?', (int) $id);
		}

		$query = $this->db->placehold(
			"SELECT 
				u.id, 
				u.email, 
				u.password, 
				u.name, 
				u.phone, 
				u.enabled, 
				u.last_ip, 
				u.created 
			FROM __users u 
				$where 
			LIMIT 1",
			$id
		);

		$this->db->query($query);

		$user = $this->db->result();

		if (empty($user)) {
			return false;
		}

		return $user;
	}

	/**
	 * Add User
	 */
	public function addUser($user)
	{
		$user = (array) $user;

		if (isset($user['password'])) {
			$user['password'] = md5($this->salt . $user['password'] . md5($user['password']));
		}

		$query = $this->db->placehold("SELECT COUNT(*) AS count FROM __users WHERE email=?", $user['email']);

		$this->db->query($query);

		if ($this->db->result('count') > 0) {
			return false;
		}

		$query = $this->db->placehold("INSERT INTO __users SET ?%", $user);

		$this->db->query($query);

		return $this->db->insertId();
	}

	/**
	 * Update User
	 */
	public function updateUser($id, $user)
	{
		$user = (array) $user;

		if (isset($user['password'])) {
			$user['password'] = md5($this->salt . $user['password'] . md5($user['password']));
		}

		$query = $this->db->placehold("UPDATE __users SET ?% WHERE id=? LIMIT 1", $user, (int) $id);
		$this->db->query($query);

		return $id;
	}

	/**
	 * Delete User
	 */
	public function deleteUser($id)
	{
		if (!empty($id)) {
			$query = $this->db->placehold("DELETE FROM __users WHERE id=? LIMIT 1", (int) $id);

			if ($this->db->query($query)) {
				return true;
			}
		}

		return false;
	}

	/**
	 * Check Password
	 */
	public function checkPassword($email, $password)
	{
		$encpassword = md5($this->salt . $password . md5($password));

		$query = $this->db->placehold("SELECT id FROM __users WHERE email=? AND password=? LIMIT 1", $email, $encpassword);
		$this->db->query($query);

		if ($id = $this->db->result('id')) {
			return $id;
		}

		return false;
	}
}
