<?php

class Turbo
{
	// Properties - API Classes
	private $classes = array(
		'faq'                   => 'FAQ',
		'seo'                   => 'Seo',
		'blog'                  => 'Blog',
		'files'                 => 'Files',
		'cache'		            => 'Cache',
		'pages'                 => 'Pages',
		'menus'                 => 'Menus',
		'image'                 => 'Image',
		'users'                 => 'Users',
		'config'                => 'Config',
		'design'                => 'Design',
		'notify'                => 'Notify',
		'banners'               => 'Banners',
		'request'               => 'Request',
		'comments'              => 'Comments',
		'articles'              => 'Articles',
		'db'                    => 'Database',
		'settings'              => 'Settings',
		'projects'              => 'Projects',
		'managers'              => 'Managers',
		'languages'             => 'Languages',
		'feedbacks'             => 'Feedbacks',
		'callbacks'             => 'Callbacks',
		'subscribes'            => 'Subscribes',
		'js'                    => 'Javascript',
		'css'                   => 'Stylesheet',
		'translations'          => 'Translations',
		'articles_categories'   => 'ArticlesCategories',
		'projects_categories'   => 'ProjectsCategories',
		'backend_translations'  => 'BackendTranslations'
	);

	// Created objects
	private static $objects = array();

	/**
	 * The constructor will be left empty, but we will define it in case parent::__construct() is called in API classes
	 */
	public function __construct()
	{
		//error_reporting(E_ALL & !E_STRICT);
	}

	/**
	 * Magic method, creates the desired API object
	 */
	public function __get($name)
	{
		// If such an object already exists, return it.
		if (isset(self::$objects[$name])) {
			return (self::$objects[$name]);
		}

		// If the requested API does not exist - error
		if (!array_key_exists($name, $this->classes)) {
			return null;
		}

		// Determine the name of the desired class
		$class = $this->classes[$name];

		// We connect it
		include_once(dirname(__FILE__) . '/' . $class . '.php');

		// Saved for future references
		self::$objects[$name] = new $class();

		// Returning the created object
		return self::$objects[$name];
	}
}
