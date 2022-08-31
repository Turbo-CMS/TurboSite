<?php

/**
 * Turbo CMS
 *
 * @author	Turbo CMS
 * @link	https://turbo-cms.com
 *
 * This class uses the templates user.tpl
 *
 */

require_once('View.php');

class UserView extends View
{
	function fetch()
	{
		if (empty($this->user)) {
			header('Location: ' . $this->config->root_url . '/' . $this->language->label . '/user/login');
			exit();
		}

		if ($this->request->method('post') && $this->request->post('name')) {
			$name			= $this->request->post('name');
			$email			= $this->request->post('email');
			$phone          = $this->request->post('phone');
			$password		= $this->request->post('password');

			$this->design->assign('name', $name);
			$this->design->assign('email', $email);
			$this->design->assign('phone', $phone);

			$this->db->query('SELECT count(*) as count FROM __users WHERE email=? AND id!=?', $email, $this->user->id);
			$user_exists = $this->db->result('count');

			if ($user_exists)
				$this->design->assign('error', 'user_exists');
			elseif (empty($name))
				$this->design->assign('error', 'empty_name');
			elseif (empty($email))
				$this->design->assign('error', 'empty_email');
			elseif (empty($phone))
				$this->design->assign('error', 'empty_phone');
			elseif ($user_id = $this->users->update_user($this->user->id, array('name' => $name, 'email' => $email, 'phone' => $phone))) {
				$this->user = $this->users->get_user(intval($user_id));
				$this->design->assign('name', $this->user->name);
				$this->design->assign('user', $this->user);
				$this->design->assign('email', $this->user->email);
				$this->design->assign('phone', $this->user->phone);
			} else
				$this->design->assign('error', 'unknown error');

			if (!empty($password)) {
				$this->users->update_user($this->user->id, array('password' => $password));
			}
		} else {
			// Passing to the template
			$this->design->assign('name', $this->user->name);
			$this->design->assign('email', $this->user->email);
			$this->design->assign('phone', $this->user->phone);
		}

		$this->design->assign('meta_title', $this->user->name);
		$body = $this->design->fetch('user.tpl');

		return $body;
	}
}
