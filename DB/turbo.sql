SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `t_articles`
--

DROP TABLE IF EXISTS `t_articles`;
CREATE TABLE `t_articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `position` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_articles`
--

INSERT INTO `t_articles` (`id`, `category_id`, `name`, `author`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `visible`, `date`, `last_modified`, `position`, `image`, `views`, `rate`) VALUES
(1, 1, 'Consec tetadip scinelit', 'Webmaster', 'consec-tetadip-scinelit', 'Consec tetadip scinelit', 'Articles, Business, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system\r\n', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 21:00:00', '2024-08-14 00:14:23', 1, 'article_4.jpg', 0, 0),
(2, 2, 'Proin tincidunt felis', 'Webmaster', 'proin-tincidunt-felis', 'Proin tincidunt felis', 'Articles, Projects, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-04-02 21:00:00', '2024-08-14 00:14:23', 2, 'article_3.jpg', 3, 2),
(3, 3, 'Lorem ipsum dolor', 'Webmaster', 'lorem-ipsum-dolor', 'Lorem ipsum dolor', 'Articles, Sales, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 21:00:00', '2024-08-21 18:35:33', 3, 'article_2.jpg', 2, 1),
(4, 3, 'Etiam magna egestas', 'Webmaster', 'etiam-magna-egestas', 'Etiam magna egestas', 'Articles, Sales, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2024-07-23 21:00:00', '2024-08-14 00:14:23', 4, 'article_1.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_articles_categories`
--

DROP TABLE IF EXISTS `t_articles_categories`;
CREATE TABLE `t_articles_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_h1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_articles_categories`
--

INSERT INTO `t_articles_categories` (`id`, `parent_id`, `name`, `name_h1`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `url`, `image`, `position`, `visible`, `last_modified`) VALUES
(1, 0, 'Business advice', '', 'Business advice', 'Business advice', '', '', 'business-advice', '', 1, 1, '2024-08-18 16:46:49'),
(2, 0, 'Project management', '', 'Project management', 'Project management', '', '', 'project-management', '', 2, 1, '2024-08-18 16:46:56'),
(3, 0, 'Increased sales', '', 'Increased sales', 'Increased sales', '', '', 'increased-sales', '', 3, 1, '2024-08-14 00:13:40');

-- --------------------------------------------------------

--
-- Table structure for table `t_banners`
--

DROP TABLE IF EXISTS `t_banners`;
CREATE TABLE `t_banners` (
  `id` int(11) NOT NULL,
  `group_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `show_all_pages` tinyint(1) NOT NULL DEFAULT '0',
  `pages` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `projects_categories` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `articles_categories` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_banners`
--

INSERT INTO `t_banners` (`id`, `group_id`, `name`, `position`, `visible`, `show_all_pages`, `pages`, `projects_categories`, `articles_categories`) VALUES
(1, '1', 'Default Slider', 1, 1, 0, '1', '0', '0'),
(2, '2', 'Big Banners', 2, 1, 0, '1', '0', '0'),
(3, '4', 'Teasers', 3, 1, 0, '1', '0', '0'),
(4, '3', 'Banners Text', 4, 1, 0, '1', '0', '0'),
(5, '6', 'Bottom Banners', 5, 1, 1, '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `t_banners_images`
--

DROP TABLE IF EXISTS `t_banners_images`;
CREATE TABLE `t_banners_images` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_banners_images`
--

INSERT INTO `t_banners_images` (`id`, `banner_id`, `name`, `alt`, `title`, `description`, `url`, `color`, `style`, `code`, `button`, `image`, `background`, `position`, `visible`) VALUES
(1, 1, 'TurboSite Solutions', 'TurboSite Solutions For Your Business', 'TurboSite Solutions For Your Business', 'For Your Business', '/', '', '', '', 'Get Started', 'hero-slide01.png', '', 1, 1),
(2, 1, 'Easy Marketing Solutions', 'Easy Marketing Solutions For Your Business', 'Easy Marketing Solutions For Your Business', 'For Your Business', '/', '', '', '', 'Get Started', 'hero-slide02.png', '', 2, 1),
(3, 1, 'We Provide Solutions', 'We provide solutions for your business', 'We provide solutions for your business', 'For Your Business', '/', '', '', '', 'Get Started', 'hero-slide03.png', '', 3, 1),
(4, 2, 'We help develop<br>online business', 'We help develop online business', 'We help develop online business', 'We tell you how complex automation affects sales, department reporting and enterprise efficiency. We analyze typical questions and give recommendations. Subscribe to the newsletter to stay informed!												', '/', '', 'light', '', 'Read more', 'img_1.png', 'bg_1.jpg', 4, 1),
(5, 2, 'Financial audit of a large company', 'Financial audit of a large company', 'Financial audit of a large company', 'We will conduct an audit of your enterprise in express mode. <br>\r\nWe will build a management accounting system for making key decisions. <br>\r\nWe will put your finances in order!', '/', '', 'light', '', 'Read more', 'img_2.png', 'bg_2.jpg', 5, 1),
(6, 2, 'We design<br>interiors of premises', 'We design interiors of premises', 'We design interiors of premises', '500+ completed projects for home, office and restaurant', '/', '', 'light', '', 'Read more', 'img_3.png', 'bg_3.jpg', 6, 1),
(7, 3, '500+ suppliers', '500+ suppliers', '500+ suppliers', 'We cooperate with Fasa, Terros and other brands', '/', '', 'light', '', '', 'teaser_1.svg', '', 10, 1),
(8, 3, 'Help Center 24/7', 'Help Center 24/7', 'Help Center 24/7', 'We are ready to answer questions whenever it is convenient for you.', '/', '', 'light', '', '', 'teaser_2.svg', '', 9, 1),
(9, 3, '100% reliability', '100% reliability', '100% reliability', 'We provide documents, licenses and certificates', '/', '', 'light', '', '', 'teaser_3.svg', '', 8, 1),
(10, 3, 'Training', 'Training', 'Training', 'We care about your time, development and resources', '/', '', 'light', '', '', 'teaser_4.svg', '', 7, 1),
(11, 4, 'Automation of sales department', 'Automation of sales department', 'Automation of sales department', 'Automation', '', '', 'light', '', '', 'bt_5.jpg', '', 11, 1),
(12, 4, 'Interior design', 'Interior design', 'Interior design', 'Design', '/', '', 'light', '', '', 'bt_7.jpg', '', 12, 1),
(14, 4, 'Integrated automation', 'Integrated automation', 'Integrated automation', 'Automation', '/', '', 'light', '', '', 'bt_1.jpg', '', 14, 1),
(13, 4, 'Security systems', 'Security systems', 'Security systems', 'Engineering systems', '/', '', 'light', '', '', 'bt_6.jpg', '', 13, 1),
(15, 5, 'Security systems', 'Security systems', 'Security systems', 'Engineering systems', '/', '', 'light', '', '', 'bottom_banners.jpg', '', 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_blog`
--

DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NULL DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_blog`
--

INSERT INTO `t_blog` (`id`, `name`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `visible`, `date`, `last_modified`, `image`, `views`, `rate`) VALUES
(1, 'Lorem ipsum dolor', 'lorem-ipsum-dolor', 'Lorem ipsum dolor', 'Design, Interior, News', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2020-12-31 21:00:00', '2024-08-21 21:02:03', 'post_4.jpg', 0, 2),
(2, 'Consec tetadip scinelit', 'consec-tetadip-scinelit', 'Consec tetadip scinelit', 'Finance, Management, News', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-01 21:00:00', '2024-08-21 21:04:23', 'post_3.jpg', 6, 1),
(3, 'Proin tincidunt felis', 'proin-tincidunt-felis', 'Proin tincidunt felis', 'Sales, CRM, News', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 21:00:00', '2024-08-21 21:03:08', 'post_2.jpg', 2, 3),
(4, 'Etiam magna egestas', 'etiam-magna-egestas', 'Etiam magna egestas', 'Business, Motivation, News', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human h', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2023-11-18 21:00:00', '2024-08-21 21:05:35', 'post_1.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_callbacks`
--

DROP TABLE IF EXISTS `t_callbacks`;
CREATE TABLE `t_callbacks` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_callbacks`
--

INSERT INTO `t_callbacks` (`id`, `date`, `name`, `phone`, `message`, `processed`) VALUES
(1, '2021-05-22 02:11:42', 'John Smith', '+1(234) 567-89-01', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_comments`
--

DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('project','blog','article','review') COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` int(1) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_comments`
--

INSERT INTO `t_comments` (`id`, `date`, `ip`, `object_id`, `name`, `text`, `type`, `approved`, `parent_id`, `admin`, `rate`, `rating`) VALUES
(3, '2022-08-26 03:03:00', '127.0.0.1', 0, 'Alex Smith', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 'review', 1, 0, 0, 2, 3),
(4, '2022-08-26 03:05:00', '127.0.0.1', 0, 'Sophia T.', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid commodi.', 'review', 1, 0, 0, 2, 4),
(5, '2022-08-29 01:16:00', '127.0.0.1', 0, 'Admin', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'review', 1, 3, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `t_faq`
--

DROP TABLE IF EXISTS `t_faq`;
CREATE TABLE `t_faq` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_faq`
--

INSERT INTO `t_faq` (`id`, `name`, `answer`, `visible`, `position`, `last_modified`) VALUES
(4, 'First question', '<p>Answer to the first question.</p>', 1, 6, '2022-08-28 21:55:00'),
(5, 'What is another question?', '<p>The answer to the question can go here.</p>', 1, 5, '2022-08-28 21:55:00'),
(6, 'What is the next question?', '<p>The answer to this question can go here. This FAQ example can contain all the Q/A that is needed.</p>', 1, 4, '2024-08-18 20:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `t_feedbacks`
--

DROP TABLE IF EXISTS `t_feedbacks`;
CREATE TABLE `t_feedbacks` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_feedbacks`
--

INSERT INTO `t_feedbacks` (`id`, `date`, `ip`, `name`, `email`, `message`, `processed`) VALUES
(1, '2021-05-22 02:08:45', '127.0.0.1', 'David Jones', 'test@gmail.com', 'How to get to you?', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_files`
--

DROP TABLE IF EXISTS `t_files`;
CREATE TABLE `t_files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` enum('project','blog','page') COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_images_project`
--

DROP TABLE IF EXISTS `t_images_project`;
CREATE TABLE `t_images_project` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_images_project`
--

INSERT INTO `t_images_project` (`id`, `project_id`, `filename`, `name`, `position`) VALUES
(9, 6, 'cbb06d98e902a13963583a33a97b0fd8.jpg', '', 0),
(7, 6, '4a059d8a702b12fbd8e9aef2ffb8b24f.jpg', '', 1),
(10, 6, '1694cd00473ee77bf5d4a9007f14020a.jpg', '', 2),
(11, 6, '292243489234c2a1453c24d52976bf93.jpg', '', 3),
(15, 7, '4340a1736f1bfa9ec7bea901ff836f62_1.jpg', '', 1),
(20, 8, '231ae378b3322d6d30e251f882c86ee3.jpg', '', 1),
(18, 7, '5285403a2b4cb0acdc28c533560905d2.jpg', '', 3),
(16, 7, 'dce57b9019ddd1abbbf3d8de2ab54e1a.jpg', '', 2),
(17, 7, '2e6298c6bfffc15d1bc601eb8c41f8e9.jpg', '', 0),
(19, 7, 'ebb4edd571d07fa67c31e763601d436f.jpg', '', 4),
(21, 8, '942f472a15f74265e7a5f15a3ca569ec.jpg', '', 2),
(22, 8, '4ed3a83dbf94683c5d8fb15698d24fd3-1.jpg', '', 3),
(23, 8, '4412fd3dcd2a2157ee000177b9a7b185.jpg', '', 0),
(25, 9, '72a1894ac5a08dcdc713bf559e71757f6b62040beea8247095aae9a0b525bd46_1200_1200.jpeg', '', 0),
(24, 8, 'edbef440f13c0cdff3a1b6b1944c8305-3.jpg', '', 4),
(26, 9, 'ff1c8d55c74ffb3b6a227b7d5eec62b6cfa1d7736e8b40ef457aa46728035677_1200_1200.jpeg', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_languages`
--

DROP TABLE IF EXISTS `t_languages`;
CREATE TABLE `t_languages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_languages`
--

INSERT INTO `t_languages` (`id`, `name`, `label`, `enabled`, `position`) VALUES
(1, 'Russian', 'ru', 1, 3),
(2, 'English', 'en', 1, 1),
(3, 'Ukrainian', 'ua', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_articles`
--

DROP TABLE IF EXISTS `t_lang_articles`;
CREATE TABLE `t_lang_articles` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_articles`
--

INSERT INTO `t_lang_articles` (`lang_id`, `lang_label`, `article_id`, `name`, `author`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`) VALUES
(1, '', 1, 'Название демонстрационной статьи', 'Вебмастер', 'Название демонстрационной статьи', 'Статьи, Бизнес, Вебмастер', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 1, 'Consec tetadip scinelit', 'Webmaster', 'Consec tetadip scinelit', 'Articles, Business, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system\r\n', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(1, '', 2, 'Название демонстрационной статьи', 'Вебмастер', 'Название демонстрационной статьи', 'Статьи, Проекты, Вебмастер', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(3, '', 1, 'Назва демонстраційної статті', 'Вебмайстер', 'Назва демонстраційної статті', 'Статті, Бізнес, Вебмайстер', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. ', '<p>Заголовок&nbsp;демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(2, '', 2, 'Proin tincidunt felis', 'Webmaster', 'Proin tincidunt felis', 'Articles, Projects, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 2, 'Назва демонстраційної статті', 'Вебмайстер', 'Назва демонстраційної статті', 'Статті, Проекти, Вебмайстер', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p>Заголовок&nbsp;демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 3, 'Название демонстрационной статьи', 'Вебмастер', 'Название демонстрационной статьи', 'Статьи, Продажи, Вебмастер', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 3, 'Lorem ipsum dolor', 'Webmaster', 'Lorem ipsum dolor', 'Articles, Sales, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 3, 'Назва демонстраційної статті', 'Вебмайстер', 'Назва демонстраційної статті', 'Статті, Продажі, Вебмайстер', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. ', '<p>Заголовок&nbsp;демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(2, '', 4, 'Etiam magna egestas', 'Webmaster', 'Etiam magna egestas', 'Articles, Sales, Webmaster', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 4, 'Назва демонстраційної статті', 'Вебмайстер', 'Назва демонстраційної статті', 'Статті, Продажі, Вебмайстер', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. ', '<p>Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.&nbsp;</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 4, 'Название демонстрационной статьи', 'Вебмастер', 'Название демонстрационной статьи', 'Статьи, Продажи, Вебмастер', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_articles_categories`
--

DROP TABLE IF EXISTS `t_lang_articles_categories`;
CREATE TABLE `t_lang_articles_categories` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_h1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_articles_categories`
--

INSERT INTO `t_lang_articles_categories` (`lang_id`, `lang_label`, `article_category_id`, `name`, `name_h1`, `meta_title`, `meta_keywords`, `meta_description`, `description`) VALUES
(1, '', 1, 'Бизнес-советы', '', 'Бизнес-советы', 'Бизнес-советы', '', ''),
(2, '', 1, 'Business advice', '', 'Business advice', 'Business advice', '', ''),
(3, '', 1, 'Бізнес-поради', '', 'Бізнес-поради', 'Бізнес-поради', '', ''),
(1, '', 2, 'Управление проектами', '', 'Управление проектами', 'Управление проектами', '', ''),
(2, '', 2, 'Project management', '', 'Project management', 'Project management', '', ''),
(1, '', 3, 'Повышение продаж', '', 'Повышение продаж', 'Повышение продаж', '', ''),
(3, '', 2, 'Управління проектами', '', 'Управління проектами', 'Управління проектами', '', ''),
(2, '', 3, 'Increased sales', '', 'Increased sales', 'Increased sales', '', ''),
(3, '', 3, 'Підвищення продажів', '', 'Підвищення продажів', 'Підвищення продажів', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_banners_images`
--

DROP TABLE IF EXISTS `t_lang_banners_images`;
CREATE TABLE `t_lang_banners_images` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `button` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_banners_images`
--

INSERT INTO `t_lang_banners_images` (`lang_id`, `lang_label`, `banner_image_id`, `name`, `alt`, `title`, `description`, `url`, `button`) VALUES
(1, '', 1, 'Решения TurboSite', 'Решения TurboSite для вашего бизнеса', 'Решения TurboSite для вашего бизнеса', 'Для вашего бизнеса', '/', 'Начать'),
(2, '', 1, 'TurboSite Solutions', 'TurboSite Solutions For Your Business', 'TurboSite Solutions For Your Business', 'For Your Business', '/', 'Get Started'),
(3, '', 1, 'Рішення TurboSite ', 'Рішення TurboSite для вашого бізнесу', 'Рішення TurboSite для вашого бізнесу', 'Для вашого бізнесу', '/', 'Розпочати'),
(1, '', 2, 'Простые маркетинговые решения', 'Простые маркетинговые решения для вашего бизнеса', 'Простые маркетинговые решения для вашего бизнеса', 'Для вашего бизнеса', '/', 'Начать'),
(2, '', 2, 'Easy Marketing Solutions', 'Easy Marketing Solutions For Your Business', 'Easy Marketing Solutions For Your Business', 'For Your Business', '/', 'Get Started'),
(3, '', 2, 'Прості маркетингові рішення', 'Прості маркетингові рішення для вашого бізнесу', 'Прості маркетингові рішення для вашого бізнесу', 'Для вашого бізнесу', '/', 'Розпочати'),
(1, '', 3, 'Мы предоставляем решения', 'Мы предоставляем решения для вашего бизнеса', 'Мы предоставляем решения для вашего бизнеса', 'Для вашего бизнеса', '/', 'Начать'),
(2, '', 3, 'We Provide Solutions', 'We provide solutions for your business', 'We provide solutions for your business', 'For Your Business', '/', 'Get Started'),
(3, '', 3, 'Ми надаємо рішення', 'Ми надаємо рішення для вашого бізнесу', 'Ми надаємо рішення для вашого бізнесу', 'Для вашого бізнесу', '/', 'Розпочати'),
(2, '', 4, 'We help develop<br>online business', 'We help develop online business', 'We help develop online business', 'We tell you how complex automation affects sales, department reporting and enterprise efficiency. We analyze typical questions and give recommendations. Subscribe to the newsletter to stay informed!												', '', 'Read more'),
(3, '', 4, 'Допомагаємо розвивати<br>онлайн-бізнес', 'Допомагаємо розвивати онлайн-бізнес', 'Допомагаємо розвивати онлайн-бізнес', 'Розповідаємо, як комплексна автоматизація впливає на продаж, звітність відділів та ефективність підприємства. Розбираємо типові питання та даємо рекомендації. Підписуйтесь на розсилку, щоб знати!', '', 'Детальніше'),
(1, '', 4, 'Помогаем развивать<br>онлайн-бизнес', 'Помогаем развивать онлайн-бизнес', 'Помогаем развивать онлайн-бизнес', 'Рассказываем, как комплексная автоматизация влияет на продажи, отчетность отделов и эффективность предприятия. Разбираем типичные вопросы и даем рекомендации. Подписывайтесь на рассылку, чтобы быть в курсе!', '', 'Подробнее'),
(2, '', 5, 'Financial audit of a large company', 'Financial audit of a large company', 'Financial audit of a large company', 'We will conduct an audit of your enterprise in express mode. <br>\r\nWe will build a management accounting system for making key decisions. <br>\r\nWe will put your finances in order!', '', 'Read more'),
(3, '', 5, 'Фінансовий аудит великої компанії', 'Фінансовий аудит великої компанії', 'Фінансовий аудит великої компанії', 'Проведемо аудит вашого підприємства в експрес-режимі. <br>\r\nПобудуємо систему управлінського обліку прийняття ключових рішень. <br>\r\nНаведемо лад у фінансах!', '', 'Детальніше'),
(1, '', 5, 'Финансовый аудит крупной компании', 'Финансовый аудит крупной компании', 'Финансовый аудит крупной компании', 'Проведем аудит вашего предприятия в экспресс-режиме. <br>\r\nПостроим систему управленческого учета для принятия ключевых решений. <br>\r\nНаведем порядок в финансах!', '', 'Подробнее'),
(2, '', 6, 'We design<br>interiors of premises', 'We design interiors of premises', 'We design interiors of premises', '500+ completed projects for home, office and restaurant', '', 'Read more'),
(3, '', 6, 'Проектуємо<br>інтер\'єр приміщень', 'Проектуємо інтер\'єр приміщень', 'Проектуємо інтер\'єр приміщень', '500+ реалізованих об\'єктів для дому, офісу та ресторану', '', 'Детальніше'),
(1, '', 6, 'Проектируем<br>интерьер помещений', 'Проектируем интерьер помещений', 'Проектируем интерьер помещений', '500+ реализованных объектов для дома, офиса и ресторана', '', 'Подробнее'),
(2, '', 7, '500+ suppliers', '500+ suppliers', '500+ suppliers', 'We cooperate with Fasa, Terros and other brands', '', ''),
(3, '', 7, '500+ постачальників', '500+ постачальників', '500+ постачальників', 'Співпрацюємо з Fasa, Terros та іншими брендами', '', ''),
(1, '', 7, '500+ поставщиков', '500+ поставщиков', '500+ поставщиков', 'Сотрудничаем с Fasa, Terros и другими брендами', '', ''),
(2, '', 8, 'Help Center 24/7', 'Help Center 24/7', 'Help Center 24/7', 'We are ready to answer questions whenever it is convenient for you.', '', ''),
(3, '', 8, 'Довідковий центр 24/7', 'Довідковий центр 24/7', 'Довідковий центр 24/7', 'Готові відповідати на запитання, коли вам зручно', '', ''),
(1, '', 8, 'Справочный центр 24/7', 'Справочный центр 24/7', 'Справочный центр 24/7', 'Готовы отвечать на вопросы, когда удобно вам', '', ''),
(2, '', 9, '100% reliability', '100% reliability', '100% reliability', 'We provide documents, licenses and certificates', '', ''),
(3, '', 9, '100% надійність', '100% надійність', '100% надійність', 'Надаємо документи, ліцензії та сертифікати', '', ''),
(1, '', 9, '100% надежность', '100% надежность', '100% надежность', 'Предоставляем документы, лицензии и сертификаты', '', ''),
(2, '', 10, 'Training', 'Training', 'Training', 'We care about your time, development and resources', '', ''),
(3, '', 10, 'Навчання персоналу', 'Навчання персоналу', 'Навчання персоналу', 'Дбаємо про ваш час, розвиток та ресурси', '', ''),
(1, '', 10, 'Обучение персонала', 'Обучение персонала', 'Обучение персонала', 'Заботимся о вашем времени, развитии и ресурсах', '', ''),
(2, '', 11, 'Automation of sales department', 'Automation of sales department', 'Automation of sales department', 'Automation', '', ''),
(3, '', 11, 'Автоматизація відділу продажу', 'Автоматизація відділу продажу', 'Автоматизація відділу продажу', 'Автоматизація', '', ''),
(1, '', 11, 'Автоматизация отдела продаж', 'Автоматизация отдела продаж', 'Автоматизация отдела продаж', 'Автоматизация', '', ''),
(2, '', 12, 'Interior design', 'Interior design', 'Interior design', 'Design', '', ''),
(2, '', 14, 'Integrated automation', 'Integrated automation', 'Integrated automation', 'Automation', '', ''),
(3, '', 12, 'Дизайн інтер\'єрів', 'Дизайн інтер\'єрів', 'Дизайн інтер\'єрів', 'Проектування', '', ''),
(1, '', 12, 'Комплексная автоматизация', 'Комплексная автоматизация', 'Комплексная автоматизация', 'Автоматизация', '', ''),
(2, '', 13, 'Security systems', 'Security systems', 'Security systems', 'Engineering systems', '', ''),
(3, '', 13, 'Охоронні системи', 'Охоронні системи', 'Охоронні системи', 'Інженерні системи', '', ''),
(1, '', 13, 'Охранные системы', 'Охранные системы', 'Охранные системы', 'Инженерные системы', '', ''),
(3, '', 14, 'Комплексна автоматизація', 'Комплексна автоматизація', 'Комплексна автоматизація', 'Автоматизація', '', ''),
(1, '', 14, 'Комплексная автоматизация', 'Комплексная автоматизация', 'Комплексная автоматизация', 'Автоматизация', '', ''),
(2, '', 15, 'Security systems', 'Security systems', 'Security systems', 'Engineering systems', '', ''),
(3, '', 15, 'Охоронні системи', 'Охоронні системи', 'Охоронні системи', 'Інженерні системи', '', ''),
(1, '', 15, 'Охранные системы', 'Охранные системы', 'Охранные системы', 'Инженерные системы', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_blog`
--

DROP TABLE IF EXISTS `t_lang_blog`;
CREATE TABLE `t_lang_blog` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_blog`
--

INSERT INTO `t_lang_blog` (`lang_id`, `lang_label`, `blog_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`) VALUES
(1, '', 1, 'Название  демонстрационной статьи', 'Название  демонстрационной статьи', 'Дизайн, Интерьер, Новости', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 1, 'Lorem ipsum dolor', 'Lorem ipsum dolor', 'Design, Interior, News', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 1, 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Дизайн, Інтер\'єр, Новини', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p>Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 2, 'Название демонстрационной статьи', 'Название демонстрационной статьи', 'Финансы, Управление, Новости', 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 2, 'Consec tetadip scinelit', 'Consec tetadip scinelit', 'Finance, Management, News', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 2, 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Фінанси, Управління, Новини', 'Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. ', '<p>Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 3, 'Название демонстрационной статьи', 'Название демонстрационной статьи', 'Продажи, CRM, Новости', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 3, 'Proin tincidunt felis', 'Proin tincidunt felis', 'Sales, CRM, News', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 3, 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Продажі, CRM, Новини', 'Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p>Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum &amp; nbsp; - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(2, '', 4, 'Etiam magna egestas', 'Etiam magna egestas', 'Business, Motivation, News', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human h', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;undertakes laborious&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 4, 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Бізнес, Мотивація, Новини', 'Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p>Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків.</p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p>Lorem Ipsum &amp; nbsp; - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 4, 'Название демонстрационной статьи', 'Название демонстрационной статьи', 'Бизнес, Мотивация, Новости', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов.</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p>Lorem Ipsum&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>');

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_faq`
--

DROP TABLE IF EXISTS `t_lang_faq`;
CREATE TABLE `t_lang_faq` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_faq`
--

INSERT INTO `t_lang_faq` (`lang_id`, `lang_label`, `faq_id`, `name`, `answer`) VALUES
(2, '', 4, 'First question', '<p>Answer to the first question.</p>'),
(3, '', 4, 'Перше питання', '<p>Відповідь на перше питання.</p>'),
(1, '', 4, 'Первый вопрос', '<p>Ответ на первый вопрос.</p>'),
(2, '', 5, 'What is another question?', '<p>The answer to the question can go here.</p>'),
(3, '', 5, 'Яке ще питання?', '<p>Відповідь на запитання можна знайти тут.</p>'),
(1, '', 5, 'Какой еще вопрос?', '<p>Ответ на вопрос может быть здесь.</p>'),
(2, '', 6, 'What is the next question?', '<p>The answer to this question can go here. This FAQ example can contain all the Q/A that is needed.</p>'),
(3, '', 6, 'Яке наступне питання?', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\" data-number-of-phrases=\"2\"><span class=\"Q4iAWc\">Відповідь на це запитання можна знайти тут.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"en\" data-phrase-index=\"1\" data-number-of-phrases=\"2\"><span class=\"Q4iAWc\">Цей приклад поширених запитань може містити всі необхідні запитання та відповіді.</span></span></p>'),
(1, '', 6, 'Какой следующий вопрос?', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"ru\" data-language-to-translate-into=\"en\" data-phrase-index=\"0\" data-number-of-phrases=\"2\"><span class=\"Q4iAWc\">Ответ на этот вопрос можно найти здесь.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"ru\" data-language-to-translate-into=\"en\" data-phrase-index=\"1\" data-number-of-phrases=\"2\"><span class=\"Q4iAWc\">Этот пример часто задаваемых вопросов может содержать все необходимые вопросы и ответы.</span></span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_files`
--

DROP TABLE IF EXISTS `t_lang_files`;
CREATE TABLE `t_lang_files` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_pages`
--

DROP TABLE IF EXISTS `t_lang_pages`;
CREATE TABLE `t_lang_pages` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `header` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_pages`
--

INSERT INTO `t_lang_pages` (`lang_id`, `lang_label`, `page_id`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `header`) VALUES
(1, '', 1, 'Turbo Site', 'Turbo Site', 'Turbo Site - это готовое решение, которое позволит вам создать свой мультиязычный, простой и адаптивный сайт на  TurboCMS  за 24 часа.', 'Turbo Site', '<p>Turbo Site - это готовое решение, которое позволит вам создать свой мультиязычный, простой и адаптивный сайт на TurboCMS за 24 часа. Данное решение не содержит ничего лишнего, но при этом тщательно проработано до мелочей. Готовый сайт-визитка отлично подойдет для компаний, которые предоставляют услуги в различных сегментах.&nbsp;</p>', 'Главная'),
(2, '', 1, 'Turbo Site', 'Turbo Site', 'Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on  TurboCMS  in 24 hours. ', 'Turbo Site', '<p>Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on TurboCMS in 24 hours. This solution does not contain anything superfluous, but at the same time it is carefully worked out to the smallest detail. A ready-made business card site is perfect for companies that provide services in various segments.</p>', 'Home'),
(3, '', 1, 'Turbo Site', 'Turbo Site', 'Turbo Site - це готове рішення, яке дозволить вам створити свій багатомовний, простий і адаптивний сайт на Turbo CMS  за 24 години. ', 'Turbo Site', '<p>Turbo Site - це готове рішення, яке дозволить вам створити свій багатомовний, простий і адаптивний сайт на TurboCMS за 24 години. Дане рішення не містить нічого зайвого, але при цьому ретельно опрацьовано до дрібниць. Готовий сайт-візитка відмінно підійде для компаній, які надають послуги в різних сегментах.</p>', 'Головна'),
(1, '', 3, '404', 'Страница не найдена', 'Страница не найдена', 'Страница не найдена', '<p>Страница не найдена</p>', 'Страница не найдена'),
(2, '', 3, '404', 'Page not found', 'Page not found', 'Page not found', '<p>Page not found</p>', 'Page not found'),
(3, '', 3, '404', 'Сторінка не знайдена', 'Сторінка не знайдена', 'Сторінка не знайдена', '<p>Сторінка не знайдена</p>', 'Сторінка не знайдена'),
(1, '', 4, 'Карта сайта', 'Карта сайта', 'Карта сайта', 'Карта сайта', '', 'Карта сайта'),
(2, '', 4, 'Sitemap', 'Sitemap', 'Sitemap', 'Sitemap', '', 'Sitemap'),
(3, '', 4, 'Карта сайту', 'Карта сайту', 'Карта сайту', 'Карта сайту', '', 'Карта сайту'),
(1, '', 13, 'Блог', 'Блог', '', 'Блог', '', 'Блог'),
(2, '', 13, 'Blog', 'Blog', '', 'Blog', '', 'Blog'),
(3, '', 13, 'Блог', 'Блог', '', 'Блог', '', 'Блог'),
(1, '', 14, 'Контакты', 'Контакты', 'Контакты', 'Контакты', '', 'Контакты'),
(2, '', 39, 'Business advice', 'Business advice', '', 'Business advice', '', 'Business advice'),
(3, '', 39, 'Бізнес-поради', 'Бізнес-поради', '', 'Бізнес-поради', '', 'Бізнес-поради'),
(1, '', 39, 'Бизнес-советы', 'Бизнес-советы', '', 'Бизнес-советы', '', 'Бизнес-советы'),
(2, '', 40, 'Project management', 'Project management', '', 'Project management', '', 'Project management'),
(3, '', 40, 'Управління проектами', 'Управління проектами', '', 'Управління проектами', '', 'Управління проектами'),
(1, '', 40, 'Управление проектами', 'Управление проектами', '', 'Управление проектами', '', 'Управление проектами'),
(2, '', 14, 'Contacts', 'Contacts', 'Contacts', 'Contacts', '', 'Contacts'),
(3, '', 42, 'Дизайн інтер\'єрів', 'Дизайн інтер\'єрів', '', 'Дизайн інтер\'єрів', '', 'Дизайн інтер\'єрів'),
(1, '', 42, 'Дизайн интерьеров', 'Дизайн интерьеров', '', 'Дизайн интерьеров', '', 'Дизайн интерьеров'),
(3, '', 14, 'Контакти', 'Контакти', 'Контакти', 'Контакти', '', 'Контакти'),
(2, '', 41, 'Increased sales', 'Increased sales', '', 'Increased sales', '', 'Increased sales'),
(3, '', 41, 'Підвищення продажів', 'Підвищення продажів', '', 'Підвищення продажів', '', 'Підвищення продажів'),
(1, '', 41, 'Повышение продаж', 'Повышение продаж', '', 'Повышение продаж', '', 'Повышение продаж'),
(2, '', 42, 'Interior design', 'Interior design', '', 'Interior design', '', 'Interior design'),
(1, '', 16, 'Статьи', 'Статьи', '', 'Статьи', '', 'Статьи'),
(2, '', 16, 'Articles', 'Articles', '', 'Articles', '', 'Articles'),
(3, '', 16, 'Статті', 'Статті', '', 'Статті', '', 'Статті'),
(1, '', 18, 'Поиск', 'Поиск', '', 'Поиск', '', 'Поиск'),
(2, '', 18, 'Search', 'Search', '', 'Search', '', 'Search'),
(3, '', 18, 'Пошук', 'Пошук', '', 'Пошук', '', 'Пошук'),
(2, '', 27, 'Projects', 'Projects', '', 'Projects', '', 'Projects'),
(3, '', 27, 'Проекти', 'Проекти', '', 'Проекти', '', 'Проекти'),
(1, '', 27, 'Проекты', 'Проекты', '', 'Проекты', '', 'Проекты'),
(1, '', 25, 'FAQ', 'FAQ', 'FAQ', 'FAQ', '', 'FAQ'),
(2, '', 25, 'FAQ', 'FAQ', 'FAQ', 'FAQ', '', 'FAQ'),
(3, '', 25, 'FAQ', 'FAQ', 'FAQ', 'FAQ', '', 'FAQ'),
(1, '', 26, 'Отзывы', 'Отзывы', 'Отзывы', 'Отзывы', '<p>Мы благодарны нашим клиентам за оказанное доверие и положительные отзывы о сотрудничестве с нашей компанией. Если хотите, можем помочь и вам: предложим подходящие решения и необходимые услуги. Просто свяжитесь с нами!</p>', 'Отзывы'),
(2, '', 26, 'Reviews', 'Reviews', 'Reviews', 'Reviews', '<p>We are grateful to our clients for their trust and positive feedback on cooperation with our company. If you want, we can help you too: we will offer suitable solutions and the necessary services. Just contact us!</p>', 'Reviews'),
(3, '', 26, 'Відгуки', 'Відгуки', 'Відгуки', 'Відгуки', '<p>Ми вдячні нашим клієнтам за надану довіру та позитивні відгуки про співпрацю з нашою компанією. Якщо хочете, можемо допомогти і вам: запропонуємо відповідні рішення та необхідні послуги. Просто зв\'яжіться з нами!</p>', 'Відгуки'),
(2, '', 28, 'Licenses', 'Licenses', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.', 'Licenses', '<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee.</p>\r\n<blockquote>\r\n<h5>&ldquo; But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. &rdquo;</h5>\r\n</blockquote>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.But I must explain to you how all this mistaken idea of denouncing pleasure and praising.</p>', 'Licenses'),
(3, '', 28, 'Конфіденційність', 'Конфіденційність', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.', 'Конфіденційність', '<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee.</p>\r\n<blockquote>\r\n<h5>&ldquo; But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. &rdquo;</h5>\r\n</blockquote>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.But I must explain to you how all this mistaken idea of denouncing pleasure and praising.</p>', 'Конфіденційність'),
(1, '', 28, 'Конфиденциальность', 'Конфиденциальность', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.', 'Конфиденциальность', '<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee.</p>\r\n<blockquote>\r\n<h5>&ldquo; But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. &rdquo;</h5>\r\n</blockquote>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.But I must explain to you how all this mistaken idea of denouncing pleasure and praising.</p>', 'Конфиденциальность'),
(2, '', 29, 'Offer', 'Offer', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.', 'Offer', '<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee.</p>', 'Offer'),
(3, '', 29, 'Оферта', 'Оферта', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.', 'Оферта', '<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee.</p>', 'Оферта'),
(1, '', 29, 'Оферта', 'Оферта', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.', 'Оферта', '<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee.</p>', 'Оферта'),
(2, '', 30, 'Automation', 'Automation', 'Trade automation is the process of implementing special equipment or software into an organization. Targeted automation optimizes business processes, increases sales efficiency and prevents human errors.', 'Automation', '<h2>Business automation&nbsp;</h2>\r\n<p>Trade automation is the process of implementing special equipment or software into an organization. Targeted automation optimizes business processes, increases sales efficiency and prevents human errors.</p>\r\n<p>The company has already automated 126 enterprises. We help achieve financial success and the trust of your clients using modern optimization methods. Business automation will help structure work and make only the right and effective decisions for the company.</p>', 'Automation'),
(3, '', 30, 'Автоматизація', 'Автоматизація', 'Автоматизація торгівлі &ndash; це процес впровадження в організацію спеціального обладнання чи програмного забезпечення. ', 'Автоматизація', '<h2>Автоматизація бізнесу</h2>\r\n<p>Автоматизація торгівлі &ndash; це процес впровадження в організацію спеціального обладнання чи програмного забезпечення. Спрямована автоматизація оптимізує бізнес-процеси, збільшує ефективність продажу та не допускає виникнення помилок через людський фактор.</p>\r\n<p>Компанія вже автоматизувала 126 підприємств. Ми допомагаємо досягти фінансового успіху та довіри ваших клієнтів за допомогою сучасних методів оптимізації. Автоматизація бізнесу допоможе структурувати роботу та приймати лише правильні та ефективні для компанії рішення.</p>', 'Автоматизація'),
(1, '', 30, 'Автоматизация', 'Автоматизация', 'Автоматизация торговли &mdash; это процесс внедрения в организацию специального оборудования или программного обеспечения. ', 'Автоматизация', '<h2>Автоматизация бизнеса</h2>\r\n<p>Автоматизация торговли &mdash; это процесс внедрения в организацию специального оборудования или программного обеспечения. Направленная автоматизация оптимизирует бизнес-процессы, увеличивает эффективность продаж и не допускает возникновения ошибок из-за человеческого фактора.</p>\r\n<p>Компания уже автоматизировала 126 предприятий. Мы помогаем добиться финансового успеха и доверия ваших клиентов с помощью современных методов оптимизации. Автоматизация бизнеса поможет структурировать работу и принимать только правильные и эффективные для компании решения.</p>', 'Автоматизация'),
(2, '', 31, 'Engineering systems', 'Engineering systems', 'The company successfully implements projects in the field of engineering systems of any complexity and scale. Our clients receive a high level of quality due to a competent approach to the design and installation of engineering systems.', 'Engineering systems', '<h2>Design and installation of engineering systems</h2>\r\n<p>The company successfully implements projects in the field of engineering systems of any complexity and scale. Our clients receive a high level of quality due to a competent approach to the design and installation of engineering systems. At each stage of the project, the company\'s specialists provide technical support and help with the preparation of documentation.</p>\r\n<h3>Why do people recommend us?</h3>\r\n<ul>\r\n<li>We do it well. Only trusted manufacturers and suppliers to extend the service life of the system.</li>\r\n<li>We speak honestly. We document all agreements and comply with them. We work honestly with supervisory authorities.</li>\r\n<li>We work professionally. We plan the financial and technical components of the project down to the smallest detail. We control the process from the date of creation to the delivery of the project.</li>\r\n</ul>\r\n<p>After the completion of the project, we do not forget about it, but continue servicing and monitor its condition. This way you will be sure of the durability of the system and will be able to consult with our employees at any time. Our company also has a warehouse of spare parts for any engineering system, so if necessary, we will quickly fix the problem or upgrade your project.</p>', 'Engineering systems'),
(3, '', 31, 'Інженерні системи', 'Інженерні системи', 'Компанія успішно втілює в життя проекти у сфері інженерних систем будь-яких складнощів та масштабів. Наші клієнти одержують високий рівень якості за рахунок грамотного підходу до проектування та монтажу інженерних систем.', 'Інженерні системи', '<h2>Проектування та монтаж інженерних систем</h2>\r\n<p>Компанія успішно втілює в життя проекти у сфері інженерних систем будь-яких складнощів та масштабів. Наші клієнти одержують високий рівень якості за рахунок грамотного підходу до проектування та монтажу інженерних систем. На кожному етапі проекту фахівці компанії здійснюють технічну підтримку та допомагають з оформленням документації.</p>\r\n<h3>Чому нас рекомендують?</h3>\r\n<ul>\r\n<li>Робимо якісно. Тільки перевірені виробники та постачальники, щоб продовжити термін служби системи.</li>\r\n<li>Чесно говоримо. Ми документуємо всі домовленості та дотримуємося їх. Чесно працюємо із наглядовими органами.</li>\r\n<li>Працюємо професійно. Плануємо фінансову та технічну складові проекту до найменших дрібниць. Контролюємо процес від дати створення до здачі проекту.</li>\r\n</ul>\r\n<p>Після завершення проекту ми не забуваємо про нього, а продовжуємо сервісне обслуговування та контролюємо його стан. Так ви будете впевнені у довговічності системи та зможете проконсультуватися з нашими співробітниками у будь-який час. Також у нашої компанії є склад запчастин для будь-якої інженерної системи, тому за потреби ми швидко усунемо неполадку або модернізуємо ваш проект.</p>', 'Інженерні системи'),
(1, '', 31, 'Инженерные системы', 'Инженерные системы', 'Компания успешно воплощает в жизнь проекты в сфере инженерных систем любых сложностей и масштабов. Наши клиенты получают высокий уровень качества за счет грамотного подхода к проектированию и монтажу инженерных систем. ', 'Инженерные системы', '<h2>Проектирование и монтаж инженерных систем</h2>\r\n<p>Компания успешно воплощает в жизнь проекты в сфере инженерных систем любых сложностей и масштабов. Наши клиенты получают высокий уровень качества за счет грамотного подхода к проектированию и монтажу инженерных систем. На каждом этапе проекта специалисты компании осуществляют техническую поддержку и помогают с оформлением документации.</p>\r\n<h3>Почему нас рекомендуют?</h3>\r\n<ul>\r\n<li>Делаем качественно. Только проверенные производители и поставщики, чтобы продлить срок службы системы.</li>\r\n<li>Говорим честно. Мы документируем все договоренности и соблюдаем их. Честно работаем с надзорными органами.</li>\r\n<li>Работаем профессионально. Планируем финансовую и техническую составляющие проекта до самых мелочей. Контролируем процесс с даты создания до сдачи проекта.</li>\r\n</ul>\r\n<p>После завершения проекта мы не забываем о нем, а продолжаем сервисное обслуживание и контролируем его состояние. Так вы будете уверены в долговечности системы и сможете проконсультироваться с нашими сотрудниками в любое время. Также у нашей компании есть склад запчастей для любой инженерной системы, поэтому при необходимости мы быстро устраним неполадку или модернизируем ваш проект.</p>', 'Инженерные системы'),
(2, '', 32, 'Design', 'Design', 'Design is the basis for a positive result. The resulting project becomes a holistic structure of models, properties or characteristics of one system.', 'Design', '<h2>System design</h2>\r\n<p>Design is the basis for a positive result. The resulting project becomes a holistic structure of models, properties or characteristics of one system. When designing, the goals and objectives of the project are set, risks are assessed and limitations are taken into account. Our company has been engaged in design since 2008. We offer services for the design of interior designs, utility networks and electrical engineering.</p>\r\n<h3>Project activities include:</h3>\r\n<ul>\r\n<li>project development;</li>\r\n<li>justification, approval, project assessment;</li>\r\n<li>project implementation.</li>\r\n</ul>', 'Design'),
(3, '', 32, 'Проектування', 'Проектування', 'Проектування &mdash; основа позитивного результату. Проект, що вийшов, стає цілісною структурою моделей, властивостей або характеристик однієї системи.', 'Проектування', '<h2>Проектування систем</h2>\r\n<p>Проектування &mdash; основа позитивного результату. Проект, що вийшов, стає цілісною структурою моделей, властивостей або характеристик однієї системи. При проектуванні ставляться цілі та завдання проекту, оцінюються ризики та беруться до уваги обмеження. Наша компанія займається проектуванням з 2008 року. Пропонуємо послуги з проектування дизайнів інтер\'єрів, інженерних мереж та електротехнічного спрямування.</p>\r\n<h3>Проектна діяльність включає:</h3>\r\n<ul>\r\n<li>розробку проекту;</li>\r\n<li>обґрунтування, погодження, оцінку проекту;</li>\r\n<li>реалізацію проекту.</li>\r\n</ul>', 'Проектування'),
(1, '', 32, 'Проектирование', 'Проектирование', 'Проектирование &mdash; основа положительного результата. Получившийся проект становится целостной структурой моделей, свойств или характеристик одной системы.', 'Проектирование', '<h2>Проектирование систем</h2>\r\n<p>Проектирование &mdash; основа положительного результата. Получившийся проект становится целостной структурой моделей, свойств или характеристик одной системы. При проектировании ставятся цели и задачи проекта, оцениваются риски и принимаются во внимание ограничения. Наша компания занимается проектированием с 2008 года. Предлагаем услуги по проектированию дизайнов интерьеров, инженерных сетей и электротехнического направления.</p>\r\n<h3>Проектная деятельность включает в себя:</h3>\r\n<ul>\r\n<li>разработку проекта;</li>\r\n<li>обоснование, согласование, оценку проекта;</li>\r\n<li>реализацию проекта.</li>\r\n</ul>', 'Проектирование'),
(2, '', 33, 'About company', 'About company', 'A company that installs security, automation and comfortable living systems. Since 2009, we have been providing maintenance and upgrading of any engineering systems.', 'About company', '<p><img class=\"img-responsive rounded-x img-fluid\" src=\"../files/uploads/company-page.jpg\" alt=\"\"></p>\r\n<p>A company that installs security, automation and comfortable living systems. Since 2009, we have been providing maintenance and upgrading of any engineering systems.</p>\r\n<h3>How can we help you</h3>\r\n<ul>\r\n<li><strong>We will ensure your safety.</strong>&nbsp;We will analyze the facility and install the best security system. We will offer qualified video surveillance operators. We will develop an individual access control system.</li>\r\n<li><strong>We will automate processes.</strong>&nbsp;We will improve your business processes using a CRM system and IP telephony. We will train your staff and provide access to updates.</li>\r\n<li><strong>We will make your home beautiful.</strong>&nbsp;We will consult on materials for finishing the facade. We will lay reliable tiles. We will design a terrace for summer pastime.</li>\r\n</ul>\r\n<p>Our company employs 246 qualified engineers ready to help you at any time. We carefully analyze the premises and the surrounding area before starting work. Our communication system, built over 8 years of communication with clients, allows us to achieve excellent joint results.</p>\r\n<p>Our portfolio includes&nbsp;<a href=\"projects/\">projects</a>&nbsp;or large industrial enterprises and small private houses. We undertake projects of any complexity and treat all our clients with equal responsibility.</p>\r\n<h3>What has already been done</h3>\r\n<ul>\r\n<li>Installed 183 video surveillance systems.</li>\r\n<li>In 1 month, we developed an access control system at the Gladiator stadium.</li>\r\n</ul>\r\n<p>We know how to do better. Many years of experience and professionalism of our employees allow us to occupy leading positions in the service sector. Order from us - we will do it efficiently and in a short time.</p>', 'Company'),
(3, '', 33, 'Про компанію', 'Про компанію', 'Компанія, яка займається встановленням систем безпеки, автоматизації та забезпечення комфортної життєдіяльності. З 2009 року ми займаємося сервісним обслуговуванням та модернізацією будь-яких інженерних систем.', 'Про компанію', '<p><img class=\"img-responsive rounded-x img-fluid\" src=\"../files/uploads/company-page.jpg\" alt=\"\"></p>\r\n<p>Компанія, яка займається встановленням систем безпеки, автоматизації та забезпечення комфортної життєдіяльності. З 2009 року ми займаємося сервісним обслуговуванням та модернізацією будь-яких інженерних систем.</p>\r\n<h3>Чим ми можемо бути вам корисні</h3>\r\n<ul>\r\n<li><strong>Забезпечимо вашу безпеку.</strong>&nbsp;Проаналізуємо об\'єкт та встановимо найкращу систему охорони. Запропонуємо кваліфікованих операторів відеоспостереження. Розробимо індивідуальну систему контролю доступу.</li>\r\n<li><strong>Автоматизуємо процеси.</strong>&nbsp;Удосконалимо ваші бізнес-процеси за допомогою CRM-системи та IP-телефонії. Навчимо персонал і надамо доступ до оновлень.</li>\r\n<li><strong>Зробимо ваше житло красивим.</strong>&nbsp;Проконсультуємо за матеріалами для оздоблення фасаду. Покладемо надійну черепицю. Оформимо терасу для літнього проведення часу.</li>\r\n</ul>\r\n<p>У нашій компанії працює 246 кваліфікованих інженерів, які готові допомогти вам у будь-який момент. Ми ретельно аналізуємо приміщення та прилеглу територію перед початком робіт. Наша система комунікації, побудована за 8 років спілкування з клієнтами, дозволяє досягти відмінного спільного результату.</p>\r\n<p>У нашому портфоліо є&nbsp;<a href=\"projects/\">проекты</a>&nbsp;для великих промислових підприємств і маленьких приватних будинків. Беремося за проекти будь-якої складності та однаково відповідально ставимося до всіх наших клієнтів.</p>\r\n<h3>Що вже зроблено</h3>\r\n<ul>\r\n<li>Встановили 183 системи відеоспостереження.</li>\r\n<li>За 1 місяць розробили систему контролю доступу на стадіоні &laquo;Гладіатор&raquo;.</li>\r\n</ul>\r\n<p>Ми знаємо, як зробити краще. Багаторічний досвід роботи та професіоналізм співробітників дозволяють нам займати лідируючі позиції у сфері послуг. Замовляйте у нас &mdash; зробимо якісно та за короткий термін.</p>', 'Компанія'),
(1, '', 33, 'О компании', 'О компании', 'Компания, которая занимается установкой систем безопасности, автоматизации и обеспечения комфортной жизнедеятельности. С 2009 года мы занимаемся сервисным обслуживанием и модернизацией любых инженерных систем.', 'О компании', '<p><img class=\"img-responsive rounded-x img-fluid\" src=\"../files/uploads/company-page.jpg\" alt=\"\"></p>\r\n<p>Компания, которая занимается установкой систем безопасности, автоматизации и обеспечения комфортной жизнедеятельности. С 2009 года мы занимаемся сервисным обслуживанием и модернизацией любых инженерных систем.</p>\r\n<h3>Чем мы можем быть вам полезны</h3>\r\n<ul>\r\n<li><strong>Обеспечим вашу безопасность.</strong>&nbsp;Проанализируем объект и установим лучшую систему охраны. Предложим квалифицированных операторов видеонаблюдения. Разработаем индивидуальную систему контроля доступа.</li>\r\n<li><strong>Автоматизируем процессы.</strong>&nbsp;Усовершенствуем ваши бизнес-процессы с помощью CRM-системы и IP-телефонии. Обучим персонал и предоставим доступ к обновлениям.</li>\r\n<li><strong>Сделаем ваше жилье красивым.</strong>&nbsp;Проконсультируем по материалам для отделки фасада. Положим надежную черепицу. Оформим террасу для летнего времяпрепровождения.</li>\r\n</ul>\r\n<p>В нашей компании работает 246 квалифицированных инженеров, готовых помочь вам в любой момент. Мы тщательно анализируем помещение и близлежащую территорию перед началом работ. Наша система коммуникации, выстроенная за 8 лет общения с клиентами, позволяет достичь отличного совместного результата.</p>\r\n<p>В нашем портфолио есть&nbsp;<a href=\"projects/\">проекты</a>&nbsp;для крупных промышленных предприятий и маленьких частных домов. Беремся за проекты любой сложности и одинаково ответственно относимся ко всем нашим клиентам.</p>\r\n<h3>Что уже сделано</h3>\r\n<ul>\r\n<li>Установили 183 системы видеонаблюдения.</li>\r\n<li>За 1 месяц разработали систему контроля доступа на стадионе &laquo;Гладиатор&raquo;.</li>\r\n</ul>\r\n<p>Мы знаем, как сделать лучше. Многолетний опыт работы и профессионализм сотрудников позволяют нам занимать лидирующие позиции в сфере услуг. Заказывайте у нас &mdash; сделаем качественно и за короткий срок.</p>', 'Компания'),
(2, '', 35, 'Prices', 'Prices', 'Prices', 'Prices', '<table class=\"table table-bordered table-striped\">\r\n<thead>\r\n<tr>\r\n<th class=\"text-center\">№</th>\r\n<th>Name</th>\r\n<th class=\"text-center\">Unit</th>\r\n<th class=\"text-center\">Price (per unit)</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td class=\"text-center table-head-group\" colspan=\"4\"><strong>Section</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">1</td>\r\n<td class=\"text-left\">Item 1</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">500.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">2</td>\r\n<td class=\"text-left\">Item 2</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">660.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">3</td>\r\n<td class=\"text-left\">Item 3</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">720.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">4</td>\r\n<td class=\"text-left\">Item 4</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">108.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">5</td>\r\n<td class=\"text-left\">Item 5</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">275.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">6</td>\r\n<td class=\"text-left\">Item 6</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">220.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">7</td>\r\n<td class=\"text-left\">Item 7</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">143.75$</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Prices'),
(3, '', 35, 'Ціни', 'Ціни', 'Ціни', 'Ціни', '<table class=\"table table-bordered table-striped\">\r\n<thead>\r\n<tr>\r\n<th class=\"text-center\">№</th>\r\n<th>Найменування</th>\r\n<th class=\"text-center\">Од. вим.</th>\r\n<th class=\"text-center\">Ціна (од.)</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td class=\"text-center table-head-group\" colspan=\"4\"><strong>Розділ</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">1</td>\r\n<td class=\"text-left\">Товар 1</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">500,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">2</td>\r\n<td class=\"text-left\">Товар 2</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">660,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">3</td>\r\n<td class=\"text-left\">Товар 3</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">720,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">4</td>\r\n<td class=\"text-left\">Товар 4</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">108,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">5</td>\r\n<td class=\"text-left\">Товар 5</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">275,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">6</td>\r\n<td class=\"text-left\">Товар 6</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">220,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">7</td>\r\n<td class=\"text-left\">Товар 7</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">143,75$</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Ціни'),
(1, '', 35, 'Цены', 'Цены', 'Цены', 'Цены', '<table class=\"table table-bordered table-striped\">\r\n<thead>\r\n<tr>\r\n<th class=\"text-center\">№</th>\r\n<th>Наименование</th>\r\n<th class=\"text-center\">Ед.изм.</th>\r\n<th class=\"text-center\">Цена(ед.)</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td class=\"text-center table-head-group\" colspan=\"4\"><strong>Раздел</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">1</td>\r\n<td class=\"text-left\">Товар 1</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">500,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">2</td>\r\n<td class=\"text-left\">Товар 2</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">660,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">3</td>\r\n<td class=\"text-left\">Товар 3&nbsp;</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">720,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">4</td>\r\n<td class=\"text-left\">Товар 4</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">108,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">5</td>\r\n<td class=\"text-left\">Товар 5</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">275,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">6</td>\r\n<td class=\"text-left\">Товар 6</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">220,00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">7</td>\r\n<td class=\"text-left\">Товар 7</td>\r\n<td class=\"text-center\">шт.</td>\r\n<td class=\"text-center\">143,75$</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Цены'),
(2, '', 36, 'Partners', 'Partners', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Partners', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Partners'),
(3, '', 36, 'Партнери', 'Партнери', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Партнери', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Партнери'),
(1, '', 36, 'Партнеры', 'Партнеры', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Партнеры', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Партнеры'),
(2, '', 37, 'Employees', 'Employees', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Employees', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Employees'),
(3, '', 37, 'Співробітники', 'Співробітники', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Співробітники', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Співробітники');
INSERT INTO `t_lang_pages` (`lang_id`, `lang_label`, `page_id`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `header`) VALUES
(1, '', 37, 'Сотрудники', 'Сотрудники', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Сотрудники', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Сотрудники'),
(2, '', 38, 'Vacancies', 'Vacancies', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Vacancies', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Vacancies'),
(3, '', 38, 'Вакансії', 'Вакансії', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Вакансії', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Вакансії'),
(1, '', 38, 'Вакансии', 'Вакансии', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Вакансии', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Вакансии'),
(2, '', 43, 'Documents', 'Documents', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Documents', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Documents'),
(3, '', 43, 'Документи', 'Документи', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Документи', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Документи'),
(1, '', 43, 'Документы', 'Документы', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Документы', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Документы'),
(2, '', 44, 'Details', 'Details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Details', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Details'),
(3, '', 44, 'Реквізити', 'Реквізити', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Реквізити', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Реквізити'),
(1, '', 44, 'Реквизиты', 'Реквизиты', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Реквизиты', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Реквизиты'),
(2, '', 45, 'Services', 'Services', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Services', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Services'),
(3, '', 45, 'Послуги', 'Послуги', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Послуги', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Послуги'),
(1, '', 45, 'Услуги', 'Услуги', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Услуги', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Услуги'),
(2, '', 46, 'Information', 'Information', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Information', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Information'),
(3, '', 46, 'Інформація', 'Інформація', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Інформація', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Інформація'),
(1, '', 46, 'Информация', 'Информация', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Информация', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Информация'),
(2, '', 47, 'Help', 'Help', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Help', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Help'),
(3, '', 47, 'Допомога', 'Допомога', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Допомога', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Допомога'),
(1, '', 47, 'Помощь', 'Помощь', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Помощь', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 'Помощь');

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_projects`
--

DROP TABLE IF EXISTS `t_lang_projects`;
CREATE TABLE `t_lang_projects` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_projects`
--

INSERT INTO `t_lang_projects` (`lang_id`, `lang_label`, `project_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `client`, `type`) VALUES
(1, '', 6, 'Офис Twitter', 'Офис Twitter', 'Офис Twitter', 'Твиттер &mdash; сервис для публичного обмена короткими сообщениями, используя веб-интерфейс, SMS, средства мгновенного обмена сообщениями или сторонние программы-клиенты', '<p>Твиттер &mdash; сервис для публичного обмена короткими сообщениями, используя веб-интерфейс, SMS, средства мгновенного обмена сообщениями или сторонние программы-клиенты. Публикация коротких заметок в формате блога получила название &laquo;микроблоггинг&raquo;. Пользование сервисом бесплатно. Пользование посредством SMS тарифицируется оператором согласно тарифному плану пользователя.</p>', '<p>Твиттер &mdash; сервис для публичного обмена короткими сообщениями, используя веб-интерфейс, SMS, средства мгновенного обмена сообщениями или сторонние программы-клиенты. Публикация коротких заметок в формате блога получила название &laquo;микроблоггинг&raquo;. Пользование сервисом бесплатно. Пользование посредством SMS тарифицируется оператором согласно тарифному плану пользователя.<br><br>Владельцем системы Твиттер является компания Twitter Inc, главный офис которой находится в Сан-Франциско, (штат Калифорния). Twitter Inc также имеет серверы и офисы в Сан-Антонио (штат Техас) и Бостоне (штат Массачусетс). По состоянию на 2012 год в компании работает более 900 сотрудников.</p>', 'Twitter, Inc', 'Дизайн'),
(2, '', 6, 'Twitter office', 'Twitter office', 'Twitter office', 'Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs', '<p>Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan.</p>', '<p>Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan.</p>\r\n<p>&nbsp;Twitter is owned by Twitter Inc, headquartered in San Francisco, California. Twitter Inc also has servers and offices in San Antonio, Texas and Boston, Massachusetts. As of 2012, the company employs over 900 employees.</p>', 'Twitter, Inc', 'Design'),
(3, '', 6, 'Офіс Twitter', 'Офіс Twitter', 'Офіс Twitter', 'Твіттер - сервіс для публічного обміну короткими повідомленнями, використовуючи веб-інтерфейс, SMS, засоби миттєвого обміну повідомленнями або сторонні програми-клієнти', '<p>Твіттер - сервіс для публічного обміну короткими повідомленнями, використовуючи веб-інтерфейс, SMS, засоби миттєвого обміну повідомленнями або сторонні програми-клієнти. Публікація коротких заміток в форматі блогу отримала назву &laquo;Микроблоггінг&raquo;. Користування сервісом безкоштовно. Користування за допомогою SMS тарифікується оператором згідно з тарифним планом користувача.</p>', '<p>Твіттер - сервіс для публічного обміну короткими повідомленнями, використовуючи веб-інтерфейс, SMS, засоби миттєвого обміну повідомленнями або сторонні програми-клієнти. Публікація коротких заміток в форматі блогу отримала назву &laquo;Микроблоггінг&raquo;. Користування сервісом безкоштовно. Користування за допомогою SMS тарифікується оператором згідно з тарифним планом користувача.</p>\r\n<p>&nbsp;Власником системи Твіттер є компанія Twitter Inc, головний офіс якої знаходиться в Сан-Франциско, (штат Каліфорнія). Twitter Inc також має сервери і офіси в Сан-Антоніо (штат Техас) і Бостоні (штат Массачусетс). Станом на 2012 рік в компанії працює більше 900 співробітників.</p>', 'Twitter, Inc', 'Дизайн'),
(1, '', 7, 'Офис Google в Лондоне', 'Офис Google в Лондоне', 'Офис Google в Лондоне', 'Google — крупнейшая в интернете поисковая система, принадлежащая корпорации Google Inc', '<p>Google &mdash; крупнейшая в интернете поисковая система, принадлежащая корпорации Google Inc. Первая по популярности система, обрабатывает 41 млрд 345 млн запросов в месяц, индексирует более 25 млрд веб-страниц, может находить информацию на 195 языках.</p>', '<p>Google &mdash; крупнейшая в интернете поисковая система, принадлежащая корпорации Google Inc. Первая по популярности система, обрабатывает 41 млрд 345 млн запросов в месяц, индексирует более 25 млрд веб-страниц, может находить информацию на 195 языках.<br><br>Текущий официальный логотип Google был разработан Рутом Кедаром и действует с 6 мая 2010 года. По случаю праздника или круглой даты какой-нибудь широко известной личности стандартный логотип Google может меняться на праздничный, имеющий определённую тематику, смысл, но в стиле Google.</p>', 'Google, Inc', 'Дизайн'),
(2, '', 7, 'Google London office', 'Google London office', 'Google London office', 'Google is the largest search engine on the Internet, owned by Google Inc', '<p><span lang=\"en\">Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.</span></p>', '<p>Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.</p>\r\n<p>The current official Google logo was designed by Ruth Kedar and has been in effect since May 6, 2010. On the occasion of a holiday or a round date of some well-known personality, the standard Google logo can change to a festive one that has a certain theme, meaning, but in the style of Google.</p>', 'Google, Inc', 'Design'),
(3, '', 7, 'Офіс Google в Лондоні ', 'Офіс Google в Лондоні ', 'Офіс Google в Лондоні ', 'Google - найбільша в інтернеті пошукова система, що належить корпорації Google Inc', '<p>Google - найбільша в інтернеті пошукова система, що належить корпорації Google Inc. Перша за популярністю система, обробляє 41 млрд 345 млн запитів в місяць, індексує більше 25 млрд веб-сторінок, може знаходити інформацію на 195 мовах.</p>', '<p>Google - найбільша в інтернеті пошукова система, що належить корпорації Google Inc. Перша за популярністю система, обробляє 41 млрд 345 млн запитів в місяць, індексує більше 25 млрд веб-сторінок, може знаходити інформацію на 195 мовах.</p>\r\n<p>Поточний офіційний логотип Google був розроблений Рутом Кедар і діє з 6 травня 2010 року. З нагоди свята або круглої дати який-небудь широко відомої особистості стандартний логотип Google може змінюватися на святковий, що має певну тематику, зміст, але в стилі Google.</p>', 'Google, Inc', 'Дизайн '),
(1, '', 8, 'Офис Alibaba Group', 'Офис Alibaba Group', 'Офис Alibaba Group', 'Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.</p>', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.<br><br>Обладает собственной электронной платёжной системой (Alipay, которая также используется для расчётов и в дочерней структуре &mdash; Taobao.com), пользуется единым для всех структур программным обеспечением для управления предприятием, а также отсортированными по регионам и отраслям базами данных товаров и предприятий.</p>', 'Alibaba Group', 'Дизайн'),
(2, '', 8, 'Alibaba Group Office', 'Alibaba Group Office', 'Alibaba Group Office', 'Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com', '<p><span lang=\"en\">Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</span></p>', '<p>Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</p>\r\n<p>It has its own electronic payment system (Alipay, which is also used for payments and in its subsidiary - Taobao.com), uses a single enterprise management software for all structures, as well as databases of goods and enterprises sorted by regions and industries.</p>', 'Alibaba Group', 'Design'),
(3, '', 8, 'Офіс Alibaba Group', 'Офіс Alibaba Group', 'Офіс Alibaba Group', 'Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.</p>', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.<br><br>Обладает собственной электронной платёжной системой (Alipay, которая также используется для расчётов и в дочерней структуре &mdash; Taobao.com), пользуется единым для всех структур программным обеспечением для управления предприятием, а также отсортированными по регионам и отраслям базами данных товаров и предприятий.</p>', 'Alibaba Group', 'Дизайн'),
(1, '', 9, 'Дизайн офиса Nike в Нью-Йорке', 'Дизайн офиса Nike в Нью-Йорке', 'Дизайн офиса Nike в Нью-Йорке', 'Nike &mdash; это известный спортивный бренд, но дизайн главного офиса компании лишен яркой спортивной стилистики', '<p>Nike &mdash; это известный спортивный бренд, но дизайн главного офиса компании лишен яркой спортивной стилистики.</p>', '<p>Nike &mdash; это известный спортивный бренд, но дизайн главного офиса компании лишен яркой спортивной стилистики. На тот факт, что это помещение принадлежит мировому производителю спортивной одежды, обуви и аксессуаров, явно указывают, пожалуй, только две вещи. Первая &mdash; логотип фирмы на крыше здания (знаменитая &laquo;галочка&raquo;).</p>', 'Nike', 'Дизайн'),
(2, '', 9, 'Nike New York office design', 'Nike New York office design', 'Nike New York office design', 'Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style', '<p>Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style.</p>', '<p>Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style. The fact that this space belongs to a global manufacturer of sportswear, footwear and accessories is clearly indicated by, perhaps, only two things. The first is the company\'s logo on the roof of the building (the famous \"check mark\").</p>', 'Nike', 'Design'),
(3, '', 9, 'Дизайн офісу Nike в Нью-Йорку', 'Дизайн офісу Nike в Нью-Йорку', 'Дизайн офісу Nike в Нью-Йорку', 'Nike - це відомий спортивний бренд, але дизайн головного офісу компанії позбавлений яскравою спортивною стилістики', '<p>Nike - це відомий спортивний бренд, але дизайн головного офісу компанії позбавлений яскравою спортивною стилістики.</p>', '<p>Nike - це відомий спортивний бренд, але дизайн головного офісу компанії позбавлений яскравою спортивною стилістики. На той факт, що це приміщення належить світовому виробникові спортивного одягу, взуття та аксесуарів, явно вказують, мабуть, тільки дві речі. Перша - логотип фірми на даху будівлі (знаменита &laquo;галочка&raquo;).</p>', 'Nike', 'Дизайн');

-- --------------------------------------------------------

--
-- Table structure for table `t_lang_projects_categories`
--

DROP TABLE IF EXISTS `t_lang_projects_categories`;
CREATE TABLE `t_lang_projects_categories` (
  `lang_id` int(11) NOT NULL,
  `lang_label` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_h1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_lang_projects_categories`
--

INSERT INTO `t_lang_projects_categories` (`lang_id`, `lang_label`, `project_category_id`, `name`, `name_h1`, `meta_title`, `meta_keywords`, `meta_description`, `description`) VALUES
(3, '', 2, 'Дизайн інтер\'єрів', '', 'Дизайн інтер\'єрів', 'Дизайн інтер\'єрів', '', ''),
(1, '', 2, 'Дизайн интерьеров', '', 'Дизайн интерьеров', 'Дизайн интерьеров', '', ''),
(2, '', 2, 'Interior design', '', 'Interior design', 'Interior design', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_menu`
--

INSERT INTO `t_menu` (`id`, `name`, `position`) VALUES
(1, 'Main menu', 1),
(2, 'Services', 2),
(3, 'Information', 3),
(4, 'Help', 4),
(5, 'Confidentiality', 5),
(6, 'Other pages', 6),
(7, 'Hidden', 7);

-- --------------------------------------------------------

--
-- Table structure for table `t_pages`
--

DROP TABLE IF EXISTS `t_pages`;
CREATE TABLE `t_pages` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_pages`
--

INSERT INTO `t_pages` (`id`, `parent_id`, `url`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `menu_id`, `position`, `visible`, `header`, `last_modified`) VALUES
(1, 0, '', 'Turbo Site', 'Turbo Site', 'Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on  TurboCMS  in 24 hours. ', 'Turbo Site', '<p>Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on TurboCMS in 24 hours. This solution does not contain anything superfluous, but at the same time it is carefully worked out to the smallest detail. A ready-made business card site is perfect for companies that provide services in various segments.</p>', 1, 1, 1, 'Home', '2024-08-12 19:57:10'),
(3, 0, '404', '404', 'Page not found', 'Page not found', 'Page not found', '<p>Page not found</p>', 7, 3, 1, 'Page not found', '2024-08-13 23:16:01'),
(4, 0, 'sitemap', 'Sitemap', 'Sitemap', 'Sitemap', 'Sitemap', '', 4, 27, 1, 'Sitemap', '2024-07-26 14:10:08'),
(13, 0, 'blog', 'Blog', 'Blog', '', 'Blog', '', 1, 39, 1, 'Blog', '2024-08-12 19:57:10'),
(14, 0, 'contact', 'Contacts', 'Contacts', 'Contacts', 'Contacts', '', 1, 42, 1, 'Contacts', '2024-08-12 19:57:10'),
(39, 16, 'articles/business-advice', 'Business advice', 'Business advice', '', 'Business advice', '', 1, 33, 1, 'Business advice', '2024-08-12 19:57:10'),
(40, 16, 'articles/project-management', 'Project management', 'Project management', '', 'Project management', '', 1, 34, 1, 'Project management', '2024-08-12 19:57:10'),
(41, 16, 'articles/increased-sales', 'Increased sales', 'Increased sales', '', 'Increased sales', '', 1, 35, 1, 'Increased sales', '2024-08-12 19:57:10'),
(42, 27, 'projects/interior-design', 'Interior design', 'Interior design', '', 'Interior design', '', 1, 25, 1, 'Interior design', '2024-08-12 19:57:10'),
(16, 0, 'articles', 'Articles', 'Articles', '', 'Articles', '', 1, 26, 1, 'Articles', '2024-08-12 19:57:10'),
(18, 0, 'search', 'Search', 'Search', '', 'Search', '', 4, 17, 1, 'Search', '2024-07-26 14:09:37'),
(27, 0, 'projects', 'Projects', 'Projects', '', 'Projects', '', 1, 16, 1, 'Projects', '2024-08-12 19:57:10'),
(25, 0, 'faq', 'FAQ', 'FAQ', 'FAQ', 'FAQ', '', 4, 18, 1, 'FAQ', '2024-07-26 14:10:02'),
(26, 0, 'reviews', 'Reviews', 'Reviews', 'Reviews', 'Reviews', '<p>We are grateful to our clients for their trust and positive feedback on cooperation with our company. If you want, we can help you too: we will offer suitable solutions and the necessary services. Just contact us!</p>', 1, 15, 1, 'Reviews', '2024-08-18 20:32:30'),
(28, 0, 'licenses', '', '', '', '', '', 5, 28, 1, '', '2024-07-26 14:08:54'),
(29, 0, 'offer', 'Offer', 'Offer', 'No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.', 'Offer', '<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself.</p>\r\n<p>Because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee.</p>', 5, 29, 1, 'Offer', '2024-07-26 14:09:04'),
(30, 0, 'automation', 'Automation', 'Automation', 'Trade automation is the process of implementing special equipment or software into an organization. Targeted automation optimizes business processes, increases sales efficiency and prevents human errors.', 'Automation', '<h2>Business automation&nbsp;</h2>\r\n<p>Trade automation is the process of implementing special equipment or software into an organization. Targeted automation optimizes business processes, increases sales efficiency and prevents human errors.</p>\r\n<p>The company has already automated 126 enterprises. We help achieve financial success and the trust of your clients using modern optimization methods. Business automation will help structure work and make only the right and effective decisions for the company.</p>', 2, 30, 1, 'Automation', '2024-07-26 14:21:04'),
(31, 0, 'engineering', 'Engineering systems', 'Engineering systems', 'The company successfully implements projects in the field of engineering systems of any complexity and scale. Our clients receive a high level of quality due to a competent approach to the design and installation of engineering systems.', 'Engineering systems', '<h2>Design and installation of engineering systems</h2>\r\n<p>The company successfully implements projects in the field of engineering systems of any complexity and scale. Our clients receive a high level of quality due to a competent approach to the design and installation of engineering systems. At each stage of the project, the company\'s specialists provide technical support and help with the preparation of documentation.</p>\r\n<h3>Why do people recommend us?</h3>\r\n<ul>\r\n<li>We do it well. Only trusted manufacturers and suppliers to extend the service life of the system.</li>\r\n<li>We speak honestly. We document all agreements and comply with them. We work honestly with supervisory authorities.</li>\r\n<li>We work professionally. We plan the financial and technical components of the project down to the smallest detail. We control the process from the date of creation to the delivery of the project.</li>\r\n</ul>\r\n<p>After the completion of the project, we do not forget about it, but continue servicing and monitor its condition. This way you will be sure of the durability of the system and will be able to consult with our employees at any time. Our company also has a warehouse of spare parts for any engineering system, so if necessary, we will quickly fix the problem or upgrade your project.</p>', 2, 31, 1, 'Engineering systems', '2024-07-26 14:23:37'),
(32, 0, 'designs', 'Design', 'Design', 'Design is the basis for a positive result. The resulting project becomes a holistic structure of models, properties or characteristics of one system.', 'Design', '<h2>System design</h2>\r\n<p>Design is the basis for a positive result. The resulting project becomes a holistic structure of models, properties or characteristics of one system. When designing, the goals and objectives of the project are set, risks are assessed and limitations are taken into account. Our company has been engaged in design since 2008. We offer services for the design of interior designs, utility networks and electrical engineering.</p>\r\n<h3>Project activities include:</h3>\r\n<ul>\r\n<li>project development;</li>\r\n<li>justification, approval, project assessment;</li>\r\n<li>project implementation.</li>\r\n</ul>', 2, 32, 1, 'Design', '2024-07-26 14:26:44'),
(33, 0, 'company', 'About company', 'About company', 'A company that installs security, automation and comfortable living systems. Since 2009, we have been providing maintenance and upgrading of any engineering systems.', 'About company', '<p><img class=\"img-responsive rounded-4 img-fluid\" src=\"../files/uploads/company-page.jpg\" alt=\"\"></p>\r\n<p>A company that installs security, automation and comfortable living systems. Since 2009, we have been providing maintenance and upgrading of any engineering systems.</p>\r\n<h3>How can we help you</h3>\r\n<ul>\r\n<li><strong>We will ensure your safety.</strong>&nbsp;We will analyze the facility and install the best security system. We will offer qualified video surveillance operators. We will develop an individual access control system.</li>\r\n<li><strong>We will automate processes.</strong>&nbsp;We will improve your business processes using a CRM system and IP telephony. We will train your staff and provide access to updates.</li>\r\n<li><strong>We will make your home beautiful.</strong>&nbsp;We will consult on materials for finishing the facade. We will lay reliable tiles. We will design a terrace for summer pastime.</li>\r\n</ul>\r\n<p>Our company employs 246 qualified engineers ready to help you at any time. We carefully analyze the premises and the surrounding area before starting work. Our communication system, built over 8 years of communication with clients, allows us to achieve excellent joint results.</p>\r\n<p>Our portfolio includes<a href=\"projects/\">projects</a>for large industrial enterprises and small private houses. We undertake projects of any complexity and treat all our clients with equal responsibility.</p>\r\n<h3>What has already been done</h3>\r\n<ul>\r\n<li>Installed 183 video surveillance systems.</li>\r\n<li>In 1 month, we developed an access control system at the Gladiator stadium.</li>\r\n</ul>\r\n<p>We know how to do better. Many years of experience and professionalism of our employees allow us to occupy leading positions in the service sector. Order from us - we will do it efficiently and in a short time.</p>', 6, 14, 1, 'Company', '2024-08-13 23:16:49'),
(35, 0, 'prices', 'Prices', 'Prices', 'Prices', 'Prices', '<table class=\"table table-bordered table-striped\">\r\n<thead>\r\n<tr>\r\n<th class=\"text-center\">№</th>\r\n<th>Name</th>\r\n<th class=\"text-center\">Unit</th>\r\n<th class=\"text-center\">Price (per unit)</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td class=\"text-center table-head-group\" colspan=\"4\"><strong>Section</strong></td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">1</td>\r\n<td class=\"text-left\">Item 1</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">500.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">2</td>\r\n<td class=\"text-left\">Item 2</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">660.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">3</td>\r\n<td class=\"text-left\">Item 3</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">720.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">4</td>\r\n<td class=\"text-left\">Item 4</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">108.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">5</td>\r\n<td class=\"text-left\">Item 5</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">275.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">6</td>\r\n<td class=\"text-left\">Item 6</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">220.00$</td>\r\n</tr>\r\n<tr>\r\n<td class=\"text-center\">7</td>\r\n<td class=\"text-left\">Item 7</td>\r\n<td class=\"text-center\">pcs</td>\r\n<td class=\"text-center\">143.75$</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 40, 1, 'Prices', '2024-08-17 18:59:58'),
(36, 0, 'partners', 'Partners', 'Partners', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Partners', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 3, 36, 1, 'Partners', '2024-08-13 22:53:42'),
(37, 0, 'employees', 'Employees', 'Employees', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Employees', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 3, 37, 1, 'Employees', '2024-08-13 22:53:05'),
(38, 0, 'vacancies', 'Vacancies', 'Vacancies', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Vacancies', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 3, 38, 1, 'Vacancies', '2024-08-17 18:45:17'),
(43, 0, 'documents', 'Documents', 'Documents', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Documents', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 3, 43, 1, 'Documents', '2024-08-13 22:51:29'),
(44, 0, 'details', 'Details', 'Details', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Details', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 3, 44, 1, 'Details', '2024-08-13 22:50:08'),
(45, 0, 'services', 'Services', 'Services', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Services', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 6, 45, 1, 'Services', '2024-08-13 22:56:43'),
(46, 0, 'info', 'Information', 'Information', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Information', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 6, 46, 1, 'Information', '2024-08-13 23:15:42'),
(47, 0, 'help', 'Help', 'Help', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis.', 'Help', '<p><strong>Lorem Ipsum Dolor Sit Amet</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus feugiat, nisl ut facilisis cursus, lacus lectus interdum justo, nec luctus sem orci vel felis. Curabitur fringilla lorem a erat efficitur, in tempor mauris ultricies. Sed accumsan risus ac arcu vulputate, at placerat risus aliquet. Aenean quis nunc vel risus sodales lacinia. Ut ut metus nulla. Donec at turpis enim. Nam eget mauris id purus consectetur scelerisque. Aliquam erat volutpat. Morbi varius, nisi ut lobortis dapibus, augue eros convallis mauris, sit amet commodo magna justo ut ligula.</p>\r\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur gravida turpis sed odio dictum, ut vestibulum est auctor. Integer eget justo magna. Suspendisse eget elit nec risus fermentum blandit. Sed euismod, mi vel tincidunt elementum, mi mauris consectetur odio, non pharetra orci est id sapien. Nam varius, magna nec viverra ullamcorper, elit sapien egestas nisi, sed aliquet felis eros vel lorem. Duis vehicula felis non sapien gravida feugiat.</p>', 6, 47, 1, 'Help', '2024-08-13 23:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `t_projects`
--

DROP TABLE IF EXISTS `t_projects`;
CREATE TABLE `t_projects` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annotation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `position` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_projects`
--

INSERT INTO `t_projects` (`id`, `category_id`, `name`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `visible`, `date`, `last_modified`, `position`, `image`, `client`, `site`, `type`) VALUES
(6, 2, 'Twitter office', 'twitter-office', 'Twitter office', 'Twitter office', 'Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs', '<p>Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan.</p>', '<p>Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan.</p>\r\n<p>&nbsp;Twitter is owned by Twitter Inc, headquartered in San Francisco, California. Twitter Inc also has servers and offices in San Antonio, Texas and Boston, Massachusetts. As of 2012, the company employs over 900 employees.</p>', 1, '2021-01-28 21:00:00', '2024-07-29 10:01:56', 6, '', 'Twitter, Inc', 'https://twitter.com', 'Design'),
(7, 2, 'Google London office', 'google-london-office', 'Google London office', 'Google London office', 'Google is the largest search engine on the Internet, owned by Google Inc', '<p><span lang=\"en\">Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.</span></p>', '<p>Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.</p>\r\n<p>The current official Google logo was designed by Ruth Kedar and has been in effect since May 6, 2010. On the occasion of a holiday or a round date of some well-known personality, the standard Google logo can change to a festive one that has a certain theme, meaning, but in the style of Google.</p>', 1, '2021-01-28 21:00:00', '2023-11-18 19:46:30', 7, '', 'Google, Inc', 'https://www.google.com', 'Design'),
(8, 2, 'Alibaba Group Office', 'alibaba-group-office', 'Alibaba Group Office', 'Alibaba Group Office', 'Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com', '<p><span lang=\"en\">Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</span></p>', '<p>Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</p>\r\n<p>It has its own electronic payment system (Alipay, which is also used for payments and in its subsidiary - Taobao.com), uses a single enterprise management software for all structures, as well as databases of goods and enterprises sorted by regions and industries.</p>', 1, '2021-01-27 21:00:00', '2024-07-29 10:01:56', 8, '', 'Alibaba Group', 'http://www.alibaba.com/', 'Design'),
(9, 2, 'Nike New York office design', 'nike-new-york-office-design', 'Nike New York office design', 'Nike New York office design', 'Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style', '<p>Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style.</p>', '<p>Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style. The fact that this space belongs to a global manufacturer of sportswear, footwear and accessories is clearly indicated by, perhaps, only two things. The first is the company\'s logo on the roof of the building (the famous \"check mark\").</p>', 1, '2021-01-28 21:00:00', '2024-07-29 10:01:56', 9, '', 'Nike', 'https://www.nike.com/', 'Design');

-- --------------------------------------------------------

--
-- Table structure for table `t_projects_categories`
--

DROP TABLE IF EXISTS `t_projects_categories`;
CREATE TABLE `t_projects_categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name_h1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `external_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_projects_categories`
--

INSERT INTO `t_projects_categories` (`id`, `parent_id`, `name`, `name_h1`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `url`, `image`, `position`, `visible`, `external_id`, `last_modified`) VALUES
(2, 0, 'Interior design', '', 'Interior design', 'Interior design', '', '', 'interior-design', '', 2, 1, '', '2024-08-18 16:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `t_related_projects`
--

DROP TABLE IF EXISTS `t_related_projects`;
CREATE TABLE `t_related_projects` (
  `project_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_related_projects`
--

INSERT INTO `t_related_projects` (`project_id`, `related_id`, `position`) VALUES
(8, 9, 2),
(8, 7, 0),
(6, 8, 1),
(6, 9, 2),
(7, 8, 0),
(7, 6, 1),
(9, 8, 0),
(9, 7, 1),
(9, 6, 2),
(8, 6, 1),
(6, 7, 0),
(7, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_seo`
--

DROP TABLE IF EXISTS `t_seo`;
CREATE TABLE `t_seo` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_seo_lang`
--

DROP TABLE IF EXISTS `t_seo_lang`;
CREATE TABLE `t_seo_lang` (
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_settings`
--

DROP TABLE IF EXISTS `t_settings`;
CREATE TABLE `t_settings` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_settings`
--

INSERT INTO `t_settings` (`setting_id`, `name`, `value`) VALUES
(1, 'date_format', 'd.m.Y'),
(2, 'admin_email', 'me@example.com'),
(3, 'admintooltip', 'on'),
(4, 'site_work', 'on'),
(5, 'admin_theme', 'default'),
(6, 'sidebar', 'default'),
(7, 'layout', 'fluid'),
(8, 'position', 'left'),
(9, 'comment_email', 'me@example.com'),
(10, 'notify_from_email', 'me@example.com'),
(11, 'email_lang', 'en'),
(12, 'use_smtp', ''),
(13, 'smtp_server', 'smtp.gmail.com'),
(14, 'smtp_port', '465'),
(15, 'smtp_user', ''),
(16, 'smtp_pass', ''),
(17, 'tg_notify', ''),
(18, 'tg_token', ''),
(19, 'tg_apiurl', 'https://api.telegram.org/bot'),
(20, 'tg_channel', ''),
(21, 'gpt_key', ''),
(22, 'model', 'gpt-3.5-turbo'),
(23, 'max_tokens', '800'),
(24, 'temperature', '0.7'),
(25, 'lang', 'en'),
(26, 'projects_num', '15'),
(27, 'projects_num_admin', '15'),
(28, 'articles_num', '15'),
(29, 'articles_num_admin', '15'),
(30, 'faq_num', '15'),
(31, 'faq_num_admin', '15'),
(32, 'blog_num', '15'),
(33, 'blog_num_admin', '15'),
(34, 'comments_num', '15'),
(35, 'comments_num_admin', '15'),
(36, 'smart_resize', ''),
(37, 'webp_support', '1'),
(38, 'chat_viber', '123456789'),
(39, 'chat_whats_app', '123456789'),
(40, 'chat_telegram', 'usename'),
(41, 'chat_facebook', 'usename'),
(42, 'cached', '0'),
(43, 'cache_type', '0'),
(44, 'cache_time', '86400'),
(45, 'captcha_project', '1'),
(46, 'captcha_post', '1'),
(47, 'captcha_cart', ''),
(48, 'captcha_article', '1'),
(49, 'captcha_register', '1'),
(50, 'captcha_feedback', '1'),
(51, 'captcha_callback', '1'),
(52, 'captcha_review', '1'),
(53, 'watermark_enable', '1'),
(54, 'watermark_offset_x', '50'),
(55, 'watermark_offset_y', '50'),
(56, 'watermark_transparency', '50'),
(57, 'images_sharpen', '50'),
(58, 'theme', 'turbosite'),
(59, 'image_sizes', '|1920x660|1080x1080|700x464|694x463|1919x180|1500x738|330x300|400x300|200x100|45x45|40x40|90x60|800x400|750x300|550x440|35x35|700x700'),
(60, 'lastModifyPosts', '2024-08-22 00:05:35'),
(61, 'lastModifyReviews', '2024-08-18 23:38:27'),
(62, 'lastModifyFAQ', '2024-08-18 23:39:33'),
(63, 'counters', 'a:1:{i:0;O:8:\"stdClass\":3:{s:4:\"name\";s:0:\"\";s:8:\"position\";s:4:\"head\";s:4:\"code\";s:0:\"\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `t_settings_lang`
--

DROP TABLE IF EXISTS `t_settings_lang`;
CREATE TABLE `t_settings_lang` (
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL DEFAULT '0',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_settings_lang`
--

INSERT INTO `t_settings_lang` (`name`, `lang_id`, `value`) VALUES
('company_name', 1, 'Turbo CMS'),
('notify_from_name', 1, 'Admin'),
('site_name', 1, 'Турбо сайт'),
('company_name', 2, 'Turbo CMS'),
('notify_from_name', 2, 'Admin'),
('site_name', 2, 'Turbo Site'),
('company_name', 3, 'Turbo CMS'),
('notify_from_name', 3, 'Адмін'),
('site_name', 3, 'Турбо сайт');

-- --------------------------------------------------------

--
-- Table structure for table `t_subscribes`
--

DROP TABLE IF EXISTS `t_subscribes`;
CREATE TABLE `t_subscribes` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_subscribes`
--

INSERT INTO `t_subscribes` (`id`, `date`, `email`, `processed`) VALUES
(1, '2024-07-25 01:13:03', 'mail@site.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_theme_settings`
--

DROP TABLE IF EXISTS `t_theme_settings`;
CREATE TABLE `t_theme_settings` (
  `setting_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_theme_settings`
--

INSERT INTO `t_theme_settings` (`setting_id`, `name`, `value`) VALUES
(1, 'theme_color', 'theme_default'),
(2, 'colors', '#dc2f2f'),
(3, 'custom_color', '#5b7fff'),
(4, 'user_color', '1'),
(5, 'site_width', '1500px'),
(6, 'font_family', 'Inter'),
(7, 'font_size', '16px'),
(8, 'border_radius', '8px'),
(9, 'title_weight', '600'),
(10, 'phone_1', '+38 (095) 000-00-01'),
(11, 'phone_2', '+38 (095) 000-00-02'),
(12, 'phone_3', '+38 (095) 000-00-03'),
(13, 'phone_mask', '+38 (999) 999-99-99'),
(14, 'email', 'mail@site.com'),
(15, 'map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4399.518506840664!2d-73.97964170435294!3d40.75394620817656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259aa94a61b4f%3A0x8ebce7fe1262c134!2zNDEgVyA0MHRoIFN0LCBOZXcgWW9yaywgTlkgMTAwMTgsINCh0KjQkA!5e0!3m2!1sru!2sua!4v1609512981791!5m2!1sru!2sua'),
(16, 'twitterx', 'https://x.com/'),
(17, 'telegram', 'https://t.me/'),
(18, 'youtube', 'https://www.youtube.com/'),
(19, 'tiktok', 'https://www.tiktok.com/'),
(20, 'whatsapp', 'https://wa.me/'),
(21, 'viber', 'viber://chat?number=ххххххххх'),
(22, 'instagram', 'https://www.instagram.com/'),
(23, 'facebook', ''),
(24, 'linkedin', ''),
(25, 'header_type', '1'),
(26, 'menu_header_id', '1'),
(27, 'content_width', '1'),
(28, 'header_padding_top', '1'),
(29, 'block_1', '1'),
(30, 'visible_1', '1'),
(31, 'block_2', '2'),
(32, 'visible_2', '1'),
(33, 'block_3', '3'),
(34, 'visible_3', '1'),
(35, 'block_5', '4'),
(36, 'visible_5', '1'),
(37, 'block_6', '5'),
(38, 'visible_6', '1'),
(39, 'block_4', '6'),
(40, 'visible_4', '1'),
(41, 'block_7', '7'),
(42, 'visible_7', '1'),
(43, 'block_8', '8'),
(44, 'visible_8', '1'),
(45, 'big_banners_type', '2'),
(46, 'banners_height', '3'),
(47, 'wide_text', '0'),
(48, 'banners_adaptive_type', '2'),
(49, 'banners_slides_show_speed', '5000'),
(50, 'banners_animation_speed', '600'),
(51, 'big_banners_id', '2'),
(52, 'teasers_type', '1'),
(53, 'teasers_grid_type', '4'),
(54, 'teasers_banners_id', '4'),
(55, 'teasers_position', '1'),
(56, 'teasers_wide', '0'),
(57, 'teasers_indented', '0'),
(58, 'teasers_delimiter', '0'),
(59, 'teasers_background', '0'),
(60, 'teasers_padding_top', '40'),
(61, 'teasers_padding_bottom', '40'),
(62, 'projects_main_grid_type', '4'),
(63, 'projects_main_sort', 'date'),
(64, 'projects_main_title', '1'),
(65, 'projects_main_delimiter', '0'),
(66, 'projects_main_background', '0'),
(67, 'projects_main_limit', '4'),
(68, 'projects_main_padding_top', '40'),
(69, 'projects_main_padding_bottom', '40'),
(70, 'banners_text_grid_type', '4'),
(71, 'banners_text_position', '1'),
(72, 'banners_text_wide', '0'),
(73, 'banners_text_title', '0'),
(74, 'banners_text_delimiter', '1'),
(75, 'banners_text_background', '1'),
(76, 'banners_text_padding_top', '40'),
(77, 'banners_text_padding_bottom', '40'),
(78, 'banners_text_id', '3'),
(79, 'company_text_button', '1'),
(80, 'company_text_url', 'company'),
(81, 'company_text_bordered', '1'),
(82, 'company_text_image', '1'),
(83, 'company_text_delimiter', '0'),
(84, 'company_text_background', '0'),
(85, 'company_text_padding_top', '40'),
(86, 'company_text_padding_bottom', '40'),
(87, 'articles_main_grid_type', '4'),
(88, 'articles_main_sort', 'position'),
(89, 'articles_main_limit', '4'),
(90, 'articles_main_title', '1'),
(91, 'articles_main_delimiter', '1'),
(92, 'articles_main_background', '0'),
(93, 'articles_main_padding_top', '40'),
(94, 'articles_main_padding_bottom', '40'),
(95, 'blog_main_grid_type', '4'),
(96, 'blog_main_sort', 'date'),
(97, 'blog_main_limit', '4'),
(98, 'blog_main_title', '1'),
(99, 'blog_main_delimiter', '0'),
(100, 'blog_main_background', '0'),
(101, 'blog_main_padding_top', '40'),
(102, 'blog_main_padding_bottom', '40'),
(103, 'bottom_banners_id', '6'),
(104, 'bottom_banners_text', '1'),
(105, 'bottom_banners_wide', '0'),
(106, 'bottom_banners_indented', '0'),
(107, 'bottom_banners_delimiter', '0'),
(108, 'bottom_banners_background', '0'),
(109, 'bottom_banners_padding_top', '0'),
(110, 'bottom_banners_padding_bottom', '40'),
(111, 'footer_type', '2'),
(112, 'footer_color', '2'),
(113, 'id_menu_footer_1', '1'),
(114, 'id_menu_footer_2', '2'),
(115, 'id_menu_footer_3', '3'),
(116, 'id_menu_footer_4', '4'),
(117, 'blog_grid_type', '3'),
(118, 'articles_grid_type', '4'),
(119, 'projects_grid_type', '3'),
(120, 'id_banner_account', '6'),
(121, 'id_menu_sitemap_1', '1'),
(122, 'id_menu_sitemap_2', '2'),
(123, 'id_menu_sitemap_3', '3'),
(124, 'id_menu_sitemap_4', '4');

-- --------------------------------------------------------

--
-- Table structure for table `t_translations`
--

DROP TABLE IF EXISTS `t_translations`;
CREATE TABLE `t_translations` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_ua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_translations`
--

INSERT INTO `t_translations` (`id`, `label`, `lang_ru`, `lang_en`, `lang_ua`) VALUES
(39, 'callback', 'Заказать звонок', 'Request a call', 'Замовити дзвінок'),
(40, 'contact_details', 'Киев, ул. Глубочицкая, 32б', '41 West 40th Street New York, NY', 'Київ, вул. Глибочицька, 32б'),
(6, 'bloge', 'Блоге', 'entries', 'Блогу'),
(41, 'phone_number', '(903) 782-82-82', '(210) 876-5432', '(095) 545-54-54'),
(42, 'close', 'Закрыть', 'Close', 'Закрити'),
(43, 'catalog', 'Каталог', 'Catalog', 'Каталог'),
(37, 'login', 'Вход', 'Login', 'Вхід'),
(22, 'votes', 'голосов', 'votes', 'голосів'),
(21, 'vote', 'голос', 'vote', 'голос'),
(38, 'logout', 'Выйти', 'Logout', 'Вихід'),
(18, 'more_details', 'Далее', 'More details', 'Далі'),
(19, 'not_available', 'Нет в наличии', 'Not available', 'Немає в наявності'),
(23, 'of_vote', 'голоса', 'vote', 'голоси'),
(28, 'delete', 'Удалить', 'Delete', 'Видалити'),
(33, 'new_arrivals', 'Новинки', 'New arrivals', 'Новинки'),
(36, 'registration', 'Регистрация', 'Registration', 'Реєстрація'),
(49, 'global_blog', 'Блог', 'Blog', 'Блог'),
(50, 'enter_your_email', 'Оставьте свой e-mail', 'Enter your Email', 'Залиште свій e-mail'),
(51, 'main_description', 'Этот магазин является демонстрацией скрипта интернет-магазина Turbo CMS. Все материалы на этом сайте присутствуют исключительно в демонстрационных целях.', 'This store is a demo of the script of the Turbo CMS online store. All materials on this site are present for demonstration purposes only.', 'Цей магазин є демонстрацією скрипта інтернет-магазину Turbo CMS. Всі матеріали на цьому сайті присутні виключно в демонстраційних цілях.'),
(54, 'information', 'Информация', 'Information', 'Інформація'),
(55, 'contacts', 'Контакты', 'Contacts', 'Контакти'),
(259, 'text_success', 'Наш менеджер перезвонит вам в ближайшее время.', 'Our manager will call you back shortly.', 'Наш менеджер передзвонить вам найближчим часом.'),
(57, 'your_phone_number', 'Оставьте свой номер телефона', 'Leave your phone number', 'Залиште свій номер телефону'),
(58, 'enter_your_name', 'Введите имя', 'Enter your name', 'Введіть ім\'я'),
(59, 'enter_phone_number', 'Введите номер телефона', 'Enter your phone number', 'Введіть номер телефону'),
(60, 'captcha_incorrect', 'Неверно введена капча', 'Captcha entered incorrectly', 'Невірно введена капча'),
(61, 'enter_the_address', 'Введите адрес', 'Enter the address', 'Введіть адресу'),
(62, 'enter_captcha', 'Введите капчу', 'Enter captcha', 'Введіть капчу'),
(63, 'name', 'Имя', 'Name', 'Ім\'я'),
(64, 'enter_a_comment', 'Введите комментарий', 'Enter a comment', 'Введіть коментар'),
(66, 'home', 'Главная', 'Home', 'Головна'),
(67, 'password', 'Пароль', 'Password', 'Пароль'),
(68, 'forgot_password', 'Забыли пароль?', 'Forgot your password', 'Забули пароль?'),
(69, 'enter_password', 'Введите пароль', 'Enter password', 'Введіть пароль'),
(70, 'phone', 'Телефон', 'Phone', 'Телефон'),
(71, 'address', 'Адрес', 'Address', 'Адреса'),
(72, 'email_already_registered', 'Пользователь с таким email уже зарегистрирован', 'User with this email is already registered', 'Користувач з таким email вже зареєстрований'),
(73, 'send', 'Отправить', 'Send', 'Надіслати'),
(74, 'short_description', 'Краткое описание', 'Short description', 'Короткий опис'),
(81, 'description', 'Описание', 'Description', 'Опис'),
(83, 'comments_global', 'Отзывы', 'Reviews', 'Відгуки'),
(84, 'awaiting_moderation', 'ожидает модерации', 'awaiting moderation', 'очікує модерації'),
(85, 'comment_1', 'отзыв', 'review', 'відгук'),
(86, 'comment_on', 'Комментировать', 'Comment on', 'Коментувати'),
(87, 'no_comments', 'Пока нет комментариев', 'No comments', 'Поки немає коментарів'),
(111, 'reply', 'Ответить', 'Reply', 'Відповісти'),
(96, 'files_global', 'Файлы', 'Files', 'Файли'),
(97, 'videos_global', 'Видео', 'Video', 'Відео'),
(99, 'sort_by', 'Сортировать по', 'Sort by', 'Сортувати за'),
(100, 'default', 'Умолчанию', 'Default', 'Замовчуванням'),
(101, 'name_a_z', 'По имени от А до Я', 'By name from A to Z', 'За назвою від А до Я'),
(102, 'name_z_a', 'По имени от Я до А', 'By name from Z to A', 'За назвою від Я до А'),
(105, 'by_rating', 'По рейтингу', 'By rating', 'За рейтингом'),
(107, 'search', 'Поиск', 'Search', 'Пошук'),
(108, 'nothing_found', 'Ничего не найдено', 'Nothing found', 'Нічого не знайдено'),
(109, 'enter_search_query', 'Введите поисковый запрос', 'Enter your search term', 'Введіть пошуковий запит'),
(110, 'site_search', 'Поиск по сайту', 'Site search', 'Пошук по сайту'),
(112, 'at', 'в', 'at', 'в'),
(114, 'in_order', 'По порядку', 'In order', 'По порядку'),
(115, 'comment_2', 'отзывов', 'reviews', 'відгуків'),
(116, 'table_of_contents', 'Содержание', 'Table of Contents', 'Зміст'),
(117, 'already_voted', 'Вы уже голосовали!', 'You have already voted!', 'Ви вже голосували!'),
(118, 'vote_counted', 'Спасибо! Ваш голос учтен.', 'Thank you! Your vote has been counted.', 'Спасибі! Ваш голос враховано.'),
(119, 'message_sent', 'Сообщение отправлено', 'Message sent', 'Повідомлення відправлено'),
(120, 'success_subscribe', 'Вы были успешно подписаны', 'You have been successfully subscribed', 'Ви були успішно підписані'),
(121, 'already_subscribe', 'Вы уже подписаны', 'You are already subscribed', 'Ви вже підписані'),
(122, 'subscribe_to', 'Подписаться', 'Subscribe to', 'Підписатися'),
(123, 'search_article', 'Поиск статьи...', 'Search article...', 'Пошук статті...'),
(124, 'sitemap', 'Карта сайта', 'Sitemap', 'Карта сайту'),
(125, 'global_articles', 'Статьи', 'Articles', 'Статті'),
(127, 'sort_date', 'По дате', 'Date', 'За датою'),
(128, 'search_blog', 'Поиск в блоге...', 'Search blog...', 'Пошук в блозі...'),
(129, 'filter_by_price', 'Фильтр по цене', 'Filter by price', 'Фільтр по ціні'),
(130, 'apply', 'Применить', 'Apply', 'Застосувати'),
(131, 'reset', 'Сбросить', 'Reset', 'Скинути'),
(133, 'global_feedback', 'Обратная связь', 'Feedback', 'Зворотній зв\'язок'),
(134, 'feedback_message_sent', 'ваше сообщение отправлено.', 'your message has been sent.', 'ваше повідомлення відправлено.'),
(135, 'enter_your_message', 'Введите сообщение', 'Enter your message', 'Введіть повідомлення'),
(136, 'message', 'Сообщение', 'Message', 'Повідомлення'),
(137, 'password_reminder', 'Напоминание пароля', 'Password reminder', 'Нагадування пароля'),
(138, 'email_sent', 'Вам отправлено письмо', 'An email has been sent to you', 'Вам надіслано листа'),
(139, 'user_not_found', 'Пользователь не найден', 'User is not found', 'Користувач не знайдений'),
(140, 'password_recovery_email', 'отправлено письмо для восстановления пароля.', 'password recovery email has been sent.', 'відправлено лист для відновлення пароля.'),
(141, 'enter_email_registration', 'Введите email, который вы указывали при регистрации', 'Enter the email you provided during registration', 'Введіть email, який ви вказали при реєстрації'),
(142, 'wrong_login_password', 'Неверный логин или пароль', 'Wrong login or password', 'Невірний логін або пароль'),
(143, 'not_activated', 'Ваш аккаунт еще не активирован.', 'Your account has not been activated yet.', 'Ваш аккаунт ще не був активований.'),
(144, 'no_post_found', 'Записи не найдены', 'No post found', 'Публікації не знайдено'),
(146, 'change_password', 'Изменить пароль', 'Change Password', 'Змінити пароль'),
(147, 'save', 'Сохранить', 'Save', 'Зберегти'),
(151, 'waiting_processing', 'ждет обработки', 'waiting for processing', 'чекає обробки'),
(154, 'site_closed', 'Сайт закрыт на техническое обслуживание', 'Site closed for maintenance', 'Сайт зараз закритий на технічне обслуговування'),
(155, 'apologize', 'Приносим извинения за неудобство, но в данный момент сайт находится на техническом обслуживание. Скоро мы вернемся online!', 'We apologize for the inconvenience, but the site is currently undergoing maintenance. We\'ll be back online soon!', 'Приносимо вибачення за незручність, але в даний момент сайт знаходиться на технічному обслуговуванні. Скоро ми повернемося online!'),
(156, 'forward', 'вперед', 'forward', 'вперед'),
(157, 'back', 'назад', 'back', 'назад'),
(158, 'all_at_once', 'все сразу', 'all at once', 'всі відразу'),
(161, 'general_name', 'Название', 'Name', 'Назва'),
(163, 'number', 'Количество', 'Number', 'Кількість'),
(187, 'general_full_name', 'ФИО', 'Full name', 'ПІБ'),
(190, 'new_password', 'Новый пароль', 'New password', 'Новий пароль'),
(191, 'on_the_site', 'на сайте', 'on the site', 'на сайті'),
(192, 'email_password_reply', 'был сделан запрос на восстановление вашего пароля.', 'a request was made to recover your password.', 'був зроблений запит на відновлення вашого пароля.'),
(193, 'email_password_change', 'Вы можете изменить пароль, перейдя по следующей ссылке', 'You can change your password by following the link below', 'Ви можете змінити пароль, перейшовши за наступним посиланням'),
(194, 'email_password_text', 'Эта ссылка действует в течение нескольких минут. <br> Если это письмо пришло вам по ошибке, проигнорируйте его.', 'This link is effective for a few minutes. <br> If you received this error in error, ignore it.', 'Це посилання діє протягом декількох хвилин. <br>  Якщо цей лист прийшло вам помилково, ігноруйте його.'),
(197, 'canceled', 'отменен', 'canceled', 'скасований'),
(205, 'no_articles_found', 'Статьи не найдены', 'No articles found', 'Статті не знайдені'),
(211, 'see_all', 'Посмотреть все', 'See all', 'Переглянути всі'),
(212, 'captcha', 'Капча', 'Captcha', 'Капча'),
(217, 'email_comment_hello', 'Здравствуйте,', 'Hello,', 'Вітаємо,'),
(219, 'email_from', 'от', 'of', 'від'),
(224, 'password_remind_title', 'Восстановление пароля', 'Password recovery', 'Відновлення пароля'),
(227, 'contact_us', 'Связаться с нами', 'To contact us', 'Зв\'язатися з нами'),
(228, 'license_is_invalid', 'Лицензия недействительна', 'License is invalid', 'Ліцензія є недійсною'),
(230, 'global_reviews', 'Отзывы', 'Reviews', 'Відгуки'),
(231, 'voice', 'голос', 'voice', 'голос'),
(232, 'comment_3', 'отзыва', 'review', 'відгука'),
(233, 'heading', 'Рубрика', 'Heading', 'Рубрика'),
(234, 'comment', 'Комментарий', 'Comment', 'Коментар'),
(236, 'general_all', 'Все', 'All', 'Всі'),
(237, 'next', 'Вперёд', 'Next', 'Вперед'),
(238, 'previous', 'Назад', 'Prev', 'Назад'),
(239, 'whole_catalog', 'Весь каталог', 'Whole catalog', 'Весь каталог'),
(241, 'no_ratings', 'Нет оценок', 'No ratings', 'Немає оцінок'),
(242, 'rating', 'Рейтинг', 'Rating', 'Рейтинг'),
(243, 'out_of', 'из', 'out of', 'з'),
(246, 'subscribe', 'Подписаться', 'Subscribe', 'Підписатися'),
(247, 'subscribe_text', 'Подписаться <br> на новости', 'Subscribe <br> to news', 'Підписатися <br> на новини'),
(248, 'error_required', 'Заполните это поле!', 'Fill out this field!', 'Заповніть це поле!'),
(249, 'error_format', 'Неверный формат!', 'Wrong format!', 'Невірний формат!'),
(251, 'help', 'Помощь', 'Help', 'Допомога'),
(252, 'account', 'Кабинет', 'Account', 'Кабінет'),
(253, 'powered_by', 'Работает на', 'Powered by', 'Працює на'),
(254, 'more', 'ещё', 'more', 'ще'),
(255, 'login_account', 'Вход в личный кабинет', 'Login to your personal account', 'Вхід в особистий кабінет'),
(256, 'licenses_text', 'Продолжая, вы соглашаетесь с', 'By continuing, you agree to', 'Продовжуючи, ви погоджуєтесь з'),
(257, 'licenses_link', 'политикой конфиденциальности', 'privacy policy', 'політикою конфіденційності'),
(258, 'global_languages', 'Языки', 'Languages', 'Мови'),
(260, 'thank_you', 'Спасибо!', 'Thank you!', 'Дякуємо!'),
(261, 'callback_text', 'Представьтесь, мы вам перезвоним.', 'Introduce yourself, we will call you back.', 'Представтесь, ми вам передзвонимо.'),
(262, 'captcha_label', 'Подтвердите, что вы не робот', 'Confirm that you are not a robot', 'Підтвердіть, що ви не робот'),
(263, 'category', 'Категория', 'Category', 'Категорія'),
(264, 'filter', 'Фильтр', 'Filter', 'Фільтр'),
(265, 'show', 'Показать', 'Show', 'Показати'),
(266, 'show_all', 'Показать все', 'Show all', 'Показати всі'),
(267, 'load_more', 'Загрузить еще', 'Load more', 'Завантажити ще'),
(269, 'all_description', 'Все описание', 'All description', 'Весь опис'),
(277, 'add_review', 'Добавить отзыв', 'Add Review', 'Додати відгук'),
(278, 'post_review', 'Опубликовать отзыв', 'Post Review', 'Опублікувати відгук'),
(279, 'your_rating', 'Ваша оценка', 'Your rating', 'Ваша оцінка'),
(280, 'very_bad', 'Очень плохо', 'Very bad', 'Дуже погано'),
(281, 'add_comment', 'Комментировать', 'Comment', 'Коментувати'),
(282, 'bad', 'Плохо', 'Bad', 'Погано'),
(283, 'fine', 'Хорошо', 'Fine', 'Добре'),
(284, 'normal', 'Нормально', 'Normally', 'Нормально'),
(285, 'great', 'Отлично', 'Great', 'Відмінно'),
(286, 'no_rating', 'Без оценки', 'No rating', 'Без оцінки'),
(291, 'no_reviews', 'Нет отзывов', 'No reviews', 'Немає відгуків'),
(294, 'not_found', 'Не найден', 'Not found', 'Не знайдений'),
(297, 'download', 'Скачать', 'Download', 'Завантажити'),
(300, 'click_here', 'Нажмите здесь', 'Click here', 'Натисніть тут'),
(302, 'all', 'Все', 'All', 'Всі'),
(303, 'moredetails', 'Подробнее', 'More details', 'Детальніше'),
(304, 'grid_display', 'Плиточное отображение', 'Grid display', 'Плиткове відображення'),
(305, 'list_display', 'Строчный вывод', 'List display', 'Відображення списком'),
(307, 'subscribe_newsletter', 'Подписка на рассылку', 'Subscribe to the newsletter', 'Підписка на розсилку'),
(308, 'subscribe_to_newsletter', 'Подпишитесь на рассылку наших новостей', 'Subscribe to our newsletter', 'Підпишіться на розсилку наших новин'),
(310, 'add_comments', 'Добавить комментарий', 'Add comment', 'Додати коментар'),
(311, 'global_comments', 'Комментарии', 'Comments', 'Коментарі'),
(312, 'like', 'Нравится', 'Like', 'Подобається'),
(313, 'dislike', 'Не нравится', 'Dislike', 'Не подобається'),
(314, 'all_publications', 'Все публикации', 'All publications', 'Усі публікації'),
(315, 'author', 'Автор', 'Author', 'Автор'),
(316, 'feedback_message', 'Менеджеры компании с радостью ответят на ваши вопросы и произведут расчет стоимости услуг и подготовят индивидуальное коммерческое предложение.', 'The company\'s managers will be happy to answer your questions and calculate the cost of services and prepare an individual commercial offer.', 'Менеджери компанії з радістю дадуть відповіді на ваші запитання і зроблять розрахунок вартості послуг і підготують індивідуальну комерційну пропозицію.'),
(317, 'ask_question', 'Задать вопрос', 'Ask a Question', 'Задати питання'),
(318, 'text_question', 'Менеджеры компании с радостью ответят на ваши вопросы и произведут расчет стоимости услуг и подготовят индивидуальное коммерческое предложение. ', 'The company\'s managers will be happy to answer your questions and calculate the cost of services and prepare an individual commercial offer.', 'Менеджери компанії з радістю дадуть відповіді на ваші запитання і зроблять розрахунок вартості послуг і підготують індивідуальну комерційну пропозицію.'),
(319, 'text_faq', 'Не нашли ответа на свой вопрос? Свяжитесь с нами, и мы предоставим необходимую информацию.', 'Didn\'t find the answer to your question? Contact us and we will provide the necessary information.', 'Чи не знайшли відповіді на своє запитання? Зв\'яжіться з нами і ми надамо необхідну інформацію.'),
(320, 'write_message', 'Написать сообщение', 'To write a message', 'Написати повідомлення'),
(321, 'search_text', 'Введите поисковый запрос и нажмите кнопку \"Найти\".', 'Enter your search query and click the \"Find\" button.', 'Введіть пошуковий запит і натисніть кнопку \"Знайти\".'),
(322, 'register', 'Зарегистрироваться', 'Register', 'Зареєструватись'),
(323, 'authorization', 'Авторизация', 'Authorization', 'Авторизація'),
(324, 'authorization_text', 'После входа в систему вы сможете управлять своими личными данными.', 'Once logged in, you will be able to manage your personal data.', 'Увійшовши в систему, ви зможете керувати своїми особистими даними.'),
(325, 'restore', 'Восстановить', 'Restore', 'Відновити'),
(326, 'password_recovery', 'Восстановление пароля', 'Password recovery', 'Відновлення паролю'),
(327, 'password_recovery_text', 'Если вы забыли пароль, введите логин.', 'If you have forgotten your password, enter your login.', 'Якщо ви забули пароль, введіть логін.'),
(328, 'recovery_text', 'Контрольная строка для смены пароля, а также ваши регистрационные данные, будут высланы вам по E-Mail.', 'The control line for changing your password, as well as your registration data, will be sent to you by E-Mail.', 'Контрольний рядок для зміни пароля, а також ваші реєстраційні дані будуть надіслані вам по E-Mail.'),
(329, 'registraion_login_text', 'Является также логином для входа на сайт', 'It is also the login to enter the site', 'Є також логіном для входу на сайт'),
(330, 'registraion_password_text', 'Длина пароля не менее 6 символов', 'Password length must be at least 6 characters', 'Довжина пароля не менше 6 символів'),
(331, 'personal_area', 'Личный кабинет', 'Personal Area', 'Особистий кабінет'),
(345, 'personal_data', 'Личные данные', 'Personal data', 'Особисті дані'),
(354, 'subscriptions', 'Подписки', 'Subscriptions', 'Підписки'),
(356, 'profile', 'Профиль', 'Profile', 'Профіль'),
(357, 'ask_a_question', 'Задайте вопрос', 'Ask a question', 'Задайте питання'),
(358, 'my_account', 'Мой кабинет', 'My account', 'Мій кабінет'),
(361, 'contact_details_user', 'Контактные данные', 'Contact details', 'Контактні дані'),
(362, 'user_email_text', 'Для отправки уведомлений. Используйте в качестве логина для входа в личный кабинет', 'To send notifications. Use as login to enter your personal account', 'Для надсилання сповіщень. Використовуйте як логін для входу в особистий кабінет'),
(365, 'save_changes', 'Сохранить изменения', 'Save changes', 'зберегти зміни'),
(366, 'message_success', 'Успешно сохранено', 'Saved successfully', 'Успішно збережено'),
(367, 'phones', 'Телефоны', 'Phones', 'Телефони'),
(368, 'page_not_found', 'Страница не найдена', 'Page not found', 'Сторінка не знайдена'),
(369, 'text_404', 'Неправильно набран адрес или такой страницы не существует', 'The address is incorrectly typed or the page does not exist', 'Неправильно набрана адреса або такої сторінки не існує'),
(370, 'come_back', 'Вернуться назад', 'Come back', 'Повернутися назад'),
(371, 'to_main', 'На главную', 'To main', 'На головну'),
(372, 'all_results', 'Все результаты', 'All results', 'Усі результати'),
(373, 'all_site', 'По сайту', 'All site', 'По сайту'),
(374, 'by_blog', 'По блогу', 'By blog', 'По блогу'),
(375, 'by_article', 'По статьям', 'By article', 'По сатьям'),
(376, 'by_catalog', 'По каталогу', 'By catalog', 'По каталогу'),
(377, 'find', 'Найти', 'Search', 'Знайти'),
(378, 'all_search', 'Везде', 'All', 'Скрізь'),
(379, 'the_request_failed', 'Ошибка запроса', 'The request failed', 'Помилка запиту'),
(380, 'error', 'Ошибка', 'Error', 'Помилка'),
(381, 'hide', 'Скрыть', 'Hide', 'Приховати'),
(382, 'enable_dark_theme', 'Включить темное оформление', 'Enable dark theme', 'Увімкнути темне оформлення'),
(383, 'enable_light_theme', 'Включить светлое оформление', 'Enable light theme', 'Увімкнути світле оформлення'),
(384, 'agree_to_the_terms', 'Согласитесь с условиями', 'Agree to the terms', 'Погодьтеся з умовами'),
(385, 'minimum_6_characters', 'Минимум 6 символов!', 'Minimum 6 characters!', 'Мінімум 6 символів!'),
(386, 'filled_in_incorrectly', 'Неверно заполнено поле!', 'The field is filled in incorrectly!', 'Невірно заповнене поле!'),
(387, 'password_mismatch', 'Пароли не совпадают!', 'Password mismatch!', 'Паролі не співпадають!'),
(388, 'more_global', 'Еще', 'More', 'Ще'),
(392, 'day', 'дн', 'day', 'дн'),
(411, 'section_empty', 'К сожалению, раздел пуст', 'Sorry, this section is empty', 'На жаль, розділ порожній'),
(412, 'loading', 'Загрузка...', 'Loading...', 'Завантаження...'),
(460, 'news', 'Новости', 'News', 'Новини'),
(462, 'sales_department', 'Отдел продаж', 'Sales department', 'Відділ продажу'),
(463, 'accounting', 'Бухгалтерия', 'Accounting', 'Бухгалтерія'),
(464, 'director', 'Директор', 'Director', 'Директор'),
(465, 'office', 'Киев, ул. Шевченко 21, 3 этаж, офис 4', 'Kyiv, st. Shevchenko 21, 3rd floor, office 4', 'Київ, вул. Шевченка 21, 3 поверх, офіс 4'),
(466, 'operating_mode', 'Режим работы', 'Operating mode', 'Режим роботи'),
(467, 'operating_mode_text', 'Пн - Вс: 11.00 - 19.00', 'Mon - Sun: 11.00 - 19.00', 'Пн - Нд: 11.00 - 19.00'),
(468, 'main_office', 'Центральный офис', 'Main office', 'Центральний офіс'),
(469, 'global_banners', 'Баннеры', 'Banners', 'Банери'),
(471, 'global_projects', 'Проекты', 'Projects', 'Проекти'),
(472, 'by_projects', 'По проектам', 'By projects', 'По проектам'),
(473, 'site', 'Сайт', 'Website', 'Сайт'),
(474, 'sphere', 'Сфера', 'Sphere', 'Сфера'),
(475, 'customer', 'Клиент', 'Customer', 'Клієнт'),
(476, 'related_projects', 'Похожие проекты', 'Similar projects', 'Схожі проекти'),
(477, 'company', 'Компания', 'Company', 'Компанія'),
(478, 'services', 'Услуги', 'Services', 'Послуги'),
(479, 'about_company', 'О компании', 'About company', 'Про компанію'),
(480, 'details', 'Реквизиты', 'Details', 'Реквізити'),
(481, 'licenses', 'Лицензии', 'Licenses', 'Ліцензії'),
(482, 'documents', 'Документы', 'Documents', 'Документи');

-- --------------------------------------------------------

--
-- Table structure for table `t_users`
--

DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_users`
--

INSERT INTO `t_users` (`id`, `email`, `password`, `name`, `phone`, `group_id`, `enabled`, `last_ip`, `created`) VALUES
(1, 'me@example.com', '003ff6279857ddb9bb1ccf7a1c86f710', 'John Smith', '+1(234) 567-89-01', 1, 1, '127.0.0.1', '2021-01-24 00:52:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`visible`),
  ADD KEY `url` (`url`(250));

--
-- Indexes for table `t_articles_categories`
--
ALTER TABLE `t_articles_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`(250)),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `position` (`position`),
  ADD KEY `visible` (`visible`);

--
-- Indexes for table `t_banners`
--
ALTER TABLE `t_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position` (`position`),
  ADD KEY `visible` (`visible`),
  ADD KEY `show_all_pages` (`show_all_pages`),
  ADD KEY `category` (`projects_categories`),
  ADD KEY `pages` (`pages`),
  ADD KEY `articles` (`articles_categories`);

--
-- Indexes for table `t_banners_images`
--
ALTER TABLE `t_banners_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position` (`position`),
  ADD KEY `visible` (`visible`);

--
-- Indexes for table `t_blog`
--
ALTER TABLE `t_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`visible`),
  ADD KEY `url` (`url`(250));

--
-- Indexes for table `t_callbacks`
--
ALTER TABLE `t_callbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_comments`
--
ALTER TABLE `t_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `t_faq`
--
ALTER TABLE `t_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_feedbacks`
--
ALTER TABLE `t_feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_files`
--
ALTER TABLE `t_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_images_project`
--
ALTER TABLE `t_images_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filename` (`filename`(250)),
  ADD KEY `post_id` (`project_id`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `t_languages`
--
ALTER TABLE `t_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_lang_articles`
--
ALTER TABLE `t_lang_articles`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`article_id`);

--
-- Indexes for table `t_lang_articles_categories`
--
ALTER TABLE `t_lang_articles_categories`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`article_category_id`);

--
-- Indexes for table `t_lang_banners_images`
--
ALTER TABLE `t_lang_banners_images`
  ADD PRIMARY KEY (`lang_id`,`banner_image_id`);

--
-- Indexes for table `t_lang_blog`
--
ALTER TABLE `t_lang_blog`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`blog_id`);

--
-- Indexes for table `t_lang_faq`
--
ALTER TABLE `t_lang_faq`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`faq_id`);

--
-- Indexes for table `t_lang_files`
--
ALTER TABLE `t_lang_files`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`file_id`);

--
-- Indexes for table `t_lang_pages`
--
ALTER TABLE `t_lang_pages`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`page_id`);

--
-- Indexes for table `t_lang_projects`
--
ALTER TABLE `t_lang_projects`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`project_id`);

--
-- Indexes for table `t_lang_projects_categories`
--
ALTER TABLE `t_lang_projects_categories`
  ADD UNIQUE KEY `lang_id` (`lang_id`,`project_category_id`);

--
-- Indexes for table `t_menu`
--
ALTER TABLE `t_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_pages`
--
ALTER TABLE `t_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`(250)),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `position` (`position`) USING BTREE;

--
-- Indexes for table `t_projects`
--
ALTER TABLE `t_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`visible`),
  ADD KEY `url` (`url`(250));

--
-- Indexes for table `t_projects_categories`
--
ALTER TABLE `t_projects_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url` (`url`(250)),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `position` (`position`),
  ADD KEY `visible` (`visible`),
  ADD KEY `external_id` (`external_id`);

--
-- Indexes for table `t_related_projects`
--
ALTER TABLE `t_related_projects`
  ADD PRIMARY KEY (`project_id`,`related_id`),
  ADD KEY `position` (`position`);

--
-- Indexes for table `t_seo`
--
ALTER TABLE `t_seo`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `t_seo_lang`
--
ALTER TABLE `t_seo_lang`
  ADD PRIMARY KEY (`lang_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `t_settings`
--
ALTER TABLE `t_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `t_settings_lang`
--
ALTER TABLE `t_settings_lang`
  ADD PRIMARY KEY (`lang_id`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `t_subscribes`
--
ALTER TABLE `t_subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_theme_settings`
--
ALTER TABLE `t_theme_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `t_translations`
--
ALTER TABLE `t_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`(250));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_articles_categories`
--
ALTER TABLE `t_articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_banners`
--
ALTER TABLE `t_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_banners_images`
--
ALTER TABLE `t_banners_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_blog`
--
ALTER TABLE `t_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_callbacks`
--
ALTER TABLE `t_callbacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_comments`
--
ALTER TABLE `t_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_faq`
--
ALTER TABLE `t_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_feedbacks`
--
ALTER TABLE `t_feedbacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_files`
--
ALTER TABLE `t_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_images_project`
--
ALTER TABLE `t_images_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `t_languages`
--
ALTER TABLE `t_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_menu`
--
ALTER TABLE `t_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_pages`
--
ALTER TABLE `t_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `t_projects`
--
ALTER TABLE `t_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `t_projects_categories`
--
ALTER TABLE `t_projects_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_seo`
--
ALTER TABLE `t_seo`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_settings`
--
ALTER TABLE `t_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `t_subscribes`
--
ALTER TABLE `t_subscribes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_theme_settings`
--
ALTER TABLE `t_theme_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `t_translations`
--
ALTER TABLE `t_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;