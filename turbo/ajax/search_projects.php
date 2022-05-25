<?php
	session_start();
	require_once('../../api/Turbo.php');
	$turbo = new Turbo();
    $limit = 30;

    $lang_id  = $turbo->languages->lang_id();
    $px = ($lang_id ? 'l' : 'p');
    $lang_sql = $turbo->languages->get_query(array('object'=>'project', 'px'=>'p'));
    
    $keyword = $turbo->request->get('query', 'string');
    $keywords = explode(' ', $keyword);
    $keyword_sql = '';
    foreach($keywords as $keyword)
	{
				$kw = $turbo->db->escape(trim($keyword));
				$keyword_sql .= $turbo->db->placehold("AND ($px.name LIKE '%$kw%' OR $px.meta_keywords LIKE '%$kw%')");
	}
    
    $turbo->db->query("SELECT 
            p.id, 
            $px.name, 
            i.filename as image 
        FROM __projects p
        $lang_sql->join
        LEFT JOIN __images_project i ON i.project_id=p.id AND i.position=(SELECT MIN(position) FROM __images_project WHERE project_id=p.id LIMIT 1)
        WHERE 
            1 
            $keyword_sql 
        ORDER BY $px.name 
        LIMIT ?
    ", $limit);
    
    $projects = $turbo->db->results();
    
    $suggestions = array();
    foreach($projects as $project) {
        if(!empty($project->image)) {
            $project->image = $turbo->design->resize_modifier($project->image, 35, 35);
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
