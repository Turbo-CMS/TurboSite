<?php

require_once 'View.php';

class UserView extends View
{
	public function fetch()
	{
		if (empty($this->user)) {
			header('Location: ' . $this->config->root_url . '/' . $this->language->label . '/user/login');
			exit();
		}

		// Form
		if ($this->request->method('post') && $this->request->post('name')) {
			$name = $this->request->post('name');
			$email = $this->request->post('email');
			$phone = $this->request->post('phone');
			$password = $this->request->post('password');

			$this->design->assign('name', $name);
			$this->design->assign('email', $email);
			$this->design->assign('phone', $phone);

			$this->db->query("SELECT COUNT(*) AS count FROM __users WHERE email=? AND id!=?", $email, $this->user->id);

			$userExists = $this->db->result('count');

			if ($userExists) {
				$this->design->assign('error', 'user_exists');
			} elseif (empty($name)) {
				$this->design->assign('error', 'empty_name');
			} elseif (empty($email)) {
				$this->design->assign('error', 'empty_email');
			} elseif ($user_id = $this->users->updateUser($this->user->id, ['name' => $name, 'email' => $email, 'phone' => $phone])) {
				$this->design->assign('success', true);
				$this->user = $this->users->getUser((int) $user_id);
				$this->design->assign('name', $this->user->name);
				$this->design->assign('user', $this->user);
				$this->design->assign('email', $this->user->email);
				$this->design->assign('phone', $this->user->phone);
			} else {
				$this->design->assign('error', 'unknown error');
			}

			if (!empty($password)) {
				$this->users->updateUser($this->user->id, ['password' => $password]);
			}
		} else {
			$this->design->assign('name', $this->user->name);
			$this->design->assign('email', $this->user->email);
			$this->design->assign('phone', $this->user->phone);
		}

		// Design
		$this->design->assign('meta_title', $this->user->name);

		// Display
		$body = $this->design->fetch('user.tpl');

		return $body;
	}
}
