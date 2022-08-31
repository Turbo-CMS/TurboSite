<?php

/**
 * Turbo CMS
 *
 * @author	Turbo CMS
 * @link	https://turbo-cms.com
 *
 */

require_once('Turbo.php');

class Users extends Turbo
{
	// be careful, changing the salt will corrupt the current user passwords
	private $salt = '8e86a279d6e182b3c811c559e6b15484';

	function get_users($filter = array())
	{
		$limit = 1000;
		$page = 1;
		$keyword_filter = '';

		if (isset($filter['limit']))
			$limit = max(1, intval($filter['limit']));

		if (isset($filter['page']))
			$page = max(1, intval($filter['page']));

		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword)
				$keyword_filter .= $this->db->placehold('AND (u.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR u.email LIKE "%' . $this->db->escape(trim($keyword)) . '%"  OR u.last_ip LIKE "%' . $this->db->escape(trim($keyword)) . '%")');
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

		$sql_limit = $this->db->placehold(' LIMIT ?, ? ', ($page - 1) * $limit, $limit);
		// Select users
		$query = $this->db->placehold("SELECT u.id, u.email, u.password, u.name, u.phone, u.enabled, u.last_ip, u.created FROM __users u
										WHERE 1 $keyword_filter ORDER BY $order $sql_limit");
		$this->db->query($query);
		return $this->db->results();
	}

	function count_users($filter = array())
	{
		$keyword_filter = '';

		if (isset($filter['keyword'])) {
			$keywords = explode(' ', $filter['keyword']);
			foreach ($keywords as $keyword)
				$keyword_filter .= $this->db->placehold('AND u.name LIKE "%' . $this->db->escape(trim($keyword)) . '%" OR u.email LIKE "%' . $this->db->escape(trim($keyword)) . '%"');
		}

		// Select users
		$query = $this->db->placehold("SELECT count(*) as count FROM __users u
										WHERE 1 $keyword_filter");
		$this->db->query($query);
		return $this->db->result('count');
	}

	function get_user($id)
	{
		if (gettype($id) == 'string')
			$where = $this->db->placehold(' WHERE u.email=? ', $id);
		else
			$where = $this->db->placehold(' WHERE u.id=? ', intval($id));

		// Select user
		$query = $this->db->placehold("SELECT u.id, u.email, u.password, u.name, u.phone, u.enabled, u.last_ip, u.created FROM __users u $where LIMIT 1", $id);
		$this->db->query($query);
		$user = $this->db->result();
		if (empty($user))
			return false;
		return $user;
	}

	public function add_user($user)
	{
		$user = (array)$user;
		if (isset($user['password']))
			$user['password'] = md5($this->salt . $user['password'] . md5($user['password']));

		$query = $this->db->placehold("SELECT count(*) as count FROM __users WHERE email=?", $user['email']);
		$this->db->query($query);

		if ($this->db->result('count') > 0)
			return false;

		$query = $this->db->placehold("INSERT INTO __users SET ?%", $user);
		$this->db->query($query);
		return $this->db->insert_id();
	}

	public function update_user($id, $user)
	{
		$user = (array)$user;
		if (isset($user['password']))
			$user['password'] = md5($this->salt . $user['password'] . md5($user['password']));
		$query = $this->db->placehold("UPDATE __users SET ?% WHERE id=? LIMIT 1", $user, intval($id));
		$this->db->query($query);
		return $id;
	}

	/*
	*
	* Delete user
	* @param $post
	*
	*/
	public function delete_user($id)
	{
		if (!empty($id)) {
			$query = $this->db->placehold("DELETE FROM __users WHERE id=? LIMIT 1", intval($id));
			if ($this->db->query($query))
				return true;
		}
		return false;
	}

	public function check_password($email, $password)
	{
		$encpassword = md5($this->salt . $password . md5($password));
		$query = $this->db->placehold("SELECT id FROM __users WHERE email=? AND password=? LIMIT 1", $email, $encpassword);
		$this->db->query($query);
		if ($id = $this->db->result('id'))
			return $id;
		return false;
	}
}
