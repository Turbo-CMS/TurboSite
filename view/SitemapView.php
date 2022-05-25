<?PHP

/**
 * Turbo CMS
 *
 * @author	Turbo CMS
 * @link	https://turbo-cms.com
 *
 * This class uses the template sitemap.tpl
 *
 */
require_once('View.php');

class SitemapView extends View
{
    function fetch()
    {

        $posts = $this->blog->get_posts(array('visible' => 1));
        $this->design->assign('posts', $posts);

        $projects_categories = $this->projects_categories->get_projects_categories_tree();
        $projects_categories = $this->projects_cat_tree($projects_categories);
        $this->design->assign('projects_cats', $projects_categories);

        $articles_categories = $this->articles_categories->get_articles_categories_tree();
        $articles_categories = $this->articles_cat_tree($articles_categories);
        $this->design->assign('articles_cats', $articles_categories);

        if ($this->page) {
            $this->design->assign('meta_title', $this->page->meta_title);
            $this->design->assign('meta_keywords', $this->page->meta_keywords);
            $this->design->assign('meta_description', $this->page->meta_description);
            $this->design->assign('page', $this->page);
        }

        return $this->design->fetch('sitemap.tpl');
    }

    private function projects_cat_tree($projects_categories)
    {

        foreach ($projects_categories as $k => $v) {
            if (isset($v->subcategories)) $this->cat_tree($v->subcategories);
            $projects_categories[$k]->projects = $this->projects->get_projects(array('category_id' => $v->id));
        }

        return $projects_categories;
    }

    private function articles_cat_tree($articles_categories)
    {

        foreach ($articles_categories as $k => $v) {
            if (isset($v->subcategories)) $this->cat_tree($v->subcategories);
            $articles_categories[$k]->articles = $this->articles->get_articles(array('category_id' => $v->id));
        }

        return $articles_categories;
    }
}
