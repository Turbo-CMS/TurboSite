SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_articles`
--

INSERT INTO `t_articles` (`id`, `category_id`, `name`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `visible`, `date`, `last_modified`, `position`, `image`, `views`, `rate`, `author`) VALUES
(1, 2, 'Consec tetadip scinelit', 'consec-tetadip-scinelit', 'Consec tetadip scinelit', 'Consec tetadip scinelit, Webmaster', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 22:00:00', '2022-04-22 18:27:21', 1, 'adult-businessman-businesswomen-1061588.jpg', 0, 2, 'Webmaster'),
(2, 1, 'Proin tincidunt felis', 'proin-tincidunt-felis', 'Proin tincidunt felis', 'Proin tincidunt felis, Webmaster', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 22:00:00', '2022-04-22 18:28:21', 2, 'analysis-brainstorming-chart-1571699.jpg', 3, 2, 'Webmaster'),
(3, 3, 'Lorem ipsum dolor', 'lorem-ipsum-dolor', 'Lorem ipsum dolor', 'Lorem ipsum dolor, Webmaster', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 22:00:00', '2022-04-22 18:29:18', 3, 'beverage-chat-chatting-1243365.jpg', 0, 2, 'Webmaster');

-- --------------------------------------------------------

--
-- Table structure for table `t_articles_categories`
--

DROP TABLE IF EXISTS `t_articles_categories`;
CREATE TABLE `t_articles_categories` (
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
-- Dumping data for table `t_articles_categories`
--

INSERT INTO `t_articles_categories` (`id`, `parent_id`, `name`, `name_h1`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `url`, `image`, `position`, `visible`, `external_id`, `last_modified`) VALUES
(1, 0, 'Business advice', '', 'Business advice', 'Business advice', '', '', 'business-advice', '', 1, 1, '', '2022-04-22 18:36:36'),
(2, 0, 'Project management', '', 'Project management', 'Project management', '', '', 'project-management', '', 2, 1, '', '2022-04-22 18:37:12'),
(3, 0, 'Increased sales', '', 'Increased sales', 'Increased sales', '', '', 'increased-sales', '', 3, 1, '', '2022-04-22 18:37:38');

-- --------------------------------------------------------

--
-- Table structure for table `t_banners`
--

DROP TABLE IF EXISTS `t_banners`;
CREATE TABLE `t_banners` (
  `id` int(11) NOT NULL,
  `group_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `show_all_pages` tinyint(1) NOT NULL DEFAULT '0',
  `pages` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `projects_categories` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `articles_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_banners`
--

INSERT INTO `t_banners` (`id`, `group_id`, `name`, `description`, `position`, `visible`, `show_all_pages`, `pages`, `projects_categories`, `articles_categories`) VALUES
(1, '1', 'Main slider', '', 1, 1, 0, '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `t_banners_images`
--

DROP TABLE IF EXISTS `t_banners_images`;
CREATE TABLE `t_banners_images` (
  `id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `button` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `position` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_banners_images`
--

INSERT INTO `t_banners_images` (`id`, `banner_id`, `name`, `alt`, `title`, `description`, `url`, `button`, `image`, `position`, `visible`) VALUES
(6, 1, 'Real Automation Center', '', '', 'Find out how to make your business more efficient', '', '', 'apple-device-blur-blurry-273222.jpg', 6, 1),
(5, 1, 'Cloud services', '', '', 'We will solve the problems of your business using cloud services', '', '', 'business-computer-connection-450035.jpg', 5, 1),
(7, 1, 'Implementation of CRM systems for business process management', '', '', 'An indispensable tool for doing business.\r\nAll data in one place!', '', '', '1900X1080-Banner-image-1.jpg', 7, 1),
(8, 1, 'Comprehensive business automation', '', '', 'We set up and optimize all business processes of the company. ', '', '', 'website-Important-for-Limo-Business-3.jpg', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_blog`
--

DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_blog`
--

INSERT INTO `t_blog` (`id`, `name`, `url`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`, `visible`, `date`, `last_modified`, `image`, `views`, `rate`) VALUES
(1, 'Lorem ipsum dolor', 'lorem-ipsum-dolor', 'Lorem ipsum dolor', 'Lorem ipsum dolor', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2020-12-31 22:00:00', '2022-04-22 18:30:54', 'blog-1.jpg', 0, 1),
(2, 'Consec tetadip scinelit', 'consec-tetadip-scinelit', 'Consec tetadip scinelit', 'Consec tetadip scinelit', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 22:00:00', '2022-04-22 18:32:58', 'blog-2.jpg', 6, 3),
(3, 'Proin tincidunt felis', 'proin-tincidunt-felis', 'Proin tincidunt felis', 'Proin tincidunt felis', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>', 1, '2021-01-02 22:00:00', '2022-04-22 18:31:54', 'blog-5.jpg', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_callbacks`
--

DROP TABLE IF EXISTS `t_callbacks`;
CREATE TABLE `t_callbacks` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_comments`
--

DROP TABLE IF EXISTS `t_comments`;
CREATE TABLE `t_comments` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('project','blog','article','review') COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` int(1) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_comments`
--

INSERT INTO `t_comments` (`id`, `date`, `ip`, `object_id`, `name`, `text`, `type`, `approved`, `parent_id`, `admin`, `rate`, `rating`) VALUES
(5, '2021-09-04 12:36:00', '127.0.0.1', 0, 'William', 'The company provides us with service support, according to which we have repeatedly had the opportunity to make sure that the company\'s specialists have the necessary technical potential and experience, which ensures the reliable implementation of implementation projects. We recommend the company as a reliable and competent business partner.', 'review', 1, 0, 0, 1, 5),
(6, '2021-09-04 12:39:00', '127.0.0.1', 0, 'Amelia', 'We chose the company in accordance with the recommendations of 1C, taking into account the rich experience and high scientific level of its employees. We would like to express our gratitude to the employees for the fact that their professionalism and perseverance in achieving the goal allowed us to complete all the tasks.', 'review', 1, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `t_faq`
--

DROP TABLE IF EXISTS `t_faq`;
CREATE TABLE `t_faq` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_faq`
--

INSERT INTO `t_faq` (`id`, `name`, `answer`, `visible`, `position`, `last_modified`) VALUES
(4, 'Do you work under a contract?', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Before starting work, we discuss with you all the conditions and deadlines.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">After that, we prepare and sign a contract in duplicate.</span></p>', 1, 4, '2022-04-22 18:21:14'),
(5, 'What is enterprise or business automation?', '<p>Automation is a set of organizational measures and the use of software and hardware solutions aimed at reducing human participation when performing standard or complex production or business operations.</p>', 1, 5, '2022-04-22 18:21:08'),
(6, 'What is the difference between a program, a system and a complex solution?', '<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">A program is an instruction that makes it clear to computers or electronic devices what sequential steps must be performed to obtain a certain result. It can be simple or complex. A system is a complex of interconnected programs and devices to ensure the execution of complex, often non-sequential operations, or vice versa, when operations need to be linked and build a clear sequence of operations and transfer from one device to another. An integrated solution is the unification of several systems, programs and devices into one information environment, where it is necessary to build a sequence of execution for a variety of operations that are performed by various departments, departments and individual specialists.</span></span></p>', 1, 6, '2022-04-22 18:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `t_feedbacks`
--

DROP TABLE IF EXISTS `t_feedbacks`;
CREATE TABLE `t_feedbacks` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `type` enum('product','blog','page','order') COLLATE utf8mb4_unicode_ci NOT NULL,
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
(7, 6, '4a059d8a702b12fbd8e9aef2ffb8b24f.jpg', '', 2),
(8, 6, '9d5565e2d851d13cc10e18797f9f85f2.jpg', '', 1),
(10, 6, '1694cd00473ee77bf5d4a9007f14020a.jpg', '', 3),
(11, 6, '292243489234c2a1453c24d52976bf93.jpg', '', 4),
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
  `is_default` tinyint(1) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_languages`
--

INSERT INTO `t_languages` (`id`, `name`, `label`, `is_default`, `enabled`, `position`) VALUES
(1, 'Russian', 'ru', 0, 1, 3),
(2, 'English', 'en', 0, 1, 1),
(3, 'Ukrainian', 'ua', 0, 1, 2);

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
(1, '', 1, 'Название демонстрационной статьи', 'Вебмастер', 'Название демонстрационной статьи', 'Название демонстрационной статьи, Вебмастер', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только...</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\">Lorem Ipsum</a>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 1, 'Consec tetadip scinelit', 'Webmaster', 'Consec tetadip scinelit', 'Consec tetadip scinelit, Webmaster', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(1, '', 2, 'Название демонстрационной статьи', 'Вебмастер', 'Название демонстрационной статьи', 'Название демонстрационной статьи, Вебмастер', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. ', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только...</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\">Lorem Ipsum</a>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(3, '', 1, 'Назва демонстраційної статті', 'Вебмайстер', 'Назва демонстраційної статті', 'Назва демонстраційної статті, Вебмайстер', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Заголовок</span>&nbsp;<span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">демонстраційної</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">статті</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">h2 Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">текст-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">риба</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">часто</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">використовуваний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">у пресі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">та</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">веб</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">дизайні</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">є</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">стандартною</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">рибою</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">\"</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">текстів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">на</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">латиниці</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"29\">з</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"30\">початку</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"31\">XVI</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"32\">століття</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"33\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"34\">У той</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"35\">час</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"36\">якийсь</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"37\">безіменний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"38\">друкар</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"39\">створив</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"40\">велику</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"41\">колекцію</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"42\">розмірів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"43\">і</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"44\">форм</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"45\">шрифтів</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"46\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"47\">використовуючи</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"48\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"49\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"50\">роздруківки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"51\">зразків</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"52\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"53\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"54\">не тільки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"55\">...</span></p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\"> Lorem Ipsum </a>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(2, '', 2, 'Proin tincidunt felis', 'Webmaster', 'Proin tincidunt felis', 'Proin tincidunt felis, Webmaster', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 2, 'Назва демонстраційної статті', 'Вебмайстер', 'Назва демонстраційної статті', 'Назва демонстраційної статті, Вебмайстер', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Заголовок</span>&nbsp;<span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">демонстраційної</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">статті</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">h2 Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">текст-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">риба</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">часто</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">використовуваний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">у пресі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">та</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">веб</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">дизайні</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">є</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">стандартною</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">рибою</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">\"</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">текстів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">на</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">латиниці</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"29\">з</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"30\">початку</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"31\">XVI</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"32\">століття</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"33\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"34\">У той</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"35\">час</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"36\">якийсь</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"37\">безіменний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"38\">друкар</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"39\">створив</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"40\">велику</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"41\">колекцію</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"42\">розмірів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"43\">і</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"44\">форм</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"45\">шрифтів</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"46\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"47\">використовуючи</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"48\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"49\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"50\">роздруківки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"51\">зразків</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"52\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"53\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"54\">не тільки</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"55\">...</span></p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\"> Lorem Ipsum </a>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 3, 'Название демонстрационной статьи', 'Вебмастер', 'Название демонстрационной статьи', 'Название демонстрационной статьи, Вебмастер', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. ', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только...</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\">Lorem Ipsum</a>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 3, 'Lorem ipsum dolor', 'Webmaster', 'Lorem ipsum dolor', 'Lorem ipsum dolor, Webmaster', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>');
INSERT INTO `t_lang_articles` (`lang_id`, `lang_label`, `article_id`, `name`, `author`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`) VALUES
(3, '', 3, 'Назва демонстраційної статті', 'Вебмайстер', 'Назва демонстраційної статті', 'Назва демонстраційної статті, Вебмайстер', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Заголовок</span>&nbsp;<span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">демонстраційної</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">статті</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">h2 Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">текст-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">риба</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">часто</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">використовуваний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">у пресі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">та</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">веб</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">дизайні</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">є</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">стандартною</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">рибою</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">\"</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">текстів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">на</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">латиниці</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"29\">з</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"30\">початку</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"31\">XVI</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"32\">століття</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"33\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"34\">У той</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"35\">час</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"36\">якийсь</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"37\">безіменний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"38\">друкар</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"39\">створив</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"40\">велику</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"41\">колекцію</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"42\">розмірів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"43\">і</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"44\">форм</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"45\">шрифтів</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"46\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"47\">використовуючи</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"48\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"49\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"50\">роздруківки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"51\">зразків</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"52\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"53\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"54\">не тільки</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"55\">...</span></p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\"> Lorem Ipsum </a>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>');

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
(1, '', 6, 'Центр реальной автоматизации', '', '', 'Узнайте как сделать Ваш бизнес эффективнее ', '', ''),
(1, '', 5, 'Облачные услуги', '', '', 'Решим задачи Вашего бизнеса с помощью облачных сервисов', '', ''),
(2, '', 5, 'Cloud services', '', '', 'We will solve the problems of your business using cloud services', '', ''),
(3, '', 5, 'Хмарні послуги', '', '', 'Вирішимо завдання Вашого бізнесу за допомогою хмарних сервісів', '', ''),
(2, '', 6, 'Real Automation Center', '', '', 'Find out how to make your business more efficient', '', ''),
(3, '', 6, 'Центр реальної автоматизації', '', '', 'Узнайте как сделать Ваш бизнес эффективнее ', '', ''),
(1, '', 7, 'Внедрение CRM-систем для управления бизнес-процессами', '', '', 'Незаменимый инструмент для ведения бизнеса. \r\nВсе данные – в одном месте!', '', ''),
(2, '', 7, 'Implementation of CRM systems for business process management', '', '', 'An indispensable tool for doing business.\r\nAll data in one place!', '', ''),
(3, '', 7, 'Впровадження CRM-систем для управління бізнес-процесами', '', '', 'Незамінний інструмент для ведення бізнесу.\r\nВсі дані - в одному місці!', '', ''),
(1, '', 8, 'Комплексная автоматизация бизнеса', '', '', 'Настраиваем и оптимизируем все бизнес-процессы компании.', '', ''),
(2, '', 8, 'Comprehensive business automation', '', '', 'We set up and optimize all business processes of the company. ', '', ''),
(3, '', 8, 'Комплексна автоматизація бізнесу', '', '', 'Налаштовуємо і оптимізуємо всі бізнес-процеси компанії. ', '', '');

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
(1, '', 1, 'Название  демонстрационной статьи', 'Название  демонстрационной статьи', 'Название  демонстрационной статьи', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. ', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только...</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\">Lorem Ipsum</a>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 1, 'Lorem ipsum dolor', 'Lorem ipsum dolor', 'Lorem ipsum dolor', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 1, 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Заголовок</span>&nbsp;<span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">демонстраційної</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">статті</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">h2 Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">текст-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">риба</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">часто</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">використовуваний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">у пресі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">та</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">веб</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">дизайні</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">є</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">стандартною</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">рибою</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">\"</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">текстів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">на</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">латиниці</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"29\">з</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"30\">початку</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"31\">XVI</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"32\">століття</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"33\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"34\">У той</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"35\">час</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"36\">якийсь</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"37\">безіменний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"38\">друкар</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"39\">створив</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"40\">велику</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"41\">колекцію</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"42\">розмірів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"43\">і</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"44\">форм</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"45\">шрифтів</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"46\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"47\">використовуючи</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"48\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"49\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"50\">роздруківки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"51\">зразків</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"52\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"53\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"54\">не тільки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"55\">...</span></p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\"> Lorem Ipsum </a>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 2, 'Название демонстрационной статьи', 'Название демонстрационной статьи', 'Название демонстрационной статьи', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только...</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\">Lorem Ipsum</a>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 2, 'Consec tetadip scinelit', 'Consec tetadip scinelit', 'Consec tetadip scinelit', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>'),
(3, '', 2, 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Заголовок</span>&nbsp;<span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">демонстраційної</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">статті</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">h2 Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">текст-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">риба</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">часто</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">використовуваний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">у пресі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">та</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">веб</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">дизайні</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">є</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">стандартною</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">рибою</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">\"</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">текстів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">на</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">латиниці</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"29\">з</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"30\">початку</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"31\">XVI</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"32\">століття</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"33\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"34\">У той</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"35\">час</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"36\">якийсь</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"37\">безіменний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"38\">друкар</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"39\">створив</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"40\">велику</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"41\">колекцію</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"42\">розмірів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"43\">і</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"44\">форм</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"45\">шрифтів</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"46\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"47\">використовуючи</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"48\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"49\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"50\">роздруківки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"51\">зразків</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"52\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"53\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"54\">не тільки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"55\">...</span></p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\"> Lorem Ipsum </a>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>'),
(1, '', 3, 'Название  демонстрационной статьи', 'Название  демонстрационной статьи', 'Название  демонстрационной статьи', 'Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века.', '<p>Заголовок демонстрационной статьи h2 Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только...</p>', '<h2>Заголовок демонстрационной статьи h2</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстрационной статьи h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\">Lorem Ipsum</a>&nbsp;- это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>'),
(2, '', 3, 'Proin tincidunt felis', 'Proin tincidunt felis', 'Proin tincidunt felis', 'Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '<p>Demo article title h2 But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is...</p>', '<h2>Demo article title h2</h2>\r\n<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue&nbsp;<strong>pleasure rationally encounter</strong>&nbsp;consequences that are extremely painful.</p>\r\n<h3>Demo article title h3</h3>\r\n<p>Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever&nbsp;<a href=\"https://turbo-cms.com/\">undertakes laborious</a>&nbsp;physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>');
INSERT INTO `t_lang_blog` (`lang_id`, `lang_label`, `blog_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `annotation`, `text`) VALUES
(3, '', 3, 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Назва демонстраційної статті', 'Заголовок демонстраційної статті h2 Lorem Ipsum - це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття.', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Заголовок</span>&nbsp;<span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">демонстраційної</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">статті</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">h2 Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">текст-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">риба</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">часто</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">використовуваний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">у пресі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">та</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">веб</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">дизайні</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">є</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">стандартною</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">\"</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">рибою</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">\"</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">текстів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">на</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">латиниці</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"29\">з</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"30\">початку</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"31\">XVI</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"32\">століття</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"33\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"34\">У той</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"35\">час</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"36\">якийсь</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"37\">безіменний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"38\">друкар</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"39\">створив</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"40\">велику</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"41\">колекцію</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"42\">розмірів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"43\">і</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"44\">форм</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"45\">шрифтів</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"46\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"47\">використовуючи</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"48\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"49\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"50\">роздруківки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"51\">зразків</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"52\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"53\">Lorem Ipsum</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"54\">не тільки</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"55\">.</span></p>', '<h2>Заголовок демонстраційної статті h2</h2>\r\n<p><strong> Lorem Ipsum </strong>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. consequences that are extremely painful.</p>\r\n<h3>Заголовок демонстраційної статті h3</h3>\r\n<p><a href=\"https://turbo-cms.com/\"> Lorem Ipsum </a>- це текст- \"риба\", часто використовуваний у пресі та веб-дизайні. Lorem Ipsum є стандартною \"рибою\" для текстів на латиниці з початку XVI століття. У той час якийсь безіменний друкар створив велику колекцію розмірів і форм шрифтів, використовуючи Lorem Ipsum для роздруківки зразків. Lorem Ipsum не тільки успішно пережив без помітних змін п\'ять століть, але й прижилася в електронному дизайн. Його популяризації в новий час послужили публікація листів Letraset із зразками Lorem Ipsum в 60-х роках і, в більш недавні часи, програми електронної верстки типу Aldus PageMaker, в шаблонах яких використовується Lorem Ipsum. physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</p>\r\n<p>Давно з\'ясовано, що при оцінці дизайну і композиції читається текст заважає зосередитися. Lorem Ipsum використовують тому, що той забезпечує більш-менш стандартний заповнення шаблону, а також реальний розподіл букв і пробілів в абзацах, яке не виходить за простій дублікації \"Тут ваш текст .. Тут ваш текст .. Тут ваш текст ..\" Багато програм електронної верстки та редактори HTML використовують Lorem Ipsum як текст за замовчуванням, так що пошук за ключовими словами \"lorem ipsum\" відразу показує, як багато веб-сторінок все ще чекають свого справжнього народження. За минулі роки текст Lorem Ipsum отримав багато версій. Деякі версії з\'явилися помилково, деякі - навмисно (наприклад, гумористичні варіанти).</p>');

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
(2, '', 6, 'What is the difference between a program, a system and a complex solution?', '<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">A program is an instruction that makes it clear to computers or electronic devices what sequential steps must be performed to obtain a certain result. It can be simple or complex. A system is a complex of interconnected programs and devices to ensure the execution of complex, often non-sequential operations, or vice versa, when operations need to be linked and build a clear sequence of operations and transfer from one device to another. An integrated solution is the unification of several systems, programs and devices into one information environment, where it is necessary to build a sequence of execution for a variety of operations that are performed by various departments, departments and individual specialists.</span></span></p>'),
(1, '', 4, 'Работаете ли вы по договору?', '<p>Перед началом работ обговариваем с вами все условия и сроки выполнения. После этого подготавливаем и подписываем договор в двух экземплярах.</p>'),
(2, '', 4, 'Do you work under a contract?', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Before starting work, we discuss with you all the conditions and deadlines.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">After that, we prepare and sign a contract in duplicate.</span></p>'),
(3, '', 4, 'Чи працюєте ви за договором?', '<p>Перед початком робіт обговорюємо з вами всі умови і терміни виконання. Після цього готуємо і підписуємо договір в двох примірниках.</p>'),
(1, '', 5, ' Что такое автоматизация предприятия или бизнеса?', '<p>Автоматизация - это комплекс организационных мер и применение программно-аппаратных решений, направленных на снижение участия человека при выполнении типовых или сложных производственных, или бизнес операций.</p>'),
(2, '', 5, 'What is enterprise or business automation?', '<p>Automation is a set of organizational measures and the use of software and hardware solutions aimed at reducing human participation when performing standard or complex production or business operations.</p>'),
(1, '', 6, 'Чем отличаются между собой программа, система и комплексное решение?', '<p><strong>Программа</strong>&nbsp;- это инструкция дающая понять компьютерам или электронным устройствам, какие последовательные действия необходимо выполнить для получения определенного результата. Она может быть простой или сложной.&nbsp;<strong>Система</strong>&nbsp;- это комплекс взаимосвязанных программ и устройств для обеспечения выполнения сложных, часто не последовательных операций или наоборот, когда операции необходимо связать и выстроить четкую последовательность операций и передачу от одного устройства к другому.&nbsp;<strong>Комплексное решение</strong>&nbsp;- это объединение нескольких систем, программ и устройств в одну информационную среду, где необходимо выстроить последовательность выполнения для множества операций, которые выполняют различные отделы, департаменты и отдельные специалисты.</p>'),
(3, '', 5, 'Що таке автоматизація підприємства або бізнесу?', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Автоматизація</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">комплекс</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">організаційних</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">заходів</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">і</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">застосування</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">програмно</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">апаратних</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">рішень</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">спрямованих</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">на</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">зниження</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">участі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">людини</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">при</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">виконанні</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">типових</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">або</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">складних</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">виробничих</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">або</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">бізнес</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">операцій</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">.</span></p>'),
(3, '', 6, 'Чим відрізняються між собою програма, система і комплексне рішення?', '<p><span class=\"VIiyi\" lang=\"uk\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Програма - це інструкція дає зрозуміти комп\'ютерів або електронних пристроїв, які послідовні дії необхідно виконати для отримання певного результату. Вона може бути простою або складною. Система - це комплекс взаємопов\'язаних програм і пристроїв для забезпечення виконання складних, часто вже не послідовних операцій або навпаки, коли операції необхідно пов\'язати і вибудувати чітку послідовність операцій і передачу від одного пристрою до іншого. Комплексне рішення - це об\'єднання декількох систем, програм і пристроїв в одну інформаційну середу, де необхідно вибудувати послідовність виконання для безлічі операцій, які виконують різні відділи, департаменти і окремі фахівці.</span></span></p>');

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
(1, '', 1, 'Turbo Site', 'Turbo Site - готовое решение для создания сайта.', 'Turbo Site - это готовое решение, которое позволит вам создать свой мультиязычный, простой и адаптивный сайт на  TurboCMS  за 24 часа. Данное решение не содержит ничего лишнего, но при этом тщательно проработано до мелочей. Готовый сайт-визитка отлично подойдет для компаний, которые предоставляют услуги в различных сегментах.', 'Turbo Site', '<p>Turbo Site - это готовое решение, которое позволит вам создать свой мультиязычный, простой и адаптивный сайт на <a href=\"https://turbo-cms.com/\">TurboCMS</a> за 24 часа. Данное решение не содержит ничего лишнего, но при этом тщательно проработано до мелочей. Готовый сайт-визитка отлично подойдет для компаний, которые предоставляют услуги в различных сегментах.&nbsp;</p>', 'Главная'),
(2, '', 1, 'Turbo Site', 'Turbo Site is a turnkey solution for website creation.', 'Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on   TurboCMS   in 24 hours. This solution does not contain anything superfluous, but at the same time it is carefully worked out to the smallest detail. A ready-made business card site is perfect for companies that provide services in various segments.', 'Turbo Site', '<p>Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on <a href=\"https://turbo-cms.com/\"> TurboCMS </a> in 24 hours. This solution does not contain anything superfluous, but at the same time it is carefully worked out to the smallest detail. A ready-made business card site is perfect for companies that provide services in various segments.</p>', 'Home'),
(3, '', 1, 'Turbo Site', 'Turbo Site - готове рішення для створення сайту.', 'Turbo Site - це готове рішення, яке дозволить вам створити свій багатомовний, простий і адаптивний сайт на Turbo CMS   за 24 години. Дане рішення не містить нічого зайвого, але при цьому ретельно опрацьовано до дрібниць. Готовий сайт-візитка відмінно підійде для компаній, які надають послуги в різних сегментах.', 'Turbo Site', '<p>Turbo Site - це готове рішення, яке дозволить вам створити свій багатомовний, простий і адаптивний сайт на <a href=\"https://turbo-cms.com/\"> TurboCMS </a> за 24 години. Дане рішення не містить нічого зайвого, але при цьому ретельно опрацьовано до дрібниць. Готовий сайт-візитка відмінно підійде для компаній, які надають послуги в різних сегментах.</p>', 'Головна'),
(1, '', 3, '404', 'Страница не найдена', 'Страница не найдена', 'Страница не найдена', '<p>Страница не найдена</p>', 'Страница не найдена'),
(2, '', 3, '404', 'Page not found', 'Page not found', 'Page not found', '<p>Page not found</p>', 'Page not found'),
(3, '', 3, '404', 'Сторінка не знайдена', 'Сторінка не знайдена', 'Сторінка не знайдена', '<p>Сторінка не знайдена</p>', 'Сторінка не знайдена'),
(1, '', 4, 'Карта сайта', 'Карта сайта', 'Карта сайта', 'Карта сайта', '', 'Карта сайта'),
(2, '', 4, 'Sitemap', 'Sitemap', 'Sitemap', 'Sitemap', '', 'Sitemap'),
(3, '', 4, 'Карта сайту', 'Карта сайту', 'Карта сайту', 'Карта сайту', '', 'Карта сайту'),
(3, '', 19, 'Проекти', 'Проекти', '', 'Проекти', '', 'Проекти'),
(2, '', 21, 'About company', 'About company', 'It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions.', 'About company', '<p>It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions. The varied and rich experience of the beginning of the daily work on the formation of the position ensures a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h2>Our activities</h2>\r\n<p>The task of the organization, in particular the new model of organizational activity, allows you to carry out important tasks for the development of a personnel training system, meets the urgent needs. Thus, the implementation of the planned targets is an interesting experiment in testing the development model.</p>\r\n<p>The significance of these problems is so obvious that the existing structure of the organization contributes to the preparation and implementation of systems of mass participation. Comrades! implementation of the planned targets contributes to the preparation and implementation of participatory systems. Everyday practice shows that the strengthening and development of the structure allows you to carry out important tasks for the development of further directions of development. Diverse and rich experience, the new organizational model allows for important tasks in developing the positions taken by participants in relation to the assigned tasks.</p>\r\n<h3>Company Values ​​</h3>\r\n<p>One should not, however, forget that the new model of organizational activity allows you to perform important tasks for the development of a personnel training system, meets urgent needs. Likewise, the strengthening and development of the structure requires us to analyze the appropriate activation conditions. Everyday practice shows that constant quantitative growth and the scope of our activity to a large extent determines the creation of directions for progressive development. Ideological considerations of a higher order, as well as the further development of various forms of activity, allow us to carry out important tasks to develop further directions of development. Thus, the framework and place of training of personnel contributes to the preparation and implementation of appropriate activation conditions.</p>\r\n<p>Likewise, the scope and location of staff training allows for important tasks in the development of participatory systems. Likewise, the implementation of the planned targets entails the process of implementation and modernization of systems of mass participation. A varied and rich experience, the further development of various forms of activity contributes to the preparation and implementation of the positions taken by the participants in relation to the tasks set.</p>', 'About company'),
(1, '', 21, 'О компании', 'О компании', 'Не следует, однако забывать, что начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации существенных финансовых и административных условий.', 'О компании', '<p>Не следует, однако забывать, что начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации существенных финансовых и административных условий. Разнообразный и богатый опыт начало повседневной работы по формированию позиции обеспечивает широкому кругу (специалистов) участие в формировании соответствующий условий активизации. Равным образом консультация с широким активом позволяет оценить значение модели развития.</p>\r\n<h2>Наша деятельность</h2>\r\n<p>Задача организации, в особенности же новая модель организационной деятельности позволяет выполнять важные задания по разработке системы обучения кадров, соответствует насущным потребностям. Таким образом реализация намеченных плановых заданий представляет собой интересный эксперимент проверки модели развития.</p>\r\n<p>Значимость этих проблем настолько очевидна, что сложившаяся структура организации способствует подготовки и реализации систем массового участия. Товарищи! реализация намеченных плановых заданий способствует подготовки и реализации систем массового участия. Повседневная практика показывает, что укрепление и развитие структуры позволяет выполнять важные задания по разработке дальнейших направлений развития. Разнообразный и богатый опыт новая модель организационной деятельности позволяет выполнять важные задания по разработке позиций, занимаемых участниками в отношении поставленных задач.</p>\r\n<h3>Ценности компании</h3>\r\n<p>Не следует, однако забывать, что новая модель организационной деятельности позволяет выполнять важные задания по разработке системы обучения кадров, соответствует насущным потребностям. Равным образом укрепление и развитие структуры требуют от нас анализа соответствующий условий активизации. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности в значительной степени обуславливает создание направлений прогрессивного развития. Идейные соображения высшего порядка, а также дальнейшее развитие различных форм деятельности позволяет выполнять важные задания по разработке дальнейших направлений развития. Таким образом рамки и место обучения кадров способствует подготовки и реализации соответствующий условий активизации.</p>\r\n<p>Равным образом рамки и место обучения кадров позволяет выполнять важные задания по разработке систем массового участия. Равным образом реализация намеченных плановых заданий влечет за собой процесс внедрения и модернизации систем массового участия. Разнообразный и богатый опыт дальнейшее развитие различных форм деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач.</p>', 'О компании'),
(3, '', 20, 'Компанія', 'Компанія', 'У питаннях сервісу і обслуговування клієнтів завжди є до чого прагнути. Висока якість сервісу з точки зору організації може не працювати з конкретним клієнтом і його специфічними питаннями. У такому випадку варто звертати увагу на стандарти обслуговування, а не йти на поводу у лояльності клієнта.', 'Компанія', '<p>У питаннях сервісу і обслуговування клієнтів завжди є до чого прагнути. Висока якість сервісу з точки зору організації може не працювати з конкретним клієнтом і його специфічними питаннями. У такому випадку варто звертати увагу на стандарти обслуговування, а не йти на поводу у лояльності клієнта. Сервісне обслуговування повинно працювати як конвеєр: точно, швидко, ефективно і всюди однаково. Ви ніколи не можете знати заздалегідь чи повернеться клієнт завтра, чи змогла компанія вирішити його проблеми, чи задоволений він обслуговуванням. Це не повинно впливати на якість вашого сервісу.</p>\r\n<p>Моделі такого обслуговування зустрічаються у великих компаніях, де всі сили спрямовані на автоматизацію процесів, в тому числі і клієнтського сервісу. Ще недавно це було їх конкурентною перевагою, але сьогодні, коли вимоги споживача до індивідуального обслуговування зростають, це стало їх слабким місцем.</p>\r\n<p>&nbsp;Поширеною практикою стало використання автоінформатора. Записаний голос начебто ввічливий, але не викликає мотивації чекати відповіді справжню людину 40 хвилин. Індивідуальне увагу до кожного клієнта стає шляхом до успіху і перемоги над конкурентами.</p>', 'Компанія'),
(1, '', 20, 'Компания', 'Компания', 'В вопросах сервиса и обслуживания клиентов всегда есть к чему стремиться. Высокое качество сервиса с точки зрения организации может не работать с конкретным клиентом и его специфичными вопросами.', 'Компания', '<p>В вопросах сервиса и обслуживания клиентов всегда есть к чему стремиться. Высокое качество сервиса с&nbsp;точки зрения организации может не работать с конкретным клиентом и его специфичными вопросами. В таком случае стоит обращать внимание на&nbsp;стандарты обслуживания, а не идти на поводу у лояльности клиента. Сервисное обслуживание должно работать как конвейер: точно, быстро, эффективно и везде одинаково. Вы никогда не можете знать заранее вернется ли клиент завтра, смогла ли компания решить его проблемы, доволен ли он обслуживанием. Это не должно влиять на качество вашего сервиса.</p>\r\n<p>Модели такого обслуживания встречаются в&nbsp;больших компаниях, где все силы направлены на автоматизацию&nbsp;процессов, в том числе и клиентского сервиса. Еще недавно это было их конкурентным преимуществом, но сегодня, когда требования потребителя&nbsp;к индивидуальному обслуживанию растут, это стало их слабым местом.</p>\r\n<p>Распространенной практикой стало использование автоинформатора. Записанный голос вроде бы вежлив, но не вызывает мотивации ждать ответа настоящего человека 40 минут. Индивидуальное внимание к каждому клиенту становится путем к успеху и победе над конкурентами.</p>', 'Компания'),
(2, '', 20, 'Company', 'Company', 'In matters of service and customer service, there is always something to strive for. High quality service from the point of view of the organization may not work with a specific client and his specific issues. In this case, you should pay attention to the service standards, and not follow the lead of the client\'s loyalty.', 'Company', '<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">In matters of service and customer service, there is always something to strive for. High quality service from the point of view of the organization may not work with a specific client and his specific issues. In this case, you should pay attention to the service standards, and not follow the lead of the client\'s loyalty. Service should work like a conveyor belt: accurate, fast, efficient and the same everywhere. You can never know in advance whether the client will return tomorrow, whether the company was able to solve his problems, whether he is satisfied with the service.</span></span></p>\r\n<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\"> This shouldn\'t affect the quality of your service. Models of such service are found in large companies, where all efforts are directed to the automation of processes, including customer service. Until recently, this was their competitive advantage, but today, when consumer demands for personalized service are growing, this has become their weak point. </span></span></p>\r\n<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">The use of an autoinformer has become a common practice. The recorded voice seems to be polite, but does not cause motivation to wait for a response from a real person for 40 minutes. Individual attention to each client becomes the path to success and victory over competitors.</span></span></p>', 'Company'),
(1, '', 13, 'Блог', 'Блог', '', 'Блог', '', 'Блог'),
(2, '', 13, 'Blog', 'Blog', '', 'Blog', '', 'Blog'),
(3, '', 13, 'Блог', 'Блог', '', 'Блог', '', 'Блог'),
(1, '', 14, 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"ru\" data-language-to-translate-into=\"uk\" data-phrase-index=\"0\" data-number-of-phrases=\"2\"><span class=\"Q4iAWc\">Киев, ул.</span></span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"ru\" data-language-to-translate-into=\"uk\" data-phrase-index=\"1\" data-number-of-phrases=\"2\"><span class=\"Q4iAWc\">Глубочицкая, </span></span>32б, 02000</p>\r\n<p>Телефон: (095) 545-54-54</p>\r\n<p><iframe style=\"border: 0;\" tabindex=\"0\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1269.9307677918514!2d30.49195294945491!3d50.46230305803582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x84a28f327eb7dc52!2z0JDRgNC10L3QtNCwINC-0YTQuNGB!5e0!3m2!1sru!2sua!4v1609513285692!5m2!1sru!2sua\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" aria-hidden=\"false\"></iframe></p>', 'Контакты'),
(2, '', 14, 'Contacts', 'Contacts', 'Contacts', 'Contacts', '<p>41 West 40th Street New York, NY</p>\r\n<p>Phone: (210) 876-5432</p>\r\n<p><iframe style=\"border: 0;\" tabindex=\"0\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4399.518506840664!2d-73.97964170435294!3d40.75394620817656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259aa94a61b4f%3A0x8ebce7fe1262c134!2zNDEgVyA0MHRoIFN0LCBOZXcgWW9yaywgTlkgMTAwMTgsINCh0KjQkA!5e0!3m2!1sru!2sua!4v1609512981791!5m2!1sru!2sua\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" aria-hidden=\"false\"></iframe></p>', 'Contacts'),
(3, '', 14, 'Контакти', 'Контакти', 'Контакти', 'Контакти', '<p>Київ, вул. Глибочицька, 32б, 02000</p>\r\n<p>Телефон: (095) 545-54-54</p>\r\n<p><iframe style=\"border: 0;\" tabindex=\"0\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1269.9307677918514!2d30.49195294945491!3d50.46230305803582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x84a28f327eb7dc52!2z0JDRgNC10L3QtNCwINC-0YTQuNGB!5e0!3m2!1sru!2sua!4v1609513285692!5m2!1sru!2sua\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" aria-hidden=\"false\"></iframe></p>', 'Контакти'),
(2, '', 19, 'Projects', 'Projects', '', 'Projects', '', 'Projects'),
(1, '', 19, 'Проекты', 'Проекты', '', 'Проекты', '', 'Проекты'),
(1, '', 16, 'Статьи', 'Статьи', '', 'Статьи', '', 'Статьи'),
(2, '', 16, 'Articles', 'Articles', '', 'Articles', '', 'Articles'),
(3, '', 16, 'Статті', 'Статті', '', 'Статті', '', 'Статті'),
(1, '', 27, 'Консалтинг', 'Консалтинг', 'Каждая компания и бизнес стремится развиваться и завоевывать свою часть рынка. Но далеко не всегда это получается без огромных вложений и только собственными силами, особенно это касается такого времени, когда в экономике страны есть проблемы. ', 'Консалтинг', '<p>Каждая компания и бизнес стремится развиваться и завоевывать свою часть рынка. Но далеко не всегда это получается без огромных вложений и только собственными силами, особенно это касается такого времени, когда в экономике страны есть проблемы.</p>\r\n<p>Чтобы оставаться популярной и конкурентоспособной фирмой, нужно постоянно меняться, развивать стратегию и тактику. И если внутри компании нет ресурсов для этого, то приходится пользоваться внешними услугами &mdash; консалтингом. Что такое консалтинговые услуги? Какие виды консалтинга бывают? В чем его преимущества и недостатки?</p>\r\n<h2 style=\"text-align: center;\">Что такое консалтинговые услуги и зачем они нужны?</h2>\r\n<p>Даже крупные международные компании часто сталкиваются с трудностями в работе. Это может быть связано как с внешними факторами, так и с внутренними проблемами. Чаще всего проблемы возникают из-за колебаний цен на рынке, появлением или уходом конкурента, но в фирмах бывают сложности и с самими отношениями между сотрудниками внутри предприятия. Из-за этого <strong>внутри фирмы нет возможности и сил бороться за свое выживание, поэтому отличным решением в таком случае будет воспользоваться консалтинговыми услугами</strong>.</p>\r\n<blockquote>\r\n<p><strong>Консалтинг </strong>&mdash; это вид услуг, который по сути означает консультирование. Одно предприятие или человек предоставляет услуги по решению определенных задач другой фирме.</p>\r\n</blockquote>\r\n<p>Вопросы которые можно решить с помощью консалтинга очень разнообразны. Иногда это может быть целый комплекс задач, а иногда он предоставляется только в узкой области. Например, бухгалтерский консалтинг &mdash; это привлечение специализированной компании или сотрудника для решения проблем, связанных с бухгалтерией. Именно поэтому, когда говорят о понятии консалтинга, то четкого определения нет.</p>\r\n<p><strong>Консалтинговые услуги &mdash; это решение организационных или управленческих задач внутри фирмы при помощи внешних специалистов. </strong>Профессиональные консультанты в определенной области приглашаются на работу в компанию. Специалисты оценивают состояние, видят причину проблем и создают систему решения этих ошибок.</p>\r\n<p>Компания обращается к консалтингу не только в том случае, когда испытывает трудности в развитии. Часто руководитель принимает решение о расширении, поэтому требуется срочно увеличить количество специалистов. Но даже если нанимать их на работу, то необходимо еще будет потратить месяцы на обучение, контроль выполнения задач, а только после этого ставить перед ними сложные задания. А в развивающейся компании нет столько времени.</p>\r\n<blockquote>\r\n<p><strong>Консалтинговые фирмы </strong>&mdash; это специализированные компании, которые предоставляют услуги консалтинга. Там может работать штат сотрудников, которые одновременно сотрудничают с разными организациями.</p>\r\n</blockquote>\r\n<h2>Виды консалтинговых услуг</h2>\r\n<ul>\r\n<li><strong>IT-консалтинг</strong> &mdash; один из самых новых и самых востребованных видов консалтинга в Украине. Это консультирование и помощь в сфере информационных технологий. По сути, IT-консалтинг решает все вопросы, которые связаны с интернетом и информационными бизнес-процессами.</li>\r\n<li><strong>Маркетинговый консалтинг.</strong> Далеко не все компании могут позволить себе открывать маркетинговый отдел или нанимать профессионального сотрудника, который будет решать эти вопросы. А заниматься рекламой сегодня необходимо, потому что только так можно удержаться на рынке и быть лидером. Во многих случаях, услуги маркетингового консалтинга предоставляются вместе с IT-консалтингом.</li>\r\n<li><strong>Юридический консалтинг</strong> связан с решением текущих задач, которые имеют отношение к закону государства. Это позволит правильно оценивать деятельность фирмы и принимать наиболее выгодные решения. Особенно важно юридическое консультирование во время расширения предприятия, когда нужно будет открывать новые филии или заключать договора с посредниками, поставщиками.</li>\r\n<li><strong>Финансовый консалтинг</strong> &mdash; услуги, которые связаны с эффективным управлением средствами, распределением бюджета внутри фирмы, а также правильными внешними вложениями.</li>\r\n<li><strong>Кадровый консалтинг</strong> берет на себя налаживание внутренних отношений между сотрудниками, подбор новых специалистов, которые будут соответствовать требованиям компании.</li>\r\n</ul>\r\n<p>Основное преимущество услуг консалтинга в том, что <strong>руководитель компании может не открывать новые вакансии, не искать профессиональных сотрудников.</strong> Это занимает много времени, сил, а также финансовых вложений. Намного проще будет воспользоваться услугами уже созданной фирмы, которая имеет штат опытных специалистов.</p>\r\n<p>Иногда взгляд со стороны на ситуацию внутри компании помогает увидеть простые причины сложностей и пути их решения. Именно поэтому консалтинговые услуги настолько популярные во всем мире.</p>', 'Консалтинг'),
(1, '', 18, 'Поиск', 'Поиск', '', 'Поиск', '', 'Поиск'),
(2, '', 18, 'Search', 'Search', '', 'Search', '', 'Search'),
(3, '', 18, 'Пошук', 'Пошук', '', 'Пошук', '', 'Пошук'),
(3, '', 21, 'Про компанію', 'Про компанію', 'Не слід, однак забувати, що початок повсякденної роботи по формуванню позиції тягне за собою процес впровадження і модернізації істотних фінансових і адміністративних умов.', 'Про компанію', '<p>Не слід, однак забувати, що початок повсякденної роботи по формуванню позиції тягне за собою процес впровадження і модернізації істотних фінансових і адміністративних умов. Різноманітний і багатий досвід початок повсякденної роботи по формуванню позиції забезпечує широкому колу (фахівців) участь у формуванні відповідний умов активізації. Так само консультація з широким активом дозволяє оцінити значення моделі розвитку.</p>\r\n<h2>Наша діяльність</h2>\r\n<p>Завдання організації, особливо ж нова модель організаційної діяльності дозволяє виконувати важливі завдання по розробці системи навчання кадрів, відповідає нагальним потребам. Таким чином реалізація намічених планових завдань є цікавий експеримент перевірки моделі розвитку.</p>\r\n<p>Значимість цих проблем настільки очевидна, що склалася структура організації сприяє підготовки та реалізації систем масової участі. Товариші! реалізація намічених планових завдань сприяє підготовки та реалізації систем масової участі. Повсякденна практика показує, що зміцнення та розвиток структури дозволяє виконувати важливі завдання по розробці подальших напрямків розвитку. Різноманітний і багатий досвід нова модель організаційної діяльності дозволяє виконувати важливі завдання по розробці позицій, займаних учасниками щодо поставлених завдань.</p>\r\n<h3>Цінності компанії</h3>\r\n<p>Не слід, однак забувати, що нова модель організаційної діяльності дозволяє виконувати важливі завдання по розробці системи навчання кадрів, відповідає нагальним потребам. Так само зміцнення і розвиток структури вимагають від нас аналізу відповідний умов активізації. Повсякденна практика показує, що постійний кількісний ріст і сфера нашої активності в значній мірі обумовлює створення напрямків прогресивного розвитку. Ідейні міркування вищого порядку, а також подальший розвиток різних форм діяльності дозволяє виконувати важливі завдання по розробці подальших напрямків розвитку. Таким чином рамки і місце навчання кадрів сприяє підготовки та реалізації відповідний умов активізації.</p>\r\n<p>Так само рамки і місце навчання кадрів дозволяє виконувати важливі завдання по розробці систем масової участі. Так само реалізація намічених планових завдань тягне за собою процес впровадження і модернізації систем масової участі. Різноманітний і багатий досвід подальший розвиток різних форм діяльності сприяє підготовки та реалізації позицій, займаних учасниками щодо поставлених завдань.</p>', 'Про компанію'),
(1, '', 22, 'История компании', 'История компании', 'Не следует, однако забывать, что начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации существенных финансовых и административных условий. ', 'История компании', '<p>Не следует, однако забывать, что начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации существенных финансовых и административных условий. Разнообразный и богатый опыт начало повседневной работы по формированию позиции обеспечивает широкому кругу (специалистов) участие в формировании соответствующий условий активизации. Равным образом консультация с широким активом позволяет оценить значение модели развития.</p>\r\n<h3>1990 образование компании</h3>\r\n<p>Не следует, однако забывать, что новая модель организационной деятельности позволяет выполнять важные задания по разработке системы обучения кадров, соответствует насущным потребностям.</p>\r\n<h3>1996 строительство филиалов в крупных городах</h3>\r\n<p>Разнообразный и богатый опыт начало повседневной работы по формированию позиции обеспечивает широкому кругу (специалистов) участие в формировании соответствующий условий активизации. Равным образом консультация с широким активом позволяет оценить значение модели развития.</p>\r\n<h3>2010 выход на IPO</h3>\r\n<p>Не следует, однако забывать, что начало повседневной работы по формированию позиции влечет за собой процесс внедрения и модернизации существенных финансовых и административных условий. Разнообразный и богатый опыт начало повседневной работы по формированию позиции обеспечивает широкому кругу (специалистов) участие в формировании соответствующий условий активизации. Равным образом консультация с широким активом позволяет оценить значение модели развития.</p>\r\n<h3>2018 создание нового сайта компании</h3>\r\n<p>Новый дизайн, новые возможности.</p>', 'История компании'),
(2, '', 22, 'History of the company', 'History of the company', 'It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions.', 'History of the company', '<p>It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions. The varied and rich experience of the beginning of the daily work on the formation of the position ensures a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h3>1990 company formation</h3>\r\n<p>Do not, however, forget that the new model of organizational activity allows you to perform important tasks for the development of a personnel training system, meets urgent needs.</p>\r\n<h3>1996 construction of branches in large cities</h3>\r\n<p>Diverse and rich experience, the beginning of the daily work on the formation of a position provides a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h3>2010 IPO</h3>\r\n<p>It should not be forgotten, however, that starting the day-to-day job of positioning entails a process of introducing and modernizing significant financial and administrative conditions. The varied and rich experience of the beginning of the daily work on the formation of the position ensures a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h3>2018 creation of a new company website</h3>\r\n<p>New design, new features.</p>', 'History of the company'),
(3, '', 22, 'Історія компанії', 'Історія компанії', 'Не слід, однак забувати, що початок повсякденної роботи по формуванню позиції тягне за собою процес впровадження і модернізації істотних фінансових і адміністративних умов. ', 'Історія компанії', '<p>Не слід, однак забувати, що початок повсякденної роботи по формуванню позиції тягне за собою процес впровадження і модернізації істотних фінансових і адміністративних умов. Різноманітний і багатий досвід початок повсякденної роботи по формуванню позиції забезпечує широкому колу (фахівців) участь у формуванні відповідний умов активізації. Так само консультація з широким активом дозволяє оцінити значення моделі розвитку.</p>\r\n<h3>1990 освіту компанії</h3>\r\n<p>Не слід, однак забувати, що нова модель організаційної діяльності дозволяє виконувати важливі завдання по розробці системи навчання кадрів, відповідає нагальним потребам.</p>\r\n<h3>1996 будівництво філій в великих містах</h3>\r\n<p>Різноманітний і багатий досвід початок повсякденної роботи по формуванню позиції забезпечує широкому колу (фахівців) участь у формуванні відповідний умов активізації. Так само консультація з широким активом дозволяє оцінити значення моделі розвитку.</p>\r\n<h3>2010 вихід на IPO</h3>\r\n<p>Не слід, однак забувати, що початок повсякденної роботи по формуванню позиції тягне за собою процес впровадження і модернізації істотних фінансових і адміністративних умов. Різноманітний і багатий досвід початок повсякденної роботи по формуванню позиції забезпечує широкому колу (фахівців) участь у формуванні відповідний умов активізації. Так само консультація з широким активом дозволяє оцінити значення моделі розвитку.</p>\r\n<h3>2018 створення нового сайту компанії</h3>\r\n<p>Новий дизайн, нові можливості.</p>', 'Історія компанії'),
(1, '', 23, 'Дизайн интерьеров', 'Дизайн интерьеров', '', 'Дизайн интерьеров', '', 'Дизайн интерьеров'),
(2, '', 23, 'Interior design', 'Interior design', '', 'Interior design', '', 'Interior design'),
(3, '', 23, 'Дизайн інтер\'єрів', 'Дизайн інтер\'єрів', '', 'Дизайн інтер\'єрів', '', 'Дизайн інтер\'єрів'),
(1, '', 24, 'Управление проектами', 'Управление проектами', '', 'Управление проектами', '', 'Управление проектами'),
(2, '', 24, 'Project management ', 'Project management ', '', 'Project management ', '', 'Project management '),
(3, '', 24, 'Управління проектами ', 'Управление проектами', '', 'Управление проектами', '', 'Управление проектами'),
(1, '', 25, 'Бизнес-советы', 'Бизнес-советы', '', 'Бизнес-советы', '', 'Бизнес-советы'),
(2, '', 25, 'Business advice', 'Business advice', '', 'Business advice', '', 'Business advice'),
(3, '', 25, 'Бізнес-поради', 'Бізнес-поради', '', 'Бізнес-поради', '', 'Бізнес-поради'),
(1, '', 26, 'Повышение продаж', 'Повышение продаж', '', 'Повышение продаж', '', 'Повышение продаж'),
(2, '', 26, 'Increased sales', 'Increased sales', '', 'Increased sales', '', 'Increased sales'),
(3, '', 26, 'Підвищення продажів', 'Підвищення продажів', '', 'Підвищення продажів', '', 'Підвищення продажів'),
(2, '', 27, 'Consulting ', 'Consulting ', 'Every company and business strives to develop and conquer its part of the market. But this is not always possible without huge investments and only on our own, especially when there are problems in the country\'s economy.', 'Consulting ', '<p>Every company and business strives to develop and conquer its part of the market. But this is not always possible without huge investments and only on our own, especially when there are problems in the country\'s economy.</p>\r\n<p>To remain a popular and competitive company, you need to constantly change, develop strategy and tactics. And if there are no resources inside the company for this, then you have to use external services &amp; mdash; consulting. What are consulting services? What types of consulting are there? What are its advantages and disadvantages?</p>\r\n<h2 style=\"text-align: center;\">What are consulting services and why are they needed?</h2>\r\n<p>Even large international companies often face difficulties in their work. This can be due to both external factors and internal problems. Most often, problems arise due to price fluctuations in the market, the appearance or departure of a competitor, but in firms there are difficulties with the very relations between employees within the enterprise. Because of this, <strong> within the company there is no opportunity and strength to fight for its survival, so an excellent solution in this case would be to use consulting services </strong>.</p>\r\n<blockquote>\r\n<p>Consulting it is a type of service that essentially means consulting. One company or person provides services for solving certain problems to another company.</p>\r\n</blockquote>\r\n<p>The questions that can be solved with the help of consulting are very diverse. Sometimes it can be a whole complex of tasks, and sometimes it is provided only in a narrow area. For example, accounting consulting &amp; mdash; it is the involvement of a specialized company or employee to solve problems related to accounting. That is why, when talking about the concept of consulting, there is no clear definition.</p>\r\n<p><strong> Consulting services it is the solution of organizational or management problems within the company with the help of external specialists. </strong> Professional consultants in a specific field are invited to work in the company. Experts assess the condition, see the cause of problems and create a system for solving these errors.</p>\r\n<p>The company turns to consulting not only when it is experiencing difficulties in development. Often the manager makes a decision to expand, so an urgent need to increase the number of specialists. But even if you hire them for work, you will still need to spend months on training, monitoring tasks, and only after that set complex tasks for them. And a growing company doesn\'t have that much time.</p>\r\n<blockquote>\r\n<p>Consulting firms they are specialized companies that provide consulting services. There may be a staff of employees who simultaneously cooperate with different organizations.</p>\r\n</blockquote>\r\n<h2>Types of Consulting Services</h2>\r\n<ul>\r\n<li><strong> IT Consulting </strong> &amp; mdash; one of the newest and most demanded types of consulting in Ukraine. This is advice and assistance in the field of information technology. In fact, IT consulting solves all issues related to the Internet and information business processes.</li>\r\n<li><strong> Marketing Consulting. </strong> Not all companies can afford to open a marketing department or hire a professional employee to deal with these issues. And it is necessary to engage in advertising today, because this is the only way to stay on the market and be a leader. In many cases, marketing consulting services are provided along with IT consulting.</li>\r\n<li><strong> Legal consulting </strong> is associated with solving current problems that are related to the law of the state. This will allow you to correctly assess the activities of the company and make the most beneficial decisions Legal advice is especially important during the expansion of the company, when it will be necessary to open new branches or conclude contracts with intermediaries, suppliers.</li>\r\n<li><strong> Financial Consulting </strong> &amp; mdash; services that are associated with effective management of funds, budget allocation within the company, as well as correct external investments.</li>\r\n<li><strong> HR consulting </strong> undertakes to establish internal relations between employees, recruit new specialists who will meet the company\'s requirements.</li>\r\n</ul>\r\n<p>The main advantage of consulting services is that the <strong> head of the company may not open new vacancies, not look for professional employees. </strong> It takes a lot of time, effort, and also financial investments. It will be much easier to use the services of an already established company, which has a staff of experienced specialists.</p>\r\n<p>Sometimes looking from the outside at the situation within the company helps to see the simple reasons for difficulties and ways to solve them. That is why consulting services are so popular all over the world.</p>', 'Consulting '),
(3, '', 27, 'Консалтинг', 'Консалтинг', 'Кожна компанія і бізнес прагне розвиватися і завойовувати свою частку ринку. Але далеко не завжди це виходить без величезних вкладень і тільки власними силами, особливо це стосується такого часу, коли в економіці країни є проблеми.', 'Консалтинг', '<p>Кожна компанія і бізнес прагне розвиватися і завойовувати свою частку ринку. Але далеко не завжди це виходить без величезних вкладень і тільки власними силами, особливо це стосується такого часу, коли в економіці країни є проблеми.</p>\r\n<p>Щоб залишатися популярною і конкурентоспроможною фірмою, потрібно постійно змінюватися, розвивати стратегію і тактику. І якщо всередині компанії немає ресурсів для цього, то доводиться користуватися зовнішніми послугами - консалтингом. Що таке консалтингові послуги? Які види консалтингу бувають? У чому його переваги і недоліки?</p>\r\n<h2 style=\"text-align: center;\">Що таке консалтингові послуги і навіщо вони потрібні?</h2>\r\n<p>Навіть великі міжнародні компанії часто стикаються з труднощами в роботі. Це може бути пов\'язано як із зовнішніми факторами, так і з внутрішніми проблемами. Найчастіше проблеми виникають через коливання цін на ринку, появою або відходом конкурента, але в фірмах бувають труднощі і з самими відносинами між співробітниками всередині підприємства. Через це <strong> всередині фірми немає можливості і сил боротися за своє виживання, тому відмінним рішенням в такому випадку буде скористатися консалтинговими послугами </strong>.</p>\r\n<blockquote>\r\n<p><strong> Консалтинг - це вид послуг, який по суті означає консультування. Одне підприємство або людина надає послуги по вирішенню певних завдань іншій фірмі. </strong></p>\r\n</blockquote>\r\n<p>Питання які можна вирішити за допомогою консалтингу дуже різноманітні. Іноді це може бути цілий комплекс завдань, а іноді він надається тільки у вузькій області. Наприклад, бухгалтерський консалтинг - це залучення спеціалізованої компанії або співробітника для вирішення проблем, пов\'язаних з бухгалтерією. Саме тому, коли говорять про поняття консалтингу, то чіткого визначення немає.</p>\r\n<p><strong> консалтингові - це рішення організаційних або управлінських завдань всередині фірми за допомогою зовнішніх фахівців. </strong> Професійні консультанти в певній галузі запрошуються на роботу в компанію. Фахівці оцінюють стан, бачать причину проблем і створюють систему вирішення цих помилок.</p>\r\n<p>Компанія звертається до консалтингу не тільки в тому випадку, коли відчуває труднощі у розвитку. Часто керівник приймає рішення про розширення, тому потрібно терміново збільшити кількість фахівців. Але навіть якщо наймати їх на роботу, то необхідно ще буде витратити місяці на навчання, контроль виконання завдань, а тільки після цього ставити перед ними складні завдання. А в компанії, що розвивається немає стільки часу.</p>\r\n<blockquote>\r\n<p><strong> Послуги фірми - це спеціалізовані компанії, які надають послуги консалтингу. Там може працювати штат співробітників, які одночасно співпрацюють з різними організаціями. </strong></p>\r\n</blockquote>\r\n<h2>Види консалтингових послуг</h2>\r\n<ul>\r\n<li><strong> IT-консалтинг </strong> - один з найновіших і найбільш затребуваних видів консалтингу в Україні. Це консультування і допомогу в сфері інформаційних технологій. По суті, IT-консалтинг вирішує всі питання, які пов\'язані з інтернетом і інформаційними бізнес-процесами.</li>\r\n<li><strong> Маркетинговий консалтинг. </strong> Далеко не всі компанії можуть дозволити собі відкривати маркетинговий відділ або наймати професійного співробітника, який буде вирішувати ці питання. А займатися рекламою сьогодні необхідно, тому що тільки так можна утриматися на ринку і бути лідером. У багатьох випадках, послуги маркетингового консалтингу надаються разом з IT-консалтингом.</li>\r\n<li><strong> Юридичний консалтинг </strong> пов\'язаний з вирішенням поточних завдань, які мають відношення до закону держави. Це дозволить правильно оцінювати діяльність фірми і приймати найбільш вигідні рішення. Особливо важливо юридичне консультування під час розширення підприємства, коли потрібно буде відкривати нові філії або укладати договори з посередниками, постачальниками.</li>\r\n<li><strong> Фінансовий консалтинг </strong> - послуги, які пов\'язані з ефективним управлінням коштами, розподілом бюджету всередині фірми, а також правильними зовнішніми вкладеннями.</li>\r\n<li><strong> Кадровий консалтинг </strong> бере на себе налагодження внутрішніх відносин між співробітниками, підбір нових фахівців, які будуть відповідати вимогам компанії.</li>\r\n</ul>\r\n<p>Основна перевага послуг консалтингу в тому, що <strong> керівник компанії може не відкривати нові вакансії, не шукати професійних співробітників. </strong> Це займає багато часу, сил, а також фінансових вкладень. Набагато простіше буде скористатися послугами створеної фірми, яка має штат досвідчених фахівців.</p>\r\n<p>Іноді погляд з боку на ситуацію всередині компанії допомагає побачити прості причини складнощів і шляхи їх вирішення. Саме тому консалтингові послуги настільки популярні в усьому світі.</p>', 'Консалтинг'),
(1, '', 28, 'Аудит', 'Аудит', 'Наша команда профессионалов предоставляет аудиторские услуги. Мы оценим состояние вашей финансовой отчетности, подтвердим достоверность информации и определим ваши возможности в сфере бизнеса. ', 'Аудит', '<h2>Независимая проверка Вашего бизнеса</h2>\r\n<p>Наша команда профессионалов предоставляет аудиторские услуги. Мы оценим состояние вашей финансовой отчетности, подтвердим достоверность информации и определим ваши возможности в сфере бизнеса.</p>\r\n<h2>Виды аудита</h2>\r\n<p class=\"for-desktops for-tablets\"><strong>Экспресс-аудит</strong><br />Наши аудиторы проводят выборочную проверку в максимально сжатые сроки (до 5 рабочих дней) отдельных участков учета или периодов с целью выявления ошибок, которые могут появиться в учете предприятия и вызвать негативные последствия, например, штрафные санкции.</p>\r\n<p class=\"for-desktops for-tablets\"><strong>Налоговый аудит</strong><br />Поможем обеспечить финансовую безопасность предприятия, путем проведения независимой проверки разных видов налогового учета. Кроме того, наши специалисты помогут подготовиться к любой возможной проверке налоговых органов.</p>\r\n<p class=\"for-desktops for-tablets\"><strong>Финансовый аудит</strong><br />Проводим проверку достоверности финансовой отчетности и правильности ведения бухгалтерского учета на предприятии. Мы поможем определить реальную доходность предприятия и оценить эффективность вашей деятельности. В ходе проверки выявим финансовые риски и подготовим рекомендации по их снижению. Такой вид аудита необходим при получении лицензии, ликвидации предприятия, формировании и внесении средств в уставной капитал, регистрации выпуска акций и облигаций и в других случаях.</p>\r\n<p>Также мы предлагаем услуги Комплексного аудита, который объединяет в себе Налоговый и Финансовый аудит.</p>', 'Аудит'),
(2, '', 28, 'Audit ', 'Audit ', 'Our team of professionals provides audit services. We will assess the status of your financial statements, validate the information and determine your business opportunities.', 'Audit ', '<h2>Independent Review of Your Business</h2>\r\n<p>Our team of professionals provides audit services. We will assess the status of your financial statements, validate the information and determine your business opportunities.</p>\r\n<h2>Types of audit</h2>\r\n<p class=\"for-desktops for-tablets\"><strong> Express audit </strong> <br />Our auditors carry out random checks as soon as possible (up to 5 working days) of individual accounting areas or periods in order to identify errors that may appear in the company\'s accounting and cause negative consequences, for example, penalties.</p>\r\n<p class=\"for-desktops for-tablets\"><strong> Tax audit </strong> <br />We will help to ensure the financial security of the company by conducting an independent audit of various types of tax accounting. In addition, our specialists will help you prepare for any possible tax audit.</p>\r\n<p class=\"for-desktops for-tablets\"><strong> Financial audit </strong> <br />We check the reliability of financial statements and the correctness of accounting in the company. We will help you determine the real profitability of the enterprise and evaluate the effectiveness of your activities During the audit, we will identify financial risks and prepare recommendations for their reduction. This type of audit is necessary when obtaining a license, liquidating an enterprise, forming and depositing funds into the authorized capital, registering an issue of shares and bonds, and in other cases.</p>\r\n<p>We also offer Comprehensive Audit services, which combines Tax and Financial Audits.</p>', 'Audit '),
(3, '', 28, 'Аудит', 'Аудит', 'Наша команда професіоналів надає аудиторські послуги. Ми оцінимо стан вашої фінансової звітності, підтвердимо достовірність інформації і визначимо ваші можливості в сфері бізнесу.', 'Аудит', '<h2>Незалежна перевірка Вашого бізнесу</h2>\r\n<p>Наша команда професіоналів надає аудиторські послуги. Ми оцінимо стан вашої фінансової звітності, підтвердимо достовірність інформації і визначимо ваші можливості в сфері бізнесу.</p>\r\n<h2>Види аудиту</h2>\r\n<p><strong>Експрес-аудит</strong> <br />Наші аудитори проводять вибіркову перевірку в максимально стислі терміни (до 5 робочих днів) окремих ділянок обліку або періодів з метою виявлення помилок, які можуть з\'явитися в обліку підприємства і викликати негативні наслідки, наприклад, штрафні санкції.</p>\r\n<p><strong>Податковий аудит</strong> <br />Допоможемо забезпечити фінансову безпеку підприємства, шляхом проведення незалежної перевірки різних видів податкового обліку. Крім того, наші фахівці допоможуть підготуватися до будь-якої можливої ​​перевірки податкових органів.</p>\r\n<p><strong>Фінансовий аудит</strong> <br />Проводимо перевірку достовірності фінансової звітності та правильності ведення бухгалтерського обліку на підприємстві. Ми допоможемо визначити реальну прибутковість підприємства і оцінити ефективність вашої діяльності. В ході перевірки виявимо фінансові ризики і підготуємо рекомендації щодо їх зниження. Такий вид аудиту необхідний при отриманні ліцензії, ліквідації підприємства, формуванні та внесення коштів до статутного капіталу, реєстрації випуску акцій і облігацій і в інших випадках.</p>\r\n<p>Також ми пропонуємо послуги Комплексного аудиту, який об\'єднує в собі Податковий і Фінансовий аудит.</p>', 'Аудит');
INSERT INTO `t_lang_pages` (`lang_id`, `lang_label`, `page_id`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `header`) VALUES
(1, '', 29, 'Автоматизация', 'Автоматизация', 'Чтобы управлять большим объемом информации о клиентах, сделках и каналах сбыта рекомендуем автоматизировать отдел продаж с помощью CRM-системы и IP- телефонии. ', 'Автоматизация', '<p>Чтобы управлять большим объемом информации о клиентах, сделках и каналах сбыта рекомендуем автоматизировать отдел продаж с помощью CRM-системы и IP- телефонии.</p>\r\n<blockquote>Вы не сможете принимать решения, если не будете знать ответов на вопросы: кто, кому, как, сколько и по какой цене продает. Когда вы автоматизируете все процессы в отделе, то получите возможность эффективно управлять развитием продаж, будете иметь круглосуточный доступ к базе клиентов и сможете разделить обязанности среди сотрудников с помощью ограничения доступа.<small></small></blockquote>\r\n<ul>\r\n<li>Постановка и контроль задач отдела</li>\r\n<li>Автоматическое создание учетных документов: счетов, договоров, актов</li>\r\n<li>Отправка документов по e-mail прямо из системы</li>\r\n<li>Оперативные коммуникации с сотрудниками в виде чата и комментариев</li>\r\n<li>SMS и e-mail рассылки для клиентов</li>\r\n<li>Присвоение статуса клиентам, проектам, сделкам.</li>\r\n<li>Отчет по продажам за выбранный период</li>\r\n</ul>\r\n<p>Подключение к CRM-системе IP-телефонии позволит совершать неограниченное количество параллельных звонков, получать по ним статистику, пользоваться автодозвоном и записывать разговоры менеджеров для будущего анализа. Так вы будете видеть полную полную картину и сможете определить сильные и слабые стороны менеджеров, чтобы повысить эффективность работы.<br /><br />Автоматизация продаж с CRM-системой и IP-телефонией&nbsp; решит проблему потери информации, систематизирует работу отдела и сделает ее проще. Специалисты будут выглядеть профессионалами в глазах клиентов и вы заработаете себе репутацию ответственного исполнителя.</p>', 'Автоматизация'),
(2, '', 29, 'Automation', 'Automation', 'To manage a large volume of information about customers, deals and distribution channels, we recommend automating the sales department using a CRM system and IP telephony.', 'Automation', '<p>To manage a large volume of information about customers, deals and distribution channels, we recommend automating the sales department using a CRM system and IP telephony.</p>\r\n<blockquote>You can\'t make decisions if you don\'t know the answers to the questions: who, to whom, how, how much and at what price. When you automate all the processes in the department, you will be able to effectively manage the development of sales, you will have round-the-clock access to the customer base, and you will be able to share responsibilities among employees using access restrictions. <small> </small></blockquote>\r\n<ul>\r\n<li>Setting and controlling department tasks</li>\r\n<li>Automatic creation of accounting documents: invoices, contracts, acts</li>\r\n<li>Sending documents by e-mail directly from the system</li>\r\n<li>Operational communications with employees in the form of chat and comments</li>\r\n<li>SMS and e-mail newsletters for clients</li>\r\n<li>Assigning status to clients, projects, deals.</li>\r\n<li>Sales report for the selected period</li>\r\n</ul>\r\n<p>Connecting to the CRM-system of IP-telephony will allow you to make an unlimited number of parallel calls, receive statistics on them, use auto-dialing and record managers\' conversations for future analysis. This way you will see the complete picture and be able to identify the strengths and weaknesses of managers in order to increase efficiency. <br /><br />Sales automation with CRM-system and IP-telephony &amp; nbsp; will solve the problem of loss of information, systematize the work of the department and make it easier. The specialists will look professional in the eyes of clients and you will earn yourself a reputation as a responsible executor.</p>', 'Automation'),
(3, '', 29, 'Автоматизація', 'Автоматизація', 'Щоб керувати великим обсягом інформації про клієнтів, угодах і каналах збуту рекомендуємо автоматизувати відділ продажів за допомогою CRM-системи і IP- телефонії.', 'Автоматизація', '<p>Щоб керувати великим обсягом інформації про клієнтів, угодах і каналах збуту рекомендуємо автоматизувати відділ продажів за допомогою CRM-системи і IP- телефонії.</p>\r\n<blockquote>Ви не зможете приймати рішення, якщо не будете знати відповідей на питання: хто, кому, як, скільки і за якою ціною продає. Коли ви автоматизуєте всі процеси в відділі, то отримаєте можливість ефективно управляти розвитком продажів, будете мати цілодобовий доступ до бази клієнтів і зможете розділити обов\'язки серед співробітників за допомогою обмеження доступу. <small> </small></blockquote>\r\n<ul>\r\n<li>Постановка і контроль завдань відділу</li>\r\n<li>Автоматичне створення облікових документів: рахунків, договорів, актів</li>\r\n<li>Відправка документів по e-mail прямо з системи</li>\r\n<li>Оперативні комунікації зі співробітниками у вигляді чату і коментарів</li>\r\n<li>SMS і e-mail розсилки для клієнтів</li>\r\n<li>Присвоєння статусу клієнтам, проектам, угодам.</li>\r\n<li>Звіт по продажах за обраний період</li>\r\n</ul>\r\n<p>Підключення до CRM-системи IP-телефонії дозволить здійснювати необмежену кількість паралельних дзвінків, отримувати по ним статистику, користуватися автодозвоном і записувати розмови менеджерів для майбутнього аналізу. Так ви будете бачити повну повну картину і зможете визначити сильні і слабкі сторони менеджерів, щоб підвищити ефективність роботи. <br /><br />Автоматизація продажів з CRM-системою і IP-телефонією &amp; nbsp; вирішить проблему втрати інформації, систематизує роботу відділу і зробить її простіше. Фахівці будуть виглядати професіоналами в очах клієнтів і ви заробите собі репутацію відповідального виконавця.</p>', 'Автоматизація'),
(1, '', 30, 'Отзывы', 'Отзывы', '', 'Отзывы', '', 'Отзывы'),
(2, '', 30, 'Reviews', 'Reviews', '', 'Reviews', '', 'Reviews'),
(3, '', 30, 'Відгуки', 'Відгуки', '', 'Відгуки', '', 'Відгуки'),
(1, '', 31, 'FAQ', 'FAQ', '', 'FAQ', '', 'FAQ'),
(2, '', 31, 'FAQ', 'FAQ', '', 'FAQ', '', 'FAQ'),
(3, '', 31, 'FAQ', 'FAQ', '', 'FAQ', '', 'FAQ');

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
(1, '', 6, 'Офис Twitter', 'Офис Twitter', 'Офис Twitter', 'Твиттер &mdash; сервис для публичного обмена короткими сообщениями, используя веб-интерфейс, SMS, средства мгновенного обмена сообщениями или сторонние программы-клиенты. Публикация коротких заметок в формате блога получила название &laquo;микроблоггинг&r', '<p>Твиттер &mdash; сервис для публичного обмена короткими сообщениями, используя веб-интерфейс, SMS, средства мгновенного обмена сообщениями или сторонние программы-клиенты. Публикация коротких заметок в формате блога получила название &laquo;микроблоггинг&raquo;. Пользование сервисом бесплатно. Пользование посредством SMS тарифицируется оператором согласно тарифному плану пользователя.</p>', '<p>Твиттер &mdash; сервис для публичного обмена короткими сообщениями, используя веб-интерфейс, SMS, средства мгновенного обмена сообщениями или сторонние программы-клиенты. Публикация коротких заметок в формате блога получила название &laquo;микроблоггинг&raquo;. Пользование сервисом бесплатно. Пользование посредством SMS тарифицируется оператором согласно тарифному плану пользователя.<br /><br />Владельцем системы Твиттер является компания Twitter Inc, главный офис которой находится в Сан-Франциско, (штат Калифорния). Twitter Inc также имеет серверы и офисы в Сан-Антонио (штат Техас) и Бостоне (штат Массачусетс). По состоянию на 2012 год в компании работает более 900 сотрудников.</p>', 'Twitter, Inc', 'Дизайн'),
(2, '', 6, 'Twitter office', 'Twitter office', 'Twitter office', 'Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by ', '<p>Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan.</p>', '<p><span lang=\"en\">Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan. </span></p>\r\n<p><span lang=\"en\">Twitter is owned by Twitter Inc, headquartered in San Francisco, California. Twitter Inc also has servers and offices in San Antonio, Texas and Boston, Massachusetts. As of 2012, the company employs over 900 employees.</span></p>', 'Twitter, Inc', 'Design'),
(3, '', 6, 'Офіс Twitter', 'Офіс Twitter', 'Офіс Twitter', 'Твіттер - сервіс для публічного обміну короткими повідомленнями, використовуючи веб-інтерфейс, SMS, засоби миттєвого обміну повідомленнями або сторонні програми-клієнти. Публікація коротких заміток в форматі блогу отримала назву «Микроблоггінг». Користува', '<p><span class=\"VIiyi\" lang=\"uk\"><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Твіттер</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">сервіс</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">для</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">публічного</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">обміну</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">короткими</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">повідомленнями</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">використовуючи</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">веб</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">інтерфейс</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">SMS</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">засоби</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"17\">миттєвого</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"18\">обміну</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"19\">повідомленнями</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"20\">або</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"21\">сторонні</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"22\">програми</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"23\">-</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"24\">клієнти</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"25\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"26\">Публікація</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"27\">коротких</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"28\">заміток</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"29\">в</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"30\">форматі</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"31\">блогу</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"32\">отримала</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"33\">назву</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"34\">&laquo;</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"35\">Микроблоггінг</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"36\">&raquo;</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"37\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"38\">Користування</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"39\">сервісом</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"40\">безкоштовно</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"41\">.</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"42\">Користування</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"43\">за допомогою</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"44\">SMS</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"45\">тарифікується</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"46\">оператором</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"47\">згідно з тарифним планом</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"48\">користувача</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"49\">.</span></span></p>', '<p><span class=\"VIiyi\" lang=\"uk\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Твіттер - сервіс для публічного обміну короткими повідомленнями, використовуючи веб-інтерфейс, SMS, засоби миттєвого обміну повідомленнями або сторонні програми-клієнти. Публікація коротких заміток в форматі блогу отримала назву &laquo;Микроблоггінг&raquo;. Користування сервісом безкоштовно. Користування за допомогою SMS тарифікується оператором згідно з тарифним планом користувача. </span></span></p>\r\n<p><span class=\"VIiyi\" lang=\"uk\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Власником системи Твіттер є компанія Twitter Inc, головний офіс якої знаходиться в Сан-Франциско, (штат Каліфорнія). Twitter Inc також має сервери і офіси в Сан-Антоніо (штат Техас) і Бостоні (штат Массачусетс). Станом на 2012 рік в компанії працює більше 900 співробітників.</span></span></p>', 'Twitter, Inc', 'Дизайн'),
(1, '', 7, 'Офис Google в Лондоне', 'Офис Google в Лондоне', 'Офис Google в Лондоне', 'Google &mdash; крупнейшая в интернете поисковая система, принадлежащая корпорации Google Inc. Первая по популярности система, обрабатывает 41 млрд 345 млн запросов в месяц, индексирует более 25 млрд веб-страниц, может находить информацию на 195 языках.  Т', '<p>Google &mdash; крупнейшая в интернете поисковая система, принадлежащая корпорации Google Inc. Первая по популярности система, обрабатывает 41 млрд 345 млн запросов в месяц, индексирует более 25 млрд веб-страниц, может находить информацию на 195 языках.</p>', '<p>Google &mdash; крупнейшая в интернете поисковая система, принадлежащая корпорации Google Inc. Первая по популярности система, обрабатывает 41 млрд 345 млн запросов в месяц, индексирует более 25 млрд веб-страниц, может находить информацию на 195 языках.<br /><br />Текущий официальный логотип Google был разработан Рутом Кедаром и действует с 6 мая 2010 года. По случаю праздника или круглой даты какой-нибудь широко известной личности стандартный логотип Google может меняться на праздничный, имеющий определённую тематику, смысл, но в стиле Google.</p>', 'Google, Inc', 'Дизайн'),
(2, '', 7, 'Google London office', 'Google London office', 'Google London office', 'Google is the largest search engine on the Internet, owned by Google Inc.   The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.    \r\nThe current', '<p><span lang=\"en\">Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.</span></p>', '<p><span lang=\"en\">Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages. </span></p>\r\n<p><span lang=\"en\">The current official Google logo was designed by Ruth Kedar and has been in effect since May 6, 2010. On the occasion of a holiday or a round date of some well-known personality, the standard Google logo can change to a festive one that has a certain theme, meaning, but in the style of Google.</span></p>', 'Google, Inc', 'Design'),
(3, '', 7, 'Офіс Google в Лондоні ', 'Офіс Google в Лондоні ', 'Офіс Google в Лондоні ', 'Google   -   найбільша   в   інтернеті   пошукова   система  ,   що належить   корпорації   Google Inc.   Перша   за популярністю   система  ,   обробляє   41 млрд   345 млн   запитів   в   місяць  ,   індексує   більше   25 млрд   веб  -  сторінок  ,   м', '<p><span lang=\"uk\">Google - найбільша в інтернеті пошукова система, що належить корпорації Google Inc. Перша за популярністю система, обробляє 41 млрд 345 млн запитів в місяць, індексує більше 25 млрд веб-сторінок, може знаходити інформацію на 195 мовах.</span></p>', '<p><span lang=\"uk\">Google - найбільша в інтернеті пошукова система, що належить корпорації Google Inc. Перша за популярністю система, обробляє 41 млрд 345 млн запитів в місяць, індексує більше 25 млрд веб-сторінок, може знаходити інформацію на 195 мовах.</span></p>\r\n<p><span lang=\"uk\"> Поточний офіційний логотип Google був розроблений Рутом Кедар і діє з 6 травня 2010 року. З нагоди свята або круглої дати який-небудь широко відомої особистості стандартний логотип Google може змінюватися на святковий, що має певну тематику, зміст, але в стилі Google.</span></p>', 'Google, Inc', 'Дизайн '),
(1, '', 8, 'Офис Alibaba Group', 'Офис Alibaba Group', 'Офис Alibaba Group', 'Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торг', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.</p>', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.<br /><br />Обладает собственной электронной платёжной системой (Alipay, которая также используется для расчётов и в дочерней структуре &mdash; Taobao.com), пользуется единым для всех структур программным обеспечением для управления предприятием, а также отсортированными по регионам и отраслям базами данных товаров и предприятий.</p>', 'Alibaba Group', 'Дизайн'),
(2, '', 8, 'Alibaba Group Office', 'Alibaba Group Office', 'Alibaba Group Office', 'Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.', '<p><span lang=\"en\">Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</span></p>', '<p><span lang=\"en\">Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</span></p>\r\n<p><span lang=\"en\"> It has its own electronic payment system (Alipay, which is also used for payments and in its subsidiary - Taobao.com), uses a single enterprise management software for all structures, as well as databases of goods and enterprises sorted by regions and industries.</span></p>', 'Alibaba Group', 'Design'),
(3, '', 8, 'Офіс Alibaba Group', 'Офіс Alibaba Group', 'Офіс Alibaba Group', 'Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торг', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.</p>', '<p>Alibaba Group &mdash; китайская частная компания, работающая в сфере интернет-коммерции, основной владелец публичной компании Alibaba.com. Штаб-квартира расположена в Ханчжоу. Основными видами деятельности являются торговые операции между компаниями (торговля по схеме B2B), розничная онлайн-торговля.<br /><br />Обладает собственной электронной платёжной системой (Alipay, которая также используется для расчётов и в дочерней структуре &mdash; Taobao.com), пользуется единым для всех структур программным обеспечением для управления предприятием, а также отсортированными по регионам и отраслям базами данных товаров и предприятий.</p>', 'Alibaba Group', 'Дизайн'),
(1, '', 9, 'Дизайн офиса Nike в Нью-Йорке', 'Дизайн офиса Nike в Нью-Йорке', 'Дизайн офиса Nike в Нью-Йорке', 'Nike &mdash; это известный спортивный бренд, но дизайн главного офиса компании лишен яркой спортивной стилистики. На тот факт, что это помещение принадлежит мировому производителю спортивной одежды, обуви и аксессуаров, явно указывают, пожалуй, только две', '<p>Nike &mdash; это известный спортивный бренд, но дизайн главного офиса компании лишен яркой спортивной стилистики.</p>', '<p>Nike &mdash; это известный спортивный бренд, но дизайн главного офиса компании лишен яркой спортивной стилистики. На тот факт, что это помещение принадлежит мировому производителю спортивной одежды, обуви и аксессуаров, явно указывают, пожалуй, только две вещи. Первая &mdash; логотип фирмы на крыше здания (знаменитая &laquo;галочка&raquo;).</p>', 'Nike', 'Дизайн'),
(2, '', 9, 'Nike New York office design', 'Nike New York office design', 'Nike New York office design', 'Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style. The fact that this space belongs to a global manufacturer of sportswear, footwear and accessories is clearly indicated by, perhaps, only two ', '<p><span lang=\"en\">Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style.</span></p>', '<p><span lang=\"en\">Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style. The fact that this space belongs to a global manufacturer of sportswear, footwear and accessories is clearly indicated by, perhaps, only two things. The first is the company\'s logo on the roof of the building (the famous \"check mark\").</span></p>', 'Nike', 'Design'),
(3, '', 9, 'Дизайн офісу Nike в Нью-Йорку', 'Дизайн офісу Nike в Нью-Йорку', 'Дизайн офісу Nike в Нью-Йорку', 'Nike - це відомий спортивний бренд, але дизайн головного офісу компанії позбавлений яскравою спортивною стилістики. На той факт, що це приміщення належить світовому виробникові спортивного одягу, взуття та аксесуарів, явно вказують, мабуть, тільки дві реч', '<p><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">Nike</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"1\">-</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"2\">це</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"3\">відомий</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"4\">спортивний</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"5\">бренд</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"6\">,</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"7\">але</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"8\">дизайн</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"9\">головного</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"10\">офісу</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"11\">компанії</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"12\">позбавлений</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"13\">яскравою</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"14\">спортивною</span> <span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"15\">стилістики</span><span class=\"JLqJ4b ChMk0b\" data-language-for-alternatives=\"uk\" data-language-to-translate-into=\"ru\" data-phrase-index=\"16\">.</span></p>', '<p><span lang=\"uk\">Nike - це відомий спортивний бренд, але дизайн головного офісу компанії позбавлений яскравою спортивною стилістики. На той факт, що це приміщення належить світовому виробникові спортивного одягу, взуття та аксесуарів, явно вказують, мабуть, тільки дві речі. Перша - логотип фірми на даху будівлі (знаменита &laquo;галочка&raquo;).</span></p>', 'Nike', 'Дизайн');

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
  `position` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_menu`
--

INSERT INTO `t_menu` (`id`, `name`, `position`) VALUES
(1, 'Main menu', 1),
(2, 'Other pages', 2),
(3, 'Services', 3);

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
  `header` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_pages`
--

INSERT INTO `t_pages` (`id`, `parent_id`, `url`, `name`, `meta_title`, `meta_description`, `meta_keywords`, `body`, `menu_id`, `position`, `visible`, `header`, `last_modified`) VALUES
(1, 0, '', 'Turbo Site', 'Turbo Site is a turnkey solution for website creation.', 'Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on   TurboCMS   in 24 hours. This solution does not contain anything superfluous, but at the same time it is carefully worked out to the smallest detail. A ready-made business card site is perfect for companies that provide services in various segments.', 'Turbo Site', '<p>Turbo Site is a turnkey solution that will allow you to create your multilingual, simple and responsive site on <a href=\"https://turbo-cms.com/\"> TurboCMS </a> in 24 hours. This solution does not contain anything superfluous, but at the same time it is carefully worked out to the smallest detail. A ready-made business card site is perfect for companies that provide services in various segments.</p>', 2, 14, 1, 'Home', '2022-04-22 18:41:56'),
(3, 0, '404', '404', 'Page not found', 'Page not found', 'Page not found', '<p>Page not found</p>', 2, 3, 1, 'Page not found', '2022-04-22 18:41:33'),
(4, 0, 'sitemap', 'Sitemap', 'Sitemap', 'Sitemap', 'Sitemap', '', 3, 29, 1, 'Sitemap', '2022-04-22 18:43:37'),
(20, 0, 'company', 'Company', 'Company', 'In matters of service and customer service, there is always something to strive for. High quality service from the point of view of the organization may not work with a specific client and his specific issues. In this case, you should pay attention to the service standards, and not follow the lead of the client\'s loyalty.', 'Company', '<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">In matters of service and customer service, there is always something to strive for. High quality service from the point of view of the organization may not work with a specific client and his specific issues. In this case, you should pay attention to the service standards, and not follow the lead of the client\'s loyalty. Service should work like a conveyor belt: accurate, fast, efficient and the same everywhere. You can never know in advance whether the client will return tomorrow, whether the company was able to solve his problems, whether he is satisfied with the service.</span></span></p>\r\n<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\"> This shouldn\'t affect the quality of your service. Models of such service are found in large companies, where all efforts are directed to the automation of processes, including customer service. Until recently, this was their competitive advantage, but today, when consumer demands for personalized service are growing, this has become their weak point. </span></span></p>\r\n<p><span class=\"VIiyi\" lang=\"en\"><span class=\"JLqJ4b\" data-language-for-alternatives=\"en\" data-language-to-translate-into=\"ru\" data-phrase-index=\"0\">The use of an autoinformer has become a common practice. The recorded voice seems to be polite, but does not cause motivation to wait for a response from a real person for 40 minutes. Individual attention to each client becomes the path to success and victory over competitors.</span></span></p>', 1, 1, 1, 'Company', '2022-04-22 18:33:34'),
(21, 20, 'about-company', 'About company', 'About company', 'It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions.', 'About company', '<p>It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions. The varied and rich experience of the beginning of the daily work on the formation of the position ensures a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h2>Our activities</h2>\r\n<p>The task of the organization, in particular the new model of organizational activity, allows you to carry out important tasks for the development of a personnel training system, meets the urgent needs. Thus, the implementation of the planned targets is an interesting experiment in testing the development model.</p>\r\n<p>The significance of these problems is so obvious that the existing structure of the organization contributes to the preparation and implementation of systems of mass participation. Comrades! implementation of the planned targets contributes to the preparation and implementation of participatory systems. Everyday practice shows that the strengthening and development of the structure allows you to carry out important tasks for the development of further directions of development. Diverse and rich experience, the new organizational model allows for important tasks in developing the positions taken by participants in relation to the assigned tasks.</p>\r\n<h3>Company Values ​​</h3>\r\n<p>One should not, however, forget that the new model of organizational activity allows you to perform important tasks for the development of a personnel training system, meets urgent needs. Likewise, the strengthening and development of the structure requires us to analyze the appropriate activation conditions. Everyday practice shows that constant quantitative growth and the scope of our activity to a large extent determines the creation of directions for progressive development. Ideological considerations of a higher order, as well as the further development of various forms of activity, allow us to carry out important tasks to develop further directions of development. Thus, the framework and place of training of personnel contributes to the preparation and implementation of appropriate activation conditions.</p>\r\n<p>Likewise, the scope and location of staff training allows for important tasks in the development of participatory systems. Likewise, the implementation of the planned targets entails the process of implementation and modernization of systems of mass participation. A varied and rich experience, the further development of various forms of activity contributes to the preparation and implementation of the positions taken by the participants in relation to the tasks set.</p>', 1, 13, 1, 'About company', '2022-04-22 18:34:54'),
(13, 0, 'blog', 'Blog', 'Blog', '', 'Blog', '', 1, 25, 1, 'Blog', '2022-04-22 18:38:19'),
(14, 0, 'contact', 'Contacts', 'Contacts', 'Contacts', 'Contacts', '<p>41 West 40th Street New York, NY</p>\r\n<p>Phone: (210) 876-5432</p>\r\n<p><iframe style=\"border: 0;\" tabindex=\"0\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4399.518506840664!2d-73.97964170435294!3d40.75394620817656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c259aa94a61b4f%3A0x8ebce7fe1262c134!2zNDEgVyA0MHRoIFN0LCBOZXcgWW9yaywgTlkgMTAwMTgsINCh0KjQkA!5e0!3m2!1sru!2sua!4v1609512981791!5m2!1sru!2sua\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\" aria-hidden=\"false\"></iframe></p>', 1, 26, 1, 'Contacts', '2022-04-22 18:40:24'),
(19, 0, 'projects', 'Projects', 'Projects', '', 'Projects', '', 1, 23, 1, 'Projects', '2022-04-22 18:48:44'),
(16, 0, 'articles', 'Articles', 'Articles', '', 'Articles', '', 1, 19, 1, 'Articles', '2022-04-22 18:35:48'),
(27, 0, 'consulting', 'Consulting ', 'Consulting ', 'Every company and business strives to develop and conquer its part of the market. But this is not always possible without huge investments and only on our own, especially when there are problems in the country\'s economy.', 'Consulting ', '<p>Every company and business strives to develop and conquer its part of the market. But this is not always possible without huge investments and only on our own, especially when there are problems in the country\'s economy.</p>\r\n<p>To remain a popular and competitive company, you need to constantly change, develop strategy and tactics. And if there are no resources inside the company for this, then you have to use external services &amp; mdash; consulting. What are consulting services? What types of consulting are there? What are its advantages and disadvantages?</p>\r\n<h2 style=\"text-align: center;\">What are consulting services and why are they needed?</h2>\r\n<p>Even large international companies often face difficulties in their work. This can be due to both external factors and internal problems. Most often, problems arise due to price fluctuations in the market, the appearance or departure of a competitor, but in firms there are difficulties with the very relations between employees within the enterprise. Because of this, <strong> within the company there is no opportunity and strength to fight for its survival, so an excellent solution in this case would be to use consulting services </strong>.</p>\r\n<blockquote>\r\n<p>Consulting it is a type of service that essentially means consulting. One company or person provides services for solving certain problems to another company.</p>\r\n</blockquote>\r\n<p>The questions that can be solved with the help of consulting are very diverse. Sometimes it can be a whole complex of tasks, and sometimes it is provided only in a narrow area. For example, accounting consulting &amp; mdash; it is the involvement of a specialized company or employee to solve problems related to accounting. That is why, when talking about the concept of consulting, there is no clear definition.</p>\r\n<p><strong> Consulting services it is the solution of organizational or management problems within the company with the help of external specialists. </strong> Professional consultants in a specific field are invited to work in the company. Experts assess the condition, see the cause of problems and create a system for solving these errors.</p>\r\n<p>The company turns to consulting not only when it is experiencing difficulties in development. Often the manager makes a decision to expand, so an urgent need to increase the number of specialists. But even if you hire them for work, you will still need to spend months on training, monitoring tasks, and only after that set complex tasks for them. And a growing company doesn\'t have that much time.</p>\r\n<blockquote>\r\n<p>Consulting firms they are specialized companies that provide consulting services. There may be a staff of employees who simultaneously cooperate with different organizations.</p>\r\n</blockquote>\r\n<h2>Types of Consulting Services</h2>\r\n<ul>\r\n<li><strong> IT Consulting </strong> &amp; mdash; one of the newest and most demanded types of consulting in Ukraine. This is advice and assistance in the field of information technology. In fact, IT consulting solves all issues related to the Internet and information business processes.</li>\r\n<li><strong> Marketing Consulting. </strong> Not all companies can afford to open a marketing department or hire a professional employee to deal with these issues. And it is necessary to engage in advertising today, because this is the only way to stay on the market and be a leader. In many cases, marketing consulting services are provided along with IT consulting.</li>\r\n<li><strong> Legal consulting </strong> is associated with solving current problems that are related to the law of the state. This will allow you to correctly assess the activities of the company and make the most beneficial decisions Legal advice is especially important during the expansion of the company, when it will be necessary to open new branches or conclude contracts with intermediaries, suppliers.</li>\r\n<li><strong> Financial Consulting </strong> &amp; mdash; services that are associated with effective management of funds, budget allocation within the company, as well as correct external investments.</li>\r\n<li><strong> HR consulting </strong> undertakes to establish internal relations between employees, recruit new specialists who will meet the company\'s requirements.</li>\r\n</ul>\r\n<p>The main advantage of consulting services is that the <strong> head of the company may not open new vacancies, not look for professional employees. </strong> It takes a lot of time, effort, and also financial investments. It will be much easier to use the services of an already established company, which has a staff of experienced specialists.</p>\r\n<p>Sometimes looking from the outside at the situation within the company helps to see the simple reasons for difficulties and ways to solve them. That is why consulting services are so popular all over the world.</p>', 3, 17, 1, 'Consulting ', '2022-04-22 18:42:18'),
(18, 0, 'search', 'Search', 'Search', '', 'Search', '', 3, 28, 1, 'Search', '2022-04-22 18:43:15'),
(22, 20, 'history-of-the-company', 'History of the company', 'History of the company', 'It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions.', 'History of the company', '<p>It should not be forgotten, however, that the beginning of the day-to-day work of forming a position entails the process of introducing and modernizing significant financial and administrative conditions. The varied and rich experience of the beginning of the daily work on the formation of the position ensures a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h3>1990 company formation</h3>\r\n<p>Do not, however, forget that the new model of organizational activity allows you to perform important tasks for the development of a personnel training system, meets urgent needs.</p>\r\n<h3>1996 construction of branches in large cities</h3>\r\n<p>Diverse and rich experience, the beginning of the daily work on the formation of a position provides a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h3>2010 IPO</h3>\r\n<p>It should not be forgotten, however, that starting the day-to-day job of positioning entails a process of introducing and modernizing significant financial and administrative conditions. The varied and rich experience of the beginning of the daily work on the formation of the position ensures a wide range of (specialists) participation in the formation of the appropriate activation conditions. Likewise, consultation with a broad-based asset can assess the value of a development model.</p>\r\n<h3>2018 creation of a new company website</h3>\r\n<p>New design, new features.</p>', 1, 16, 1, 'History of the company', '2022-04-22 18:35:06'),
(23, 19, 'projects/interior-design', 'Interior design', 'Interior design', '', 'Interior design', '', 1, 24, 1, 'Interior design', '2022-04-22 18:38:11'),
(24, 16, 'articles/project-management', 'Project management ', 'Project management ', '', 'Project management ', '', 1, 20, 1, 'Project management ', '2022-04-22 18:37:28'),
(25, 16, 'articles/business-advice', 'Business advice', 'Business advice', '', 'Business advice', '', 1, 21, 1, 'Business advice', '2022-04-22 18:49:15'),
(26, 16, 'articles/increased-sales', 'Increased sales', 'Increased sales', '', 'Increased sales', '', 1, 22, 1, 'Increased sales', '2022-04-22 18:37:59'),
(28, 0, 'audit', 'Audit ', 'Audit ', 'Our team of professionals provides audit services. We will assess the status of your financial statements, validate the information and determine your business opportunities.', 'Audit ', '<h2>Independent Review of Your Business</h2>\r\n<p>Our team of professionals provides audit services. We will assess the status of your financial statements, validate the information and determine your business opportunities.</p>\r\n<h2>Types of audit</h2>\r\n<p class=\"for-desktops for-tablets\"><strong> Express audit </strong> <br />Our auditors carry out random checks as soon as possible (up to 5 working days) of individual accounting areas or periods in order to identify errors that may appear in the company\'s accounting and cause negative consequences, for example, penalties.</p>\r\n<p class=\"for-desktops for-tablets\"><strong> Tax audit </strong> <br />We will help to ensure the financial security of the company by conducting an independent audit of various types of tax accounting. In addition, our specialists will help you prepare for any possible tax audit.</p>\r\n<p class=\"for-desktops for-tablets\"><strong> Financial audit </strong> <br />We check the reliability of financial statements and the correctness of accounting in the company. We will help you determine the real profitability of the enterprise and evaluate the effectiveness of your activities During the audit, we will identify financial risks and prepare recommendations for their reduction. This type of audit is necessary when obtaining a license, liquidating an enterprise, forming and depositing funds into the authorized capital, registering an issue of shares and bonds, and in other cases.</p>\r\n<p>We also offer Comprehensive Audit services, which combines Tax and Financial Audits.</p>', 3, 18, 1, 'Audit ', '2022-04-22 18:42:44'),
(29, 0, 'automation', 'Automation', 'Automation', 'To manage a large volume of information about customers, deals and distribution channels, we recommend automating the sales department using a CRM system and IP telephony.', 'Automation', '<p>To manage a large volume of information about customers, deals and distribution channels, we recommend automating the sales department using a CRM system and IP telephony.</p>\r\n<blockquote>You can\'t make decisions if you don\'t know the answers to the questions: who, to whom, how, how much and at what price. When you automate all the processes in the department, you will be able to effectively manage the development of sales, you will have round-the-clock access to the customer base, and you will be able to share responsibilities among employees using access restrictions. <small> </small></blockquote>\r\n<ul>\r\n<li>Setting and controlling department tasks</li>\r\n<li>Automatic creation of accounting documents: invoices, contracts, acts</li>\r\n<li>Sending documents by e-mail directly from the system</li>\r\n<li>Operational communications with employees in the form of chat and comments</li>\r\n<li>SMS and e-mail newsletters for clients</li>\r\n<li>Assigning status to clients, projects, deals.</li>\r\n<li>Sales report for the selected period</li>\r\n</ul>\r\n<p>Connecting to the CRM-system of IP-telephony will allow you to make an unlimited number of parallel calls, receive statistics on them, use auto-dialing and record managers\' conversations for future analysis. This way you will see the complete picture and be able to identify the strengths and weaknesses of managers in order to increase efficiency. <br /><br />Sales automation with CRM-system and IP-telephony &amp; nbsp; will solve the problem of loss of information, systematize the work of the department and make it easier. The specialists will look professional in the eyes of clients and you will earn yourself a reputation as a responsible executor.</p>', 3, 27, 1, 'Automation', '2022-04-22 18:44:05'),
(30, 20, 'reviews', 'Reviews', 'Reviews', '', 'Reviews', '', 1, 30, 1, 'Reviews', '2022-04-22 18:35:15'),
(31, 20, 'faq', 'FAQ', 'FAQ', '', 'FAQ', '', 1, 31, 1, 'FAQ', '2022-04-22 18:35:23');

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
(6, 2, 'Twitter office', 'twitter-office', 'Twitter office', 'Twitter office', 'Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by ', '<p>Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan.</p>', '<p><span lang=\"en\">Twitter is a public short messaging service using a web interface, SMS, instant messaging or third-party client programs. The publication of short notes in blog format is called \"microblogging\". The service is free of charge. The use of SMS is charged by the operator according to the user\'s tariff plan. </span></p>\r\n<p><span lang=\"en\">Twitter is owned by Twitter Inc, headquartered in San Francisco, California. Twitter Inc also has servers and offices in San Antonio, Texas and Boston, Massachusetts. As of 2012, the company employs over 900 employees.</span></p>', 1, '2021-01-28 22:00:00', '2022-04-22 18:25:00', 6, '', 'Twitter, Inc', 'https://twitter.com', 'Design'),
(7, 2, 'Google London office', 'google-london-office', 'Google London office', 'Google London office', 'Google is the largest search engine on the Internet, owned by Google Inc.   The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.    \r\nThe current', '<p><span lang=\"en\">Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages.</span></p>', '<p><span lang=\"en\">Google is the largest search engine on the Internet, owned by Google Inc. The first most popular system, processes 41 billion 345 million requests per month, indexes more than 25 billion web pages, can find information in 195 languages. </span></p>\r\n<p><span lang=\"en\">The current official Google logo was designed by Ruth Kedar and has been in effect since May 6, 2010. On the occasion of a holiday or a round date of some well-known personality, the standard Google logo can change to a festive one that has a certain theme, meaning, but in the style of Google.</span></p>', 1, '2021-01-28 22:00:00', '2022-04-22 18:25:07', 7, '', 'Google, Inc', 'https://www.google.com', 'Design'),
(8, 2, 'Alibaba Group Office', 'alibaba-group-office', 'Alibaba Group Office', 'Alibaba Group Office', 'Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.', '<p><span lang=\"en\">Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</span></p>', '<p><span lang=\"en\">Alibaba Group is a Chinese privately held e-commerce company, the main owner of the public company Alibaba.com. The headquarters are located in Hangzhou. The main activities are trade operations between companies (B2B trade), online retail.</span></p>\r\n<p><span lang=\"en\"> It has its own electronic payment system (Alipay, which is also used for payments and in its subsidiary - Taobao.com), uses a single enterprise management software for all structures, as well as databases of goods and enterprises sorted by regions and industries.</span></p>', 1, '2021-01-27 22:00:00', '2022-04-22 18:25:15', 8, '', 'Alibaba Group', 'http://www.alibaba.com/', 'Design'),
(9, 2, 'Nike New York office design', 'nike-new-york-office-design', 'Nike New York office design', 'Nike New York office design', 'Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style. The fact that this space belongs to a global manufacturer of sportswear, footwear and accessories is clearly indicated by, perhaps, only two ', '<p><span lang=\"en\">Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style.</span></p>', '<p><span lang=\"en\">Nike is a well-known sports brand, but the design of the company\'s headquarters is devoid of bright sports style. The fact that this space belongs to a global manufacturer of sportswear, footwear and accessories is clearly indicated by, perhaps, only two things. The first is the company\'s logo on the roof of the building (the famous \"check mark\").</span></p>', 1, '2021-01-28 22:00:00', '2022-04-22 18:25:22', 9, '', 'Nike', 'https://www.nike.com/', 'Design');

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
(2, 0, 'Interior design', '', 'Interior design', 'Interior design', '', '', 'interior-design', '', 2, 1, '', '2022-04-22 18:25:39');

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
(8, 6, 1),
(8, 9, 2),
(6, 8, 1),
(6, 9, 2),
(7, 8, 0),
(7, 6, 1),
(9, 8, 0),
(9, 7, 1),
(9, 6, 2),
(8, 7, 0),
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

--
-- Dumping data for table `t_seo`
--

INSERT INTO `t_seo` (`setting_id`, `name`, `value`) VALUES
(1, 'seo_automation', 'on');

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

--
-- Dumping data for table `t_seo_lang`
--

INSERT INTO `t_seo_lang` (`name`, `lang_id`, `value`) VALUES
('am_email', 1, 'me@example.com'),
('am_name', 1, 'Turbo Site'),
('am_phone', 1, '(123) 456-78-90'),
('am_url', 1, 'www.example.com'),
('article_meta_description', 1, ''),
('article_meta_keywords', 1, ''),
('article_meta_title', 1, ''),
('category_article_meta_description', 1, ''),
('category_article_meta_keywords', 1, ''),
('category_article_meta_title', 1, ''),
('category_meta_description', 1, ''),
('category_meta_keywords', 1, ''),
('category_meta_title', 1, ''),
('page_meta_description', 1, ''),
('page_meta_keywords', 1, ''),
('page_meta_title', 1, ''),
('post_meta_description', 1, ''),
('post_meta_keywords', 1, ''),
('post_meta_title', 1, ''),
('project_meta_description', 1, ''),
('project_meta_keywords', 1, ''),
('project_meta_title', 1, ''),
('am_email', 2, 'me@example.com'),
('am_name', 2, 'Turbo Site'),
('am_phone', 2, '(123) 456-78-90'),
('am_url', 2, 'www.example.com'),
('article_meta_description', 2, ''),
('article_meta_keywords', 2, ''),
('article_meta_title', 2, ''),
('category_article_meta_description', 2, ''),
('category_article_meta_keywords', 2, ''),
('category_article_meta_title', 2, ''),
('category_meta_description', 2, ''),
('category_meta_keywords', 2, ''),
('category_meta_title', 2, ''),
('page_meta_description', 2, ''),
('page_meta_keywords', 2, ''),
('page_meta_title', 2, ''),
('post_meta_description', 2, ''),
('post_meta_keywords', 2, ''),
('post_meta_title', 2, ''),
('project_meta_description', 2, ''),
('project_meta_keywords', 2, ''),
('project_meta_title', 2, ''),
('am_email', 3, 'me@example.com'),
('am_name', 3, 'Turbo Site'),
('am_phone', 3, '(123) 456-78-90'),
('am_url', 3, 'www.example.com'),
('article_meta_description', 3, ''),
('article_meta_keywords', 3, ''),
('article_meta_title', 3, ''),
('category_article_meta_description', 3, ''),
('category_article_meta_keywords', 3, ''),
('category_article_meta_title', 3, ''),
('category_meta_description', 3, ''),
('category_meta_keywords', 3, ''),
('category_meta_title', 3, ''),
('page_meta_description', 3, ''),
('page_meta_keywords', 3, ''),
('page_meta_title', 3, ''),
('post_meta_description', 3, ''),
('post_meta_keywords', 3, ''),
('post_meta_title', 3, ''),
('project_meta_description', 3, ''),
('project_meta_keywords', 3, ''),
('project_meta_title', 3, '');

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
(1, 'theme', 'default'),
(2, 'date_format', 'd.m.Y'),
(3, 'admin_email', 'me@example.com'),
(4, 'site_work', 'on'),
(6, 'captcha_post', '1'),
(8, 'captcha_article', '1'),
(9, 'captcha_register', '1'),
(10, 'captcha_feedback', '1'),
(11, 'captcha_callback', '1'),
(13, 'order_email', 'me@example.com'),
(14, 'comment_email', 'me@example.com'),
(15, 'notify_from_email', 'me@example.com'),
(16, 'email_lang', 'en'),
(49, 'category_count', '0'),
(21, 'max_order_amount', '50'),
(22, 'lang', 'en'),
(23, 'articles_num', '15'),
(24, 'articles_num_admin', '15'),
(25, 'blog_num', '15'),
(26, 'blog_num_admin', '15'),
(27, 'smart_resize', ''),
(28, 'webp_support', '1'),
(30, 'watermark_offset_x', '50'),
(31, 'watermark_offset_y', '50'),
(32, 'watermark_transparency', '50'),
(33, 'images_sharpen', '50'),
(42, 'image_sizes', '55x55|110x110|90x90|240x240|570x570|800x800w|300x300|95x95|330x300|500x500|100x100|900x350|35x35|400x300|300x120|130x130|150x150|170x170|116x116|75x23|40x40|700x700|750x750|750x300|750x467|700x467|250x120|50x50|700x300|120x120|700x400|800x800|750x500|800x600|500x300|400x400|966x378|45x45|90x60|800x285|170x100|180x100'),
(43, 'comments_tree_blog', 'on'),
(44, 'comments_tree_articles', 'on'),
(45, 'lastModifyPosts', '2022-05-24 19:19:05'),
(46, 'projects_num', '15'),
(47, 'projects_num_admin', '15'),
(48, 'captcha_project', '1'),
(50, 'chat_viber', '123456789'),
(51, 'chat_whats_app', '123456789'),
(52, 'chat_telegram', 'usename'),
(53, 'chat_facebook', 'usename'),
(54, 'captcha_review', '1'),
(55, 'comments_tree_projects', 'on'),
(57, 'lastModifyReviews', '2021-09-01 16:19:35'),
(58, 'comments_tree_reviews', 'on'),
(59, 'lastModifyFAQ', '2022-04-22 21:21:14'),
(60, 'cached', '0'),
(61, 'cache_type', '0'),
(62, 'cache_time', '86400'),
(63, 'counters', '');

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
('notify_from_name', 1, 'Администратор'),
('site_name', 1, 'Turbo Site'),
('company_name', 2, 'Turbo CMS'),
('notify_from_name', 2, 'Администратор'),
('site_name', 2, 'Turbo Site'),
('company_name', 3, 'Turbo CMS'),
('notify_from_name', 3, 'Адмін'),
('site_name', 3, 'Turbo Site');

-- --------------------------------------------------------

--
-- Table structure for table `t_subscribes`
--

DROP TABLE IF EXISTS `t_subscribes`;
CREATE TABLE `t_subscribes` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_translations`
--

DROP TABLE IF EXISTS `t_translations`;
CREATE TABLE `t_translations` (
  `id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_config` tinyint(1) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_ua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_translations`
--

INSERT INTO `t_translations` (`id`, `template`, `in_config`, `label`, `lang_ru`, `lang_en`, `lang_ua`) VALUES
(39, '', 0, 'callback', 'Заказать звонок', 'Request a call', 'Замовити дзвінок'),
(40, '', 0, 'contact_details', 'Киев, ул. Глубочицкая, 32б', '41 West 40th Street New York, NY', 'Київ, вул. Глибочицька, 32б'),
(6, '', 0, 'bloge', 'Блоге', 'entries', 'Блогу'),
(41, '', 0, 'phone_number', '(903) 782-82-82', '(210) 876-5432', '(095) 545-54-54'),
(42, '', 0, 'close', 'Закрыть', 'Close', 'Закрити'),
(43, '', 0, 'catalog', 'Каталог', 'Catalog', 'Каталог'),
(37, '', 0, 'login', 'Вход', 'Login', 'Вхід'),
(22, '', 0, 'votes', 'голосов', 'votes', 'голосів'),
(21, '', 0, 'vote', 'голос', 'vote', 'голос'),
(38, '', 0, 'logout', 'Выйти', 'Logout', 'Вихід'),
(18, '', 0, 'more_details', 'Подробнее', 'More details', 'Докладніше'),
(231, '', 0, 'company_message', 'Наша компания является одним из лидеров в своем сегменте. Большой опыт компании и дружная команда позволяют нам предлагать свои услуги на высоком уровне.', 'Our company is one of the leaders in its segment. The company\'s extensive experience and friendly team allow us to offer our services at a high level. ', 'Наша компанія є одним з лідерів в своєму сегменті. Великий досвід компанії і дружна команда дозволяють нам пропонувати свої послуги на високому рівні. '),
(23, '', 0, 'of_vote', 'голоса', 'vote', 'голоси'),
(28, '', 0, 'delete', 'Удалить', 'Delete', 'Видалити'),
(242, '', 0, 'site', 'Сайт', 'Site', 'Сайт'),
(243, '', 0, 'customer', 'Клиент', 'Customer', 'Клієнт '),
(244, '', 0, 'related_projects', 'Связанные проекты\r\n', 'Related projects', 'Пов\'язані проекти'),
(246, '', 0, 'date', 'Дата', 'Date', 'Дата'),
(237, '', 0, 'simple_solution', 'Простое решение', 'A simple solution', 'Просте рішення'),
(36, '', 0, 'registration', 'Регистрация', 'Registration', 'Реєстрація'),
(49, '', 0, 'index_blog', 'Блог', 'Blog', 'Блог'),
(50, '', 0, 'enter_your_email', 'Оставьте свой e-mail', 'Enter your Email', 'Залиште свій e-mail'),
(51, '', 0, 'main_description', 'Этот сайт является демонстрацией скрипта Turbo CMS. Все материалы на этом сайте присутствуют исключительно в демонстрационных целях.', 'This site is a demo of the Turbo CMS script. All materials on this site are present for demonstration purposes only.', 'Цей сайт є демонстрацією скрипта Turbo CMS. Всі матеріали на цьому сайті присутні виключно в демонстраційних цілях.'),
(54, '', 0, 'information', 'Информация', 'Information', 'Інформація'),
(55, '', 0, 'contacts', 'Контакты', 'Contacts', 'Контакти'),
(230, '', 0, 'callback_message', 'Отправьте Ваши контактные данные, заполнив форму, и наши специалисты перезвонят Вам в ближайшее время.', 'Send your contact details by filling out the form, and our specialists will call you back as soon as possible. ', 'Надішліть Ваші контактні дані, заповнивши форму, і наші фахівці зателефонують Вам найближчим часом. '),
(57, '', 0, 'your_phone_number', 'Оставьте свой номер телефона', 'Leave your phone number', 'Залиште свій номер телефону'),
(58, '', 0, 'enter_your_name', 'Введите имя', 'Enter your name', 'Введіть ім\'я'),
(59, '', 0, 'enter_phone_number', 'Введите номер телефона', 'Enter your phone number', 'Введіть номер телефону'),
(60, '', 0, 'captcha_incorrect', 'Неверно введена капча', 'Captcha entered incorrectly', 'Невірно введена капча'),
(62, '', 0, 'enter_captcha', 'Введите капчу', 'Enter captcha', 'Введіть капчу'),
(63, '', 0, 'name', 'Имя', 'Name', 'Ім\'я'),
(64, '', 0, 'enter_a_comment', 'Введите комментарий', 'Enter a comment', 'Введіть коментар'),
(66, '', 0, 'home', 'Главная', 'Home', 'Головна'),
(67, '', 0, 'password', 'Пароль', 'Password', 'Пароль'),
(68, '', 0, 'forgot_your_password', 'Забыли пароль?', 'Forgot your password', 'Забули пароль?'),
(69, '', 0, 'enter_password', 'Введите пароль', 'Enter password', 'Введіть пароль'),
(70, '', 0, 'phone', 'Телефон', 'Phone', 'Телефон'),
(71, '', 0, 'address', 'Адрес', 'Address', 'Адреса'),
(72, '', 0, 'email_already_registered', 'Пользователь с таким email уже зарегистрирован', 'User with this email is already registered', 'Користувач з таким email вже зареєстрований'),
(73, '', 0, 'send', 'Отправить', 'Send', 'Надіслати'),
(74, '', 0, 'short_description', 'Краткое описание', 'Short description', 'Короткий опис'),
(236, '', 0, 'quick_start', 'Быстрый запуск', 'Quick start', 'Швидкий запуск'),
(79, '', 0, 'added', 'Добавлен', 'Added', 'Доданий'),
(81, '', 0, 'description', 'Описание', 'Description', 'Опис'),
(83, '', 0, 'comments_global', 'Комментарии', 'Comments', 'Коментарі'),
(84, '', 0, 'awaiting_moderation', 'ожидает модерации', 'awaiting moderation', 'очікує модерації'),
(85, '', 0, 'comment_1', 'Комментарий', 'Comment', 'Коментар'),
(86, '', 0, 'comment_on', 'Комментировать', 'Comment on', 'Коментувати'),
(87, '', 0, 'no_comments', 'Пока нет комментариев', 'No comments', 'Поки немає коментарів'),
(111, '', 0, 'reply', 'Ответить', 'Reply', 'Відповісти'),
(96, '', 0, 'files_global', 'Файлы', 'Files', 'Файли'),
(97, '', 0, 'videos_global', 'Видео', 'Video', 'Відео'),
(99, '', 0, 'sort_by', 'Сортировать по', 'Sort by', 'Сортувати за'),
(100, '', 0, 'default', 'Умолчанию', 'Default', 'Замовчуванням'),
(105, '', 0, 'by_rating', 'По рейтингу', 'By rating', 'за рейтингом'),
(107, '', 0, 'search', 'Поиск', 'Search', 'Пошук'),
(108, '', 0, 'nothing_found', 'Ничего не найдено', 'Nothing found', 'Нічого не знайдено'),
(109, '', 0, 'enter_search_query', 'Введите поисковый запрос', 'Enter your search term', 'Введіть пошуковий запит'),
(110, '', 0, 'site_search', 'Поиск по сайту', 'Site search', 'Пошук по сайту'),
(112, '', 0, 'at', 'в', 'at', 'в'),
(113, '', 0, 'popular', 'Популярные', 'Popular', 'Популярні'),
(114, '', 0, 'in_order', 'По порядку', 'In order', 'По порядку'),
(115, '', 0, 'comment_2', 'Комментариев', 'Comments', 'Коментарів'),
(116, '', 0, 'table_of_contents', 'Содержание', 'Table of Contents', 'Зміст'),
(117, '', 0, 'already_voted', 'Вы уже голосовали!', 'You have already voted!', 'Ви вже голосували!'),
(119, '', 0, 'message_sent', 'Сообщение отправлено', 'Message sent', 'Повідомлення відправлено'),
(120, '', 0, 'success_subscribe', 'Вы были успешно подписаны', 'You have been successfully subscribed', 'Ви були успішно підписані'),
(121, '', 0, 'already_subscribe', 'Вы уже подписаны', 'You are already subscribed', 'Ви вже підписані'),
(122, '', 0, 'subscribe_to', 'Подписаться', 'Subscribe to', 'Підписатися'),
(123, '', 0, 'search_article', 'Поиск статьи...', 'Search article...', 'Пошук статті...'),
(124, '', 0, 'sitemap', 'Карта сайта', 'Sitemap', 'Карта сайту'),
(125, '', 0, 'index_articles', 'Статьи', 'Articles', 'Статті'),
(127, '', 0, 'sort_date', 'По дате', 'Date', 'За датою'),
(128, '', 0, 'search_blog', 'Поиск в блоге...', 'Search blog...', 'Пошук в блозі...'),
(241, '', 0, 'category', 'Категория', 'Category', 'Категорія'),
(130, '', 0, 'apply', 'Применить', 'Apply', 'Застосувати'),
(131, '', 0, 'reset', 'Сбросить', 'Reset', 'Скинути'),
(133, '', 0, 'index_feedback', 'Обратная связь', 'Feedback', 'Зворотній зв\'язок'),
(134, '', 0, 'feedback_message_sent', 'ваше сообщение отправлено.', 'your message has been sent.', 'ваше повідомлення відправлено.'),
(135, '', 0, 'enter_your_message', 'Введите сообщение', 'Enter your message', 'Введіть повідомлення'),
(136, '', 0, 'message', 'Сообщение', 'Message', 'Повідомлення'),
(137, '', 0, 'password_reminder', 'Напоминание пароля', 'Password reminder', 'Нагадування пароля'),
(138, '', 0, 'email_sent', 'Вам отправлено письмо', 'An email has been sent to you', 'Вам надіслано листа'),
(139, '', 0, 'user_not_found', 'Пользователь не найден', 'User is not found', 'Користувач не знайдений'),
(140, '', 0, 'password_recovery_email', 'отправлено письмо для восстановления пароля.', 'password recovery email has been sent.', 'відправлено лист для відновлення пароля.'),
(141, '', 0, 'enter_email_registration', 'Введите email, который вы указывали при регистрации', 'Enter the email you provided during registration', 'Введіть email, який ви вказали при реєстрації'),
(142, '', 0, 'wrong_login_password', 'Неверный логин или пароль', 'Wrong login or password', 'Невірний логін або пароль'),
(143, '', 0, 'not_activated', 'Ваш аккаунт еще не активирован.', 'Your account has not been activated yet.', 'Ваш аккаунт ще не був активований.'),
(144, '', 0, 'no_post_found', 'Записи не найдены', 'No post found', 'Публікації не знайдено'),
(146, '', 0, 'change_password', 'Изменить пароль', 'Change Password', 'Змінити пароль'),
(147, '', 0, 'save', 'Сохранить', 'Save', 'Зберегти'),
(153, '', 0, 'completed', 'выполнен', 'completed', 'виконаний'),
(154, '', 0, 'site_closed', 'Сайт закрыт на техническое обслуживание', 'Site closed for maintenance', 'Сайт зараз закритий на технічне обслуговування'),
(155, '', 0, 'apologize', 'Приносим извинения за неудобство, но в данный момент сайт находится на техническом обслуживание. Скоро мы вернемся online!', 'We apologize for the inconvenience, but the site is currently undergoing maintenance. We\'ll be back online soon!', 'Приносимо вибачення за незручність, але в даний момент сайт знаходиться на технічному обслуговуванні. Скоро ми повернемося online!'),
(156, '', 0, 'forward', 'вперед', 'forward', 'вперед'),
(157, '', 0, 'back', 'назад', 'back', 'назад'),
(158, '', 0, 'all_at_once', 'все сразу', 'all at once', 'всі відразу'),
(160, '', 0, 'accepted', 'принят', 'accepted', 'прийнятий'),
(161, '', 0, 'general_name', 'Название', 'Name', 'Назва'),
(163, '', 0, 'number', 'Количество', 'Number', 'Кількість'),
(233, '', 0, 'global_projects', 'Проекты', 'Projects', 'Проекти'),
(234, '', 0, 'features_support', 'Поддержка 24/7', '24/7 support', 'Підтримка 24/7 '),
(235, '', 0, 'message_support', 'Здесь вы можете написать анонс к оказываемой услуге при желании.', 'Here you can write an announcement to the service provided if you wish.', 'Тут ви можете написати анонс до наданої послуги при бажанні.'),
(240, '', 0, 'project_details', 'Детали проекта', 'Project details', 'Деталі проекту'),
(238, '', 0, 'search_project', 'Поиск проекта...', 'Search project...', 'Пошук проекта...'),
(227, '', 0, 'sort_name', 'По названию', 'Sort name', 'По назві'),
(228, '', 0, 'services', 'Услуги', 'Services', 'Послуги'),
(229, '', 0, 'about_company', 'О компании', 'About company', 'Про компанію'),
(187, '', 0, 'general_full_name', 'ФИО', 'Full name', 'ПІБ'),
(232, '', 0, 'main_message', 'Этот блок призыва к действию - отличное место для демонстрации важной информации или умного слогана!', 'This call to action block is a great place to showcase important information or a clever slogan! ', 'Цей блок призову до дії - відмінне місце для демонстрації важливої інформації або розумного слогана! '),
(190, '', 0, 'new_password', 'Новый пароль', 'New password', 'Новий пароль'),
(191, '', 0, 'on_the_site', 'на сайте', 'on the site', 'на сайті'),
(192, '', 0, 'email_password_reply', 'был сделан запрос на восстановление вашего пароля.', 'a request was made to recover your password.', 'був зроблений запит на відновлення вашого пароля.'),
(193, '', 0, 'email_password_change', 'Вы можете изменить пароль, перейдя по следующей ссылке', 'You can change your password by following the link below', 'Ви можете змінити пароль, перейшовши за наступним посиланням'),
(194, '', 0, 'email_password_text', 'Эта ссылка действует в течение нескольких минут. <br> Если это письмо пришло вам по ошибке, проигнорируйте его.', 'This link is effective for a few minutes. <br> If you received this error in error, ignore it.', 'Це посилання діє протягом декількох хвилин. <br>  Якщо цей лист прийшло вам помилково, ігноруйте його.'),
(197, '', 0, 'canceled', 'отменен', 'canceled', 'скасований'),
(205, '', 0, 'no_articles_found', 'Статьи не найдены', 'No articles found', 'Статті не знайдені'),
(206, '', 0, 'popular_categories', 'Популярные категории', 'Popular Categories', 'Популярні категорії'),
(211, '', 0, 'see_all', 'Посмотреть все', 'See all', 'Переглянути всі'),
(212, '', 0, 'captcha', 'Капча', 'Captcha', 'Капча'),
(217, '', 0, 'email_comment_hello', 'Здравствуйте,', 'Hello,', 'Вітаємо,'),
(239, '', 0, 'project_annotation', 'Краткое описание проекта', 'Project annotation', 'Короткий опис проекту'),
(224, '', 0, 'password_remind_title', 'Восстановление пароля', 'Password recovery', 'Відновлення пароля'),
(247, '', 0, 'no_projects_found', 'Проекты не найдены', 'No projects found', 'Проекти не знайдені'),
(248, '', 0, 'to_contact_us', 'Связаться с нами', 'To contact us', 'Зв\'язатися з нами'),
(250, '', 0, 'comment_3', 'Комментария', 'Comment', 'Коментаря'),
(251, '', 0, 'reviews_global', 'Отзывы', 'Reviews', 'Відгуки'),
(252, '', 0, 'heading', 'Рубрика', 'Heading', 'Рубрика');

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
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_users`
--

INSERT INTO `t_users` (`id`, `email`, `password`, `name`, `phone`, `enabled`, `last_ip`, `created`) VALUES
(1, 'me@example.com', '003ff6279857ddb9bb1ccf7a1c86f710', 'John Smith', '+1(234) 567-89-01', 1, '127.0.0.1', '2021-01-24 00:52:13');

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
  ADD KEY `visible` (`visible`),
  ADD KEY `external_id` (`external_id`);

--
-- Indexes for table `t_banners`
--
ALTER TABLE `t_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position` (`position`),
  ADD KEY `visible` (`visible`),
  ADD KEY `show_all_pages` (`show_all_pages`),
  ADD KEY `category` (`projects_categories`),
  ADD KEY `pages` (`pages`);

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
  ADD KEY `product_id` (`object_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `t_faq`
--
ALTER TABLE `t_faq`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enabled` (`visible`);

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
  ADD KEY `order_num` (`position`),
  ADD KEY `url` (`url`(250));

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_articles_categories`
--
ALTER TABLE `t_articles_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_banners`
--
ALTER TABLE `t_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_banners_images`
--
ALTER TABLE `t_banners_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_faq`
--
ALTER TABLE `t_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `t_feedbacks`
--
ALTER TABLE `t_feedbacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_files`
--
ALTER TABLE `t_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_images_project`
--
ALTER TABLE `t_images_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_languages`
--
ALTER TABLE `t_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_menu`
--
ALTER TABLE `t_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_pages`
--
ALTER TABLE `t_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `t_projects`
--
ALTER TABLE `t_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_projects_categories`
--
ALTER TABLE `t_projects_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_seo`
--
ALTER TABLE `t_seo`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_settings`
--
ALTER TABLE `t_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `t_subscribes`
--
ALTER TABLE `t_subscribes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_translations`
--
ALTER TABLE `t_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

