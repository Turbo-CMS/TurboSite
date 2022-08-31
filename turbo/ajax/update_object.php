<?php

session_start();

require_once('../../api/Turbo.php');

$turbo = new Turbo();

// Session check to protect against xss
if (!$turbo->request->check_session()) {
	trigger_error('Session expired', E_USER_WARNING);
	exit();
}

$id = intval($turbo->request->post('id'));
$object = $turbo->request->post('object');
$values = $turbo->request->post('values');

switch ($object) {
	case 'projects_category':
        if($turbo->managers->access('projects'))
        $result = $turbo->projects_categories->update_projects_category($id, $values);
        break;
    case 'projects':
        if($turbo->managers->access('projects'))
        $result = $turbo->projects->update_project($id, $values);        
        break;  
	case 'page':
		if ($turbo->managers->access('pages'))
			$result = $turbo->pages->update_page($id, $values);
		break;
	case 'menu':
		if ($turbo->managers->access('menus'))
			$result = $turbo->pages->update_menu($id, $values);
		break;
	case 'blog':
		if ($turbo->managers->access('blog'))
			$result = $turbo->blog->update_post($id, $values);
		break;
	case 'articles_category':
		if ($turbo->managers->access('blog'))
			$result = $turbo->articles_categories->update_articles_category($id, $values);
		break;
	case 'articles':
		if ($turbo->managers->access('blog'))
			$result = $turbo->articles->update_article($id, $values);
		break;
	case 'comment':
		if ($turbo->managers->access('comments'))
			$result = $turbo->comments->update_comment($id, $values);
		break;
	case 'callback':
		if ($turbo->managers->access('callbacks'))
			$result = $turbo->callbacks->update_callback($id, $values);
		break;
	case 'subscribe':
		if ($turbo->managers->access('subscribes'))
			$result = $turbo->subscribes->update_subscribe($id, $values);
		break;
	case 'feedback':
		if ($turbo->managers->access('feedbacks'))
			$result = $turbo->feedbacks->update_feedback($id, $values);
		break;
	case 'faq':
		if ($turbo->managers->access('faq'))
			$result = $turbo->faq->update_faq($id, $values);
		break;
	case 'user':
		if ($turbo->managers->access('users'))
			$result = $turbo->users->update_user($id, $values);
		break;
	case 'label':
		if ($turbo->managers->access('labels'))
			$result = $turbo->orders->update_label($id, $values);
		break;
	case 'banner':
		if ($turbo->managers->access('banners'))
			$result = $turbo->banners->update_banner($id, $values);
		break;
	case 'banners_image':
		if ($turbo->managers->access('banners'))
			$result = $turbo->banners->update_banners_image($id, $values);
		break;
	case 'language':
		if ($turbo->managers->access('languages'))
			$result = $turbo->languages->update_language($id, $values);
		break;
}

header("Content-type: application/json; charset=UTF-8");
header("Cache-Control: must-revalidate");
header("Pragma: no-cache");
header("Expires: -1");
$json = json_encode($result);
print $json;
