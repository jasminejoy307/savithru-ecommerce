-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 06:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `writing_pad`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_banners`
--

CREATE TABLE `ad_banners` (
  `pk_id` int(11) NOT NULL,
  `placement` varchar(20) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `redirect_url` varchar(300) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ad_banners`
--

INSERT INTO `ad_banners` (`pk_id`, `placement`, `image_path`, `redirect_url`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'home-page', 'public/uploads/banner_images//WPBI215817059441760532100001705944176_82a11bf28a1789d8ab01.jpg', 'http://www.test.com', 10, '2023-12-28 12:21:49', 10, '2023-12-28 14:37:29', -1),
(2, 'details-page', 'public/uploads/banner_images//WPBI215817059441760532100001705944176_82a11bf28a1789d8ab01.jpg', 'http://www.test4.com', 10, '2023-12-28 13:23:38', 10, '2023-12-28 14:37:25', -1),
(3, 'home-page', 'public/uploads/ad_banners//WPABI994517063706030850228001706370603_a96fe86c5b2ab44cb698.jpg', 'http://www.test1.com', 10, '2023-12-28 13:24:27', 10, '2024-01-27 21:20:03', 1),
(4, 'Other page', 'public/uploads/banner_images//WPBI215817059441760532100001705944176_82a11bf28a1789d8ab01.jpg', 'http://www.test2.com', 10, '2023-12-29 14:27:07', 10, '2024-01-27 21:19:47', -1),
(5, '', '', 'test url', 10, '2024-01-26 07:44:46', 10, '2024-01-27 21:19:44', -1),
(6, 'details-page', 'public/uploads/ad_banners//WPABI297817062555780247674001706255578_a4ff95cf6e80f438c219.png', 'testt urrl', 10, '2024-01-26 07:52:58', 10, '2024-01-27 21:19:40', -1);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lastpost_on` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`pk_id`, `user_id`, `lastpost_on`, `status`) VALUES
(1, 1, NULL, 1),
(2, 2, '2024-03-23 15:28:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `pk_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `order_no` int(11) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `redirect_url` varchar(200) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`pk_id`, `title`, `order_no`, `image_path`, `redirect_url`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, '', 0, 'public/uploads/banner_images//WPBI503117063695420595151001706369542_2cb425c2525284c46b2a.jpg', '', 10, '2024-01-22 17:04:25', 10, '2024-02-09 17:15:40', 1),
(2, '', 0, 'public/uploads/banner_images//WPBI698017063695180650298001706369518_c46d5e13bf154afa7391.jpg', '', 10, '2024-01-22 17:23:37', 10, '2024-01-27 21:01:58', 1),
(3, '', 0, 'public/uploads/banner_images//WPBI543717063694840796844001706369484_19917688b26f279e2f81.jpg', '', 10, '2024-01-26 17:26:14', 10, '2024-02-09 17:15:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `pk_id` int(11) NOT NULL,
  `name_kan` varchar(50) NOT NULL,
  `name_eng` varchar(50) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`pk_id`, `name_kan`, `name_eng`, `image_path`, `section_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'ಶಿಕ್ಷಣ', 'education', 'public/uploads/category_images//WPCI808017063697100185766001706369710_8f7fda106e4815a3c27b.jpg', 4, 10, '2023-12-27 17:01:09', 10, '2024-01-27 21:05:10', 1),
(2, 'ಯೋಗ', 'Yoga', 'public/uploads/category_images//WPCI657917063696700943181001706369670_a58fe34515650ca10927.jpg', 3, 10, '2023-12-27 17:01:51', 10, '2024-01-27 21:04:30', 1),
(4, 'Test', 'Test', 'public/uploads/category_images//WPCI150217109967870201855001710996787_735c50e1b49e19ed3da9.png', 5, 10, '2024-03-21 10:23:07', NULL, '2024-03-21 10:23:07', 1),
(5, 'ಕ್ರೀಡೆ', 'Sports', 'public/uploads/category_images//WPCI945017109968460191681001710996846_0a7d0977ba5f7cb51a4f.jpg', 5, 10, '2024-03-21 10:24:06', NULL, '2024-03-21 10:24:06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `collection_posts`
--

CREATE TABLE `collection_posts` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `collection_posts`
--

INSERT INTO `collection_posts` (`pk_id`, `user_id`, `collection_id`, `post_id`, `added_on`) VALUES
(2, 2, 7, 24, '2024-03-01 12:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `debates`
--

CREATE TABLE `debates` (
  `pk_id` int(11) NOT NULL,
  `topic` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `language` varchar(10) NOT NULL COMMENT 'KAN / ENG',
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `debates`
--

INSERT INTO `debates` (`pk_id`, `topic`, `description`, `language`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'Test debate', '<p><b>Testing</b></p><ul><li><b>asdfds</b></li><li><b>dfdsfds</b></li><li><b>asdfdsf</b></li></ul>', 'eng', 10, '2024-01-26 12:02:28', 10, '2024-02-16 14:15:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `debate_comments`
--

CREATE TABLE `debate_comments` (
  `pk_id` int(11) NOT NULL,
  `debate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `debate_comments`
--

INSERT INTO `debate_comments` (`pk_id`, `debate_id`, `user_id`, `comment_id`, `comment`, `created_on`, `updated_on`, `status`) VALUES
(1, 1, 2, 0, 'Good Idea !!!', '2024-03-08 09:18:01', NULL, 1),
(2, 1, 2, 0, 'Test Comment 1', '2024-03-09 17:06:32', NULL, 1),
(3, 1, 2, 0, 'Test comment spanning multiple lines Test comment spanning multiple lines', '2024-03-09 17:07:18', NULL, 1),
(4, 1, 2, 1, 'Test reply comment', '2024-03-09 18:40:54', NULL, 1),
(5, 1, 2, 0, 'Test comment 5', '2024-03-11 10:55:09', NULL, 1),
(6, 1, 2, 0, 'Test comment 6', '2024-03-11 16:26:55', NULL, 1),
(7, 1, 2, 0, 'Test comment 7', '2024-03-11 16:27:53', NULL, 1),
(8, 1, 2, 0, 'Test comment 8', '2024-03-11 16:29:39', NULL, 1),
(9, 1, 2, 0, 'Test comment 9', '2024-03-11 16:36:09', NULL, 1),
(10, 1, 2, 0, 'Test comment 10', '2024-03-11 16:37:05', NULL, 1),
(11, 1, 2, 0, 'Test comment 11', '2024-03-11 16:49:53', NULL, 1),
(12, 1, 2, 0, 'Test comment 12', '2024-03-11 17:40:26', NULL, 1),
(13, 1, 2, 0, 'Test comment 13', '2024-03-11 17:47:53', NULL, 1),
(14, 1, 2, 0, 'Test comment 14', '2024-03-11 17:49:15', NULL, 1),
(15, 1, 2, 0, 'Test comment 15', '2024-03-11 17:50:50', NULL, 1),
(16, 1, 2, 0, 'Test comment 16', '2024-03-11 18:00:51', NULL, 1),
(17, 1, 2, 0, 'Test comment 17', '2024-03-11 18:01:20', NULL, 1),
(18, 1, 2, 0, 'Tes comment 18', '2024-03-11 18:06:53', NULL, 1),
(19, 1, 2, 0, 'Test comment 19', '2024-03-11 18:07:45', NULL, 1),
(20, 1, 2, 0, 'Test comment 20', '2024-03-11 18:10:14', NULL, 1),
(21, 1, 2, 0, 'Test comment 21', '2024-03-11 18:10:27', NULL, 1),
(22, 1, 2, 0, 'Test comment 22', '2024-03-11 18:11:18', NULL, 1),
(23, 1, 2, 0, 'Test comment 23', '2024-03-11 18:11:27', NULL, 1),
(24, 1, 2, 23, 'Test reply to test comment 23', '2024-03-14 10:34:44', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `pk_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `role` varchar(30) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`pk_id`, `name`, `email`, `phone_no`, `role`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'Mahesh', 'test@savithru.com', '8123456789', 'relationship manager', 10, '2023-11-17 14:26:51', 10, '2023-12-12 14:46:26', 1),
(2, 'Swamy', 'swamy@savithru.com', '1212121212', 'executive assistant', 10, '2023-12-12 14:41:07', 10, '2023-12-12 14:46:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `followed_on` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`pk_id`, `user_id`, `author_id`, `followed_on`) VALUES
(2, 1, 2, '2024-03-07 13:26:38'),
(4, 2, 1, '2024-03-08 11:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `my_collections`
--

CREATE TABLE `my_collections` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `my_collections`
--

INSERT INTO `my_collections` (`pk_id`, `user_id`, `name`, `created_on`, `updated_on`, `status`) VALUES
(1, 1, 'testing', '2024-02-02 06:40:05', '2024-02-02 06:48:49', 1),
(2, 1, 'myfav', '2024-02-02 06:40:05', '2024-02-02 06:48:06', 1),
(3, 1, 'testup', '2024-02-02 07:02:33', '2024-02-02 07:04:01', 1),
(4, 2, 'my-collection-two', '2024-02-02 22:46:00', '2024-02-03 04:33:41', 1),
(5, 2, 'my-collection-one', '2024-02-03 04:33:08', NULL, 1),
(6, 2, 'Test Collection', '2024-02-12 15:14:24', '2024-02-12 15:37:21', 1),
(7, 2, 'Test Collection 2', '2024-02-12 15:14:57', '2024-02-12 15:42:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `pk_id` int(11) NOT NULL,
  `mainpost_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `has_episodes` tinyint(4) NOT NULL DEFAULT 0,
  `tags` varchar(200) NOT NULL,
  `language` varchar(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subtitle` varchar(300) NOT NULL,
  `content` longtext NOT NULL,
  `cover_image` varchar(200) NOT NULL,
  `audio_file` varchar(100) NOT NULL,
  `video_link` varchar(300) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `is_published` int(11) NOT NULL,
  `published_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`pk_id`, `mainpost_id`, `user_id`, `section_id`, `category_id`, `subcategory_id`, `has_episodes`, `tags`, `language`, `title`, `subtitle`, `content`, `cover_image`, `audio_file`, `video_link`, `created_by`, `created_on`, `updated_by`, `updated_on`, `is_published`, `published_on`, `status`) VALUES
(1, 0, 2, 4, 1, 1, 1, '2,11', 'eng', 'Test Post with episodes -2', 'This is a subtitle for test post with episodes -2', '<div><strong style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', 'public/uploads/cover_images/WPCVR76971710918968097610000.png', '', '', 2, '2024-03-13 18:27:41', 0, '2024-03-20 12:46:08', 1, '2024-03-20 12:46:32', 1),
(2, 1, 2, 4, 1, 1, 0, '2,11', 'eng', 'Test Post with episodes -2-new', 'This is a subtitle for test post with episodes -2', '<div><strong style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', 'public/uploads/cover_images/WPCVR83311710746451059863800.png', '', '', 2, '2024-03-13 18:27:41', 0, '2024-03-18 12:50:51', 1, '2024-03-18 12:51:00', 1),
(3, 0, 2, 0, 0, 0, 0, '', '', 'Test title for new post', 'Test subtitle for new post', '<div><strong style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', 'public/uploads/cover_images/WPCVR95271710737662094206200.png', '', '', 2, '2024-03-18 10:24:22', 0, '2024-03-18 10:24:22', 0, NULL, 1),
(4, 1, 2, 4, 1, 1, 0, '2,11', 'eng', 'Test title for test epidsode 2', 'This is subtitle for test episode 2', '<div><strong style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', 'public/uploads/cover_images/WPCVR96011710754657075825400.png', '', '', 2, '2024-03-18 15:07:37', 0, '2024-03-18 15:07:37', 1, '2024-03-18 15:08:20', 1),
(5, 1, 2, 4, 1, 1, 0, '2,11', 'eng', 'Test title for episode 3', 'This is a subtitle for test episode 3', '<div><strong style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', 'public/uploads/cover_images/WPCVR67291710918969009614000.png', '', '', 2, '2024-03-18 15:13:04', 0, '2024-03-20 12:46:09', 1, '2024-03-20 12:46:32', 1),
(11, 10, 2, 3, 2, 2, 0, '12,2', 'eng', 'Test Audio 1', '', '', '', 'public/uploads/audios/WPAUD75621710850033041197000.mp3', '', 2, '2024-03-19 17:37:13', 0, '2024-03-19 17:37:13', 0, NULL, 1),
(14, 13, 2, 3, 2, 2, 0, '12,2', 'eng', 'Test Audio 1', '', '', '', 'public/uploads/audios/WPAUD76901710917320078406400.mp3', '', 2, '2024-03-20 12:18:41', 0, '2024-03-20 12:18:41', 0, NULL, 1),
(17, 0, 2, 0, 0, 0, 1, '', '', '', '', '', 'public/uploads/cover_images/WPCVR42131710997507068294900.png', '', '', 2, '2024-03-21 10:35:07', 0, '2024-03-21 16:42:58', 1, '2024-03-21 10:40:28', 1),
(18, 17, 2, 5, 5, 3, 0, '2,13,14', 'eng', 'Test Video 1', '', '', '', '', 'https://www.youtube.com/watch?v=m-5ck3BuT1o&pp=ygUSdmFyYWhhIHJvb3BhbSBzb25n', 2, '2024-03-21 10:35:07', 0, '2024-03-21 10:35:07', 1, '2024-03-21 10:40:28', 1),
(19, 0, 2, 0, 0, 0, 1, '', '', '', '', '', 'public/uploads/cover_images/WPCVR18751711018754073305300.png', '', '', 2, '2024-03-21 16:29:14', 0, '2024-03-21 17:59:29', 1, '2024-03-21 16:29:24', 1),
(20, 19, 2, 3, 2, 2, 0, '2,12', 'eng', 'Test Audio 1', '', '', '', 'public/uploads/audios/WPAUD42651711018754075389900.mp3', '', 2, '2024-03-21 16:29:14', 0, '2024-03-21 16:29:14', 1, '2024-03-21 16:29:24', 1),
(21, 17, 2, 5, 5, 3, 0, '2,13,14', 'eng', 'Test Video 2', '', '', '', '', 'https://www.youtube.com/watch?v=oYK6JU7Nx38&pp=ygUNdmFyYWhhIHJvb3BhbQ%3D%3D', 2, '2024-03-21 16:36:00', 0, '2024-03-21 16:36:00', 0, NULL, 1),
(22, 19, 2, 0, 0, 0, 0, '', '', 'Test Audio 2', '', '', '', 'public/uploads/audios/WPAUD16851711021084086379900.mp3', '', 2, '2024-03-21 17:08:04', 0, '2024-03-21 17:59:29', 0, NULL, 1),
(23, 0, 2, 3, 2, 2, 1, '12,2', 'eng', 'Test Audiobook 1', 'This is a subtitle for test audiobook 1', '<div><strong style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; margin: 0px; padding: 0px; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', 'public/uploads/cover_images/WPCVR24601711024907066324700.png', '', '', 2, '2024-03-21 18:11:47', 0, '2024-03-21 18:11:47', 1, '2024-03-23 15:28:26', 1),
(24, 23, 2, 3, 2, 2, 0, '12,2', 'eng', 'Test Audio 1', '', '', '', 'public/uploads/audios/WPAUD41781711024907067955900.mp3', '', 2, '2024-03-21 18:11:47', 0, '2024-03-21 18:11:47', 1, '2024-03-21 18:11:55', 1),
(32, 23, 2, 3, 3, 3, 0, '', 'eng', 'Test Audio 2', '', '', '', 'public/uploads/audios/WPAUD43351711186840069049700.mp3', '', 2, '2024-03-23 15:10:40', 0, '2024-03-23 15:11:00', 1, '2024-03-23 15:24:01', 1),
(33, 23, 2, 3, 2, 2, 0, '', 'eng', 'Test Audio 3', '', '', '', 'public/uploads/audios/WPAUD32131711187894042196900.mp3', '', 2, '2024-03-23 15:28:14', 0, '2024-03-23 15:28:22', 1, '2024-03-23 15:28:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`pk_id`, `user_id`, `post_id`, `comment`, `created_on`, `updated_on`, `status`) VALUES
(1, 2, 24, 'This is a test comment from iOS', '2024-03-04 11:24:10', NULL, 1),
(2, 2, 24, 'This is a test comment spanning multiple lines This is a test comment spanning multiple lines This is a test comment spanning multiple lines This is a test comment spanning multiple lines', '2024-03-04 11:29:31', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_ratings`
--

CREATE TABLE `post_ratings` (
  `pk_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `post_ratings`
--

INSERT INTO `post_ratings` (`pk_id`, `post_id`, `user_id`, `rating`, `created_on`, `updated_on`) VALUES
(1, 24, 2, 5, '2024-03-05 09:51:00', '2024-03-11 14:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `post_viewcounts`
--

CREATE TABLE `post_viewcounts` (
  `pk_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `view_count` bigint(20) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `post_viewcounts`
--

INSERT INTO `post_viewcounts` (`pk_id`, `post_id`, `view_count`, `updated_on`) VALUES
(1, 24, 305, '2024-03-11 17:07:13'),
(2, 13, 5, '2024-03-05 10:57:39'),
(3, 1, 81, '2024-03-21 16:44:19'),
(4, 2, 9, '2024-03-20 12:46:26'),
(5, 4, 10, '2024-03-20 12:46:19'),
(6, 5, 1, '2024-03-20 12:47:11'),
(7, 17, 27, '2024-03-23 18:02:52'),
(8, 19, 17, '2024-03-21 17:59:29'),
(9, 23, 136, '2024-03-23 16:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `subcateg_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image_path` varchar(100) NOT NULL,
  `short_name` varchar(30) NOT NULL,
  `prod_code` varchar(30) NOT NULL,
  `hsn_code` varchar(50) NOT NULL,
  `igst` decimal(25,1) NOT NULL,
  `sgst` decimal(25,1) NOT NULL,
  `cgst` decimal(25,1) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `overview` text NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `page_url` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `subcateg_id`, `name`, `image_path`, `short_name`, `prod_code`, `hsn_code`, `igst`, `sgst`, `cgst`, `status`, `overview`, `created_date`, `created_by`, `updated_on`, `updated_by`, `page_url`) VALUES
(1, 5, 'poem book', 'products/product_images/books1711350296.jpg', 'poem', '111', '111', 1.0, 1.0, 1.0, 1, '', '2024-03-25 13:02:57', 1, '0000-00-00 00:00:00', 0, ''),
(2, 6, 'pen', '', 'pen', '113', '112', 1.0, 1.0, 1.0, 1, '', '2024-03-25 16:16:34', 1, '0000-00-00 00:00:00', 0, ''),
(3, 8, 'camel pencil', '', 'pencil', '114', '114', 2.0, 2.0, 2.0, 1, '', '2024-03-25 16:26:55', 1, '0000-00-00 00:00:00', 0, ''),
(4, 5, 'book leather', '', 'bok', '115', '114', 1.0, 1.0, 1.0, 1, '', '2024-03-25 16:28:52', 1, '0000-00-00 00:00:00', 0, ''),
(5, 6, 'Instrument box', '', 'box', '116', '115', 3.0, 3.0, 3.0, 1, '<p>category=test/product=pencil<br></p>', '2024-03-26 10:44:19', 1, '0000-00-00 00:00:00', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `purchase_price` decimal(25,2) NOT NULL,
  `mrp` decimal(25,2) NOT NULL,
  `sprice` decimal(25,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `image_path` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `prod_id`, `size_id`, `purchase_price`, `mrp`, `sprice`, `stock`, `image_path`, `status`, `created_date`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 1, 1, 300.00, 100.00, 100.00, 2, 'products/product_images/books1711350296.jpg', 1, '2024-03-25 13:02:57', 1, '0000-00-00 00:00:00', 0),
(2, 2, 1, 100.00, 50.00, 50.00, 3, 'products/product_images/pen1711363594.jpg', 1, '2024-03-25 16:16:34', 1, '0000-00-00 00:00:00', 0),
(3, 3, 2, 50.00, 40.00, 40.00, 7, 'products/product_images/camel-pencil1711364215.jpeg', 1, '2024-03-25 16:26:55', 1, '0000-00-00 00:00:00', 0),
(4, 4, 1, 200.00, 100.00, 150.00, 7, 'products/product_images/book-leather1711364332.png', 1, '2024-03-25 16:28:52', 1, '0000-00-00 00:00:00', 0),
(5, 5, 2, 250.00, 200.00, 200.00, 8, 'products/product_images/instrument-box1711430059.jpg', 1, '2024-03-26 10:44:19', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prod_banners`
--

CREATE TABLE `prod_banners` (
  `id` int(11) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `banner_link` varchar(200) NOT NULL,
  `image_path` varchar(150) NOT NULL,
  `descrp` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prod_banners`
--

INSERT INTO `prod_banners` (`id`, `order_no`, `banner_link`, `image_path`, `descrp`, `status`, `created_date`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 1, '', 'products/banners/banner-1710849786.png', 'xcc', 1, '2024-03-19 17:33:06', 10, '2024-03-19 17:38:26', 10);

-- --------------------------------------------------------

--
-- Table structure for table `prod_category`
--

CREATE TABLE `prod_category` (
  `id` int(11) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `descrp` text NOT NULL,
  `image_path` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0->in-active; 1->active; -1->delete',
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `page_url` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prod_category`
--

INSERT INTO `prod_category` (`id`, `order_no`, `name`, `descrp`, `image_path`, `status`, `created_date`, `created_by`, `updated_on`, `updated_by`, `page_url`) VALUES
(1, 1, 'test', 'test', 'products/categories/test1710851205.jpg', -1, '2024-03-19 17:56:45', 10, '2024-03-19 17:59:18', 10, 'test'),
(2, 1, 'test', 'test', 'products/categories/test1710875795.png', -1, '2024-03-20 00:46:35', 10, '0000-00-00 00:00:00', 0, 'test-1'),
(3, 1, 'test', 'test', 'products/categories/test1710913783.jpg', 1, '2024-03-20 11:19:29', 10, '2024-03-20 11:19:55', 10, 'test-2'),
(4, 2, 'books', 'description for book', 'products/categories/books1711350296.jpg', 1, '2024-03-25 12:34:56', 1, '0000-00-00 00:00:00', 0, 'books'),
(5, 3, 'pencil', 'descpp', 'products/categories/pencil1711364120.jpeg', 1, '2024-03-25 16:25:20', 1, '0000-00-00 00:00:00', 0, 'pencil');

-- --------------------------------------------------------

--
-- Table structure for table `prod_prices`
--

CREATE TABLE `prod_prices` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `mrp` decimal(25,2) NOT NULL,
  `sprice` decimal(25,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prod_shipping`
--

CREATE TABLE `prod_shipping` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `price` decimal(25,2) NOT NULL COMMENT 'per bottle shipping cost',
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prod_sizes`
--

CREATE TABLE `prod_sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prod_sizes`
--

INSERT INTO `prod_sizes` (`id`, `name`, `status`, `created_date`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 'large', 1, '2024-03-25 12:37:40', 1, '0000-00-00 00:00:00', 0),
(2, 'small', 1, '2024-03-25 16:25:50', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prod_stock`
--

CREATE TABLE `prod_stock` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `clinic_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prod_subcateg`
--

CREATE TABLE `prod_subcateg` (
  `id` int(11) NOT NULL,
  `order_no` tinyint(4) NOT NULL,
  `categ_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0->in-active; 1->active; -1->delete',
  `created_date` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_on` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prod_subcateg`
--

INSERT INTO `prod_subcateg` (`id`, `order_no`, `categ_id`, `name`, `is_default`, `status`, `created_date`, `created_by`, `updated_on`, `updated_by`) VALUES
(1, 1, 1, 'N/A', 1, 1, '2024-03-19 17:56:45', 10, '0000-00-00 00:00:00', 0),
(2, 1, 2, 'N/A', 1, 1, '2024-03-20 00:46:35', 10, '0000-00-00 00:00:00', 0),
(3, 1, 3, 'N/A', 1, 1, '2024-03-20 11:19:29', 10, '0000-00-00 00:00:00', 0),
(4, 1, 4, 'N/A', 1, 1, '2024-03-25 12:34:56', 1, '0000-00-00 00:00:00', 0),
(5, 2, 4, 'poems', 0, 1, '2024-03-25 12:35:49', 1, '0000-00-00 00:00:00', 0),
(6, 1, 3, 'test sub', 0, 1, '2024-03-25 15:56:41', 1, '0000-00-00 00:00:00', 0),
(7, 1, 5, 'N/A', 1, 1, '2024-03-25 16:25:20', 1, '0000-00-00 00:00:00', 0),
(8, 3, 5, 'camel', 0, 1, '2024-03-25 16:25:39', 1, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_users`
--

CREATE TABLE `reg_users` (
  `pk_id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` char(10) NOT NULL,
  `dob` date DEFAULT NULL,
  `email_id` varchar(50) NOT NULL,
  `profile_path` varchar(500) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `verified_on` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `login_remarks` varchar(100) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `fcm_id` text NOT NULL,
  `google_id` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reg_users`
--

INSERT INTO `reg_users` (`pk_id`, `member_id`, `name`, `gender`, `dob`, `email_id`, `profile_path`, `phone_no`, `password`, `is_verified`, `verified_on`, `last_login`, `login_remarks`, `created_by`, `created_on`, `updated_by`, `updated_on`, `fcm_id`, `google_id`, `status`) VALUES
(1, 'WPM0000001', 'Pavan', 'male', '1995-09-15', 'pavan@savithru.com', '', '9000000001', '$2y$10$4KKlkL1ip5CPhsBDM/.s9uCtUpf3rLD9yrRzWyf.tz/SQvspQ1zEy', 1, '2024-01-27 18:27:31', '2024-03-14 14:04:35', 'Login Success !', 0, '2024-01-27 18:27:13', 0, '2024-03-14 14:04:35', 'testfcm', '116323892605211067077', 1),
(2, 'WPM0000002', 'Test User', '', '1970-01-01', 'uday@savithru.com', 'public/uploads/profile_image/WPPI649361961708086746077836400.png', '', '$2y$10$jaHMhbOG7ItzFwUGY7XUHuZ6rLOF2/ipgZVRPKb6yikjWJswBLM3C', 0, NULL, '2024-03-13 14:32:03', 'Login Success !', 0, '2024-01-27 18:40:24', 0, '2024-02-23 10:20:34', 'testfcm', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reset_requests`
--

CREATE TABLE `reset_requests` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `requested_on` timestamp NULL DEFAULT NULL,
  `expiration_on` timestamp NULL DEFAULT NULL,
  `reset_on` timestamp NULL DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reset_requests`
--

INSERT INTO `reset_requests` (`pk_id`, `user_id`, `requested_on`, `expiration_on`, `reset_on`, `is_active`) VALUES
(1, 1, '2024-01-24 15:57:45', '2024-01-24 16:27:45', NULL, 1),
(2, 1, '2024-01-24 16:30:10', '2024-01-24 17:00:10', '2024-01-24 16:30:39', 0),
(3, 2, '2024-01-27 18:54:17', '2024-01-27 19:24:17', NULL, 1),
(4, 1, '2024-02-02 23:26:56', '2024-02-02 23:56:56', NULL, 1),
(5, 1, '2024-02-09 17:23:52', '2024-02-09 17:53:52', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `pk_id` int(11) NOT NULL,
  `name_kan` varchar(50) NOT NULL,
  `name_eng` varchar(50) NOT NULL,
  `order_no` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`pk_id`, `name_kan`, `name_eng`, `order_no`, `type`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'ಬರಹ', 'baraha', 1, 'writing', 1, NULL, 1, NULL, 1),
(2, 'ಚಿತ್ರ', 'chitra', 1, 'picture', 1, NULL, 1, NULL, 1),
(3, 'ಆಡಿಯೋ', 'audio', 1, 'audio', 1, NULL, 1, NULL, 1),
(4, 'ಜ್ಞಾನ', 'knowledge', 1, 'writing', 1, NULL, 1, NULL, 1),
(5, 'ವಿಡಿಯೋ', 'video', 1, 'video', 1, NULL, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stickers`
--

CREATE TABLE `stickers` (
  `pk_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `points` float NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stickers`
--

INSERT INTO `stickers` (`pk_id`, `title`, `points`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'outstanding', 1000, 10, '2024-01-26 15:42:12', NULL, '2024-01-26 15:42:12', 1),
(2, 'fantastic', 500, 10, '2024-01-26 15:42:43', NULL, '2024-01-26 15:42:43', 1),
(3, 'honored', 250, 10, '2024-01-26 15:43:03', NULL, '2024-01-26 15:43:03', 1),
(4, 'appreciated', 100, 10, '2024-01-26 15:43:30', 10, '2024-01-26 17:21:07', 1),
(5, 'recognized', 50, 10, '2024-01-26 15:43:48', 10, '2024-01-26 17:02:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `pk_id` int(11) NOT NULL,
  `name_kan` varchar(50) NOT NULL,
  `name_eng` varchar(50) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`pk_id`, `name_kan`, `name_eng`, `image_path`, `category_id`, `section_id`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'ವ್ಯಾಕರಣ', 'grammar', 'public/uploads/subcategory_images//WPSCI735717063697300387283001706369730_5bcad72ae7f320822473.jpg', 1, 4, 10, '2024-01-26 04:50:59', 10, '2024-01-27 21:05:30', 1),
(2, '10 ದೈನಂದಿನ ಯೋಗ ಭಂಗಿಗಳು', '10 daily yoga poses', 'public/uploads/subcategory_images//WPSCI952217103056900892624001710305690_540765b625ec30417020.jpg', 2, 3, 10, '2024-03-13 10:24:50', NULL, '2024-03-13 10:24:50', 1),
(3, 'ಬಿಲ್ಲುಗಾರಿಕೆ', 'Archery', 'public/uploads/subcategory_images//WPSCI955517109969600978429001710996960_ad1ca4e3f19794e386a1.jpg', 5, 5, 10, '2024-03-21 10:26:00', NULL, '2024-03-21 10:26:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `pk_id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`pk_id`, `tag`, `created_on`, `created_by`, `status`) VALUES
(1, 'trending', '2024-02-23 09:08:53', 1, 1),
(2, 'new-post', '2024-02-23 09:08:53', 1, 1),
(3, 'motivational', '2024-02-23 09:08:53', 1, 1),
(4, 'inspirational', '2024-02-23 09:08:53', 1, 1),
(5, 'test-new newlogic', '2024-02-27 14:44:37', 1, 1),
(6, 'new-posting', '2024-02-27 16:22:22', 1, 1),
(7, ' new-article', '2024-02-27 16:22:22', 1, 1),
(8, ' new-post', '2024-02-27 16:23:40', 1, 1),
(11, 'grammar-tag', '2024-03-13 11:39:11', 2, 1),
(10, 'new-tag', '2024-02-27 16:32:15', 2, 1),
(12, 'audio-tag', '2024-03-19 17:21:14', 2, 1),
(13, 'sports-tag', '2024-03-21 10:33:43', 2, 1),
(14, 'video-post', '2024-03-21 10:33:43', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `pk_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`pk_id`, `name`, `username`, `role`, `password`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 'Admin', 'adminlandview@landviewreality.com', 'superadmin', '$2y$10$kh0t2lf3aHEjjJ.4d.oz0.ZzVmFNb1oQc8DXrsHYsHCuNwNA.Wcde', 0, NULL, 0, NULL, 1),
(10, 'Admin', 'admin@savithru.com', 'superadmin', '$2y$10$Gaxl.kkyk.Da5aXK0CitIuNR.WohpkOqc6GC35OsoPm.OUQFJe7KS', 0, NULL, 0, NULL, 1),
(11, 'Mahesh', 'test@savithru.com', 'relationship manager', '$2y$10$lNw1DcsTROaSpYkscxOf.OT2KnpkB2VzZbp4e/V/Jb1Ppdcz8CIXa', 0, NULL, 0, NULL, 1),
(12, 'Swamy', 'swamy@savithru.com', 'executive assistant', '$2y$10$NESu6Wpu7/5cLHNlqnAxG.pOSVFEeod.V97IdNcLYBGe8c4MKq4hm', 0, NULL, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_otp`
--

CREATE TABLE `users_otp` (
  `pk_id` int(11) NOT NULL,
  `otp` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `generation_on` timestamp NULL DEFAULT NULL,
  `expiration_on` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(4) NOT NULL DEFAULT 0,
  `verified_on` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users_otp`
--

INSERT INTO `users_otp` (`pk_id`, `otp`, `type`, `user_id`, `generation_on`, `expiration_on`, `is_verified`, `verified_on`) VALUES
(1, 507648, 'login', 1, '2024-01-17 12:18:53', '2024-01-17 12:28:53', 1, '2024-01-17 12:25:05'),
(2, 304129, 'login', 1, '2024-01-17 12:38:42', '2024-01-17 12:48:42', 1, '2024-01-17 12:40:28'),
(3, 490400, 'login', 2, '2024-01-23 15:10:41', '2024-01-23 15:20:41', 0, NULL),
(4, 861767, 'login', 2, '2024-01-23 15:30:24', '2024-01-23 15:40:24', 1, '2024-01-23 15:31:11'),
(5, 762892, 'login', 1, '2024-01-23 15:36:31', '2024-01-23 15:46:31', 1, '2024-01-23 15:37:49'),
(6, 646814, 'login', 2, '2024-01-23 16:02:37', '2024-01-23 16:12:37', 0, NULL),
(7, 189457, 'login', 2, '2024-01-23 16:15:10', '2024-01-23 16:25:10', 1, '2024-01-23 16:15:18'),
(8, 945005, 'login', 1, '2024-01-23 16:28:19', '2024-01-23 16:38:19', 1, '2024-01-23 16:29:00'),
(9, 902000, 'login', 1, '2024-01-24 15:54:43', '2024-01-24 16:04:43', 0, NULL),
(10, 325086, 'login', 1, '2024-01-27 18:22:57', '2024-01-27 18:32:57', 1, '2024-01-27 18:23:09'),
(11, 559605, 'login', 1, '2024-01-27 18:27:14', '2024-01-27 18:37:14', 1, '2024-01-27 18:27:31'),
(12, 228247, 'login', 2, '2024-01-27 18:40:25', '2024-01-27 18:50:25', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `pk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`pk_id`, `user_id`, `title`, `content`, `created_by`, `created_on`, `updated_by`, `updated_on`, `status`) VALUES
(1, 1, 'Account Created !', 'Your account created Successfully', 1, '2023-12-22 17:45:57', 1, NULL, 1),
(2, 1, 'Account Approved !', 'Your account has been Approved', 1, '2024-01-01 17:45:57', 1, NULL, 1),
(3, 1, 'New notification ', 'You have one more notification here...', 1, '2024-01-02 17:45:57', 1, NULL, 1),
(4, 2, 'Account Created !', 'Your account created Successfully', 1, '2023-12-22 17:45:57', 1, NULL, 1),
(5, 2, 'Account Approved !', 'Your account has been Approved', 1, '2024-01-01 17:45:57', 1, NULL, 1),
(6, 2, 'New notification ', 'You have one more notification here...', 1, '2024-01-02 17:45:57', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `z_template_tbl`
--

CREATE TABLE `z_template_tbl` (
  `pk_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '-1:Deleted, 0:Inactive, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_banners`
--
ALTER TABLE `ad_banners`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `collection_posts`
--
ALTER TABLE `collection_posts`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `debates`
--
ALTER TABLE `debates`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `debate_comments`
--
ALTER TABLE `debate_comments`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `my_collections`
--
ALTER TABLE `my_collections`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `post_ratings`
--
ALTER TABLE `post_ratings`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `post_viewcounts`
--
ALTER TABLE `post_viewcounts`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcateg_id` (`subcateg_id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Indexes for table `prod_banners`
--
ALTER TABLE `prod_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod_category`
--
ALTER TABLE `prod_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod_prices`
--
ALTER TABLE `prod_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `prod_shipping`
--
ALTER TABLE `prod_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prod_stock`
--
ALTER TABLE `prod_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`prod_id`),
  ADD KEY `clinic_id` (`clinic_id`);

--
-- Indexes for table `prod_subcateg`
--
ALTER TABLE `prod_subcateg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categ_id` (`categ_id`);

--
-- Indexes for table `reg_users`
--
ALTER TABLE `reg_users`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `reset_requests`
--
ALTER TABLE `reset_requests`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `stickers`
--
ALTER TABLE `stickers`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `users_otp`
--
ALTER TABLE `users_otp`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`pk_id`);

--
-- Indexes for table `z_template_tbl`
--
ALTER TABLE `z_template_tbl`
  ADD PRIMARY KEY (`pk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_banners`
--
ALTER TABLE `ad_banners`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `collection_posts`
--
ALTER TABLE `collection_posts`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `debates`
--
ALTER TABLE `debates`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `debate_comments`
--
ALTER TABLE `debate_comments`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `my_collections`
--
ALTER TABLE `my_collections`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_ratings`
--
ALTER TABLE `post_ratings`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_viewcounts`
--
ALTER TABLE `post_viewcounts`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prod_banners`
--
ALTER TABLE `prod_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prod_category`
--
ALTER TABLE `prod_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prod_prices`
--
ALTER TABLE `prod_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prod_shipping`
--
ALTER TABLE `prod_shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prod_sizes`
--
ALTER TABLE `prod_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prod_stock`
--
ALTER TABLE `prod_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prod_subcateg`
--
ALTER TABLE `prod_subcateg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reg_users`
--
ALTER TABLE `reg_users`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reset_requests`
--
ALTER TABLE `reset_requests`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stickers`
--
ALTER TABLE `stickers`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_otp`
--
ALTER TABLE `users_otp`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `z_template_tbl`
--
ALTER TABLE `z_template_tbl`
  MODIFY `pk_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
