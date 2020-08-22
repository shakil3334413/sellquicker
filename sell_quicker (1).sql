-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2019 at 09:56 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sell_quicker`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'admin', 'admin@admin.com', '', '$2y$10$Se0eJz2ztRic8lLE.8XQj.VYNfJEPqBKqenIDmP6bAbV5z1rkzdyW', NULL, '2019-06-12 05:03:11', NULL),
(3, 'iqbal', 'jniqbal1@gmail.com', '', '$2y$10$4XoUPNQr5jRME585dt/wKusvbvehM0e9DGC0mYYvrXfMp62BvOHv.', NULL, '2019-06-24 00:37:42', '2019-06-24 00:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `brand_logo`, `status`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Nokia', 'sdfsd dfssdf', NULL, 1, 3, '2019-07-08 09:43:24', '2019-07-08 09:43:24'),
(2, 'HP', NULL, 'uploads/brand_logo/1562600742.jpg', 1, NULL, '2019-07-08 09:45:42', '2019-07-08 09:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `category_image`, `status`, `slug`, `position`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'web development', 'sdf sdf dsf', 'uploads/categroy/1562041555.jpg', 1, 'web-development', 1, 3, '2019-07-01 22:25:55', '2019-07-01 22:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Iqbal Ahmed Tuhin', 'ammin@admin.com', 'sdfds', 'dsfsdf', '', '2019-04-01 11:30:14', '2019-04-01 11:30:14'),
(2, 'Iqbal Ahmed Tuhin', 'wid@wid.com', 'sdfsdf', 'sfsdfsdf', '', '2019-04-02 04:37:14', '2019-04-02 04:37:14'),
(3, 'Iqbal Ahmed Tuhin', 'ammin@admin.com', '45345435', 'Accounting Software Screenshot', 'sdfsf sdfsdfsdf', '2019-04-07 07:20:43', '2019-04-07 07:20:43'),
(4, 'Iqbal Ahmed Tuhin', 'ammin@admin.com', '45345435', 'Accounting Software Screenshot', 'sdfsdfsdf', '2019-04-07 07:21:32', '2019-04-07 07:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_industry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_funcation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_last_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education_qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exprience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_website_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menuses`
--

CREATE TABLE `menuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menuses`
--

INSERT INTO `menuses` (`id`, `menu`, `slug`, `position`, `order`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Home', '/', 1, 1, 1, '2019-03-31 21:59:42', '2019-04-11 04:40:58'),
(3, 'Research', 'research', 0, 4, 1, '2019-04-04 05:30:27', '2019-04-11 04:43:24'),
(4, 'Our Team', 'our-team', 0, 3, 1, '2019-04-04 05:30:39', '2019-04-04 05:30:39'),
(5, 'About Us', 'about-us', 0, 2, 1, '2019-04-04 05:30:53', '2019-04-11 04:43:10'),
(6, 'Gallery', 'gallery', 0, 5, 1, '2019-04-04 05:31:04', '2019-04-04 05:31:04'),
(7, 'News', 'news', 0, 7, 1, '2019-04-04 05:31:11', '2019-04-04 05:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_07_01_051427_create_doctors_table', 1),
(2, '2019_07_02_043351_create_blogs_table', 1),
(3, '2019_07_07_062347_create_brands_table', 2),
(4, '2019_07_09_145022_create_product_attrubates_table', 3),
(5, '2019_09_02_102728_create_sell_services_table', 4),
(6, '2019_09_07_155126_create_rent_apartment_flats_table', 4),
(7, '2019_09_15_194459_create_jobs_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_category` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `tag_sale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1 = sale,hot=2,new =3',
  `product_feature` int(11) DEFAULT NULL,
  `in_stock` tinyint(4) NOT NULL DEFAULT '1',
  `is_slide` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `slug`, `product_category`, `description`, `image`, `price`, `sale_price`, `tag_sale`, `product_feature`, `in_stock`, `is_slide`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Napa extra', '', 1, 'gj jkh kh jk', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '123.00', '32.00', NULL, NULL, 1, 1, 1, '2019-06-30 02:55:13', '2019-06-30 02:55:13'),
(11, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '23.00', '32.00', '2', 1, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(12, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '23.00', '32.00', '2', 1, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(13, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '23.00', '32.00', '3', 1, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(14, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '23.00', '32.00', '2', 1, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(15, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '23.00', '32.00', '1', 2, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(16, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '23.00', '32.00', '3', 1, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(17, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '2', 3, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(18, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '1', 4, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(19, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '1', 4, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(20, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '3', 3, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(21, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '3', 4, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(22, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '2', 4, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(23, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '1', 2, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(24, 'Napa', '', 1, 'fdsdfsdcvxv', 'uploads/books/napa.jpg', '23.00', '32.00', '3', 4, 1, 0, 1, '2019-06-30 04:06:57', '2019-06-30 05:17:21'),
(25, 'HP 2018', '', 1, 'sdfsfs fds', '[\"5ce0d76221734_thumb900.jpg\",\"2019-05-16_023436.jpg\",\"2019-05-16_023436.png\"]', '11.00', '345.00', '1', 1, 1, 0, 1, '2019-07-08 10:57:51', '2019-07-08 10:57:51'),
(26, 'erwrw', '', 2, 'sdfdfdsf', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '11.00', '345.00', '1', 2, 1, 0, 1, '2019-07-08 11:36:47', '2019-07-08 11:36:47'),
(27, 'laptop', '', 1, 'sdfs sdf df', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '11.00', '345.00', '1', 1, 1, 0, 1, '2019-07-08 11:38:46', '2019-07-08 11:38:46'),
(28, 'router', '', 2, 'dfsd dsfs', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '11.00', '345.00', '1', 1, 1, 0, 1, '2019-07-08 11:42:25', '2019-07-08 11:42:25'),
(29, 'HP 2018', '', 2, 'sfdsdf', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '11.00', '345.00', '1', 2, 1, 0, 1, '2019-07-08 11:43:07', '2019-07-08 11:43:07'),
(30, 'HP 2018', '', 1, 'sdfsdfsdf', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '11.00', '345.00', NULL, 1, 1, 0, 1, '2019-07-08 11:44:19', '2019-07-08 11:44:19'),
(31, 'HP 2018', '', 3, 'sdfsdf', 'uploads/product/3\\5ce0d76221734_thumb900.jpg,uploads/product/3\\2019-05-16_023436.jpg,uploads/product/3\\2019-05-16_023436.png', '11.00', '345.00', '1', 1, 1, 0, 1, '2019-07-08 11:47:42', '2019-07-08 11:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_attrubates`
--

CREATE TABLE `product_attrubates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_stoke` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attrubates`
--

INSERT INTO `product_attrubates` (`id`, `product_id`, `product_size`, `sku`, `product_color`, `product_stoke`, `product_price`, `created_at`, `updated_at`) VALUES
(1, 10, 'l', '1', 'red', '333', 546, '2019-07-09 11:57:36', '2019-07-09 11:57:36'),
(2, 10, 'm', '2', 'grwwn', '100', 345, '2019-07-09 11:57:36', '2019-07-09 11:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_name`, `parent_id`, `category_description`, `category_image`, `slug`, `status`, `position`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', NULL, 'Find great deals for used electronics in Bangladesh including mobile phones, computers, laptops, TVs, cameras and much more.', NULL, 'electronics', 1, 1, 2, '2019-09-07 11:51:28', '2019-09-07 11:51:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_features`
--

CREATE TABLE `product_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `features_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features_description` text COLLATE utf8mb4_unicode_ci,
  `features_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_features`
--

INSERT INTO `product_features` (`id`, `features_name`, `features_description`, `features_image`, `status`, `position`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'New Products', 'dsfsd sdfsdfd', 'uploads/product/features/1561888307.jpg', 1, 1, 3, '2019-06-30 03:51:47', '2019-06-30 03:51:47'),
(2, 'Hot deals', 'fgdsgf sdf dsfsdf', NULL, 1, 2, 3, '2019-07-03 22:46:51', '2019-07-03 22:46:51'),
(3, 'Special Offer', 'df sdf', NULL, 1, 3, 3, '2019-07-03 22:47:16', '2019-07-03 22:47:16'),
(4, 'Featured Products', 'dsfsdfsdf', NULL, 1, 4, 3, '2019-07-03 22:47:28', '2019-07-03 22:47:28');

-- --------------------------------------------------------

--
-- Table structure for table `rent_apartment_flats`
--

CREATE TABLE `rent_apartment_flats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `beds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baths` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `na` int(11) DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `discription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_apartment_flats`
--

INSERT INTO `rent_apartment_flats` (`id`, `user_id`, `image`, `beds`, `location`, `features`, `baths`, `size`, `title`, `address`, `price`, `na`, `phone`, `status`, `discription`, `created_at`, `updated_at`) VALUES
(1, 2, 'uploads/ads\\1568568777.2.jpg,uploads/ads\\1568568777.2.png', '2', NULL, 'Full-Furnished,Semi-Furnished', '3', '45', 'Find rewarding projects', 'Baitul Aman Tower, 840-841 Ring Road, Adabar, Dhaka', '11', NULL, '01864525018', 0, 'dsfsdfsd', '2019-09-15 11:32:57', '2019-09-15 11:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `sell_services`
--

CREATE TABLE `sell_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authenticity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `na` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_services`
--

INSERT INTO `sell_services` (`id`, `user_id`, `image`, `condition`, `location`, `brand`, `model`, `edition`, `features`, `description`, `authenticity`, `price`, `na`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(2, 2, 'uploads/ads\\1.png', 'used', 'Mirpur', 'Samsung', 'Samsung', 'Good', 'bluetooth,camera,Fingerprint Sensor,gps', 'dfsfd df  fsdf uop', 'original', '2113', NULL, NULL, 1, '2019-09-14 08:11:03', '2019-09-15 10:42:36'),
(3, 2, 'uploads/ads\\1 (1).jpg,uploads/ads\\1.png', 'used', '', 'MI', 'MI', 'Good', 'bluetooth,camera,Dual-Lens Camera,Fingerprint Sensor,physical keyboard', 'fvfdfsdf', 'original', '11', NULL, NULL, 0, '2019-09-14 08:19:02', '2019-09-14 08:19:02'),
(4, 2, 'uploads/ads\\1568470833.jpg,uploads/ads\\1568470833.png', 'used', '', 'MI', 'MI', 'Good', 'bluetooth,camera,Fingerprint Sensor,gps', 'dsfsdf', 'original', '11', NULL, NULL, 0, '2019-09-14 08:20:33', '2019-09-14 08:20:33'),
(5, 2, 'uploads/ads\\1568470921.2.png', 'used', '', 'MI', 'MI', 'sklfdj', 'bluetooth,camera,Fingerprint Sensor,gps', 'dfsfsdfsf', 'original', '343', NULL, NULL, 0, '2019-09-14 08:22:01', '2019-09-14 08:22:01'),
(6, 2, 'uploads/ads\\1568478092.2.jpg,uploads/ads\\1568478092.2.png,uploads/ads\\1568478092.2.png', 'new', 'Mirpur', 'Samsung', 'MI', NULL, 'bluetooth,camera,Dual-Lens Camera,Fingerprint Sensor', 'fdsfsdf sdf', 'refurbished', '3434', NULL, NULL, 0, '2019-09-14 10:21:32', '2019-09-14 10:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `slug`, `image`, `link`, `status`, `position`, `created_at`, `updated_at`) VALUES
(2, 'Change Maker Name', 'Change Maker Name Change Maker Name Change Maker Name Change Maker Name', 'test-slider-1', 'uploads/website/slider/dhaka.jpg', 'gdretewt', 1, 5, '2019-03-31 22:48:32', '2019-06-26 02:25:43'),
(3, 'Change Maker Name', 'Change Maker Name Change Maker Name Change Maker Name Change Maker Name', 'change-maker-name', 'uploads/website/slider/dhakacast.jpg', 'gdgffssdf', 1, 2, '2019-06-26 02:34:03', '2019-06-26 02:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `submenus`
--

CREATE TABLE `submenus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submenu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submenus`
--

INSERT INTO `submenus` (`id`, `submenu`, `menu_id`, `slug`, `position`, `order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Our Courses', 2, 'our-courses', 1, 7, 1, '2019-06-09 05:20:22', '2019-06-09 05:55:12'),
(4, 'Our Misssion', 5, 'our-mission', 1, 7, 1, '2019-06-09 06:23:34', '2019-06-12 04:32:15'),
(5, 'Our Team', 5, 'our-team', 1, 2, 1, '2019-06-12 04:32:33', '2019-06-12 04:32:33'),
(6, 'Who We Are', 5, 'who-we-are', 1, 3, 1, '2019-06-12 04:32:58', '2019-06-12 04:32:58'),
(7, 'On site training center', 2, 'on-site-training-center', 1, 2, 1, '2019-06-12 07:50:09', '2019-06-12 07:50:09'),
(8, 'High School', 3, 'high-school', 1, 1, 1, '2019-06-12 11:26:09', '2019-06-12 11:26:09'),
(9, 'Collage', 3, 'collage', 1, 2, 1, '2019-06-12 11:26:21', '2019-06-12 11:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `sex`, `age`, `address`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Iqbal Ahmed Tuhin', NULL, NULL, NULL, '', NULL, '$2y$10$TXfZwzQiUEkrGP4w65WgFeFV0VcLdDEh/xYQYdFgJPpxTvSDPgzr6', NULL, '2019-08-26 05:15:34', '2019-08-26 05:15:34'),
(2, 'Iqbal Ahmed Tuhin', NULL, NULL, NULL, 'iqbal@gmail.com', NULL, '$2y$10$4V.neJ6zpBH/0sXsuFxwLOosjwIP2jNn5XlLebvbcjqbwTm/vVvr.', NULL, '2019-08-26 05:24:06', '2019-08-26 05:24:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuses`
--
ALTER TABLE `menuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menuses_menu_unique` (`menu`),
  ADD UNIQUE KEY `menuses_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attrubates`
--
ALTER TABLE `product_attrubates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_features`
--
ALTER TABLE `product_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_apartment_flats`
--
ALTER TABLE `rent_apartment_flats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_services`
--
ALTER TABLE `sell_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenus`
--
ALTER TABLE `submenus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menuses`
--
ALTER TABLE `menuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_attrubates`
--
ALTER TABLE `product_attrubates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rent_apartment_flats`
--
ALTER TABLE `rent_apartment_flats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sell_services`
--
ALTER TABLE `sell_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `submenus`
--
ALTER TABLE `submenus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
