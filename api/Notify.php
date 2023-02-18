<?php

class Notify extends Turbo
{
	function email($to, $subject, $message, $from = '', $reply_to = '')
	{
		$headers = "MIME-Version: 1.0\n";
		$headers .= "Content-type: text/html; charset=utf-8; \r\n";
		$headers .= "From: $from\r\n";
		if (!empty($reply_to))
			$headers .= "reply-to: $reply_to\r\n";

		$subject = "=?utf-8?B?" . base64_encode($subject) . "?=";

		@mail($to, $subject, $message, $headers);
	}
	
	public function email_comment_admin($comment_id)
	{
		if (!($comment = $this->comments->get_comment(intval($comment_id))))
			return false;

		if ($comment->type == 'project')
			$comment->project = $this->projects->get_project(intval($comment->object_id));
		if ($comment->type == 'article')
			$comment->article = $this->articles->get_article(intval($comment->object_id));
		if ($comment->type == 'blog')
			$comment->post = $this->blog->get_post(intval($comment->object_id));

		$this->design->assign('comment', $comment);
		
		$backend_translations = $this->backend_translations;
		$file = $_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/' . $this->settings->email_lang . '.php';
		if (!file_exists($file)) {
			foreach (glob($_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/??.php') as $f) {
				$file = $_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/' . pathinfo($f, PATHINFO_FILENAME) . '.php';
				break;
			}
		}
		require_once($file);
		$this->design->assign('btr', $backend_translations);

		// Sending a letter
		$email_template = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email_comment_admin.tpl');
		$subject = $this->design->get_var('subject');
		$this->email($this->settings->comment_email, $subject, $email_template, $this->settings->notify_from_email);
	}

	public function email_password_remind($user_id, $code)
	{
		if (!($user = $this->users->get_user(intval($user_id))))
			return false;

		$this->design->assign('user', $user);
		$this->design->assign('code', $code);

		// Sending a letter
		$email_template = $this->design->fetch($this->config->root_dir . 'design/' . $this->settings->theme . '/html/email_password_remind.tpl');
		$subject = $this->design->get_var('subject');
		$from = ($this->settings->notify_from_name ? $this->settings->notify_from_name . " <" . $this->settings->notify_from_email . ">" : $this->settings->notify_from_email);
		$this->email($user->email, $subject, $email_template, $from);

		$this->design->smarty->clearAssign('user');
		$this->design->smarty->clearAssign('code');
	}

	public function email_feedback_admin($feedback_id)
	{
		if (!($feedback = $this->feedbacks->get_feedback(intval($feedback_id))))
			return false;

		$this->design->assign('feedback', $feedback);
		
		$backend_translations = $this->backend_translations;
		$file = $_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/' . $this->settings->email_lang . '.php';
		if (!file_exists($file)) {
			foreach (glob($_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/??.php') as $f) {
				$file = $_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/' . pathinfo($f, PATHINFO_FILENAME) . '.php';
				break;
			}
		}
		require_once($file);
		$this->design->assign('btr', $backend_translations);

		// Sending a letter
		$email_template = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email_feedback_admin.tpl');
		$subject = $this->design->get_var('subject');
		$this->email($this->settings->comment_email, $subject, $email_template, $this->settings->notify_from_email);
	}

	public function email_callback_admin($callback_id)
	{
		if (!($callback = $this->callbacks->get_callback(intval($callback_id))))
			return false;
		$this->design->assign('callback', $callback);
		
		$backend_translations = $this->backend_translations;
		$file = $_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/' . $this->settings->email_lang . '.php';
		if (!file_exists($file)) {
			foreach (glob($_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/??.php') as $f) {
				$file = $_SERVER['DOCUMENT_ROOT'] . '/turbo/lang/' . pathinfo($f, PATHINFO_FILENAME) . '.php';
				break;
			}
		}
		require_once($file);
		$this->design->assign('btr', $backend_translations);

		// Sending a letter
		$email_template = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email_callback_admin.tpl');
		$subject = $this->design->get_var('subject');
		$this->email($this->settings->comment_email, $subject, $email_template, $this->settings->notify_from_email);
	}
}
