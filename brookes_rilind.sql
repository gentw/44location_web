-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2020 at 09:35 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brookes_rilind`
--

-- --------------------------------------------------------

--
-- Table structure for table `bld_building`
--

CREATE TABLE `bld_building` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commision` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cheques` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bedrooms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `map_frame` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_rent` enum('sales','rent') COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `favourite` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `price` double UNSIGNED DEFAULT '0',
  `area` double UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bld_gallery`
--

CREATE TABLE `bld_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bld_relation`
--

CREATE TABLE `bld_relation` (
  `id` int(10) UNSIGNED NOT NULL,
  `building_id` int(10) UNSIGNED NOT NULL,
  `relation_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_gallery_entity`
--

CREATE TABLE `cms_gallery_entity` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_gallery_images`
--

CREATE TABLE `cms_gallery_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_languages`
--

CREATE TABLE `cms_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_languages`
--

INSERT INTO `cms_languages` (`id`, `key`, `name`, `created_at`, `updated_at`, `order`) VALUES
(1, 'en', 'English', '2019-12-07 13:45:51', '2019-12-07 13:45:51', 1),
(2, 'al', 'Albanian', '2019-12-07 13:45:51', '2019-12-07 13:45:51', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cms_page-type_categories`
--

CREATE TABLE `cms_page-type_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_page-type_categories`
--

INSERT INTO `cms_page-type_categories` (`id`, `name`, `description`, `slug`, `type_id`, `created_at`, `updated_at`) VALUES
(55, '{\"en\":\"Visa Travel\"}', 'Lorem ipsum...', 'visa-travel', 13, '2020-01-15 22:16:15', '2020-01-15 22:16:15'),
(59, '{\"en\":\"Plan B\"}', 'Lorem ipsum...', 'plan-b', 13, '2020-01-15 22:44:45', '2020-01-15 22:44:45'),
(60, '{\"en\":\"US Residence\"}', 'Lorem ipsum...', 'us-residence', 13, '2020-01-15 22:44:55', '2020-01-15 22:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, 0, '{\"en\":\"Home\"}', 'home', '2019-12-07 13:49:43', '2019-12-07 13:49:43'),
(2, NULL, 3, 12, 0, '{\"en\":\"Citizenship Program\"}', 'citizenship-program', '2019-12-07 13:50:57', '2019-12-17 13:13:13'),
(6, NULL, 13, 14, 0, '{\"en\":\"Asset Protection\"}', 'asset-protection', '2019-12-17 12:06:28', '2019-12-17 13:13:13'),
(7, NULL, 15, 16, 0, '{\"en\":\"Investment\"}', 'investment', '2019-12-17 12:25:37', '2019-12-17 13:13:13'),
(8, NULL, 17, 18, 0, '{\"en\":\"About Us\"}', 'about-us', '2019-12-17 12:25:51', '2019-12-17 13:13:13'),
(9, NULL, 19, 20, 0, '{\"en\":\"Latest News\"}', 'latest-news', '2019-12-17 12:28:28', '2019-12-17 13:13:13'),
(10, NULL, 21, 22, 0, '{\"en\":\"Contact Us\"}', 'contact-us', '2019-12-17 12:28:40', '2019-12-17 13:13:13'),
(11, 2, 10, 11, 1, '{\"en\":\"Our Guarantee\"}', 'our-guarantee', '2019-12-17 13:13:13', '2019-12-17 13:13:13'),
(12, NULL, 23, 24, 0, '{\"en\":\"Terms & Conditions\"}', 'terms&conditions', '2019-12-26 13:10:01', '2019-12-26 13:10:01'),
(13, NULL, 25, 26, 0, '{\"en\":\"Privacy & Policy\"}', 'privacy&policy', '2019-12-26 13:21:02', '2019-12-26 13:21:02'),
(14, NULL, 27, 28, 0, '{\"en\":\"Calculator\"}', 'calculator', '2020-01-15 13:06:29', '2020-01-15 13:06:29'),
(15, NULL, 29, 30, 0, '{\"en\":\"Frequently Asked\"}', 'frequently-asked', '2020-01-22 10:09:43', '2020-01-22 10:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages_collections`
--

CREATE TABLE `cms_pages_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `field_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `field_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_pages_collections`
--

INSERT INTO `cms_pages_collections` (`id`, `entity_id`, `field_id`, `field_name`, `field_type`, `value`, `created_at`, `updated_at`) VALUES
(9, 3, 1, 'title', 'text', '{\"al\":\"\",\"en\":\"Borders Are A Thing Of The Past  Enjoy Unrestricted Access  Like Never Before\"}', '2019-12-09 11:49:34', '2019-12-09 11:49:34'),
(10, 3, 1, 'title', 'text', '{\"al\":\"\",\"en\":\"Borders Are A Thing Of The Past  Enjoy Unrestricted Access  Like Never Before\"}', '2019-12-09 11:49:34', '2019-12-09 11:49:34'),
(11, 3, 2, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2019-12-09 11:49:34', '2019-12-09 11:49:34'),
(12, 3, 3, 'background', 'file', '\"121575900113.jpg\"', '2019-12-09 11:49:34', '2019-12-09 13:01:53'),
(13, 4, 5, 'title', 'text', '{\"al\":\"\",\"en\":\"Trust, Transparency & Reliability\"}', '2019-12-09 11:56:34', '2019-12-09 11:56:34'),
(14, 4, 5, 'title', 'text', '{\"al\":\"\",\"en\":\"Trust, Transparency & Reliability\"}', '2019-12-09 11:56:34', '2019-12-09 11:56:34'),
(15, 4, 6, 'paragraph', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches.<\\/p>\"}', '2019-12-09 11:56:34', '2019-12-09 11:56:34'),
(16, 4, 7, 'icon', 'file', '\"71575896194.png\"', '2019-12-09 11:56:34', '2019-12-09 11:56:34'),
(17, 5, 5, 'title', 'text', '{\"al\":\"\",\"en\":\"Globally Approved  & Recognized\"}', '2019-12-09 11:56:49', '2019-12-09 11:56:49'),
(18, 5, 5, 'title', 'text', '{\"al\":\"\",\"en\":\"Globally Approved  & Recognized\"}', '2019-12-09 11:56:49', '2019-12-09 11:56:49'),
(19, 5, 6, 'paragraph', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches.<\\/p>\"}', '2019-12-09 11:56:49', '2019-12-09 11:56:49'),
(20, 5, 7, 'icon', 'file', '\"71575896210.png\"', '2019-12-09 11:56:50', '2019-12-09 11:56:50'),
(21, 6, 5, 'title', 'text', '{\"al\":\"\",\"en\":\"Award Winning  Citizenship Experts\"}', '2019-12-09 11:57:03', '2019-12-09 11:57:03'),
(22, 6, 5, 'title', 'text', '{\"al\":\"\",\"en\":\"Award Winning  Citizenship Experts\"}', '2019-12-09 11:57:03', '2019-12-09 11:57:03'),
(23, 6, 6, 'paragraph', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches.<\\/p>\"}', '2019-12-09 11:57:03', '2019-12-09 11:57:03'),
(24, 6, 7, 'icon', 'file', '\"71575896223.png\"', '2019-12-09 11:57:03', '2019-12-09 11:57:03'),
(36, 12, 10, 'title', 'text', '{\"al\":\"\",\"en\":\"Brookes & Partners\"}', '2019-12-10 10:49:52', '2019-12-10 10:49:52'),
(37, 12, 11, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2019-12-10 10:49:52', '2020-01-16 10:12:42'),
(38, 12, 12, 'video', 'text', '{\"al\":\"\",\"en\":\"https:\\/\\/www.youtube.com\\/embed\\/9TTM5BbEbWo\"}', '2019-12-10 10:49:52', '2019-12-10 10:51:52'),
(39, 13, 13, 'name', 'text', '{\"al\":\"\",\"en\":\"Gareth Brookes\"}', '2019-12-10 11:25:54', '2019-12-10 11:25:54'),
(40, 13, 13, 'name', 'text', '{\"al\":\"\",\"en\":\"Gareth Brookes\"}', '2019-12-10 11:25:54', '2019-12-10 11:25:54'),
(41, 13, 14, 'job_position', 'text', '{\"al\":\"\",\"en\":\"CEO\"}', '2019-12-10 11:25:54', '2019-12-10 11:25:54'),
(42, 13, 14, 'job_position', 'text', '{\"al\":\"\",\"en\":\"CEO\"}', '2019-12-10 11:25:54', '2019-12-10 11:25:54'),
(43, 13, 15, 'linkedin', 'text', '{\"al\":\"\",\"en\":\"https:\\/\\/www.linkedin.com\"}', '2019-12-10 11:25:54', '2019-12-10 11:41:42'),
(44, 13, 16, 'instagram', 'text', '{\"al\":\"\",\"en\":\"https:\\/\\/www.instagram.com\\/\"}', '2019-12-10 11:25:54', '2019-12-10 11:25:54'),
(45, 13, 17, 'image', 'file', '\"171575980754.jpg\"', '2019-12-10 11:25:54', '2019-12-10 11:25:54'),
(59, 16, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"London Office\"}', '2019-12-10 13:37:43', '2019-12-10 13:37:43'),
(60, 16, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"London Office\"}', '2019-12-10 13:37:43', '2019-12-10 13:37:43'),
(61, 16, 19, 'location', 'editor', '{\"al\":\"\",\"en\":\"<p>44 Crawford Street, Marylebone,&nbsp;<br \\/>\\nLondon, W1H 1JS,<\\/p>\\n\\n<p>+44 207 723 8082<\\/p>\"}', '2019-12-10 13:37:43', '2019-12-10 13:37:43'),
(62, 17, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"Lebanon Office\"}', '2019-12-10 13:37:49', '2019-12-10 13:37:55'),
(63, 17, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"Lebanon Office\"}', '2019-12-10 13:37:49', '2019-12-10 13:37:55'),
(64, 17, 19, 'location', 'editor', '{\"al\":\"\",\"en\":\"<p>1st Floor, Hibat Al Mararad Building,&nbsp;<br \\/>\\nRiad El Solh Street, Beirut ,<\\/p>\\n\\n<p>+96171294904<\\/p>\"}', '2019-12-10 13:37:49', '2019-12-10 13:37:55'),
(65, 18, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"Caribbean Office\"}', '2019-12-10 13:38:03', '2019-12-10 13:38:03'),
(66, 18, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"Caribbean Office\"}', '2019-12-10 13:38:03', '2019-12-10 13:38:03'),
(67, 18, 19, 'location', 'editor', '{\"al\":\"\",\"en\":\"<p>Top Floor, 28 Kennedy Avenue, Roseau ,<\\/p>\\n\\n<p>+1 (767) 449 212<\\/p>\"}', '2019-12-10 13:38:03', '2019-12-10 13:38:03'),
(68, 19, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"UAE Office\"}', '2019-12-10 13:38:11', '2019-12-10 13:38:11'),
(69, 19, 18, 'office', 'text', '{\"al\":\"\",\"en\":\"UAE Office\"}', '2019-12-10 13:38:11', '2019-12-10 13:38:11'),
(70, 19, 19, 'location', 'editor', '{\"al\":\"\",\"en\":\"<p>44th Floor, Vision Tower, Business&nbsp;<br \\/>\\nBay PO BOX 454487,<\\/p>\\n\\n<p>+971 4556 7335<\\/p>\"}', '2019-12-10 13:38:11', '2019-12-10 13:38:11'),
(71, 20, 20, 'title', 'text', '{\"al\":\"\",\"en\":\"Leverage Agile Frameworks To Provide A Robust Synopsis For High Level Overviews\"}', '2019-12-17 12:56:43', '2019-12-17 12:56:43'),
(72, 20, 21, 'background', 'file', '\"211576591003.jpg\"', '2019-12-17 12:56:43', '2019-12-17 12:56:43'),
(73, 21, 22, 'title', 'text', '{\"al\":\"\",\"en\":\"Borders Are A Thing Of The Past  Enjoy Unrestricted Access  Like Never Before\"}', '2019-12-19 13:53:38', '2019-12-19 13:53:38'),
(74, 21, 23, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2019-12-19 13:53:38', '2019-12-19 13:53:38'),
(75, 21, 24, 'background', 'file', '\"751576767848.jpg\"', '2019-12-19 13:53:38', '2019-12-19 14:04:08'),
(76, 22, 25, 'title', 'text', '{\"al\":\"\",\"en\":\"Words from CEO\"}', '2019-12-19 14:13:10', '2019-12-19 14:13:10'),
(77, 22, 26, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>&ldquo;Second citizenship is possibly one of the most important decisions you are likely to make so it is essential you make the right choice in choosing a partner firm to help you and you family secure your passports correctly. There are many factors that you should consider, other than just the cost of legal fees you pay or the country that you choose to go with.&rdquo;<\\/p>\\n\\n<h5>Gareth Brookes - CEO<\\/h5>\"}', '2019-12-19 14:13:10', '2019-12-19 14:14:12'),
(78, 22, 27, 'image', 'file', '\"271576768390.jpg\"', '2019-12-19 14:13:10', '2019-12-19 14:13:10'),
(79, 23, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Aftercare\"}', '2019-12-19 14:24:28', '2019-12-19 14:24:28'),
(80, 23, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Aftercare\"}', '2019-12-19 14:24:28', '2019-12-19 14:24:28'),
(81, 23, 29, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Get in touch with us and we&rsquo;ll figure out something that works for everyone<\\/p>\"}', '2019-12-19 14:24:28', '2019-12-19 14:24:28'),
(82, 23, 30, 'image', 'file', '\"301576769068.svg\"', '2019-12-19 14:24:28', '2019-12-19 14:24:28'),
(83, 24, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Ease of Service\"}', '2019-12-19 14:24:43', '2019-12-19 14:24:43'),
(84, 24, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Ease of Service\"}', '2019-12-19 14:24:43', '2019-12-19 14:24:43'),
(85, 24, 29, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Get in touch with us and we&rsquo;ll figure out something that works for everyone<\\/p>\"}', '2019-12-19 14:24:43', '2019-12-19 14:24:43'),
(86, 24, 30, 'image', 'file', '\"301576769083.svg\"', '2019-12-19 14:24:43', '2019-12-19 14:24:43'),
(87, 25, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"24 \\/ 7 Availability\"}', '2019-12-19 14:24:58', '2019-12-19 14:24:58'),
(88, 25, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"24 \\/ 7 Availability\"}', '2019-12-19 14:24:58', '2019-12-19 14:24:58'),
(89, 25, 29, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Get in touch with us and we&rsquo;ll figure out something that works for everyone<\\/p>\"}', '2019-12-19 14:24:58', '2019-12-19 14:24:58'),
(90, 25, 30, 'image', 'file', '\"301576769098.svg\"', '2019-12-19 14:24:58', '2019-12-19 14:24:58'),
(91, 26, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Speed of Completion\"}', '2019-12-19 14:25:10', '2019-12-19 14:25:10'),
(92, 26, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Speed of Completion\"}', '2019-12-19 14:25:10', '2019-12-19 14:25:10'),
(93, 26, 29, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Get in touch with us and we&rsquo;ll figure out something that works for everyone<\\/p>\"}', '2019-12-19 14:25:10', '2019-12-19 14:25:10'),
(94, 26, 30, 'image', 'file', '\"301576769110.svg\"', '2019-12-19 14:25:10', '2019-12-19 14:25:10'),
(95, 27, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Money Back Guarantee\"}', '2019-12-19 14:25:23', '2019-12-19 14:25:23'),
(96, 27, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Money Back Guarantee\"}', '2019-12-19 14:25:23', '2019-12-19 14:25:23'),
(97, 27, 29, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Get in touch with us and we&rsquo;ll figure out something that works for everyone<\\/p>\"}', '2019-12-19 14:25:23', '2019-12-19 14:25:23'),
(98, 27, 30, 'image', 'file', '\"301576769123.svg\"', '2019-12-19 14:25:23', '2019-12-19 14:25:23'),
(99, 28, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Price Guarantee\"}', '2019-12-19 14:25:38', '2019-12-19 14:25:38'),
(100, 28, 28, 'title', 'text', '{\"al\":\"\",\"en\":\"Price Guarantee\"}', '2019-12-19 14:25:38', '2019-12-19 14:25:38'),
(101, 28, 29, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Get in touch with us and we&rsquo;ll figure out something that works for everyone<\\/p>\"}', '2019-12-19 14:25:38', '2019-12-19 14:25:38'),
(102, 28, 30, 'image', 'file', '\"301576769138.svg\"', '2019-12-19 14:25:38', '2019-12-19 14:25:38'),
(103, 29, 31, 'title', 'text', '{\"al\":\"\",\"en\":\"Leverage Agile Frameworks To Provide A Robust Synopsis For High Level Overviews\"}', '2019-12-19 15:17:30', '2020-01-13 10:10:34'),
(104, 29, 32, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2019-12-19 15:17:30', '2020-01-13 10:10:34'),
(105, 29, 33, 'background', 'file', '\"331576772251.jpg\"', '2019-12-19 15:17:31', '2019-12-19 15:17:31'),
(106, 30, 54, 'title', 'text', '{\"al\":\"\",\"en\":\"Leverage Agile Frameworks To Provide A Robust Synopsis For High Level Overviews\"}', '2019-12-26 11:59:50', '2019-12-26 11:59:50'),
(107, 30, 55, 'description', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2019-12-26 11:59:50', '2019-12-26 11:59:50'),
(108, 30, 56, 'background', 'file', '\"561577365190.jpg\"', '2019-12-26 11:59:50', '2019-12-26 11:59:50'),
(109, 31, 57, 'title', 'text', '{\"al\":\"\",\"en\":\"Leverage agile frameworks to provide a  robust synopsis\"}', '2019-12-26 12:03:50', '2019-12-26 12:03:50'),
(110, 31, 57, 'title', 'text', '{\"al\":\"\",\"en\":\"Leverage agile frameworks to provide a  robust synopsis\"}', '2019-12-26 12:03:50', '2019-12-26 12:03:50'),
(111, 31, 58, 'description', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2019-12-26 12:03:50', '2019-12-26 12:03:50'),
(112, 31, 59, 'date', 'date', '\"Sat Dec 28 2019 14:03:00 GMT+0100 (Central European Standard Time)\"', '2019-12-26 12:03:50', '2019-12-26 12:03:50'),
(113, 31, 60, 'image', 'file', '\"601577365430.jpg\"', '2019-12-26 12:03:50', '2019-12-26 12:03:50'),
(114, 32, 61, 'description', 'editor', '{\"al\":\"\",\"en\":\"<h3>Terms &amp; Conditions<\\/h3>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<h3>Terms &amp; Conditions<\\/h3>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p><br \\/>\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br \\/>\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\"}', '2019-12-26 13:11:25', '2019-12-26 13:15:40'),
(115, 33, 62, 'description', 'editor', '{\"al\":\"\",\"en\":\"<h2>Privacy &amp; Policy<\\/h2>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br \\/>\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\\n\\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br \\/>\\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\"}', '2019-12-26 13:22:19', '2019-12-26 13:22:19'),
(197, 42, 34, 'state', 'text', '{\"al\":\"\",\"en\":\"Domenica\"}', '2020-01-13 11:13:46', '2020-01-16 08:59:49'),
(198, 42, 34, 'state', 'text', '{\"al\":\"\",\"en\":\"Domenica\"}', '2020-01-13 11:13:46', '2020-01-16 08:59:49'),
(199, 42, 35, 'title', 'text', '{\"al\":\"\",\"en\":\"Leverage Agile Frameworks To Provide A Robust Synopsis\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(200, 42, 36, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(201, 42, 37, 'background', 'file', '\"2011579003623.png\"', '2020-01-13 11:13:46', '2020-01-14 11:07:03'),
(202, 42, 38, 'nd_image', 'file', '\"2021578998768.png\"', '2020-01-13 11:13:46', '2020-01-14 09:46:08'),
(203, 42, 39, 'located_in', 'text', '{\"al\":\"\",\"en\":\"The Carribean\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(204, 42, 40, 'time_load', 'text', '{\"al\":\"\",\"en\":\"4 Months\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(205, 42, 41, 'population', 'text', '{\"al\":\"\",\"en\":\"73,500\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(206, 42, 42, 'total_area', 'text', '{\"al\":\"\",\"en\":\"751 sq.km\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(207, 42, 43, 'currency', 'text', '{\"al\":\"\",\"en\":\"EC$\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(208, 42, 44, 'gdp', 'text', '{\"al\":\"\",\"en\":\"525.7 Million US$\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(209, 42, 45, 'visa_travel_to', 'text', '{\"al\":\"\",\"en\":\"119 Countries\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(210, 42, 46, 'passport_strength', 'text', '{\"al\":\"\",\"en\":\"37th\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(211, 42, 47, 'about_program', 'editor', '{\"al\":\"\",\"en\":\"<p>Dominica, officially the Commonwealth of Dominica, is a sovereign island country. It is part of the Windward Islands in the Lesser Antilles archipelago of the Caribbean Sea. Dominica has been nicknamed the &quot;Nature Isle of the Caribbean&quot; for its unspoiled natural beauty. The island has lush mountainous rainforests, and is the home of many rare plants, animals, and bird species. It is the youngest island in the Lesser Antilles, still being formed by geothermal-volcanic activity, as evidenced by the world&#39;s second-largest hot spring, Boiling Lake.<\\/p>\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(212, 42, 48, 'benefits', 'editor', '{\"al\":\"\",\"en\":\"<h1>Step 1<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 2<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 3<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 4<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\"}', '2020-01-13 11:13:46', '2020-01-15 11:01:21'),
(213, 42, 49, 'disavantages', 'editor', '{\"al\":\"\",\"en\":\"<h1>Step 1<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 2<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 3<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 4<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\"}', '2020-01-13 11:13:46', '2020-01-15 11:01:21'),
(214, 42, 50, 'legality', 'editor', '{\"al\":\"\",\"en\":\"<h1>Step 1<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 2<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 3<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 4<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\"}', '2020-01-13 11:13:46', '2020-01-15 11:01:21'),
(215, 42, 51, 'price', 'editor', '{\"al\":\"\",\"en\":\"<h1>Step 1<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 2<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 3<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 4<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\"}', '2020-01-13 11:13:46', '2020-01-15 11:01:21'),
(216, 42, 52, 'process', 'editor', '{\"al\":\"\",\"en\":\"<h1>Step 1<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 2<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 3<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 4<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\"}', '2020-01-13 11:13:46', '2020-01-15 11:01:21'),
(217, 42, 63, 'about_program_description', 'editor', '{\"al\":\"\",\"en\":\"<h4>Dominica, officially the Commonwealth of Dominica, is a sovereign island country. It is part of the Windward Islands in the Lesser Antilles archipelago of the Caribbean Sea. Dominica has been nicknamed the &quot;Nature Isle of the Caribbean&quot; for its unspoiled natural beauty. The island has lush mountainous rainforests, and is the home of many rare plants, animals, and bird species. It is the youngest island in the Lesser Antilles, still being formed by geothermal-volcanic activity, as evidenced by the world&#39;s second-largest hot spring, Boiling Lake.<\\/h4>\"}', '2020-01-13 11:13:46', '2020-01-13 11:13:46'),
(218, 42, 64, 'donation', 'text', '{\"al\":\"\",\"en\":\"124\"}', '2020-01-13 11:13:46', '2020-01-14 11:09:42'),
(219, 42, 65, 'investment', 'text', '{\"al\":\"\",\"en\":\"123124\"}', '2020-01-13 11:13:46', '2020-01-14 11:09:42'),
(220, 42, 66, 'spouse', 'text', '{\"al\":\"\",\"en\":\"14124\"}', '2020-01-13 11:13:46', '2020-01-14 11:09:42'),
(221, 42, 67, 'between_12_17', 'text', '{\"al\":\"\",\"en\":\"1643\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(222, 42, 68, 'between_18_25', 'text', '{\"al\":\"\",\"en\":\"546\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(223, 42, 69, 'parents_55', 'text', '{\"al\":\"\",\"en\":\"3456\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(224, 42, 70, 'under_4', 'text', '{\"al\":\"\",\"en\":\"325234\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(225, 42, 71, 'spouse_investment', 'text', '{\"al\":\"\",\"en\":\"12341234\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(226, 42, 72, 'under_4_investment', 'text', '{\"al\":\"\",\"en\":\"12351234\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(227, 42, 73, 'between_12_17_investment', 'text', '{\"al\":\"\",\"en\":\"21423\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(228, 42, 74, 'between_18_25_investment', 'text', '{\"al\":\"\",\"en\":\"123415\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(229, 42, 75, 'parent_55_investment', 'text', '{\"al\":\"\",\"en\":\"1234234\"}', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(230, 42, 77, 'footer_image', 'file', '\"2301579003800.jpg\"', '2020-01-13 11:13:46', '2020-01-14 11:10:00'),
(231, 43, 78, 'title', 'text', '{\"al\":\"\",\"en\":\"Why Consider 2nd Citizenship\"}', '2020-01-13 14:40:39', '2020-01-13 14:40:39'),
(232, 43, 79, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2020-01-13 14:40:39', '2020-01-13 14:40:39'),
(233, 43, 80, 'image', 'file', '\"2331578930118.png\"', '2020-01-13 14:41:34', '2020-01-13 14:41:58'),
(234, 44, 81, 'title', 'text', '{\"al\":\"\",\"en\":\"Most Popular Program?\"}', '2020-01-14 07:48:26', '2020-01-14 07:49:26'),
(235, 44, 81, 'title', 'text', '{\"al\":\"\",\"en\":\"Most Popular Program?\"}', '2020-01-14 07:48:26', '2020-01-14 07:49:26'),
(236, 44, 82, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\"}', '2020-01-14 07:48:26', '2020-01-14 07:48:26'),
(237, 45, 81, 'title', 'text', '{\"al\":\"\",\"en\":\"Why Consider 2nd Citizenship?\"}', '2020-01-14 07:48:37', '2020-01-14 07:48:37'),
(238, 45, 81, 'title', 'text', '{\"al\":\"\",\"en\":\"Why Consider 2nd Citizenship?\"}', '2020-01-14 07:48:37', '2020-01-14 07:48:37'),
(239, 45, 82, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<\\/p>\"}', '2020-01-14 07:48:37', '2020-01-14 07:48:37'),
(240, 42, 83, 'visa_free_travel_to', 'editor', '{\"al\":\"\",\"en\":\"<h1>Step 1<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 2<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 3<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\\n\\n<h1>Step 4<\\/h1>\\n\\n<p>Brookes and Partners will pre-screen the applicant&rsquo;s passport copy for Government approval before requirement of investment to obtain government authorization before investing. (Week 1)<\\/p>\"}', '2020-01-15 09:42:47', '2020-01-15 11:01:21'),
(242, 47, 87, 'title', 'text', '{\"al\":\"\",\"en\":\"Get an Estimate\"}', '2020-01-15 13:19:53', '2020-01-15 13:19:53'),
(243, 47, 88, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Get a good indicator and estimation of what each program will cost you and your family. Enter your family details or leave blank if a single applicant and get an immediate idea of the investment required.<\\/p>\"}', '2020-01-15 13:19:53', '2020-01-15 13:19:53'),
(244, 47, 89, 'background', 'file', '\"891579097993.png\"', '2020-01-15 13:19:54', '2020-01-15 13:19:54'),
(260, 51, 34, 'state', 'text', '{\"al\":\"\",\"en\":\"Dubai\"}', '2020-01-16 12:56:49', '2020-01-17 17:36:55'),
(261, 51, 34, 'state', 'text', '{\"al\":\"\",\"en\":\"Dubai\"}', '2020-01-16 12:56:49', '2020-01-17 17:36:55'),
(262, 51, 35, 'title', 'text', '{\"al\":\"\",\"en\":\"Leverage Agile Frameworks To Provide A Robust Synopsis\"}', '2020-01-16 12:56:49', '2020-01-16 12:56:49'),
(263, 51, 36, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2020-01-16 12:56:49', '2020-01-16 12:56:49'),
(264, 51, 37, 'background', 'file', '\"371579183009.jpg\"', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(265, 51, 38, 'nd_image', 'file', '\"381579183010.jpg\"', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(266, 51, 39, 'located_in', 'text', '{\"al\":\"\",\"en\":\"Gjakove\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(267, 51, 40, 'time_load', 'text', '{\"al\":\"\",\"en\":\"123\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(268, 51, 41, 'population', 'text', '{\"al\":\"\",\"en\":\"qkljd\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(269, 51, 42, 'total_area', 'text', '{\"al\":\"\",\"en\":\"askldj\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(270, 51, 43, 'currency', 'text', '{\"al\":\"\",\"en\":\"klskjfasidj\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(271, 51, 44, 'gdp', 'text', '{\"al\":\"\",\"en\":\"kldasklmdkl\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(272, 51, 45, 'visa_travel_to', 'text', '{\"al\":\"\",\"en\":\"dajasdlkm\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(273, 51, 46, 'passport_strength', 'text', '{\"al\":\"\",\"en\":\"asidukl\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(274, 51, 47, 'about_program', 'editor', '{\"al\":\"\",\"en\":\"<p>safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(275, 51, 48, 'benefits', 'editor', '{\"al\":\"\",\"en\":\"<p>safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(276, 51, 49, 'disavantages', 'editor', '{\"al\":\"\",\"en\":\"<p>safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(277, 51, 50, 'legality', 'editor', '{\"al\":\"\",\"en\":\"<p>safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(278, 51, 51, 'price', 'editor', '{\"al\":\"\",\"en\":\"<p>safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(279, 51, 52, 'process', 'editor', '{\"al\":\"\",\"en\":\"<p>safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(280, 51, 63, 'about_program_description', 'editor', '{\"al\":\"\",\"en\":\"<p>safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(281, 51, 64, 'donation', 'text', '{\"al\":\"\",\"en\":\"1413\"}', '2020-01-16 12:56:50', '2020-01-17 17:30:04'),
(282, 51, 65, 'investment', 'text', '{\"al\":\"\",\"en\":\"91991999\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(283, 51, 66, 'spouse', 'text', '{\"al\":\"\",\"en\":\"1231244441\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(284, 51, 67, 'between_12_17', 'text', '{\"al\":\"\",\"en\":\"12315515\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(285, 51, 68, 'between_18_25', 'text', '{\"al\":\"\",\"en\":\"1233\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(286, 51, 69, 'parents_55', 'text', '{\"al\":\"\",\"en\":\"223\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(287, 51, 70, 'under_4', 'text', '{\"al\":\"\",\"en\":\"123\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(288, 51, 71, 'spouse_investment', 'text', '{\"al\":\"\",\"en\":\"124125\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(289, 51, 72, 'under_4_investment', 'text', '{\"al\":\"\",\"en\":\"1231\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(290, 51, 73, 'between_12_17_investment', 'text', '{\"al\":\"\",\"en\":\"4123\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(291, 51, 74, 'between_18_25_investment', 'text', '{\"al\":\"\",\"en\":\"124123\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(292, 51, 75, 'parent_55_investment', 'text', '{\"al\":\"\",\"en\":\"14213\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(293, 51, 77, 'footer_image', 'file', '\"771579183010.png\"', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(294, 51, 83, 'visa_free_travel_to', 'editor', '{\"al\":\"\",\"en\":\"<p>154safasfd test&nbsp;<\\/p>\"}', '2020-01-16 12:56:50', '2020-01-16 12:56:50'),
(307, 55, 1, 'title', 'text', '{\"al\":\"\",\"en\":\"Borders Are A Thing Of The Past  Enjoy Unrestricted Access  Like Never Before Sacha\"}', '2020-01-16 13:53:34', '2020-01-21 07:13:48'),
(308, 55, 1, 'title', 'text', '{\"al\":\"\",\"en\":\"Borders Are A Thing Of The Past  Enjoy Unrestricted Access  Like Never Before Sacha\"}', '2020-01-16 13:53:34', '2020-01-21 07:13:48'),
(309, 55, 2, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2020-01-16 13:53:34', '2020-01-16 13:53:34'),
(310, 55, 3, 'background', 'file', '\"31579186414.jpg\"', '2020-01-16 13:53:34', '2020-01-16 13:53:34'),
(311, 56, 90, 'title', 'text', '{\"al\":\"\",\"en\":\"Emirates Graphic\"}', '2020-01-21 07:20:49', '2020-01-21 07:20:49'),
(312, 57, 91, 'title', 'text', '{\"al\":\"\",\"en\":\"Trust us to deliver  when it matters most.\"}', '2020-01-29 09:00:46', '2020-01-29 09:00:46'),
(313, 57, 92, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage Agile Frameworks To Provide A Robust Synopsis For High Level Overviews<\\/p>\"}', '2020-01-29 09:00:46', '2020-01-29 09:00:46'),
(314, 57, 94, 'background', 'file', '\"3141580292363.png\"', '2020-01-29 09:05:54', '2020-01-29 09:06:03'),
(315, 58, 95, 'title', 'text', '{\"al\":\"\",\"en\":\"What You Can Do\"}', '2020-01-29 09:13:42', '2020-01-29 09:13:42'),
(316, 58, 96, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\\n\\n<h3>Step 1<\\/h3>\\n\\n<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\\n\\n<h3>Step 2<\\/h3>\\n\\n<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2020-01-29 09:13:42', '2020-01-29 09:19:31'),
(317, 58, 97, 'image', 'file', '\"971580292822.png\"', '2020-01-29 09:13:42', '2020-01-29 09:13:42'),
(318, 59, 98, 'title', 'text', '{\"al\":\"\",\"en\":\"What You Can\'t Do\"}', '2020-01-29 09:14:25', '2020-01-29 09:14:25'),
(319, 59, 99, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\\n\\n<h3>Step 1<\\/h3>\\n\\n<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\\n\\n<h3>Step 1<\\/h3>\\n\\n<p>Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster. Leverage agile frameworks to provide a robust synopsis for high level overviews.<\\/p>\"}', '2020-01-29 09:14:25', '2020-01-29 09:19:39'),
(320, 59, 100, 'image', 'file', '\"1001580292865.png\"', '2020-01-29 09:14:25', '2020-01-29 09:14:25'),
(321, 60, 101, 'title', 'text', '{\"al\":\"\",\"en\":\"Caribbean Accredited\"}', '2020-01-29 09:24:19', '2020-01-29 09:24:19'),
(322, 60, 102, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Brookes &amp; Partners are authorized to promote and handle clients applications in the Caribbean thanks to our affiliation with our local lawyers in each respective island. Please ask for us to show our Certificates and accreditations when speaking to our consultants.<\\/p>\"}', '2020-01-29 09:24:19', '2020-01-29 09:24:19'),
(323, 60, 103, 'image', 'file', '\"1031580293459.png\"', '2020-01-29 09:24:19', '2020-01-29 09:24:19'),
(324, 61, 104, 'title', 'text', '{\"al\":\"\",\"en\":\"Eurpoean Accredited\"}', '2020-01-29 09:24:38', '2020-01-29 09:24:38'),
(325, 61, 105, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Brookes &amp; Partners has worked hard over the years to serve clients in Europe and has some of the strongest lawyers in each European jurisdiction, with partner offices and assistance on the ground to serve our clients personally<\\/p>\"}', '2020-01-29 09:24:38', '2020-01-29 09:24:38'),
(326, 61, 106, 'image', 'file', '\"1061580293478.png\"', '2020-01-29 09:24:38', '2020-01-29 09:24:38'),
(327, 62, 107, 'title', 'text', '{\"al\":\"\",\"en\":\"Immigration Licensed\"}', '2020-01-29 09:24:56', '2020-01-29 09:24:56'),
(328, 62, 108, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>Through our team, we have licensed qualified consultants to help choose relevant investments and complete the complex Government documentation required for our immigration programs.<\\/p>\"}', '2020-01-29 09:24:56', '2020-01-29 09:24:56'),
(329, 62, 109, 'image', 'file', '\"1091580293496.png\"', '2020-01-29 09:24:56', '2020-01-29 09:24:56'),
(330, 63, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"We cheque guarantee  clients applications\"}', '2020-01-29 10:42:28', '2020-01-29 10:42:28'),
(331, 63, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"We cheque guarantee  clients applications\"}', '2020-01-29 10:42:28', '2020-01-29 10:42:28'),
(332, 63, 111, 'icon', 'file', '\"1111580298148.svg\"', '2020-01-29 10:42:28', '2020-01-29 10:42:28'),
(333, 64, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Globally Approved  & Recognized\"}', '2020-01-29 10:42:41', '2020-01-29 10:42:41'),
(334, 64, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Globally Approved  & Recognized\"}', '2020-01-29 10:42:41', '2020-01-29 10:42:41'),
(335, 64, 111, 'icon', 'file', '\"1111580298161.svg\"', '2020-01-29 10:42:41', '2020-01-29 10:42:41'),
(336, 65, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"British  run company\"}', '2020-01-29 10:42:54', '2020-01-29 10:42:54'),
(337, 65, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"British  run company\"}', '2020-01-29 10:42:54', '2020-01-29 10:42:54'),
(338, 65, 111, 'icon', 'file', '\"1111580298174.svg\"', '2020-01-29 10:42:54', '2020-01-29 10:42:54'),
(339, 66, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Your file willremain confidential & secure\"}', '2020-01-29 10:43:10', '2020-01-29 10:43:10'),
(340, 66, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Your file willremain confidential & secure\"}', '2020-01-29 10:43:10', '2020-01-29 10:43:10'),
(341, 66, 111, 'icon', 'file', '\"1111580298190.svg\"', '2020-01-29 10:43:10', '2020-01-29 10:43:10'),
(342, 67, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Longstanding  global reputation\"}', '2020-01-29 10:43:25', '2020-01-29 10:43:25'),
(343, 67, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Longstanding  global reputation\"}', '2020-01-29 10:43:25', '2020-01-29 10:43:25'),
(344, 67, 111, 'icon', 'file', '\"1111580298205.svg\"', '2020-01-29 10:43:25', '2020-01-29 10:43:25'),
(345, 68, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"The most competitive  on legal fees\"}', '2020-01-29 10:43:36', '2020-01-29 10:43:36'),
(346, 68, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"The most competitive  on legal fees\"}', '2020-01-29 10:43:36', '2020-01-29 10:43:36'),
(347, 68, 111, 'icon', 'file', '\"1111580298216.svg\"', '2020-01-29 10:43:36', '2020-01-29 10:43:36'),
(348, 69, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"We will do the  work for you\"}', '2020-01-29 10:43:54', '2020-01-29 10:43:54'),
(349, 69, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"We will do the  work for you\"}', '2020-01-29 10:43:54', '2020-01-29 10:43:54'),
(350, 69, 111, 'icon', 'file', '\"1111580298234.svg\"', '2020-01-29 10:43:54', '2020-01-29 10:43:54'),
(351, 70, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Legally  authorized\"}', '2020-01-29 10:44:17', '2020-01-29 10:44:17'),
(352, 70, 110, 'title', 'text', '{\"al\":\"\",\"en\":\"Legally  authorized\"}', '2020-01-29 10:44:17', '2020-01-29 10:44:17'),
(353, 70, 111, 'icon', 'file', '\"1111580298257.svg\"', '2020-01-29 10:44:17', '2020-01-29 10:44:17'),
(354, 42, 112, 'pagetype_category_id', 'select', '\"52\"', NULL, NULL),
(355, 51, 112, 'pagetype_category_id', 'select', '\"52\"', NULL, NULL),
(356, 71, 34, 'state', 'text', '{\"al\":\"\",\"en\":\"Kosovo\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(357, 71, 34, 'state', 'text', '{\"al\":\"\",\"en\":\"Kosovo\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(358, 71, 35, 'title', 'text', '{\"al\":\"\",\"en\":\"kosovo\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(359, 71, 36, 'description', 'editor', '{\"al\":\"\",\"en\":\"<p>blla blla<\\/p>\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(360, 71, 37, 'background', 'file', '\"371580765337.jpg\"', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(361, 71, 38, 'nd_image', 'file', NULL, '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(362, 71, 39, 'located_in', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(363, 71, 40, 'time_load', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(364, 71, 41, 'population', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(365, 71, 42, 'total_area', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(366, 71, 43, 'currency', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(367, 71, 44, 'gdp', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(368, 71, 45, 'visa_travel_to', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(369, 71, 46, 'passport_strength', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(370, 71, 47, 'about_program', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(371, 71, 48, 'benefits', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(372, 71, 49, 'disavantages', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(373, 71, 50, 'legality', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57');
INSERT INTO `cms_pages_collections` (`id`, `entity_id`, `field_id`, `field_name`, `field_type`, `value`, `created_at`, `updated_at`) VALUES
(374, 71, 51, 'price', 'text', '{\"al\":\"\",\"en\":\"100.000\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(375, 71, 52, 'process', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(376, 71, 63, 'about_program_description', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(377, 71, 64, 'donation', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(378, 71, 65, 'investment', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(379, 71, 66, 'spouse', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(380, 71, 67, 'between_12_17', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(381, 71, 68, 'between_18_25', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(382, 71, 69, 'parents_55', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(383, 71, 70, 'under_4', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(384, 71, 71, 'spouse_investment', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(385, 71, 72, 'under_4_investment', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(386, 71, 73, 'between_12_17_investment', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(387, 71, 74, 'between_18_25_investment', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(388, 71, 75, 'parent_55_investment', 'text', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(389, 71, 77, 'footer_image', 'file', NULL, '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(390, 71, 83, 'visa_free_travel_to', 'editor', '{\"al\":\"\",\"en\":\"\"}', '2020-02-03 21:28:57', '2020-02-03 21:28:57'),
(391, 71, 112, 'pagetype_category_id', 'select', '\"55\"', '2020-02-03 21:28:57', '2020-02-03 21:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages_entities`
--

CREATE TABLE `cms_pages_entities` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slugable` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_pages_entities`
--

INSERT INTO `cms_pages_entities` (`id`, `slug`, `slugable`, `type_id`, `created_at`, `updated_at`, `order`) VALUES
(3, 'slider-1575895774', '{\"al\":\"\",\"en\":\"borders-are-a-thing-of-the-past-enjoy-unrestricted-access-like-never-before\"}', 1, '2019-12-09 11:49:34', '2019-12-09 11:49:34', 3),
(4, 'second_home-1575896194', '{\"al\":\"\",\"en\":\"trust-transparency-reliability\"}', 2, '2019-12-09 11:56:34', '2019-12-09 11:56:34', 1),
(5, 'second_home-1575896209', '{\"al\":\"\",\"en\":\"globally-approved-recognized\"}', 2, '2019-12-09 11:56:49', '2019-12-09 11:56:49', 2),
(6, 'second_home-1575896223', '{\"al\":\"\",\"en\":\"award-winning-citizenship-experts\"}', 2, '2019-12-09 11:57:03', '2019-12-09 11:57:03', 3),
(12, 'third-section-1575978592', NULL, 5, '2019-12-10 10:49:52', '2019-12-10 10:49:52', NULL),
(13, 'our_team-1575980754', '{\"al\":\"\",\"en\":\"ceo\"}', 6, '2019-12-10 11:25:54', '2019-12-10 11:41:42', 1),
(16, 'locations_contact-1575988663', '{\"al\":\"\",\"en\":\"london-office\"}', 7, '2019-12-10 13:37:43', '2019-12-10 13:37:43', 1),
(17, 'locations_contact-1575988669', '{\"al\":\"\",\"en\":\"lebanon-office\"}', 7, '2019-12-10 13:37:49', '2019-12-10 13:37:55', 2),
(18, 'locations_contact-1575988683', '{\"al\":\"\",\"en\":\"caribbean-office\"}', 7, '2019-12-10 13:38:03', '2019-12-10 13:38:03', 3),
(19, 'locations_contact-1575988691', '{\"al\":\"\",\"en\":\"uae-office\"}', 7, '2019-12-10 13:38:11', '2019-12-10 13:38:11', 4),
(20, 'header_contact-1576591003', NULL, 8, '2019-12-17 12:56:43', '2019-12-17 12:56:43', NULL),
(21, 'our_header-1576767218', NULL, 9, '2019-12-19 13:53:38', '2019-12-19 13:53:38', NULL),
(22, 'guar_nd-1576768390', NULL, 10, '2019-12-19 14:13:10', '2019-12-19 14:13:10', NULL),
(23, 'our_pledge-1576769068', '{\"al\":\"\",\"en\":\"aftercare\"}', 11, '2019-12-19 14:24:28', '2019-12-19 14:24:28', 1),
(24, 'our_pledge-1576769083', '{\"al\":\"\",\"en\":\"ease-of-service\"}', 11, '2019-12-19 14:24:43', '2019-12-19 14:24:43', 2),
(25, 'our_pledge-1576769098', '{\"al\":\"\",\"en\":\"24-7-availability\"}', 11, '2019-12-19 14:24:58', '2019-12-19 14:24:58', 3),
(26, 'our_pledge-1576769110', '{\"al\":\"\",\"en\":\"speed-of-completion\"}', 11, '2019-12-19 14:25:10', '2019-12-19 14:25:10', 4),
(27, 'our_pledge-1576769123', '{\"al\":\"\",\"en\":\"money-back-guarantee\"}', 11, '2019-12-19 14:25:23', '2019-12-19 14:25:23', 5),
(28, 'our_pledge-1576769138', '{\"al\":\"\",\"en\":\"price-guarantee\"}', 11, '2019-12-19 14:25:38', '2019-12-19 14:25:38', 6),
(29, 'header-citizen-1576772250', NULL, 12, '2019-12-19 15:17:30', '2019-12-19 15:17:30', NULL),
(30, 'news_header-1577365190', NULL, 14, '2019-12-26 11:59:50', '2019-12-26 11:59:50', NULL),
(31, 'news-1577365430', '{\"al\":\"\",\"en\":\"leverage-agile-frameworks-to-provide-a-robust-synopsis\"}', 15, '2019-12-26 12:03:50', '2019-12-26 12:03:50', 1),
(32, 'terms_a-1577369485', NULL, 16, '2019-12-26 13:11:25', '2019-12-26 13:11:25', NULL),
(33, 'privacy_a-1577370139', NULL, 17, '2019-12-26 13:22:19', '2019-12-26 13:22:19', NULL),
(42, 'program-1578917626', '{\"al\":\"\",\"en\":\"domenica\"}', 13, '2020-01-13 11:13:46', '2020-01-16 08:59:49', 1),
(43, 'citizenship-third-1578930039', NULL, 18, '2020-01-13 14:40:39', '2020-01-13 14:40:39', NULL),
(44, 'frequently_asked-1578991706', '{\"al\":\"\",\"en\":\"most-popular-program\"}', 19, '2020-01-14 07:48:26', '2020-01-14 07:49:26', 1),
(45, 'frequently_asked-1578991717', '{\"al\":\"\",\"en\":\"why-consider-2nd-citizenship\"}', 19, '2020-01-14 07:48:37', '2020-01-14 07:48:37', 2),
(47, 'calculator_header-1579097993', NULL, 21, '2020-01-15 13:19:53', '2020-01-15 13:19:53', NULL),
(51, 'program-1579183009', '{\"al\":\"\",\"en\":\"dubai\"}', 13, '2020-01-16 12:56:49', '2020-01-21 07:18:19', 2),
(55, 'slider-1579186414', '{\"al\":\"\",\"en\":\"borders-are-a-thing-of-the-past-enjoy-unrestricted-access-like-never-before-sacha\"}', 1, '2020-01-16 13:53:34', '2020-01-21 07:13:48', 4),
(56, 'Seo_homepage-1579594849', NULL, 22, '2020-01-21 07:20:49', '2020-01-21 07:20:49', NULL),
(57, 'header-1580292046', NULL, 23, '2020-01-29 09:00:46', '2020-01-29 09:00:46', NULL),
(58, 'what_you_can-1580292822', NULL, 24, '2020-01-29 09:13:42', '2020-01-29 09:13:42', NULL),
(59, 'what_you_cant-1580292865', NULL, 25, '2020-01-29 09:14:25', '2020-01-29 09:14:25', NULL),
(60, 'carabben_a-1580293459', NULL, 26, '2020-01-29 09:24:19', '2020-01-29 09:24:19', NULL),
(61, 'euri_acr-1580293478', NULL, 27, '2020-01-29 09:24:38', '2020-01-29 09:24:38', NULL),
(62, 'immigration_l-1580293496', NULL, 28, '2020-01-29 09:24:56', '2020-01-29 09:24:56', NULL),
(63, 'third_about_icon-1580298148', '{\"al\":\"\",\"en\":\"we-cheque-guarantee-clients-applications\"}', 29, '2020-01-29 10:42:28', '2020-01-29 10:46:47', 8),
(64, 'third_about_icon-1580298161', '{\"al\":\"\",\"en\":\"globally-approved-recognized\"}', 29, '2020-01-29 10:42:41', '2020-01-29 10:46:47', 7),
(65, 'third_about_icon-1580298174', '{\"al\":\"\",\"en\":\"british-run-company\"}', 29, '2020-01-29 10:42:54', '2020-01-29 10:46:46', 6),
(66, 'third_about_icon-1580298190', '{\"al\":\"\",\"en\":\"your-file-willremain-confidential-secure\"}', 29, '2020-01-29 10:43:10', '2020-01-29 10:46:41', 5),
(67, 'third_about_icon-1580298205', '{\"al\":\"\",\"en\":\"longstanding-global-reputation\"}', 29, '2020-01-29 10:43:25', '2020-01-29 10:46:38', 4),
(68, 'third_about_icon-1580298216', '{\"al\":\"\",\"en\":\"the-most-competitive-on-legal-fees\"}', 29, '2020-01-29 10:43:36', '2020-01-29 10:46:36', 3),
(69, 'third_about_icon-1580298234', '{\"al\":\"\",\"en\":\"we-will-do-the-work-for-you\"}', 29, '2020-01-29 10:43:54', '2020-01-29 10:46:34', 2),
(70, 'third_about_icon-1580298257', '{\"al\":\"\",\"en\":\"legally-authorized\"}', 29, '2020-01-29 10:44:17', '2020-01-29 10:46:33', 1),
(71, 'program-1580765337', '{\"al\":\"\",\"en\":\"kosovo\"}', 13, '2020-02-03 21:28:57', '2020-02-03 21:28:57', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages_fields`
--

CREATE TABLE `cms_pages_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slugable` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('text','editor','numeric','date','email','file','gallery','select') COLLATE utf8_unicode_ci NOT NULL,
  `rule` enum('required') COLLATE utf8_unicode_ci NOT NULL,
  `page_type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_pages_fields`
--

INSERT INTO `cms_pages_fields` (`id`, `label`, `name`, `model`, `slugable`, `type`, `rule`, `page_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 1, '2019-12-09 11:04:42', '2019-12-09 11:04:42'),
(2, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 1, '2019-12-09 11:04:56', '2019-12-09 11:04:56'),
(3, 'Background', 'background', '\"background\"', 0, 'file', 'required', 1, '2019-12-09 11:05:08', '2019-12-09 11:05:08'),
(5, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 2, '2019-12-09 11:54:29', '2019-12-09 11:54:29'),
(6, 'Paragraph', 'paragraph', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 2, '2019-12-09 11:55:00', '2019-12-09 11:55:00'),
(7, 'Icon', 'icon', '\"icon\"', 0, 'file', 'required', 2, '2019-12-09 11:55:10', '2019-12-09 11:55:10'),
(10, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 5, '2019-12-10 10:49:03', '2019-12-10 10:49:03'),
(11, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 5, '2019-12-10 10:49:10', '2019-12-10 10:49:10'),
(12, 'YouTube video URL', 'video', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 5, '2019-12-10 10:49:36', '2019-12-10 10:49:36'),
(13, 'Name', 'name', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 6, '2019-12-10 11:24:11', '2019-12-10 11:24:11'),
(14, 'Job Position', 'job_position', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 6, '2019-12-10 11:24:23', '2019-12-10 11:24:23'),
(15, 'LinkedIn', 'linkedin', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 6, '2019-12-10 11:24:45', '2019-12-10 11:24:45'),
(16, 'Instagram', 'instagram', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 6, '2019-12-10 11:24:55', '2019-12-10 11:24:55'),
(17, 'Image', 'image', '\"image\"', 0, 'file', 'required', 6, '2019-12-10 11:25:03', '2019-12-10 11:25:03'),
(18, 'Office', 'office', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 7, '2019-12-10 13:35:24', '2019-12-10 13:35:24'),
(19, 'Location', 'location', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 7, '2019-12-10 13:35:33', '2019-12-10 13:35:33'),
(20, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 8, '2019-12-17 12:55:57', '2019-12-17 12:55:57'),
(21, 'Background', 'background', '\"background\"', 0, 'file', 'required', 8, '2019-12-17 12:56:05', '2019-12-17 12:56:05'),
(22, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 9, '2019-12-17 13:15:56', '2019-12-17 13:15:56'),
(23, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 9, '2019-12-17 13:16:05', '2019-12-17 13:16:05'),
(24, 'Background', 'background', '\"background\"', 0, 'file', 'required', 9, '2019-12-17 13:16:19', '2019-12-17 13:16:19'),
(25, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 10, '2019-12-19 14:12:13', '2019-12-19 14:12:13'),
(26, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 10, '2019-12-19 14:12:21', '2019-12-19 14:12:21'),
(27, 'CEO Image', 'image', '\"image\"', 0, 'file', 'required', 10, '2019-12-19 14:12:39', '2019-12-19 14:12:39'),
(28, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 11, '2019-12-19 14:23:08', '2019-12-19 14:23:08'),
(29, 'Small Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 11, '2019-12-19 14:23:21', '2019-12-19 14:23:21'),
(30, 'Icon (Svg or Png)', 'image', '\"image\"', 0, 'file', 'required', 11, '2019-12-19 14:23:53', '2019-12-19 14:23:53'),
(31, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 12, '2019-12-19 14:53:56', '2019-12-19 14:53:56'),
(32, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 12, '2019-12-19 14:54:04', '2019-12-19 14:54:04'),
(33, 'Background', 'background', '\"background\"', 0, 'file', 'required', 12, '2019-12-19 14:54:15', '2019-12-19 14:54:15'),
(34, 'State', 'state', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 13, '2019-12-19 15:31:15', '2019-12-19 15:31:15'),
(35, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:31:23', '2019-12-19 15:31:23'),
(36, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2019-12-19 15:31:34', '2019-12-19 15:31:34'),
(37, 'Background', 'background', '\"background\"', 0, 'file', 'required', 13, '2019-12-19 15:31:56', '2019-12-19 15:31:56'),
(38, 'Second Image', 'nd_image', '\"nd_image\"', 0, 'file', 'required', 13, '2019-12-19 15:32:09', '2019-12-19 15:32:09'),
(39, 'Located In', 'located_in', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:32:27', '2019-12-19 15:32:27'),
(40, 'Time To Citizenship', 'time_load', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:33:22', '2019-12-19 15:33:22'),
(41, 'Population', 'population', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:34:03', '2019-12-19 15:34:03'),
(42, 'Total Area', 'total_area', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:34:23', '2019-12-19 15:34:23'),
(43, 'Currency', 'currency', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:35:39', '2019-12-19 15:35:39'),
(44, 'GDP', 'gdp', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:36:30', '2019-12-19 15:36:30'),
(45, 'Visa Free Travel to', 'visa_travel_to', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:40:00', '2020-01-13 10:21:55'),
(46, 'Passport Strength', 'passport_strength', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:37:29', '2019-12-19 15:37:29'),
(47, 'About The Program', 'about_program', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2019-12-19 15:37:48', '2019-12-19 15:37:48'),
(48, 'Benefits', 'benefits', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2019-12-19 15:38:47', '2019-12-19 15:38:47'),
(49, 'Disavantages', 'disavantages', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2019-12-19 15:38:58', '2019-12-19 15:38:58'),
(50, 'Legality', 'legality', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2019-12-19 15:39:08', '2019-12-19 15:39:08'),
(51, 'Price', 'price', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-19 15:39:35', '2019-12-19 15:39:35'),
(52, 'Process', 'process', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2019-12-19 15:39:46', '2019-12-19 15:39:46'),
(54, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 14, '2019-12-26 11:58:39', '2019-12-26 11:58:39'),
(55, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 14, '2019-12-26 11:58:55', '2019-12-26 11:58:55'),
(56, 'Background', 'background', '\"background\"', 0, 'file', 'required', 14, '2019-12-26 11:59:06', '2019-12-26 11:59:06'),
(57, 'News Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 15, '2019-12-26 12:01:58', '2019-12-26 12:01:58'),
(58, 'News Body', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 15, '2019-12-26 12:02:07', '2019-12-26 12:02:07'),
(59, 'Date', 'date', '\"date\"', 0, 'date', 'required', 15, '2019-12-26 12:03:09', '2019-12-26 12:03:09'),
(60, 'Image', 'image', '\"image\"', 0, 'file', 'required', 15, '2019-12-26 12:03:18', '2019-12-26 12:03:18'),
(61, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 1, 'editor', 'required', 16, '2019-12-26 13:11:05', '2019-12-26 13:11:05'),
(62, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 1, 'editor', 'required', 17, '2019-12-26 13:21:49', '2019-12-26 13:21:49'),
(63, 'About Program Description', 'about_program_description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2020-01-13 10:52:09', '2020-01-13 10:52:09'),
(64, 'Donation', 'donation', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2019-12-30 12:17:31', '2019-12-30 12:17:31'),
(65, 'Investment', 'investment', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:30:14', '2020-01-13 10:30:14'),
(66, 'Spouse', 'spouse', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:31:14', '2020-01-13 10:31:14'),
(67, 'Between 12-17', 'between_12_17', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:31:23', '2020-01-13 10:31:23'),
(68, 'Between 18-25', 'between_18_25', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:31:32', '2020-01-13 10:31:32'),
(69, 'Parents > 55', 'parents_55', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:31:43', '2020-01-13 10:31:43'),
(70, 'Under 11', 'under_4', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:31:51', '2020-01-13 10:31:51'),
(71, 'Spouse Investment', 'spouse_investment', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:31:59', '2020-01-13 10:31:59'),
(72, 'Under4 Investment', 'under_4_investment', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:32:07', '2020-01-13 10:32:07'),
(73, 'Between 12-17 Investment', 'between_12_17_investment', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:32:15', '2020-01-13 10:32:15'),
(74, 'Between 18-25 Investment', 'between_18_25_investment', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:32:25', '2020-01-13 10:32:25'),
(75, 'Parent > 55', 'parent_55_investment', '{\"al\":\"\",\"en\":\"\"}', 0, 'text', 'required', 13, '2020-01-13 10:32:34', '2020-01-13 10:32:34'),
(77, 'Footer Image', 'footer_image', '\"footer_image\"', 0, 'file', 'required', 13, '2020-01-13 10:59:33', '2020-01-13 10:59:33'),
(78, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 18, '2020-01-13 14:40:09', '2020-01-13 14:40:09'),
(79, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 18, '2020-01-13 14:40:20', '2020-01-13 14:40:20'),
(80, 'Image', 'image', '\"image\"', 0, 'file', 'required', 18, '2020-01-13 14:41:34', '2020-01-13 14:41:34'),
(81, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 19, '2020-01-14 07:47:58', '2020-01-14 07:47:58'),
(82, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 19, '2020-01-14 07:48:11', '2020-01-14 07:48:11'),
(83, 'Visa Free Travel To', 'visa_free_travel_to', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 13, '2020-01-15 09:42:47', '2020-01-15 09:42:47'),
(87, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 21, '2020-01-15 13:19:06', '2020-01-15 13:19:06'),
(88, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 21, '2020-01-15 13:19:15', '2020-01-15 13:19:15'),
(89, 'Background', 'background', '\"background\"', 0, 'file', 'required', 21, '2020-01-15 13:19:24', '2020-01-15 13:19:24'),
(90, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 22, '2020-01-21 07:20:13', '2020-01-21 07:20:13'),
(91, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 23, '2020-01-29 08:59:40', '2020-01-29 08:59:40'),
(92, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 23, '2020-01-29 08:59:51', '2020-01-29 08:59:51'),
(94, 'Background', 'background', '\"background\"', 0, 'file', 'required', 23, '2020-01-29 09:05:54', '2020-01-29 09:05:54'),
(95, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 24, '2020-01-29 09:11:05', '2020-01-29 09:11:05'),
(96, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 24, '2020-01-29 09:11:14', '2020-01-29 09:11:14'),
(97, 'Image', 'image', '\"image\"', 0, 'file', 'required', 24, '2020-01-29 09:11:19', '2020-01-29 09:11:19'),
(98, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 25, '2020-01-29 09:11:47', '2020-01-29 09:11:47'),
(99, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 25, '2020-01-29 09:11:55', '2020-01-29 09:11:55'),
(100, 'Image', 'image', '\"image\"', 0, 'file', 'required', 25, '2020-01-29 09:12:04', '2020-01-29 09:12:04'),
(101, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 26, '2020-01-29 09:21:30', '2020-01-29 09:21:30'),
(102, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 26, '2020-01-29 09:21:37', '2020-01-29 09:21:37'),
(103, 'Image', 'image', '\"image\"', 0, 'file', 'required', 26, '2020-01-29 09:21:49', '2020-01-29 09:21:49'),
(104, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 27, '2020-01-29 09:22:30', '2020-01-29 09:22:30'),
(105, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 27, '2020-01-29 09:22:37', '2020-01-29 09:22:37'),
(106, 'Image', 'image', '\"image\"', 0, 'file', 'required', 27, '2020-01-29 09:22:44', '2020-01-29 09:22:44'),
(107, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 28, '2020-01-29 09:23:26', '2020-01-29 09:23:26'),
(108, 'Description', 'description', '{\"al\":\"\",\"en\":\"\"}', 0, 'editor', 'required', 28, '2020-01-29 09:23:38', '2020-01-29 09:23:38'),
(109, 'Image', 'image', '\"image\"', 0, 'file', 'required', 28, '2020-01-29 09:23:44', '2020-01-29 09:23:44'),
(110, 'Title', 'title', '{\"al\":\"\",\"en\":\"\"}', 1, 'text', 'required', 29, '2020-01-29 10:41:52', '2020-01-29 10:41:52'),
(111, 'Icon', 'icon', '\"icon\"', 0, 'file', 'required', 29, '2020-01-29 10:41:59', '2020-01-29 10:41:59'),
(112, 'PageType Category', 'pagetype_category_id', '{\"al\":\"\",\"en\":\"\"}', 0, 'select', 'required', 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages_types`
--

CREATE TABLE `cms_pages_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('one','many') COLLATE utf8_unicode_ci NOT NULL,
  `edit` tinyint(1) NOT NULL DEFAULT '0',
  `page_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_pages_types`
--

INSERT INTO `cms_pages_types` (`id`, `name`, `slug`, `type`, `edit`, `page_id`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 'slider', 'many', 0, 1, '2019-12-09 11:04:27', '2019-12-09 11:04:27'),
(2, 'Second Section', 'second_home', 'many', 0, 1, '2019-12-09 11:53:20', '2019-12-09 11:53:20'),
(5, 'Third Section', 'third-section', 'one', 1, 1, '2019-12-10 10:48:53', '2019-12-10 10:49:52'),
(6, 'Our Team', 'our_team', 'many', 0, 1, '2019-12-10 11:23:56', '2019-12-10 11:23:56'),
(7, 'Contact Locations', 'locations_contact', 'many', 0, 1, '2019-12-10 13:35:07', '2019-12-10 13:35:07'),
(8, 'Header', 'header_contact', 'one', 1, 10, '2019-12-17 12:54:27', '2019-12-17 12:56:43'),
(9, 'Header', 'our_header', 'one', 1, 11, '2019-12-17 13:15:43', '2019-12-19 13:53:38'),
(10, 'CEO', 'guar_nd', 'one', 1, 11, '2019-12-19 14:12:03', '2019-12-19 14:13:10'),
(11, 'Our Pledge', 'our_pledge', 'many', 0, 11, '2019-12-19 14:22:58', '2019-12-19 14:22:58'),
(12, 'Header', 'header-citizen', 'one', 1, 2, '2019-12-19 14:53:34', '2019-12-19 15:17:30'),
(13, 'Add Program', 'program', 'many', 0, 2, '2019-12-19 15:30:58', '2019-12-19 15:30:58'),
(14, 'Header', 'news_header', 'one', 1, 9, '2019-12-26 11:51:56', '2019-12-26 11:59:50'),
(15, 'Add news', 'news', 'many', 0, 9, '2019-12-26 12:01:27', '2019-12-26 12:01:27'),
(16, 'Terms & Conditions', 'terms_a', 'one', 1, 12, '2019-12-26 13:10:49', '2019-12-26 13:11:24'),
(17, 'Privacy & Policy', 'privacy_a', 'one', 1, 13, '2019-12-26 13:21:31', '2019-12-26 13:22:19'),
(18, 'Citizenship Third', 'citizenship-third', 'one', 1, 2, '2020-01-13 14:38:05', '2020-01-13 14:40:39'),
(19, 'Frequently Asked Questions', 'frequently_asked', 'many', 0, 2, '2020-01-14 07:47:42', '2020-01-14 07:47:42'),
(21, 'Header', 'calculator_header', 'one', 1, 14, '2020-01-15 13:18:46', '2020-01-15 13:19:53'),
(22, 'Seo Homepage', 'Seo_homepage', 'one', 1, 1, '2020-01-21 07:20:02', '2020-01-21 07:20:49'),
(23, 'Header', 'header_about', 'one', 1, 8, '2020-01-29 08:59:22', '2020-01-29 09:00:46'),
(24, 'What you can do', 'what_you_can', 'one', 1, 2, '2020-01-29 09:10:53', '2020-01-29 09:13:42'),
(25, 'What you cant', 'what_you_cant', 'one', 1, 2, '2020-01-29 09:11:39', '2020-01-29 09:14:25'),
(26, 'Carabbean Accredited', 'carabben_a', 'one', 1, 8, '2020-01-29 09:21:21', '2020-01-29 09:24:19'),
(27, 'European Accredited', 'euri_acr', 'one', 1, 8, '2020-01-29 09:22:21', '2020-01-29 09:24:38'),
(28, 'Immigration Licensed', 'immigration_l', 'one', 1, 8, '2020-01-29 09:23:16', '2020-01-29 09:24:56'),
(29, 'Third Section About', 'third_about_icon', 'many', 0, 8, '2020-01-29 10:41:41', '2020-01-29 10:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_11_154823_eg_languages', 1),
(4, '2017_11_12_113731_cms_pages', 1),
(5, '2017_11_12_213001_cms_page_type', 1),
(6, '2017_11_12_214115_cms_pages_fields', 1),
(7, '2017_11_19_142952_cms_page_entities', 1),
(8, '2017_11_19_143029_cms_page_collections', 1),
(9, '2017_12_06_180521_cms_gallery_entity', 1),
(10, '2017_12_06_180534_cms_gallery_images', 1),
(11, '2018_01_09_124118_alter_order_column', 1),
(12, '2018_02_05_165314_create_tbl_rel_type', 1),
(13, '2018_02_05_165323_create_tbl_rel_entry', 1),
(14, '2018_02_06_164146_create_building_table', 1),
(15, '2018_02_06_165641_create_building_relations', 1),
(16, '2018_02_07_182214_bld_gallery', 1),
(17, '2018_02_14_182710_seed_building', 1),
(18, '2018_02_15_172511_order_bld_building', 1),
(19, '2018_02_18_224258_order_price_building', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rel_entry`
--

CREATE TABLE `rel_entry` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rel_type`
--

CREATE TABLE `rel_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('multiple','one') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rel_type`
--

INSERT INTO `rel_type` (`id`, `name`, `field_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Location', 'location', 'one', '2019-12-07 13:45:51', '2019-12-07 13:45:51'),
(2, 'Type Of Project', 'type-of-project', 'one', '2019-12-07 13:45:51', '2019-12-07 13:45:51'),
(3, 'Status of Project', 'status-of-project', 'one', '2019-12-07 13:45:51', '2019-12-07 13:45:51'),
(4, 'Fitted', 'fitted', 'one', '2019-12-07 13:45:51', '2019-12-07 13:45:51'),
(5, 'Tags', 'tags', 'multiple', '2019-12-07 13:45:51', '2019-12-07 13:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '$2y$10$36Z2zov3NpFrAG7RFzjDDuN5IAZEifM06tK445y/lC88vZXPe32xi', 'D9p9GDKDgnscVtk3D1k6qPTbL1JvGtfHMushtmHq8mVD032u0uHsLIKw72Rf', '2019-12-07 13:45:51', '2019-12-07 13:45:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bld_building`
--
ALTER TABLE `bld_building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bld_gallery`
--
ALTER TABLE `bld_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bld_gallery_building_id_foreign` (`building_id`);

--
-- Indexes for table `bld_relation`
--
ALTER TABLE `bld_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bld_relation_building_id_foreign` (`building_id`),
  ADD KEY `bld_relation_relation_id_foreign` (`relation_id`);

--
-- Indexes for table `cms_gallery_entity`
--
ALTER TABLE `cms_gallery_entity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_gallery_entity_field_id_foreign` (`field_id`),
  ADD KEY `cms_gallery_entity_entity_id_foreign` (`entity_id`);

--
-- Indexes for table `cms_gallery_images`
--
ALTER TABLE `cms_gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_gallery_images_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `cms_languages`
--
ALTER TABLE `cms_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_languages_key_unique` (`key`);

--
-- Indexes for table `cms_page-type_categories`
--
ALTER TABLE `cms_page-type_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_page_type_categories_type_id_foreign` (`type_id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_pages_collections`
--
ALTER TABLE `cms_pages_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_pages_collections_entity_id_foreign` (`entity_id`),
  ADD KEY `cms_pages_collections_field_id_foreign` (`field_id`);

--
-- Indexes for table `cms_pages_entities`
--
ALTER TABLE `cms_pages_entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_pages_entities_type_id_foreign` (`type_id`);

--
-- Indexes for table `cms_pages_fields`
--
ALTER TABLE `cms_pages_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_pages_fields_page_type_id_foreign` (`page_type_id`);

--
-- Indexes for table `cms_pages_types`
--
ALTER TABLE `cms_pages_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_pages_types_page_id_foreign` (`page_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rel_entry`
--
ALTER TABLE `rel_entry`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_entry_type_id_foreign` (`type_id`);

--
-- Indexes for table `rel_type`
--
ALTER TABLE `rel_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bld_building`
--
ALTER TABLE `bld_building`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bld_gallery`
--
ALTER TABLE `bld_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bld_relation`
--
ALTER TABLE `bld_relation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_gallery_entity`
--
ALTER TABLE `cms_gallery_entity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_gallery_images`
--
ALTER TABLE `cms_gallery_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_languages`
--
ALTER TABLE `cms_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_page-type_categories`
--
ALTER TABLE `cms_page-type_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cms_pages_collections`
--
ALTER TABLE `cms_pages_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT for table `cms_pages_entities`
--
ALTER TABLE `cms_pages_entities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `cms_pages_fields`
--
ALTER TABLE `cms_pages_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `cms_pages_types`
--
ALTER TABLE `cms_pages_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `rel_entry`
--
ALTER TABLE `rel_entry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rel_type`
--
ALTER TABLE `rel_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bld_gallery`
--
ALTER TABLE `bld_gallery`
  ADD CONSTRAINT `bld_gallery_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `bld_building` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bld_relation`
--
ALTER TABLE `bld_relation`
  ADD CONSTRAINT `bld_relation_building_id_foreign` FOREIGN KEY (`building_id`) REFERENCES `bld_building` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bld_relation_relation_id_foreign` FOREIGN KEY (`relation_id`) REFERENCES `rel_entry` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_gallery_entity`
--
ALTER TABLE `cms_gallery_entity`
  ADD CONSTRAINT `cms_gallery_entity_entity_id_foreign` FOREIGN KEY (`entity_id`) REFERENCES `cms_pages_entities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_gallery_entity_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `cms_pages_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_gallery_images`
--
ALTER TABLE `cms_gallery_images`
  ADD CONSTRAINT `cms_gallery_images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `cms_gallery_entity` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_pages_collections`
--
ALTER TABLE `cms_pages_collections`
  ADD CONSTRAINT `cms_pages_collections_entity_id_foreign` FOREIGN KEY (`entity_id`) REFERENCES `cms_pages_entities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_pages_collections_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `cms_pages_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_pages_entities`
--
ALTER TABLE `cms_pages_entities`
  ADD CONSTRAINT `cms_pages_entities_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `cms_pages_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_pages_fields`
--
ALTER TABLE `cms_pages_fields`
  ADD CONSTRAINT `cms_pages_fields_page_type_id_foreign` FOREIGN KEY (`page_type_id`) REFERENCES `cms_pages_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_pages_types`
--
ALTER TABLE `cms_pages_types`
  ADD CONSTRAINT `cms_pages_types_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rel_entry`
--
ALTER TABLE `rel_entry`
  ADD CONSTRAINT `rel_entry_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `rel_type` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
