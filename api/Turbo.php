<?php

/**
 * @author Turbo CMS
 * @link https://github.com/Turbo-CMS
 */

require_once(dirname(__DIR__) . '/vendor/autoload.php');

class Turbo
{
	private $classes = [
		'db' => 'Database',
		'js' => 'Javascript',
		'css' => 'Stylesheet',
		'seo' => 'Seo',
		'faq' => 'FAQ',
		'blog' => 'Blog',
		'cache' => 'Cache',
		'files' => 'Files',
		'pages' => 'Pages',
		'menus' => 'Menus',
		'image' => 'Image',
		'users' => 'Users',
		'notify' => 'Notify',
		'config' => 'Config',
		'design' => 'Design',
		'request' => 'Request',
		'banners' => 'Banners',
		'tgnotify' => 'TgNotify',
		'settings' => 'Settings',
		'projects' => 'Projects',
		'comments' => 'Comments',
		'articles' => 'Articles',
		'managers' => 'Managers',
		'feedbacks' => 'Feedbacks',
		'callbacks' => 'Callbacks',
		'languages' => 'Languages',
		'subscribes' => 'Subscribes',
		'translations' => 'Translations',
		'themeSettings' => 'ThemeSettings',
		'articlesCategories' => 'ArticlesCategories',
		'projectsCategories' => 'ProjectsCategories',
		'backendTranslations' => 'BackendTranslations'
	];

	private static $objects = [];

	public function __construct()
	{
		//error_reporting(E_ALL & !E_STRICT);
	}

	/**
	 * Magic Method Get
	 */
	public function __get($name)
	{
		if (isset(self::$objects[$name])) {
			return self::$objects[$name];
		}

		if (!array_key_exists($name, $this->classes)) {
			return null;
		}

		$class = $this->classes[$name];

		include_once dirname(__FILE__) . '/' . $class . '.php';

		self::$objects[$name] = new $class();

		return self::$objects[$name];
	}
}
