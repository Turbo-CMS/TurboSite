<?php
session_start();
require_once '../../api/Turbo.php';

$turbo = new Turbo();
$limit = 30;

$langId  = $turbo->languages->langId();
$px = ($langId ? 'l' : 'p');
$langSql = $turbo->languages->getQuery(['object' => 'project', 'px' => 'p']);

$keyword = $turbo->request->get('query', 'string');
$keywords = explode(' ', $keyword);
$keywordSql = '';

foreach ($keywords as $keyword) {
    $kw = $turbo->db->escape(trim($keyword));
    $keywordSql .= $turbo->db->placehold("AND ($px.name LIKE '%$kw%' OR $px.meta_keywords LIKE '%$kw%')");
}

$turbo->db->query(
    "SELECT 
        p.id, 
        $px.name, 
        i.filename as image 
    FROM __projects p
        $langSql->join
    LEFT JOIN __images_project i ON i.project_id=p.id AND i.position=(SELECT MIN(position) FROM __images_project WHERE project_id=p.id LIMIT 1)
    WHERE 1 
        $keywordSql 
    ORDER BY $px.name 
    LIMIT ?",
    $limit
);

$projects = $turbo->db->results();

$suggestions = [];

foreach ($projects as $project) {
    if (!empty($project->image)) {
        $project->image = $turbo->design->resizeModifier($project->image, 35, 35);
    }

    $suggestion = new stdClass();
    $suggestion->value = $project->name;
    $suggestion->data = $project;
    $suggestions[] = $suggestion;
}

$res = new stdClass;
$res->query = $keyword;
$res->suggestions = $suggestions;

header("Content-type: application/json; charset=UTF-8");
header("Cache-Control: must-revalidate");
header("Pragma: no-cache");
header("Expires: -1");

print json_encode($res);
