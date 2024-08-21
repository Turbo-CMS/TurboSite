<?php

require_once 'Turbo.php';

use PHPMailer\PHPMailer\PHPMailer;

class Notify extends Turbo
{
	/**
	 * Send Email SMTP
	 */
	public function SMTP($to, $subject, $message)
	{
		$mail = new PHPMailer();
		$mail->IsSMTP();
		$mail->Host = $this->settings->smtp_server;
		$mail->SMTPDebug  = 0;
		$mail->SMTPAuth = true;
		$mail->CharSet = 'utf-8';
		$mail->Port = $this->settings->smtp_port;

		if ($mail->Port == 465) {
			$mail->SMTPSecure = "ssl";
			$mail->Host = (strpos($mail->Host, "ssl://") === false) ? "ssl://" . $mail->Host : $mail->Host;
		}

		$mail->Username = $this->settings->smtp_user;
		$mail->Password = $this->settings->smtp_pass;
		$mail->SetFrom($this->settings->smtp_user, $this->settings->notify_from_name);
		$mail->AddReplyTo($this->settings->smtp_user, $this->settings->notify_from_name);
		$mail->Subject = $subject;
		$mail->MsgHTML($message);
		$mail->addCustomHeader("MIME-Version: 1.0\n");

		$recipients = explode(',', $to);

		if (!empty($recipients)) {
			foreach ($recipients as $i => $r) {
				$mail->AddAddress($r);
			}
		} else {
			$mail->AddAddress($to);
		}

		if (!$mail->Send()) {
			file_put_contents('error_log.txt', $mail->ErrorInfo);
		}
	}

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

		if ($this->settings->use_smtp) {
			$this->SMTP($to, $subject, $message);
		} else {
			mail($to, $subject, $message, $headers);
		}
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
			$comment->project = $this->projects->getProject((int) $comment->object_id);
		} elseif ($comment->type == 'article') {
			$comment->article = $this->articles->getArticle((int) $comment->object_id);
		} elseif ($comment->type == 'blog') {
			$comment->post = $this->blog->getPost((int) $comment->object_id);
		}

		$this->design->assign('comment', $comment);

		$backendTranslations = $this->backendTranslations;

		$file = __DIR__ . "/../turbo/lang/" . $this->settings->email_lang . ".php";

		if (!file_exists($file)) {
			foreach (glob(__DIR__ . "/../turbo/lang/??.php") as $f) {
				$file = __DIR__ . "/../turbo/lang/" . pathinfo($f, PATHINFO_FILENAME) . ".php";
				break;
			}
		}

		require_once $file;

		$this->design->assign('btr', $backendTranslations);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email/email_comment_admin.tpl');

		$subject = $this->design->getVar('subject');

		$this->email($this->settings->comment_email, $subject, $emailTemplate, $this->settings->notify_from_email);
	}

	/**
	 * Email Password Remind
	 */
	public function emailPasswordRemind($userId, $code)
	{
		if (!($user = $this->users->getUser((int) $userId))) {
			return false;
		}

		$this->design->assign('user', $user);
		$this->design->assign('code', $code);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'design/' . $this->settings->theme . '/html/email/email_password_remind.tpl');
		$subject = $this->design->getVar('subject');

		$from = ($this->settings->notify_from_name ? $this->settings->notify_from_name . "<" . $this->settings->notify_from_email . ">" : $this->settings->notify_from_email);

		$this->email($user->email, $subject, $emailTemplate, $from);

		$this->design->smarty->clearAssign('user');
		$this->design->smarty->clearAssign('code');
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

		$file = __DIR__ . "/../turbo/lang/" . $this->settings->email_lang . ".php";

		if (!file_exists($file)) {
			foreach (glob(__DIR__ . "/../turbo/lang/??.php") as $f) {
				$file = __DIR__ . "/../turbo/lang/" . pathinfo($f, PATHINFO_FILENAME) . ".php";
				break;
			}
		}

		require_once $file;

		$this->design->assign('btr', $backendTranslations);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email/email_feedback_admin.tpl');

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

		$file = __DIR__ . "/../turbo/lang/" . $this->settings->email_lang . ".php";

		if (!file_exists($file)) {
			foreach (glob(__DIR__ . "/../turbo/lang/??.php") as $f) {
				$file = __DIR__ . "/../turbo/lang/" . pathinfo($f, PATHINFO_FILENAME) . ".php";
				break;
			}
		}

		require_once $file;

		$this->design->assign('btr', $backendTranslations);

		$emailTemplate = $this->design->fetch($this->config->root_dir . 'turbo/design/html/email/email_callback_admin.tpl');

		$subject = $this->design->getVar('subject');

		$this->email($this->settings->comment_email, $subject, $emailTemplate, $this->settings->notify_from_email);

		return true;
	}
}
