<?php

require_once('api/Turbo.php');
$turbo = new \Turbo();

$site_name    = $turbo->settings->site_name;
$root_url     = $turbo->config->root_url;
$company_name = $turbo->settings->company_name;
$lang         = 'en';
$date_rss     = 'D, d M Y H:i:s O';

/***** Header ******/
print <<<HEAD
<?xml version="1.0" encoding="UTF-8"?>
<rss xmlns:g="http://base.google.com/ns/1.0">
     xmlns:media="http://search.yahoo.com/mrss/"
     version="2.0">
    <channel>
        <turbo:cms_plugin>88AC70EEFE360CBE79E901D7CF751783</turbo:cms_plugin>
        <title>$site_name</title>
        <link>$root_url</link>
        <language>$lang</language>
HEAD;
/***** Header (The End) ******/

// ---------------------- Page selection: ---------------------- //
$turbo->db->query("SELECT * FROM __pages p WHERE p.visible");

while ($page = $turbo->db->result()) {

    // Page variables to display in RSS:
    $page_link = $root_url . $page->url;
    $page_date = date($date_rss, strtotime($page->created));
    $page_text = $page->description;
    $page_h1   = $page->name;

    $page_content = "<header><h1>$page_h1</h1></header><div>$page_text</div>";

    /***** Pages ******/
    print <<<ITEM
        <item turbo="true">
            <title>$page->name</title>
            <link>$page_link</link>
            <turbo:content>
                <![CDATA[$page_content]]>
            </turbo:content>
            <pubDate>$page_date</pubDate>
        </item>
ITEM;
    /***** Pages (The End) ******/
}

// ---------------------- Blog sample: ---------------------- //
$turbo->db->query("SELECT * FROM __blog b WHERE b.visible");

while ($blog = $turbo->db->result()) {

    // Blog variables to display in RSS:
    $blog_link = $root_url . '/blog/' . $blog->url;
    $blog_date = date($date_rss, strtotime($blog->date));
    $blog_text = ($blog->annotation !== '') ? $blog->annotation : $blog->description;
    $blog_h1   = $blog->name;
    $blog_img_url = $turbo->design->resize_posts_modifier($blog->image, 800, 600, false);

    /***** Blog ******/
    print <<<ITEM
        <item turbo="true">
            <title>$blog->name</title>
            <link>$blog_link</link>
            <turbo:content>
                <![CDATA[<header><h1>$blog_h1</h1><figure><img src="$blog_img_url"/></figure></header><div>$blog_text</div>]]>
            </turbo:content>
            <pubDate>$blog_date</pubDate>
        </item>
ITEM;
    /***** Blog (The End) ******/
}

// ----------------------A selection of project categories: ---------------------- //
$turbo->db->query("SELECT * FROM __projects_categories c WHERE c.visible");

while ($category = $turbo->db->result()) {

    // Project variables to display in RSS:
    $c_link = $root_url . '/projects/' . $category->url;
    $c_date = date($date_rss);
    $c_text = ($category->annotation !== '') ? $category->annotation : $category->description;
    $c_h1   = $category->name;

    $category_content = "<header><h1>$c_h1</h1>";

    // Adding a category image:
    if ($category->image) {
        $c_img_url = $turbo->design->resize_catalog_modifier($category->image, 800, 600, false, $turbo->config->resized_category_images_dir);
        $category_content .= "<figure><img src=\"$c_img_url\"/></figure>";
    }

    $category_content .= "</header><div>$c_text</div>";

    /***** Categories ******/
    print <<<ITEM
        <item turbo="true">
            <title>$category->name</title>
            <link>$c_link</link>
            <turbo:content>
                <![CDATA[$category_content]]>
            </turbo:content>
            <pubDate>$c_date</pubDate>
        </item>
ITEM;
    /***** Categories (The End) ******/
}

// ---------------------- Selection of projects: ---------------------- //
$turbo->db->query("SELECT *, i.filename as image FROM __projects a LEFT JOIN __images_project i ON a.id = i.project_id AND i.position=(SELECT MIN(position) FROM __images_project WHERE project_id=a.id LIMIT 1) WHERE a.visible");
while ($projects = $turbo->db->result()) {

    // Project variables to display in RSS:
    $projects_link = $root_url . '/project/' . $projects->url;
    $projects_date = date($date_rss, strtotime($projects->date));
    $projects_text = ($projects->annotation !== '') ? $projects->annotation : $projects->text;
    $projects_h1   = $projects->name;
    $projects_img_url = $turbo->design->resize_modifier($projects->image, 800, 600, false);

    /***** Projects ******/
    print <<<ITEM
        <item turbo="true">
            <title>$projects->name</title>
            <link>$projects_link</link>
            <turbo:content>
                <![CDATA[<header><h1>$projects_h1</h1><figure><img src="$projects_img_url"/></figure></header><div>$projects_text</div>]]>
            </turbo:content>
            <pubDate>$projects_date</pubDate>
        </item>
ITEM;
    /***** Projects (The End) ******/
}

// ---------------------- A selection of article categories: ---------------------- //
$turbo->db->query("SELECT * FROM __articles_categories c WHERE c.visible");

while ($category = $turbo->db->result()) {

    // Article variables to display in RSS:
    $c_link = $root_url . '/articles/' . $category->url;
    $c_date = date($date_rss);
    $c_text = ($category->annotation !== '') ? $category->annotation : $category->description;
    $c_h1   = $category->name;

    $category_content = "<header><h1>$c_h1</h1>";

    // Adding a category image:
    if ($category->image) {
        $c_img_url = $turbo->design->resize_catalog_modifier($category->image, 800, 600, false, $turbo->config->resized_category_images_dir);
        $category_content .= "<figure><img src=\"$c_img_url\"/></figure>";
    }

    $category_content .= "</header><div>$c_text</div>";

    /***** Categories ******/
    print <<<ITEM
        <item turbo="true">
            <title>$category->name</title>
            <link>$c_link</link>
            <turbo:content>
                <![CDATA[$category_content]]>
            </turbo:content>
            <pubDate>$c_date</pubDate>
        </item>
ITEM;
    /***** Categories (The End) ******/
}

// ---------------------- Selection of articles: ---------------------- //
$turbo->db->query("SELECT * FROM __articles a WHERE a.visible");

while ($articles = $turbo->db->result()) {

    // Article variables to display in RSS:
    $articles_link = $root_url . '/article/' . $articles->url;
    $articles_date = date($date_rss, strtotime($articles->date));
    $articles_text = ($articles->annotation !== '') ? $articles->annotation : $articles->text;
    $articles_h1   = $articles->name;
    $articles_img_url = $turbo->design->resize_articles_modifier($articles->image, 800, 600, false, $turbo->config->resized_articles_images_dir);

    /***** Articles ******/
    print <<<ITEM
        <item turbo="true">
            <title>$articles->name</title>
            <link>$articles_link</link>
            <turbo:content>
                <![CDATA[<header><h1>$articles_h1</h1><figure><img src="$articles_img_url"/></figure></header><div>$articles_text</div>]]>
            </turbo:content>
            <pubDate>$articles_date</pubDate>
        </item>
ITEM;
    /***** Articles (The End) ******/
}

print <<<END
    </channel>
</rss>
END;

die;
