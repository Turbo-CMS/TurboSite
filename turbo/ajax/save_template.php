<?php

session_start();

require_once '../../api/Turbo.php';

$turbo = new Turbo();

if (!$turbo->managers->access('design')) {
	return false;
}

if (!$turbo->request->checkSession()) {
	trigger_error('Session expired', E_USER_WARNING);
	exit();
}

$content = $turbo->request->post('content');
$template = $turbo->request->post('template');
$theme = $turbo->request->post('theme', 'string');
$dir = $turbo->request->post('dir', 'string');

if (pathinfo($template, PATHINFO_EXTENSION) != 'tpl') {
	exit();
}

$dir = trim($dir, '/');
$file = $turbo->config->root_dir . 'design/' . $theme . '/html/' . $dir . '/' . $template;

if (is_file($file) && is_writable($file) && !is_file($turbo->config->root_dir . 'design/' . $theme . '/locked')) {
	file_put_contents($file, $content);
}

$result = true;

header('Content-type: application/json; charset=UTF-8');
header('Cache-Control: must-revalidate');
header('Pragma: no-cache');
header('Expires: -1');

$json = json_encode($result);

print $json;
