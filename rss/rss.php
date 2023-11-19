<?php

require_once '../api/Turbo.php';
$turbo = new Turbo();

$siteName    = $turbo->settings->site_name;
$rootUrl     = $turbo->config->root_url;
$companyName = $turbo->settings->company_name;
$lang        = 'en';
$dateRss     = 'D, d M Y H:i:s O';

print <<<HEAD
<?xml version="1.0" encoding="UTF-8"?>
<rss xmlns:g="http://base.google.com/ns/1.0">
	 xmlns:media="http://search.yahoo.com/mrss/"
	 version="2.0">
	<channel>
		<turbo:cms_plugin>88AC70EEFE360CBE79E901D7CF751783</turbo:cms_plugin>
		<title>$siteName</title>
		<link>$rootUrl</link>
		<language>$lang</language>
HEAD;

$turbo->db->query("SELECT * FROM __pages p WHERE p.visible");
while ($page = $turbo->db->result()) {
    $pageLink = $rootUrl . $page->url;
    $pageDate = date($dateRss);
    $pageText = $page->body;
    $pageH1   = $page->name;

    $pageContent = "<header><h1>$pageH1</h1></header><div>$pageText</div>";

    print <<<ITEM
    <item turbo="true">
        <title>$page->name</title>
        <link>$pageLink</link>
        <turbo:content><![CDATA[$pageContent]]></turbo:content>
        <pubDate>$pageDate</pubDate>
    </item>
ITEM;
}

$turbo->db->query("SELECT * FROM __blog b WHERE b.visible");

while ($blog = $turbo->db->result()) {
    $blogLink       = $rootUrl . '/blog/' . $blog->url;
    $blogDate       = date($dateRss, strtotime($blog->date));
    $blogText       = ($blog->annotation !== '') ? $blog->annotation : $blog->description;
    $blogH1         = $blog->name;
    $blogImgUrl     = $turbo->design->resizePostsModifier($blog->image, 800, 600, false);

    print <<<ITEM
    <item turbo="true">
        <title>$blog->name</title>
        <link>$blogLink</link>
        <turbo:content><![CDATA[
            <header>
                <h1>$blogH1</h1>
                <figure><img src="$blogImgUrl"/></figure>
            </header>
            <div>$blogText</div>
        ]]></turbo:content>
        <pubDate>$blogDate</pubDate>
    </item>
ITEM;
}

$turbo->db->query("SELECT * FROM __projects_categories c WHERE c.visible");

while ($category = $turbo->db->result()) {
    $categoryLink = $rootUrl . '/projects/' . $category->url;
    $categoryDate = date($dateRss);
    $categoryText = $category->description;
    $categoryH1   = $category->name;

    $categoryContent = "<header><h1>$categoryH1</h1>";

    if ($category->image) {
        $categoryImgUrl = $turbo->design->resizeCatalogModifier($category->image, 800, 600, false, $turbo->config->resized_category_images_dir);
        $category_content .= "<figure><img src=\"$categoryImgUrl\"/></figure>";
    }

    $categoryContent .= "</header><div>$categoryText</div>";

    print <<<ITEM
        <item turbo="true">
            <title>$category->name</title>
            <link>$categoryLink</link>
            <turbo:content>
                <![CDATA[$categoryContent]]>
            </turbo:content>
            <pubDate>$categoryDate</pubDate>
        </item>
ITEM;
}

$turbo->db->query("SELECT *, i.filename as image FROM __projects p LEFT JOIN __images_project i ON p.id = i.project_id AND i.position=(SELECT MIN(position) FROM __images_project WHERE project_id=p.id LIMIT 1) WHERE p.visible");
while ($projects = $turbo->db->result()) {

    $projectsLink = $rootUrl . '/project/' . $projects->url;
    $projectsDate = date($dateRss, strtotime($projects->date));
    $projectsText = ($projects->annotation !== '') ? $projects->annotation : $projects->text;
    $projectsH1   = $projects->name;
    $projectsImgUrl = $turbo->design->resizeModifier($projects->image, 800, 600, false);

    print <<<ITEM
        <item turbo="true">
            <title>$projects->name</title>
            <link>$projectsLink</link>
            <turbo:content>
                <![CDATA[<header><h1>$projectsH1</h1><figure><img src="$projectsImgUrl"/></figure></header><div>$projectsText</div>]]>
            </turbo:content>
            <pubDate>$projectsDate</pubDate>
        </item>
ITEM;
}

$turbo->db->query("SELECT * FROM __articles_categories c WHERE c.visible");

while ($category = $turbo->db->result()) {
    $categoryLink = $rootUrl . '/articles/' . $category->url;
    $categoryDate = date($dateRss);
    $categoryText = $category->description;
    $categoryH1   = $category->name;

    $categoryContent = "<header><h1>$categoryH1</h1>";

    if ($category->image) {
        $categoryImgUrl = $turbo->design->resizeCatalogModifier($category->image, 800, 600, false, $turbo->config->resized_category_images_dir);
        $categoryContent .= "<figure><img src=\"$categoryImgUrl\"/></figure>";
    }

    $categoryContent .= "</header><div>$categoryText</div>";

    print <<<ITEM
		<item turbo="true">
			<title>$category->name</title>
			<link>$categoryLink</link>
			<turbo:content>
				<![CDATA[$categoryContent]]>
			</turbo:content>
			<pubDate>$categoryDate</pubDate>
		</item>
ITEM;
}

$turbo->db->query("SELECT * FROM __articles a WHERE a.visible");

while ($articles = $turbo->db->result()) {
    $articlesLink = $rootUrl . '/article/' . $articles->url;
    $articlesDate = date($dateRss, strtotime($articles->date));
    $articlesText = ($articles->annotation !== '') ? $articles->annotation : $articles->text;
    $articlesH1   = $articles->name;
    $articlesImgUrl = $turbo->design->resizeArticlesModifier($articles->image, 800, 600, false, $turbo->config->resized_articles_images_dir);

    print <<<ITEM
		<item turbo="true">
			<title>$articles->name</title>
			<link>$articlesLink</link>
			<turbo:content><![CDATA[
                <header>
                    <h1>$articlesH1</h1>
                    <figure><img src="$articlesImgUrl"/></figure>
                </header>
                <div>$articlesText</div>
            ]]></turbo:content>
			<pubDate>$articlesDate</pubDate>
		</item>
ITEM;
}

print <<<END
	</channel>
</rss>
END;

die;
