-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2018 at 11:42 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'akismet_error', '1529842154'),
(2, 2, 'akismet_history', 'a:4:{s:4:"time";d:1529842154.848649;s:5:"event";s:11:"check-error";s:4:"user";s:4:"root";s:4:"meta";a:1:{s:8:"response";s:7:"invalid";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-12 09:37:01', '2018-06-12 09:37:01', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'root', 'roaya.mohsen22@gmail.com', '', '::1', '2018-06-24 12:09:14', '2018-06-24 12:09:14', 'hhhhhhhhh', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Topia', 'yes'),
(4, 'blogdescription', 'To learn wordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'roaya.mohsen22@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:19:"akismet/akismet.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:56:"/var/www/html/wordpress/wp-content/themes/test/style.css";i:2;s:62:"/var/www/html/wordpress/wp-content/plugins/akismet/akismet.php";i:3;s:0:"";}', 'no'),
(40, 'template', 'dotEmirates', 'yes'),
(41, 'stylesheet', 'dotEmirates', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:4:"test";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:11:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";i:4;s:8:"search-3";i:5;s:8:"search-2";i:6;s:14:"recent-posts-2";i:7;s:17:"recent-comments-2";i:8;s:10:"archives-2";i:9;s:12:"categories-2";i:10;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:7:{i:1531211823;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1531215423;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1531215463;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1531216594;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1531224554;a:1:{s:24:"akismet_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1531227364;a:1:{s:29:"akismet_schedule_cron_recheck";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1531142117;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:5:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";i:4;s:8:"search-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(120, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1531205766;s:7:"checked";a:5:{s:11:"dotEmirates";s:0:"";s:4:"test";s:0:"";s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.6";s:13:"twentysixteen";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '0', 'no'),
(135, 'ftp_credentials', 'a:3:{s:8:"hostname";s:28:"topia145167147.wordpress.com";s:8:"username";s:4:"root";s:15:"connection_type";s:4:"ftps";}', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(170, 'current_theme', '', 'yes'),
(171, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1529332258;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(172, 'theme_switched', '', 'yes'),
(194, 'theme_mods_test', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:14:"bootstrap-menu";i:2;s:11:"footer-menu";i:0;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1531142018;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:12:"main-sidebar";a:1:{i:0;s:8:"search-3";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(197, '_transient_twentyfifteen_categories', '1', 'yes'),
(201, 'WPLANG', '', 'yes'),
(202, 'new_admin_email', 'roaya.mohsen22@gmail.com', 'yes'),
(225, 'theme_switched_via_customizer', '', 'yes'),
(226, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(271, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(315, 'theme_mods_twentysixteen', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1529499814;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(322, '_transient_twentysixteen_categories', '1', 'yes'),
(356, 'category_children', 'a:0:{}', 'yes'),
(398, 'theme_mods_dotEmirates', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:14:"bootstrap-menu";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1531142048;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:11:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";i:4;s:8:"search-3";i:5;s:8:"search-2";i:6;s:14:"recent-posts-2";i:7;s:17:"recent-comments-2";i:8;s:10:"archives-2";i:9;s:12:"categories-2";i:10;s:6:"meta-2";}}}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(407, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.7.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.7-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.7";s:7:"version";s:5:"4.9.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1531205763;s:15:"version_checked";s:5:"4.9.7";s:12:"translations";a:0:{}}', 'no'),
(408, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:24:"roaya.mohsen22@gmail.com";s:7:"version";s:5:"4.9.7";s:9:"timestamp";i:1531041169;}', 'no'),
(409, '_site_transient_timeout_browser_380cc3dcb3b0a2e8b6a8a5699464d255', '1531645983', 'no'),
(410, '_site_transient_browser_380cc3dcb3b0a2e8b6a8a5699464d255', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"50.0.2661.102";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(444, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1531205764;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:25:"fakerpress/fakerpress.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/fakerpress";s:4:"slug";s:10:"fakerpress";s:6:"plugin";s:25:"fakerpress/fakerpress.php";s:11:"new_version";s:6:"0.4.11";s:3:"url";s:41:"https://wordpress.org/plugins/fakerpress/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/fakerpress.zip";s:5:"icons";a:3:{s:2:"2x";s:63:"https://ps.w.org/fakerpress/assets/icon-256x256.png?rev=1846090";s:2:"1x";s:55:"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090";s:3:"svg";s:55:"https://ps.w.org/fakerpress/assets/icon.svg?rev=1846090";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/fakerpress/assets/banner-1544x500.png?rev=1152002";s:2:"1x";s:65:"https://ps.w.org/fakerpress/assets/banner-772x250.png?rev=1152002";}s:11:"banners_rtl";a:0:{}}s:22:"gp-post-like/index.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/gp-post-like";s:4:"slug";s:12:"gp-post-like";s:6:"plugin";s:22:"gp-post-like/index.php";s:11:"new_version";s:3:"1.0";s:3:"url";s:43:"https://wordpress.org/plugins/gp-post-like/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/gp-post-like.1.0.zip";s:5:"icons";a:1:{s:2:"1x";s:65:"https://ps.w.org/gp-post-like/assets/icon-128x128.png?rev=1445381";}s:7:"banners";a:1:{s:2:"1x";s:67:"https://ps.w.org/gp-post-like/assets/banner-772x250.png?rev=1445381";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(470, 'link_options', 'a:6:{s:8:"facebook";s:0:"";s:7:"twitter";s:0:"";s:8:"telegram";s:0:"";s:9:"logo_type";i:1;s:8:"logo_img";s:0:"";s:6:"footer";s:0:"";}', 'yes'),
(487, 'opts', 'a:4:{s:8:"Facebook";s:12:"facebook.com";s:7:"Twitter";s:11:"twitter.com";s:8:"Telegram";s:12:"telegram.com";s:4:"logo";s:59:"http://localhost/wordpress/wp-content/uploads/2018/06/1.jpg";}', 'yes'),
(500, '_site_transient_timeout_theme_roots', '1531207565', 'no'),
(501, '_site_transient_theme_roots', 'a:5:{s:11:"dotEmirates";s:7:"/themes";s:4:"test";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(502, '_site_transient_timeout_available_translations', '1531216737', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(503, '_site_transient_available_translations', 'a:113:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-06 13:56:09";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.4/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-09 07:24:12";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.7/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 08:43:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-23 07:27:43";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 03:44:52";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 04:48:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.7/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 06:46:23";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-07 10:10:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.7/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 08:46:24";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-08 16:42:22";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.9.7/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-08 16:40:04";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 13:02:45";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 13:02:59";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.7/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-05 12:41:56";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 07:35:25";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-05 22:07:01";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-05 22:06:40";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-05 20:57:02";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 10:18:25";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 10:52:53";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.7/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-09 17:55:52";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-26 13:11:18";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-16 04:48:17";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 23:17:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-19 14:11:29";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-07 08:17:12";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-16 10:29:40";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-05 19:34:08";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 21:23:19";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-26 08:11:46";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-02-14 06:16:04";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.7/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-15 08:49:46";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-06-17 09:33:44";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-09 17:30:15";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.7/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 22:45:22";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-10 03:24:01";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 05:36:29";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-21 16:18:57";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-08 06:01:48";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-22 22:24:38";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-10 00:11:05";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-24 09:42:27";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-23 08:05:19";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-07-04 18:18:06";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 07:24:36";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.7/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 07:22:35";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-09 17:56:24";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-07 06:25:16";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-12 12:14:24";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-05 22:28:16";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 09:30:48";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.5/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 08:49:25";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-09 06:35:27";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-05 19:21:47";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 12:55:35";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-25 10:30:04";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-05-17 22:21:34";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.6/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-05 20:09:13";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-02 17:08:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 11:02:31";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-07-06 08:18:32";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.7/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-20 11:37:47";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-09 10:37:43";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.6";s:7:"updated";s:19:"2018-06-14 04:18:32";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.6/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-09 00:56:52";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.9.4";s:7:"updated";s:19:"2018-02-13 02:41:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.4/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-17 22:20:52";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(13, 11, '_edit_last', '1'),
(16, 11, '_edit_lock', '1529831052:1'),
(17, 14, '_wp_attached_file', '2018/06/images.png'),
(18, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:189;s:6:"height";i:267;s:4:"file";s:18:"2018/06/images.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"images-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 15, '_wp_trash_meta_status', 'publish'),
(21, 15, '_wp_trash_meta_time', '1529319290'),
(22, 16, '_menu_item_type', 'custom'),
(23, 16, '_menu_item_menu_item_parent', '0'),
(24, 16, '_menu_item_object_id', '16'),
(25, 16, '_menu_item_object', 'custom'),
(26, 16, '_menu_item_target', ''),
(27, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(28, 16, '_menu_item_xfn', ''),
(29, 16, '_menu_item_url', 'http://localhost/wordpress/'),
(30, 16, '_menu_item_orphaned', '1529332217'),
(31, 17, '_menu_item_type', 'post_type'),
(32, 17, '_menu_item_menu_item_parent', '0'),
(33, 17, '_menu_item_object_id', '2'),
(34, 17, '_menu_item_object', 'page'),
(35, 17, '_menu_item_target', ''),
(36, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(37, 17, '_menu_item_xfn', ''),
(38, 17, '_menu_item_url', ''),
(39, 17, '_menu_item_orphaned', '1529332218'),
(40, 18, '_menu_item_type', 'custom'),
(41, 18, '_menu_item_menu_item_parent', '0'),
(42, 18, '_menu_item_object_id', '18'),
(43, 18, '_menu_item_object', 'custom'),
(44, 18, '_menu_item_target', ''),
(45, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 18, '_menu_item_xfn', ''),
(47, 18, '_menu_item_url', 'http://localhost/wordpress/'),
(48, 18, '_menu_item_orphaned', '1529332230'),
(49, 19, '_menu_item_type', 'post_type'),
(50, 19, '_menu_item_menu_item_parent', '0'),
(51, 19, '_menu_item_object_id', '2'),
(52, 19, '_menu_item_object', 'page'),
(53, 19, '_menu_item_target', ''),
(54, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(55, 19, '_menu_item_xfn', ''),
(56, 19, '_menu_item_url', ''),
(57, 19, '_menu_item_orphaned', '1529332231'),
(58, 20, '_menu_item_type', 'custom'),
(59, 20, '_menu_item_menu_item_parent', '0'),
(60, 20, '_menu_item_object_id', '20'),
(61, 20, '_menu_item_object', 'custom'),
(62, 20, '_menu_item_target', ''),
(63, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 20, '_menu_item_xfn', ''),
(65, 20, '_menu_item_url', 'http://localhost/wordpress/'),
(66, 20, '_menu_item_orphaned', '1529332274'),
(67, 21, '_menu_item_type', 'post_type'),
(68, 21, '_menu_item_menu_item_parent', '0'),
(69, 21, '_menu_item_object_id', '2'),
(70, 21, '_menu_item_object', 'page'),
(71, 21, '_menu_item_target', ''),
(72, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 21, '_menu_item_xfn', ''),
(74, 21, '_menu_item_url', ''),
(75, 21, '_menu_item_orphaned', '1529332274'),
(76, 22, '_menu_item_type', 'custom'),
(77, 22, '_menu_item_menu_item_parent', '0'),
(78, 22, '_menu_item_object_id', '22'),
(79, 22, '_menu_item_object', 'custom'),
(80, 22, '_menu_item_target', ''),
(81, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(82, 22, '_menu_item_xfn', ''),
(83, 22, '_menu_item_url', 'http://localhost/wordpress/'),
(84, 22, '_menu_item_orphaned', '1529332283'),
(85, 23, '_menu_item_type', 'post_type'),
(86, 23, '_menu_item_menu_item_parent', '0'),
(87, 23, '_menu_item_object_id', '2'),
(88, 23, '_menu_item_object', 'page'),
(89, 23, '_menu_item_target', ''),
(90, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(91, 23, '_menu_item_xfn', ''),
(92, 23, '_menu_item_url', ''),
(93, 23, '_menu_item_orphaned', '1529332283'),
(94, 24, '_menu_item_type', 'custom'),
(95, 24, '_menu_item_menu_item_parent', '0'),
(96, 24, '_menu_item_object_id', '24'),
(97, 24, '_menu_item_object', 'custom'),
(98, 24, '_menu_item_target', ''),
(99, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(100, 24, '_menu_item_xfn', ''),
(101, 24, '_menu_item_url', 'http://localhost/wordpress/'),
(102, 24, '_menu_item_orphaned', '1529332285'),
(103, 25, '_menu_item_type', 'post_type'),
(104, 25, '_menu_item_menu_item_parent', '0'),
(105, 25, '_menu_item_object_id', '2'),
(106, 25, '_menu_item_object', 'page'),
(107, 25, '_menu_item_target', ''),
(108, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(109, 25, '_menu_item_xfn', ''),
(110, 25, '_menu_item_url', ''),
(111, 25, '_menu_item_orphaned', '1529332285'),
(112, 26, '_menu_item_type', 'custom'),
(113, 26, '_menu_item_menu_item_parent', '0'),
(114, 26, '_menu_item_object_id', '26'),
(115, 26, '_menu_item_object', 'custom'),
(116, 26, '_menu_item_target', ''),
(117, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(118, 26, '_menu_item_xfn', ''),
(119, 26, '_menu_item_url', 'http://localhost/wordpress/'),
(120, 26, '_menu_item_orphaned', '1529332309'),
(121, 27, '_menu_item_type', 'post_type'),
(122, 27, '_menu_item_menu_item_parent', '0'),
(123, 27, '_menu_item_object_id', '2'),
(124, 27, '_menu_item_object', 'page'),
(125, 27, '_menu_item_target', ''),
(126, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 27, '_menu_item_xfn', ''),
(128, 27, '_menu_item_url', ''),
(129, 27, '_menu_item_orphaned', '1529332310'),
(147, 30, '_menu_item_type', 'post_type'),
(148, 30, '_menu_item_menu_item_parent', '0'),
(149, 30, '_menu_item_object_id', '2'),
(150, 30, '_menu_item_object', 'page'),
(151, 30, '_menu_item_target', ''),
(152, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(153, 30, '_menu_item_xfn', ''),
(154, 30, '_menu_item_url', ''),
(155, 30, '_menu_item_orphaned', '1529483319'),
(156, 31, '_menu_item_type', 'post_type'),
(157, 31, '_menu_item_menu_item_parent', '0'),
(158, 31, '_menu_item_object_id', '2'),
(159, 31, '_menu_item_object', 'page'),
(160, 31, '_menu_item_target', ''),
(161, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 31, '_menu_item_xfn', ''),
(163, 31, '_menu_item_url', ''),
(164, 31, '_menu_item_orphaned', '1529483333'),
(165, 32, '_edit_last', '1'),
(174, 32, '_edit_lock', '1529483423:1'),
(175, 35, '_edit_last', '1'),
(176, 35, '_edit_lock', '1529483422:1'),
(185, 38, '_menu_item_type', 'post_type'),
(186, 38, '_menu_item_menu_item_parent', '0'),
(187, 38, '_menu_item_object_id', '35'),
(188, 38, '_menu_item_object', 'page'),
(189, 38, '_menu_item_target', ''),
(190, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(191, 38, '_menu_item_xfn', ''),
(192, 38, '_menu_item_url', ''),
(203, 43, '_menu_item_type', 'post_type'),
(204, 43, '_menu_item_menu_item_parent', '0'),
(205, 43, '_menu_item_object_id', '32'),
(206, 43, '_menu_item_object', 'page'),
(207, 43, '_menu_item_target', ''),
(208, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 43, '_menu_item_xfn', ''),
(210, 43, '_menu_item_url', ''),
(212, 2, '_wp_trash_meta_status', 'publish'),
(213, 2, '_wp_trash_meta_time', '1529484126'),
(214, 2, '_wp_desired_post_slug', 'sample-page'),
(215, 3, '_wp_trash_meta_status', 'draft'),
(216, 3, '_wp_trash_meta_time', '1529484129'),
(217, 3, '_wp_desired_post_slug', 'privacy-policy'),
(218, 46, '_edit_last', '1'),
(227, 46, '_edit_lock', '1529484537:1'),
(228, 49, '_menu_item_type', 'post_type'),
(229, 49, '_menu_item_menu_item_parent', '0'),
(230, 49, '_menu_item_object_id', '35'),
(231, 49, '_menu_item_object', 'page'),
(232, 49, '_menu_item_target', ''),
(233, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(234, 49, '_menu_item_xfn', ''),
(235, 49, '_menu_item_url', ''),
(236, 49, '_menu_item_orphaned', '1529484719'),
(237, 50, '_menu_item_type', 'post_type'),
(238, 50, '_menu_item_menu_item_parent', '0'),
(239, 50, '_menu_item_object_id', '32'),
(240, 50, '_menu_item_object', 'page'),
(241, 50, '_menu_item_target', ''),
(242, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(243, 50, '_menu_item_xfn', ''),
(244, 50, '_menu_item_url', ''),
(245, 50, '_menu_item_orphaned', '1529484720'),
(246, 51, '_edit_last', '1'),
(247, 51, '_edit_lock', '1529489849:1'),
(266, 55, '_menu_item_type', 'post_type'),
(267, 55, '_menu_item_menu_item_parent', '0'),
(268, 55, '_menu_item_object_id', '35'),
(269, 55, '_menu_item_object', 'page'),
(270, 55, '_menu_item_target', ''),
(271, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(272, 55, '_menu_item_xfn', ''),
(273, 55, '_menu_item_url', ''),
(275, 56, '_menu_item_type', 'post_type'),
(276, 56, '_menu_item_menu_item_parent', '0'),
(277, 56, '_menu_item_object_id', '32'),
(278, 56, '_menu_item_object', 'page'),
(279, 56, '_menu_item_target', ''),
(280, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(281, 56, '_menu_item_xfn', ''),
(282, 56, '_menu_item_url', ''),
(302, 60, '_wp_attached_file', '2018/06/0810813b8495f5cd77270f5681a80b90.jpg'),
(303, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:236;s:6:"height";i:314;s:4:"file";s:44:"2018/06/0810813b8495f5cd77270f5681a80b90.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"0810813b8495f5cd77270f5681a80b90-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"0810813b8495f5cd77270f5681a80b90-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:44:"0810813b8495f5cd77270f5681a80b90-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(304, 61, '_wp_attached_file', '2018/06/0810813b8495f5cd77270f5681a80b90-1.jpg'),
(305, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:236;s:6:"height";i:314;s:4:"file";s:46:"2018/06/0810813b8495f5cd77270f5681a80b90-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"0810813b8495f5cd77270f5681a80b90-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"0810813b8495f5cd77270f5681a80b90-1-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:46:"0810813b8495f5cd77270f5681a80b90-1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(306, 11, '_thumbnail_id', '69'),
(309, 1, '_edit_lock', '1529510606:1'),
(310, 64, '_wp_attached_file', '2018/06/ca5a12e6406eda38fdd5f46eefb5d3d8.jpg'),
(311, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:236;s:6:"height";i:354;s:4:"file";s:44:"2018/06/ca5a12e6406eda38fdd5f46eefb5d3d8.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"ca5a12e6406eda38fdd5f46eefb5d3d8-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"ca5a12e6406eda38fdd5f46eefb5d3d8-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(312, 1, '_edit_last', '1'),
(313, 1, '_thumbnail_id', '69'),
(320, 69, '_wp_attached_file', '2018/06/1.jpg'),
(321, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:852;s:6:"height";i:480;s:4:"file";s:13:"2018/06/1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"1-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(324, 70, '_wp_attached_file', '2018/06/space_debris_1.jpg'),
(325, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:26:"2018/06/space_debris_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"space_debris_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"space_debris_1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"space_debris_1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(334, 77, '_edit_last', '1'),
(335, 77, '_edit_lock', '1529841986:1'),
(338, 79, '_wp_attached_file', '2018/06/space_debris_1-1.jpg'),
(339, 79, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:28:"2018/06/space_debris_1-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"space_debris_1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"space_debris_1-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:28:"space_debris_1-1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(340, 77, '_thumbnail_id', '80'),
(343, 80, '_wp_attached_file', '2018/06/1-1.jpg'),
(344, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:852;s:6:"height";i:480;s:4:"file";s:15:"2018/06/1-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-1-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"1-1-768x433.jpg";s:5:"width";i:768;s:6:"height";i:433;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(349, 81, '_edit_last', '1'),
(350, 81, '_edit_lock', '1529832688:1'),
(351, 82, '_menu_item_type', 'post_type'),
(352, 82, '_menu_item_menu_item_parent', '0'),
(353, 82, '_menu_item_object_id', '81'),
(354, 82, '_menu_item_object', 'page'),
(355, 82, '_menu_item_target', ''),
(356, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(357, 82, '_menu_item_xfn', ''),
(358, 82, '_menu_item_url', ''),
(359, 85, '_menu_item_type', 'taxonomy'),
(360, 85, '_menu_item_menu_item_parent', '82'),
(361, 85, '_menu_item_object_id', '5'),
(362, 85, '_menu_item_object', 'category'),
(363, 85, '_menu_item_target', ''),
(364, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(365, 85, '_menu_item_xfn', ''),
(366, 85, '_menu_item_url', ''),
(368, 86, '_menu_item_type', 'taxonomy'),
(369, 86, '_menu_item_menu_item_parent', '82'),
(370, 86, '_menu_item_object_id', '7'),
(371, 86, '_menu_item_object', 'category'),
(372, 86, '_menu_item_target', ''),
(373, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(374, 86, '_menu_item_xfn', ''),
(375, 86, '_menu_item_url', ''),
(377, 87, '_menu_item_type', 'taxonomy'),
(378, 87, '_menu_item_menu_item_parent', '0'),
(379, 87, '_menu_item_object_id', '8'),
(380, 87, '_menu_item_object', 'category'),
(381, 87, '_menu_item_target', ''),
(382, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(383, 87, '_menu_item_xfn', ''),
(384, 87, '_menu_item_url', ''),
(385, 87, '_menu_item_orphaned', '1529832867'),
(386, 89, '_menu_item_type', 'post_type'),
(387, 89, '_menu_item_menu_item_parent', '0'),
(388, 89, '_menu_item_object_id', '81'),
(389, 89, '_menu_item_object', 'page'),
(390, 89, '_menu_item_target', ''),
(391, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(392, 89, '_menu_item_xfn', ''),
(393, 89, '_menu_item_url', ''),
(394, 90, '_wp_attached_file', '2018/07/space_debris_1.jpg'),
(395, 90, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:26:"2018/07/space_debris_1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"space_debris_1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"space_debris_1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"space_debris_1-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(396, 91, '_edit_last', '1'),
(397, 91, '_edit_lock', '1531210966:1'),
(398, 92, '_menu_item_type', 'post_type'),
(399, 92, '_menu_item_menu_item_parent', '0'),
(400, 92, '_menu_item_object_id', '91'),
(401, 92, '_menu_item_object', 'page'),
(402, 92, '_menu_item_target', ''),
(403, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(404, 92, '_menu_item_xfn', ''),
(405, 92, '_menu_item_url', ''),
(406, 94, '_edit_last', '1'),
(407, 95, '_menu_item_type', 'post_type'),
(408, 95, '_menu_item_menu_item_parent', '0'),
(409, 95, '_menu_item_object_id', '94'),
(410, 95, '_menu_item_object', 'page'),
(411, 95, '_menu_item_target', ''),
(412, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(413, 95, '_menu_item_xfn', ''),
(414, 95, '_menu_item_url', ''),
(415, 94, '_edit_lock', '1531206741:1'),
(416, 98, 'info', 'info@dotemirates.com'),
(417, 98, '_edit_last', '1'),
(418, 98, '_edit_lock', '1531207743:1'),
(419, 98, 'info', 'info@dotemirates.com'),
(420, 98, 'writing', 'info@dotemirates.com'),
(421, 98, 'advertisement', 'advertising@dotemirates.com'),
(422, 100, '_menu_item_type', 'post_type'),
(423, 100, '_menu_item_menu_item_parent', '0'),
(424, 100, '_menu_item_object_id', '98'),
(425, 100, '_menu_item_object', 'page'),
(426, 100, '_menu_item_target', ''),
(427, 100, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(428, 100, '_menu_item_xfn', ''),
(429, 100, '_menu_item_url', ''),
(430, 102, '_edit_last', '1'),
(431, 102, '_edit_lock', '1531211294:1'),
(432, 103, '_menu_item_type', 'post_type'),
(433, 103, '_menu_item_menu_item_parent', '0'),
(434, 103, '_menu_item_object_id', '102'),
(435, 103, '_menu_item_object', 'page'),
(436, 103, '_menu_item_target', ''),
(437, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(438, 103, '_menu_item_xfn', ''),
(439, 103, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-12 09:37:01', '2018-06-12 09:37:01', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-20 15:22:31', '2018-06-20 15:22:31', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 2),
(2, 1, '2018-06-12 09:37:01', '2018-06-12 09:37:01', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-06-20 08:42:06', '2018-06-20 08:42:06', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-12 09:37:01', '2018-06-12 09:37:01', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-06-20 08:42:09', '2018-06-20 08:42:09', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(11, 1, '2018-06-12 09:56:40', '2018-06-12 09:56:40', '<pre id="lyric-body-text" class="lyric-body wselect-cnt">Is this the real life?\r\nIs this just fantasy?\r\nCaught in a landslide</pre>\r\nNo escape from reality Open your eyes\r\nLook up to the skies and see I\'m just a poor boy, I need no sympathy Because I\'m easy come, easy go A little high, little low Anyway the wind blows, doesn\'t really matter to me, to me Mama, just killed a man Put a gun against his head Pulled my trigger, now he\'s dead Mama, life had just begun But now I\'ve gone and thrown it all away Mama, ooo Didn\'t mean to make you cry If I\'m not back again this time tomorrow Carry on, carry on, as if nothing really matters', 'test', '', 'publish', 'open', 'open', '', 'gggggggg', '', '', '2018-06-24 09:03:47', '2018-06-24 09:03:47', '', 0, 'http://localhost/wordpress/?p=11', 0, 'post', '', 0),
(12, 1, '2018-06-12 09:56:40', '2018-06-12 09:56:40', 'ggggggg', 'gggggggg', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-12 09:56:40', '2018-06-12 09:56:40', '', 11, 'http://localhost/wordpress/index.php/2018/06/12/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-06-12 10:38:47', '2018-06-12 10:38:47', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-06-12 10:38:47', '2018-06-12 10:38:47', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/images.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2018-06-18 10:54:50', '2018-06-18 10:54:50', '{\n    "old_sidebars_widgets_data": {\n        "value": {\n            "wp_inactive_widgets": [\n                "text-2",\n                "text-3",\n                "text-4",\n                "text-5"\n            ],\n            "sidebar-1": [\n                "search-2",\n                "recent-posts-2",\n                "recent-comments-2",\n                "archives-2",\n                "categories-2",\n                "meta-2"\n            ]\n        },\n        "type": "global_variable",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-18 10:54:50"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0ecc13bb-b709-4f8d-a7f7-1d1590e22143', '', '', '2018-06-18 10:54:50', '2018-06-18 10:54:50', '', 0, 'http://localhost/wordpress/index.php/2018/06/18/0ecc13bb-b709-4f8d-a7f7-1d1590e22143/', 0, 'customize_changeset', '', 0),
(16, 1, '2018-06-18 14:30:17', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:30:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2018-06-18 14:30:17', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:30:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2018-06-18 14:30:30', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:30:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-06-18 14:30:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:30:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-06-18 14:31:13', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-06-18 14:31:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-06-18 14:31:22', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2018-06-18 14:31:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2018-06-18 14:31:24', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2018-06-18 14:31:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-06-18 14:31:49', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-06-18 14:31:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-18 14:31:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=27', 1, 'nav_menu_item', '', 0),
(30, 1, '2018-06-20 08:28:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-20 08:28:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-06-20 08:28:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-20 08:28:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2018-06-20 08:29:55', '2018-06-20 08:29:55', '', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-06-20 08:29:55', '2018-06-20 08:29:55', '', 0, 'http://localhost/wordpress/?page_id=32', 0, 'page', '', 0),
(34, 1, '2018-06-20 08:29:55', '2018-06-20 08:29:55', '', 'About us', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-06-20 08:29:55', '2018-06-20 08:29:55', '', 32, 'http://localhost/wordpress/index.php/2018/06/20/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-06-20 08:30:55', '2018-06-20 08:30:55', '', 'contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-06-20 08:30:55', '2018-06-20 08:30:55', '', 0, 'http://localhost/wordpress/?page_id=35', 0, 'page', '', 0),
(36, 1, '2018-06-20 08:30:13', '2018-06-20 08:30:13', '', 'contact us', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2018-06-20 08:30:13', '2018-06-20 08:30:13', '', 35, 'http://localhost/wordpress/index.php/2018/06/20/35-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-06-20 08:31:28', '2018-06-20 08:31:28', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-06-20 08:39:28', '2018-06-20 08:39:28', '', 0, 'http://localhost/wordpress/?p=38', 1, 'nav_menu_item', '', 0),
(43, 1, '2018-06-20 08:33:27', '2018-06-20 08:33:27', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2018-06-20 08:39:28', '2018-06-20 08:39:28', '', 0, 'http://localhost/wordpress/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2018-06-20 08:42:06', '2018-06-20 08:42:06', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-20 08:42:06', '2018-06-20 08:42:06', '', 2, 'http://localhost/wordpress/index.php/2018/06/20/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-06-20 08:42:09', '2018-06-20 08:42:09', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-06-20 08:42:09', '2018-06-20 08:42:09', '', 3, 'http://localhost/wordpress/index.php/2018/06/20/3-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-06-20 08:51:16', '2018-06-20 08:51:16', '', 'service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2018-06-20 08:51:16', '2018-06-20 08:51:16', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(48, 1, '2018-06-20 08:51:16', '2018-06-20 08:51:16', '', 'service', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-06-20 08:51:16', '2018-06-20 08:51:16', '', 46, 'http://localhost/wordpress/index.php/2018/06/20/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-06-20 08:51:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-20 08:51:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=49', 1, 'nav_menu_item', '', 0),
(50, 1, '2018-06-20 08:51:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-20 08:51:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=50', 1, 'nav_menu_item', '', 0),
(51, 1, '2018-06-20 09:25:13', '2018-06-20 09:25:13', '', 'hosting', '', 'publish', 'closed', 'closed', '', 'hosting', '', '', '2018-06-20 10:19:48', '2018-06-20 10:19:48', '', 46, 'http://localhost/wordpress/?page_id=51', 1, 'page', '', 0),
(52, 1, '2018-06-20 09:25:13', '2018-06-20 09:25:13', '', 'hosting', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2018-06-20 09:25:13', '2018-06-20 09:25:13', '', 51, 'http://localhost/wordpress/index.php/2018/06/20/51-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-06-20 09:27:54', '2018-06-20 09:27:54', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-06-24 09:34:59', '2018-06-24 09:34:59', '', 0, 'http://localhost/wordpress/?p=55', 5, 'nav_menu_item', '', 0),
(56, 1, '2018-06-20 09:27:55', '2018-06-20 09:27:55', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-06-24 09:34:59', '2018-06-24 09:34:59', '', 0, 'http://localhost/wordpress/?p=56', 1, 'nav_menu_item', '', 0),
(60, 1, '2018-06-20 12:08:04', '2018-06-20 12:08:04', '', '0810813b8495f5cd77270f5681a80b90', '', 'inherit', 'open', 'closed', '', '0810813b8495f5cd77270f5681a80b90', '', '', '2018-06-20 12:08:04', '2018-06-20 12:08:04', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06/0810813b8495f5cd77270f5681a80b90.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2018-06-20 12:08:29', '2018-06-20 12:08:29', '', '0810813b8495f5cd77270f5681a80b90', '', 'inherit', 'open', 'closed', '', '0810813b8495f5cd77270f5681a80b90-2', '', '', '2018-06-20 12:08:29', '2018-06-20 12:08:29', '', 11, 'http://localhost/wordpress/wp-content/uploads/2018/06/0810813b8495f5cd77270f5681a80b90-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-06-20 12:10:22', '2018-06-20 12:10:22', '', 'ca5a12e6406eda38fdd5f46eefb5d3d8', '', 'inherit', 'open', 'closed', '', 'ca5a12e6406eda38fdd5f46eefb5d3d8', '', '', '2018-06-20 12:10:22', '2018-06-20 12:10:22', '', 1, 'http://localhost/wordpress/wp-content/uploads/2018/06/ca5a12e6406eda38fdd5f46eefb5d3d8.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2018-06-20 12:10:38', '2018-06-20 12:10:38', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-06-20 12:10:38', '2018-06-20 12:10:38', '', 1, 'http://localhost/wordpress/index.php/2018/06/20/1-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-06-20 14:59:35', '2018-06-20 14:59:35', 'ggggggg', 'test', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-20 14:59:35', '2018-06-20 14:59:35', '', 11, 'http://localhost/wordpress/index.php/2018/06/20/11-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-06-20 15:21:18', '2018-06-20 15:21:18', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-06-20 15:21:18', '2018-06-20 15:21:18', '', 11, 'http://localhost/wordpress/wp-content/uploads/2018/06/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-06-20 15:21:44', '2018-06-20 15:21:44', '', 'space_debris_1', '', 'inherit', 'open', 'closed', '', 'space_debris_1', '', '', '2018-06-20 15:21:44', '2018-06-20 15:21:44', '', 1, 'http://localhost/wordpress/wp-content/uploads/2018/06/space_debris_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2018-06-24 08:34:03', '2018-06-24 08:34:03', '<pre id="lyric-body-text" class="lyric-body wselect-cnt">Is this the real life?\r\nIs this just fantasy?\r\nCaught in a landslide\r\nNo escape from reality\r\nOpen your eyes\r\nLook up to the skies and see\r\nI\'m just a poor boy, I need no sympathy\r\nBecause I\'m easy come, easy go\r\nA little high, little low\r\nAnyway the wind blows, doesn\'t really matter to me, to me\r\n\r\nMama, just killed a man\r\nPut a gun against his head\r\nPulled my trigger, now he\'s dead\r\nMama, life had just begun\r\nBut now I\'ve gone and thrown it all away\r\nMama, ooo\r\nDidn\'t mean to make you cry\r\nIf I\'m not back again this time tomorrow\r\nCarry on, carry on, as if nothing really matters</pre>', 'test', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-24 08:34:03', '2018-06-24 08:34:03', '', 11, 'http://localhost/wordpress/index.php/2018/06/24/11-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-06-24 08:36:06', '2018-06-24 08:36:06', '<pre id="lyric-body-text" class="lyric-body wselect-cnt">Is this the real life?\nIs this just fantasy?\nCaught in a landslide</pre>\n<!--more-->No escape from reality Open your eyes\nLook up to the skies and see I\'m just a poor boy, I need no sympathy Because I\'m easy come, easy go A little high, little low Anyway the wind blows, doesn\'t really matter to me, to me Mama, just killed a man Put a gun against his head Pulled my trigger, now he\'s dead Mama, life had just begun But now I\'ve gone and thrown it all away Mama, ooo Didn\'t mean to make you cry If I\'m not back again this time tomorrow Carry on, carry on, as if nothing really matters', 'test', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2018-06-24 08:36:06', '2018-06-24 08:36:06', '', 11, 'http://localhost/wordpress/index.php/2018/06/24/11-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2018-06-24 08:36:10', '2018-06-24 08:36:10', '<pre id="lyric-body-text" class="lyric-body wselect-cnt">Is this the real life?\r\nIs this just fantasy?\r\nCaught in a landslide</pre>\r\n<!--more-->No escape from reality Open your eyes\r\nLook up to the skies and see I\'m just a poor boy, I need no sympathy Because I\'m easy come, easy go A little high, little low Anyway the wind blows, doesn\'t really matter to me, to me Mama, just killed a man Put a gun against his head Pulled my trigger, now he\'s dead Mama, life had just begun But now I\'ve gone and thrown it all away Mama, ooo Didn\'t mean to make you cry If I\'m not back again this time tomorrow Carry on, carry on, as if nothing really matters', 'test', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-24 08:36:10', '2018-06-24 08:36:10', '', 11, 'http://localhost/wordpress/index.php/2018/06/24/11-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-06-24 08:49:47', '2018-06-24 08:49:47', '<pre id="lyric-body-text" class="lyric-body wselect-cnt">Is this the real life?\r\nIs this just fantasy?\r\nCaught in a landslide</pre>\r\nNo escape from reality Open your eyes\r\nLook up to the skies and see I\'m just a poor boy, I need no sympathy Because I\'m easy come, easy go A little high, little low Anyway the wind blows, doesn\'t really matter to me, to me Mama, just killed a man Put a gun against his head Pulled my trigger, now he\'s dead Mama, life had just begun But now I\'ve gone and thrown it all away Mama, ooo Didn\'t mean to make you cry If I\'m not back again this time tomorrow Carry on, carry on, as if nothing really matters', 'test', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-06-24 08:49:47', '2018-06-24 08:49:47', '', 11, 'http://localhost/wordpress/index.php/2018/06/24/11-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-06-24 09:07:42', '2018-06-24 09:07:42', '<div>Hello, it\'s me\r\nI was wondering if after all these years you\'d like to meet\r\nTo go over everything\r\nThey say that time\'s supposed to heal ya\r\nBut I ain\'t done much healing</div>\r\n<div>Hello, can you hear me\r\nI\'m in California dreaming about who we used to be\r\nWhen we were younger and free\r\nI\'ve forgotten how it felt before the world fell at our feet</div>\r\n<div>There\'s such a difference between us\r\nAnd a million miles</div>\r\n<div>Hello from the other side\r\nI must have called a thousand times\r\nTo tell you I\'m sorry for everything that I\'ve done\r\nBut when I call you never seem to be home</div>\r\n<div>Hello from the outside\r\nAt least I can say that I\'ve tried\r\nTo tell you I\'m sorry for breaking your heart\r\nBut it don\'t matter it clearly doesn\'t tear you apart anymore</div>\r\n<div class="rGtH5c">Hello, how are you?</div>', 'Hello', '', 'publish', 'open', 'open', '', 'hello', '', '', '2018-06-24 09:09:02', '2018-06-24 09:09:02', '', 0, 'http://localhost/wordpress/?p=77', 0, 'post', '', 0),
(78, 1, '2018-06-24 09:07:42', '2018-06-24 09:07:42', '<div>Hello, it\'s me\r\nI was wondering if after all these years you\'d like to meet\r\nTo go over everything\r\nThey say that time\'s supposed to heal ya\r\nBut I ain\'t done much healing</div>\r\n<div>Hello, can you hear me\r\nI\'m in California dreaming about who we used to be\r\nWhen we were younger and free\r\nI\'ve forgotten how it felt before the world fell at our feet</div>\r\n<div>There\'s such a difference between us\r\nAnd a million miles</div>\r\n<div>Hello from the other side\r\nI must have called a thousand times\r\nTo tell you I\'m sorry for everything that I\'ve done\r\nBut when I call you never seem to be home</div>\r\n<div>Hello from the outside\r\nAt least I can say that I\'ve tried\r\nTo tell you I\'m sorry for breaking your heart\r\nBut it don\'t matter it clearly doesn\'t tear you apart anymore</div>\r\n<div class="rGtH5c">Hello, how are you?</div>', 'Hello', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-06-24 09:07:42', '2018-06-24 09:07:42', '', 77, 'http://localhost/wordpress/index.php/2018/06/24/77-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-06-24 09:08:09', '2018-06-24 09:08:09', '', 'space_debris_1', '', 'inherit', 'open', 'closed', '', 'space_debris_1-2', '', '', '2018-06-24 09:08:09', '2018-06-24 09:08:09', '', 77, 'http://localhost/wordpress/wp-content/uploads/2018/06/space_debris_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-06-24 09:08:32', '2018-06-24 09:08:32', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2018-06-24 09:08:32', '2018-06-24 09:08:32', '', 77, 'http://localhost/wordpress/wp-content/uploads/2018/06/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2018-06-24 09:32:54', '2018-06-24 09:32:54', '', 'Articles', '', 'publish', 'closed', 'closed', '', 'articles', '', '', '2018-06-24 09:33:50', '2018-06-24 09:33:50', '', 0, 'http://localhost/wordpress/?page_id=81', 0, 'page', '', 0),
(82, 1, '2018-06-24 09:32:54', '2018-06-24 09:32:54', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2018-06-24 09:34:59', '2018-06-24 09:34:59', '', 0, 'http://localhost/wordpress/index.php/2018/06/24/82/', 2, 'nav_menu_item', '', 0),
(83, 1, '2018-06-24 09:32:54', '2018-06-24 09:32:54', '', 'articles', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-06-24 09:32:54', '2018-06-24 09:32:54', '', 81, 'http://localhost/wordpress/index.php/2018/06/24/81-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-06-24 09:33:50', '2018-06-24 09:33:50', '', 'Articles', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-06-24 09:33:50', '2018-06-24 09:33:50', '', 81, 'http://localhost/wordpress/index.php/2018/06/24/81-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-06-24 09:34:59', '2018-06-24 09:34:59', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2018-06-24 09:34:59', '2018-06-24 09:34:59', '', 0, 'http://localhost/wordpress/?p=85', 3, 'nav_menu_item', '', 0),
(86, 1, '2018-06-24 09:34:59', '2018-06-24 09:34:59', ' ', '', '', 'publish', 'closed', 'closed', '', '86', '', '', '2018-06-24 09:34:59', '2018-06-24 09:34:59', '', 0, 'http://localhost/wordpress/?p=86', 4, 'nav_menu_item', '', 0),
(87, 1, '2018-06-24 09:34:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-06-24 09:34:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2018-07-08 09:13:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-07-08 09:13:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=88', 0, 'post', '', 0),
(89, 1, '2018-07-08 12:20:00', '2018-07-08 12:20:00', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2018-07-08 12:20:00', '2018-07-08 12:20:00', '', 0, 'http://localhost/wordpress/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2018-07-09 13:47:27', '2018-07-09 13:47:27', '', 'space_debris_1', '', 'inherit', 'open', 'closed', '', 'space_debris_1-3', '', '', '2018-07-09 13:47:27', '2018-07-09 13:47:27', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/07/space_debris_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-07-10 06:58:04', '2018-07-10 06:58:04', '<div class="oneCol right">\r\n      <p>\r\n         يقدم موقع دوت إمارات الخدمات الإعلامية الأفضل لدولة الإمارات العربية المتحدة،عن طريق جمع وتصنيف المئات من القصص الإخبارية والمقالات ومقاطع الفيديو، والصور، وتحديثات مواقع التواصل الاجتماعي بشكل فوري.</p>\r\n      <p>\r\n      يساعدك دوت إمارات أن تبقى على اطلاع  بأهم وأحدث الأخبار المحلية والعالمية التي تهمك على مدار الساعة.\r\n      </p>\r\n      <p>\r\n      يمكنك متابعة مصادر الأخبار المفضلة لديك ‏والمشاهير الذين تحبهم، كما يمكنك متابعة مواضيع أو أقسام معينة ومعرفة كل جديد عن جميع مجالات اهتمامك.\r\n      </p>\r\n      <p>\r\n      يتيح لك دوت إمارات مشاركة المواضيع على تويتر، فيسبوك،  WhatsApp، البريد الإلكتروني، وLinkedin، والرسائل القصيرة وغيرها بضغطة زر.\r\n      </p>\r\n      <p>\r\n      قابلية التخصيص<br>\r\n      نظم التصنيفات الخاصة بك بالطريقة التي تريدها. تابع ما تفضله من مواقع، وصحف، ومجلات، ومشاهير. ثم قم بزيارة قسم “أخباري” الخاص لتجد مواضيعك بكل سهولة.\r\n      </p>\r\n      <p>\r\n      القراءة الذكية<br>\r\n      عرض مبسط، خالي من الفوضى، وهو الأمثل لقراءة الأخبار على الهواتف المحمولة.\r\n      </p>\r\n      <p>\r\n      قراءة الأخبار دون الاتصال بالإنترنت<br>\r\n      يمكنك حفظ الأخبار لقراءتها في وقت لاحق، دون الحاجة إلى اتصال بالإنترنت.\r\n      </p>\r\n   </div>\r\n   <div class="oneCol left ltrDir">\r\n      <p>dotemirates delivers the best of the United Arab Emirates, providing special media services by instantly gathering and categorizing hundreds of news stories, articles, videos, photos, and social media updates.</p>\r\n\r\n      <p>Get Top stories & Breaking news, and stay updated around-the-clock with local and global updates that matter to you.</p>\r\n\r\n      <p>Follow your favourite News Sources and beloved Celebrities. You can also follow specific Topics or Sections and discover more about all your areas of interest.</p>\r\n\r\n      <p>Instantly share your picks via twitter, Facebook, WhatsApp, e-mail, LinkedIn, SMS and more.</p>\r\n\r\n      <p>Customisable<br>\r\n         Follow your chosen websites, newspapers, magazines and celebrities, flip through your favourite categories and easily scroll the articles.</p>\r\n\r\n      <p>Smart Mode<br>\r\n         Streamlined, clutter-free, and optimised for mobile readability.</p>\r\n\r\n      <p>Offline Reading<br>\r\n         You can save articles for reading later, without needing an internet connection.</p>\r\n   </div>\r\n</div>\r\n', 'about', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-07-10 07:16:30', '2018-07-10 07:16:30', '', 0, 'http://localhost/wordpress/?page_id=91', 0, 'page', '', 0),
(92, 1, '2018-07-10 06:58:05', '2018-07-10 06:58:05', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2018-07-10 06:58:05', '2018-07-10 06:58:05', '', 0, 'http://localhost/wordpress/index.php/2018/07/10/92/', 6, 'nav_menu_item', '', 0),
(93, 1, '2018-07-10 06:58:04', '2018-07-10 06:58:04', '<pre>&lt;div class="oneCol right"&gt;\r\n      &lt;p&gt;\r\n         يقدم موقع دوت إمارات الخدمات الإعلامية الأفضل لدولة الإمارات العربية المتحدة،عن طريق جمع وتصنيف المئات من القصص الإخبارية والمقالات ومقاطع الفيديو، والصور، وتحديثات مواقع التواصل الاجتماعي بشكل فوري.&lt;/p&gt;\r\n      &lt;p&gt;\r\n      يساعدك دوت إمارات أن تبقى على اطلاع  بأهم وأحدث الأخبار المحلية والعالمية التي تهمك على مدار الساعة.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      يمكنك متابعة مصادر الأخبار المفضلة لديك ‏والمشاهير الذين تحبهم، كما يمكنك متابعة مواضيع أو أقسام معينة ومعرفة كل جديد عن جميع مجالات اهتمامك.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      يتيح لك دوت إمارات مشاركة المواضيع على تويتر، فيسبوك،  WhatsApp، البريد الإلكتروني، وLinkedin، والرسائل القصيرة وغيرها بضغطة زر.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      قابلية التخصيص&lt;br&gt;\r\n      نظم التصنيفات الخاصة بك بالطريقة التي تريدها. تابع ما تفضله من مواقع، وصحف، ومجلات، ومشاهير. ثم قم بزيارة قسم “أخباري” الخاص لتجد مواضيعك بكل سهولة.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      القراءة الذكية&lt;br&gt;\r\n      عرض مبسط، خالي من الفوضى، وهو الأمثل لقراءة الأخبار على الهواتف المحمولة.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      قراءة الأخبار دون الاتصال بالإنترنت&lt;br&gt;\r\n      يمكنك حفظ الأخبار لقراءتها في وقت لاحق، دون الحاجة إلى اتصال بالإنترنت.\r\n      &lt;/p&gt;\r\n   &lt;/div&gt;\r\n   &lt;div class="oneCol left ltrDir"&gt;\r\n      &lt;p&gt;dotemirates delivers the best of the United Arab Emirates, providing special media services by instantly gathering and categorizing hundreds of news stories, articles, videos, photos, and social media updates.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Get Top stories &amp; Breaking news, and stay updated around-the-clock with local and global updates that matter to you.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Follow your favourite News Sources and beloved Celebrities. You can also follow specific Topics or Sections and discover more about all your areas of interest.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Instantly share your picks via twitter, Facebook, WhatsApp, e-mail, LinkedIn, SMS and more.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Customisable&lt;br&gt;\r\n         Follow your chosen websites, newspapers, magazines and celebrities, flip through your favourite categories and easily scroll the articles.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Smart Mode&lt;br&gt;\r\n         Streamlined, clutter-free, and optimised for mobile readability.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Offline Reading&lt;br&gt;\r\n         You can save articles for reading later, without needing an internet connection.&lt;/p&gt;\r\n   &lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n</pre>', 'about', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-07-10 06:58:04', '2018-07-10 06:58:04', '', 91, 'http://localhost/wordpress/index.php/2018/07/10/91-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-07-10 07:14:31', '2018-07-10 07:14:31', '', 'tert', '', 'publish', 'closed', 'closed', '', 'tert', '', '', '2018-07-10 07:14:31', '2018-07-10 07:14:31', '', 0, 'http://localhost/wordpress/?page_id=94', 0, 'page', '', 0),
(95, 1, '2018-07-10 07:14:31', '2018-07-10 07:14:31', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2018-07-10 07:14:31', '2018-07-10 07:14:31', '', 0, 'http://localhost/wordpress/95/', 7, 'nav_menu_item', '', 0),
(96, 1, '2018-07-10 07:14:31', '2018-07-10 07:14:31', '', 'tert', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2018-07-10 07:14:31', '2018-07-10 07:14:31', '', 94, 'http://localhost/wordpress/94-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-07-10 07:16:30', '2018-07-10 07:16:30', '<div class="oneCol right">\r\n      <p>\r\n         يقدم موقع دوت إمارات الخدمات الإعلامية الأفضل لدولة الإمارات العربية المتحدة،عن طريق جمع وتصنيف المئات من القصص الإخبارية والمقالات ومقاطع الفيديو، والصور، وتحديثات مواقع التواصل الاجتماعي بشكل فوري.</p>\r\n      <p>\r\n      يساعدك دوت إمارات أن تبقى على اطلاع  بأهم وأحدث الأخبار المحلية والعالمية التي تهمك على مدار الساعة.\r\n      </p>\r\n      <p>\r\n      يمكنك متابعة مصادر الأخبار المفضلة لديك ‏والمشاهير الذين تحبهم، كما يمكنك متابعة مواضيع أو أقسام معينة ومعرفة كل جديد عن جميع مجالات اهتمامك.\r\n      </p>\r\n      <p>\r\n      يتيح لك دوت إمارات مشاركة المواضيع على تويتر، فيسبوك،  WhatsApp، البريد الإلكتروني، وLinkedin، والرسائل القصيرة وغيرها بضغطة زر.\r\n      </p>\r\n      <p>\r\n      قابلية التخصيص<br>\r\n      نظم التصنيفات الخاصة بك بالطريقة التي تريدها. تابع ما تفضله من مواقع، وصحف، ومجلات، ومشاهير. ثم قم بزيارة قسم “أخباري” الخاص لتجد مواضيعك بكل سهولة.\r\n      </p>\r\n      <p>\r\n      القراءة الذكية<br>\r\n      عرض مبسط، خالي من الفوضى، وهو الأمثل لقراءة الأخبار على الهواتف المحمولة.\r\n      </p>\r\n      <p>\r\n      قراءة الأخبار دون الاتصال بالإنترنت<br>\r\n      يمكنك حفظ الأخبار لقراءتها في وقت لاحق، دون الحاجة إلى اتصال بالإنترنت.\r\n      </p>\r\n   </div>\r\n   <div class="oneCol left ltrDir">\r\n      <p>dotemirates delivers the best of the United Arab Emirates, providing special media services by instantly gathering and categorizing hundreds of news stories, articles, videos, photos, and social media updates.</p>\r\n\r\n      <p>Get Top stories & Breaking news, and stay updated around-the-clock with local and global updates that matter to you.</p>\r\n\r\n      <p>Follow your favourite News Sources and beloved Celebrities. You can also follow specific Topics or Sections and discover more about all your areas of interest.</p>\r\n\r\n      <p>Instantly share your picks via twitter, Facebook, WhatsApp, e-mail, LinkedIn, SMS and more.</p>\r\n\r\n      <p>Customisable<br>\r\n         Follow your chosen websites, newspapers, magazines and celebrities, flip through your favourite categories and easily scroll the articles.</p>\r\n\r\n      <p>Smart Mode<br>\r\n         Streamlined, clutter-free, and optimised for mobile readability.</p>\r\n\r\n      <p>Offline Reading<br>\r\n         You can save articles for reading later, without needing an internet connection.</p>\r\n   </div>\r\n</div>\r\n', 'about', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2018-07-10 07:16:30', '2018-07-10 07:16:30', '', 91, 'http://localhost/wordpress/?p=97', 0, 'revision', '', 0),
(98, 1, '2018-07-10 07:30:20', '2018-07-10 07:30:20', '', 'contactus', '', 'publish', 'closed', 'closed', '', 'contactus', '', '', '2018-07-10 07:30:20', '2018-07-10 07:30:20', '', 0, 'http://localhost/wordpress/?page_id=98', 0, 'page', '', 0),
(99, 1, '2018-07-10 07:24:51', '2018-07-10 07:24:51', '', 'Draft created on July 10, 2018 at 7:24 am', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-07-10 07:24:51', '2018-07-10 07:24:51', '', 98, 'http://localhost/wordpress/?p=99', 0, 'revision', '', 0),
(100, 1, '2018-07-10 07:30:21', '2018-07-10 07:30:21', ' ', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2018-07-10 07:30:21', '2018-07-10 07:30:21', '', 0, 'http://localhost/wordpress/?p=100', 8, 'nav_menu_item', '', 0),
(101, 1, '2018-07-10 07:30:20', '2018-07-10 07:30:20', '', 'contactus', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2018-07-10 07:30:20', '2018-07-10 07:30:20', '', 98, 'http://localhost/wordpress/?p=101', 0, 'revision', '', 0),
(102, 1, '2018-07-10 08:23:09', '2018-07-10 08:23:09', '<div class="oneCol right">\r\n\r\nيلتزم موقع دوت إمارات بحماية المعلومات الشخصية الخاصة بك، فنحن نسعى لتقديم خدماتنا في بيئة آمنة وممتعة للجميع، لذا تهدف هذه الصفحة لمساعدتك على فهم ما هي المعلومات التي قد نجمعها عنك وكيف نستخدمها.\r\n\r\nعندما تتفاعل مع دوت إمارات نقوم في بعض الأحيان بتلقي أو جمع معلومات شخصية عنك. على سبيل المثال، إذا قمت بمراسلتنا أو الاشتراك في النشرة الإخبارية، قد نطلب منك معلوماتك الشخصية وطرق الاتصال بك ورأيك في موقع دوت إمارات وخدماته. وحين تقوم بالتسجيل للحصول على حساب على موقع دوت إمارات، قد نطلب منك تقديم بعض المعلومات الشخصية مثل عنوان البريد الإلكتروني الخاص بك، حتى نتمكن من إدارة التسجيل. وعند استخدام خدمات دوت إمارات على الإنترنت، سوف نستخدم عنوان الـIP الخاص بك، وملفات تعريف الارتباط لتقديم وظائف معينة لك. لمعرفة المزيد وفهم أفضل لكيفية استخدام خدماتنا، برجاء الرجوع إلى اتفاقية ملفات الارتباط.\r\n\r\nكيف سيقوم موقع دوت إمارات باستخدام معلوماتك الشخصية؟\r\nسيقوم موقع دوت إمارات باستخدام معلوماتك لعدة أغراض كالتالي:\r\n-للاتصال بك. لتقديم خدماتنا لك، على سبيل المثال قد نرسل لك نشرة إخبارية أو تنبيه إخباري إذا قمت بالاشتراك في هذه الخدمات.\r\n-لتخصيص الطريقة التي تعرض بها موقع دوت إمارات، على سبيل المثال ‏إذا قمت بتحديد موقعك، سنقوم بتخصيص بعض الخدمات التي تعتمد على موقعك الجغرافي، كخدمات الطقس ومواقيت الصلاة. كما سنحرص على أن تكون واجهة الموقع مناسبة لموقعك من أجل استخدام أفضل لخدماتنا.\r\nسيبقي موقع دوت إمارات معلوماتك سرية، وفي العموم، لن تستخدم هذه المعلومات إلا داخل خدمات دوت إمارات. إلا أننا في بعض الأحيان قد نستخدم أطراف ثالثة لتقديم بعض الخدمات المخصصة بالنيابة عنا دون المساس بأمن معلوماتك الشخصية.\r\n\r\nهل سيتم الاتصال بي لأغراض التسويق، أو تحديث قواعد البيانات أو الإعلانات؟\r\nلن يقوم موقع دوت إمارات بإرسال رسائل بريد إلكتروني أو الاتصال بك لأغراض تسويقية، أو للإعلان عن خدمات أو أنشطة أو محتوى جديد إلا بعد الحصول على موافقة مسبقة منك. سيقوم فقط بإرسال الرسائل التي وافقت على استقبالها. وقد نقوم بإضفاء طابع شخصي على محتوى الرسائل طبقا للمعلومات التي قدمتها للموقع أو التي جمعناها أثناء استخدامك للموقع.\r\n\r\nالمحتوى المسيء أو غير اللائق على موقع دوت إمارات\r\nإذا قمت بنشر أو إرسال محتوى مسيء أو غير لائق على موقع دوت إمارات أو قمت بالانخراط في أي سلوك تخريبي على أي من خدمات دوت إمارات، قد يستخدم دوت إمارات المعلومات الشخصية الخاصة بك لوقف مثل هذا السلوك. وإذا قام موقع دوت إمارات بالشك في مخالفتك للقوانين المعمول بها (على سبيل المثال بسبب كون المحتوى الذي قمت بنشره نوعا من التشهير)، قد يستخدم الموقع المعلومات الشخصية لإبلاغ الأطراف الثالثة ذات الصلة مثل صاحب العمل الخاص بك، مدرستك، أو مزود خدمة الإنترنت أو البريد الإلكتروني الخاص بك أو منفذي القانون بشأن المحتوى وسلوكك.\r\n\r\nماذا لو كان عمري ١٦ عاماً أو أقل؟\r\nإذا كان عمرك ١٦ عاما أو أقل، يرجى الحصول على إذن الوالد/ولي الأمر قبل تقديم أية معلومات شخصية لدوت إمارات.\r\n\r\nالاتصال بدوت إمارات حول سياسة الخصوصية\r\nإذا كان لديك أي استفسارات أو تعليقات حول سياسة الخصوصية هذه يرجى الاتصال بدوت إمارات.\r\n\r\n</div>\r\n<div class="oneCol left ltrDir">\r\n\r\ndotemirates is committed to protecting your personal information. We want our services to be safe and enjoyable environments for everyone. This page aims to help you to understand what information we might collect about you and how we use it.\r\n\r\nWhen you interact with dotemirates, we sometimes receive or collect personal information about you. For example, if you write to us or sign up to a newsletter, you might tell us who you are, how we can contact you and what you think of dotemirates and its services. If you register for a dotemirates account, we may ask you to provide some personal information, such as your email address. When you use dotemirates services, we will use your IP address and cookies to provide certain functionality to you and to better understand how our services are being used.\r\n\r\nHow we use your information\r\nWe will use your information for a number of purposes including the following:\r\n-To contact you to provide you some services. For example, to send you a newsletter or a news alert, if you have asked for them.\r\n-To customise the way dotemirates content is presented to you. For example, if you tell us your location we will be able to customise your view of the dotemirates homepage, dotemirates News and Weather so that you always see relevant local content.\r\nWe will keep your information confidential and generally we will only use your information within dotemirates. However, we sometimes use third parties to provide services on our behalf.\r\n\r\nWill I be contacted for marketing purpose, Database updates or advertisement?\r\ndotemirates will only send you emails or otherwise contact you for marketing purposes, or to promote new services, activities or content where you have agreed to receive these communications. We may personalise the message content based upon any information you have provided to us and your use of dotemirates.\r\n\r\nOffensive or inappropriate content on dotemirates\r\nIf you post or send offensive, inappropriate or objectionable content anywhere on or to dotemirates or otherwise engage in any disruptive behaviour on any dotemirates service, dotemirates may use your personal information to stop such behaviour. And when dotemirates reasonably believes that you are or may be in breach of any applicable laws, dotemirates may use your personal information to inform relevant third parties such as your employer, school email/internet provider or law enforcement agencies about the content and your behaviour.\r\n\r\nWhat if I am a user aged 16 or under?\r\nIf you are aged 16 or under, please get your parent/guardian’s permission before you provide any personal information to dotemirates.\r\n\r\nContacting dotemirates about this Privacy Policy\r\nIf you have any questions or comments about this Privacy Policy please contact us.\r\n\r\n</div>', 'privacy', '', 'publish', 'closed', 'closed', '', 'privacy', '', '', '2018-07-10 08:27:05', '2018-07-10 08:27:05', '', 0, 'http://localhost/wordpress/?page_id=102', 0, 'page', '', 0),
(103, 1, '2018-07-10 08:23:09', '2018-07-10 08:23:09', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2018-07-10 08:23:09', '2018-07-10 08:23:09', '', 0, 'http://localhost/wordpress/?p=103', 9, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(104, 1, '2018-07-10 08:23:09', '2018-07-10 08:23:09', '<pre>    &lt;div class="oneCol right"&gt;\r\n      &lt;p&gt;\r\n      يلتزم موقع دوت إمارات بحماية المعلومات الشخصية الخاصة بك، فنحن نسعى لتقديم خدماتنا في بيئة آمنة وممتعة للجميع، لذا تهدف هذه الصفحة لمساعدتك على فهم ما هي المعلومات التي قد نجمعها عنك وكيف نستخدمها.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      عندما تتفاعل مع دوت إمارات نقوم في بعض الأحيان بتلقي أو جمع معلومات شخصية عنك. على سبيل المثال، إذا قمت بمراسلتنا أو الاشتراك في النشرة الإخبارية، قد نطلب منك معلوماتك الشخصية وطرق الاتصال بك ورأيك في موقع دوت إمارات وخدماته. وحين تقوم بالتسجيل للحصول على حساب على موقع دوت إمارات، قد نطلب منك تقديم بعض المعلومات الشخصية مثل عنوان البريد الإلكتروني الخاص بك، حتى نتمكن من إدارة التسجيل. وعند استخدام خدمات دوت إمارات على الإنترنت، سوف نستخدم عنوان الـIP الخاص بك، وملفات تعريف الارتباط لتقديم وظائف معينة لك. لمعرفة المزيد وفهم أفضل لكيفية استخدام خدماتنا، برجاء الرجوع إلى اتفاقية ملفات الارتباط.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      كيف سيقوم موقع دوت إمارات باستخدام معلوماتك الشخصية؟&lt;br&gt;\r\n      سيقوم موقع دوت إمارات باستخدام معلوماتك لعدة أغراض كالتالي:&lt;br&gt;\r\n      -للاتصال بك. لتقديم خدماتنا لك، على سبيل المثال قد نرسل لك نشرة إخبارية أو تنبيه إخباري إذا قمت بالاشتراك في هذه الخدمات.\r\n      -لتخصيص الطريقة التي تعرض بها موقع دوت إمارات، على سبيل المثال ‏إذا قمت بتحديد موقعك، سنقوم بتخصيص بعض الخدمات التي تعتمد على موقعك الجغرافي، كخدمات الطقس ومواقيت الصلاة. كما سنحرص على أن تكون واجهة الموقع مناسبة لموقعك من أجل استخدام أفضل لخدماتنا.\r\n      سيبقي موقع دوت إمارات معلوماتك سرية، وفي العموم، لن تستخدم هذه المعلومات إلا داخل خدمات دوت إمارات. إلا أننا في بعض الأحيان قد نستخدم أطراف ثالثة لتقديم بعض الخدمات المخصصة بالنيابة عنا دون المساس بأمن معلوماتك الشخصية.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      هل سيتم الاتصال بي لأغراض التسويق، أو تحديث قواعد البيانات أو الإعلانات؟&lt;br&gt;\r\n      لن يقوم موقع دوت إمارات بإرسال رسائل بريد إلكتروني أو الاتصال بك لأغراض تسويقية، أو للإعلان عن خدمات أو أنشطة أو محتوى جديد إلا بعد الحصول على موافقة مسبقة منك. سيقوم فقط بإرسال الرسائل التي وافقت على استقبالها. وقد نقوم بإضفاء طابع شخصي على محتوى الرسائل طبقا للمعلومات التي قدمتها للموقع أو التي جمعناها أثناء استخدامك للموقع.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      المحتوى المسيء أو غير اللائق على موقع دوت إمارات&lt;br&gt;\r\n      إذا قمت بنشر أو إرسال محتوى مسيء أو غير لائق على موقع دوت إمارات أو قمت بالانخراط في أي سلوك تخريبي على أي من خدمات دوت إمارات، قد يستخدم دوت إمارات المعلومات الشخصية الخاصة بك لوقف مثل هذا السلوك. وإذا قام موقع دوت إمارات بالشك في مخالفتك للقوانين المعمول بها (على سبيل المثال بسبب كون المحتوى الذي قمت بنشره نوعا من التشهير)، قد يستخدم الموقع المعلومات الشخصية لإبلاغ الأطراف الثالثة ذات الصلة مثل صاحب العمل الخاص بك، مدرستك، أو مزود خدمة الإنترنت أو البريد الإلكتروني الخاص بك أو منفذي القانون بشأن المحتوى وسلوكك.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      ماذا لو كان عمري ١٦ عاماً أو أقل؟&lt;br&gt;\r\n      إذا كان عمرك ١٦ عاما أو أقل، يرجى الحصول على إذن الوالد/ولي الأمر قبل تقديم أية معلومات شخصية لدوت إمارات.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      الاتصال بدوت إمارات حول سياسة الخصوصية&lt;br&gt;\r\n      إذا كان لديك أي استفسارات أو تعليقات حول سياسة الخصوصية هذه يرجى الاتصال بدوت إمارات.\r\n      &lt;/p&gt;\r\n   &lt;/div&gt;\r\n   &lt;div class="oneCol left ltrDir"&gt;\r\n      &lt;p&gt;dotemirates is committed to protecting your personal information. We want our services to be safe and enjoyable environments for everyone. This page aims to help you to understand what information we might collect about you and how we use it.&lt;/p&gt;\r\n\r\n      &lt;p&gt;When you interact with dotemirates, we sometimes receive or collect personal information about you. For example, if you write to us or sign up to a newsletter, you might tell us who you are, how we can contact you and what you think of dotemirates and its services. If you register for a dotemirates account, we may ask you to provide some personal information, such as your email address. When you use dotemirates services, we will use your IP address and cookies to provide certain functionality to you and to better understand how our services are being used.&lt;/p&gt;\r\n\r\n      &lt;p&gt;How we use your information&lt;br&gt;\r\n      We will use your information for a number of purposes including the following:&lt;br&gt;\r\n      -To contact you to provide you some services. For example, to send you a newsletter or a news alert, if you have asked for them.\r\n      -To customise the way dotemirates content is presented to you. For example, if you tell us your location we will be able to customise your view of the dotemirates homepage, dotemirates News and Weather so that you always see relevant local content.\r\n         We will keep your information confidential and generally we will only use your information within dotemirates. However, we sometimes use third parties to provide services on our behalf.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Will I be contacted for marketing purpose, Database updates or advertisement?&lt;br&gt;\r\n         dotemirates will only send you emails or otherwise contact you for marketing purposes, or to promote new services, activities or content where you have agreed to receive these communications. We may personalise the message content based upon any information you have provided to us and your use of dotemirates.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Offensive or inappropriate content on dotemirates&lt;br&gt;\r\n         If you post or send offensive, inappropriate or objectionable content anywhere on or to dotemirates or otherwise engage in any disruptive behaviour on any dotemirates service, dotemirates may use your personal information to stop such behaviour. And when dotemirates reasonably believes that you are or may be in breach of any applicable laws, dotemirates may use your personal information to inform relevant third parties such as your employer, school email/internet provider or law enforcement agencies about the content and your behaviour.&lt;/p&gt;\r\n\r\n      &lt;p&gt;What if I am a user aged 16 or under?&lt;br&gt;\r\n         If you are aged 16 or under, please get your parent/guardian’s permission before you provide any personal information to dotemirates.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Contacting dotemirates about this Privacy Policy&lt;br&gt;\r\n         If you have any questions or comments about this Privacy Policy please contact us.&lt;/p&gt;\r\n   &lt;/div&gt;\r\n&lt;/div&gt;</pre>', 'privacy', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-07-10 08:23:09', '2018-07-10 08:23:09', '', 102, 'http://localhost/wordpress/?p=104', 0, 'revision', '', 0),
(105, 1, '2018-07-10 08:23:52', '2018-07-10 08:23:52', '<pre>    &lt;div class="oneCol right"&gt;\r\n      &lt;p&gt;\r\n      يلتزم موقع دوت إمارات بحماية المعلومات الشخصية الخاصة بك، فنحن نسعى لتقديم خدماتنا في بيئة آمنة وممتعة للجميع، لذا تهدف هذه الصفحة لمساعدتك على فهم ما هي المعلومات التي قد نجمعها عنك وكيف نستخدمها.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      عندما تتفاعل مع دوت إمارات نقوم في بعض الأحيان بتلقي أو جمع معلومات شخصية عنك. على سبيل المثال، إذا قمت بمراسلتنا أو الاشتراك في النشرة الإخبارية، قد نطلب منك معلوماتك الشخصية وطرق الاتصال بك ورأيك في موقع دوت إمارات وخدماته. وحين تقوم بالتسجيل للحصول على حساب على موقع دوت إمارات، قد نطلب منك تقديم بعض المعلومات الشخصية مثل عنوان البريد الإلكتروني الخاص بك، حتى نتمكن من إدارة التسجيل. وعند استخدام خدمات دوت إمارات على الإنترنت، سوف نستخدم عنوان الـIP الخاص بك، وملفات تعريف الارتباط لتقديم وظائف معينة لك. لمعرفة المزيد وفهم أفضل لكيفية استخدام خدماتنا، برجاء الرجوع إلى اتفاقية ملفات الارتباط.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      كيف سيقوم موقع دوت إمارات باستخدام معلوماتك الشخصية؟&lt;br&gt;\r\n      سيقوم موقع دوت إمارات باستخدام معلوماتك لعدة أغراض كالتالي:&lt;br&gt;\r\n      -للاتصال بك. لتقديم خدماتنا لك، على سبيل المثال قد نرسل لك نشرة إخبارية أو تنبيه إخباري إذا قمت بالاشتراك في هذه الخدمات.\r\n      -لتخصيص الطريقة التي تعرض بها موقع دوت إمارات، على سبيل المثال ‏إذا قمت بتحديد موقعك، سنقوم بتخصيص بعض الخدمات التي تعتمد على موقعك الجغرافي، كخدمات الطقس ومواقيت الصلاة. كما سنحرص على أن تكون واجهة الموقع مناسبة لموقعك من أجل استخدام أفضل لخدماتنا.\r\n      سيبقي موقع دوت إمارات معلوماتك سرية، وفي العموم، لن تستخدم هذه المعلومات إلا داخل خدمات دوت إمارات. إلا أننا في بعض الأحيان قد نستخدم أطراف ثالثة لتقديم بعض الخدمات المخصصة بالنيابة عنا دون المساس بأمن معلوماتك الشخصية.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      هل سيتم الاتصال بي لأغراض التسويق، أو تحديث قواعد البيانات أو الإعلانات؟&lt;br&gt;\r\n      لن يقوم موقع دوت إمارات بإرسال رسائل بريد إلكتروني أو الاتصال بك لأغراض تسويقية، أو للإعلان عن خدمات أو أنشطة أو محتوى جديد إلا بعد الحصول على موافقة مسبقة منك. سيقوم فقط بإرسال الرسائل التي وافقت على استقبالها. وقد نقوم بإضفاء طابع شخصي على محتوى الرسائل طبقا للمعلومات التي قدمتها للموقع أو التي جمعناها أثناء استخدامك للموقع.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      المحتوى المسيء أو غير اللائق على موقع دوت إمارات&lt;br&gt;\r\n      إذا قمت بنشر أو إرسال محتوى مسيء أو غير لائق على موقع دوت إمارات أو قمت بالانخراط في أي سلوك تخريبي على أي من خدمات دوت إمارات، قد يستخدم دوت إمارات المعلومات الشخصية الخاصة بك لوقف مثل هذا السلوك. وإذا قام موقع دوت إمارات بالشك في مخالفتك للقوانين المعمول بها (على سبيل المثال بسبب كون المحتوى الذي قمت بنشره نوعا من التشهير)، قد يستخدم الموقع المعلومات الشخصية لإبلاغ الأطراف الثالثة ذات الصلة مثل صاحب العمل الخاص بك، مدرستك، أو مزود خدمة الإنترنت أو البريد الإلكتروني الخاص بك أو منفذي القانون بشأن المحتوى وسلوكك.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      ماذا لو كان عمري ١٦ عاماً أو أقل؟&lt;br&gt;\r\n      إذا كان عمرك ١٦ عاما أو أقل، يرجى الحصول على إذن الوالد/ولي الأمر قبل تقديم أية معلومات شخصية لدوت إمارات.\r\n      &lt;/p&gt;\r\n      &lt;p&gt;\r\n      الاتصال بدوت إمارات حول سياسة الخصوصية&lt;br&gt;\r\n      إذا كان لديك أي استفسارات أو تعليقات حول سياسة الخصوصية هذه يرجى الاتصال بدوت إمارات.\r\n      &lt;/p&gt;\r\n   &lt;/div&gt;\r\n   &lt;div class="oneCol left ltrDir"&gt;\r\n      &lt;p&gt;dotemirates is committed to protecting your personal information. We want our services to be safe and enjoyable environments for everyone. This page aims to help you to understand what information we might collect about you and how we use it.&lt;/p&gt;\r\n\r\n      &lt;p&gt;When you interact with dotemirates, we sometimes receive or collect personal information about you. For example, if you write to us or sign up to a newsletter, you might tell us who you are, how we can contact you and what you think of dotemirates and its services. If you register for a dotemirates account, we may ask you to provide some personal information, such as your email address. When you use dotemirates services, we will use your IP address and cookies to provide certain functionality to you and to better understand how our services are being used.&lt;/p&gt;\r\n\r\n      &lt;p&gt;How we use your information&lt;br&gt;\r\n      We will use your information for a number of purposes including the following:&lt;br&gt;\r\n      -To contact you to provide you some services. For example, to send you a newsletter or a news alert, if you have asked for them.\r\n      -To customise the way dotemirates content is presented to you. For example, if you tell us your location we will be able to customise your view of the dotemirates homepage, dotemirates News and Weather so that you always see relevant local content.\r\n         We will keep your information confidential and generally we will only use your information within dotemirates. However, we sometimes use third parties to provide services on our behalf.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Will I be contacted for marketing purpose, Database updates or advertisement?&lt;br&gt;\r\n         dotemirates will only send you emails or otherwise contact you for marketing purposes, or to promote new services, activities or content where you have agreed to receive these communications. We may personalise the message content based upon any information you have provided to us and your use of dotemirates.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Offensive or inappropriate content on dotemirates&lt;br&gt;\r\n         If you post or send offensive, inappropriate or objectionable content anywhere on or to dotemirates or otherwise engage in any disruptive behaviour on any dotemirates service, dotemirates may use your personal information to stop such behaviour. And when dotemirates reasonably believes that you are or may be in breach of any applicable laws, dotemirates may use your personal information to inform relevant third parties such as your employer, school email/internet provider or law enforcement agencies about the content and your behaviour.&lt;/p&gt;\r\n\r\n      &lt;p&gt;What if I am a user aged 16 or under?&lt;br&gt;\r\n         If you are aged 16 or under, please get your parent/guardian’s permission before you provide any personal information to dotemirates.&lt;/p&gt;\r\n\r\n      &lt;p&gt;Contacting dotemirates about this Privacy Policy&lt;br&gt;\r\n         If you have any questions or comments about this Privacy Policy please contact us.&lt;/p&gt;\r\n   &lt;/div&gt;\r\n</pre>', 'privacy', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-07-10 08:23:52', '2018-07-10 08:23:52', '', 102, 'http://localhost/wordpress/?p=105', 0, 'revision', '', 0),
(106, 1, '2018-07-10 08:25:00', '2018-07-10 08:25:00', '&nbsp;\r\n<div class="oneCol right">\r\n\r\nيلتزم موقع دوت إمارات بحماية المعلومات الشخصية الخاصة بك، فنحن نسعى لتقديم خدماتنا في بيئة آمنة وممتعة للجميع، لذا تهدف هذه الصفحة لمساعدتك على فهم ما هي المعلومات التي قد نجمعها عنك وكيف نستخدمها.\r\n\r\nعندما تتفاعل مع دوت إمارات نقوم في بعض الأحيان بتلقي أو جمع معلومات شخصية عنك. على سبيل المثال، إذا قمت بمراسلتنا أو الاشتراك في النشرة الإخبارية، قد نطلب منك معلوماتك الشخصية وطرق الاتصال بك ورأيك في موقع دوت إمارات وخدماته. وحين تقوم بالتسجيل للحصول على حساب على موقع دوت إمارات، قد نطلب منك تقديم بعض المعلومات الشخصية مثل عنوان البريد الإلكتروني الخاص بك، حتى نتمكن من إدارة التسجيل. وعند استخدام خدمات دوت إمارات على الإنترنت، سوف نستخدم عنوان الـIP الخاص بك، وملفات تعريف الارتباط لتقديم وظائف معينة لك. لمعرفة المزيد وفهم أفضل لكيفية استخدام خدماتنا، برجاء الرجوع إلى اتفاقية ملفات الارتباط.\r\n\r\nكيف سيقوم موقع دوت إمارات باستخدام معلوماتك الشخصية؟\r\nسيقوم موقع دوت إمارات باستخدام معلوماتك لعدة أغراض كالتالي:\r\n-للاتصال بك. لتقديم خدماتنا لك، على سبيل المثال قد نرسل لك نشرة إخبارية أو تنبيه إخباري إذا قمت بالاشتراك في هذه الخدمات.\r\n-لتخصيص الطريقة التي تعرض بها موقع دوت إمارات، على سبيل المثال ‏إذا قمت بتحديد موقعك، سنقوم بتخصيص بعض الخدمات التي تعتمد على موقعك الجغرافي، كخدمات الطقس ومواقيت الصلاة. كما سنحرص على أن تكون واجهة الموقع مناسبة لموقعك من أجل استخدام أفضل لخدماتنا.\r\nسيبقي موقع دوت إمارات معلوماتك سرية، وفي العموم، لن تستخدم هذه المعلومات إلا داخل خدمات دوت إمارات. إلا أننا في بعض الأحيان قد نستخدم أطراف ثالثة لتقديم بعض الخدمات المخصصة بالنيابة عنا دون المساس بأمن معلوماتك الشخصية.\r\n\r\nهل سيتم الاتصال بي لأغراض التسويق، أو تحديث قواعد البيانات أو الإعلانات؟\r\nلن يقوم موقع دوت إمارات بإرسال رسائل بريد إلكتروني أو الاتصال بك لأغراض تسويقية، أو للإعلان عن خدمات أو أنشطة أو محتوى جديد إلا بعد الحصول على موافقة مسبقة منك. سيقوم فقط بإرسال الرسائل التي وافقت على استقبالها. وقد نقوم بإضفاء طابع شخصي على محتوى الرسائل طبقا للمعلومات التي قدمتها للموقع أو التي جمعناها أثناء استخدامك للموقع.\r\n\r\nالمحتوى المسيء أو غير اللائق على موقع دوت إمارات\r\nإذا قمت بنشر أو إرسال محتوى مسيء أو غير لائق على موقع دوت إمارات أو قمت بالانخراط في أي سلوك تخريبي على أي من خدمات دوت إمارات، قد يستخدم دوت إمارات المعلومات الشخصية الخاصة بك لوقف مثل هذا السلوك. وإذا قام موقع دوت إمارات بالشك في مخالفتك للقوانين المعمول بها (على سبيل المثال بسبب كون المحتوى الذي قمت بنشره نوعا من التشهير)، قد يستخدم الموقع المعلومات الشخصية لإبلاغ الأطراف الثالثة ذات الصلة مثل صاحب العمل الخاص بك، مدرستك، أو مزود خدمة الإنترنت أو البريد الإلكتروني الخاص بك أو منفذي القانون بشأن المحتوى وسلوكك.\r\n\r\nماذا لو كان عمري ١٦ عاماً أو أقل؟\r\nإذا كان عمرك ١٦ عاما أو أقل، يرجى الحصول على إذن الوالد/ولي الأمر قبل تقديم أية معلومات شخصية لدوت إمارات.\r\n\r\nالاتصال بدوت إمارات حول سياسة الخصوصية\r\nإذا كان لديك أي استفسارات أو تعليقات حول سياسة الخصوصية هذه يرجى الاتصال بدوت إمارات.\r\n\r\n</div>\r\n<div class="oneCol left ltrDir">\r\n\r\ndotemirates is committed to protecting your personal information. We want our services to be safe and enjoyable environments for everyone. This page aims to help you to understand what information we might collect about you and how we use it.\r\n\r\nWhen you interact with dotemirates, we sometimes receive or collect personal information about you. For example, if you write to us or sign up to a newsletter, you might tell us who you are, how we can contact you and what you think of dotemirates and its services. If you register for a dotemirates account, we may ask you to provide some personal information, such as your email address. When you use dotemirates services, we will use your IP address and cookies to provide certain functionality to you and to better understand how our services are being used.\r\n\r\nHow we use your information\r\nWe will use your information for a number of purposes including the following:\r\n-To contact you to provide you some services. For example, to send you a newsletter or a news alert, if you have asked for them.\r\n-To customise the way dotemirates content is presented to you. For example, if you tell us your location we will be able to customise your view of the dotemirates homepage, dotemirates News and Weather so that you always see relevant local content.\r\nWe will keep your information confidential and generally we will only use your information within dotemirates. However, we sometimes use third parties to provide services on our behalf.\r\n\r\nWill I be contacted for marketing purpose, Database updates or advertisement?\r\ndotemirates will only send you emails or otherwise contact you for marketing purposes, or to promote new services, activities or content where you have agreed to receive these communications. We may personalise the message content based upon any information you have provided to us and your use of dotemirates.\r\n\r\nOffensive or inappropriate content on dotemirates\r\nIf you post or send offensive, inappropriate or objectionable content anywhere on or to dotemirates or otherwise engage in any disruptive behaviour on any dotemirates service, dotemirates may use your personal information to stop such behaviour. And when dotemirates reasonably believes that you are or may be in breach of any applicable laws, dotemirates may use your personal information to inform relevant third parties such as your employer, school email/internet provider or law enforcement agencies about the content and your behaviour.\r\n\r\nWhat if I am a user aged 16 or under?\r\nIf you are aged 16 or under, please get your parent/guardian’s permission before you provide any personal information to dotemirates.\r\n\r\nContacting dotemirates about this Privacy Policy\r\nIf you have any questions or comments about this Privacy Policy please contact us.\r\n\r\n</div>', 'privacy', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-07-10 08:25:00', '2018-07-10 08:25:00', '', 102, 'http://localhost/wordpress/?p=106', 0, 'revision', '', 0),
(107, 1, '2018-07-10 08:27:05', '2018-07-10 08:27:05', '<div class="oneCol right">\r\n\r\nيلتزم موقع دوت إمارات بحماية المعلومات الشخصية الخاصة بك، فنحن نسعى لتقديم خدماتنا في بيئة آمنة وممتعة للجميع، لذا تهدف هذه الصفحة لمساعدتك على فهم ما هي المعلومات التي قد نجمعها عنك وكيف نستخدمها.\r\n\r\nعندما تتفاعل مع دوت إمارات نقوم في بعض الأحيان بتلقي أو جمع معلومات شخصية عنك. على سبيل المثال، إذا قمت بمراسلتنا أو الاشتراك في النشرة الإخبارية، قد نطلب منك معلوماتك الشخصية وطرق الاتصال بك ورأيك في موقع دوت إمارات وخدماته. وحين تقوم بالتسجيل للحصول على حساب على موقع دوت إمارات، قد نطلب منك تقديم بعض المعلومات الشخصية مثل عنوان البريد الإلكتروني الخاص بك، حتى نتمكن من إدارة التسجيل. وعند استخدام خدمات دوت إمارات على الإنترنت، سوف نستخدم عنوان الـIP الخاص بك، وملفات تعريف الارتباط لتقديم وظائف معينة لك. لمعرفة المزيد وفهم أفضل لكيفية استخدام خدماتنا، برجاء الرجوع إلى اتفاقية ملفات الارتباط.\r\n\r\nكيف سيقوم موقع دوت إمارات باستخدام معلوماتك الشخصية؟\r\nسيقوم موقع دوت إمارات باستخدام معلوماتك لعدة أغراض كالتالي:\r\n-للاتصال بك. لتقديم خدماتنا لك، على سبيل المثال قد نرسل لك نشرة إخبارية أو تنبيه إخباري إذا قمت بالاشتراك في هذه الخدمات.\r\n-لتخصيص الطريقة التي تعرض بها موقع دوت إمارات، على سبيل المثال ‏إذا قمت بتحديد موقعك، سنقوم بتخصيص بعض الخدمات التي تعتمد على موقعك الجغرافي، كخدمات الطقس ومواقيت الصلاة. كما سنحرص على أن تكون واجهة الموقع مناسبة لموقعك من أجل استخدام أفضل لخدماتنا.\r\nسيبقي موقع دوت إمارات معلوماتك سرية، وفي العموم، لن تستخدم هذه المعلومات إلا داخل خدمات دوت إمارات. إلا أننا في بعض الأحيان قد نستخدم أطراف ثالثة لتقديم بعض الخدمات المخصصة بالنيابة عنا دون المساس بأمن معلوماتك الشخصية.\r\n\r\nهل سيتم الاتصال بي لأغراض التسويق، أو تحديث قواعد البيانات أو الإعلانات؟\r\nلن يقوم موقع دوت إمارات بإرسال رسائل بريد إلكتروني أو الاتصال بك لأغراض تسويقية، أو للإعلان عن خدمات أو أنشطة أو محتوى جديد إلا بعد الحصول على موافقة مسبقة منك. سيقوم فقط بإرسال الرسائل التي وافقت على استقبالها. وقد نقوم بإضفاء طابع شخصي على محتوى الرسائل طبقا للمعلومات التي قدمتها للموقع أو التي جمعناها أثناء استخدامك للموقع.\r\n\r\nالمحتوى المسيء أو غير اللائق على موقع دوت إمارات\r\nإذا قمت بنشر أو إرسال محتوى مسيء أو غير لائق على موقع دوت إمارات أو قمت بالانخراط في أي سلوك تخريبي على أي من خدمات دوت إمارات، قد يستخدم دوت إمارات المعلومات الشخصية الخاصة بك لوقف مثل هذا السلوك. وإذا قام موقع دوت إمارات بالشك في مخالفتك للقوانين المعمول بها (على سبيل المثال بسبب كون المحتوى الذي قمت بنشره نوعا من التشهير)، قد يستخدم الموقع المعلومات الشخصية لإبلاغ الأطراف الثالثة ذات الصلة مثل صاحب العمل الخاص بك، مدرستك، أو مزود خدمة الإنترنت أو البريد الإلكتروني الخاص بك أو منفذي القانون بشأن المحتوى وسلوكك.\r\n\r\nماذا لو كان عمري ١٦ عاماً أو أقل؟\r\nإذا كان عمرك ١٦ عاما أو أقل، يرجى الحصول على إذن الوالد/ولي الأمر قبل تقديم أية معلومات شخصية لدوت إمارات.\r\n\r\nالاتصال بدوت إمارات حول سياسة الخصوصية\r\nإذا كان لديك أي استفسارات أو تعليقات حول سياسة الخصوصية هذه يرجى الاتصال بدوت إمارات.\r\n\r\n</div>\r\n<div class="oneCol left ltrDir">\r\n\r\ndotemirates is committed to protecting your personal information. We want our services to be safe and enjoyable environments for everyone. This page aims to help you to understand what information we might collect about you and how we use it.\r\n\r\nWhen you interact with dotemirates, we sometimes receive or collect personal information about you. For example, if you write to us or sign up to a newsletter, you might tell us who you are, how we can contact you and what you think of dotemirates and its services. If you register for a dotemirates account, we may ask you to provide some personal information, such as your email address. When you use dotemirates services, we will use your IP address and cookies to provide certain functionality to you and to better understand how our services are being used.\r\n\r\nHow we use your information\r\nWe will use your information for a number of purposes including the following:\r\n-To contact you to provide you some services. For example, to send you a newsletter or a news alert, if you have asked for them.\r\n-To customise the way dotemirates content is presented to you. For example, if you tell us your location we will be able to customise your view of the dotemirates homepage, dotemirates News and Weather so that you always see relevant local content.\r\nWe will keep your information confidential and generally we will only use your information within dotemirates. However, we sometimes use third parties to provide services on our behalf.\r\n\r\nWill I be contacted for marketing purpose, Database updates or advertisement?\r\ndotemirates will only send you emails or otherwise contact you for marketing purposes, or to promote new services, activities or content where you have agreed to receive these communications. We may personalise the message content based upon any information you have provided to us and your use of dotemirates.\r\n\r\nOffensive or inappropriate content on dotemirates\r\nIf you post or send offensive, inappropriate or objectionable content anywhere on or to dotemirates or otherwise engage in any disruptive behaviour on any dotemirates service, dotemirates may use your personal information to stop such behaviour. And when dotemirates reasonably believes that you are or may be in breach of any applicable laws, dotemirates may use your personal information to inform relevant third parties such as your employer, school email/internet provider or law enforcement agencies about the content and your behaviour.\r\n\r\nWhat if I am a user aged 16 or under?\r\nIf you are aged 16 or under, please get your parent/guardian’s permission before you provide any personal information to dotemirates.\r\n\r\nContacting dotemirates about this Privacy Policy\r\nIf you have any questions or comments about this Privacy Policy please contact us.\r\n\r\n</div>', 'privacy', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2018-07-10 08:27:05', '2018-07-10 08:27:05', '', 102, 'http://localhost/wordpress/?p=107', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Bootesrap NavBar', 'bootesrap-navbar', 0),
(3, 'classic menu', 'classic-menu', 0),
(5, 'sports', 'sports', 0),
(6, 'fun', 'fun', 0),
(7, 'art', 'art', 0),
(8, 'beauty', 'beauty', 0),
(9, 'hiiii', 'hiiii', 0),
(10, 'primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 1, 0),
(11, 5, 0),
(11, 7, 0),
(38, 3, 0),
(43, 3, 0),
(55, 2, 0),
(56, 2, 0),
(77, 8, 0),
(77, 9, 0),
(82, 2, 0),
(85, 2, 0),
(86, 2, 0),
(89, 10, 0),
(92, 2, 0),
(95, 2, 0),
(100, 2, 0),
(103, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 9),
(3, 3, 'nav_menu', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'root'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"9325e525f687fafca596f385aaf8c1837192e8802b68c489d3cfa9988295d4fc";a:4:{s:10:"expiration";i:1531213928;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:5:"login";i:1531041128;}s:64:"d3c937e46e752c2f5ce6d4f8311b156178f3f6db65fa80cf10044a070dd7b274";a:4:{s:10:"expiration";i:1532329846;s:2:"ip";s:3:"::1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36";s:5:"login";i:1531120246;}}'),
(17, 1, 'wp_user-settings', 'editor=html'),
(18, 1, 'wp_user-settings-time', '1531211220'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '88'),
(20, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(22, 1, 'nav_menu_recently_edited', '10'),
(23, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(24, 1, 'closedpostboxes_page', 'a:0:{}'),
(25, 1, 'metaboxhidden_page', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'root', '$P$B.eGSIjcdrnqTWuampCgSYfmPFJoZN0', 'root', 'roaya.mohsen22@gmail.com', '', '2018-06-12 09:37:00', '', 0, 'root');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
