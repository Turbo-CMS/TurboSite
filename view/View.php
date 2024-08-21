<?php

require_once 'api/Turbo.php';

class View extends Turbo
{
	public $user;
	public $page;
	public $language;
	public $langLink;

	private static $viewInstance;

	public function __construct()
	{
		parent::__construct();

		if (self::$viewInstance) {
			$this->user = &self::$viewInstance->user;
			$this->page = &self::$viewInstance->page;
			$this->language = &self::$viewInstance->language;
			$this->langLink = &self::$viewInstance->langLink;
		} else {
			self::$viewInstance = $this;

			// Langs
			$langLabels = [];
			$languages = $this->languages->languages();

			foreach ($languages as $language) {
				$langLabels[] = $language->label;
			}

			$getLang = $_GET['lang_label'] ?? null;

			if (!isset($getLang) && !empty($langLabels) && !in_array($getLang, $langLabels)) {
				$_GET['page_url'] = '404';
				$_GET['module'] = 'PageView';
			}

			$langLink = '';

			if ($getLang) {
				$this->language = $this->languages->languages(['id' => $this->languages->langId()]);

				if (!is_object($this->language)) {
					$_GET['page_url'] = '404';
					$_GET['module'] = 'PageView';
					$this->language = reset($languages);
					$this->languages->setLangId($this->language->id);
				}

				$langLink = $this->language->label . '/';
			} else {
				$this->language = reset($languages);

				if ($this->language !== false && isset($this->language->id)) {
					$this->languages->setLangId($this->language->id);
				}
			}

			$this->design->assign('lang_link', $langLink);
			$this->langLink = $langLink;

			if (!empty($languages)) {
				$firstLang = reset($languages);
				$ruri = explode('/', $_SERVER['REQUEST_URI']);
				$as = $firstLang->id !== $this->languages->langId() ? 2 : 1;

				if (is_array($ruri) && $firstLang->id == $this->languages->langId() && $ruri[1] == $firstLang->label) {
					header('HTTP/1.1 301 Moved Permanently');
					header('Location: ' . $this->config->root_url . '/' . implode('/', array_slice($ruri, 2)));
					exit();
				}

				foreach ($languages as &$lang) {
					if ($firstLang->id !== $lang->id) {
						$lang->url = $lang->label . ($ruri ? '/' . implode('/', array_slice($ruri, $as)) : '');
					} else {
						$lang->url = ($ruri ? '/' . implode('/', array_slice($ruri, $as)) : '');
					}
				}
			}

			// User
			if (isset($_SESSION['user_id'])) {
				$user_id = (int) $_SESSION['user_id'];
				$user = $this->users->getUser($user_id);

				if ($user && $user->enabled) {
					$this->user = $user;
				}
			}

			// Page
			$subDir = substr(dirname(dirname(__FILE__)), strlen($_SERVER['DOCUMENT_ROOT']));
			$pageUrl = trim(substr($_SERVER['REQUEST_URI'], strlen($subDir)), "/");

			if (strpos($pageUrl, '?') !== false) {
				$pageUrl = substr($pageUrl, 0, strpos($pageUrl, '?'));
			}

			if (!empty($languages) && !empty($firstLang)) {
				$strlen = $firstLang->id == $this->language->id ? '' : $firstLang->label;
				$pageUrl = trim(substr($pageUrl, strlen($strlen)), '/');
			}

			// Design
			$this->design->assign('language', $this->language);
			$this->design->assign('languages', $languages);
			$this->design->assign('lang', $this->translations);

			$pageUrl = (string) $pageUrl;
			$this->page = $this->pages->getPage($pageUrl);

			$this->design->assign('seo', $this->seo);
			$this->design->assign('page', $this->page);
			$this->design->assign('user', $this->user);
			$this->design->assign('config', $this->config);
			$this->design->assign('settings', $this->settings);
			$this->design->assign('theme_settings', $this->themeSettings);

			// Plugins
			$this->design->smarty->registerPlugin('block', 'js', [$this, 'addJavascriptBlock']);
			$this->design->smarty->registerPlugin('block', 'css', [$this, 'addStylesheetBlock']);
			$this->design->smarty->registerPlugin('function', 'get_faqs', [$this, 'getFaqsPlugin']);
			$this->design->smarty->registerPlugin('function', 'get_posts', [$this, 'getPostsPlugin']);
			$this->design->smarty->registerPlugin('function', 'get_banner', [$this, 'getBannerPlugin']);
			$this->design->smarty->registerPlugin('function', 'javascript', [$this, 'printJavascript']);
			$this->design->smarty->registerPlugin('function', 'stylesheet', [$this, 'printStylesheet']);
			$this->design->smarty->registerPlugin('function', 'get_captcha', [$this, 'getCaptchaPlugin']);
			$this->design->smarty->registerPlugin('function', 'get_articles', [$this, 'getArticlesPlugin']);
			$this->design->smarty->registerPlugin("function", "get_projects", [$this, 'getProjectsPlugin']);
			$this->design->smarty->registerPlugin('function', 'get_comments', [$this, 'getCommentsPlugin']);
			$this->design->smarty->registerPlugin('function', 'unset_js', [$this, 'unsetJavascriptFunction']);
			$this->design->smarty->registerPlugin('function', 'unset_css', [$this, 'unsetStylesheetFunction']);
		}
	}

	/**
	 * Display
	 */
	function fetch()
	{
		return false;
	}

	/**
	 * Get Captcha Plugin
	 */
	public function getCaptchaPlugin($params, $smarty)
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

	/**
	 * Get Banner Plugin
	 */
	public function getBannerPlugin($params, $smarty)
	{
		$group = isset($params['group']) && !empty($params['group']) ? $params['group'] : false;

		$articlesCategory = $this->design->smarty->getTemplateVars('articles_category');
		$projectsCategory = $this->design->smarty->getTemplateVars('projects_category');
		$page = $this->design->smarty->getTemplateVars('page');

		$showFilterArray = [
			'articles_categories' => $articlesCategory ? $articlesCategory->id : null,
			'projects_categories' => $projectsCategory ? $projectsCategory->id : null,
			'pages' => $page ? $page->id : null,
		];

		$banner = $this->banners->getBanner($group, true, $showFilterArray);

		if (!empty($banner)) {
			$items = $this->banners->getBannersImages(['banner_id' => $banner->id, 'visible' => 1]);

			if ($items) {
				$banner->items = $items;
				$smarty->assign($params['var'], $banner);
			}
		}
	}

	/**
	 * Get Post Plugin
	 */
	public function getPostsPlugin($params, $smarty)
	{
		if (!isset($params['visible'])) {
			$params['visible'] = 1;
		}

		if (!empty($params['var'])) {
			$posts = $this->blog->getPosts($params);
		}

		if (empty($posts)) {
			return false;
		}

		foreach ($posts as &$post) {
			$post->comments = count($this->comments->getComments(['has_parent' => false, 'type' => 'blog', 'object_id' => $post->id, 'approved' => 1]));
		}

		$smarty->assign($params['var'], $posts);
	}

	/**
	 * Get FAQ Plugin
	 */
	public function getFaqsPlugin($params, $smarty)
	{
		if (!isset($params['visible'])) {
			$params['visible'] = 1;
		}

		if (!empty($params['var'])) {
			$faqs = $this->faq->getFaqs($params);
		}

		if (empty($faqs)) {
			return false;
		}

		$smarty->assign($params['var'], $faqs);
	}

	/**
	 * Get Articles Plugin
	 */
	public function getArticlesPlugin($params, $smarty)
	{
		if (!isset($params['visible'])) {
			$params['visible'] = 1;
		}

		if (!empty($params['var'])) {
			$posts = $this->articles->getArticles($params);
		}

		if (empty($posts)) {
			return false;
		}

		foreach ($posts as &$post) {
			$post->comments = count($this->comments->getComments(['has_parent' => false, 'type' => 'article', 'object_id' => $post->id, 'approved' => 1]));
			$post->category = $this->articlesCategories->getArticlesCategory((int) $post->category_id);
		}

		$smarty->assign($params['var'], $posts);
	}

	/**
	 * Get Comments Plugin
	 */
	public function getCommentsPlugin($params, $smarty)
	{
		if (!isset($params['approved'])) {
			$params['approved'] = 1;
		}

		if (!isset($params['has_parent'])) {
			$params['has_parent'] = false;
		}

		if (!empty($params['var'])) {
			$comments = $this->comments->getComments($params);

			$projectsIds = [];
			$projects = [];
			$postsIds = [];
			$posts = [];
			$articlesIds = [];
			$articles = [];

			foreach ($comments as $comment) {
				$projectsIds[] = $comment->object_id;

				foreach ($this->projects->getProjects(['id' => $projectsIds]) as $p) {
					$projects[$p->id] = $p;
				}

				$postsIds[] = $comment->object_id;

				foreach ($this->blog->getPosts(['id' => $postsIds]) as $p) {
					$posts[$p->id] = $p;
				}

				$articlesIds[] = $comment->object_id;

				foreach ($this->articles->getArticles(['id' => $articlesIds]) as $a) {
					$articles[$a->id] = $a;
				}
			}

			foreach ($comments as $comment) {
				if (isset($projects[$comment->object_id])) {
					$comment->project = $projects[$comment->object_id];
				}

				if (isset($posts[$comment->object_id])) {
					$comment->post = $posts[$comment->object_id];
				}

				if (isset($articles[$comment->object_id])) {
					$comment->article = $articles[$comment->object_id];
				}
			}

			$smarty->assign($params['var'], $comments);
		}
	}

	/**
	 * Get Projects Plugin
	 */
	public function getProjectsPlugin($params, $smarty)
	{
		if (!isset($params['visible'])) {
			$params['visible'] = 1;
		}

		if (!isset($params['sort'])) {
			$params['sort'] = 'created';
		}

		if (!empty($params['var'])) {
			foreach ($this->projects->getProjects($params) as $p) {
				$projects[$p->id] = $p;
			}

			if (!empty($projects)) {
				$projectsIds = array_keys($projects);

				$images = $this->projects->getImages(['project_id' => $projectsIds]);

				foreach ($images as $image) {
					$projects[$image->project_id]->images[] = $image;
				}

				foreach ($projects as &$project) {
					if (isset($project->images[0])) {
						$project->image = $project->images[0];
					}
				}
			}

			$smarty->assign($params['var'], $projects);
		}
	}


	/**
	 * Add JavaScript File
	 */
	public function addJavascriptBlock($params, $content, $smarty, &$repeat)
	{
		if (!isset($params['id']) || $repeat || (empty($content)) && empty($params['include'])) {
			return false;
		}

		if (!isset($params['priority'])) {
			$params['priority'] = 10;
		}

		if (!empty($params['include'])) {
			$this->js->addFiles($params['id'], $params['include'], $params['priority']);
		}

		if (!empty($content)) {
			$this->js->addCode($params['id'], $content, $params['priority']);
		}

		if (!empty($params['render'])) {
			if (!isset($params['minify'])) {
				$params['minify'] = null;
			}

			if (!isset($params['combine'])) {
				$params['combine'] = true;
			}

			return $this->js->render($params['id'], $params['minify'], $params['combine']);
		}
	}

	/**
	 * Unregister JavaScript File
	 */
	public function unsetJavascriptFunction($params, $smarty)
	{
		if (!isset($params['id'])) {
			return false;
		}

		$this->js->unplug($params['id']);
	}

	/**
	 * Render Packed JavaScript File
	 */
	public function printJavascript($params)
	{
		if (!isset($params['id'])) {
			$params['id'] = null;
		}

		if (!isset($params['combine'])) {
			$params['combine'] = true;
		}

		if (!isset($params['minify'])) {
			$params['minify'] = null;
		}

		return $this->js->render($params['id'], $params['minify'], $params['combine']);
	}

	/**
	 * Register CSS File
	 */
	public function addStylesheetBlock($params, $content, $smarty, &$repeat)
	{
		if (!isset($params['id']) || $repeat || (empty($content)) && empty($params['include'])) {
			return false;
		}

		if (!isset($params['priority'])) {
			$params['priority'] = 10;
		}

		if (!isset($params['less'])) {
			$params['less'] = false;
		}

		if (!empty($params['include'])) {
			$this->css->addFiles($params['id'], $params['include'], $params['priority'], $params['less']);
		}

		if (!empty($content)) {
			$this->css->addCode($params['id'], $content, $params['priority'], $params['less']);
		}

		if (!empty($params['render'])) {
			if (!isset($params['minify'])) {
				$params['minify'] = null;
			}

			if (!isset($params['combine'])) {
				$params['combine'] = true;
			}

			return $this->css->render($params['id'], $params['minify'], $params['combine']);
		}
	}

	/**
	 * Unregisters CSS File
	 */
	public function unsetStylesheetFunction($params, $smarty)
	{
		if (!isset($params['id'])) {
			return false;
		}

		$this->css->unplug($params['id']);

		return true;
	}

	/**
	 * Print packed CSS File
	 */
	public function printStylesheet($params)
	{
		if (!isset($params['id'])) {
			$params['id'] = null;
		}

		if (!isset($params['combine'])) {
			$params['combine'] = true;
		}

		if (!isset($params['minify'])) {
			$params['minify'] = null;
		}

		return $this->css->render($params['id'], $params['minify'], $params['combine']);
	}
}
