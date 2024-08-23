<?php

session_start();

require_once '../api/Turbo.php';

$turbo = new Turbo();

$limit = 30;

$langId = $turbo->languages->langId();
$language = $turbo->languages->languages(['id' => $langId]);
$langLink = '';
$firstLang = $turbo->languages->languages();

if (!empty($firstLang)) {
	$firstLang = reset($firstLang);

	if ($firstLang->id !== $language->id) {
		$langLink = $language->label . '/';
	}
}

$px = ($langId ? 'l' : 'p');
$langSql = $turbo->languages->getQuery(['object' => 'project']);

$keyword = $turbo->request->get('query', 'string');
$sk = $turbo->db->escape($keyword);

$turbo->db->query(
	"SELECT 
        p.id,
        p.url,
        $px.name, 
        i.filename AS image 
    FROM __projects p 
    	$langSql->join
    LEFT JOIN __images_project i ON i.project_id=p.id AND i.position=(SELECT MIN(position) FROM __images_project WHERE project_id=p.id LIMIT 1)
    WHERE 
        ($px.name LIKE '%$sk%' OR $px.meta_keywords LIKE '%$sk%') 
        AND visible=1 
    ORDER BY $px.name 
    LIMIT ?",
	$limit
);

$projects = $turbo->db->results();

$suggestions = [];

foreach ($projects as $project) {
	$suggestion = new stdClass();

	if (!empty($project->image)) {
		$project->image = $turbo->design->resizeModifier($project->image, 35, 35);
	}

	$suggestion->value = $project->name;
	$suggestion->data = $project;
	$suggestion->lang = $langLink;
	$suggestions[] = $suggestion;
}

$res = new stdClass();
$res->query = $keyword;
$res->suggestions = $suggestions;

header('Content-Type: application/json; charset=UTF-8');
header('Cache-Control: must-revalidate');
header('Pragma: no-cache');
header('Expires: -1');

print json_encode($res);
