-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 02:04 PM
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
-- Table structure for table `advertise_banner_categories`
--

CREATE TABLE `advertise_banner_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_ads_page_position_requests`
--

CREATE TABLE `banner_ads_page_position_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_name` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_ads_page_position_requests`
--

INSERT INTO `banner_ads_page_position_requests` (`id`, `user_id`, `banner`, `link`, `number`, `page_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'uploads/banner/21570816867.jpg', 'test1', '', 1, 1, '2019-10-11 12:01:07', '2019-10-14 07:52:33'),
(2, 2, 'uploads/banner/21570817085.jpg', 'test1', '7885745884', 2, 1, '2019-10-11 12:04:45', '2019-10-25 03:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `banner_positions`
--

CREATE TABLE `banner_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_positions`
--

INSERT INTO `banner_positions` (`id`, `page_name`, `page_position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', NULL, 1, '2019-10-11 11:42:30', '2019-10-11 11:42:30'),
(2, 'Product Page', NULL, 1, '2019-10-11 11:46:19', '2019-10-11 11:46:19'),
(3, 'Category Page', NULL, 1, '2019-10-11 11:46:32', '2019-10-11 11:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aamra', 2, 1, '2019-09-20 13:23:03', '2019-09-20 13:23:03'),
(2, 'Acer', 2, 1, '2019-09-20 13:23:22', '2019-09-20 13:23:22'),
(3, 'gyuuj', 2, 1, '2019-09-26 07:58:31', '2019-09-26 07:58:31'),
(4, 'test api', 1, 1, '2019-10-29 13:35:56', '2019-10-29 13:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
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

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `category_image`, `parent_id`, `status`, `slug`, `position`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'Electronics', 'uploads/product/category/1571982847.png', 0, 1, 'web-development', 1, 2, '2019-07-01 22:25:55', '2019-10-24 23:54:07'),
(2, 'Mobiles', 'Mobiles', 'uploads/product/category/1571982935.png', 0, 1, '1', NULL, 2, NULL, '2019-10-24 23:55:35'),
(3, 'Vehicles', 'Vehicles', 'uploads/product/category/1571983167.png', 0, 1, '1', 3, 2, NULL, '2019-10-24 23:59:27'),
(4, 'Home & Living', 'Home & Living', 'uploads/product/category/1571983204.png', 0, 1, '1', 6, 2, NULL, '2019-10-25 00:00:04'),
(5, 'Property', 'Property', 'uploads/product/category/1571983230.png', 0, 1, '1', 7, 2, NULL, '2019-10-25 00:00:30'),
(6, 'Fashion, Health & Beauty', 'Fashion, Health & Beauty', 'uploads/product/category/1571983259.png', 0, 1, '1', 8, 2, NULL, '2019-10-25 00:00:59'),
(7, 'Pets & Animals', 'Pets & Animals', 'uploads/product/category/1571983279.png', 0, 1, '1', 9, 2, NULL, '2019-10-25 00:01:19'),
(8, 'Hobbies, Sports & Kids', 'Hobbies, Sports & Kids', 'uploads/product/category/1571983302.png', 0, 1, '1', 12, 2, NULL, '2019-10-25 00:01:42'),
(9, 'Business & Industry', 'Business & Industry', 'uploads/product/category/1571983324.png', 0, 1, '1', NULL, 2, NULL, '2019-10-25 00:02:04'),
(10, 'Education', 'Education', 'uploads/product/category/1571983358.png', 0, 1, '1', NULL, 2, NULL, '2019-10-25 00:02:38'),
(11, 'Services', 'Services', 'uploads/product/category/1571983384.png', 0, 1, '1', NULL, 2, NULL, '2019-10-25 00:03:04'),
(12, 'Food & Agriculture', 'Food & Agriculture', 'uploads/product/category/1571983403.png', 0, 1, '1', NULL, 2, NULL, '2019-10-25 00:03:23'),
(13, 'Jobs', 'Jobs', 'uploads/product/category/1571983426.png', 0, 1, '1', NULL, 2, NULL, '2019-10-25 00:03:46'),
(14, 'Mobile Phones', NULL, NULL, 2, 1, '', NULL, 2, '2019-09-20 12:47:36', '2019-09-20 12:47:36'),
(15, 'Mobile Phone Accessories', NULL, NULL, 2, 1, '', NULL, 2, '2019-09-20 12:48:22', '2019-09-20 12:48:22'),
(16, 'SIM Cards', NULL, NULL, 2, 1, '1', NULL, 0, NULL, NULL),
(17, 'Mobile Phone Services', NULL, NULL, 2, 1, '1', NULL, 0, NULL, NULL),
(18, 'Accounting/Finance', NULL, NULL, 13, 1, '', NULL, 2, '2019-10-01 10:06:01', '2019-10-01 10:06:01'),
(19, 'Bank/ Non-Bank Fin. Institution', NULL, NULL, 13, 1, '', NULL, 2, '2019-10-01 10:06:19', '2019-10-01 10:06:19'),
(20, 'Commercial/Supply Chain', NULL, NULL, 13, 1, '', NULL, 2, '2019-10-01 10:06:53', '2019-10-01 10:06:53'),
(21, 'Education/Training', NULL, NULL, 13, 1, '', NULL, 2, '2019-10-01 10:07:07', '2019-10-01 10:07:07'),
(22, 'Engineer/Architects', NULL, NULL, 13, 1, '', NULL, 2, '2019-10-01 10:07:33', '2019-10-01 10:07:33'),
(23, 'Garments/Textile', NULL, NULL, 13, 1, '', NULL, 2, '2019-10-01 10:07:46', '2019-10-01 10:07:46'),
(24, 'Apartments & Flats', 'Apartments & Flats', NULL, 5, 1, '', NULL, 2, '2019-10-07 21:17:17', '2019-10-07 21:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `citries`
--

CREATE TABLE `citries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `devesion_id` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `citries`
--

INSERT INTO `citries` (`id`, `devesion_id`, `city`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mirpur', 1, '2019-09-20 10:59:24', '2019-09-20 10:59:24'),
(2, 1, 'Feni', 1, '2019-09-26 07:59:32', '2019-09-26 07:59:32');

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
-- Table structure for table `devesions`
--

CREATE TABLE `devesions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `devesion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `devesions`
--

INSERT INTO `devesions` (`id`, `devesion`, `bn_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Barishal', NULL, 1, '2019-09-20 10:50:45', '2019-09-20 10:50:45'),
(2, 'Chattogram', NULL, 1, NULL, NULL),
(3, 'Dhaka', NULL, 1, NULL, NULL),
(4, 'Khulna', NULL, 1, NULL, NULL),
(5, 'Rajshahi', NULL, 1, NULL, NULL),
(6, 'Rangpur', NULL, 1, NULL, NULL),
(7, 'Sylhet', NULL, 1, NULL, NULL),
(8, 'Mymensingh', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogura', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barishal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chattogram', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Cumilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachhari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Moulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jashore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`) VALUES
(1, 'Barishal', 'বরিশাল'),
(2, 'Chattogram', 'চট্টগ্রাম'),
(3, 'Dhaka', 'ঢাকা'),
(4, 'Khulna', 'খুলনা'),
(5, 'Rajshahi', 'রাজশাহী'),
(6, 'Rangpur', 'রংপুর'),
(7, 'Sylhet', 'সিলেট'),
(8, 'Mymensingh', 'ময়মনসিংহ');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_cat` int(11) NOT NULL,
  `devesion_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_industry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_funcation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recive_application_vie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_last_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_qualification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exprience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancies` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_cat`, `devesion_id`, `city_id`, `user_id`, `job_title`, `job_description`, `job_type`, `job_industry`, `business_funcation`, `designation`, `recive_application_vie`, `salary_to`, `salary_from`, `application_last_date`, `education_qualification`, `exprience`, `vacancies`, `skill`, `age`, `gender`, `company_name`, `company_logo`, `company_address`, `company_website_link`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, 1, 1, 3, 'Civil Engineer', 'Nathing', 'Full Time', NULL, NULL, 'Civil Engineer', 'Phone', '20000', '10000', '2019-10-31', 'HSC/A Level', '2', '5', 'html,css', '45', 'Female', 'Dev City', NULL, NULL, NULL, 1, '2019-10-08 08:12:44', '2019-10-08 08:12:44'),
(2, 22, 1, 1, 3, 'Civil Engineer', 'nathing', 'Full Time', NULL, NULL, 'Jr.Civil Engineer', 'Receive applications via', '20000', '10000', '2019-10-30', 'Bachelor/Honors', '5', '5', 'Auto Cat', '5', 'Female', 'Dev City', 'uploads/company_logo/31570545510.png', NULL, NULL, 1, '2019-10-08 08:38:30', '2019-10-09 13:30:36'),
(3, 23, 1, 1, 3, 'IT Excutive', 'nathing', 'Full Time', NULL, NULL, 'IT Excutive Officer', 'Receive applications via', '20000', '8000', '2019-10-30', 'Bachelor/Honors', '2', '43', 'Word,Excel', '25', 'Female', 'Dev City', 'uploads/company_logo/31570546604.jpg', NULL, NULL, 1, '2019-10-08 08:56:44', '2019-10-25 00:48:44'),
(4, 18, 1, 1, 3, 'Account Manager', 'Account Manager<br />\r\nCount enter<br />\r\nNathing', 'Full Time', NULL, NULL, 'Account Manager', 'Phone', '50000', '20000', '2019-10-30', 'Masters', '5', '2', 'Account', '35', 'Female', 'Shorif Group', 'uploads/company_logo/31570549713.jpg', NULL, NULL, 0, '2019-10-08 09:48:33', '2019-10-08 09:48:33'),
(5, 18, 1, 1, 2, 'Civil Engineer', 'Job description hiuhyiu', 'Overseas Jobs', NULL, NULL, 'Software Engineer', 'Receive applications via', '400000', '20000', '2019-10-24', 'SSC/O Level', '1', '8', NULL, '5', 'Female', 'Dev City', 'uploads/company_logo/21571984676.png', NULL, NULL, 1, '2019-10-25 00:24:36', '2019-10-25 00:24:36'),
(6, 21, 3, 1, 2, 'Computer Oprator', 'Basic Computing<br />\r\nPhotoshop', 'Full Time', NULL, NULL, 'Oprator', 'Phone', '20000', '10000', '2019-11-30', 'Masters', '2', '3', 'Photoshop,Data Entry', '20', 'Female', 'Sell Quicker', 'uploads/company_logo/21573210017.jpg', NULL, NULL, 1, '2019-11-08 04:46:57', '2019-11-08 04:49:13');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `to` int(11) DEFAULT NULL,
  `message` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` int(11) DEFAULT NULL,
  `product_id` varchar(220) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `to`, `message`, `from`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'hello', 2, NULL, '2019-10-25 04:20:34', '2019-10-25 04:20:34'),
(2, 3, 'hi', 2, '2', '2019-10-25 04:22:05', '2019-10-25 04:22:05');

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
(7, '2019_09_15_194459_create_jobs_table', 5),
(8, '2019_09_20_091335_create_brands_table', 6),
(9, '2019_09_20_091622_create_models_table', 6),
(10, '2019_09_20_091648_create_devesions_table', 6),
(11, '2019_09_20_091757_create_citries_table', 6),
(12, '2019_09_20_091857_create_job_categories_table', 6),
(13, '2019_09_20_092019_create_sell_service_categories_table', 6),
(14, '2019_09_20_092041_create_property_categories_table', 6),
(15, '2019_09_23_163309_create_advertise_banner_categories_table', 7),
(16, '2019_10_11_172946_create_banner_positions_table', 7),
(17, '2019_10_11_174854_create_banner_ads_page_position_requests_table', 8),
(18, '2019_10_25_095435_create_messages_table', 9),
(19, '2019_11_05_185841_create_service_products_table', 10),
(20, '2019_11_08_103532_create_user_profiles_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`id`, `brand_id`, `model`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'A10B', 1, '2019-09-20 13:35:34', '2019-09-20 13:35:34'),
(2, 3, 'yhbynj', 1, '2019-09-26 07:58:56', '2019-09-26 07:58:56');

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
(1, 'Sell an item  or service', NULL, 'Find great deals for used electronics in Bangladesh including mobile phones, computers, laptops, TVs, cameras and much more.', NULL, 'electronics', 1, 1, 2, '2019-09-07 11:51:28', '2019-09-07 11:51:28'),
(2, 'Offer a property for rent', 0, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL),
(3, 'Jobs', 0, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL),
(4, 'Mobiles', 1, NULL, NULL, 'mobiles', 1, NULL, 2, '2019-09-20 02:15:52', '2019-09-20 02:15:52'),
(5, 'Electronics', 1, NULL, NULL, 'electronics', 1, NULL, 2, '2019-09-20 02:16:11', '2019-09-20 02:16:11'),
(6, 'Vehicles', 1, NULL, NULL, 'vehicles', 1, NULL, 2, '2019-09-20 02:16:23', '2019-09-20 02:16:23'),
(7, 'Property', 1, NULL, NULL, 'property', 1, NULL, 2, '2019-09-20 02:16:34', '2019-09-20 02:16:34'),
(8, 'Services', 1, NULL, NULL, 'services', 1, NULL, 2, '2019-09-20 02:16:50', '2019-09-20 02:16:50'),
(9, 'Home and Living', 1, NULL, NULL, 'home-and-living', 1, NULL, 2, '2019-09-20 02:17:03', '2019-09-20 02:17:03'),
(10, 'Apartments & Flats', 2, NULL, NULL, 'apartments-flats', 1, NULL, 2, '2019-09-20 02:17:53', '2019-09-20 02:17:53'),
(11, 'Houses', 2, NULL, NULL, 'houses', 1, NULL, 2, '2019-09-20 02:18:04', '2019-09-20 02:18:04'),
(12, 'Plots & Land', 2, NULL, NULL, 'plots-land', 1, NULL, 2, '2019-09-20 02:18:16', '2019-09-20 02:18:16'),
(13, 'Rooms', 2, NULL, NULL, 'rooms', 1, NULL, 2, '2019-09-20 02:18:28', '2019-09-20 02:18:28'),
(14, 'Garages', 2, NULL, NULL, 'garages', 1, NULL, 2, '2019-09-20 02:18:39', '2019-09-20 02:18:39'),
(15, 'Commercial Property', 2, NULL, NULL, 'commercial-property', 1, NULL, 2, '2019-09-20 02:18:52', '2019-09-20 02:18:52');

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
-- Table structure for table `property_categories`
--

CREATE TABLE `property_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_apartment_flats`
--

CREATE TABLE `rent_apartment_flats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `devesion_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beds` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baths` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `na` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `discription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_apartment_flats`
--

INSERT INTO `rent_apartment_flats` (`id`, `user_id`, `category_id`, `devesion_id`, `city_id`, `image`, `beds`, `location`, `features`, `baths`, `size`, `title`, `address`, `price`, `na`, `phone`, `status`, `discription`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 0, 0, 'uploads/ads\\1568568777.2.jpg,uploads/ads\\1568568777.2.png', '2', NULL, 'Full-Furnished,Semi-Furnished', '3', '45', 'Find rewarding projects', 'Baitul Aman Tower, 840-841 Ring Road, Adabar, Dhaka', '11', NULL, '01864525018', 0, 'dsfsdfsd', '2019-09-15 11:32:57', '2019-09-15 11:32:57'),
(2, 3, 24, 1, 1, 'uploads/ads\\1570509698.3.png,uploads/ads\\1570509698.3.png,uploads/ads\\1570509698.3.jpg,uploads/ads\\1570509698.3.jpg', '7', NULL, 'Full-Furnished,Semi-Furnished,Not Furnished', '3', '45', 'Good', 'Mohammadput,Dhaka', '3434', 'on', '456776576567', 0, 'sdfsfsdfs', '2019-10-07 22:41:38', '2019-10-07 22:41:38'),
(3, 2, 24, 1, 2, 'uploads/ads\\1571984076.2.png', '1', 'Feni', 'Full-Furnished,Semi-Furnished', '1', '45', 'Find rewarding projects', NULL, '3434', 'on', '01864525018', 0, 'sdfjskdjf sdf sdf', '2019-10-25 00:14:36', '2019-10-25 00:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `sell_services`
--

CREATE TABLE `sell_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `devesion_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authenticity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `na` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sell_services`
--

INSERT INTO `sell_services` (`id`, `user_id`, `image`, `condition`, `devesion_id`, `city_id`, `sub_category_id`, `category_id`, `brand`, `model`, `edition`, `features`, `description`, `authenticity`, `price`, `na`, `exchange`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 'uploads/ads\\1570510931.3.jpg,uploads/ads\\1570510931.3.jpg,uploads/ads\\1570510931.3.jpg', 'used', 1, 2, 15, 2, '1', '1', 'Good', 'bluetooth,camera,Dual-Lens Camera,Dual SIM', 'Good', 'original', '3434', 'na', 'Exchange', NULL, 1, '2019-10-07 23:02:11', '2019-10-07 23:02:56'),
(3, 3, 'uploads/ads\\1570545651.3.jpg,uploads/ads\\1570545651.3.png,uploads/ads\\1570545651.3.png,uploads/ads\\1570545651.3.jpg', 'used', 1, 1, 16, 2, '1', '1', 'Good', 'bluetooth,Dual SIM,gps', 'nathing', 'original', '211', 'na', 'Exchange', NULL, 1, '2019-10-08 08:40:51', '2019-10-25 00:59:23'),
(9, 2, 'uploads/ads\\1572978123.2.2.png,uploads/ads\\1572978127.2.3.png,uploads/ads\\1572978127.2.4.png', 'used', 1, 35, 15, 2, '1', '1', 'Good', 'Expandable Memory', 'dfsf', 'original', '3434', 'na', 'Exchange', NULL, 1, '2019-11-05 12:22:07', '2019-11-05 12:22:07'),
(10, 2, 'uploads/ads\\1572978993.2.2.png,uploads/ads\\1572978999.2.3.png', 'used', 1, 35, 15, 2, '1', '1', 'Good', 'physical keyboard', 'fgdg', 'original', '3434', 'na', 'Exchange', NULL, 1, '2019-11-05 12:36:39', '2019-11-05 12:36:39'),
(12, 2, '1573029675.2.2.png,1573029675.2.3.png,1573029675.2.4.png', 'used', 5, 19, 15, 2, '1', '1', 'Good', 'bluetooth,camera', 'kjhk', 'original', '3434', 'na', NULL, NULL, 0, '2019-11-06 02:41:15', '2019-11-06 02:41:15'),
(13, 2, 'uploads/ads\\1573030147.2.2.png,uploads/ads\\1573030147.2.3.png,uploads/ads\\1573030147.2.4.png', 'used', 3, 1, 15, 2, '1', '1', 'sklfdj', 'bluetooth,Expandable Memory', 'rgfdfg', 'original', '3434', NULL, 'Exchange', NULL, 1, '2019-11-06 02:49:07', '2019-11-06 02:49:07'),
(14, 2, 'uploads/ads\\1573034412.2.2.png,uploads/ads\\1573034413.2.3.png', 'used', 1, 37, 15, 2, '1', '1', 'Good', 'bluetooth,Expandable Memory', 'cdddf', 'original', '3434', NULL, NULL, NULL, 1, '2019-11-06 04:00:13', '2019-11-06 04:00:13'),
(15, 2, 'uploads/ads\\1573035591.2.2.png,uploads/ads\\1573035592.2.3.png,uploads/ads\\1573035592.2.4.png', 'used', 4, 58, 15, 2, '1', '1', 'Good', 'bluetooth,camera,Expandable Memory', 'dfsdfsdf', 'original', '3434', NULL, NULL, NULL, 1, '2019-11-06 04:19:52', '2019-11-06 04:19:52'),
(16, 2, 'uploads/ads/1573035830.2.2.jpg\\php2FE8.tmp,uploads/ads/1573035831.2.3.jpg\\php2FF8.tmp,uploads/ads/1573035831.2.4.png\\php3009.tmp', 'used', 2, 40, 15, 2, '1', '1', 'Good', 'camera', 'sdfsdf', 'refurbished', '3434', 'na', NULL, NULL, 1, '2019-11-06 04:23:51', '2019-11-06 04:23:51'),
(17, 2, 'uploads/ads\\1573035997.2.2.png,uploads/ads\\1573036000.2.3.png', 'used', 2, 43, 15, 2, '1', '1', 'Good', 'bluetooth,camera,Expandable Memory', 'sdf', 'original', '3434', 'na', NULL, NULL, 1, '2019-11-06 04:26:40', '2019-11-06 04:26:40'),
(18, 2, '1573036211.2.2.jpg,1573036212.2.3.png,1573036212.2.4.png', 'used', 1, 36, 15, 2, '1', '1', 'Good', 'bluetooth,Expandable Memory', 'fgdfgdfg', 'original', '3434', 'na', NULL, NULL, 1, '2019-11-06 04:30:12', '2019-11-06 04:30:12'),
(19, 2, '1573036341.2.2.jpg,1573036341.2.3.png,1573036341.2.4.png', 'used', 1, 35, 15, 2, '1', '1', 'jjfslk', 'bluetooth,Expandable Memory', 'fgfdgfdgfdg', 'original', '3434', NULL, NULL, NULL, 1, '2019-11-06 04:32:22', '2019-11-06 04:32:22'),
(20, 2, '1573036709.2.2.png,1573036710.2.3.jpg', 'used', 1, 34, 15, 2, '1', '1', 'Good', 'bluetooth,Expandable Memory', 'sfdsfsfdfsfsf', 'original', '3434', 'na', NULL, NULL, 1, '2019-11-06 04:38:30', '2019-11-06 04:38:30'),
(21, 2, 'uploads/ads\\1573037020.2.2.png,uploads/ads\\1573037020.2.3.png', 'used', 1, 34, 15, 2, '1', '1', 'Good', 'Expandable Memory,physical keyboard', 'vfdfgdfgdfgd', 'original', '3434', 'na', NULL, NULL, 1, '2019-11-06 04:43:40', '2019-11-06 04:43:40'),
(22, 2, '1573037291.2.2.jpg,1573037292.2.3.png', 'used', 2, 40, 15, 2, '1', '1', 'Good', 'bluetooth,Expandable Memory', 'gdfgdf', 'original', '3434', 'na', NULL, NULL, 1, '2019-11-06 04:48:12', '2019-11-06 04:48:12'),
(23, 2, '1573038190.2.2.jpg,1573038192.2.3.png', 'used', 2, 40, 15, 2, '1', '1', 'Good', 'bluetooth,Expandable Memory', 'gdfgdf', 'original', '3434', 'na', NULL, NULL, 1, '2019-11-06 05:03:12', '2019-11-06 05:03:12'),
(24, 2, '1573038257.2.2.jpg,1573038258.2.3.png', 'used', 2, 40, 15, 2, '1', '1', 'Good', 'bluetooth,Expandable Memory', 'gdfgdf', 'original', '3434', 'na', NULL, NULL, 1, '2019-11-06 05:04:18', '2019-11-06 05:04:18'),
(25, 2, '1573039262.2.2.jpg,1573039262.2.3.png', 'used', 1, 34, 15, 2, '1', '1', 'Good', 'Dual SIM,Expandable Memory', 'sdfsfsdf', 'original', '3434', NULL, NULL, NULL, 1, '2019-11-06 05:21:02', '2019-11-06 05:21:02'),
(26, 2, '1573039289.2.2.jpg,1573039290.2.3.png', 'used', 1, 34, 15, 2, '1', '1', 'Good', 'Dual SIM,Expandable Memory', 'sdfsfsdf', 'original', '3434', NULL, NULL, NULL, 1, '2019-11-06 05:21:30', '2019-11-06 05:21:30'),
(27, 2, 'D:\\server\\htdocs\\sell_quicker_update\\skill-update\\sell_quicker\\public\\1573039322.2.2.jpg,D:\\server\\htdocs\\sell_quicker_update\\skill-update\\sell_quicker\\public\\1573039322.2.3.png', 'used', 1, 34, 15, 2, '1', '1', 'Good', 'Dual SIM,Expandable Memory', 'sdfsfsdf', 'original', '3434', NULL, NULL, NULL, 1, '2019-11-06 05:22:02', '2019-11-06 05:22:02'),
(28, 2, 'uploads/ads/1573039484.2.2.jpg,uploads/ads/1573039484.2.3.png', 'used', 1, 34, 15, 2, '1', '1', 'Good', 'Dual SIM,Expandable Memory', 'sdfsfsdf', 'original', '3434', NULL, NULL, NULL, 1, '2019-11-06 05:24:45', '2019-11-06 05:24:45'),
(29, 2, 'uploads/ads/1573039792.2.2.png,uploads/ads/1573039793.2.3.png,uploads/ads/1573039793.2.4.png,uploads/ads/1573039793.2.5.png', 'used', 1, 34, 15, 2, '1', '1', 'Good', 'bluetooth,Expandable Memory', 'dgfgf', 'original', '3434', 'na', 'Exchange', NULL, 1, '2019-11-06 05:29:53', '2019-11-06 05:29:53'),
(30, 2, 'uploads/ads/1573040212.2.2.jpg,uploads/ads/1573040214.2.3.png', 'used', 4, 55, 15, 2, '1', '1', 'Good', 'bluetooth,camera', 'fsgdfgdfg fgd', 'original', '3434', 'na', 'Exchange', NULL, 1, '2019-11-06 05:36:54', '2019-11-06 05:36:54'),
(31, 2, 'uploads/ads/1573040243.2.2.jpg,uploads/ads/1573040244.2.3.png', 'used', 4, 55, 15, 2, '1', '1', 'Good', 'bluetooth,camera', 'fsgdfgdfg fgd', 'original', '3434', 'na', 'Exchange', NULL, 1, '2019-11-06 05:37:24', '2019-11-06 05:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `sell_service_categories`
--

CREATE TABLE `sell_service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_products`
--

CREATE TABLE `service_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 'Iqbal Ahmed Tuhin', NULL, NULL, NULL, 'iqbal@gmail.com', NULL, '$2y$10$4V.neJ6zpBH/0sXsuFxwLOosjwIP2jNn5XlLebvbcjqbwTm/vVvr.', NULL, '2019-08-26 05:24:06', '2019-08-26 05:24:06'),
(3, 'Iqbal Ahmed Tuhin', NULL, NULL, NULL, 'tuhin@gmail.com', NULL, '$2y$10$D8wXlXEOBykNslCVGAumauoMuAeGGum1VZ1ReCnWW1fTjfPtdRrz2', NULL, '2019-09-18 10:32:26', '2019-10-08 00:35:23'),
(4, 'shakil', NULL, NULL, NULL, 'shakil3334426@gmail.com', NULL, '$2y$10$glcCYw/dJuFI/f7ERazM2OEqUUHmgO4YO3owu1vdBO93prJtWsfkm', NULL, '2019-11-08 04:32:19', '2019-11-08 04:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `advertise_banner_categories`
--
ALTER TABLE `advertise_banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_ads_page_position_requests`
--
ALTER TABLE `banner_ads_page_position_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_positions`
--
ALTER TABLE `banner_positions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `citries`
--
ALTER TABLE `citries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devesions`
--
ALTER TABLE `devesions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuses`
--
ALTER TABLE `menuses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menuses_menu_unique` (`menu`),
  ADD UNIQUE KEY `menuses_slug_unique` (`slug`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
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
-- Indexes for table `property_categories`
--
ALTER TABLE `property_categories`
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
-- Indexes for table `sell_service_categories`
--
ALTER TABLE `sell_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_products`
--
ALTER TABLE `service_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
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
-- AUTO_INCREMENT for table `advertise_banner_categories`
--
ALTER TABLE `advertise_banner_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_ads_page_position_requests`
--
ALTER TABLE `banner_ads_page_position_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banner_positions`
--
ALTER TABLE `banner_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `citries`
--
ALTER TABLE `citries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `devesions`
--
ALTER TABLE `devesions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menuses`
--
ALTER TABLE `menuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_features`
--
ALTER TABLE `product_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `property_categories`
--
ALTER TABLE `property_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_apartment_flats`
--
ALTER TABLE `rent_apartment_flats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sell_services`
--
ALTER TABLE `sell_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sell_service_categories`
--
ALTER TABLE `sell_service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_products`
--
ALTER TABLE `service_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `divisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
