<?php

require_once 'Turbo.php';

class Notify extends Turbo
{
	/**
	 * Send Email
	 */
	function email($to, $subject, $message, $from = '', $replyTo = '')
	{
		$headers = "MIME-Version: 1.0\r\n";
		$headers .= "Content-type: text/html; charset=utf-8\r\n";

		if (!empty($from)) {
			$headers .= "From: $from\r\n";
		}

		if (!empty($replyTo)) {
			$headers .= "Reply-To: $replyTo\r\n";
		}

		$subject = '=?utf-8?B?' . base64_encode($subject) . '?=';

		return mail($to, $subject, $message, $headers);
	}

	/**
	 * Email Comment Admin
	 */
	public function emailCommentAdmin($commentId)
	{
		$comment = $this->comments->getComment((int) $commentId);

		if (!$comment) {
			return false;
		}

		if ($comment->type == 'project') {
			$comment->project = $this->products->getProject((int) $comment->object_id);
		} elseif ($comment->type == 'article') {
			$comment->article = $this->articles->getArticle((int) $comment->object_id);
		} elseif ($comment->type == 'blog') {
			$comment->post = $this->blog->getPost((int) $comment->object_id);
		}

		$this->design->assign('comment', $comment);

		$backendTranslations = $this->backendTranslations;
		$file = "turbo/lang/" . $this->settings->email_lang . ".php";

		if (!file_exists($file)) {
			foreach (glob("turbo/lang/??.php") as $f) {
				$file = "turbo/lang/" . pathinfo($f, PATHINFO_FILENAME) . ".php";
				break;
			}
		}

		require_once $file;
		$this->design->assign('btr', $backendTranslations);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email_comment_admin.tpl');
		$subject = $this->design->getVar('subject');
		$this->email($this->settings->comment_email, $subject, $emailTemplate, $this->settings->notify_from_email);
	}

	/**
	 * Email Password Remind
	 */
	public function emailPasswordRemind($userId, $code)
	{
		$user = $this->users->getUser($userId);
		if (!$user) {
			return false;
		}

		$this->design->assign('user', $user);
		$this->design->assign('code', $code);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'design/' . $this->settings->theme . '/html/email/email_password_remind.tpl');
		$subject = $this->design->getVar('subject');
		$from = ($this->settings->notify_from_name ? $this->settings->notify_from_name . " <" . $this->settings->notify_from_email . ">" : $this->settings->notify_from_email);
		$this->email($user->email, $subject, $emailTemplate, $from);

		$this->design->smarty->clearAssign('user');
		$this->design->smarty->clearAssign('code');

		return true;
	}

	/**
	 * Email Feedback Admin
	 */
	public function emailFeedbackAdmin($feedbackId)
	{
		if (!$feedback = $this->feedbacks->getFeedback($feedbackId)) {
			return false;
		}

		$this->design->assign('feedback', $feedback);

		$backendTranslations = $this->backendTranslations;
		$file = "turbo/lang/" . $this->settings->email_lang . ".php";

		if (!file_exists($file)) {
			foreach (glob("turbo/lang/??.php") as $f) {
				$file = "turbo/lang/" . pathinfo($f, PATHINFO_FILENAME) . ".php";
				break;
			}
		}

		require_once $file;
		$this->design->assign('btr', $backendTranslations);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email_feedback_admin.tpl');
		$subject = $this->design->getVar('subject');
		$this->email($this->settings->comment_email, $subject, $emailTemplate, $this->settings->notify_from_email);

		return true;
	}

	/**
	 * Email Callback Admin
	 */
	public function emailCallbackAdmin($callbackId)
	{
		if (!$callback = $this->callbacks->getCallback($callbackId)) {
			return false;
		}

		$this->design->assign('callback', $callback);

		$backendTranslations = $this->backendTranslations;
		$file = "turbo/lang/" . $this->settings->email_lang . ".php";

		if (!file_exists($file)) {
			foreach (glob("turbo/lang/??.php") as $f) {
				$file = "turbo/lang/" . pathinfo($f, PATHINFO_FILENAME) . ".php";
				break;
			}
		}

		require_once $file;
		$this->design->assign('btr', $backendTranslations);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email_callback_admin.tpl');
		$subject = $this->design->getVar('subject');
		$this->email($this->settings->comment_email, $subject, $emailTemplate, $this->settings->notify_from_email);

		return true;
	}
}
