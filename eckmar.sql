-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 05:58 PM
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
-- Database: `eckmar`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator_logs`
--

CREATE TABLE `administrator_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'performed_on',
  `type` varchar(65) NOT NULL,
  `description` varchar(255) NOT NULL,
  `user` varchar(65) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrator_logs`
--

INSERT INTO `administrator_logs` (`id`, `user_id`, `type`, `description`, `user`, `created_at`, `updated_at`) VALUES
(9, 4, 'Update', 'User Wallet Updated', 'etown', '2023-05-30 04:18:08', '2023-05-30 04:18:08'),
(10, 4, 'Update', 'Mirror Link Updated', 'Admin', '2023-05-31 05:39:46', '2023-05-31 05:39:46'),
(11, 4, 'Update', 'Mirror Link Updated', 'Admin', '2023-05-31 05:39:56', '2023-05-31 05:39:56'),
(12, 4, 'Update', 'Product [demo2] updated owned by shamim777', 'Admin', '2023-06-20 10:27:45', '2023-06-20 10:27:45'),
(13, 4, 'Update', 'Product [demo2] updated owned by shamim777', 'Admin', '2023-06-20 10:27:58', '2023-06-20 10:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `ban_users`
--

CREATE TABLE `ban_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `end_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ban_users`
--

INSERT INTO `ban_users` (`id`, `user_id`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 13, '2023-05-08 09:18:09', '2023-05-03 09:18:09', '2023-05-03 09:18:09'),
(2, 1, '2023-05-10 11:41:29', '2023-05-09 11:41:29', '2023-05-09 11:41:29'),
(3, 14, '2023-05-15 08:47:57', '2023-05-12 08:47:57', '2023-05-12 08:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
  `name` varchar(144) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'znqwqde', '2023-01-16 18:04:31', '2023-01-24 17:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(144) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `order_count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `status`, `order_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Instant Keys', 'instant-keys', NULL, 1, NULL, '2023-01-18 10:56:02', '2023-01-18 10:56:02', NULL),
(13, 'Xbox / Playstation / Nintendo Games', 'xbox/playstation/nintendo-games', 12, 1, NULL, '2023-01-18 10:56:21', '2023-01-18 10:56:21', NULL),
(14, 'Steam Games', 'steam-games', 12, 1, NULL, '2023-01-18 10:56:33', '2023-01-18 10:56:33', NULL),
(15, 'Battle.net Games', 'battle.net-games', 12, 1, NULL, '2023-01-18 10:56:44', '2023-01-18 10:56:44', NULL),
(16, 'Origin Games', 'origin-games', 12, 1, NULL, '2023-01-18 10:56:58', '2023-01-18 10:56:58', NULL),
(17, 'Ubisoft Games', 'ubisoft-games', 12, 1, NULL, '2023-01-18 10:57:06', '2023-01-18 10:57:06', NULL),
(18, 'GOG Games', 'gOg-games', 12, 1, 3, '2023-01-18 10:57:18', '2023-06-15 00:08:30', NULL),
(19, 'Epic Games', 'epic-games', 12, 1, NULL, '2023-01-18 10:57:25', '2023-01-18 10:57:25', NULL),
(20, 'Other Games', 'other-games', 12, 1, 24, '2023-01-18 10:57:34', '2023-04-02 04:38:14', NULL),
(21, 'Currencies & Points', 'currencies-&-points', 12, 1, NULL, '2023-01-18 10:57:43', '2023-01-18 10:57:43', NULL),
(22, 'Software', 'software', 12, 1, NULL, '2023-01-18 10:57:50', '2023-01-18 10:57:50', NULL),
(23, 'tutorial/guide/ebook', 'tutorial/guide/ebook', NULL, 1, NULL, '2023-01-18 10:58:06', '2023-01-18 10:58:06', NULL),
(24, 'hacking', 'hacking', 23, 1, NULL, '2023-01-18 10:58:18', '2023-01-18 10:58:18', NULL),
(25, 'cracking', 'cracking', 23, 1, NULL, '2023-01-18 10:58:25', '2023-01-18 10:58:25', NULL),
(26, 'Carding', 'carding', 23, 1, NULL, '2023-01-18 10:58:32', '2023-01-18 10:58:32', NULL),
(27, 'securiry', 'securiry', 23, 1, NULL, '2023-01-18 10:58:40', '2023-01-18 10:58:40', NULL),
(28, 'other', 'other', 23, 1, NULL, '2023-01-18 10:58:50', '2023-01-18 10:58:50', NULL),
(29, 'software/malware', 'software/malware', NULL, 1, NULL, '2023-01-18 10:59:03', '2023-01-18 10:59:03', NULL),
(30, 'legit softwares', 'legit-softwares', 29, 1, NULL, '2023-01-18 10:59:14', '2023-01-18 10:59:14', NULL),
(31, 'scripts', 'scripts', NULL, 1, NULL, '2023-01-18 10:59:35', '2023-01-18 10:59:35', NULL),
(32, 'html & ccs', 'html-&-ccs', 31, 1, NULL, '2023-01-18 10:59:45', '2023-01-18 10:59:45', NULL),
(33, 'php', 'php', 31, 1, NULL, '2023-01-18 10:59:53', '2023-01-18 10:59:53', NULL),
(34, 'python', 'python', 31, 1, NULL, '2023-01-18 11:00:02', '2023-01-18 11:00:02', NULL),
(35, 'C++', 'c++', 31, 1, NULL, '2023-01-18 11:00:12', '2023-01-18 11:00:12', NULL),
(36, 'others', 'others', 31, 1, NULL, '2023-01-18 11:00:20', '2023-01-18 11:00:20', NULL),
(37, 'hacking tool', 'hacking-tool', 29, 1, NULL, '2023-01-18 11:00:44', '2023-01-18 11:00:44', NULL),
(38, 'cracking tool', 'cracking-tool', 29, 1, NULL, '2023-01-18 11:00:51', '2023-01-18 11:00:51', NULL),
(39, 'otherss', 'otherss', 29, 1, NULL, '2023-01-18 11:01:39', '2023-01-18 11:01:39', NULL),
(40, 'othersss', 'othersss', 12, 1, NULL, '2023-01-18 11:01:52', '2023-01-18 11:01:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency_rate`
--

CREATE TABLE `currency_rate` (
  `id` int(11) NOT NULL,
  `currancy_type` varchar(15) DEFAULT NULL,
  `rate` float NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `currency_rate`
--

INSERT INTO `currency_rate` (`id`, `currancy_type`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'btc', 0.000044, NULL, NULL),
(2, 'xmr', 0.0057, NULL, NULL),
(3, 'dogo', 161910000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `winner` varchar(255) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `support_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disputes`
--

INSERT INTO `disputes` (`id`, `winner`, `message`, `customer_id`, `support_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Found some problem in this item', 7, NULL, 6, '2023-03-20 00:15:33', '2023-03-20 00:15:33'),
(2, NULL, 'hfjh', 7, NULL, 6, '2023-03-20 10:10:28', '2023-03-20 10:10:28'),
(3, NULL, 'dasdf', 7, NULL, 6, '2023-03-20 22:16:21', '2023-03-20 22:16:21'),
(4, NULL, 'eee', 7, NULL, 6, '2023-03-20 22:17:35', '2023-03-20 22:17:35'),
(5, NULL, 'asdfsa', 7, NULL, 6, '2023-03-20 22:18:32', '2023-03-20 22:18:32'),
(6, NULL, 'asdfasfddddddddddddddddddddddddd', 7, NULL, 6, '2023-03-20 22:18:55', '2023-03-20 22:18:55'),
(7, NULL, 'ss', 7, NULL, 6, '2023-03-20 22:19:24', '2023-03-20 22:19:24'),
(8, NULL, 'What kind of error you found?', NULL, 6, 6, '2023-03-21 04:32:04', '2023-03-21 04:32:04'),
(9, NULL, 'hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii...........................................................................................................', NULL, 6, 6, '2023-04-03 03:17:13', '2023-04-03 03:17:13'),
(10, NULL, 'test', 1, NULL, 5, '2023-04-08 22:43:53', '2023-04-08 22:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_15_142822_create_orders_table', 2),
(6, '2023_03_20_053405_create_disputes_table', 3),
(7, '2023_03_24_145758_create_order_feedback_table', 4),
(8, '2023_01_07_045759_create_wishlists_table', 5),
(9, '2023_03_29_232854_create_news_table', 6),
(10, '2023_03_29_233416_create_mirror_links_table', 7),
(11, '2023_04_10_044850_create_withdraw_table', 8),
(13, '2023_05_01_065125_create_bans_table', 9),
(14, '2023_05_03_012526_create_ban_users_table', 10),
(15, '2023_05_14_232837_create_administrator_logs_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `mirror_links`
--

CREATE TABLE `mirror_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(144) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mirror_links`
--

INSERT INTO `mirror_links` (`id`, `link`, `title`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'http://abacuseeettcn3n2zxo7tqy5vsxhqpha2jtjqs7cgdjzl2jascr4liad.onion/', 'Abacus', NULL, '2023-03-31 23:09:29', '2023-03-31 23:09:29'),
(2, 'test2.com', 'Juntree Siriboonrod \'s 106th Birthday', NULL, '2023-03-31 23:11:34', '2023-05-31 05:39:56'),
(4, 'test.com', 'tttttrrrrrrr', NULL, '2023-03-31 23:49:47', '2023-05-31 05:39:46');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` mediumtext NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for vendor 0 for marketplace',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `header`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Updated Servers', 0, '2023-03-30 00:17:11', '2023-03-30 00:17:11'),
(2, 'DDos Attack Servers Will Be Update Soon', 0, '2023-03-30 00:17:28', '2023-03-30 00:17:28'),
(3, 'Dash Added', 0, '2023-03-30 00:17:39', '2023-03-30 00:17:39'),
(4, 'Doge Added', 0, '2023-03-30 00:17:48', '2023-03-30 00:17:48'),
(6, 'DDos Attack Servers Will Be Update Soon', 1, '2023-03-30 03:57:59', '2023-03-30 03:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_order_id` varchar(17) DEFAULT NULL,
  `currency` varchar(15) DEFAULT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for processing, 1 for complete, 2 for delivered, 3 for disputes and 4 = cancelled',
  `product_qty` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `custom_order_id`, `currency`, `total_amount`, `status`, `product_qty`, `product_id`, `customer_id`, `seller_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '#29884', 'dogo', 0, 1, 1, 3, 8, 1, '2023-03-17 07:19:39', '2023-03-17 07:19:39', NULL),
(2, '#83263', 'btc', 0, 4, 1, 1, 8, 1, '2023-03-17 07:24:48', '2023-03-17 07:24:48', NULL),
(5, '#77461', 'btc', 0, 0, 1, 2, 7, 6, '2023-03-18 21:52:43', '2023-05-13 22:38:21', NULL),
(6, '#19408', 'btc', 0, 1, 1, 1, 7, 1, '2023-03-19 02:47:16', '2023-03-19 04:21:18', NULL),
(7, '#32949', 'btc', 0, 1, 1, 2, 1, 6, '2023-03-25 02:55:09', '2023-03-25 02:55:09', NULL),
(8, '#12010', 'btc', 0, 1, 1, 1, 7, 1, '2023-03-25 03:09:11', '2023-03-25 03:09:11', NULL),
(9, '#60972', 'btc', 0, 4, 3, 2, 1, 6, '2023-03-25 23:28:19', '2023-04-05 09:36:38', NULL),
(10, '#32427', 'btc', 0, 1, 1, 2, 7, 6, '2023-02-15 21:39:38', '2023-04-08 22:22:42', NULL),
(11, '#38566', 'dollar', 0, 1, 1, 2, 8, 6, '2023-04-01 02:59:50', '2023-04-08 22:22:28', NULL),
(12, '#69169', 'dollar', 0, 4, 1, 1, 7, 1, '2023-04-10 18:00:00', '2023-04-05 09:37:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_feedback`
--

CREATE TABLE `order_feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_positive` int(4) NOT NULL DEFAULT 0,
  `review_neutral` int(11) DEFAULT 0,
  `review_negative` int(11) DEFAULT 0,
  `quality_review` tinyint(4) NOT NULL DEFAULT 5,
  `shipping_review` tinyint(4) NOT NULL DEFAULT 5,
  `feedback_message` text DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_feedback`
--

INSERT INTO `order_feedback` (`id`, `review_positive`, `review_neutral`, `review_negative`, `quality_review`, `shipping_review`, `feedback_message`, `product_id`, `customer_id`, `seller_id`, `order_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 0, 0, 5, 5, 'Good Product', 1, 8, 1, 7, '2023-03-25 02:49:25', '2023-03-25 02:56:22', NULL),
(2, 1, 0, 0, 5, 4, 'Good Product but Delivery System is slow.', 3, 8, 1, 1, '2023-03-25 02:54:23', '2023-03-25 02:54:23', NULL),
(3, 3, 0, 0, 5, 5, 'Really good product. Second time I buy this item.', 1, 7, 1, 8, '2023-03-25 03:12:17', '2023-03-25 03:12:17', NULL),
(4, 4, 1, 0, 4, 4, 'test data', 1, 7, 1, 8, '2023-04-01 03:43:07', '2023-04-01 03:43:07', NULL),
(5, 4, 2, 0, 5, 5, 'sadaasdfasdfas', 1, 7, 1, 6, '2023-04-02 04:37:50', '2023-04-02 04:37:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `auto_delivery` tinyint(4) DEFAULT 0,
  `delivery_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 for manual, 2 for unlimited, 3 auto_delivery, 4 for service',
  `unlimited` tinyint(4) DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `order_count` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `detail`, `content`, `image`, `qty`, `price`, `auto_delivery`, `delivery_type`, `unlimited`, `status`, `category_id`, `seller_id`, `order_count`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Amazon Gift Card', 'amazon-gift-card', 'Gift Card is redeemable towards purchase of millions of eligible goods and services provided by Amazon.com Services LLC and its affiliates on www.amazon.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2023-02-05_173521.jpg', 34, 32.00, 1, 1, 1, 1, 20, 1, 26, '2023-02-05 17:22:15', '2023-04-02 04:38:14', NULL),
(2, 'Apple Gift Card', 'apple-gift-card', 'Apple Gift Cards are solely for the purchase of goods and services from the Apple Store, the Apple Store app, apple.com, the App Store, iTunes, Apple Music', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,', '2023-02-05_173753.png', 29, 77.00, 1, 1, 1, 1, 18, 6, 2, '2023-02-05 17:23:33', '2023-06-15 00:08:30', NULL),
(3, 'kay', 'kay-148', 'Lorem ipsum dollar summit', 'tyytyt', '2023-02-05_173521.jpg', 45, 53.00, 0, 1, 1, 1, 40, 1, 1, '2023-02-06 21:08:12', '2023-05-18 04:21:24', '2023-05-18 04:21:24'),
(4, 'kay', 'kay-381', 'tyryyty', 'tyytyt', '2023-02-05_173521.jpg', 45, 53.00, 1, 1, 0, 1, 40, 1, 1, '2023-02-06 21:08:12', '2023-04-19 22:43:35', NULL),
(5, 'demo2', 'demo2', 'fffffffffffffffffffffffffffffffffffff', 'dddddddddddddddd\r\nfffffffffffffffffffffff\r\neeeeeeeeeeee', '2023-06-16_040732.png', 3, 77.00, 0, 3, 0, 1, 40, 1, 0, '2023-06-15 22:07:32', '2023-06-20 10:27:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1= Active , 2= Complite',
  `user_id` int(11) DEFAULT NULL,
  `review_star` int(11) DEFAULT NULL,
  `review_message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `cat_id`, `status`, `user_id`, `review_star`, `review_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 3, 5, 'They are well active', '2024-09-26 09:20:54', '2024-09-26 09:51:33', NULL),
(2, 2, 2, 3, 2, 'lol', '2024-09-26 10:06:05', '2024-09-27 02:46:58', NULL),
(3, 1, 1, 3, NULL, NULL, '2024-09-27 02:50:10', '2024-09-27 02:50:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_categorys`
--

CREATE TABLE `ticket_categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_categorys`
--

INSERT INTO `ticket_categorys` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Technical', NULL, NULL, NULL, NULL),
(2, 'Others', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `reply_id` int(11) DEFAULT 0 COMMENT '0= Customer Message 1 = Company Reply',
  `read` int(11) NOT NULL DEFAULT 0 COMMENT '0=read, 1= unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `message`, `images`, `reply_id`, `read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Hi', NULL, 0, 1, '2024-09-26 15:21:59', '2024-09-26 09:21:59', NULL),
(2, 1, 'hello', NULL, 2, 0, '2024-09-26 09:37:25', '2024-09-26 09:37:25', NULL),
(3, 1, 'I found some problems!', NULL, 0, 1, '2024-09-26 15:40:24', '2024-09-26 09:40:24', NULL),
(4, 1, 'can you tell me details about the problem?', NULL, 0, 1, '2024-09-26 15:42:34', '2024-09-26 09:42:34', NULL),
(5, 1, 'Details please', NULL, 2, 0, '2024-09-26 09:43:28', '2024-09-26 09:43:28', NULL),
(6, 2, 'Good night', NULL, 0, 1, '2024-09-26 16:06:24', '2024-09-26 10:06:24', NULL),
(7, 2, 'good morning', NULL, 2, 0, '2024-09-26 22:01:53', '2024-09-26 22:01:53', NULL),
(8, 3, 'LOL', NULL, 0, 1, '2024-09-27 13:59:37', '2024-09-27 07:59:37', NULL),
(9, 3, 'How can i help you sir?', NULL, 2, 0, '2024-09-27 08:00:06', '2024-09-27 08:00:06', NULL),
(10, 3, 'I found some problem!', NULL, 0, 1, '2024-09-27 14:01:17', '2024-09-27 08:01:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` text DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '	0=user, 1=vendor, 2=support, 3=admin',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `dob`, `type`, `username`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'shamim777', NULL, NULL, 1, 'shamim777', '$2y$10$eo3ie04vTGlGYSmoUOrBkuqDmhF1jo4IzBeQO0M9p8A5N5jiw26WW', NULL, '2022-12-26 11:40:58', '2023-06-15 00:34:32', NULL),
(2, 'ayan999', NULL, NULL, 3, 'ayan999', '$2y$10$4vqw.5EUkU2UaOIh/tRvB.omh7Ki5OqQSKPXpWOK44f1/iJ0FF4RW', NULL, '2022-12-28 17:03:04', '2023-06-05 04:18:28', NULL),
(3, 'shamim.softe@gmail.com', NULL, NULL, 0, 'shamim.softe@gmail.com', '$2y$10$4vqw.5EUkU2UaOIh/tRvB.omh7Ki5OqQSKPXpWOK44f1/iJ0FF4RW', NULL, '2024-09-26 04:31:13', '2024-09-26 04:31:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_type` varchar(25) DEFAULT NULL,
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `tax` int(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `address`, `currency_code`, `currency_type`, `balance`, `tax`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, NULL, 0.00, NULL, '2023-01-22 07:00:08', '2023-01-22 07:00:08'),
(2, 1, NULL, NULL, NULL, 310.00, 10, '2023-01-23 19:19:57', '2023-05-09 11:17:34'),
(5, 3, NULL, NULL, NULL, 120.00, NULL, '2023-02-01 23:03:36', NULL),
(6, 6, NULL, NULL, NULL, 40.00, NULL, NULL, '2023-02-01 17:08:00'),
(7, 4, NULL, NULL, NULL, 0.00, NULL, NULL, NULL),
(8, 5, NULL, NULL, NULL, 20.00, NULL, '2023-03-16 04:03:22', NULL),
(9, 7, NULL, NULL, NULL, 368.00, NULL, '2023-03-15 23:49:39', '2023-05-27 04:40:34'),
(10, 8, NULL, NULL, NULL, 7036.00, NULL, '2023-03-16 00:02:22', '2023-04-05 09:36:08'),
(11, 9, NULL, NULL, NULL, 0.00, NULL, '2023-03-16 00:16:51', '2023-03-16 00:16:51'),
(12, 10, NULL, NULL, NULL, 18.00, NULL, '2023-03-16 00:18:15', '2023-03-16 09:14:23'),
(13, 11, NULL, NULL, NULL, 0.00, NULL, '2023-03-16 00:33:14', '2023-03-16 00:33:14'),
(14, 12, NULL, NULL, NULL, 0.00, NULL, '2023-03-16 00:35:15', '2023-03-16 00:35:15'),
(15, 13, NULL, NULL, NULL, 10.00, NULL, '2023-04-03 03:42:32', '2023-05-03 11:05:59'),
(16, 14, NULL, NULL, NULL, 0.00, NULL, '2023-04-03 04:15:06', '2023-04-03 04:15:06'),
(17, 15, NULL, NULL, NULL, 1000.00, NULL, '2023-05-27 17:09:11', '2023-05-30 04:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `open_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 for complete 0 for pending',
  `amount_type` varchar(255) DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `amount`, `status`, `amount_type`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 10.00, 0, 'dollar', 1, '2023-04-09 23:28:27', '2023-04-09 23:28:27'),
(2, 30.00, 0, 'dollar', 1, '2023-04-09 23:29:29', '2023-04-09 23:29:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator_logs`
--
ALTER TABLE `administrator_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ban_users`
--
ALTER TABLE `ban_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_rate`
--
ALTER TABLE `currency_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mirror_links`
--
ALTER TABLE `mirror_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_product_id_foreign` (`product_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `order_feedback`
--
ALTER TABLE `order_feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_feedback_product_id_foreign` (`product_id`),
  ADD KEY `order_feedback_customer_id_foreign` (`customer_id`),
  ADD KEY `order_feedback_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_categorys`
--
ALTER TABLE `ticket_categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`),
  ADD KEY `wishlists_open_by_foreign` (`open_by`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_vendor_id_foreign` (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator_logs`
--
ALTER TABLE `administrator_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ban_users`
--
ALTER TABLE `ban_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `currency_rate`
--
ALTER TABLE `currency_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `mirror_links`
--
ALTER TABLE `mirror_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_feedback`
--
ALTER TABLE `order_feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket_categorys`
--
ALTER TABLE `ticket_categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `orders_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_feedback`
--
ALTER TABLE `order_feedback`
  ADD CONSTRAINT `order_feedback_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_feedback_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_feedback_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_open_by_foreign` FOREIGN KEY (`open_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD CONSTRAINT `withdraw_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
