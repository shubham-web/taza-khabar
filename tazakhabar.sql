-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 02:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tazakhabar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tk_commentmeta`
--

CREATE TABLE `tk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tk_comments`
--

CREATE TABLE `tk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_comments`
--

INSERT INTO `tk_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-30 15:48:18', '2021-12-30 15:48:18', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tk_links`
--

CREATE TABLE `tk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tk_options`
--

CREATE TABLE `tk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_options`
--

INSERT INTO `tk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://tazakhabar.test', 'yes'),
(2, 'home', 'http://tazakhabar.test', 'yes'),
(3, 'blogname', 'ताज़ा खबर', 'yes'),
(4, 'blogdescription', 'भारत की नंबर 1 हिन्दी समाचार वेबसाईट', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'shubhamp.developer@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:116:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:37:\"news/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:32:\"news/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:45:\"news/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:40:\"news/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:99:\"C:\\xampp\\htdocs\\wsc\\practise\\bootcamp\\week3\\tazakhabar/wp-content/themes/blankslate-child/style.css\";i:2;s:93:\"C:\\xampp\\htdocs\\wsc\\practise\\bootcamp\\week3\\tazakhabar/wp-content/themes/blankslate/style.css\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'blankslate', 'yes'),
(41, 'stylesheet', 'blankslate-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1656431298', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'tk_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:19:\"primary-widget-area\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1641041298;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1641052098;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1641052107;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641052110;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641570498;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1641016356;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640879420;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, '_site_transient_timeout_browser_d44bfba7ec2b67d9eb9e6c1eea55c253', '1641484108', 'no'),
(128, '_site_transient_browser_d44bfba7ec2b67d9eb9e6c1eea55c253', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_0260183cef5829810c63d4ec9ff87fd1', '1641484109', 'no'),
(131, '_site_transient_php_check_0260183cef5829810c63d4ec9ff87fd1', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(151, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'theme_mods_blankslate', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640881653;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:19:\"primary-widget-area\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}}}}', 'yes'),
(156, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641016358;s:7:\"checked\";a:5:{s:16:\"blankslate-child\";s:0:\"\";s:10:\"blankslate\";s:4:\"2021\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:10:\"blankslate\";a:6:{s:5:\"theme\";s:10:\"blankslate\";s:11:\"new_version\";i:2021;s:3:\"url\";s:40:\"https://wordpress.org/themes/blankslate/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/blankslate.2021.zip\";s:8:\"requires\";s:3:\"5.0\";s:12:\"requires_php\";s:3:\"7.0\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(157, 'current_theme', 'TazaKhabar', 'yes'),
(158, 'theme_switched', '', 'yes'),
(162, 'theme_mods_blankslate-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header-menu\";i:2;s:11:\"footer-menu\";i:8;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:9;}', 'yes'),
(163, 'site_logo', '9', 'yes'),
(200, 'category_children', 'a:0:{}', 'yes'),
(222, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(229, 'recently_activated', 'a:0:{}', 'yes'),
(236, 'acf_version', '5.9.9', 'yes'),
(252, '_site_transient_timeout_theme_roots', '1641018149', 'no'),
(253, '_site_transient_theme_roots', 'a:5:{s:16:\"blankslate-child\";s:7:\"/themes\";s:10:\"blankslate\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(254, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(256, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1641016358;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.11.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `tk_postmeta`
--

CREATE TABLE `tk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_postmeta`
--

INSERT INTO `tk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_menu_item_type', 'custom'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '6'),
(8, 6, '_menu_item_object', 'custom'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', 'http://tazakhabar.test/'),
(13, 6, '_menu_item_orphaned', '1640882380'),
(14, 7, '_menu_item_type', 'post_type'),
(15, 7, '_menu_item_menu_item_parent', '0'),
(16, 7, '_menu_item_object_id', '2'),
(17, 7, '_menu_item_object', 'page'),
(18, 7, '_menu_item_target', ''),
(19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 7, '_menu_item_xfn', ''),
(21, 7, '_menu_item_url', ''),
(22, 7, '_menu_item_orphaned', '1640882380'),
(23, 8, '_wp_trash_meta_status', 'publish'),
(24, 8, '_wp_trash_meta_time', '1640882537'),
(25, 9, '_wp_attached_file', '2021/12/TAZAKHABAR-LOGO.png'),
(26, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:375;s:6:\"height\";i:135;s:4:\"file\";s:27:\"2021/12/TAZAKHABAR-LOGO.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"TAZAKHABAR-LOGO-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"TAZAKHABAR-LOGO-150x135.png\";s:5:\"width\";i:150;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 9, '_wp_attachment_image_alt', 'Logo'),
(28, 10, '_wp_trash_meta_status', 'publish'),
(29, 10, '_wp_trash_meta_time', '1640882651'),
(30, 11, '_edit_lock', '1640925588:1'),
(31, 11, '_wp_page_template', 'template-news-category.php'),
(32, 2, '_edit_lock', '1640925553:1'),
(33, 13, '_edit_lock', '1640926657:1'),
(34, 14, '_edit_lock', '1640927227:1'),
(35, 15, '_edit_lock', '1640927132:1'),
(36, 16, '_edit_lock', '1640927143:1'),
(37, 17, '_edit_lock', '1640951670:1'),
(38, 18, '_wp_attached_file', '2021/12/arjun_kapoor-sixteen_nine1.jpg'),
(39, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:38:\"2021/12/arjun_kapoor-sixteen_nine1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"arjun_kapoor-sixteen_nine1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:39:\"arjun_kapoor-sixteen_nine1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"arjun_kapoor-sixteen_nine1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 18, '_wp_attachment_image_alt', 'arjun kapoor'),
(41, 17, '_thumbnail_id', '18'),
(42, 20, '_edit_lock', '1640951742:1'),
(43, 25, '_wp_attached_file', '2021/12/4455652.jpg'),
(44, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:19:\"2021/12/4455652.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"4455652-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"4455652-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"4455652-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 20, '_thumbnail_id', '25'),
(46, 32, '_menu_item_type', 'post_type'),
(47, 32, '_menu_item_menu_item_parent', '0'),
(48, 32, '_menu_item_object_id', '11'),
(49, 32, '_menu_item_object', 'page'),
(50, 32, '_menu_item_target', ''),
(51, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 32, '_menu_item_xfn', ''),
(53, 32, '_menu_item_url', ''),
(64, 34, '_menu_item_type', 'taxonomy'),
(65, 34, '_menu_item_menu_item_parent', '0'),
(66, 34, '_menu_item_object_id', '5'),
(67, 34, '_menu_item_object', 'category'),
(68, 34, '_menu_item_target', ''),
(69, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 34, '_menu_item_xfn', ''),
(71, 34, '_menu_item_url', ''),
(73, 35, '_menu_item_type', 'taxonomy'),
(74, 35, '_menu_item_menu_item_parent', '0'),
(75, 35, '_menu_item_object_id', '3'),
(76, 35, '_menu_item_object', 'category'),
(77, 35, '_menu_item_target', ''),
(78, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(79, 35, '_menu_item_xfn', ''),
(80, 35, '_menu_item_url', ''),
(82, 36, '_menu_item_type', 'taxonomy'),
(83, 36, '_menu_item_menu_item_parent', '0'),
(84, 36, '_menu_item_object_id', '6'),
(85, 36, '_menu_item_object', 'category'),
(86, 36, '_menu_item_target', ''),
(87, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(88, 36, '_menu_item_xfn', ''),
(89, 36, '_menu_item_url', ''),
(91, 37, '_menu_item_type', 'taxonomy'),
(92, 37, '_menu_item_menu_item_parent', '0'),
(93, 37, '_menu_item_object_id', '7'),
(94, 37, '_menu_item_object', 'category'),
(95, 37, '_menu_item_target', ''),
(96, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(97, 37, '_menu_item_xfn', ''),
(98, 37, '_menu_item_url', ''),
(100, 38, '_menu_item_type', 'custom'),
(101, 38, '_menu_item_menu_item_parent', '0'),
(102, 38, '_menu_item_object_id', '38'),
(103, 38, '_menu_item_object', 'custom'),
(104, 38, '_menu_item_target', ''),
(105, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 38, '_menu_item_xfn', ''),
(107, 38, '_menu_item_url', 'http://tazakhabar.test/'),
(109, 39, '_edit_lock', '1640937131:1'),
(111, 40, '_customize_changeset_uuid', 'c63bbc7e-8bf5-41b6-8f07-6c5320658ee4'),
(112, 41, '_edit_lock', '1640937304:1'),
(113, 41, '_wp_trash_meta_status', 'publish'),
(114, 41, '_wp_trash_meta_time', '1640937312'),
(115, 43, '_wp_trash_meta_status', 'publish'),
(116, 43, '_wp_trash_meta_time', '1640937387'),
(117, 40, '_wp_trash_meta_status', 'publish'),
(118, 40, '_wp_trash_meta_time', '1640937554'),
(119, 40, '_wp_desired_post_slug', '%e0%a4%b9%e0%a5%8b%e0%a4%ae'),
(120, 44, '_wp_trash_meta_status', 'publish'),
(121, 44, '_wp_trash_meta_time', '1640937569'),
(122, 45, '_edit_lock', '1640953003:1'),
(123, 47, '_wp_attached_file', '2021/12/jhaansai-sixteen_nine_21.jpg'),
(124, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:948;s:6:\"height\";i:533;s:4:\"file\";s:36:\"2021/12/jhaansai-sixteen_nine_21.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"jhaansai-sixteen_nine_21-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"jhaansai-sixteen_nine_21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(125, 45, '_thumbnail_id', '47'),
(126, 49, '_edit_lock', '1640950473:1'),
(127, 51, '_wp_attached_file', '2021/12/whatsappkey_3.webp'),
(128, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1270;s:6:\"height\";i:658;s:4:\"file\";s:26:\"2021/12/whatsappkey_3.webp\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"whatsappkey_3-300x155.webp\";s:5:\"width\";i:300;s:6:\"height\";i:155;s:9:\"mime-type\";s:10:\"image/webp\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"whatsappkey_3-1024x531.webp\";s:5:\"width\";i:1024;s:6:\"height\";i:531;s:9:\"mime-type\";s:10:\"image/webp\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"whatsappkey_3-150x150.webp\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/webp\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 49, '_thumbnail_id', '51'),
(130, 53, '_edit_lock', '1640954877:1'),
(131, 54, '_wp_attached_file', '2021/12/quinton_de_kock_and_ms_dhoni-sixteen_nine1.jpg'),
(132, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:54:\"2021/12/quinton_de_kock_and_ms_dhoni-sixteen_nine1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"quinton_de_kock_and_ms_dhoni-sixteen_nine1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:55:\"quinton_de_kock_and_ms_dhoni-sixteen_nine1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"quinton_de_kock_and_ms_dhoni-sixteen_nine1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 53, '_thumbnail_id', '54'),
(134, 2, '_wp_trash_meta_status', 'publish'),
(135, 2, '_wp_trash_meta_time', '1640943856'),
(136, 2, '_wp_desired_post_slug', 'sample-page'),
(137, 3, '_edit_last', '1'),
(138, 3, '_edit_lock', '1640943922:1'),
(141, 59, '_edit_last', '1'),
(142, 59, '_edit_lock', '1640951362:1'),
(143, 17, '_edit_last', '1'),
(144, 17, 'location', 'नई दिल्ली'),
(145, 17, '_location', 'field_61ced5a92d461'),
(146, 61, 'location', 'नई दिल्ली'),
(147, 61, '_location', 'field_61ced5a92d461'),
(148, 62, 'location', 'नई दिल्ली'),
(149, 62, '_location', 'field_61ced5a92d461'),
(150, 64, 'location', 'नई दिल्ली'),
(151, 64, '_location', 'field_61ced5a92d461'),
(152, 20, '_edit_last', '1'),
(153, 20, 'location', 'नई दिल्ली'),
(154, 20, '_location', 'field_61ced5a92d461'),
(155, 65, 'location', 'नई दिल्ली'),
(156, 65, '_location', 'field_61ced5a92d461'),
(157, 49, '_edit_last', '1'),
(158, 49, 'location', ''),
(159, 49, '_location', 'field_61ced5a92d461'),
(160, 66, 'location', ''),
(161, 66, '_location', 'field_61ced5a92d461'),
(162, 67, '_edit_lock', '1640950548:1'),
(163, 69, '_edit_lock', '1640950765:1'),
(164, 72, '_edit_lock', '1640950647:1'),
(165, 74, '_edit_lock', '1640950681:1'),
(166, 76, '_edit_lock', '1640950892:1'),
(167, 78, '_menu_item_type', 'post_type'),
(168, 78, '_menu_item_menu_item_parent', '0'),
(169, 78, '_menu_item_object_id', '3'),
(170, 78, '_menu_item_object', 'page'),
(171, 78, '_menu_item_target', ''),
(172, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 78, '_menu_item_xfn', ''),
(174, 78, '_menu_item_url', ''),
(176, 79, '_menu_item_type', 'post_type'),
(177, 79, '_menu_item_menu_item_parent', '0'),
(178, 79, '_menu_item_object_id', '76'),
(179, 79, '_menu_item_object', 'page'),
(180, 79, '_menu_item_target', ''),
(181, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 79, '_menu_item_xfn', ''),
(183, 79, '_menu_item_url', ''),
(185, 80, '_menu_item_type', 'post_type'),
(186, 80, '_menu_item_menu_item_parent', '0'),
(187, 80, '_menu_item_object_id', '72'),
(188, 80, '_menu_item_object', 'page'),
(189, 80, '_menu_item_target', ''),
(190, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 80, '_menu_item_xfn', ''),
(192, 80, '_menu_item_url', ''),
(194, 81, '_menu_item_type', 'post_type'),
(195, 81, '_menu_item_menu_item_parent', '0'),
(196, 81, '_menu_item_object_id', '74'),
(197, 81, '_menu_item_object', 'page'),
(198, 81, '_menu_item_target', ''),
(199, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 81, '_menu_item_xfn', ''),
(201, 81, '_menu_item_url', ''),
(203, 82, '_menu_item_type', 'post_type'),
(204, 82, '_menu_item_menu_item_parent', '0'),
(205, 82, '_menu_item_object_id', '69'),
(206, 82, '_menu_item_object', 'page'),
(207, 82, '_menu_item_target', ''),
(208, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(209, 82, '_menu_item_xfn', ''),
(210, 82, '_menu_item_url', ''),
(212, 83, '_menu_item_type', 'post_type'),
(213, 83, '_menu_item_menu_item_parent', '0'),
(214, 83, '_menu_item_object_id', '11'),
(215, 83, '_menu_item_object', 'page'),
(216, 83, '_menu_item_target', ''),
(217, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(218, 83, '_menu_item_xfn', ''),
(219, 83, '_menu_item_url', ''),
(220, 83, '_menu_item_orphaned', '1640950950'),
(221, 84, '_menu_item_type', 'post_type'),
(222, 84, '_menu_item_menu_item_parent', '0'),
(223, 84, '_menu_item_object_id', '67'),
(224, 84, '_menu_item_object', 'page'),
(225, 84, '_menu_item_target', ''),
(226, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(227, 84, '_menu_item_xfn', ''),
(228, 84, '_menu_item_url', ''),
(230, 85, '_edit_lock', '1640951574:1'),
(231, 86, '_wp_attached_file', '2021/12/aamir-khan-sixteen_nine1.jpg'),
(232, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:36:\"2021/12/aamir-khan-sixteen_nine1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"aamir-khan-sixteen_nine1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"aamir-khan-sixteen_nine1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"aamir-khan-sixteen_nine1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 85, '_thumbnail_id', '86'),
(234, 85, '_edit_last', '1'),
(235, 85, 'location', 'मुंबई'),
(236, 85, '_location', 'field_61ced5a92d461'),
(237, 87, 'location', ''),
(238, 87, '_location', 'field_61ced5a92d461'),
(239, 88, 'location', 'मुंबई'),
(240, 88, '_location', 'field_61ced5a92d461'),
(241, 89, '_edit_lock', '1640956733:1'),
(242, 90, '_wp_attached_file', '2021/12/salman-_collage-sixteen_nine1.jpg'),
(243, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:675;s:4:\"file\";s:41:\"2021/12/salman-_collage-sixteen_nine1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"salman-_collage-sixteen_nine1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"salman-_collage-sixteen_nine1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"salman-_collage-sixteen_nine1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 89, '_thumbnail_id', '90'),
(245, 89, '_edit_last', '1'),
(246, 89, 'location', 'दिल्ली'),
(247, 89, '_location', 'field_61ced5a92d461'),
(248, 91, 'location', ''),
(249, 91, '_location', 'field_61ced5a92d461'),
(250, 92, 'location', 'नई दिल्ली'),
(251, 92, '_location', 'field_61ced5a92d461'),
(252, 93, 'location', 'नई दिल्ली'),
(253, 93, '_location', 'field_61ced5a92d461'),
(254, 45, '_edit_last', '1'),
(255, 45, 'location', ''),
(256, 45, '_location', 'field_61ced5a92d461'),
(257, 94, 'location', 'झांसी'),
(258, 94, '_location', 'field_61ced5a92d461'),
(259, 95, 'location', ''),
(260, 95, '_location', 'field_61ced5a92d461'),
(261, 96, '_menu_item_type', 'taxonomy'),
(262, 96, '_menu_item_menu_item_parent', '0'),
(263, 96, '_menu_item_object_id', '4'),
(264, 96, '_menu_item_object', 'category'),
(265, 96, '_menu_item_target', ''),
(266, 96, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(267, 96, '_menu_item_xfn', ''),
(268, 96, '_menu_item_url', ''),
(270, 98, 'location', 'दिल्ली '),
(271, 98, '_location', 'field_61ced5a92d461'),
(272, 99, 'location', 'दिल्ली'),
(273, 99, '_location', 'field_61ced5a92d461');

-- --------------------------------------------------------

--
-- Table structure for table `tk_posts`
--

CREATE TABLE `tk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_posts`
--

INSERT INTO `tk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-30 15:48:18', '2021-12-30 15:48:18', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-12-30 15:48:18', '2021-12-30 15:48:18', '', 0, 'http://tazakhabar.test/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-30 15:48:18', '2021-12-30 15:48:18', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://tazakhabar.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-12-31 09:44:16', '2021-12-31 09:44:16', '', 0, 'http://tazakhabar.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-30 15:48:18', '2021-12-30 15:48:18', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://tazakhabar.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'गोपनीयता नीति', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2021-12-31 09:45:22', '2021-12-31 09:45:22', '', 0, 'http://tazakhabar.test/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-12-30 15:48:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-30 15:48:30', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?p=4', 0, 'post', '', 0),
(6, 1, '2021-12-30 16:39:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-30 16:39:40', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2021-12-30 16:39:40', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-30 16:39:40', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2021-12-30 16:42:17', '2021-12-30 16:42:17', '{\n    \"blogdescription\": {\n        \"value\": \"\\u092d\\u093e\\u0930\\u0924 \\u0915\\u0940 \\u0928\\u0902\\u092c\\u0930 1 \\u0939\\u093f\\u0928\\u094d\\u0926\\u0940 \\u0938\\u092e\\u093e\\u091a\\u093e\\u0930 \\u0935\\u0947\\u092c\\u0938\\u093e\\u0908\\u091f\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-30 16:42:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '470f902c-781a-4253-9688-4c3f903c9c32', '', '', '2021-12-30 16:42:17', '2021-12-30 16:42:17', '', 0, 'http://tazakhabar.test/2021/12/30/470f902c-781a-4253-9688-4c3f903c9c32/', 0, 'customize_changeset', '', 0),
(9, 1, '2021-12-30 16:44:02', '2021-12-30 16:44:02', '', 'TAZAKHABAR LOGO', '', 'inherit', 'open', 'closed', '', 'tazakhabar-logo', '', '', '2021-12-30 16:44:05', '2021-12-30 16:44:05', '', 0, 'http://tazakhabar.test/wp-content/uploads/2021/12/TAZAKHABAR-LOGO.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2021-12-30 16:44:11', '2021-12-30 16:44:11', '{\n    \"blankslate-child::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-30 16:44:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '37ba0db6-0691-419d-b7b8-e7ecdf0d89ea', '', '', '2021-12-30 16:44:11', '2021-12-30 16:44:11', '', 0, 'http://tazakhabar.test/2021/12/30/37ba0db6-0691-419d-b7b8-e7ecdf0d89ea/', 0, 'customize_changeset', '', 0),
(11, 1, '2021-12-31 04:04:52', '2021-12-31 04:04:52', '', 'समाचार श्रेणियाँ', '', 'publish', 'closed', 'closed', '', '%e0%a4%b8%e0%a4%ae%e0%a4%be%e0%a4%9a%e0%a4%be%e0%a4%b0-%e0%a4%b6%e0%a5%8d%e0%a4%b0%e0%a5%87%e0%a4%a3%e0%a4%bf%e0%a4%af%e0%a4%be%e0%a4%81', '', '', '2021-12-31 04:04:52', '2021-12-31 04:04:52', '', 0, 'http://tazakhabar.test/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-12-31 04:04:52', '2021-12-31 04:04:52', '', 'समाचार श्रेणियाँ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-12-31 04:04:52', '2021-12-31 04:04:52', '', 11, 'http://tazakhabar.test/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-12-31 05:00:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-31 05:00:00', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?post_type=news&p=13', 0, 'news', '', 0),
(14, 1, '2021-12-31 05:07:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-31 05:07:07', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?post_type=news&p=14', 0, 'news', '', 0),
(15, 1, '2021-12-31 05:07:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-31 05:07:56', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?post_type=news&p=15', 0, 'news', '', 0),
(16, 1, '2021-12-31 05:08:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-31 05:08:00', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?post_type=news&p=16', 0, 'news', '', 0),
(17, 1, '2021-12-31 05:16:59', '2021-12-31 05:16:59', '<!-- wp:paragraph -->\n<p>कोरोना का संक्रमण बॉलीवुड तक पहुंच गया है. बॉलीवुड एक्टर अर्जुन कपूर और उनकी बहन अंशुला कोरोना पॉजिटिव हो गए हैं. रिपोर्ट पॉजिटिव आने के बाद दोनों क्वारनटीन हो गए हैं और उन्होंने अपने संपर्क में आए लोगों से टेस्ट कराने की अपील की है.</p>\n<!-- /wp:paragraph -->', 'अर्जुन कपूर को हुआ कोरोना', '', 'publish', 'open', 'open', '', 'arjun-kapoor-ko-hua-corona', '', '', '2021-12-31 10:08:35', '2021-12-31 10:08:35', '', 0, 'http://tazakhabar.test/?post_type=news&#038;p=17', 0, 'news', '', 0),
(18, 1, '2021-12-31 05:16:26', '2021-12-31 05:16:26', '', 'arjun_kapoor-sixteen_nine[1]', '', 'inherit', 'open', 'closed', '', 'arjun_kapoor-sixteen_nine1', '', '', '2021-12-31 05:16:37', '2021-12-31 05:16:37', '', 17, 'http://tazakhabar.test/wp-content/uploads/2021/12/arjun_kapoor-sixteen_nine1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-12-31 05:16:59', '2021-12-31 05:16:59', '<!-- wp:paragraph -->\n<p>कोरोना का संक्रमण बॉलीवुड तक पहुंच गया है. बॉलीवुड एक्टर अर्जुन कपूर और उनकी बहन अंशुला कोरोना पॉजिटिव हो गए हैं. रिपोर्ट पॉजिटिव आने के बाद दोनों क्वारनटीन हो गए हैं और उन्होंने अपने संपर्क में आए लोगों से टेस्ट कराने की अपील की है.</p>\n<!-- /wp:paragraph -->', 'अर्जुन कपूर को हुआ कोरोना', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-12-31 05:16:59', '2021-12-31 05:16:59', '', 17, 'http://tazakhabar.test/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-12-31 06:01:46', '2021-12-31 06:01:46', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-text-color\">गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'publish', 'open', 'open', '', 'new-year-2022-%e0%a4%ad%e0%a4%be%e0%a4%b0%e0%a4%a4-%e0%a4%95%e0%a5%80-%e0%a4%87%e0%a4%a8-10-%e0%a4%9c%e0%a4%97%e0%a4%b9%e0%a5%8b%e0%a4%82-%e0%a4%aa%e0%a4%b0-%e0%a4%95%e0%a4%b0%e0%a5%87%e0%a4%82', '', '', '2021-12-31 11:55:42', '2021-12-31 11:55:42', '', 0, 'http://tazakhabar.test/?post_type=news&#038;p=20', 0, 'news', '', 0),
(21, 1, '2021-12-31 06:01:46', '2021-12-31 06:01:46', '<!-- wp:heading -->\n<h2>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h2>\n<!-- /wp:heading -->\n\n<!-- wp:pullquote -->\n<figure class=\"wp-block-pullquote\"><blockquote><p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p></blockquote></figure>\n<!-- /wp:pullquote -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:01:46', '2021-12-31 06:01:46', '', 20, 'http://tazakhabar.test/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-12-31 06:02:05', '2021-12-31 06:02:05', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:02:05', '2021-12-31 06:02:05', '', 20, 'http://tazakhabar.test/?p=22', 0, 'revision', '', 0),
(24, 1, '2021-12-31 06:03:40', '2021-12-31 06:03:40', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:03:40', '2021-12-31 06:03:40', '', 20, 'http://tazakhabar.test/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-12-31 06:04:19', '2021-12-31 06:04:19', '', '4455652', '', 'inherit', 'open', 'closed', '', '4455652', '', '', '2021-12-31 06:04:19', '2021-12-31 06:04:19', '', 20, 'http://tazakhabar.test/wp-content/uploads/2021/12/4455652.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-12-31 06:07:34', '2021-12-31 06:07:34', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:07:34', '2021-12-31 06:07:34', '', 20, 'http://tazakhabar.test/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-12-31 06:07:55', '2021-12-31 06:07:55', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:verse -->\n<pre class=\"wp-block-verse\">राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</pre>\n<!-- /wp:verse -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:07:55', '2021-12-31 06:07:55', '', 20, 'http://tazakhabar.test/?p=27', 0, 'revision', '', 0),
(28, 1, '2021-12-31 06:08:08', '2021-12-31 06:08:08', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:08:08', '2021-12-31 06:08:08', '', 20, 'http://tazakhabar.test/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-12-31 06:08:20', '2021-12-31 06:08:20', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:08:20', '2021-12-31 06:08:20', '', 20, 'http://tazakhabar.test/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-12-31 06:11:22', '2021-12-31 06:11:22', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:11:22', '2021-12-31 06:11:22', '', 20, 'http://tazakhabar.test/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-12-31 06:11:40', '2021-12-31 06:11:40', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-text-color\">गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 06:11:40', '2021-12-31 06:11:40', '', 20, 'http://tazakhabar.test/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-12-31 12:44:39', '2021-12-31 07:51:22', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2021-12-31 12:44:39', '2021-12-31 12:44:39', '', 0, 'http://tazakhabar.test/?p=32', 7, 'nav_menu_item', '', 0),
(34, 1, '2021-12-31 12:44:39', '2021-12-31 07:53:54', 'तकनीक समाचार', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2021-12-31 12:44:39', '2021-12-31 12:44:39', '', 0, 'http://tazakhabar.test/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2021-12-31 12:44:39', '2021-12-31 07:53:54', 'मनोरंजन समाचार', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2021-12-31 12:44:39', '2021-12-31 12:44:39', '', 0, 'http://tazakhabar.test/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2021-12-31 12:44:39', '2021-12-31 07:53:54', 'राजनीती समाचार', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-12-31 12:44:39', '2021-12-31 12:44:39', '', 0, 'http://tazakhabar.test/?p=36', 5, 'nav_menu_item', '', 0),
(37, 1, '2021-12-31 12:44:39', '2021-12-31 07:53:54', 'विज्ञान समाचार', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-12-31 12:44:39', '2021-12-31 12:44:39', '', 0, 'http://tazakhabar.test/?p=37', 6, 'nav_menu_item', '', 0),
(38, 1, '2021-12-31 12:44:39', '2021-12-31 07:53:54', '', 'होम', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-12-31 12:44:39', '2021-12-31 12:44:39', '', 0, 'http://tazakhabar.test/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2021-12-31 07:54:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-31 07:54:34', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?page_id=39', 0, 'page', '', 0),
(40, 1, '2021-12-31 07:55:12', '2021-12-31 07:55:12', '', 'होम', '', 'trash', 'closed', 'closed', '', '%e0%a4%b9%e0%a5%8b%e0%a4%ae__trashed', '', '', '2021-12-31 07:59:14', '2021-12-31 07:59:14', '', 0, 'http://tazakhabar.test/?page_id=40', 0, 'page', '', 0),
(41, 1, '2021-12-31 07:55:12', '2021-12-31 07:55:12', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-31 07:55:04\"\n    },\n    \"page_on_front\": {\n        \"value\": \"40\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-31 07:55:04\"\n    },\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            40\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-31 07:55:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c63bbc7e-8bf5-41b6-8f07-6c5320658ee4', '', '', '2021-12-31 07:55:12', '2021-12-31 07:55:12', '', 0, 'http://tazakhabar.test/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2021-12-31 07:55:12', '2021-12-31 07:55:12', '', 'होम', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2021-12-31 07:55:12', '2021-12-31 07:55:12', '', 40, 'http://tazakhabar.test/?p=42', 0, 'revision', '', 0),
(43, 1, '2021-12-31 07:56:27', '2021-12-31 07:56:27', '{\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-31 07:56:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dcfaf3e3-9615-4d8d-8268-dc7c820bb466', '', '', '2021-12-31 07:56:27', '2021-12-31 07:56:27', '', 0, 'http://tazakhabar.test/dcfaf3e3-9615-4d8d-8268-dc7c820bb466/', 0, 'customize_changeset', '', 0),
(44, 1, '2021-12-31 07:59:29', '2021-12-31 07:59:29', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-31 07:59:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f92187e4-85ef-4851-858c-88ec544f6062', '', '', '2021-12-31 07:59:29', '2021-12-31 07:59:29', '', 0, 'http://tazakhabar.test/f92187e4-85ef-4851-858c-88ec544f6062/', 0, 'customize_changeset', '', 0),
(45, 1, '2021-12-31 08:04:49', '2021-12-31 08:04:49', '<!-- wp:paragraph -->\n<p>यूपी सरकार ने एक और रेलवे स्टेशन का नाम बदल दिया है.अब&nbsp;झांसी रेलवे स्टेशन का&nbsp;नाम वीरांगना लक्ष्मीबाई रेलवे स्टेशन रख दिया गया है. उत्तर प्रदेश सरकार के नाम परिवर्तित करने के प्रस्ताव को केंद्र सरकार द्वारा मंजूरी मिलने के बाद शासनादेश जारी कर दिया गया है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>रेलवे स्टेशन का नाम बदला</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>जानकारी के लिए बता दें कि तीन महीने पहले गृह मंत्रालय को ये प्रस्ताव दिया गया था कि झांसी रेलवे स्टेशन का नाम बदला जाए. अब उसी प्रस्ताव को स्वीकार करते हुए यूपी सरकार ने झांसी रेलवे स्टेशन का नाम बदल&nbsp;वीरांगना लक्ष्मीबाई रेलवे स्टेशन कर दिया है. रेलवे स्टेशन का कोड भी अब बदल दिया जाएगा. सरकार की तरफ ये तर्क दिया जा रहा है कि स्टेशन का नाम बदलने से भी क्षेत्र में पर्यटन की संभावनाएं बढ़ सकती हैं. बुंदेलखंड इलाके में भी इसका लाभ देखने को मिल सकता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>वैसे राज्य सरकार ने कई मौकों पर ये स्पष्ट किया है कि जरूरत के हिसाब से नाम बदले&nbsp;जाएंगे. इससे पहले योगी सरकार ने अपने&nbsp;कार्यकाल में फैजाबाद को अयोध्या, इलाहाबाद को प्रयागराज,&nbsp;मुगलसराय को दीन दयाल उपाध्याय नगर बना दिया गया है. इस बार फर्क ये रहा है कि सरकार ने शहर की जगह किसी रेलवे स्टेशन का नामकरण कर दिया है. चुनावी मौसम में सरकार का ये फैसला काफी अहम माना जा रहा है.</p>\n<!-- /wp:paragraph -->', 'झांसी रेलवे स्टेशन बन गया वीरांगना लक्ष्मीबाई.... यूपी सरकार ने बदला एक और नाम', '', 'publish', 'open', 'open', '', '%e0%a4%9d%e0%a4%be%e0%a4%82%e0%a4%b8%e0%a5%80-%e0%a4%b0%e0%a5%87%e0%a4%b2%e0%a4%b5%e0%a5%87-%e0%a4%b8%e0%a5%8d%e0%a4%9f%e0%a5%87%e0%a4%b6%e0%a4%a8-%e0%a4%ac%e0%a4%a8-%e0%a4%97%e0%a4%af%e0%a4%be', '', '', '2021-12-31 12:09:58', '2021-12-31 12:09:58', '', 0, 'http://tazakhabar.test/?post_type=news&#038;p=45', 0, 'news', '', 0),
(46, 1, '2021-12-31 08:04:49', '2021-12-31 08:04:49', '<!-- wp:paragraph -->\n<p>यूपी सरकार ने एक और रेलवे स्टेशन का नाम बदल दिया है.अब झांसी रेलवे स्टेशन का नाम वीरांगना लक्ष्मीबाई रेलवे स्टेशन रख दिया गया है. उत्तर प्रदेश सरकार के नाम परिवर्तित करने के प्रस्ताव को केंद्र सरकार द्वारा मंजूरी मिलने के बाद शासनादेश जारी कर दिया गया है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>रेलवे स्टेशन का नाम बदला</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>जानकारी के लिए बता दें कि तीन महीने पहले गृह मंत्रालय को ये प्रस्ताव दिया गया था कि झांसी रेलवे स्टेशन का नाम बदला जाए. अब उसी प्रस्ताव को स्वीकार करते हुए यूपी सरकार ने झांसी रेलवे स्टेशन का नाम बदल वीरांगना लक्ष्मीबाई रेलवे स्टेशन कर दिया है. रेलवे स्टेशन का कोड भी अब बदल दिया जाएगा. सरकार की तरफ ये तर्क दिया जा रहा है कि स्टेशन का नाम बदलने से भी क्षेत्र में पर्यटन की संभावनाएं बढ़ सकती हैं. बुंदेलखंड इलाके में भी इसका लाभ देखने को मिल सकता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>वैसे राज्य सरकार ने कई मौकों पर ये स्पष्ट किया है कि जरूरत के हिसाब से नाम बदले जाएंगे. इससे पहले योगी सरकार ने अपने कार्यकाल में फैजाबाद को अयोध्या, इलाहाबाद को प्रयागराज, मुगलसराय को दीन दयाल उपाध्याय नगर बना दिया गया है. इस बार फर्क ये रहा है कि सरकार ने शहर की जगह किसी रेलवे स्टेशन का नामकरण कर दिया है. चुनावी मौसम में सरकार का ये फैसला काफी अहम माना जा रहा है. </p>\n<!-- /wp:paragraph -->', 'झांसी रेलवे स्टेशन बन गया वीरांगना लक्ष्मीबाई.... यूपी सरकार ने बदला एक और नाम', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-12-31 08:04:49', '2021-12-31 08:04:49', '', 45, 'http://tazakhabar.test/?p=46', 0, 'revision', '', 0),
(47, 1, '2021-12-31 08:05:57', '2021-12-31 08:05:57', '', 'jhaansai-sixteen_nine_2[1]', '', 'inherit', 'open', 'closed', '', 'jhaansai-sixteen_nine_21', '', '', '2021-12-31 08:05:57', '2021-12-31 08:05:57', '', 45, 'http://tazakhabar.test/wp-content/uploads/2021/12/jhaansai-sixteen_nine_21.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-12-31 08:06:33', '2021-12-31 08:06:33', '<!-- wp:paragraph -->\n<p>यूपी सरकार ने एक और रेलवे स्टेशन का नाम बदल दिया है.अब झांसी रेलवे स्टेशन का नाम वीरांगना लक्ष्मीबाई रेलवे स्टेशन रख दिया गया है. उत्तर प्रदेश सरकार के नाम परिवर्तित करने के प्रस्ताव को केंद्र सरकार द्वारा मंजूरी मिलने के बाद शासनादेश जारी कर दिया गया है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>रेलवे स्टेशन का नाम बदला</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>जानकारी के लिए बता दें कि तीन महीने पहले गृह मंत्रालय को ये प्रस्ताव दिया गया था कि झांसी रेलवे स्टेशन का नाम बदला जाए. अब उसी प्रस्ताव को स्वीकार करते हुए यूपी सरकार ने झांसी रेलवे स्टेशन का नाम बदल वीरांगना लक्ष्मीबाई रेलवे स्टेशन कर दिया है. रेलवे स्टेशन का कोड भी अब बदल दिया जाएगा. सरकार की तरफ ये तर्क दिया जा रहा है कि स्टेशन का नाम बदलने से भी क्षेत्र में पर्यटन की संभावनाएं बढ़ सकती हैं. बुंदेलखंड इलाके में भी इसका लाभ देखने को मिल सकता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>वैसे राज्य सरकार ने कई मौकों पर ये स्पष्ट किया है कि जरूरत के हिसाब से नाम बदले जाएंगे. इससे पहले योगी सरकार ने अपने कार्यकाल में फैजाबाद को अयोध्या, इलाहाबाद को प्रयागराज, मुगलसराय को दीन दयाल उपाध्याय नगर बना दिया गया है. इस बार फर्क ये रहा है कि सरकार ने शहर की जगह किसी रेलवे स्टेशन का नामकरण कर दिया है. चुनावी मौसम में सरकार का ये फैसला काफी अहम माना जा रहा है.</p>\n<!-- /wp:paragraph -->', 'झांसी रेलवे स्टेशन बन गया वीरांगना लक्ष्मीबाई.... यूपी सरकार ने बदला एक और नाम', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-12-31 08:06:33', '2021-12-31 08:06:33', '', 45, 'http://tazakhabar.test/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-12-31 08:08:28', '2021-12-31 08:08:28', '<!-- wp:paragraph -->\n<p>इंस्टैंट मैसेजिंग प्लेटफॉर्म WhatsApp को लेकर एक न्यूज तेजी से वायरल हो रही&nbsp;है. इसमें कहा जा रहा है कि WhatsApp तीसरा ब्लू टिक जारी कर रहा है. इससे अगर कोई आपके मैसेज का स्क्रीनशॉट लेता है तो आपके मैसेज पर तीन ब्लू टिक लग जाएंगे.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपको बता दें कि WhatsApp ऐसा कोई फीचर जारी नहीं कर रहा है. ये फेक न्यूज है. स्क्रीनशॉट डिटेक्शन फीचर को कई लोग चाहते हैं लेकिन ऐप का इसे लाने का फिलहाल ऐसा कोई भी प्लान नहीं है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WhatsApp के फीचर्स पर नजर रखने वाली साइट Wabetainfo ने भी इसको लेकर जानकारी दी है. Wabetainfo के अनुसार तीसरा ब्लू टिक वाला फीचर ऐप के लिए नहीं आने वाला है. इसको लेकर Wabetainfo ने एक ट्वीट भी शेयर किया है.</p>\n<!-- /wp:paragraph -->', 'WhatsApp पर स्क्रीनशॉट लेते ही लगेंगे तीन ब्लू टिक?', '', 'publish', 'open', 'open', '', 'whatsapp-%e0%a4%aa%e0%a4%b0-%e0%a4%b8%e0%a5%8d%e0%a4%95%e0%a5%8d%e0%a4%b0%e0%a5%80%e0%a4%a8%e0%a4%b6%e0%a5%89%e0%a4%9f%e0%a4%b2%e0%a5%87%e0%a4%a4%e0%a5%87-%e0%a4%b9%e0%a5%80-%e0%a4%b2%e0%a4%97', '', '', '2021-12-31 11:34:33', '2021-12-31 11:34:33', '', 0, 'http://tazakhabar.test/?post_type=news&#038;p=49', 0, 'news', '', 0);
INSERT INTO `tk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(50, 1, '2021-12-31 08:08:28', '2021-12-31 08:08:28', '<!-- wp:paragraph -->\n<p>इंस्टैंट मैसेजिंग प्लेटफॉर्म WhatsApp को लेकर एक न्यूज तेजी से वायरल हो रही है. इसमें कहा जा रहा है कि WhatsApp तीसरा ब्लू टिक जारी कर रहा है. इससे अगर कोई आपके मैसेज का स्क्रीनशॉट लेता है तो आपके मैसेज पर तीन ब्लू टिक लग जाएंगे. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपको बता दें कि WhatsApp ऐसा कोई फीचर जारी नहीं कर रहा है. ये फेक न्यूज है. स्क्रीनशॉट डिटेक्शन फीचर को कई लोग चाहते हैं लेकिन ऐप का इसे लाने का फिलहाल ऐसा कोई भी प्लान नहीं है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WhatsApp के फीचर्स पर नजर रखने वाली साइट Wabetainfo ने भी इसको लेकर जानकारी दी है. Wabetainfo के अनुसार तीसरा ब्लू टिक वाला फीचर ऐप के लिए नहीं आने वाला है. इसको लेकर Wabetainfo ने एक ट्वीट भी शेयर किया है.</p>\n<!-- /wp:paragraph -->', 'WhatsApp पर स्क्रीनशॉटलेते ही लगेंगे तीन ब्लू टिक?', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-12-31 08:08:28', '2021-12-31 08:08:28', '', 49, 'http://tazakhabar.test/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-12-31 08:09:55', '2021-12-31 08:09:55', '', 'whatsappkey_3', '', 'inherit', 'open', 'closed', '', 'whatsappkey_3', '', '', '2021-12-31 08:09:55', '2021-12-31 08:09:55', '', 49, 'http://tazakhabar.test/wp-content/uploads/2021/12/whatsappkey_3.webp', 0, 'attachment', 'image/webp', 0),
(52, 1, '2021-12-31 08:11:35', '2021-12-31 08:11:35', '<!-- wp:paragraph -->\n<p>यूपी सरकार ने एक और रेलवे स्टेशन का नाम बदल दिया है.अब&nbsp;झांसी रेलवे स्टेशन का&nbsp;नाम वीरांगना लक्ष्मीबाई रेलवे स्टेशन रख दिया गया है. उत्तर प्रदेश सरकार के नाम परिवर्तित करने के प्रस्ताव को केंद्र सरकार द्वारा मंजूरी मिलने के बाद शासनादेश जारी कर दिया गया है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>रेलवे स्टेशन का नाम बदला</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>जानकारी के लिए बता दें कि तीन महीने पहले गृह मंत्रालय को ये प्रस्ताव दिया गया था कि झांसी रेलवे स्टेशन का नाम बदला जाए. अब उसी प्रस्ताव को स्वीकार करते हुए यूपी सरकार ने झांसी रेलवे स्टेशन का नाम बदल&nbsp;वीरांगना लक्ष्मीबाई रेलवे स्टेशन कर दिया है. रेलवे स्टेशन का कोड भी अब बदल दिया जाएगा. सरकार की तरफ ये तर्क दिया जा रहा है कि स्टेशन का नाम बदलने से भी क्षेत्र में पर्यटन की संभावनाएं बढ़ सकती हैं. बुंदेलखंड इलाके में भी इसका लाभ देखने को मिल सकता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>वैसे राज्य सरकार ने कई मौकों पर ये स्पष्ट किया है कि जरूरत के हिसाब से नाम बदले&nbsp;जाएंगे. इससे पहले योगी सरकार ने अपने&nbsp;कार्यकाल में फैजाबाद को अयोध्या, इलाहाबाद को प्रयागराज,&nbsp;मुगलसराय को दीन दयाल उपाध्याय नगर बना दिया गया है. इस बार फर्क ये रहा है कि सरकार ने शहर की जगह किसी रेलवे स्टेशन का नामकरण कर दिया है. चुनावी मौसम में सरकार का ये फैसला काफी अहम माना जा रहा है.</p>\n<!-- /wp:paragraph -->', 'झांसी रेलवे स्टेशन बन गया वीरांगना लक्ष्मीबाई.... यूपी सरकार ने बदला एक और नाम', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-12-31 08:11:35', '2021-12-31 08:11:35', '', 45, 'http://tazakhabar.test/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-12-31 09:31:04', '2021-12-31 09:31:04', '<!-- wp:paragraph -->\n<p>भारतीय टीम ने साउथ अफ्रीका को उसी के घर में सेंचुरियन टेस्ट में 113 रनों से करारी शिकस्त दी है. इस बॉक्सिंग-डे टेस्ट में हार के बाद साउथ अफ्रीका के विकेटकीपर बल्लेबाज क्विंटन डिकॉक ने टेस्ट क्रिकेट से अचानक संन्यास का ऐलान कर दिया. इसके बाद सोशल मीडिया पर फैंस को पूर्व भारतीय कप्तान और विकेटकीपर बल्लेबाज महेंद्र सिंह धोनी की याद आ गई.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>दरअसल, 29 साल के डिकॉक ने जिस दिन संन्यास लिया है वह तारीख 30 दिसंबर रही है. इसी दिन 7 साल पहले भी महेंद्र सिंह धोनी ने भी टेस्ट क्रिकेट से संन्यास लिया था. डिकॉक और धोनी दोनों ने ही बॉक्सिंग-डे टेस्ट खेलने के बाद इस फॉर्मेट को अलविदा कहा है.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'डिकॉक के अचानक संन्यास से फैंस को याद आए Dhoni', '', 'publish', 'open', 'open', '', '%e0%a4%a1%e0%a4%bf%e0%a4%95%e0%a5%89%e0%a4%95-%e0%a4%95%e0%a5%87-%e0%a4%85%e0%a4%9a%e0%a4%be%e0%a4%a8%e0%a4%95-%e0%a4%b8%e0%a4%82%e0%a4%a8%e0%a5%8d%e0%a4%af%e0%a4%be%e0%a4%b8-%e0%a4%b8%e0%a5%87', '', '', '2021-12-31 09:31:19', '2021-12-31 09:31:19', '', 0, 'http://tazakhabar.test/?post_type=news&#038;p=53', 0, 'news', '', 0),
(54, 1, '2021-12-31 09:30:22', '2021-12-31 09:30:22', '', 'quinton_de_kock_and_ms_dhoni-sixteen_nine[1]', '', 'inherit', 'open', 'closed', '', 'quinton_de_kock_and_ms_dhoni-sixteen_nine1', '', '', '2021-12-31 09:30:22', '2021-12-31 09:30:22', '', 53, 'http://tazakhabar.test/wp-content/uploads/2021/12/quinton_de_kock_and_ms_dhoni-sixteen_nine1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2021-12-31 09:31:04', '2021-12-31 09:31:04', '<!-- wp:paragraph -->\n<p>भारतीय टीम ने साउथ अफ्रीका को उसी के घर में सेंचुरियन टेस्ट में 113 रनों से करारी शिकस्त दी है. इस बॉक्सिंग-डे टेस्ट में हार के बाद साउथ अफ्रीका के विकेटकीपर बल्लेबाज क्विंटन डिकॉक ने टेस्ट क्रिकेट से अचानक संन्यास का ऐलान कर दिया. इसके बाद सोशल मीडिया पर फैंस को पूर्व भारतीय कप्तान और विकेटकीपर बल्लेबाज महेंद्र सिंह धोनी की याद आ गई.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>दरअसल, 29 साल के डिकॉक ने जिस दिन संन्यास लिया है वह तारीख 30 दिसंबर रही है. इसी दिन 7 साल पहले भी महेंद्र सिंह धोनी ने भी टेस्ट क्रिकेट से संन्यास लिया था. डिकॉक और धोनी दोनों ने ही बॉक्सिंग-डे टेस्ट खेलने के बाद इस फॉर्मेट को अलविदा कहा है.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'डिकॉक के अचानक संन्यास से फैंस को याद आए Dhoni', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2021-12-31 09:31:04', '2021-12-31 09:31:04', '', 53, 'http://tazakhabar.test/?p=55', 0, 'revision', '', 0),
(56, 1, '2021-12-31 09:44:16', '2021-12-31 09:44:16', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://tazakhabar.test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-12-31 09:44:16', '2021-12-31 09:44:16', '', 2, 'http://tazakhabar.test/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-12-31 09:45:22', '2021-12-31 09:45:22', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://tazakhabar.test.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'गोपनीयता नीति', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2021-12-31 09:45:22', '2021-12-31 09:45:22', '', 3, 'http://tazakhabar.test/?p=57', 0, 'revision', '', 0),
(59, 1, '2021-12-31 10:05:17', '2021-12-31 10:05:17', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"news\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'News Article', 'news-article', 'publish', 'closed', 'closed', '', 'group_61ced579103ea', '', '', '2021-12-31 11:51:44', '2021-12-31 11:51:44', '', 0, 'http://tazakhabar.test/?post_type=acf-field-group&#038;p=59', 0, 'acf-field-group', '', 0),
(60, 1, '2021-12-31 10:05:17', '2021-12-31 10:05:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:20:\"Location of the news\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:17:\"News Geo Location\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Location', 'location', 'publish', 'closed', 'closed', '', 'field_61ced5a92d461', '', '', '2021-12-31 10:05:17', '2021-12-31 10:05:17', '', 59, 'http://tazakhabar.test/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 1, '2021-12-31 10:05:43', '2021-12-31 10:05:43', '<!-- wp:paragraph -->\n<p>कोरोना का संक्रमण बॉलीवुड तक पहुंच गया है. बॉलीवुड एक्टर अर्जुन कपूर और उनकी बहन अंशुला कोरोना पॉजिटिव हो गए हैं. रिपोर्ट पॉजिटिव आने के बाद दोनों क्वारनटीन हो गए हैं और उन्होंने अपने संपर्क में आए लोगों से टेस्ट कराने की अपील की है.</p>\n<!-- /wp:paragraph -->', 'अर्जुन कपूर को हुआ कोरोना', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-12-31 10:05:43', '2021-12-31 10:05:43', '', 17, 'http://tazakhabar.test/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-12-31 10:07:09', '2021-12-31 10:07:09', '<!-- wp:paragraph -->\n<p>कोरोना का संक्रमण बॉलीवुड तक पहुंच गया है. बॉलीवुड एक्टर अर्जुन कपूर और उनकी बहन अंशुला कोरोना पॉजिटिव हो गए हैं. रिपोर्ट पॉजिटिव आने के बाद दोनों क्वारनटीन हो गए हैं और उन्होंने अपने संपर्क में आए लोगों से टेस्ट कराने की अपील की है.</p>\n<!-- /wp:paragraph -->', 'अर्जुन कपूर को हुआ कोरोना', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-12-31 10:07:09', '2021-12-31 10:07:09', '', 17, 'http://tazakhabar.test/?p=62', 0, 'revision', '', 0),
(64, 1, '2021-12-31 10:08:35', '2021-12-31 10:08:35', '<!-- wp:paragraph -->\n<p>कोरोना का संक्रमण बॉलीवुड तक पहुंच गया है. बॉलीवुड एक्टर अर्जुन कपूर और उनकी बहन अंशुला कोरोना पॉजिटिव हो गए हैं. रिपोर्ट पॉजिटिव आने के बाद दोनों क्वारनटीन हो गए हैं और उन्होंने अपने संपर्क में आए लोगों से टेस्ट कराने की अपील की है.</p>\n<!-- /wp:paragraph -->', 'अर्जुन कपूर को हुआ कोरोना', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-12-31 10:08:35', '2021-12-31 10:08:35', '', 17, 'http://tazakhabar.test/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-12-31 10:10:25', '2021-12-31 10:10:25', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-text-color\">गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 10:10:25', '2021-12-31 10:10:25', '', 20, 'http://tazakhabar.test/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-12-31 11:34:32', '2021-12-31 11:34:32', '<!-- wp:paragraph -->\n<p>इंस्टैंट मैसेजिंग प्लेटफॉर्म WhatsApp को लेकर एक न्यूज तेजी से वायरल हो रही&nbsp;है. इसमें कहा जा रहा है कि WhatsApp तीसरा ब्लू टिक जारी कर रहा है. इससे अगर कोई आपके मैसेज का स्क्रीनशॉट लेता है तो आपके मैसेज पर तीन ब्लू टिक लग जाएंगे.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपको बता दें कि WhatsApp ऐसा कोई फीचर जारी नहीं कर रहा है. ये फेक न्यूज है. स्क्रीनशॉट डिटेक्शन फीचर को कई लोग चाहते हैं लेकिन ऐप का इसे लाने का फिलहाल ऐसा कोई भी प्लान नहीं है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WhatsApp के फीचर्स पर नजर रखने वाली साइट Wabetainfo ने भी इसको लेकर जानकारी दी है. Wabetainfo के अनुसार तीसरा ब्लू टिक वाला फीचर ऐप के लिए नहीं आने वाला है. इसको लेकर Wabetainfo ने एक ट्वीट भी शेयर किया है.</p>\n<!-- /wp:paragraph -->', 'WhatsApp पर स्क्रीनशॉट लेते ही लगेंगे तीन ब्लू टिक?', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-12-31 11:34:32', '2021-12-31 11:34:32', '', 49, 'http://tazakhabar.test/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-12-31 11:38:00', '2021-12-31 11:38:00', '<!-- wp:paragraph -->\n<p><strong>1.अपने बारे में लिखें</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सबसे पहले आपको ऊपर title में About us लिखना है फिर नीचे heading में About us for (your site name) और फिर हेडिंग के नीचे एक अपना फोटो भी लगा सकते हैं।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अगर आप अपना फोटो नहीं लगाना चाहते हैं तो एक about us का इमेज डिजाइन करके डाल सकते हैं फिर नीचे पैराग्राफ में आप अपने बारे में लिखे जैसे आप कहां से हैं आपका नाम क्या है एवं आपका ब्लॉग आपने कब चालू किया था।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आप अपने विजिटर को अपने जॉब स्टडी और लाइफ स्टाइल के बारे में भी जानकारी दें इससे आपके विजीटर्स को आपके ऊपर और भी ज्यादा विश्वास बनता है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>साथ ही आप का इंटरेस्ट क्या है आपने पढ़ाई कहां तक किया एवं आप ब्लॉगिंग कितने दिनों से कर रहे हैं ये भी लिखें। अब इसके नीचे आप अपने साइट के बारे में लिखना शुरू करें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2.अपने साइट के बारे में लिखें</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अब आप about us page के दूसरे हिस्से में अपने साइट के बारे में लिखना शुरू करें जैसे आपने इस ब्लॉग को कब बनाया एवं ब्लॉगिंग करने का आईडिया आपको कहां से मिला।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपका ब्लॉग का विषय क्या है यानी आप अपने ब्लॉग पर किस टॉपिक में जानकारी लिखते हैं आप कौन कौन से सर्विस अपने ब्लॉग पर देते हैं।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपके ब्लॉग पर दी हुई जानकारी को आपके विजीटर्स फ्री में ले सकते हैं या फिर उसके लिए उनको पेड करना होगा एवं आपके साइट पर आए हुए आगंतुक को क्या फायदा होगा इन सभी बातों को स्पष्ट रूप में लिखें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3.आपके ब्लॉग का भाषा क्या है</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आप अपने ब्लॉग का भाषा के बारे में अपने विजिटर को बताएं कि आप किस भाषा में ब्लॉग पोस्ट को लिखेंगे और आपको उस भाषा में कितनी जानकारी है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ब्लॉग को एक ही भाषा में लेकर चलना चाहीए उदाहरण के लिए अगर आप अपना ब्लॉग हिंदी भाषा में लिखते हैं तो आपको हिंदी की जानकारी कितनी है और ये language आपने क्यों चुना था इसके बारे में लिखें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4.आपने blogging को क्यों चुना था</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आप ब्लॉगिंग क्यों कर रहे हैं एवं आपको ब्लॉगिंग का कितने सालों का अभ्यास है इसके बारे में भी बताएं साथ ही आप अपने विजीटर्स को ब्लॉगिंग के माध्यम से क्या सिखाना चाहते हैं ये भी लिखें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपके विजिटर आपके एक्सपीरियंस को देखना चाहते हैं इसलिए आपका अभ्यास कितने दिनों का है ब्लॉगिंग के क्षेत्र में इस बारे में विस्तार से बतायें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5.लोग आपसे किस तरीके से संपर्क कर सकते हैं</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>about us page के लास्ट में आपके विजिटर आप से कैसे संपर्क करेंगें इसके बारे में भी बतायें, आप कांटेक्ट अस पेज का लिंक या फिर अपना बिजनेस ईमेल भी यहां पर डाल सकते हैं जिससे आपके विजिटर आपसे संपर्क कर सकें।</p>\n<!-- /wp:paragraph -->', 'हमारे बारे में', '', 'publish', 'closed', 'closed', '', '%e0%a4%b9%e0%a4%ae%e0%a4%be%e0%a4%b0%e0%a5%87-%e0%a4%ac%e0%a4%be%e0%a4%b0%e0%a5%87-%e0%a4%ae%e0%a5%87%e0%a4%82', '', '', '2021-12-31 11:38:00', '2021-12-31 11:38:00', '', 0, 'http://tazakhabar.test/?page_id=67', 0, 'page', '', 0),
(68, 1, '2021-12-31 11:38:00', '2021-12-31 11:38:00', '<!-- wp:paragraph -->\n<p><strong>1.अपने बारे में लिखें</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>सबसे पहले आपको ऊपर title में About us लिखना है फिर नीचे heading में About us for (your site name) और फिर हेडिंग के नीचे एक अपना फोटो भी लगा सकते हैं।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अगर आप अपना फोटो नहीं लगाना चाहते हैं तो एक about us का इमेज डिजाइन करके डाल सकते हैं फिर नीचे पैराग्राफ में आप अपने बारे में लिखे जैसे आप कहां से हैं आपका नाम क्या है एवं आपका ब्लॉग आपने कब चालू किया था।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आप अपने विजिटर को अपने जॉब स्टडी और लाइफ स्टाइल के बारे में भी जानकारी दें इससे आपके विजीटर्स को आपके ऊपर और भी ज्यादा विश्वास बनता है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>साथ ही आप का इंटरेस्ट क्या है आपने पढ़ाई कहां तक किया एवं आप ब्लॉगिंग कितने दिनों से कर रहे हैं ये भी लिखें। अब इसके नीचे आप अपने साइट के बारे में लिखना शुरू करें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>2.अपने साइट के बारे में लिखें</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अब आप about us page के दूसरे हिस्से में अपने साइट के बारे में लिखना शुरू करें जैसे आपने इस ब्लॉग को कब बनाया एवं ब्लॉगिंग करने का आईडिया आपको कहां से मिला।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपका ब्लॉग का विषय क्या है यानी आप अपने ब्लॉग पर किस टॉपिक में जानकारी लिखते हैं आप कौन कौन से सर्विस अपने ब्लॉग पर देते हैं।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपके ब्लॉग पर दी हुई जानकारी को आपके विजीटर्स फ्री में ले सकते हैं या फिर उसके लिए उनको पेड करना होगा एवं आपके साइट पर आए हुए आगंतुक को क्या फायदा होगा इन सभी बातों को स्पष्ट रूप में लिखें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>3.आपके ब्लॉग का भाषा क्या है</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आप अपने ब्लॉग का भाषा के बारे में अपने विजिटर को बताएं कि आप किस भाषा में ब्लॉग पोस्ट को लिखेंगे और आपको उस भाषा में कितनी जानकारी है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ब्लॉग को एक ही भाषा में लेकर चलना चाहीए उदाहरण के लिए अगर आप अपना ब्लॉग हिंदी भाषा में लिखते हैं तो आपको हिंदी की जानकारी कितनी है और ये language आपने क्यों चुना था इसके बारे में लिखें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>4.आपने blogging को क्यों चुना था</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आप ब्लॉगिंग क्यों कर रहे हैं एवं आपको ब्लॉगिंग का कितने सालों का अभ्यास है इसके बारे में भी बताएं साथ ही आप अपने विजीटर्स को ब्लॉगिंग के माध्यम से क्या सिखाना चाहते हैं ये भी लिखें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>आपके विजिटर आपके एक्सपीरियंस को देखना चाहते हैं इसलिए आपका अभ्यास कितने दिनों का है ब्लॉगिंग के क्षेत्र में इस बारे में विस्तार से बतायें।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>5.लोग आपसे किस तरीके से संपर्क कर सकते हैं</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>about us page के लास्ट में आपके विजिटर आप से कैसे संपर्क करेंगें इसके बारे में भी बतायें, आप कांटेक्ट अस पेज का लिंक या फिर अपना बिजनेस ईमेल भी यहां पर डाल सकते हैं जिससे आपके विजिटर आपसे संपर्क कर सकें।</p>\n<!-- /wp:paragraph -->', 'हमारे बारे में', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2021-12-31 11:38:00', '2021-12-31 11:38:00', '', 67, 'http://tazakhabar.test/?p=68', 0, 'revision', '', 0),
(69, 1, '2021-12-31 11:38:51', '2021-12-31 11:38:51', '<!-- wp:paragraph -->\n<p><strong>Contact form page</strong>&nbsp;बनाना कोई जो मुश्किल काम नही है आप बहुत आसानी से इस पेज को बना सकते है लेकिन अगर आप एक New ब्लॉगर है और&nbsp; आपने Blogger template कभी edit न किया हो तो आपको कुछ दिक़त आ सकती है फिर भी आपको टेंसन लेने की कोई जरुरत नही है में Step By step बताने जा रहा&nbsp; हूँ ।&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अगर आप यह कम मोबाइल से कर रहे हैं तो आपको मेरी पिछली पोस्ट देखना होगा ।<br><em><strong>Step :1 </strong></em><br>सबसे पहले ब्लॉगर के Layout में contact Form add करना हैं वो कैसे में बताता हूँ । </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>Blogger</strong>&nbsp;के dashboard में जाएं ।</li><li><strong>Layout</strong>&nbsp;पर click करें ।</li><li><strong>Add a Gadget</strong>&nbsp;पर click करें</li><li><strong>Contact form +&nbsp;</strong>के निशान पर click करें</li><li>अब&nbsp;<strong>seva</strong>&nbsp;कर दे ।&nbsp;</li></ol>\n<!-- /wp:list -->', 'संपर्क करें', '', 'publish', 'closed', 'closed', '', '%e0%a4%b8%e0%a4%82%e0%a4%aa%e0%a4%b0%e0%a5%8d%e0%a4%95-%e0%a4%95%e0%a4%b0%e0%a5%87%e0%a4%82', '', '', '2021-12-31 11:39:16', '2021-12-31 11:39:16', '', 0, 'http://tazakhabar.test/?page_id=69', 0, 'page', '', 0),
(70, 1, '2021-12-31 11:38:51', '2021-12-31 11:38:51', '<!-- wp:paragraph -->\n<p><strong>Contact form page</strong>&nbsp;बनाना कोई जो मुश्किल काम नही है आप बहुत आसानी से इस पेज को बना सकते है लेकिन अगर आप एक New ब्लॉगर है और&nbsp; आपने Blogger template कभी edit न किया हो तो आपको कुछ दिक़त आ सकती है फिर भी आपको टेंसन लेने की कोई जरुरत नही है में Step By step बताने जा रहा&nbsp; हूँ ।&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अगर आप यह कम मोबाइल से कर रहे हैं तो आपको मेरी पिछली पोस्ट देखना होगा ।<a href=\"https://www.hindimehelps.com/2019/10/mobile-se-online-blogger-template-edit.html?m=1\" target=\"_blank\" rel=\"noreferrer noopener\">mobile से Template edit कैसे करें&nbsp;</a><br><em><strong>Step :1&nbsp;</strong></em><br>सबसे पहले ब्लॉगर के Layout में contact Form add करना हैं वो कैसे में बताता हूँ ।&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>Blogger</strong>&nbsp;के dashboard में जाएं ।</li><li><strong>Layout</strong>&nbsp;पर click करें ।</li><li><strong>Add a Gadget</strong>&nbsp;पर click करें</li><li><strong>Contact form +&nbsp;</strong>के निशान पर click करें</li><li>अब&nbsp;<strong>seva</strong>&nbsp;कर दे ।&nbsp;</li></ol>\n<!-- /wp:list -->', 'संपर्क करें', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2021-12-31 11:38:51', '2021-12-31 11:38:51', '', 69, 'http://tazakhabar.test/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-12-31 11:39:16', '2021-12-31 11:39:16', '<!-- wp:paragraph -->\n<p><strong>Contact form page</strong>&nbsp;बनाना कोई जो मुश्किल काम नही है आप बहुत आसानी से इस पेज को बना सकते है लेकिन अगर आप एक New ब्लॉगर है और&nbsp; आपने Blogger template कभी edit न किया हो तो आपको कुछ दिक़त आ सकती है फिर भी आपको टेंसन लेने की कोई जरुरत नही है में Step By step बताने जा रहा&nbsp; हूँ ।&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>अगर आप यह कम मोबाइल से कर रहे हैं तो आपको मेरी पिछली पोस्ट देखना होगा ।<br><em><strong>Step :1 </strong></em><br>सबसे पहले ब्लॉगर के Layout में contact Form add करना हैं वो कैसे में बताता हूँ । </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li><strong>Blogger</strong>&nbsp;के dashboard में जाएं ।</li><li><strong>Layout</strong>&nbsp;पर click करें ।</li><li><strong>Add a Gadget</strong>&nbsp;पर click करें</li><li><strong>Contact form +&nbsp;</strong>के निशान पर click करें</li><li>अब&nbsp;<strong>seva</strong>&nbsp;कर दे ।&nbsp;</li></ol>\n<!-- /wp:list -->', 'संपर्क करें', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2021-12-31 11:39:16', '2021-12-31 11:39:16', '', 69, 'http://tazakhabar.test/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-12-31 11:39:49', '2021-12-31 11:39:49', '<!-- wp:heading {\"level\":3} -->\n<h3><strong>हिंदी मे विज्ञापन लेखन – Advertisement in Hindi</strong><strong></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>विज्ञापन शब्द वि + ज्ञापन दो शब्दों से मिलकर बनता है । ‘वि’ का अर्थ होता है ‘विशेष’ और ‘ज्ञापन’ का अर्थ होता है ‘सार्वजनिक सूचना’। विज्ञापन एक माध्यम है, ग्राहकों को अपनी ओर आकर्षित करके वस्तु को बेचने का।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दूसरे शब्दों में –</strong>&nbsp;किसी उत्पाद अथवा सेवा को बेचने अथवा प्रवर्तित करने के उद्देश्य से किया जाने वाला जनसंचार, विज्ञापन (Advertisement) कहलाता है। विज्ञापन विक्रय कला का एक नियंत्रित जनसंचार माध्यम है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>सरल शब्दों में</strong>&nbsp;<strong>–</strong>&nbsp;खरीदने के लिए या अन्य जानकारी देने व लेने से लेकर अपने किसी अन्य विषय की ओर लोगों का ध्यान आकर्षित करने के लिए किया जाने वाला जनसंचार विज्ञापन (Advertisement) कहलाता है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>विज्ञापन के प्रकार – Types of Advertisement in Hindi</strong><strong></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ऐसे तो विज्ञापन कई प्रकार के होते हैं, परन्तु मोटे तौर पर हम छः विज्ञापनों को यहाँ विस्तारपूवर्क जानेंगे –<br>• स्थानीय विज्ञापन<br>• राष्ट्रीय विज्ञापन<br>• वर्गीकृत विज्ञापन<br>• औद्योगिक विज्ञापन<br>• जनकल्याण संबंधी विज्ञापन<br>• सूचनाप्रद विज्ञापन</p>\n<!-- /wp:paragraph -->', 'विज्ञापन', '', 'publish', 'closed', 'closed', '', '%e0%a4%b5%e0%a4%bf%e0%a4%9c%e0%a5%8d%e0%a4%9e%e0%a4%be%e0%a4%aa%e0%a4%a8', '', '', '2021-12-31 11:39:49', '2021-12-31 11:39:49', '', 0, 'http://tazakhabar.test/?page_id=72', 0, 'page', '', 0),
(73, 1, '2021-12-31 11:39:49', '2021-12-31 11:39:49', '<!-- wp:heading {\"level\":3} -->\n<h3><strong>हिंदी मे विज्ञापन लेखन – Advertisement in Hindi</strong><strong></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>विज्ञापन शब्द वि + ज्ञापन दो शब्दों से मिलकर बनता है । ‘वि’ का अर्थ होता है ‘विशेष’ और ‘ज्ञापन’ का अर्थ होता है ‘सार्वजनिक सूचना’। विज्ञापन एक माध्यम है, ग्राहकों को अपनी ओर आकर्षित करके वस्तु को बेचने का।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>दूसरे शब्दों में –</strong>&nbsp;किसी उत्पाद अथवा सेवा को बेचने अथवा प्रवर्तित करने के उद्देश्य से किया जाने वाला जनसंचार, विज्ञापन (Advertisement) कहलाता है। विज्ञापन विक्रय कला का एक नियंत्रित जनसंचार माध्यम है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>सरल शब्दों में</strong>&nbsp;<strong>–</strong>&nbsp;खरीदने के लिए या अन्य जानकारी देने व लेने से लेकर अपने किसी अन्य विषय की ओर लोगों का ध्यान आकर्षित करने के लिए किया जाने वाला जनसंचार विज्ञापन (Advertisement) कहलाता है।</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>विज्ञापन के प्रकार – Types of Advertisement in Hindi</strong><strong></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>ऐसे तो विज्ञापन कई प्रकार के होते हैं, परन्तु मोटे तौर पर हम छः विज्ञापनों को यहाँ विस्तारपूवर्क जानेंगे –<br>• स्थानीय विज्ञापन<br>• राष्ट्रीय विज्ञापन<br>• वर्गीकृत विज्ञापन<br>• औद्योगिक विज्ञापन<br>• जनकल्याण संबंधी विज्ञापन<br>• सूचनाप्रद विज्ञापन</p>\n<!-- /wp:paragraph -->', 'विज्ञापन', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-12-31 11:39:49', '2021-12-31 11:39:49', '', 72, 'http://tazakhabar.test/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-12-31 11:40:24', '2021-12-31 11:40:24', '<!-- wp:paragraph -->\n<p>&nbsp; &nbsp;&nbsp;ऐसे विषय/बिंदुओं की सूची जिनको जनशिकायत नहीं माना जाएगा</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp;&nbsp;1. सूचना का अधिकार से सम्बंधित मामले.<br>&nbsp; &nbsp;&nbsp;2. मा० न्यायालय में विचाराधीन प्रकरण.<br>&nbsp; &nbsp;&nbsp;3. आर्थिक सहायता या नौकरी दिए जाने की मांग.<br>&nbsp; &nbsp;&nbsp;4. मेरे द्वारा दर्ज की जाने वाली शिकायत मेरे पूर्ण संज्ञान में है, असत्य नहीं है.<br>&nbsp; &nbsp;&nbsp;5. दर्ज की जाने वाली शिकायत के संबंध में.पूरी तरह में जिम्मेदार हू|</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>&nbsp;मैं सहमत हूँ कि मेरी जनशिकायत उपरोक्त वर्णित श्रेणियों में नहीं आती है|</strong></p>\n<!-- /wp:paragraph -->', 'शिकायत दर्ज करें', '', 'publish', 'closed', 'closed', '', '%e0%a4%b6%e0%a4%bf%e0%a4%95%e0%a4%be%e0%a4%af%e0%a4%a4-%e0%a4%a6%e0%a4%b0%e0%a5%8d%e0%a4%9c-%e0%a4%95%e0%a4%b0%e0%a5%87%e0%a4%82', '', '', '2021-12-31 11:40:24', '2021-12-31 11:40:24', '', 0, 'http://tazakhabar.test/?page_id=74', 0, 'page', '', 0),
(75, 1, '2021-12-31 11:40:24', '2021-12-31 11:40:24', '<!-- wp:paragraph -->\n<p>&nbsp; &nbsp;&nbsp;ऐसे विषय/बिंदुओं की सूची जिनको जनशिकायत नहीं माना जाएगा</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>&nbsp; &nbsp;&nbsp;1. सूचना का अधिकार से सम्बंधित मामले.<br>&nbsp; &nbsp;&nbsp;2. मा० न्यायालय में विचाराधीन प्रकरण.<br>&nbsp; &nbsp;&nbsp;3. आर्थिक सहायता या नौकरी दिए जाने की मांग.<br>&nbsp; &nbsp;&nbsp;4. मेरे द्वारा दर्ज की जाने वाली शिकायत मेरे पूर्ण संज्ञान में है, असत्य नहीं है.<br>&nbsp; &nbsp;&nbsp;5. दर्ज की जाने वाली शिकायत के संबंध में.पूरी तरह में जिम्मेदार हू|</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>&nbsp;मैं सहमत हूँ कि मेरी जनशिकायत उपरोक्त वर्णित श्रेणियों में नहीं आती है|</strong></p>\n<!-- /wp:paragraph -->', 'शिकायत दर्ज करें', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-12-31 11:40:24', '2021-12-31 11:40:24', '', 74, 'http://tazakhabar.test/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-12-31 11:41:32', '2021-12-31 11:41:32', '<!-- wp:list -->\n<ul><li>Terms and Conditions या शर्तों और नियमों को सेवा की शर्तों के रूप में भी जाना जाता है, ओर इसका आमतौर संक्षिप्त रूप है, TOS or ToS, ToU or T&amp;C।\'<a href=\"http://tazakhabar.test/\"></a></li></ul>\n<!-- /wp:list -->', 'नियम ओर शर्तें', '', 'publish', 'closed', 'closed', '', '%e0%a4%a8%e0%a4%bf%e0%a4%af%e0%a4%ae-%e0%a4%93%e0%a4%b0-%e0%a4%b6%e0%a4%b0%e0%a5%8d%e0%a4%a4%e0%a5%87%e0%a4%82', '', '', '2021-12-31 11:41:32', '2021-12-31 11:41:32', '', 0, 'http://tazakhabar.test/?page_id=76', 0, 'page', '', 0),
(77, 1, '2021-12-31 11:41:32', '2021-12-31 11:41:32', '<!-- wp:list -->\n<ul><li>Terms and Conditions या शर्तों और नियमों को सेवा की शर्तों के रूप में भी जाना जाता है, ओर इसका आमतौर संक्षिप्त रूप है, TOS or ToS, ToU or T&amp;C।\'<a href=\"http://tazakhabar.test/\"></a></li></ul>\n<!-- /wp:list -->', 'नियम ओर शर्तें', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2021-12-31 11:41:32', '2021-12-31 11:41:32', '', 76, 'http://tazakhabar.test/?p=77', 0, 'revision', '', 0),
(78, 1, '2021-12-31 11:42:47', '2021-12-31 11:42:47', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2021-12-31 11:42:47', '2021-12-31 11:42:47', '', 0, 'http://tazakhabar.test/?p=78', 5, 'nav_menu_item', '', 0),
(79, 1, '2021-12-31 11:42:47', '2021-12-31 11:42:47', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2021-12-31 11:42:47', '2021-12-31 11:42:47', '', 0, 'http://tazakhabar.test/?p=79', 6, 'nav_menu_item', '', 0),
(80, 1, '2021-12-31 11:42:47', '2021-12-31 11:42:47', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2021-12-31 11:42:47', '2021-12-31 11:42:47', '', 0, 'http://tazakhabar.test/?p=80', 4, 'nav_menu_item', '', 0),
(81, 1, '2021-12-31 11:42:47', '2021-12-31 11:42:47', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2021-12-31 11:42:47', '2021-12-31 11:42:47', '', 0, 'http://tazakhabar.test/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2021-12-31 11:42:47', '2021-12-31 11:42:47', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2021-12-31 11:42:47', '2021-12-31 11:42:47', '', 0, 'http://tazakhabar.test/?p=82', 2, 'nav_menu_item', '', 0),
(83, 1, '2021-12-31 11:42:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-31 11:42:30', '0000-00-00 00:00:00', '', 0, 'http://tazakhabar.test/?p=83', 1, 'nav_menu_item', '', 0),
(84, 1, '2021-12-31 11:42:47', '2021-12-31 11:42:47', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2021-12-31 11:42:47', '2021-12-31 11:42:47', '', 0, 'http://tazakhabar.test/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2021-12-31 11:48:47', '2021-12-31 11:48:47', '<!-- wp:paragraph -->\n<p>\'बॉलीवुड परफेक्शनिस्ट आमिर खान की बेटी आयरा खान पॉपुलर स्टार किड्स में से एक हैं. वो ग्लैमर वर्ल्ड से दूर रह कर भी सुर्खियों में बनी रहती हैं. आयरा अकसर ही अपनी सोशल मीडिया पोस्ट को लेकर इंटरनेट पर छाई रहती हैं. हाल ही में आयरा ने अपने डैडी आमिर खान के साथ कुछ तस्वीरें पोस्ट की थीं. ये फोटोज क्रिसमस पार्टी की थीं, जिस पर यूजर्स ने तरह-तरह के कमेंट किये. पर आयरा भी आमिर खान बेटी हैं. सब कुछ जानकर कहां चुप बैठने वाली थीं. देखिये उन्होंने कैसे एक लाइन में सबकी बात का सीधा जवाब दे दिया.</p>\n<!-- /wp:paragraph -->', 'Ira Khan से लोगों ने पूछा \'Aamir Khan तुम्हारे रिश्तेदार हैं\', परफेक्शनिस्ट की बेटी का जवाब भी जान लीजिये', '', 'publish', 'open', 'open', '', 'ira-khan-%e0%a4%b8%e0%a5%87-%e0%a4%b2%e0%a5%8b%e0%a4%97%e0%a5%8b%e0%a4%82-%e0%a4%a8%e0%a5%87-%e0%a4%aa%e0%a5%82%e0%a4%9b%e0%a4%be-aamir-khan-%e0%a4%a4%e0%a5%81%e0%a4%ae%e0%a5%8d%e0%a4%b9%e0%a4%be', '', '', '2021-12-31 11:51:19', '2021-12-31 11:51:19', '', 0, 'http://tazakhabar.test/?post_type=news&#038;p=85', 0, 'news', '', 0),
(86, 1, '2021-12-31 11:48:09', '2021-12-31 11:48:09', '', 'aamir-khan-sixteen_nine[1]', '', 'inherit', 'open', 'closed', '', 'aamir-khan-sixteen_nine1', '', '', '2021-12-31 11:48:09', '2021-12-31 11:48:09', '', 85, 'http://tazakhabar.test/wp-content/uploads/2021/12/aamir-khan-sixteen_nine1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2021-12-31 11:48:47', '2021-12-31 11:48:47', '<!-- wp:paragraph -->\n<p>\'बॉलीवुड परफेक्शनिस्ट आमिर खान की बेटी आयरा खान पॉपुलर स्टार किड्स में से एक हैं. वो ग्लैमर वर्ल्ड से दूर रह कर भी सुर्खियों में बनी रहती हैं. आयरा अकसर ही अपनी सोशल मीडिया पोस्ट को लेकर इंटरनेट पर छाई रहती हैं. हाल ही में आयरा ने अपने डैडी आमिर खान के साथ कुछ तस्वीरें पोस्ट की थीं. ये फोटोज क्रिसमस पार्टी की थीं, जिस पर यूजर्स ने तरह-तरह के कमेंट किये. पर आयरा भी आमिर खान बेटी हैं. सब कुछ जानकर कहां चुप बैठने वाली थीं. देखिये उन्होंने कैसे एक लाइन में सबकी बात का सीधा जवाब दे दिया.</p>\n<!-- /wp:paragraph -->', 'Ira Khan से लोगों ने पूछा \'Aamir Khan तुम्हारे रिश्तेदार हैं\', परफेक्शनिस्ट की बेटी का जवाब भी जान लीजिये', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2021-12-31 11:48:47', '2021-12-31 11:48:47', '', 85, 'http://tazakhabar.test/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-12-31 11:51:19', '2021-12-31 11:51:19', '<!-- wp:paragraph -->\n<p>\'बॉलीवुड परफेक्शनिस्ट आमिर खान की बेटी आयरा खान पॉपुलर स्टार किड्स में से एक हैं. वो ग्लैमर वर्ल्ड से दूर रह कर भी सुर्खियों में बनी रहती हैं. आयरा अकसर ही अपनी सोशल मीडिया पोस्ट को लेकर इंटरनेट पर छाई रहती हैं. हाल ही में आयरा ने अपने डैडी आमिर खान के साथ कुछ तस्वीरें पोस्ट की थीं. ये फोटोज क्रिसमस पार्टी की थीं, जिस पर यूजर्स ने तरह-तरह के कमेंट किये. पर आयरा भी आमिर खान बेटी हैं. सब कुछ जानकर कहां चुप बैठने वाली थीं. देखिये उन्होंने कैसे एक लाइन में सबकी बात का सीधा जवाब दे दिया.</p>\n<!-- /wp:paragraph -->', 'Ira Khan से लोगों ने पूछा \'Aamir Khan तुम्हारे रिश्तेदार हैं\', परफेक्शनिस्ट की बेटी का जवाब भी जान लीजिये', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2021-12-31 11:51:19', '2021-12-31 11:51:19', '', 85, 'http://tazakhabar.test/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-12-31 11:54:21', '2021-12-31 11:54:21', '<!-- wp:paragraph -->\n<p>सलमान खान का गुस्सा देख कर लग रहा है कि अभिजीत बिचुकले ज्यादा दिन तक बिग बॉस हाउस में नहीं टिक पायेंगे. ऐसा पहली बार नहीं है जब सलमान किसी पर इतनी बुरी तरह भड़कते दिखाई दिये हैं. बिग बॉस के हर सीजन में एक न एक प्राणी ऐसा आता है, जो अपनी हरकतों की वजह से शो से बाहर चला जाता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bigg Boss 15: बिग बॉस का ये सीजन सिर्फ टास्क रद्द कराने के लिये जाना जायेगा. इस सीजन बिग बॉस हाउस में कोई टास्क ढंग से नहीं किया गया. इस हफ्ते भी वही हुआ. घरवालों के पास टिकट टू फिनाले टास्क जीत कर फिनाले तक पहुंचने का मौका था. पर किसी ने इसे गंभीरता से नहीं लिया और हर टास्क रद्द करा दिये. घर के सदस्यों की इस हरकत से परेशान होकर शो के होस्ट सलमान खान शुक्रवार को&nbsp;सबकी क्लास लगाते दिखाई देंगे.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रोमो में अभिजीत बिचुकले को देख कर ऐसा लग रहा है कि उन्हें सलमान खान की बातों में जरा भी दिलचस्पी नहीं है. सलमान खान ने कभी किसी कंटेस्टेंट्स के ऐसे रवैये को बढ़ावा नहीं दिया. फिर भला बिचुकले को कैसे छोड़ देते. बिचुकले को जम्हाई लेते देख सलमान कहते हैं, \'नींद आ रही है बिचुकले जाओ बिस्तर पर जाके सो जाओ. ये सब मेरे साथ नहीं चलेगा. सो जाओ.\' बिचुकले बार-बार सलमान से माफी मांगते रहे, लेकिन सलमान खान ने उन्हें चिल्लाकर चुप करा दिया.</p>\n<!-- /wp:paragraph -->', 'Abhijeet Bichukale को जम्हाई लेते देख भड़के Salman Khan, बोले- जाओ बिस्तर पर जाके सो जाओ', '', 'publish', 'open', 'open', '', 'abhijeet-bichukale-%e0%a4%95%e0%a5%8b-%e0%a4%9c%e0%a4%ae%e0%a5%8d%e0%a4%b9%e0%a4%be%e0%a4%88-%e0%a4%b2%e0%a5%87%e0%a4%a4%e0%a5%87-%e0%a4%a6%e0%a5%87%e0%a4%96-%e0%a4%ad%e0%a4%a1%e0%a4%bc%e0%a4%95', '', '', '2021-12-31 12:49:22', '2021-12-31 12:49:22', '', 0, 'http://tazakhabar.test/?post_type=news&#038;p=89', 0, 'news', '', 0),
(90, 1, '2021-12-31 11:54:16', '2021-12-31 11:54:16', '', 'salman-_collage-sixteen_nine[1]', '', 'inherit', 'open', 'closed', '', 'salman-_collage-sixteen_nine1', '', '', '2021-12-31 11:54:16', '2021-12-31 11:54:16', '', 89, 'http://tazakhabar.test/wp-content/uploads/2021/12/salman-_collage-sixteen_nine1.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2021-12-31 11:54:21', '2021-12-31 11:54:21', '<!-- wp:paragraph -->\n<p>सलमान खान का गुस्सा देख कर लग रहा है कि अभिजीत बिचुकले ज्यादा दिन तक बिग बॉस हाउस में नहीं टिक पायेंगे. ऐसा पहली बार नहीं है जब सलमान किसी पर इतनी बुरी तरह भड़कते दिखाई दिये हैं. बिग बॉस के हर सीजन में एक न एक प्राणी ऐसा आता है, जो अपनी हरकतों की वजह से शो से बाहर चला जाता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bigg Boss 15: बिग बॉस का ये सीजन सिर्फ टास्क रद्द कराने के लिये जाना जायेगा. इस सीजन बिग बॉस हाउस में कोई टास्क ढंग से नहीं किया गया. इस हफ्ते भी वही हुआ. घरवालों के पास टिकट टू फिनाले टास्क जीत कर फिनाले तक पहुंचने का मौका था. पर किसी ने इसे गंभीरता से नहीं लिया और हर टास्क रद्द करा दिये. घर के सदस्यों की इस हरकत से परेशान होकर शो के होस्ट सलमान खान शुक्रवार को सबकी क्लास लगाते दिखाई देंगे. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रोमो में अभिजीत बिचुकले को देख कर ऐसा लग रहा है कि उन्हें सलमान खान की बातों में जरा भी दिलचस्पी नहीं है. सलमान खान ने कभी किसी कंटेस्टेंट्स के ऐसे रवैये को बढ़ावा नहीं दिया. फिर भला बिचुकले को कैसे छोड़ देते. बिचुकले को जम्हाई लेते देख सलमान कहते हैं, \'नींद आ रही है बिचुकले जाओ बिस्तर पर जाके सो जाओ. ये सब मेरे साथ नहीं चलेगा. सो जाओ.\' बिचुकले बार-बार सलमान से माफी मांगते रहे, लेकिन सलमान खान ने उन्हें चिल्लाकर चुप करा दिया.</p>\n<!-- /wp:paragraph -->', 'Abhijeet Bichukale को जम्हाई लेते देख भड़के Salman Khan, बोले- जाओ बिस्तर पर जाके सो जाओ', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2021-12-31 11:54:21', '2021-12-31 11:54:21', '', 89, 'http://tazakhabar.test/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-12-31 11:55:36', '2021-12-31 11:55:36', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-text-color\">गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 11:55:36', '2021-12-31 11:55:36', '', 20, 'http://tazakhabar.test/?p=92', 0, 'revision', '', 0);
INSERT INTO `tk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2021-12-31 11:55:42', '2021-12-31 11:55:42', '<!-- wp:heading {\"level\":3} -->\n<h3>1. उदयपुर, राजस्थान (Udaipur, Rajasthan)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>राजस्थान, सर्दियों के दिनों में भी अधिक ठंडा नहीं रहता और काफी खूबसूरत लगता है. आप चाहें तो राजस्थान के उदयपुर में जाकर न्यू ईयर सेलिब्रेट कर सकते हैं. वहां पर कई ऐसे पैलेस हैं, जो न्यू ईयर ईव पार्टी का आयोजन करते हैं. कोविड-19 गाइड लाइन को देखते हुए किसी भी होटल या पैलेस में पैकेज ले सकते हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>2. गुलमर्ग, जम्मू और कश्मीर (Gulmarg, Jammu and Kashmir)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>एडवेंचर का शौक रखने वाले लोगों के लिए न्यू ईयर सेलिब्रेशन के लिए गुलमर्ग से अच्छी जगह नहीं हो सकती. सर्दी के मौसम में यहां काफी सारे गेम्स का मजा ले सकते हैं और वहां के लोकल एडवेंचर का भी मजा ले सकते हैं. गुलमर्ग के इग्लू कैफे (Igloo cafe) में लंच या डिनर करना भी न भूलें.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>3. मैक्लॉडगंज, हिमाचल प्रदेश (McLeodGanj, Himachal Pradesh)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>इंडिया के अधिकतर लोग नया साल मनाने हिमाचल प्रदेश जाते हैं और वहां पर अपने परिवार के साथ शांत जगह पर क्वालिटी टाइम बिताना पसंद करते हैं. अगर आप भी नेचर लवर हैं तो हिमाचल प्रदेश के मैक्लॉडगंज जा सकते हैं. वहां पर घूमने के लिए बहुत सारे स्थान हैं और खाने के लिए अलग-अलग डिशेज भी हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>4. कोलकाता, पश्चिम बंगाल (Kolkata, West Bengal)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत में नए साल का जश्न कोलकाता में काफी अच्छे तरह से किया जाता है. कोलकाता में ट्रेडिशनल तरह से मनाया जाने वाला नया साल विश्व भर में प्रसिद्ध है. यहां पर कई आयोजन होते हैं जिनका आनंद नए साल की शाम को लिया जा सकता है. साथ ही साथ यहां खाने के लिए काफी सारी टेस्टी डिसेज भी हैं, जिनका सेवन कर सकते हैं. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>5. गुड़गांव, हरियाणा (Gurgaon, Haryana)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>भारत के सबसे डेवलप और सुंदर शहरों में से एक गुड़गांव में काफी सारे पब, बार, रेस्तरां और अन्य कई स्थान हैं, जहां पर आप फैमिली-फ्रेंड्स के साथ न्यू ईयर ईव का मजा ले सकते हैं. यहां के आसपास कुछ ऐसी जगह भी हैं, जहां जाकर आपको ऐसा लगेगा कि आप शायद इंडिया के बाहर हैं.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>6. गोवा (Goa)</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"textColor\":\"black\"} -->\n<p class=\"has-black-color has-text-color\">गोवा, नए साल में घूमने के लिए सबसे अच्छी और पसंदीदा जगहों में से एक है. अधिकतर लोग यहां फैमिली की अपेक्षा फ्रेंड्स के साथ जाना पसंद करते हैं. यहां का मौसम काफी मजेदार और रोमांटिक रहता है, जिस कारण यहां काफी लोग मौसम का लुत्फ उठाने आते हैं. अगर आप फ्रेंड्स के साथ जाना चाहते हैं, तो न्यू ईयर ईव सेलिब्रेट करने की इससे अच्छी जगह नहीं हो सकती.</p>\n<!-- /wp:paragraph -->', 'New Year 2022: भारत की इन 10 जगहों पर करें सेलिब्रेशन, खूब आएगा मजा', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2021-12-31 11:55:42', '2021-12-31 11:55:42', '', 20, 'http://tazakhabar.test/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-12-31 12:09:43', '2021-12-31 12:09:43', '<!-- wp:paragraph -->\n<p>यूपी सरकार ने एक और रेलवे स्टेशन का नाम बदल दिया है.अब&nbsp;झांसी रेलवे स्टेशन का&nbsp;नाम वीरांगना लक्ष्मीबाई रेलवे स्टेशन रख दिया गया है. उत्तर प्रदेश सरकार के नाम परिवर्तित करने के प्रस्ताव को केंद्र सरकार द्वारा मंजूरी मिलने के बाद शासनादेश जारी कर दिया गया है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>रेलवे स्टेशन का नाम बदला</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>जानकारी के लिए बता दें कि तीन महीने पहले गृह मंत्रालय को ये प्रस्ताव दिया गया था कि झांसी रेलवे स्टेशन का नाम बदला जाए. अब उसी प्रस्ताव को स्वीकार करते हुए यूपी सरकार ने झांसी रेलवे स्टेशन का नाम बदल&nbsp;वीरांगना लक्ष्मीबाई रेलवे स्टेशन कर दिया है. रेलवे स्टेशन का कोड भी अब बदल दिया जाएगा. सरकार की तरफ ये तर्क दिया जा रहा है कि स्टेशन का नाम बदलने से भी क्षेत्र में पर्यटन की संभावनाएं बढ़ सकती हैं. बुंदेलखंड इलाके में भी इसका लाभ देखने को मिल सकता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>वैसे राज्य सरकार ने कई मौकों पर ये स्पष्ट किया है कि जरूरत के हिसाब से नाम बदले&nbsp;जाएंगे. इससे पहले योगी सरकार ने अपने&nbsp;कार्यकाल में फैजाबाद को अयोध्या, इलाहाबाद को प्रयागराज,&nbsp;मुगलसराय को दीन दयाल उपाध्याय नगर बना दिया गया है. इस बार फर्क ये रहा है कि सरकार ने शहर की जगह किसी रेलवे स्टेशन का नामकरण कर दिया है. चुनावी मौसम में सरकार का ये फैसला काफी अहम माना जा रहा है.</p>\n<!-- /wp:paragraph -->', 'झांसी रेलवे स्टेशन बन गया वीरांगना लक्ष्मीबाई.... यूपी सरकार ने बदला एक और नाम', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-12-31 12:09:43', '2021-12-31 12:09:43', '', 45, 'http://tazakhabar.test/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-12-31 12:09:58', '2021-12-31 12:09:58', '<!-- wp:paragraph -->\n<p>यूपी सरकार ने एक और रेलवे स्टेशन का नाम बदल दिया है.अब&nbsp;झांसी रेलवे स्टेशन का&nbsp;नाम वीरांगना लक्ष्मीबाई रेलवे स्टेशन रख दिया गया है. उत्तर प्रदेश सरकार के नाम परिवर्तित करने के प्रस्ताव को केंद्र सरकार द्वारा मंजूरी मिलने के बाद शासनादेश जारी कर दिया गया है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>रेलवे स्टेशन का नाम बदला</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>जानकारी के लिए बता दें कि तीन महीने पहले गृह मंत्रालय को ये प्रस्ताव दिया गया था कि झांसी रेलवे स्टेशन का नाम बदला जाए. अब उसी प्रस्ताव को स्वीकार करते हुए यूपी सरकार ने झांसी रेलवे स्टेशन का नाम बदल&nbsp;वीरांगना लक्ष्मीबाई रेलवे स्टेशन कर दिया है. रेलवे स्टेशन का कोड भी अब बदल दिया जाएगा. सरकार की तरफ ये तर्क दिया जा रहा है कि स्टेशन का नाम बदलने से भी क्षेत्र में पर्यटन की संभावनाएं बढ़ सकती हैं. बुंदेलखंड इलाके में भी इसका लाभ देखने को मिल सकता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>वैसे राज्य सरकार ने कई मौकों पर ये स्पष्ट किया है कि जरूरत के हिसाब से नाम बदले&nbsp;जाएंगे. इससे पहले योगी सरकार ने अपने&nbsp;कार्यकाल में फैजाबाद को अयोध्या, इलाहाबाद को प्रयागराज,&nbsp;मुगलसराय को दीन दयाल उपाध्याय नगर बना दिया गया है. इस बार फर्क ये रहा है कि सरकार ने शहर की जगह किसी रेलवे स्टेशन का नामकरण कर दिया है. चुनावी मौसम में सरकार का ये फैसला काफी अहम माना जा रहा है.</p>\n<!-- /wp:paragraph -->', 'झांसी रेलवे स्टेशन बन गया वीरांगना लक्ष्मीबाई.... यूपी सरकार ने बदला एक और नाम', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-12-31 12:09:58', '2021-12-31 12:09:58', '', 45, 'http://tazakhabar.test/?p=95', 0, 'revision', '', 0),
(96, 1, '2021-12-31 12:44:39', '2021-12-31 12:44:39', 'खेल समाचार', '', '', 'publish', 'closed', 'closed', '', '96', '', '', '2021-12-31 12:44:39', '2021-12-31 12:44:39', '', 0, 'http://tazakhabar.test/?p=96', 3, 'nav_menu_item', '', 0),
(97, 1, '2021-12-31 12:49:06', '2021-12-31 12:49:06', '<!-- wp:paragraph -->\n<p>सलमान खान का गुस्सा देख कर लग रहा है कि अभिजीत बिचुकले ज्यादा दिन तक बिग बॉस हाउस में नहीं टिक पायेंगे. ऐसा पहली बार नहीं है जब सलमान किसी पर इतनी बुरी तरह भड़कते दिखाई दिये हैं. बिग बॉस के हर सीजन में एक न एक प्राणी ऐसा आता है, जो अपनी हरकतों की वजह से शो से बाहर चला जाता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bigg Boss 15: बिग बॉस का ये सीजन सिर्फ टास्क रद्द कराने के लिये जाना जायेगा. इस सीजन बिग बॉस हाउस में कोई टास्क ढंग से नहीं किया गया. इस हफ्ते भी वही हुआ. घरवालों के पास टिकट टू फिनाले टास्क जीत कर फिनाले तक पहुंचने का मौका था. पर किसी ने इसे गंभीरता से नहीं लिया और हर टास्क रद्द करा दिये. घर के सदस्यों की इस हरकत से परेशान होकर शो के होस्ट सलमान खान शुक्रवार को&nbsp;सबकी क्लास लगाते दिखाई देंगे.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रोमो में अभिजीत बिचुकले को देख कर ऐसा लग रहा है कि उन्हें सलमान खान की बातों में जरा भी दिलचस्पी नहीं है. सलमान खान ने कभी किसी कंटेस्टेंट्स के ऐसे रवैये को बढ़ावा नहीं दिया. फिर भला बिचुकले को कैसे छोड़ देते. बिचुकले को जम्हाई लेते देख सलमान कहते हैं, \'नींद आ रही है बिचुकले जाओ बिस्तर पर जाके सो जाओ. ये सब मेरे साथ नहीं चलेगा. सो जाओ.\' बिचुकले बार-बार सलमान से माफी मांगते रहे, लेकिन सलमान खान ने उन्हें चिल्लाकर चुप करा दिया.</p>\n<!-- /wp:paragraph -->', 'Abhijeet Bichukale को जम्हाई लेते देख भड़के Salman Khan, बोले- जाओ बिस्तर पर जाके सो जाओ', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2021-12-31 12:49:06', '2021-12-31 12:49:06', '', 89, 'http://tazakhabar.test/?p=97', 0, 'revision', '', 0),
(98, 1, '2021-12-31 12:49:07', '2021-12-31 12:49:07', '<!-- wp:paragraph -->\n<p>सलमान खान का गुस्सा देख कर लग रहा है कि अभिजीत बिचुकले ज्यादा दिन तक बिग बॉस हाउस में नहीं टिक पायेंगे. ऐसा पहली बार नहीं है जब सलमान किसी पर इतनी बुरी तरह भड़कते दिखाई दिये हैं. बिग बॉस के हर सीजन में एक न एक प्राणी ऐसा आता है, जो अपनी हरकतों की वजह से शो से बाहर चला जाता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bigg Boss 15: बिग बॉस का ये सीजन सिर्फ टास्क रद्द कराने के लिये जाना जायेगा. इस सीजन बिग बॉस हाउस में कोई टास्क ढंग से नहीं किया गया. इस हफ्ते भी वही हुआ. घरवालों के पास टिकट टू फिनाले टास्क जीत कर फिनाले तक पहुंचने का मौका था. पर किसी ने इसे गंभीरता से नहीं लिया और हर टास्क रद्द करा दिये. घर के सदस्यों की इस हरकत से परेशान होकर शो के होस्ट सलमान खान शुक्रवार को&nbsp;सबकी क्लास लगाते दिखाई देंगे.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रोमो में अभिजीत बिचुकले को देख कर ऐसा लग रहा है कि उन्हें सलमान खान की बातों में जरा भी दिलचस्पी नहीं है. सलमान खान ने कभी किसी कंटेस्टेंट्स के ऐसे रवैये को बढ़ावा नहीं दिया. फिर भला बिचुकले को कैसे छोड़ देते. बिचुकले को जम्हाई लेते देख सलमान कहते हैं, \'नींद आ रही है बिचुकले जाओ बिस्तर पर जाके सो जाओ. ये सब मेरे साथ नहीं चलेगा. सो जाओ.\' बिचुकले बार-बार सलमान से माफी मांगते रहे, लेकिन सलमान खान ने उन्हें चिल्लाकर चुप करा दिया.</p>\n<!-- /wp:paragraph -->', 'Abhijeet Bichukale को जम्हाई लेते देख भड़के Salman Khan, बोले- जाओ बिस्तर पर जाके सो जाओ', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2021-12-31 12:49:07', '2021-12-31 12:49:07', '', 89, 'http://tazakhabar.test/?p=98', 0, 'revision', '', 0),
(99, 1, '2021-12-31 12:49:22', '2021-12-31 12:49:22', '<!-- wp:paragraph -->\n<p>सलमान खान का गुस्सा देख कर लग रहा है कि अभिजीत बिचुकले ज्यादा दिन तक बिग बॉस हाउस में नहीं टिक पायेंगे. ऐसा पहली बार नहीं है जब सलमान किसी पर इतनी बुरी तरह भड़कते दिखाई दिये हैं. बिग बॉस के हर सीजन में एक न एक प्राणी ऐसा आता है, जो अपनी हरकतों की वजह से शो से बाहर चला जाता है.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bigg Boss 15: बिग बॉस का ये सीजन सिर्फ टास्क रद्द कराने के लिये जाना जायेगा. इस सीजन बिग बॉस हाउस में कोई टास्क ढंग से नहीं किया गया. इस हफ्ते भी वही हुआ. घरवालों के पास टिकट टू फिनाले टास्क जीत कर फिनाले तक पहुंचने का मौका था. पर किसी ने इसे गंभीरता से नहीं लिया और हर टास्क रद्द करा दिये. घर के सदस्यों की इस हरकत से परेशान होकर शो के होस्ट सलमान खान शुक्रवार को&nbsp;सबकी क्लास लगाते दिखाई देंगे.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>प्रोमो में अभिजीत बिचुकले को देख कर ऐसा लग रहा है कि उन्हें सलमान खान की बातों में जरा भी दिलचस्पी नहीं है. सलमान खान ने कभी किसी कंटेस्टेंट्स के ऐसे रवैये को बढ़ावा नहीं दिया. फिर भला बिचुकले को कैसे छोड़ देते. बिचुकले को जम्हाई लेते देख सलमान कहते हैं, \'नींद आ रही है बिचुकले जाओ बिस्तर पर जाके सो जाओ. ये सब मेरे साथ नहीं चलेगा. सो जाओ.\' बिचुकले बार-बार सलमान से माफी मांगते रहे, लेकिन सलमान खान ने उन्हें चिल्लाकर चुप करा दिया.</p>\n<!-- /wp:paragraph -->', 'Abhijeet Bichukale को जम्हाई लेते देख भड़के Salman Khan, बोले- जाओ बिस्तर पर जाके सो जाओ', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2021-12-31 12:49:22', '2021-12-31 12:49:22', '', 89, 'http://tazakhabar.test/?p=99', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tk_termmeta`
--

CREATE TABLE `tk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tk_terms`
--

CREATE TABLE `tk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_terms`
--

INSERT INTO `tk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'अन्य', 'other', 0),
(2, 'Header Menu', 'header-menu', 0),
(3, 'मनोरंजन', 'entertainment', 0),
(4, 'खेल', 'sports', 0),
(5, 'टेक्नॉलजी', 'technology', 0),
(6, 'राजनीती', 'politics', 0),
(7, 'साइंस', 'science', 0),
(8, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tk_term_relationships`
--

CREATE TABLE `tk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_term_relationships`
--

INSERT INTO `tk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 3, 0),
(20, 3, 0),
(32, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(45, 6, 0),
(49, 5, 0),
(53, 4, 0),
(78, 8, 0),
(79, 8, 0),
(80, 8, 0),
(81, 8, 0),
(82, 8, 0),
(84, 8, 0),
(85, 3, 0),
(89, 3, 0),
(96, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tk_term_taxonomy`
--

CREATE TABLE `tk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_term_taxonomy`
--

INSERT INTO `tk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'विविध समाचार', 0, 1),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'category', 'मनोरंजन समाचार', 0, 4),
(4, 4, 'category', 'खेल समाचार', 0, 1),
(5, 5, 'category', 'तकनीक समाचार', 0, 1),
(6, 6, 'category', 'राजनीती समाचार', 0, 1),
(7, 7, 'category', 'विज्ञान समाचार', 0, 0),
(8, 8, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tk_usermeta`
--

CREATE TABLE `tk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_usermeta`
--

INSERT INTO `tk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'tazakhabar@admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'tk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'tk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"6947106ca6da3647f6d8e92e8274f402a7a21fd55704a380075947a1e814f210\";a:4:{s:10:\"expiration\";i:1641052107;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1640879307;}s:64:\"9a4d15e7f945d0f6b1b9028962516501f611c47a20ddddf4d592914c9a2bffd4\";a:4:{s:10:\"expiration\";i:1641109665;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1640936865;}}'),
(17, 1, 'tk_user-settings', 'libraryContent=browse'),
(18, 1, 'tk_user-settings-time', '1640879304'),
(19, 1, 'tk_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'blankslate_notice_dismissed_3', 'true'),
(24, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'closedpostboxes_news', 'a:0:{}'),
(26, 1, 'metaboxhidden_news', 'a:0:{}'),
(27, 1, 'meta-box-order_news', 'a:4:{s:6:\"normal\";s:23:\"acf-group_61ced579103ea\";s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(28, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(29, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(30, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";i:4;s:18:\"dashboard_activity\";}'),
(31, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(32, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:41:\"dashboard_site_health,dashboard_right_now\";s:4:\"side\";s:21:\"dashboard_quick_press\";s:7:\"column3\";s:17:\"dashboard_primary\";s:7:\"column4\";s:18:\"dashboard_activity\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tk_users`
--

CREATE TABLE `tk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tk_users`
--

INSERT INTO `tk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'tazakhabar@admin', '$P$ByiahKibswXWzPmcJMkCDU3B8SQJdR0', 'tazakhabaradmin', 'shubhamp.developer@gmail.com', 'http://tazakhabar.test', '2021-12-30 15:48:18', '', 0, 'tazakhabar@admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tk_commentmeta`
--
ALTER TABLE `tk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tk_comments`
--
ALTER TABLE `tk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `tk_links`
--
ALTER TABLE `tk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `tk_options`
--
ALTER TABLE `tk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `tk_postmeta`
--
ALTER TABLE `tk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tk_posts`
--
ALTER TABLE `tk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `tk_termmeta`
--
ALTER TABLE `tk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tk_terms`
--
ALTER TABLE `tk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `tk_term_relationships`
--
ALTER TABLE `tk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `tk_term_taxonomy`
--
ALTER TABLE `tk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `tk_usermeta`
--
ALTER TABLE `tk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `tk_users`
--
ALTER TABLE `tk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tk_commentmeta`
--
ALTER TABLE `tk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_comments`
--
ALTER TABLE `tk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tk_links`
--
ALTER TABLE `tk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_options`
--
ALTER TABLE `tk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `tk_postmeta`
--
ALTER TABLE `tk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `tk_posts`
--
ALTER TABLE `tk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tk_termmeta`
--
ALTER TABLE `tk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tk_terms`
--
ALTER TABLE `tk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tk_term_taxonomy`
--
ALTER TABLE `tk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tk_usermeta`
--
ALTER TABLE `tk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tk_users`
--
ALTER TABLE `tk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
