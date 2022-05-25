<?PHP

/**
 * Turbo CMS
 *
 * @author	Turbo CMS
 * @link	https://turbo-cms.com
 *
 * Base class for everyone View
 *
 */

require_once('api/Turbo.php');

class View extends Turbo
{
    /* The meaning of the class is the availability of the following variables in any View */
    public $user;
    public $page;
    public $language;
    public $lang_link;

    /* The View class is similar to a singleton, we store its instance statically */
    private static $view_instance;

    public function __construct()
    {
        parent::__construct();

        // If the class instance already exists - just use the already existing variables
        if (self::$view_instance) {
            $this->user         = &self::$view_instance->user;
            $this->page         = &self::$view_instance->page;
            $this->language     = &self::$view_instance->language;
            $this->lang_link    = &self::$view_instance->lang_link;
        } else {
            // Save our instance in a static variable, to use it next time 
            self::$view_instance = $this;

            // Lang
            $lang_labels = array();

            $languages = $this->languages->languages();
            foreach ($languages as $l)
                $lang_labels[] = $l->label;

            $get_lang = $_GET['lang_label'];

            if (!isset($get_lang) && !empty($lang_labels) && !in_array($get_lang, $lang_labels)) {
                $_GET['page_url'] = '404';
                $_GET['module'] = 'PageView';
            }

            $lang_link = '';
            if ($get_lang) {
                $this->language = $this->languages->languages(array('id' => $this->languages->lang_id()));
                if (!is_object($this->language)) {
                    $_GET['page_url'] = '404';
                    $_GET['module'] = 'PageView';
                    $this->language = reset($languages);
                    $this->languages->set_lang_id($this->language->id);
                }
                $lang_link = $this->language->label . '/';
            } else {
                $this->language = reset($languages);
                $this->languages->set_lang_id($this->language->id);
                //$_SESSION['lang_id'] = $this->language->id;
            }

            $this->design->assign('lang_link', $lang_link);
            $this->lang_link = $lang_link;

            //if(!empty($languages) && (empty($get_lang) || !isset($get_lang) || !in_array($get_lang, $lang_labels)))
            /*if(!empty($languages) && $_SERVER['REQUEST_URI'] == '/')
            {
                header("HTTP/1.1 301 Moved Permanently");
                header('Location: '.$this->config->root_url.'/'.reset($lang_labels));
                exit();
            }*/

            if (!empty($languages)) {
                $first_lang = reset($languages);
                $ruri = explode('/', $_SERVER['REQUEST_URI']);
                $as = $first_lang->id !== $this->languages->lang_id() ? 2 : 1;

                if (is_array($ruri) && $first_lang->id == $this->languages->lang_id() && $ruri[1] == $first_lang->label) {
                    header("HTTP/1.1 301 Moved Permanently");
                    header('Location: ' . $this->config->root_url . '/' . implode('/', array_slice($ruri, 2)));
                    exit();
                }

                foreach ($languages as &$l) {
                    if ($first_lang->id !== $l->id) // the host language does not need a label
                    {
                        $l->url = $l->label . ($ruri ? '/' . implode('/', array_slice($ruri, $as)) : '');
                    } else {
                        $l->url = ($ruri ? '/' . implode('/', array_slice($ruri, $as)) : '');
                    }
                }
            }

            // User, if logged in
            if (isset($_SESSION['user_id'])) {
                $u = $this->users->get_user(intval($_SESSION['user_id']));
                if ($u && $u->enabled) {
                    $this->user = $u;
                    $this->group = $this->users->get_group($this->user->group_id);
                }
            }

            // Current page (if any)
            $subdir = substr(dirname(dirname(__FILE__)), strlen($_SERVER['DOCUMENT_ROOT']));
            $page_url = trim(substr($_SERVER['REQUEST_URI'], strlen($subdir)), "/");
            if (strpos($page_url, '?') !== false)
                $page_url = substr($page_url, 0, strpos($page_url, '?'));

            if (!empty($languages) && !empty($first_lang)) {
                $strlen = $first_lang->id == $this->language->id ? "" : $first_lang->label;
                $page_url = trim(substr($page_url, strlen($strlen)), "/");
            }

            $this->design->assign('language', $this->language);
            $this->design->assign('languages', $languages);
            $this->design->assign('lang', $this->translations);

            $this->page = $this->pages->get_page((string)$page_url);
            $this->design->assign('page', $this->page);

            // We transfer to the design what may be needed in it
            $this->design->assign('user',       $this->user);

            $this->design->assign('config',        $this->config);
            $this->design->assign('settings',    $this->settings);

            // Setting up smarty plugins
            $this->design->smarty->registerPlugin("function", "get_posts",                    array($this, 'get_posts_plugin'));
            $this->design->smarty->registerPlugin("function", "get_banner",                 array($this, 'get_banner_plugin'));
            $this->design->smarty->registerPlugin("function", "get_captcha",                array($this, 'get_captcha_plugin'));
            $this->design->smarty->registerPlugin("function", "get_articles",               array($this, 'get_articles_plugin'));
            $this->design->smarty->registerPlugin("function", "get_projects",               array($this, 'get_projects_plugin'));
            $this->design->smarty->registerPlugin("function", "get_comments",              array($this, 'get_comments_plugin'));

            // js functions 
            $this->design->smarty->registerPlugin('block', 'js',        array($this, 'add_javascript_block'));
            $this->design->smarty->registerPlugin('function', 'unset_js',        array($this, 'unset_javascript_function'));
            $this->design->smarty->registerPlugin('function', 'javascript',      array($this, 'print_javascript'));

            // css functions 
            $this->design->smarty->registerPlugin('block', 'css',                 array($this, 'add_stylesheet_block'));
            $this->design->smarty->registerPlugin('function', 'unset_css',        array($this, 'unset_stylesheet_function'));
            $this->design->smarty->registerPlugin('function', 'stylesheet',       array($this, 'print_stylesheet'));
        }
    }

    /**
     *
     * Display
     *
     */
    function fetch()
    {
        return false;
    }

    /**
     *
     * Smarty plugins
     *
     */
    public function get_captcha_plugin($params, $smarty)
    {
        if (isset($params['var'])) {
            $number = 0;
            unset($_SESSION[$params['var']]);
            $total = rand(10, 50);
            $secret = rand(1, 10);
            $result[] = $total - $secret;
            $result[] = $total;
            $_SESSION[$params['var']] = $secret;
            $smarty->assign($params['var'], $result);
        } else {
            return false;
        }
    }

    public function get_banner_plugin($params, $smarty)
    {
        if (!isset($params['group']) || empty($params['group'])) {
            return false;
        }

        @$articles_category = $this->design->smarty->getTemplateVars('articles_category');
        @$projects_category = $this->design->smarty->getTemplateVars('projects_category');
        @$page = $this->design->smarty->getTemplateVars('page');

        @$show_filter_array = array('projects_categories' => $projects_category->id, 'articles_categories' => $articles_category->id, 'pages' => $page->id);
        $banner = $this->banners->get_banner($params['group'], true, $show_filter_array);
        if (!empty($banner)) {
            if ($items = $this->banners->get_banners_images(array('banner_id' => $banner->id, 'visible' => 1))) {
                $banner->items = $items;
            }
            $smarty->assign($params['var'], $banner);
        }
    }

    public function get_posts_plugin($params, $smarty)
    {
        if (!isset($params['visible']))
            $params['visible'] = 1;
        if (!empty($params['var']))
            $posts = $this->blog->get_posts($params);
        if (empty($posts))
            return false;

        foreach ($posts as &$post) {
            $post->comments = count($this->comments->get_comments(array('type' => 'blog', 'object_id' => $post->id, 'approved' => 1)));
        }
        $smarty->assign($params['var'], $posts);
    }

    public function get_articles_plugin($params, $smarty)
    {
        if (!isset($params['visible']))
            $params['visible'] = 1;
        if (!empty($params['var']))
            $posts = $this->articles->get_articles($params);
        if (empty($posts))
            return false;

        foreach ($posts as &$post) {
            $post->comments = count($this->comments->get_comments(array('type' => 'article', 'object_id' => $post->id, 'approved' => 1)));
            $post->category = $this->articles_categories->get_articles_category(intval($post->category_id));
        }
        $smarty->assign($params['var'], $posts);
    }

    public function get_projects_plugin($params, $smarty)
    {
        if (!isset($params['visible']))
            $params['visible'] = 1;
        if (!isset($params['sort']))
            $params['sort'] = 'created';
        if (!empty($params['var'])) {
            foreach ($this->projects->get_projects($params) as $p)
                $projects[$p->id] = $p;

            if (!empty($projects)) {
                $projects_ids = array_keys($projects);

                $images = $this->projects->get_images(array('project_id' => $projects_ids));
                foreach ($images as $image)
                    $projects[$image->project_id]->images[] = $image;

                foreach ($projects as &$project) {
                    if (isset($project->images[0]))
                        $project->image = $project->images[0];
                }
            }

            $smarty->assign($params['var'], $projects);
        }
    }

    public function get_comments_plugin($params, $smarty)
    {
        if (!isset($params['approved']))
            $params['approved'] = 1;
        if (!empty($params['var']))
            $smarty->assign($params['var'], $this->comments->get_comments($params));
    }

    /*
    * Functions for working with javascript files
    * Register js file(s) or code
    */

    public function add_javascript_block($params, $content, $smarty, &$repeat)
    {
        if (!isset($params['id']) || $repeat || (empty($content)) && empty($params['include']))
            return false;


        if (!isset($params['priority']))
            $params['priority'] = 10;

        if (!empty($params['include']))
            $this->js->add_files($params['id'], $params['include'], $params['priority']);

        if (!empty($content))
            $this->js->add_code($params['id'], $content, $params['priority']);



        if (!empty($params['render'])) {
            if (!isset($params['minify']))
                $params['minify'] = null;

            if (!isset($params['combine']))
                $params['combine'] = true;

            return $this->js->render($params['id'], $params['minify'], $params['combine']);
        }
    }

    /*
    * Unregister js file(s) or code
    */

    public function unset_javascript_function($params, $smarty)
    {
        if (!isset($params['id']))
            return false;


        $this->js->unplug($params['id']);
    }

    /*
    * Output of packed js file 
    */

    public function print_javascript($params)
    {
        if (!isset($params['id']))
            $params['id'] = null;

        if (!isset($params['combine']))
            $params['combine'] = true;

        if (!isset($params['minify']))
            $params['minify'] = null;

        return $this->js->render($params['id'], $params['minify'], $params['combine']);
    }

    /*
    * Functions for working with style files
    * Register css file(s) or code 
    */

    public function add_stylesheet_block($params, $content, $smarty, &$repeat)
    {
        if (!isset($params['id']) || $repeat || (empty($content)) && empty($params['include']))
            return false;


        if (!isset($params['priority']))
            $params['priority'] = 10;

        if (!isset($params['less']))
            $params['less'] = false;

        if (!empty($params['include']))
            $this->css->add_files($params['id'], $params['include'], $params['priority'], $params['less']);

        if (!empty($content))
            $this->css->add_code($params['id'], $content, $params['priority'], $params['less']);


        if (!empty($params['render'])) {
            if (!isset($params['minify']))
                $params['minify'] = null;

            if (!isset($params['combine']))
                $params['combine'] = true;

            return $this->css->render($params['id'], $params['minify'], $params['combine']);
        }
    }

    /*
    * Unregister css file(s) or code
    */

    public function unset_stylesheet_function($params, $smarty)
    {
        if (!isset($params['id']))
            return false;


        $this->css->unplug($params['id']);
    }

    /*
    * Output of packed css file 
    */

    public function print_stylesheet($params)
    {
        if (!isset($params['id']))
            $params['id'] = null;

        if (!isset($params['combine']))
            $params['combine'] = true;

        if (!isset($params['minify']))
            $params['minify'] = null;

        return $this->css->render($params['id'], $params['minify'], $params['combine']);
    }
}
