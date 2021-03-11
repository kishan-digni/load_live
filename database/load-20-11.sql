-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2019 at 11:37 AM
-- Server version: 5.5.64-MariaDB
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `load`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'account name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'account code unique',
  `free_trial_days` int(11) DEFAULT NULL COMMENT 'number of days remain for expire account',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is account is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `code`, `free_trial_days`, `is_active`, `created_at`, `updated_at`) VALUES
(22, 'Free', 'FREE', 30, 1, '2019-05-29 18:30:00', '2019-07-08 07:03:49'),
(23, 'Premium', 'PREMIUM', 30, 1, '2019-05-29 18:30:00', '2019-08-26 10:03:31'),
(24, 'Professional', 'PROFESSIONAL', 30, 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(35, 'New One Account Test', 'NEW_ONE_ACCOUNT_TEST', 12, 0, '2019-07-08 12:31:24', '2019-09-14 11:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `action_forces`
--

CREATE TABLE IF NOT EXISTS `action_forces` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'mechanics name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `action_forces`
--

INSERT INTO `action_forces` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'Push', 'PUSH', 1, NULL, '2019-07-08 04:14:35'),
(4, 'Test 123', 'TEST_123', 0, '2019-07-08 04:13:25', '2019-10-04 10:10:30'),
(5, 'Added', 'ADDED', 1, '2019-07-18 04:27:43', '2019-09-18 06:48:40');

-- --------------------------------------------------------

--
-- Table structure for table `available_times`
--

CREATE TABLE IF NOT EXISTS `available_times` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Display text',
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'For unique check',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'To check for active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `available_times`
--

INSERT INTO `available_times` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '9AM-10AM', '9AM-10AM', 1, NULL, NULL),
(2, '10AM-11AM', '10AM-11AM', 1, NULL, NULL),
(3, '11AM-12AM', '11AM-12AM', 1, NULL, NULL),
(4, '12AM-1PM', '12AM-1PM', 1, NULL, NULL),
(5, '1PM-2PM', '1PM-2PM', 1, NULL, NULL),
(6, '2PM-3PM', '2PM-3PM', 1, NULL, NULL),
(7, '3PM-4PM', '3PM-4PM', 1, NULL, NULL),
(8, '4PM-5PM', '4PM-5PM', 1, NULL, NULL),
(9, '5PM-6PM', '5PM-6PM', 1, NULL, NULL),
(10, '6PM-7PM', '6PM-7PM', 1, NULL, NULL),
(11, '7PM-8PM', '7PM-8PM', 1, NULL, NULL),
(12, '8PM-9PM', '8PM-9PM', 1, NULL, NULL),
(13, '9PM-10PM', '9PM-10PM', 1, NULL, NULL),
(14, '10PM-11PM', '10PM-11PM', 1, NULL, NULL),
(15, '11PM-12PM', '11PM-12PM', 1, NULL, NULL),
(16, '12PM-1AM', '12PM-1AM', 1, NULL, NULL),
(17, '1AM-2AM', '1AM-2AM', 1, NULL, NULL),
(18, '2AM-3AM', '2AM-3AM', 1, NULL, NULL),
(19, '3AM-4AM', '3AM-4AM', 1, NULL, NULL),
(20, '4AM-5AM', '4AM-5AM', 1, NULL, NULL),
(21, '6AM-7AM', '6AM-7AM', 1, NULL, NULL),
(22, '7AM-8AM', '7AM-8AM', 1, NULL, NULL),
(23, '8AM-9AM', '8AM-9AM', 1, NULL, NULL),
(24, '5AM-6AM', '5AM-6AM', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_informations`
--

CREATE TABLE IF NOT EXISTS `billing_informations` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'Card Details for user',
  `credit_card_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Credit card id',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'card is default or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_informations`
--

INSERT INTO `billing_informations` (`id`, `user_id`, `credit_card_id`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'CARD-1NH390556C861152DLV5SKGA', 1, '2019-09-13 06:43:12', '2019-09-13 06:43:12'),
(2, 1, 'CARD-9FN123664Y5744045LV5SK4Y', 1, '2019-09-13 06:43:12', '2019-09-14 05:00:25'),
(3, 22, 'CARD-1NH390556C861152DLV5SKGB', 0, '2019-09-13 07:11:23', '2019-09-14 05:06:27'),
(4, 22, 'CARD-9FN123664Y5744045LV5SK4U', 0, '2019-09-13 07:11:23', '2019-09-14 05:06:27'),
(5, 22, 'CARD-1NH390556C861152DLV5SKGC', 1, NULL, '2019-09-14 05:06:27'),
(6, 22, 'CARD-9FN123664Y5744045LV5SK4Y', 0, NULL, '2019-09-14 05:06:27'),
(7, 23, 'CARD-42T88713EP113414LLV6HKIY', 0, '2019-09-14 05:05:40', '2019-09-14 06:07:12'),
(8, 23, 'CARD-9T2039415C455020WLV6HKYI', 0, '2019-09-14 05:06:42', '2019-09-14 06:07:12'),
(9, 23, 'CARD-9AH6177183557432LLV6IDTQ', 1, '2019-09-14 05:59:43', '2019-09-14 06:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `body_parts`
--

CREATE TABLE IF NOT EXISTS `body_parts` (
  `id` bigint(20) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'Child body part',
  `name` varchar(200) NOT NULL COMMENT 'Body Part Name',
  `code` varchar(200) DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'activate or not',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `body_parts`
--

INSERT INTO `body_parts` (`id`, `parent_id`, `name`, `code`, `is_active`, `updated_at`, `created_at`) VALUES
(1, NULL, 'Upper', 'UPPER', 1, NULL, NULL),
(2, NULL, 'Lower', 'LOWER', 1, NULL, NULL),
(3, NULL, 'Trunk', 'TRUNK', 1, NULL, NULL),
(4, NULL, 'Power', 'POWER', 1, NULL, NULL),
(5, NULL, 'Agility', 'AGILITY', 1, NULL, NULL),
(6, NULL, 'Favorite', 'FAVORITE', 1, NULL, NULL),
(7, 1, 'Upper Arm', 'UPPER_ARM', 1, NULL, NULL),
(8, 1, 'Upper Back', 'UPPER_BACK', 1, NULL, NULL),
(9, 2, 'Shin', 'SHIN', 1, NULL, NULL),
(10, 2, 'Tibia', 'TIBIA', 0, NULL, NULL),
(11, 3, 'Eyes ', 'EYES', 1, NULL, NULL),
(12, 3, 'Mouth ', 'MOUTH', 1, NULL, NULL),
(13, 5, 'Arm ', 'ARM', 1, NULL, NULL),
(14, 5, 'Tooth', 'TOOTH', 1, NULL, NULL),
(17, 15, 'Testttttttttttttt', 'testin', 1, '2019-07-11 12:53:01', '2019-07-11 12:41:59'),
(19, 1, 'Tett', 'tett', 1, '2019-07-11 12:45:23', '2019-07-11 12:43:12'),
(20, 16, '33333', '22222', 0, '2019-07-16 06:13:46', '2019-07-11 12:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `booked_clients`
--

CREATE TABLE IF NOT EXISTS `booked_clients` (
  `id` bigint(20) unsigned NOT NULL,
  `from_id` bigint(20) NOT NULL COMMENT ' Request Sender-Id (user_id).',
  `to_id` bigint(20) NOT NULL COMMENT ' Request Receiver-Id (user_id).',
  `selected_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Request selected date',
  `available_time_id` bigint(20) NOT NULL COMMENT 'From available table id to show name',
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Set any notes for professional users',
  `confirmed_status` int(11) NOT NULL COMMENT '0 => pending, 1 => accepted, 2 => rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_clients`
--

INSERT INTO `booked_clients` (`id`, `from_id`, `to_id`, `selected_date`, `available_time_id`, `notes`, `confirmed_status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-08-29 08:59:25', 1, 'Hii, I`m Vikas i need urgent training.', 1, '2019-08-27 12:16:12', '2019-08-29 08:59:25'),
(2, 2, 1, '2019-08-28 11:15:16', 1, 'Hii, I`m Vikas i need urgent training.', 0, '2019-08-27 12:42:17', '2019-08-27 12:42:17'),
(3, 2, 1, '2019-08-25 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:19', '2019-08-27 12:42:19'),
(4, 2, 1, '2019-08-24 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:24', '2019-08-27 12:42:24'),
(5, 2, 1, '2019-08-23 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:27', '2019-08-27 12:42:27'),
(6, 2, 1, '2019-08-20 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:37', '2019-08-27 12:42:37'),
(7, 2, 1, '2019-08-15 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:41', '2019-08-27 12:42:41'),
(8, 2, 1, '2019-08-12 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:43', '2019-08-27 12:42:43'),
(9, 2, 1, '2019-08-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:44', '2019-08-27 12:42:44'),
(10, 2, 1, '2019-07-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:47', '2019-08-27 12:42:47'),
(11, 2, 1, '2019-06-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:49', '2019-08-27 12:42:49'),
(12, 2, 1, '2019-05-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:50', '2019-08-27 12:42:50'),
(13, 2, 1, '2019-01-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:54', '2019-08-27 12:42:54'),
(14, 2, 1, '2018-01-10 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:42:57', '2019-08-27 12:42:57'),
(15, 2, 1, '2019-07-27 11:16:25', 1, 'Hii, I''m Vikas i need urgent training.', 0, '2019-08-27 12:46:07', '2019-08-27 12:46:07'),
(16, 1, 3, '2019-08-21 00:00:00', 1, 'M,m', 0, '2019-08-28 11:55:55', '2019-08-28 11:55:55'),
(17, 1, 3, '2019-08-27 18:30:00', 14, 'Hey', 0, '2019-08-28 12:02:36', '2019-08-28 12:02:36'),
(18, 1, 3, '2019-08-29 10:26:42', 15, 'Hello', 0, '2019-08-29 04:18:37', '2019-08-29 06:22:58'),
(19, 1, 3, '2019-08-29 10:26:40', 16, 'Hey done', 0, '2019-08-29 05:03:08', '2019-08-29 06:27:02'),
(20, 1, 3, '2019-08-29 10:26:32', 14, 'Hello', 0, '2019-08-29 06:48:59', '2019-08-29 10:04:26'),
(21, 1, 3, '2019-08-29 10:26:30', 17, 'Hello please accept', 0, '2019-08-29 06:50:46', '2019-08-29 10:20:37'),
(22, 1, 3, '2019-08-29 10:26:25', 15, 'Tds', 0, '2019-08-29 07:04:01', '2019-08-29 10:20:34'),
(23, 1, 3, '2019-08-29 10:24:29', 14, 'Dfsfd', 0, '2019-08-29 07:17:29', '2019-08-29 10:20:30'),
(24, 1, 3, '2019-08-29 10:24:26', 15, 'Bjng', 0, '2019-08-29 07:21:46', '2019-08-29 10:20:22'),
(25, 1, 3, '2019-08-29 10:28:03', 15, 'Hey', 1, '2019-08-29 08:39:23', '2019-08-29 10:28:03'),
(26, 1, 3, '2019-08-29 10:27:55', 18, 'dfd', 1, '2019-08-29 08:51:31', '2019-08-29 10:27:55'),
(27, 1, 3, '2019-08-19 18:30:00', 14, 'Hey', 0, '2019-08-29 11:53:19', '2019-08-29 11:53:19'),
(28, 1, 3, '2019-08-19 18:30:00', 15, 'Fdfd', 0, '2019-08-29 11:55:20', '2019-08-29 11:55:20'),
(29, 1, 3, '2019-08-20 18:30:00', 15, 'hfs', 0, '2019-08-29 12:46:15', '2019-08-29 12:46:15'),
(30, 1, 3, '2019-08-26 18:30:00', 15, 'gods', 0, '2019-08-29 12:48:13', '2019-08-29 12:48:13'),
(31, 1, 3, '2019-08-26 18:30:00', 15, 'gods', 0, '2019-08-29 12:48:30', '2019-08-29 12:48:30'),
(32, 1, 3, '2019-08-20 18:30:00', 14, 'Hi', 0, '2019-08-29 12:49:34', '2019-08-29 12:49:34'),
(33, 1, 3, '2019-08-27 18:30:00', 15, 'Hi', 0, '2019-08-29 12:51:07', '2019-08-29 12:51:07'),
(34, 1, 3, '2019-08-27 18:30:00', 15, 'Hi', 0, '2019-08-29 12:51:10', '2019-08-29 12:51:10'),
(35, 1, 3, '2019-08-27 18:30:00', 17, 'By', 0, '2019-08-29 12:51:24', '2019-08-29 12:51:24'),
(36, 1, 3, '2019-08-27 18:30:00', 17, 'By', 0, '2019-08-29 12:51:32', '2019-08-29 12:51:32'),
(37, 1, 3, '2019-08-05 18:30:00', 14, 'Njnfg', 0, '2019-08-29 12:51:44', '2019-08-29 12:51:44'),
(38, 1, 3, '2019-08-29 18:30:00', 15, 'Hi', 0, '2019-08-29 12:52:16', '2019-08-29 12:52:16'),
(39, 1, 3, '2019-08-29 18:30:00', 15, 'Hi', 0, '2019-08-29 12:53:11', '2019-08-29 12:53:11'),
(40, 1, 3, '2019-08-23 18:30:00', 14, 'did', 0, '2019-08-29 12:55:39', '2019-08-29 12:55:39'),
(41, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:16', '2019-08-30 11:12:16'),
(42, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:22', '2019-08-30 11:12:22'),
(43, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:24', '2019-08-30 11:12:24'),
(44, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:25', '2019-08-30 11:12:25'),
(45, 1, 5, '2019-08-28 18:30:00', 22, '0poo', 0, '2019-08-30 11:12:27', '2019-08-30 11:12:27'),
(46, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:12:33', '2019-08-30 11:12:33'),
(47, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:12:46', '2019-08-30 11:12:46'),
(48, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:13:03', '2019-08-30 11:13:03'),
(49, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:13:34', '2019-08-30 11:13:34'),
(50, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:13:35', '2019-08-30 11:13:35'),
(51, 3, 2, '2019-08-28 18:30:00', 20, 'dfd', 0, '2019-08-30 11:14:07', '2019-08-30 11:14:07'),
(52, 3, 2, '2019-08-28 18:30:00', 20, 'dfd', 0, '2019-08-30 11:14:26', '2019-08-30 11:14:26'),
(53, 3, 2, '2019-08-28 18:30:00', 20, 'did', 0, '2019-08-30 11:15:08', '2019-08-30 11:15:08'),
(54, 3, 2, '2019-08-28 18:30:00', 20, 'did', 0, '2019-08-30 11:18:43', '2019-08-30 11:18:43'),
(55, 1, 5, '2019-08-28 18:30:00', 2, 'Hmm', 0, '2019-08-30 11:19:13', '2019-08-30 11:19:13'),
(56, 1, 5, '2019-08-28 18:30:00', 23, 'Ukiju', 0, '2019-08-30 11:19:44', '2019-08-30 11:19:44'),
(57, 1, 5, '2019-08-28 18:30:00', 6, 'Mgh', 0, '2019-08-30 11:21:38', '2019-08-30 11:21:38'),
(58, 3, 1, '2019-09-10 18:30:00', 15, 'Test', 0, '2019-09-04 11:55:45', '2019-09-04 11:55:45'),
(59, 22, 1, '2019-09-04 16:00:00', 18, 'Sjshdd', 0, '2019-09-05 07:36:37', '2019-09-05 07:36:37'),
(60, 22, 8, '2019-09-23 16:00:00', 8, 'Hkkkn vb', 0, '2019-09-24 14:48:48', '2019-09-24 14:48:48'),
(61, 22, 11, '2019-10-16 16:00:00', 15, 'Hi, I’ll like to start S&C to improve my muscle mass ASAP.', 0, '2019-10-02 17:03:42', '2019-10-02 17:03:42'),
(62, 22, 11, '2019-10-16 16:00:00', 15, 'Hi, I’ll like to start S&C to improve my muscle mass ASAP.', 0, '2019-10-02 17:03:44', '2019-10-02 17:03:44'),
(63, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:29:54', '2019-10-19 10:29:54'),
(64, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:01', '2019-10-19 10:30:01'),
(65, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:03', '2019-10-19 10:30:03'),
(66, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:04', '2019-10-19 10:30:04'),
(67, 22, 12, '2019-10-02 22:00:00', 15, 'G', 0, '2019-10-19 10:30:05', '2019-10-19 10:30:05');

-- --------------------------------------------------------

--
-- Table structure for table `cancellation_policies`
--

CREATE TABLE IF NOT EXISTS `cancellation_policies` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of cancellation policies',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'code for unique',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'details for cancellation policies.',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'cancellation policies is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cancellation_policies`
--

INSERT INTO `cancellation_policies` (`id`, `name`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Strict', 'STRICT', '50% refund 5 days prior to session/event', 1, '2019-08-15 18:30:00', '2019-08-20 05:07:09'),
(2, 'Moderate ', 'MODERATE', 'Full refund 5 days prior to session/event', 1, '2019-08-15 18:30:00', '2019-08-15 18:30:00'),
(3, 'Flexible ', 'FLEXIBLE', 'Full refund 1 day prior to session/event.', 1, '2019-08-15 18:30:00', '2019-08-15 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `common_programs_weeks`
--

CREATE TABLE IF NOT EXISTS `common_programs_weeks` (
  `id` bigint(20) unsigned NOT NULL,
  `training_activity_id` bigint(20) NOT NULL COMMENT 'Training Activity id',
  `training_goal_id` bigint(20) NOT NULL COMMENT 'Training Goal id',
  `training_intensity_id` bigint(20) NOT NULL COMMENT 'Training intencity id',
  `thr` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'name of common program weeks',
  `note` text COLLATE utf8mb4_unicode_ci COMMENT 'notes of common program weeks',
  `sequence` int(11) DEFAULT NULL COMMENT 'sequence wise weeks',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'To check active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `common_programs_weeks`
--

INSERT INTO `common_programs_weeks` (`id`, `training_activity_id`, `training_goal_id`, `training_intensity_id`, `thr`, `name`, `note`, `sequence`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, '60-72', 'General Conditioning - Base Fitness ', 'Develope an aeorbic foundation with easy-pace running', 1, 1, '2019-10-04 00:00:00', '2019-10-11 09:02:06'),
(5, 1, 7, 1, '83-87', 'General conditioning - Initial building', 'Include 2 - 3 days of hard workouts (tempo and interval running). \nIncrease distance every 3 weeks, but not more than 10%.				', 8, 1, '2019-10-09 07:16:45', '2019-10-25 11:41:54'),
(6, 1, 18, 1, '83-87', 'General conditioning - Initial building', 'Include 2 - 3 days of hard workouts (tempo and interval running). \nIncrease distance every 3 weeks, but not more than 10%.				', 10, 1, '2019-10-09 09:41:52', '2019-10-25 11:41:54'),
(7, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'To develop the aerobic system at race pace.\nThe total distance should be less than 10k.', 9, 1, '2019-10-09 10:12:22', '2019-10-11 09:13:12'),
(8, 1, 2, 3, '93-100', 'Recovery Week', 'Recovery week, reduce distance.', 10, 1, '2019-10-09 10:26:05', '2019-10-11 09:13:12'),
(9, 1, 6, 3, '93-100', 'Specific conditioning - Initial building', 'High stride rate, pulling the knees up and forward, and staying on the balls of the feet.\nActive recovery at easy pace.', 6, 1, '2019-10-11 07:20:43', '2019-10-11 07:20:43'),
(10, 1, 19, 3, '93-100', 'Specific conditioning - Initial building', 'Warm-up and cool-down accordingly.', 9, 1, '2019-10-11 07:29:09', '2019-10-25 11:41:54'),
(11, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 2, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(12, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 3, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(13, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 4, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(14, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 5, 1, '2019-10-11 09:08:07', '2019-10-11 09:13:12'),
(15, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', 7, 1, '2019-10-11 09:08:07', '2019-10-25 11:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `common_programs_weeks_laps`
--

CREATE TABLE IF NOT EXISTS `common_programs_weeks_laps` (
  `id` bigint(20) unsigned NOT NULL,
  `common_programs_week_id` bigint(20) unsigned NOT NULL,
  `lap` int(11) DEFAULT NULL COMMENT 'how many lap in this program week',
  `percent` int(11) DEFAULT NULL COMMENT '% for laps',
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Distance (km OR miles)',
  `speed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'km/hr OR mile/hr',
  `rest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'km/hr OR mile/hr',
  `vdot` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'pace',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'to check is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `common_programs_weeks_laps`
--

INSERT INTO `common_programs_weeks_laps` (`id`, `common_programs_week_id`, `lap`, `percent`, `distance`, `speed`, `rest`, `vdot`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, '2.5 - 5 km', 'VDOT Chart', NULL, 'E/M', 1, '2019-10-06 18:30:00', '2019-10-07 13:29:36'),
(3, 5, 1, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:27:48', '2019-10-09 09:27:48'),
(4, 5, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:28:46', '2019-10-09 09:28:46'),
(5, 5, 3, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:29:18', '2019-10-09 09:29:18'),
(6, 5, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:29:53', '2019-10-09 09:29:53'),
(7, 5, 5, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:30:26', '2019-10-09 09:30:26'),
(8, 5, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:31:04', '2019-10-09 09:31:04'),
(9, 5, 1, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:31:19', '2019-10-09 09:31:19'),
(10, 5, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:31:38', '2019-10-09 09:31:38'),
(11, 5, 3, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:32:00', '2019-10-09 09:32:00'),
(12, 5, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:32:19', '2019-10-09 09:32:19'),
(13, 5, 5, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:32:43', '2019-10-09 09:32:43'),
(14, 5, 6, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:32:58', '2019-10-09 09:32:58'),
(15, 5, 7, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 09:33:13', '2019-10-09 09:33:13'),
(16, 5, 8, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 09:33:28', '2019-10-09 09:33:28'),
(18, 6, 1, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:58:04', '2019-10-09 09:58:04'),
(19, 6, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:58:27', '2019-10-09 09:58:27'),
(20, 6, 3, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:58:41', '2019-10-09 09:58:41'),
(21, 6, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:58:55', '2019-10-09 09:58:55'),
(22, 6, 5, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:59:12', '2019-10-09 09:59:12'),
(23, 6, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 09:59:31', '2019-10-09 09:59:31'),
(24, 6, 7, 0, '0.4 km', NULL, NULL, 'I-5k', 1, '2019-10-09 09:59:47', '2019-10-09 09:59:47'),
(25, 6, 8, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 10:00:05', '2019-10-09 10:00:05'),
(26, 6, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:00:25', '2019-10-09 10:00:25'),
(27, 6, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:06:22', '2019-10-09 10:06:22'),
(28, 6, 3, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:06:36', '2019-10-09 10:06:36'),
(29, 6, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:06:58', '2019-10-09 10:06:58'),
(30, 6, 5, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:07:11', '2019-10-09 10:07:11'),
(31, 6, 6, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:07:26', '2019-10-09 10:07:26'),
(32, 6, 7, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:07:48', '2019-10-09 10:07:48'),
(33, 6, 8, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:08:04', '2019-10-09 10:08:04'),
(34, 6, 9, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:08:26', '2019-10-09 10:08:26'),
(35, 6, 10, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:08:42', '2019-10-09 10:08:42'),
(36, 7, 1, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:12:52', '2019-10-09 10:12:52'),
(37, 7, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:13:31', '2019-10-09 10:13:31'),
(38, 7, 3, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:13:46', '2019-10-09 10:13:46'),
(39, 7, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:14:00', '2019-10-09 10:14:00'),
(40, 7, 1, 0, '0.4 km', NULL, NULL, 'I', 1, '2019-10-09 10:20:01', '2019-10-09 10:20:01'),
(41, 7, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 10:20:15', '2019-10-09 10:20:15'),
(42, 7, 1, 0, '0.8 km', NULL, NULL, 'I', 1, '2019-10-09 10:20:29', '2019-10-09 10:20:29'),
(43, 7, 2, 0, '0.8 km', NULL, NULL, 'E', 1, '2019-10-09 10:20:43', '2019-10-09 10:20:43'),
(44, 7, 1, 0, '0.4 km', NULL, NULL, 'I', 1, '2019-10-09 10:20:58', '2019-10-09 10:20:58'),
(45, 7, 2, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 10:21:12', '2019-10-09 10:21:12'),
(46, 7, 1, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:21:29', '2019-10-09 10:21:29'),
(47, 7, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:21:42', '2019-10-09 10:21:42'),
(48, 7, 3, 0, '0.2 km', NULL, NULL, 'I', 1, '2019-10-09 10:21:58', '2019-10-09 10:21:58'),
(49, 7, 4, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 10:22:10', '2019-10-09 10:22:10'),
(50, 8, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 10:26:27', '2019-10-09 10:26:27'),
(51, 8, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 11:35:07', '2019-10-09 11:35:07'),
(52, 8, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-09 11:35:19', '2019-10-09 11:35:19'),
(53, 8, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:35:33', '2019-10-09 11:35:33'),
(54, 8, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-09 11:35:47', '2019-10-09 11:35:47'),
(55, 8, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:36:02', '2019-10-09 11:36:02'),
(56, 8, 7, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-09 11:44:33', '2019-10-09 11:44:33'),
(57, 8, 8, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-09 11:44:48', '2019-10-09 11:44:48'),
(58, 8, 9, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-09 11:45:39', '2019-10-09 11:45:39'),
(59, 8, 10, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:45:57', '2019-10-09 11:45:57'),
(60, 8, 11, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-09 11:46:11', '2019-10-09 11:46:11'),
(61, 8, 12, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-09 11:46:33', '2019-10-09 11:46:33'),
(62, 9, 1, 5, '0:00:30-0:01:00', NULL, NULL, 'R', 1, '2019-10-11 07:22:14', '2019-10-11 07:22:14'),
(63, 9, 2, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:22:37', '2019-10-11 07:22:37'),
(64, 9, 3, 5, '0:00:30-0:01:00', NULL, NULL, 'R', 1, '2019-10-11 07:22:59', '2019-10-11 07:22:59'),
(65, 9, 4, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:23:23', '2019-10-11 07:23:23'),
(66, 9, 5, 5, '0:00:30-0:01:00', NULL, '-', 'R', 1, '2019-10-11 07:23:40', '2019-10-11 07:23:40'),
(67, 9, 6, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:24:01', '2019-10-11 07:24:01'),
(68, 9, 7, 5, '0:00:30-0:01:00', NULL, '-', 'R', 1, '2019-10-11 07:24:36', '2019-10-11 07:24:36'),
(69, 9, 8, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:24:55', '2019-10-11 07:24:55'),
(70, 9, 9, 5, '0:00:30-0:01:00', NULL, '-', 'R', 1, '2019-10-11 07:25:14', '2019-10-11 07:25:14'),
(71, 9, 10, 0, '-', NULL, '0:01:30-0:05:00', 'E', 1, '2019-10-11 07:25:30', '2019-10-11 07:25:30'),
(72, 10, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-11 07:30:29', '2019-10-11 07:30:29'),
(73, 10, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-11 07:30:48', '2019-10-11 07:30:48'),
(74, 10, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-11 07:31:04', '2019-10-11 07:31:04'),
(75, 10, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:31:23', '2019-10-11 07:31:23'),
(76, 10, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-11 07:31:39', '2019-10-11 07:31:39'),
(77, 10, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:32:02', '2019-10-11 07:32:02'),
(78, 10, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-11 07:32:19', '2019-10-11 07:32:19'),
(79, 10, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-11 07:32:35', '2019-10-11 07:32:35'),
(80, 10, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-11 07:32:53', '2019-10-11 07:32:53'),
(81, 10, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:33:08', '2019-10-11 07:33:08'),
(82, 10, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-11 07:33:27', '2019-10-11 07:33:27'),
(83, 10, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:33:43', '2019-10-11 07:33:43'),
(84, 10, 1, 0, '0.2 km', NULL, NULL, 'R', 1, '2019-10-11 07:33:58', '2019-10-11 07:33:58'),
(85, 10, 2, 0, '0.2 km', NULL, NULL, 'E', 1, '2019-10-11 07:34:14', '2019-10-11 07:34:14'),
(86, 10, 3, 0, '0.4 km', NULL, NULL, 'R', 1, '2019-10-11 07:34:31', '2019-10-11 07:34:31'),
(87, 10, 4, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:34:46', '2019-10-11 07:34:46'),
(88, 10, 5, 0, '0.8 km', NULL, NULL, 'R', 1, '2019-10-11 07:35:00', '2019-10-11 07:35:00'),
(89, 10, 6, 0, '0.4 km', NULL, NULL, 'E', 1, '2019-10-11 07:35:17', '2019-10-11 07:35:17');

-- --------------------------------------------------------

--
-- Table structure for table `completed_training_logs`
--

CREATE TABLE IF NOT EXISTS `completed_training_logs` (
  `id` bigint(20) unsigned NOT NULL,
  `exercise` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'completed Exercise tile details',
  `training_log_id` bigint(20) NOT NULL COMMENT 'training Log Id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `completed_training_programs`
--

CREATE TABLE IF NOT EXISTS `completed_training_programs` (
  `id` bigint(20) unsigned NOT NULL,
  `program_id` int(10) unsigned NOT NULL COMMENT 'training program id',
  `week_wise_workout_id` bigint(20) DEFAULT NULL COMMENT 'week wise workouts id',
  `exercise` text COLLATE utf8mb4_unicode_ci COMMENT 'Store exercise object',
  `date` timestamp NULL DEFAULT NULL COMMENT 'date of program date selected',
  `is_complete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'User Complete this training log exercise',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name/title',
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code for country',
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'mobile prefix code',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `country_code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'India', 'IN', '+91', 1, NULL, NULL),
(2, 'Albania', 'AL', '+355', 1, NULL, NULL),
(3, 'Algeria', 'DZ', '+213', 1, NULL, NULL),
(4, 'American Samoa', 'DS', '+1', 1, NULL, NULL),
(5, 'Andorra', 'AD', '+376', 1, NULL, NULL),
(6, 'Angola', 'AO', NULL, 1, NULL, NULL),
(7, 'Anguilla', 'AI', NULL, 1, NULL, NULL),
(8, 'Antarctica', 'AQ', NULL, 1, NULL, NULL),
(9, 'Antigua and Barbuda', 'AG', NULL, 1, NULL, NULL),
(10, 'Argentina', 'AR', '91', 0, NULL, '2019-07-24 07:28:11'),
(11, 'Armenia', 'AM', NULL, 1, NULL, NULL),
(12, 'Aruba', 'AW', NULL, 0, NULL, '2019-07-09 04:42:39'),
(13, 'Ads', 'GA', '99', 0, '2019-07-24 06:20:02', '2019-07-24 07:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of Currency',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code of Currency',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is currency is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Singapore', 'SGD', 1, NULL, '2019-08-19 11:21:27'),
(2, 'USD', 'USD', 1, NULL, NULL),
(3, 'India', 'INR', 1, NULL, '2019-08-19 11:20:50'),
(4, 'Europe', 'EUR', 1, NULL, '2019-08-19 11:20:40'),
(5, 'Austria', 'AUT', 1, '2019-08-19 10:39:51', '2019-08-19 11:14:41'),
(6, 'Monaco', 'MCO', 1, '2019-08-19 10:41:43', '2019-08-19 11:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `custom_training_programs`
--

CREATE TABLE IF NOT EXISTS `custom_training_programs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL COMMENT 'Phase title',
  `code` varchar(200) DEFAULT NULL COMMENT 'from title',
  `is_active` tinyint(1) DEFAULT '1' COMMENT 'Phase is active or not',
  `parent_id` bigint(20) DEFAULT NULL COMMENT 'Parant id from this table',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_training_programs`
--

INSERT INTO `custom_training_programs` (`id`, `title`, `code`, `is_active`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Preparatory Phase(General Preparatory)', 'PREPARATORY_PHASE(GENERAL_PREPARATORY)', 1, NULL, NULL, NULL),
(2, 'Preparatory Phase (Specific Preparatory)', 'PREPARATORY_PHASE(SPECIFIC_PREPARATORY)', 1, NULL, NULL, NULL),
(3, 'Competitive Phase (Precompetitive)', 'COMPETITIVE_PHASE(PRECOMPETITIVE)', 1, NULL, NULL, NULL),
(4, 'Competitive Phase (Competitive)', 'COMPETITIVE_PHASE(COMPETITIVE)', 1, NULL, NULL, NULL),
(5, 'Transition Phase', 'TRANSITION_PHASE', 1, NULL, NULL, NULL),
(6, 'Base run', 'BASE_RUN', 1, 1, NULL, NULL),
(7, 'Long slow run', 'LONG_SLOW_RUN', 1, 2, NULL, NULL),
(8, 'Pace/ Tempo run', 'PACE/TEMPO_RUN', 1, 2, NULL, NULL),
(9, 'Aerobic Intervals run', 'AEROBIC_INTERVALS_RUN', 1, 2, NULL, NULL),
(10, 'Speed Intervals run', 'SPEED_INTERVALS_RUN', 1, 2, NULL, NULL),
(11, 'Hill run', 'HILL RUN', 1, 2, NULL, NULL),
(12, 'Fartlek run', 'FARTLEK_RUN', 1, 2, NULL, NULL),
(13, 'Maintenance', 'MAINTENANCE', 1, 3, NULL, NULL),
(14, 'Tapering', 'TAPERING', 1, 4, NULL, NULL),
(15, 'Active Rest', 'ACTIVE_REST', 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipments`
--

CREATE TABLE IF NOT EXISTS `equipments` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'Name of Equipment',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'this is active or not',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='use in Library ';

--
-- Dumping data for table `equipments`
--

INSERT INTO `equipments` (`id`, `name`, `code`, `is_active`, `updated_at`, `created_at`) VALUES
(1, 'Bodyweight', 'Bodyweight', 1, '2019-07-09 06:09:03', NULL),
(2, 'Machine', 'Machine', 1, NULL, NULL),
(3, 'Dumbbell', 'Dumbbell', 1, NULL, NULL),
(4, 'Kettlebell', 'Kettlebell', 1, NULL, NULL),
(5, 'Exercise Bell', 'Exercise Bell', 1, NULL, NULL),
(6, 'Agillity Ladder', 'Agillity Ladder', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feed_comments`
--

CREATE TABLE IF NOT EXISTS `feed_comments` (
  `id` bigint(20) unsigned NOT NULL,
  `feed_id` bigint(20) NOT NULL COMMENT 'feed id ',
  `user_id` bigint(20) NOT NULL COMMENT 'who entry this comment',
  `comment` text COLLATE utf8mb4_unicode_ci COMMENT 'Comment text',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feed_comments`
--

INSERT INTO `feed_comments` (`id`, `feed_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 14, 1, 'First Comment', '2019-08-22 05:28:29', '2019-08-22 05:28:29'),
(2, 14, 1, '2 Comment', '2019-08-22 05:28:35', '2019-08-22 05:28:35'),
(3, 1, 1, '3 Comment', '2019-08-22 05:28:37', '2019-08-22 05:28:37'),
(4, 1, 1, '4 Comment', '2019-08-22 05:28:39', '2019-08-22 05:28:39'),
(5, 14, 1, '5 Comment', '2019-08-22 05:28:39', '2019-08-22 05:28:39'),
(6, 14, 1, '6 Comment', '2019-08-22 05:28:41', '2019-08-22 05:28:41'),
(7, 14, 1, '7 Comment', '2019-08-22 05:28:42', '2019-08-22 05:28:42'),
(8, 14, 1, '8 Comment', '2019-08-22 05:28:44', '2019-08-22 05:28:44'),
(9, 14, 1, '9 Comment', '2019-08-22 05:28:45', '2019-08-22 05:28:45'),
(10, 14, 1, '10 Comment', '2019-08-22 05:28:48', '2019-08-22 05:28:48'),
(11, 14, 1, '11 Comment', '2019-08-22 05:28:49', '2019-08-22 05:28:49'),
(12, 14, 1, '12 Comment', '2019-08-22 05:28:50', '2019-08-22 05:28:50'),
(13, 14, 1, '13 Comment', '2019-08-22 05:28:52', '2019-08-22 05:28:52'),
(14, 14, 1, '14 Comment', '2019-08-22 05:28:54', '2019-08-22 05:28:54'),
(15, 14, 1, '15 Comment', '2019-08-22 05:28:55', '2019-08-22 05:28:55'),
(16, 14, 1, '16 Comment', '2019-08-22 05:28:57', '2019-08-22 05:28:57'),
(17, 14, 1, '17 Comment', '2019-08-22 05:28:58', '2019-08-22 05:28:58'),
(18, 14, 1, '18 Comment', '2019-08-22 05:29:00', '2019-08-22 05:29:00'),
(19, 8, 1, '19 Comment', '2019-08-22 05:29:02', '2019-08-22 05:29:02'),
(20, 14, 1, '20 Comment', '2019-08-22 05:29:04', '2019-08-22 05:29:04'),
(21, 14, 1, '22 Comment', '2019-08-22 05:29:08', '2019-08-22 05:29:08'),
(22, 14, 1, '23 Comment', '2019-08-22 05:29:13', '2019-08-22 05:29:13'),
(23, 14, 1, '24 Comment', '2019-08-22 05:29:14', '2019-08-22 05:29:14'),
(24, 14, 1, '25 Comment', '2019-08-22 05:29:15', '2019-08-22 05:29:15'),
(25, 14, 1, '26 Comment', '2019-08-22 05:29:16', '2019-08-22 05:29:16'),
(26, 14, 1, '27 Comment', '2019-08-22 05:29:18', '2019-08-22 05:29:18'),
(27, 14, 1, '28 Comment', '2019-08-22 05:29:19', '2019-08-22 05:29:19'),
(28, 14, 1, '29 Comment', '2019-08-22 05:29:20', '2019-08-22 05:29:20'),
(29, 14, 1, '30 Comment', '2019-08-22 05:29:24', '2019-08-22 05:29:24'),
(30, 8, 1, '31 Comment', '2019-08-22 05:29:26', '2019-08-22 05:29:26'),
(31, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:18:40', '2019-08-22 11:18:40'),
(32, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:18:55', '2019-08-22 11:18:55'),
(33, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:19:05', '2019-08-22 11:19:05'),
(34, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:19:12', '2019-08-22 11:19:12'),
(35, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:19:17', '2019-08-22 11:19:17'),
(36, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:20:01', '2019-08-22 11:20:01'),
(37, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:20:09', '2019-08-22 11:20:09'),
(38, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:21:08', '2019-08-22 11:21:08'),
(39, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:21:34', '2019-08-22 11:21:34'),
(40, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:21:44', '2019-08-22 11:21:44'),
(41, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:22:34', '2019-08-22 11:22:34'),
(42, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:23:12', '2019-08-22 11:23:12'),
(43, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:23:27', '2019-08-22 11:23:27'),
(44, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:23:39', '2019-08-22 11:23:39'),
(45, 14, 1, 'hi', '2019-08-22 11:23:48', '2019-08-22 11:23:48'),
(46, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:24:02', '2019-08-22 11:24:02'),
(47, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:30:00', '2019-08-22 11:30:00'),
(48, 14, 1, 'hello', '2019-08-22 11:30:09', '2019-08-22 11:30:09'),
(49, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:30:19', '2019-08-22 11:30:19'),
(50, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:30:26', '2019-08-22 11:30:26'),
(51, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:31:37', '2019-08-22 11:31:37'),
(52, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:31:44', '2019-08-22 11:31:44'),
(53, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:31:57', '2019-08-22 11:31:57'),
(54, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:32:13', '2019-08-22 11:32:13'),
(55, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:32:19', '2019-08-22 11:32:19'),
(56, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:32:34', '2019-08-22 11:32:34'),
(57, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:33:18', '2019-08-22 11:33:18'),
(58, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:33:23', '2019-08-22 11:33:23'),
(59, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:33:35', '2019-08-22 11:33:35'),
(60, 14, 1, 'hi', '2019-08-22 11:34:01', '2019-08-22 11:34:01'),
(61, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:34:44', '2019-08-22 11:34:44'),
(62, 14, 1, 'hi1', '2019-08-22 11:35:12', '2019-08-22 11:35:12'),
(63, 14, 1, 'Vikas Testing This Comment', '2019-08-22 11:35:54', '2019-08-22 11:35:54'),
(64, 14, 1, 'LOL Comment', '2019-08-22 11:36:09', '2019-08-22 11:36:09'),
(65, 14, 1, 'LOL Comment', '2019-08-22 11:36:31', '2019-08-22 11:36:31'),
(66, 14, 1, 'LOL Comment', '2019-08-22 11:36:47', '2019-08-22 11:36:47'),
(67, 14, 1, 'hi2', '2019-08-22 11:38:22', '2019-08-22 11:38:22'),
(68, 14, 1, 'LOL Comment', '2019-08-22 11:40:24', '2019-08-22 11:40:24'),
(69, 14, 1, 'LOL Comment', '2019-08-22 11:40:58', '2019-08-22 11:40:58'),
(70, 14, 1, '1', '2019-08-22 11:43:29', '2019-08-22 11:43:29'),
(71, 14, 1, '2', '2019-08-22 11:43:46', '2019-08-22 11:43:46'),
(72, 14, 1, '3', '2019-08-22 11:43:50', '2019-08-22 11:43:50'),
(73, 14, 1, '4', '2019-08-22 11:43:51', '2019-08-22 11:43:51'),
(74, 14, 1, '5', '2019-08-22 11:43:52', '2019-08-22 11:43:52'),
(75, 14, 1, '6', '2019-08-22 11:43:53', '2019-08-22 11:43:53'),
(76, 14, 1, 'LLLL Comment', '2019-08-22 11:44:03', '2019-08-22 11:44:03'),
(77, 14, 1, '3', '2019-08-22 11:56:00', '2019-08-22 11:56:00'),
(78, 14, 1, 'hello', '2019-08-22 11:59:03', '2019-08-22 11:59:03'),
(79, 7, 1, 'hi', '2019-08-22 12:15:39', '2019-08-22 12:15:39'),
(80, 7, 1, 'hello', '2019-08-22 12:15:43', '2019-08-22 12:15:43'),
(81, 7, 1, '5', '2019-08-22 12:21:42', '2019-08-22 12:21:42'),
(82, 8, 1, '3', '2019-08-22 12:30:13', '2019-08-22 12:30:13'),
(83, 7, 1, '1', '2019-08-22 13:04:08', '2019-08-22 13:04:08'),
(84, 7, 1, '2', '2019-08-22 13:04:09', '2019-08-22 13:04:09'),
(85, 7, 1, '3', '2019-08-22 13:04:10', '2019-08-22 13:04:10'),
(86, 7, 1, '4', '2019-08-22 13:04:10', '2019-08-22 13:04:10'),
(87, 7, 1, '5', '2019-08-22 13:04:11', '2019-08-22 13:04:11'),
(88, 7, 1, '6', '2019-08-22 13:04:11', '2019-08-22 13:04:11'),
(89, 14, 3, 'hi', '2019-09-04 11:52:13', '2019-09-04 11:52:13'),
(90, 7, 22, 'a', '2019-09-05 04:38:14', '2019-09-05 04:38:14'),
(91, 7, 22, 'zxc', '2019-09-05 04:38:23', '2019-09-05 04:38:23'),
(92, 14, 3, 'kjdhnfjklndfgkl l jdfhkljhn ldkfghndfgkln lodge hkldfgn hkldfgnhkldfgnklh iohjtiohj silken ouhenighnerdfjkikj3 iowahft q2;e pi whispering Oruro Jeep pjuyeo90rty34', '2019-09-27 05:50:52', '2019-09-27 05:50:52'),
(93, 14, 3, 'KSU bjkdsjksnjkndfs sdfioghdfs gbefirbg sdibgidfsbg gbidfsbgsbg gojdfogfds sng ognoe jr gopejgoergergerhyerth rtjhrryeikuhiuhewiuhgeirwhgeiuhriouewrhiuehr iuehriuherghergiouwhiorhgoqaiohioghwaoihoghrohgeowhjaeobnioqw ugebghraibfwg qaehsheahr wt hergh er e hr gehaq', '2019-09-27 05:51:58', '2019-09-27 05:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `feed_likes`
--

CREATE TABLE IF NOT EXISTS `feed_likes` (
  `id` bigint(20) unsigned NOT NULL,
  `feed_id` bigint(20) NOT NULL COMMENT 'Training Log id as feed_id ',
  `user_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'liked user ids as array',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feed_likes`
--

INSERT INTO `feed_likes` (`id`, `feed_id`, `user_ids`, `created_at`, `updated_at`) VALUES
(1, 14, '1,2,3,4', '2019-08-21 09:24:49', '2019-08-22 07:25:37'),
(2, 8, '1', '2019-08-22 07:23:43', '2019-08-22 07:23:43'),
(3, 8, '1', '2019-08-22 07:24:41', '2019-08-22 07:24:41'),
(4, 8, '1', '2019-08-22 07:26:00', '2019-08-22 07:26:00'),
(5, 8, '4', '2019-08-22 07:26:41', '2019-08-22 07:26:41'),
(6, 8, '4', '2019-08-22 07:27:17', '2019-08-22 07:27:17'),
(7, 8, '4', '2019-08-22 07:28:18', '2019-08-22 08:36:39'),
(8, 8, '4', '2019-08-22 07:28:47', '2019-09-27 05:43:37'),
(9, 41, '4', '2019-08-22 07:29:06', '2019-08-22 07:29:06'),
(10, 14, '1', '2019-08-22 07:48:38', '2019-08-22 07:48:38'),
(11, 14, '1,22', '2019-08-22 07:48:45', '2019-09-24 14:47:04'),
(12, 41, '4', '2019-08-22 09:43:18', '2019-08-22 09:43:18'),
(13, 41, '4', '2019-08-22 09:43:23', '2019-08-22 09:43:23'),
(14, 41, '4', '2019-08-22 09:43:28', '2019-08-22 09:43:28'),
(15, 41, '4', '2019-08-22 09:43:31', '2019-08-22 09:43:31'),
(16, 41, '4', '2019-08-22 09:43:39', '2019-08-22 09:47:05'),
(17, 7, '1,3,22', '2019-08-22 12:53:49', '2019-09-24 14:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or deactivate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'English', 'ENGLISH', 1, NULL, NULL),
(2, 'Gujarati', 'GUJARATI', 1, NULL, NULL),
(3, 'Maray', 'Maray', 0, '2019-07-09 06:31:18', '2019-07-09 06:32:18'),
(4, 'Spenish', 'Spenish', 1, '2019-07-09 06:32:10', '2019-07-09 06:32:12'),
(5, 'Test', 'test', 1, '2019-07-18 04:28:10', '2019-07-18 04:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `libraries`
--

CREATE TABLE IF NOT EXISTS `libraries` (
  `id` bigint(20) NOT NULL,
  `exercise_name` varchar(200) NOT NULL COMMENT 'Exercise name',
  `user_id` bigint(20) NOT NULL COMMENT 'From users table',
  `region_id` bigint(20) DEFAULT NULL COMMENT 'From region table',
  `body_part_id` bigint(20) DEFAULT NULL COMMENT 'From Body part table',
  `body_sub_part_id` bigint(20) DEFAULT NULL COMMENT 'From Body part table',
  `mechanics_id` bigint(20) DEFAULT NULL COMMENT 'From mechanics table',
  `targeted_muscles_ids` text COMMENT 'From targeted_muscles table',
  `action_force_id` bigint(20) DEFAULT NULL COMMENT 'From action_force table',
  `equipment_id` bigint(20) DEFAULT NULL COMMENT 'From equipment table',
  `repetition_max` text COMMENT 'store array obejct',
  `is_favorite` tinyint(1) DEFAULT '0' COMMENT 'show in favorite list',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 COMMENT='Library Master table';

--
-- Dumping data for table `libraries`
--

INSERT INTO `libraries` (`id`, `exercise_name`, `user_id`, `region_id`, `body_part_id`, `body_sub_part_id`, `mechanics_id`, `targeted_muscles_ids`, `action_force_id`, `equipment_id`, `repetition_max`, `is_favorite`, `is_active`, `created_at`, `updated_at`) VALUES
(38, 'Multiple Muscles Id', 2, 1, 1, 8, 1, '[10,11,12,13,14]', 1, 1, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 0, 1, '2019-06-14 09:47:48', '2019-06-14 09:47:48'),
(40, 'Check Data Updated Or Not?', 3, 1, 1, 7, 1, '[11,15]', NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 1, 0, '2019-06-14 10:41:48', '2019-09-04 11:50:40'),
(41, 'Check Validaiton Test', 2, 1, 1, 8, 2, NULL, NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 1, 1, '2019-06-14 10:41:58', '2019-06-14 10:43:31'),
(42, 'Check Validaiton Test', 2, 1, 1, 7, 3, NULL, NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 0, 1, '2019-06-14 12:15:43', '2019-06-14 12:15:43'),
(43, 'Check Validaiton Test', 2, 1, 1, 8, 1, NULL, NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 0, 1, '2019-06-14 12:15:59', '2019-06-14 12:15:59'),
(50, 'Check Validaiton Test', 2, 1, 1, 8, 2, NULL, NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 0, 1, '2019-06-14 12:16:17', '2019-06-14 12:16:17'),
(51, 'Check Validaiton Test', 2, 1, 1, 7, 3, '[15,16]', NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 0, 1, '2019-06-14 12:17:08', '2019-06-14 12:17:08'),
(52, 'Check Validaiton Test', 2, 1, 1, 8, 2, '[15,16]', NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 0, 1, '2019-06-15 05:12:33', '2019-06-15 05:12:33'),
(53, 'Check Data Updated Or Not?', 3, 1, 1, 7, 1, '[11,15]', NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 1, 1, '2019-06-15 05:30:55', '2019-06-17 05:25:18'),
(54, 'Check Validaiton Test', 2, 1, 1, 7, NULL, '[15,16]', NULL, NULL, '[{"name":"1RM","est_weight":20,"act_weight":25},{"name":"2RM","est_weight":12,"act_weight":13},{"name":"3RM","est_weight":32,"act_weight":28},{"name":"4RM","est_weight":31,"act_weight":33}]', 0, 1, '2019-09-04 10:24:38', '2019-09-04 10:24:38'),
(55, 'Test', 3, 3, 1, 7, 2, '[]', 4, 2, '[{"name":"1 RM","est_weight":"5","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"13 RM","est_weight":"0","act_weight":"0"},{"name":"14 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 1, 1, '2019-09-04 11:51:35', '2019-09-23 11:22:08'),
(56, 'Test', 23, 3, 3, 11, 3, '[]', 3, 4, '[{"name":"1 RM","est_weight":"10","act_weight":"0"},{"name":"2 RM","est_weight":"0","act_weight":"0"},{"name":"3 RM","est_weight":"0","act_weight":"0"},{"name":"4 RM","est_weight":"0","act_weight":"0"},{"name":"5 RM","est_weight":"0","act_weight":"0"},{"name":"6 RM","est_weight":"0","act_weight":"0"},{"name":"7 RM","est_weight":"0","act_weight":"0"},{"name":"8 RM","est_weight":"0","act_weight":"0"},{"name":"9 RM","est_weight":"0","act_weight":"0"},{"name":"10 RM","est_weight":"0","act_weight":"0"},{"name":"11 RM","est_weight":"0","act_weight":"0"},{"name":"12 RM","est_weight":"0","act_weight":"0"},{"name":"13 RM","est_weight":"0","act_weight":"0"},{"name":"14 RM","est_weight":"0","act_weight":"0"},{"name":"15 RM","est_weight":"0","act_weight":"0"}]', 0, 1, '2019-10-25 10:39:26', '2019-10-25 10:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `load_center_events`
--

CREATE TABLE IF NOT EXISTS `load_center_events` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'who create events',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Title of event',
  `visible_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'visible to INVITATION_ONLY and PUBLIC use constant here',
  `max_guests` int(11) DEFAULT NULL COMMENT 'number of guests will come',
  `event_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'name of event',
  `event_price` int(11) DEFAULT NULL COMMENT 'event price',
  `currency_id` bigint(20) DEFAULT NULL COMMENT 'price currency id ',
  `event_image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event image to show in list',
  `date_time` timestamp NULL DEFAULT NULL COMMENT 'event date and time',
  `earlier_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'to come earlier time',
  `duration` int(11) DEFAULT NULL COMMENT 'event durations',
  `location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event location',
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event map latitude',
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'event map longitude',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'more about event description',
  `amenities_available` text COLLATE utf8mb4_unicode_ci COMMENT 'event services',
  `cancellation_policy_id` bigint(20) DEFAULT NULL COMMENT 'cancellation policy',
  `general_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'rules for events',
  `is_completed` tinyint(1) DEFAULT '0' COMMENT 'event is completed or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `load_center_events`
--

INSERT INTO `load_center_events` (`id`, `user_id`, `title`, `visible_to`, `max_guests`, `event_name`, `event_price`, `currency_id`, `event_image`, `date_time`, `earlier_time`, `duration`, `location`, `latitude`, `longitude`, `description`, `amenities_available`, `cancellation_policy_id`, `general_rules`, `is_completed`, `created_at`, `updated_at`) VALUES
(42, 4, 'Test New Concept', 'PUBLIC', 5, 'New Public Event', 10, NULL, NULL, '2019-06-20 08:46:32', '16', 10, 'Landan', '21.2082', '72.8808', 'This is the brife description about this events', '[{"name":"Towal","value":true},{"name":"Towal","value":true}]', NULL, NULL, 0, '2019-07-19 05:28:55', '2019-07-19 05:28:55'),
(43, 4, 'Ll Test', 'PUBLIC', 5, 'New Public Event', 10, NULL, NULL, '2019-06-20 08:46:32', '16', 10, 'Landan', '21.2083', '72.8784', 'This is the brife description about \nthis events', '[{"name": "Towal","value": true},{"name": "Towal","value": true}]', NULL, NULL, 0, '2019-07-19 06:41:31', '2019-07-19 06:41:31'),
(44, 4, 'Ll Test 123', 'PUBLIC', 5, 'New Public Event', 10, NULL, '/uploaded/images/events/5d318cd84a816_photo1', '2019-06-20 03:16:32', '16', 10, 'Landan', NULL, NULL, 'This is the brife description about \r\nthis events', '[{"name": "Towal","value": true},{"name": "Towal","value": true}]', NULL, NULL, 0, '2019-07-19 03:56:48', '2019-07-19 03:56:48'),
(45, 4, 'Vikas Event Test', 'PUBLIC', 5, 'Vikas Event Test', 10, 1, NULL, '2019-06-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towel","value":true}]', 1, 'There is no rules', 0, '2019-08-16 11:34:15', '2019-08-16 11:34:15'),
(46, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 04:54:23', '2019-08-19 04:54:23'),
(47, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-07-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:01:32', '2019-08-19 05:01:32'),
(48, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-20 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:01:49', '2019-08-19 05:01:49'),
(49, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 08:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:01:57', '2019-08-19 05:01:57'),
(50, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10.2113', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:02:05', '2019-08-19 05:02:05'),
(51, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '0.211321', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:13:30', '2019-08-19 05:13:30'),
(52, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '0', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:13:37', '2019-08-19 05:13:37'),
(53, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '-10', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:13:58', '2019-08-19 05:13:58'),
(54, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1e17', '12.2113', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:16:47', '2019-08-19 05:16:47'),
(55, 4, '19-8 Date Testing', 'PUBLIC', 5, 'Logical Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1e16', '1e16', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:17:21', '2019-08-19 05:17:21'),
(56, 4, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '-10', '12.211321', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:19:26', '2019-08-19 05:19:26'),
(57, 4, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1e16', '1e16', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:20:15', '2019-08-19 05:20:15'),
(58, 4, 'Stonger Updated', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 05:24:33', '2019-08-19 05:32:56'),
(59, 4, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:14:09', '2019-08-19 06:14:09'),
(60, 4, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:14:31', '2019-08-19 06:14:31'),
(61, 4, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '10000000000000000', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:23:20', '2019-08-19 06:23:20'),
(62, 4, 'Stonger', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '1234.56789', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:23:41', '2019-08-19 06:23:41'),
(63, 4, 'Stonger Lol', 'PUBLIC', 5, 'Stranger Event', 10, 1, NULL, '2019-08-19 00:46:32', '16', 10, 'Landan', '12345.6789', '10000000000000000', 'This is the brife description about this events', '[{"name":"towal","value":true}]', 1, 'There is no rules', 0, '2019-08-19 06:23:53', '2019-08-19 06:24:27'),
(64, 3, 'Test', 'PUBLIC', 12, 'Hello', 12, 5, '/uploaded/images/events/5d8dacb296ad4_yVpY5', '2019-10-27 07:31:03', '20 min', 24, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Test', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : true\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 2, 'Test rules', 0, '2019-09-27 06:31:14', '2019-09-27 06:31:14'),
(65, 3, 'Anil', 'PUBLIC', 20, 'Test', 10, 4, '/uploaded/images/events/5d8e01440ae6e_buujt', '2019-11-27 13:30:43', '10 min', 48, 'Surat, Gujarat, India', '21.1702401', '72.83106070000001', 'Test', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : false\n  },\n  {\n    "name" : "Towel",\n    "data" : false\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : true\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 2, 'Dasfdjslgdfgdfgfd', 0, '2019-09-27 12:32:04', '2019-09-27 12:32:04'),
(66, 22, 'Iabdd', 'PUBLIC', 46465, 'Askdjd', 45484, 2, '/uploaded/images/events/5d91a9ea16811_npgLN', '2019-11-30 09:03:47', 'sghh', 72, 'Ghatkopar East, Mumbai, Maharashtra, India', '19.0785988', '72.91014559999999', 'Ajsvdbd', '[\n  {\n    "name" : "Drinking water",\n    "data" : true\n  },\n  {\n    "name" : "Air conditioning",\n    "data" : true\n  },\n  {\n    "name" : "Towel",\n    "data" : false\n  },\n  {\n    "name" : "Locker",\n    "data" : true\n  },\n  {\n    "name" : "Shower room",\n    "data" : false\n  },\n  {\n    "name" : "Soap and shampoo",\n    "data" : true\n  },\n  {\n    "name" : "Changing Room",\n    "data" : true\n  },\n  {\n    "name" : "First aid kit",\n    "data" : true\n  }\n]', 3, 'Aksbdbdd', 0, '2019-09-30 07:08:26', '2019-09-30 07:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `load_center_requests`
--

CREATE TABLE IF NOT EXISTS `load_center_requests` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'who create request',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Request Title Broadcast',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Training Start date',
  `birth_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'date from register user',
  `yourself` text COLLATE utf8mb4_unicode_ci COMMENT 'about your self',
  `country_id` bigint(20) unsigned DEFAULT NULL COMMENT 'user select country',
  `specialization_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'select specialization ',
  `training_type_ids` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'select training types ',
  `experience_year` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'experience year',
  `rating` double DEFAULT NULL COMMENT 'Request ratting',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `load_center_requests`
--

INSERT INTO `load_center_requests` (`id`, `user_id`, `title`, `start_date`, `birth_date`, `yourself`, `country_id`, `specialization_ids`, `training_type_ids`, `experience_year`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 'Again New Request', '2019-08-24 06:51:54', '1996-01-02 07:01:09', 'Hi, This is the sample Load Center Request add', 1, '1,2', '1,2', '1.5', 4.5, '2019-06-27 09:37:33', '2019-06-27 09:37:33'),
(2, 3, 'Test', '2019-09-05 11:56:09', '2020-09-04 11:56:09', 'Fdfdfd', 9, '1,2', '7,2', '0.5', 2.5, '2019-09-04 11:56:40', '2019-09-04 11:56:40'),
(3, 22, 'Looking For S&c Coach For Basketball', '2019-10-31 16:55:59', '1985-10-04 16:55:59', 'Have been doing basketball for 14 years. \nNational player and doing it competitively.\nWould like to improve my speed.', 8, '1', '2', '10', 5, '2019-10-02 17:00:38', '2019-10-02 17:00:38'),
(4, 34, 'S&c For Basketball', '2020-01-09 16:37:35', '1986-10-03 16:37:35', '- competitive basketball player.\n- looking to improve speed and power.', 8, '1', '3', '10', 5, '2019-10-09 16:46:53', '2019-10-09 16:46:53'),
(5, 36, 'Test', '2019-10-10 09:03:21', '2017-10-09 00:00:00', 'Test', 7, '1', '7', '1', 3, '2019-10-10 09:03:52', '2019-10-10 09:03:52'),
(6, 34, 'S&c For Basketball', '2019-11-13 02:15:51', '1986-10-04 00:00:00', '- competitive athlete', 8, '1', '2', '10', 5, '2019-10-13 02:17:02', '2019-10-13 02:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE IF NOT EXISTS `mechanics` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'mechanics name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'TEST', 1, NULL, NULL),
(2, 'Single', 'SINGLE', 1, NULL, NULL),
(3, 'Compound', 'COMPOUND', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `message_conversation`
--

CREATE TABLE IF NOT EXISTS `message_conversation` (
  `id` bigint(20) NOT NULL,
  `from_id` bigint(20) NOT NULL COMMENT 'sender id',
  `to_id` bigint(20) NOT NULL COMMENT 'receiver_id',
  `last_message` longtext COMMENT 'last message for display in main chat list',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0 = simple message, 1=log message, 2=event message , 3 = Booked client id ',
  `training_log_id` bigint(20) DEFAULT NULL COMMENT 'training log id ',
  `event_id` bigint(20) DEFAULT NULL COMMENT 'load center event id ',
  `booked_client_id` bigint(20) DEFAULT NULL COMMENT 'From booked client id ',
  `unread_count` int(11) DEFAULT NULL COMMENT 'show unreaded count',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_conversation`
--

INSERT INTO `message_conversation` (`id`, `from_id`, `to_id`, `last_message`, `type`, `training_log_id`, `event_id`, `booked_client_id`, `unread_count`, `created_at`, `updated_at`) VALUES
(1, 23, 1, '10', 0, NULL, NULL, NULL, 0, '2019-10-26 09:32:22', '2019-10-26 09:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) unsigned NOT NULL,
  `conversation_id` bigint(20) DEFAULT NULL COMMENT 'Main Conversation id ',
  `from_id` bigint(20) unsigned DEFAULT NULL COMMENT ' sender id (user_id)',
  `to_id` bigint(20) unsigned DEFAULT NULL COMMENT ' receiver id (user_id)',
  `message` text COLLATE utf8mb4_unicode_ci COMMENT 'message body here',
  `training_log_id` bigint(20) DEFAULT NULL COMMENT 'training log id	',
  `event_id` bigint(20) DEFAULT NULL COMMENT 'load center event id	',
  `booked_client_id` bigint(20) DEFAULT NULL COMMENT 'booked client id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `from_id`, `to_id`, `message`, `training_log_id`, `event_id`, `booked_client_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 23, 'hi', NULL, NULL, NULL, '2019-10-26 09:32:22', '2019-10-26 09:32:22'),
(2, 1, 1, 23, '2', NULL, NULL, NULL, '2019-10-26 09:32:28', '2019-10-26 09:32:28'),
(3, 1, 1, 23, '3', NULL, NULL, NULL, '2019-10-26 09:32:29', '2019-10-26 09:32:29'),
(4, 1, 1, 23, '5', NULL, NULL, NULL, '2019-10-26 09:32:35', '2019-10-26 09:32:35'),
(5, 1, 1, 23, '6', NULL, NULL, NULL, '2019-10-26 09:32:36', '2019-10-26 09:32:36'),
(6, 1, 1, 23, '7', NULL, NULL, NULL, '2019-10-26 09:32:37', '2019-10-26 09:32:37'),
(7, 1, 1, 23, '8', NULL, NULL, NULL, '2019-10-26 09:32:38', '2019-10-26 09:32:38'),
(8, 1, 1, 23, '9', NULL, NULL, NULL, '2019-10-26 09:32:38', '2019-10-26 09:32:38'),
(9, 1, 23, 1, '9', NULL, NULL, NULL, '2019-10-26 09:32:45', '2019-10-26 09:32:45'),
(10, 1, 23, 1, '10', NULL, NULL, NULL, '2019-10-26 09:32:48', '2019-10-26 09:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_28_083939_create_users_table', 1),
(2, '2019_05_29_102158_create_accounts_table', 1),
(3, '2019_06_19_083930_create_load_center_event_table', 2),
(4, '2019_06_24_044134_create_training_types_table', 3),
(5, '2019_06_24_052730_create_countries_table', 4),
(6, '2019_06_21_104410_create_load_center_requests_table', 5),
(7, '2019_06_27_042243_create_specializations_table', 6),
(8, '2019_06_27_051836_create_services_table', 7),
(9, '2020_06_27_051839_create_user_relations_table', 8),
(10, '2020_06_27_051839_create_users_relations_table', 9),
(11, '2019_06_27_060941_create_languages_table', 10),
(12, '2019_06_28_064107_create_professional_profiles_table', 11),
(13, '2019_07_29_041957_create_messages_table', 12),
(14, '2019_07_31_072141_create_user_followers_table', 13),
(15, '2019_05_31_042059_create_training_logs_table', 14),
(16, '2019_06_01_065921_create_saved_workouts_table', 14),
(17, '2019_06_03_093531_create_preset_training_programs_table', 14),
(18, '2019_06_04_044942_create_training_frequencies_table', 14),
(19, '2019_06_04_050412_create_training_programs_table', 14),
(20, '2019_06_04_110212_create_notifications_table', 14),
(21, '2019_06_05_091335_create_sessions_table', 14),
(22, '2019_06_06_110757_create_custom_training_programs_table', 14),
(23, '2019_06_07_084638_create_completed_training_logs_table', 14),
(24, '2019_06_07_101753_create_equipments_table', 14),
(25, '2019_06_07_115335_create_body_parts_table', 14),
(26, '2019_06_12_054639_create_mechanics_table', 14),
(27, '2019_06_12_061142_create_action_forces_table', 14),
(28, '2019_06_12_063942_create_repetition_maxes_table', 14),
(29, '2019_06_12_084724_create_libraries_table', 14),
(30, '2019_06_13_042728_create_targeted_muscles_table', 14),
(31, '2019_06_13_073441_create_regions_table', 14),
(32, '2019_08_16_073519_create_currencies_table', 15),
(33, '2019_08_16_092449_create_cancellation_policies_table', 16),
(34, '2019_08_21_074019_create_feed_likes_table', 17),
(35, '2019_08_21_120224_create_feed_comments_table', 18),
(36, '2019_08_27_054400_create_available_times_table', 19),
(37, '2019_08_27_063214_create_booked_clients_table', 20),
(38, '2019_08_29_111633_create_users_snoozes_table', 21),
(39, '2019_06_28_064107_create_setting_professional_profiles_table', 22),
(40, '2019_09_02_053420_setting_professional_profiles', 23),
(41, '2019_09_04_041808_create_payment_options_table', 24),
(42, '2019_09_04_045817_create_professional_types_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `message` varchar(100) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `body` text,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `read_at`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wellcome To our application.', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-04 18:30:00', '2019-08-27 07:18:00'),
(2, 'Sample', NULL, '2019-08-27 06:52:06', NULL, 1, '2019-06-04 18:30:00', '2019-08-27 06:52:06'),
(3, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 3, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(4, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 4, '2019-06-05 18:30:00', '2019-06-06 05:33:45'),
(5, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 5, '2019-06-06 18:30:00', '2019-06-06 05:33:45'),
(6, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 6, '2019-06-07 18:30:00', '2019-06-06 05:33:45'),
(7, 'Sample', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-08 18:30:00', '2019-08-27 07:18:00'),
(8, 'Sample', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-09 18:30:00', '2019-08-27 07:18:00'),
(9, 'Sample', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-10 18:30:00', '2019-08-27 07:18:00'),
(10, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-11 18:30:00', '2019-06-06 05:33:45'),
(11, 'Sample', NULL, '2019-08-27 07:18:00', NULL, 1, '2019-06-12 18:30:00', '2019-08-27 07:18:00'),
(12, 'Sample', NULL, '2019-08-27 07:17:59', NULL, 1, '2019-06-13 18:30:00', '2019-08-27 07:17:59'),
(13, 'Sample', NULL, '2019-08-27 07:17:59', NULL, 1, '2019-06-14 18:30:00', '2019-08-27 07:17:59'),
(14, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-15 18:30:00', '2019-06-06 05:33:45'),
(15, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-16 18:30:00', '2019-06-06 05:33:45'),
(16, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-17 18:30:00', '2019-06-06 05:33:45'),
(17, 'Sample', NULL, '2019-08-27 07:32:11', NULL, 1, '2019-06-18 18:30:00', '2019-08-27 07:32:11'),
(18, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-19 18:30:00', '2019-06-06 05:33:45'),
(19, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-20 18:30:00', '2019-06-06 05:33:45'),
(20, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-21 18:30:00', '2019-06-06 05:33:45'),
(21, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-22 18:30:00', '2019-06-06 05:33:45'),
(22, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-23 18:30:00', '2019-06-06 05:33:45'),
(23, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-24 18:30:00', '2019-06-06 05:33:45'),
(24, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-25 18:30:00', '2019-06-06 05:33:45'),
(25, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-26 18:30:00', '2019-06-06 05:33:45'),
(26, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(27, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(28, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(29, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(30, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(31, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45'),
(32, 'Sample', NULL, '2019-06-06 05:33:45', NULL, 1, '2019-06-04 18:30:00', '2019-06-06 05:33:45');

-- --------------------------------------------------------

--
-- Table structure for table `payment_options`
--

CREATE TABLE IF NOT EXISTS `payment_options` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of your payment option',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code for unique payment option type',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'for more description payment options',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'for active or de-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_options`
--

INSERT INTO `payment_options` (`id`, `name`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'eWallet', 'EWALLET', 'No minimum top up', 1, NULL, NULL),
(2, 'Cash', 'CASH', '*Load will not be responsible for any dispute paid by cash', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `preset_training_programs`
--

CREATE TABLE IF NOT EXISTS `preset_training_programs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT 'Program Title Name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from title',
  `subtitle` varchar(200) DEFAULT NULL COMMENT 'Program Subtitle',
  `status` varchar(50) DEFAULT NULL COMMENT 'RESISTANCE and CARDIO',
  `type` varchar(50) DEFAULT NULL COMMENT 'PRESET and CUSTOM',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Active or Deactivate',
  `weeks` int(11) DEFAULT NULL COMMENT 'use for Cardio only show for date wise week',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preset_training_programs`
--

INSERT INTO `preset_training_programs` (`id`, `title`, `code`, `subtitle`, `status`, `type`, `is_active`, `weeks`, `created_at`, `updated_at`) VALUES
(1, 'General Strengthening', NULL, 'This training program lasts for 8 months.', 'RESISTANCE', 'PRESET', 1, 34, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(2, 'Triathion', NULL, 'This training program lasts for 23 monaths.', 'RESISTANCE', 'PRESET', 1, 52, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(3, 'Martial Arts( without endurance )', NULL, 'Martial Arts( without endurance ) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(4, 'Martial Arts( with endurance )', NULL, 'Martial Arts( with endurance ) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(5, 'Soccer( amateur )', NULL, 'Soccer( amateur ) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(6, 'Soccer( professional)', NULL, 'Soccer( professional) Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(7, 'Basketball', NULL, 'Basketball Training.', 'RESISTANCE', 'PRESET', 1, NULL, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(8, '5 KM', '5K', 'This training program lasts for 3 months.', 'CARDIO', 'PRESET', 1, 18, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(9, '10 KM', '10K', 'This training program lasts for 6 months.', 'CARDIO', 'PRESET', 1, 24, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(10, '21 KM', '21K', 'This training program lasts for 6 months.', 'CARDIO', 'PRESET', 1, 24, '2019-06-02 18:30:00', '2019-06-02 18:30:00'),
(11, '42 KM', '42K', 'This training program lasts for 6 months.', 'CARDIO', 'PRESET', 1, 24, '2019-06-02 18:30:00', '2019-06-02 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `professional_types`
--

CREATE TABLE IF NOT EXISTS `professional_types` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of your payment option',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code for unique payment option type',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT 'for more description payment options',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'for active or de-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professional_types`
--

INSERT INTO `professional_types` (`id`, `name`, `code`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Single', 'SINGLE', 'Allow the client to book service one session at a time', 1, NULL, NULL),
(2, 'Multiple', 'MULTIPLE', 'Allow the client to purchase multiple sessions but book service one session at a time', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Neck', 'Neck', 1, NULL, NULL),
(2, 'Shoulders', 'Shoulders', 1, NULL, NULL),
(3, 'Shoulders', 'Shoulders', 1, NULL, NULL),
(4, 'Upper Arms', 'Upper Arms', 1, NULL, NULL),
(5, 'Chest', 'Chest', 1, NULL, NULL),
(6, 'Back', 'Back', 1, NULL, NULL),
(7, 'Hips', 'Hips', 1, NULL, NULL),
(8, 'Lower legs', 'Lower legs', 1, NULL, NULL),
(9, 'Trunk', 'Trunk', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `repetition_maxes`
--

CREATE TABLE IF NOT EXISTS `repetition_maxes` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'mechanics name',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `weight` int(11) NOT NULL,
  `estimated_weight` int(11) DEFAULT NULL COMMENT 'Not Used yet',
  `actual_weight` int(11) DEFAULT NULL COMMENT 'Not Used yet',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='use in Library';

--
-- Dumping data for table `repetition_maxes`
--

INSERT INTO `repetition_maxes` (`id`, `name`, `code`, `weight`, `estimated_weight`, `actual_weight`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1RM', '1RM', 10, 1, 2, 1, NULL, NULL),
(2, '2RM', '2RM', 50, NULL, NULL, 1, NULL, NULL),
(3, '3RM', '3RM', 30, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `saved_workouts`
--

CREATE TABLE IF NOT EXISTS `saved_workouts` (
  `id` bigint(11) NOT NULL,
  `training_log_id` bigint(20) NOT NULL COMMENT 'from training Log Id',
  `user_id` bigint(11) NOT NULL COMMENT 'User id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Copy from Training Log';

--
-- Dumping data for table `saved_workouts`
--

INSERT INTO `saved_workouts` (`id`, `training_log_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-06-01 07:37:51', '2019-06-01 07:37:51'),
(2, 8, 2, '2019-06-01 07:40:12', '2019-06-01 07:40:12'),
(3, 9, 2, '2019-06-03 12:12:30', '2019-06-03 12:12:30'),
(6, 7, 2, '2019-06-07 09:33:14', '2019-06-07 09:33:14'),
(7, 10, 2, '2019-06-07 10:37:43', '2019-06-07 10:37:43'),
(8, 14, 2, '2019-07-16 10:05:21', '2019-07-16 10:05:21'),
(9, 15, 2, '2019-07-16 10:05:43', '2019-07-16 10:05:43'),
(10, 16, 2, '2019-07-16 10:05:47', '2019-07-16 10:05:47'),
(11, 17, 2, '2019-07-16 10:05:49', '2019-07-16 10:05:49'),
(12, 18, 2, '2019-07-16 10:05:51', '2019-07-16 10:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or deactivate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Service1', 'service1', 1, NULL, '2019-07-09 10:35:05'),
(2, 'Service2', 'Service2', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'user create this session',
  `status` varchar(20) NOT NULL COMMENT 'use constatn',
  `name` varchar(200) NOT NULL COMMENT 'session name',
  `type` varchar(200) NOT NULL COMMENT 'session type',
  `intensity` varchar(200) NOT NULL COMMENT 'session  intensity',
  `fees` int(11) NOT NULL COMMENT 'fees amount',
  `professional_name` varchar(200) DEFAULT NULL COMMENT 'session   professional name',
  `session_id` varchar(100) DEFAULT NULL COMMENT 'session id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting_premium`
--

CREATE TABLE IF NOT EXISTS `setting_premium` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'who created it',
  `about` text COLLATE utf8mb4_unicode_ci COMMENT 'about premium user detail',
  `specialization_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'multiple specialization ids (max 3)',
  `language_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'multiple language ids',
  `is_auto_topup` tinyint(1) DEFAULT '0' COMMENT 'is auto refil wallet or not',
  `auto_topup_amount` int(11) DEFAULT NULL COMMENT 'auto refil wallet amount',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_premium`
--

INSERT INTO `setting_premium` (`id`, `user_id`, `about`, `specialization_ids`, `language_ids`, `is_auto_topup`, `auto_topup_amount`, `created_at`, `updated_at`) VALUES
(1, 22, 'Its all about wedgets by vikas ASD', '1,2', '2,4', 0, 0, '2019-09-09 09:59:30', '2019-09-14 05:06:27'),
(2, 23, 'Dsaxfdas', '3,7', '1', 1, 10, '2019-09-12 04:31:03', '2019-09-14 06:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `setting_professional_profiles`
--

CREATE TABLE IF NOT EXISTS `setting_professional_profiles` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'User Profile',
  `profession` text COLLATE utf8mb4_unicode_ci COMMENT 'User profession',
  `location_name` text COLLATE utf8mb4_unicode_ci COMMENT 'Location Name',
  `introduction` text COLLATE utf8mb4_unicode_ci COMMENT 'user introduction',
  `specialization_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'user specialized activities',
  `rate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT 'training rate',
  `cancellation_policy_id` bigint(20) DEFAULT NULL COMMENT 'cancellation_policy_id',
  `general_rules` text COLLATE utf8mb4_unicode_ci COMMENT 'add general rules',
  `currency_id` bigint(20) DEFAULT NULL COMMENT 'currency id',
  `academic_credentials` text COLLATE utf8mb4_unicode_ci COMMENT 'user academic_credentials',
  `experience_and_achievements` text COLLATE utf8mb4_unicode_ci COMMENT 'user experience and achievements',
  `terms_of_service` text COLLATE utf8mb4_unicode_ci COMMENT 'user terms of service',
  `languages_spoken_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'user languages spoken',
  `languages_written_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'user languages written',
  `session_duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Session duration',
  `professional_type_id` bigint(20) DEFAULT NULL COMMENT 'Session Types ( From Professional Types table ) ',
  `session_maximum_clients` int(11) DEFAULT NULL COMMENT 'maximum clients per sessions',
  `basic_requirement` text COLLATE utf8mb4_unicode_ci COMMENT 'Basics Requirement',
  `is_forms` tinyint(1) DEFAULT NULL COMMENT 'forms is true or false',
  `is_answerd` tinyint(1) DEFAULT NULL COMMENT 'get answer from form',
  `amenities` text COLLATE utf8mb4_unicode_ci COMMENT 'amenities',
  `payment_option_id` bigint(20) DEFAULT NULL COMMENT 'Payment Option Id',
  `per_session_rate` bigint(20) DEFAULT NULL COMMENT 'Client per session price',
  `per_multiple_session_rate` bigint(20) DEFAULT NULL COMMENT 'Client per Multiple session price',
  `days` text COLLATE utf8mb4_unicode_ci COMMENT 'Client Available at these days',
  `is_auto_accept` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'check for auto accept is true OR false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_professional_profiles`
--

INSERT INTO `setting_professional_profiles` (`id`, `user_id`, `profession`, `location_name`, `introduction`, `specialization_ids`, `rate`, `cancellation_policy_id`, `general_rules`, `currency_id`, `academic_credentials`, `experience_and_achievements`, `terms_of_service`, `languages_spoken_ids`, `languages_written_ids`, `session_duration`, `professional_type_id`, `session_maximum_clients`, `basic_requirement`, `is_forms`, `is_answerd`, `amenities`, `payment_option_id`, `per_session_rate`, `per_multiple_session_rate`, `days`, `is_auto_accept`, `created_at`, `updated_at`) VALUES
(1, 6, NULL, NULL, 'Vikas', '1,2,4', '2000', 1, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1,2', '2,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, '2019-09-04 06:32:30'),
(2, 4, 'First Profession', NULL, 'First Introduction', '1,2,4', '4000', 1, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1,2', '2,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, '2019-09-05 06:34:00'),
(3, 3, 'Profession text', 'Surat, Gujarat, India', 'First Professional User Profile', '1,2,4', '3000', 3, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1', '4', '10', 1, 15, 'Basic req', NULL, 0, '[{"name":"Drinking water","value":false},{"name":"Air conditioning","value":false},{"name":"Towel","value":false},{"name":"Locker","value":false},{"name":"Shower room","value":true},{"name":"Soap and shampoo","value":false},{"name":"Changing Room","value":true},{"name":"First aid kit","value":false}]', 2, 20, 30, 'MESSAGE_TO_DISCUSS', 1, NULL, '2019-09-25 07:09:21'),
(5, 5, 'First Profession', NULL, 'First Introduction', '1,2,3,4', '1000', 2, 'No Rules', 1, '[{"awarding":"Murdoch University","course":"Bachelor of Exercise and Sport Science"},{"awarding":"NSCA","course":"Strenght and Conditioning Certification"}]', 'First experience_and_achievements', 'terms_of_service', '1,2,3,4', '1,2,3,4', '30', 1, 10, 'First Basic Requirments', 0, 1, '[{"value":false,"name":"Drinking water Drinking water Drinking water"},{"value":false,"name":"Air conditioning"},{"value":false,"name":"Towel"},{"value":false,"name":"Locker"},{"value":false,"name":"Shower room"},{"value":false,"name":"Soap and shampoo"},{"value":false,"name":"Changing Room"},{"value":false,"name":"First aid kit"}]', 1, 100, 150, 'ANY_DAY', 1, NULL, '2019-09-10 12:22:31'),
(6, 1, NULL, NULL, 'First Professional User Profile ', '1,2,4, 1,2,3,5, 1,6', '1000', 2, 'No Rules', 2, 'academic_and_certifications', 'experience_and_achievements', 'terms_of_service', '1,2', '2,4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, NULL, NULL),
(7, 2, 'First Profession', NULL, 'First Introduction', '1,2,3,4', '1000', NULL, NULL, NULL, 'First academic_and_certifications', 'First experience_and_achievements', NULL, '1,2,3,4', '1,2,3,4', '30', 0, 10, 'First Basic Requirments', NULL, NULL, '{"towal":true,"water":false}', 1, 100, 150, 'ANY_DAY', 1, '2019-09-05 06:28:26', '2019-09-06 04:56:02'),
(8, 22, 'First Profession', NULL, 'First Introduction', '1,2,3,4', '1000', NULL, NULL, NULL, '[{"awarding":"Murdoch University","course":"Bachelor of Exercise and Sport Science"},{"awarding":"NSCA","course":"Strenght and Conditioning Certification"}]', 'First experience_and_achievements', NULL, '1,2,3,4', '1,2,3,4', '30', 0, 10, 'First Basic Requirments', NULL, NULL, '[{"value":false,"name":"Drinking water Drinking water Drinking water"},{"value":false,"name":"Air conditioning"},{"value":false,"name":"Towel"},{"value":false,"name":"Locker"},{"value":false,"name":"Shower room"},{"value":false,"name":"Soap and shampoo"},{"value":false,"name":"Changing Room"},{"value":false,"name":"First aid kit"}]', 1, 100, 150, 'ANY_DAY', 0, '2019-09-06 05:10:04', '2019-09-10 05:05:33'),
(11, 23, 'Proessional', 'Surat, Gujarat, India', 'Intro', '1,2,3,4,5,6,7,8,9,10', '0', NULL, NULL, NULL, '[{"CourseOfStudy":"ffdfd","AwardingInstitution":"fdfd"},{"CourseOfStudy":"xyz","AwardingInstitution":"abc"}]', NULL, NULL, NULL, NULL, '101', 2, 5, 'Hi', 1, 1, '[{"name":"Drinking water","value":false},{"name":"Air conditioning","value":false},{"name":"Towel","value":true},{"name":"Locker","value":false},{"name":"Shower room","value":false},{"name":"Soap and shampoo","value":true},{"name":"Changing Room","value":true},{"name":"First aid kit","value":false}]', 1, 1, 1, 'WEEKDAYS_ONLY', 0, '2019-09-07 07:05:24', '2019-09-13 10:59:37'),
(12, 34, 'Exercise Physiologist / S&C Specialist', NULL, 'An Allied Health Professional Working In Sports Performance Center.', '1,7,8', '0', NULL, NULL, NULL, '[{"CourseOfStudy":"CSCS","AwardingInstitution":"NSCA"},{"CourseOfStudy":"Exercise Scientist","AwardingInstitution":"ESSA"},{"CourseOfStudy":"Sports Trainer Lv 1","AwardingInstitution":"SMA"},{"CourseOfStudy":"Exercise and Sports Science","AwardingInstitution":"ECU"}]', NULL, NULL, '1', '1', '60', 1, 1, 'Able to take athletes, rehab patients and patients with chronic conditions.', 0, 1, '[{"name":"Drinking water","value":false},{"name":"Air conditioning","value":true},{"name":"Towel","value":false},{"name":"Locker","value":false},{"name":"Shower room","value":false},{"name":"Soap and shampoo","value":false},{"name":"Changing Room","value":true},{"name":"First aid kit","value":false}]', 1, 50, 10, 'WEEKDAYS_ONLY', 0, '2019-10-09 17:03:06', '2019-10-20 09:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `setting_race_distances`
--

CREATE TABLE IF NOT EXISTS `setting_race_distances` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'name of race distance',
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'check for active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_race_distances`
--

INSERT INTO `setting_race_distances` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1.5 km', '1.5_km', 1, NULL, NULL),
(2, '1 miles', '1_MILES', 1, NULL, NULL),
(3, '3 km', '3_KM', 1, NULL, NULL),
(4, '2 miles', '2_MILES', 1, NULL, NULL),
(5, '5 km', '5_KM', 1, NULL, NULL),
(6, '10 km', '10_km', 1, NULL, NULL),
(7, '15 km', '15_km', 1, NULL, NULL),
(8, '21 km', '21_KM', 1, NULL, NULL),
(9, '42 km', '42_KM', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_trainings`
--

CREATE TABLE IF NOT EXISTS `setting_trainings` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'Which user id can store it.',
  `hr_max` double(8,2) DEFAULT NULL COMMENT 'HR max ',
  `height` double(8,2) DEFAULT NULL COMMENT 'height',
  `weight` double(8,2) DEFAULT NULL COMMENT 'weight',
  `race_distance_id` bigint(20) DEFAULT NULL COMMENT 'from race distance table id',
  `race_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'race time',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_trainings`
--

INSERT INTO `setting_trainings` (`id`, `user_id`, `hr_max`, `height`, `weight`, `race_distance_id`, `race_time`, `created_at`, `updated_at`) VALUES
(1, 22, 123.00, 165.00, 53.00, 1, '05:00:00', '2019-09-09 06:30:13', '2019-09-24 14:58:53'),
(2, 23, 179.43, 30.00, 30.00, 5, '00:27:15', '2019-09-09 10:13:11', '2019-11-19 06:29:10'),
(3, 3, 10.00, 12.00, 15.00, 3, '01:05:01', '2019-09-09 11:42:37', '2019-10-01 04:53:53'),
(4, 33, NULL, 165.00, 53.00, 9, '03:03:03', '2019-10-07 08:40:15', '2019-10-09 10:39:21'),
(5, 34, 179.43, 165.00, 53.00, 5, '00:28:30', '2019-10-09 08:38:57', '2019-10-20 09:37:42'),
(6, 5, 123.00, 1.00, 1.00, 9, '03:03:03', '2019-10-09 11:09:30', '2019-10-09 11:09:30'),
(7, 36, NULL, 165.00, 53.00, 9, '15:06:04', '2019-10-09 11:32:20', '2019-10-14 03:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE IF NOT EXISTS `specializations` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name',
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'active or deactivate',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Resistance', 'RESISTANCE', 1, NULL, '2019-07-09 10:58:42'),
(2, 'Triathion', 'TRIATHION', 1, NULL, NULL),
(3, 'Marathon', 'MARATHON', 1, NULL, NULL),
(4, 'Weight Loss', 'WEIGHT_LOSS', 1, NULL, NULL),
(5, 'TRX', 'TRX', 1, NULL, NULL),
(6, 'Duathion', 'DUATHION', 1, NULL, NULL),
(7, 'Power', 'POWER', 1, NULL, NULL),
(8, 'Sports', 'SOPRTS', 1, NULL, NULL),
(9, 'Bodybuilding', 'BODYBUILDING', 1, NULL, NULL),
(10, 'Weightlifting', 'WEIGHTLIFTING', 1, NULL, NULL),
(12, 'Strength and Conditioning', NULL, 0, NULL, NULL),
(13, 'Powerlifting', NULL, 0, NULL, NULL),
(15, 'Duathlon', NULL, 0, NULL, NULL),
(16, 'Swimming', NULL, 0, NULL, NULL),
(17, 'Rehab', NULL, 0, NULL, NULL),
(20, 'Weightlifting', NULL, 0, NULL, NULL),
(21, 'Endurance', NULL, 0, NULL, NULL),
(22, 'Trail Running', NULL, 0, NULL, NULL),
(23, 'Cycling', NULL, 0, NULL, NULL),
(24, 'Yoga', NULL, 0, NULL, NULL),
(26, 'Circuit Training', NULL, 0, NULL, NULL),
(27, 'CrossFit', NULL, 0, NULL, NULL),
(28, 'Weight loss', NULL, 0, NULL, NULL),
(29, 'Training Program', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `targeted_muscles`
--

CREATE TABLE IF NOT EXISTS `targeted_muscles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT 'Name of Equipment',
  `code` varchar(200) DEFAULT NULL COMMENT 'code from name',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'this is active or not',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='use in Library ';

--
-- Dumping data for table `targeted_muscles`
--

INSERT INTO `targeted_muscles` (`id`, `name`, `code`, `is_active`, `updated_at`, `created_at`) VALUES
(1, 'Sternocleidomastoid', 'Sternocleidomastoid', 1, '2019-06-12 18:30:00', '2019-06-12 18:30:00'),
(7, 'Splenius', 'Splenius', 1, NULL, NULL),
(8, 'Deltoid (front)', 'Deltoid (front)', 1, NULL, NULL),
(9, 'Deltoid (mid)', 'Deltoid (mid)', 1, NULL, NULL),
(10, 'Deltoid (rear)', 'Deltoid (rear)', 1, NULL, NULL),
(11, 'Rhomboids', 'Rhomboids', 1, NULL, NULL),
(12, 'External Rotators', 'External Rotators', 1, NULL, NULL),
(13, 'Supraspinatus', 'Supraspinatus', 1, NULL, NULL),
(14, 'Subscapularis', 'Subscapularis', 1, NULL, NULL),
(15, 'Infraspinatus', 'Infraspinatus', 1, NULL, NULL),
(16, 'Teres minor', 'Teres minor', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `training_activity`
--

CREATE TABLE IF NOT EXISTS `training_activity` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'activity name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'activity code unique',
  `icon_path` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Activity icon show in app',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is activity is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_activity`
--

INSERT INTO `training_activity` (`id`, `name`, `code`, `icon_path`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Run', 'RUN', '/uploaded/images/training_activity/5d8af9cdbf877_5d89c69b33be0_ic_label_icon@3x', 1, '2019-05-29 18:30:00', '2019-09-25 05:23:25'),
(2, 'Cycle', 'CYCLE', '/uploaded/images/training_activity/5d8af9b1d8b74_5d89c6a06ea16_ic_label_two@3x', 1, '2019-05-29 18:30:00', '2019-09-25 05:22:57'),
(3, 'Swimming', 'SWIMMING', '/uploaded/images/training_activity/5d8af9c3770d5_5d89c6a80da81_ic_label_three@3x', 1, '2019-05-29 18:30:00', '2019-09-25 05:23:15'),
(4, 'Others', 'OTHERS', '/uploaded/images/training_activity/5d8af9d5c623e_5d89c6b0f2d9e_ic_label_for@3x', 1, '2019-05-29 18:30:00', '2019-09-25 05:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `training_frequencies`
--

CREATE TABLE IF NOT EXISTS `training_frequencies` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL COMMENT 'title name',
  `code` varchar(200) DEFAULT NULL COMMENT 'title code from title',
  `max_days` int(11) DEFAULT NULL COMMENT 'depend on title for day validation',
  `preset_training_program_ids` text COMMENT 'To show preset program ids',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_frequencies`
--

INSERT INTO `training_frequencies` (`id`, `title`, `code`, `max_days`, `preset_training_program_ids`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1x', '1x', 1, '', 1, NULL, '2019-10-02 04:36:34'),
(2, '2x', '2x', 2, '', 1, NULL, '2019-10-02 04:36:41'),
(3, '4x', '4x', 4, '8', 1, NULL, '2019-10-02 04:36:49'),
(4, '3x', '3x', 3, NULL, 1, NULL, '2019-10-02 04:36:59'),
(5, '5x', '5x', 5, '8,9,10,11', 1, '2019-09-25 08:39:41', '2019-10-02 04:36:20'),
(6, '6x', '6x', 6, '9,10,11', 1, '2019-09-25 08:39:41', '2019-10-02 04:36:26');

-- --------------------------------------------------------

--
-- Table structure for table `training_goal`
--

CREATE TABLE IF NOT EXISTS `training_goal` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'goal name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'goal code unique',
  `target_hr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'targated hr',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is goal is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_goal`
--

INSERT INTO `training_goal` (`id`, `name`, `code`, `target_hr`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'Aerobic Capacity', 'AEROBIC_CAPACITY', '95-100', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:45'),
(3, 'Recovery Run', 'RECOVERY_RUN', '60-72', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:45'),
(4, 'Fat Burnining', 'FAT_BURNINIG', '65-80', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:02'),
(5, 'Lactate Tolerance', 'LACTATE_TOLERANCE', '88–92', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:02'),
(6, 'Speed', 'SPEED', '100', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:01'),
(7, 'Pace Run', 'PACE_RUN', '83-87', 1, '2019-10-09 09:38:33', '2019-10-09 09:38:33'),
(8, 'Base Run', 'BASE_RUN', NULL, 1, '2019-05-29 18:30:00', '2019-09-28 06:49:34'),
(11, 'General Conditioning', 'GENERAL_CONDITIONING', NULL, 0, '2019-09-26 10:23:21', '2019-09-28 06:46:48'),
(12, 'Hyperthropy', 'HYPERTHROPY', NULL, 0, '2019-09-26 10:23:49', '2019-09-28 06:46:49'),
(13, 'Strenght', 'STRENGHT', NULL, 0, '2019-09-26 10:24:08', '2019-09-28 06:46:49'),
(14, 'Power', 'POWER', NULL, 0, '2019-09-26 10:24:18', '2019-09-28 06:46:50'),
(15, 'Power Endurance', 'POWER_ENDURANCE', NULL, 0, '2019-09-26 10:24:37', '2019-09-28 06:46:50'),
(16, 'Muscular Endurance', 'MUSCULAR_ENDURANCE', NULL, 0, '2019-09-26 10:25:01', '2019-09-28 06:46:51'),
(17, 'Custom', 'CUSTOM', NULL, 0, '2019-09-26 10:25:08', '2019-09-28 06:46:52'),
(19, 'Speed Training', 'SPEED_TRAINING', '93-100', 1, '2019-10-11 07:27:19', '2019-10-11 07:27:19'),
(20, 'Fartlek + Speed Training', 'Fartlek + Speed Training', '93-100', 1, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(21, 'Speed Training, Hill Run', 'Speed Training, Hill Run', '93-100', 1, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(22, 'Fartlek', 'Fartlek', '88-92', 1, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(23, 'Aerobic Capacity, Fartlek', 'AEROBIC_CAPACITY_FARTLEK', '93-100', 1, '2019-11-04 13:00:00', '2019-11-04 13:00:00'),
(24, 'Lactate Tolerance, Hill Run', 'LACTATE_TOLERANCE_HILL_RUN', '93-100', 1, '2019-11-19 13:00:00', '2019-11-19 13:00:00'),
(25, 'Aerobic Capacity, Lactate Tolerance', 'AEROBIC_CAPACITY_LACTATE_TOLERANCE', '93-100', 1, '2019-11-19 13:00:00', '2019-11-19 13:00:00'),
(26, 'Lactate Tolerance, Speed Training', 'LACTATE_TOLERANCE_SPEED_TRAINING', '93-100', 1, '2019-11-19 13:00:00', '2019-11-19 13:00:00'),
(27, 'Pace Run, Hill Run', 'PACE_RUN_HILL_RUN', '93-100', 1, '2019-11-19 13:00:00', '2019-11-19 13:00:00'),
(28, 'Aeorbic Capacity, Speed Training', 'AEROBIC_CAPACITY_SPEED_TRAINING', '93-100', 1, '2019-11-19 13:00:00', '2019-11-19 13:00:00'),
(29, 'Fartlek, Lactate Tolerance', 'FARTLEK_LACTATE_TOLERANCE', '93-100', 1, '2019-11-19 13:00:00', '2019-11-19 13:00:00'),
(30, 'Aerobic Capacity, Hill Run', 'AEROBIC_CAPACITY_HILL_RUN', '93-100', 1, '2019-11-19 13:00:00', '2019-11-19 13:00:00'),
(31, 'Aerobic Capacity, Pace Run', 'AEROBIC_CAPACITY_PACE_RUN', '80-90', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:01'),
(32, 'Race Pace, Lactate Tolrance', 'PACE_PACE_LACTATE_TOLERANCE', '80-90', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:01'),
(33, 'Aerobic Intervals + Hill Run', 'AEROBIC_INTERVALS_HILL_RUN', '80-90', 1, '2019-11-20 18:30:00', '2019-11-20 18:30:00'),
(34, 'Aerobic Intervals', 'AEROBIC_INTERVALS', '80-90', 1, '2019-11-20 18:30:00', '2019-11-20 18:30:00'),
(35, 'Speed Interval + Hill Run', 'SPEED_INTERVAL_HILL_RUN', '93-100', 1, '2019-11-20 00:00:00', '2019-11-20 00:00:00'),
(36, 'Speed Intervals', 'SPEED_INTERVALS', '93-100', 1, '2019-11-20 07:27:19', '2019-11-20 07:27:19'),
(1001, 'Race Pace', 'PACE_PACE', '80-90', 1, '2019-05-29 18:30:00', '2019-09-28 06:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `training_intensity`
--

CREATE TABLE IF NOT EXISTS `training_intensity` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'intensity name',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'intensity code unique',
  `is_active` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'is intensity is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_intensity`
--

INSERT INTO `training_intensity` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Moderate', 'MODERATE', 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(2, 'Low', 'LOW', 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(3, 'High', 'HIGH', 1, '2019-05-29 18:30:00', '2019-05-29 18:30:00'),
(5, 'Moderately-low', 'MODERATELY_LOW', 1, '2019-09-26 10:20:29', '2019-09-26 10:20:29'),
(6, 'Moderately-high', 'MODERATELY_HIGH', 1, '2019-09-26 10:20:43', '2019-09-26 10:20:43'),
(7, 'Moderately Hard', 'MODERATELY_HARD', 1, '2019-11-19 00:00:00', '2019-11-19 00:00:00'),
(8, 'Fartek', 'FARTEK', 1, '2019-11-19 00:00:00', '2019-11-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `training_logs`
--

CREATE TABLE IF NOT EXISTS `training_logs` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'user id who created this',
  `status` varchar(50) NOT NULL COMMENT 'Cardio and Resistance',
  `date` timestamp NULL DEFAULT NULL,
  `workout_name` varchar(200) NOT NULL COMMENT 'workout title',
  `training_goal_id` int(11) NOT NULL,
  `training_intensity_id` int(11) NOT NULL,
  `training_activity_id` int(11) DEFAULT NULL COMMENT 'No activity on Resistance Status',
  `targeted_hr` varchar(200) DEFAULT NULL,
  `notes` text COMMENT 'Other Remarks',
  `user_own_review` int(11) DEFAULT NULL COMMENT 'Use give own training session review',
  `exercise` text,
  `is_log` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'if true then show log else show workouts',
  `comments` text COMMENT 'User Can leave comment here',
  `is_complete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'User Complete this training log exercise',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 COMMENT='From Calendar Module ';

--
-- Dumping data for table `training_logs`
--

INSERT INTO `training_logs` (`id`, `user_id`, `status`, `date`, `workout_name`, `training_goal_id`, `training_intensity_id`, `training_activity_id`, `targeted_hr`, `notes`, `user_own_review`, `exercise`, `is_log`, `comments`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, 2, 'CARDIO', '2019-06-30 18:30:00', 'First Workout Name', 1, 1, 1, NULL, 'Just For Testing Demo', NULL, '[{"laps":"001","speed":"00","%":"00","duration":"0''''0''","rest":"00''"},{"laps":"010","speed":"24","%":"05","duration":"05:29","rest":"00:30"}]', 0, NULL, 0, '2019-06-01 07:36:30', '2019-07-22 09:19:53'),
(3, 2, 'RESISTANCE', '2019-05-03 11:45:18', 'First Workout Name', 1, 1, 1, NULL, 'Just For Testing Demo', NULL, '[{"laps":"001","speed":"00","persant":"00","duration":"0''''0''","rest":"00''"},{"laps":"010","speed":"24","persant":"05","duration":"05:29","rest":"00:30"}]', 0, NULL, 0, '2019-06-01 07:40:12', '2019-07-22 09:33:08'),
(7, 2, 'RESISTANCE', '2019-05-02 11:45:18', 'Last Update', 1, 1, 1, '118-132', 'Just For Testing Demo', 1, '[{"laps":"001","speed":"00","persant":"00","duration":"0''''0''","rest":"00''","is_completed":true},{"laps":"010","speed":"24","persant":"05","duration":"05:29","rest":"00:30","is_completed":true}]', 1, 'Leave Your Commnet here', 1, '2019-06-01 07:40:12', '2019-07-22 07:30:35'),
(8, 2, 'CARDIO', '2019-06-04 11:45:18', 'First Workout Name', 1, 1, 1, NULL, 'Just For Testing Demo', NULL, '[{"laps":"001","speed":"00","persant":"00","duration":"0''''0''","rest":"00''"},{"laps":"010","speed":"24","persant":"05","duration":"05:29","rest":"00:30"}]', 0, NULL, 1, '2019-06-06 11:50:09', '2019-06-06 11:50:09'),
(9, 2, 'RESISTANCE', '2019-05-04 18:30:00', 'Vikas', 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', 1, NULL, 0, '2019-06-06 12:27:38', '2019-06-06 12:27:38'),
(10, 2, 'RESISTANCE', '2019-04-02 11:45:18', 'Vikas', 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', 0, NULL, 0, '2019-06-07 10:37:43', '2019-06-07 10:37:43'),
(11, 3, 'CARDIO', '2019-06-10 10:38:00', 'Test 10', 1, 2, 3, NULL, 'Test', NULL, '[{"is_completed":false,"speed":"15","rest":"15","laps":"15","duration":"15"}]', 1, NULL, 0, '2019-06-07 10:43:53', '2019-06-07 10:43:53'),
(12, 3, 'CARDIO', '2019-06-10 10:38:00', 'Test 10', 1, 2, 3, '84-100', 'Test', NULL, '[{"is_completed":false,"speed":"15","rest":"15","laps":"15","duration":"15"}]', 1, NULL, 0, '2019-06-07 10:47:10', '2019-06-07 10:47:10'),
(13, 3, 'CARDIO', '2019-06-10 10:38:00', 'Test 10', 1, 2, 3, '84-100', 'Test', NULL, '[{"is_completed":false,"speed":"15","rest":"15","laps":"15","duration":"15"}]', 1, NULL, 0, '2019-06-25 04:35:51', '2019-06-25 04:35:51'),
(14, 2, 'RESISTANCE', '2019-04-02 11:45:18', 'Vikas', 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', 0, NULL, 1, '2019-07-16 10:05:21', '2019-07-16 10:05:21'),
(15, 2, 'RESISTANCE', '2019-04-02 11:45:18', 'Vikas', 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', 0, NULL, 0, '2019-07-16 10:05:43', '2019-07-16 10:05:43'),
(16, 2, 'RESISTANCE', '2019-04-02 11:45:18', 'Vikas', 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', 0, NULL, 0, '2019-07-16 10:05:47', '2019-07-16 10:05:47'),
(17, 2, 'RESISTANCE', '2019-04-02 11:45:18', 'Vikas', 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', 0, NULL, 0, '2019-07-16 10:05:49', '2019-07-16 10:05:49'),
(18, 2, 'RESISTANCE', '2019-04-02 11:45:18', 'Vikas', 1, 1, NULL, NULL, NULL, NULL, '{"chest_press":[{"weight":30,"reps":10,"rest":45},{"weight":30,"reps":8,"rest":45},{"weight":30,"reps":6,"rest":45}],"bicep_curls":[{"weight":10,"reps":10,"rest":60},{"weight":10,"reps":9,"rest":60},{"weight":8,"reps":12,"rest":60}],"seated_row":[{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60},{"weight":48,"reps":6,"rest":60}]}', 0, NULL, 0, '2019-07-16 10:05:51', '2019-07-16 10:05:51'),
(19, 3, 'CARDIO', '2019-09-04 13:07:49', 'Bob', 2, 2, 1, '95-100', 'Test	', NULL, '[{"duration":"1\\u201d0\\u2019","rest":"12","speed":"2","percentage":"12","is_completed":false,"laps":"12"}]', 1, NULL, 0, '2019-09-04 12:08:15', '2019-09-04 12:08:15'),
(20, 23, 'CARDIO', '2019-09-20 09:43:48', 'Test', 6, 3, 1, '100', 'Test', NULL, '[{"duration":"5\\u201d1\\u2019","rest":"12","speed":"2","percentage":"12","is_completed":false,"laps":"12"}]', 1, NULL, 0, '2019-09-19 09:44:23', '2019-09-19 09:44:23'),
(21, 3, 'RESISTANCE', '2019-09-22 04:48:36', 'Test', 2, 2, NULL, NULL, NULL, NULL, '[{"name":"Test","data":[{"rest":"30","reps":"20","is_completed":false,"weight":"10"}]}]', 1, NULL, 0, '2019-09-21 04:49:05', '2019-09-21 04:49:05'),
(22, 3, 'RESISTANCE', '2019-09-24 06:19:46', 'Test1', 3, 2, NULL, NULL, NULL, NULL, '[{"name":"Check Data Updated Or Not?","data":[{"rest":"20","reps":"20","is_completed":false,"weight":"10"},{"rest":"10","reps":"20","is_completed":false,"weight":"10"}]},{"name":"Check Data Updated Or Not?","data":[{"rest":"20","reps":"20","is_completed":false,"weight":"10"},{"rest":"10","reps":"20","is_completed":false,"weight":"10"}]},{"name":"Check Data Updated Or Not?","data":[{"rest":"20","reps":"20","is_completed":false,"weight":"10"},{"rest":"10","reps":"20","is_completed":false,"weight":"10"}]}]', 1, NULL, 0, '2019-09-23 06:20:07', '2019-09-23 06:20:07'),
(23, 3, 'RESISTANCE', '2019-09-27 06:25:26', 'Test', 2, 2, NULL, NULL, NULL, NULL, '[{"name":"Test","data":[{"rest":"30","reps":"20","is_completed":false,"weight":"10"}]},{"name":"Check Data Updated Or Not?","data":[{"rest":"40","reps":"30","is_completed":false,"weight":"20"},{"rest":"10","reps":"10","is_completed":false,"weight":"10"}]}]', 1, NULL, 0, '2019-09-23 06:26:02', '2019-09-23 06:26:27'),
(24, 3, 'RESISTANCE', '2020-05-04 12:01:54', 'Test5', 7, 3, NULL, NULL, NULL, NULL, '[{"name":"Test","data":[{"rest":"30","reps":"20","is_completed":false,"weight":"10"}]}]', 1, NULL, 0, '2019-09-23 10:00:06', '2019-09-23 10:00:06'),
(25, 3, 'RESISTANCE', '2019-09-24 10:35:29', 'Test', 3, 2, NULL, NULL, NULL, NULL, '[{"data":[{"weight":"2","is_completed":false,"rest":"35","reps":"12"},{"weight":"10","is_completed":false,"rest":"30","reps":"20"}],"name":"Check Data Updated Or Not?"},{"data":[{"weight":"2","is_completed":false,"rest":"35","reps":"12"},{"weight":"10","is_completed":false,"rest":"30","reps":"20"}],"name":"Test"}]', 1, NULL, 0, '2019-09-23 10:37:00', '2019-09-23 10:37:00'),
(26, 3, 'RESISTANCE', '2019-09-24 10:48:06', 'Test', 2, 2, NULL, NULL, NULL, NULL, '[{"data":[{"weight":"12","is_completed":false,"rest":"28","reps":"22"}],"name":"Test"}]', 1, NULL, 0, '2019-09-23 10:48:32', '2019-09-23 10:48:32'),
(27, 3, 'RESISTANCE', '2019-09-26 12:31:09', 'Monday', 16, 5, NULL, NULL, NULL, NULL, '[{"name":"Test","data":[{"rest":"3","reps":"3","is_completed":false,"weight":"3"},{"rest":"3","reps":"3","is_completed":false,"weight":"3"},{"rest":"3","reps":"3","is_completed":false,"weight":"3"}]},{"name":"Check Data Updated Or Not?","data":[{"rest":"8","reps":"2","is_completed":false,"weight":"2"}]}]', 1, NULL, 0, '2019-09-26 12:32:04', '2019-09-26 12:32:04'),
(28, 3, 'CARDIO', '2019-09-29 06:48:04', 'Marathons', 4, 5, 1, '65-80', 'Test	', NULL, '[{"duration":"1\\u201d0\\u2019","rest":"12","speed":"7","percentage":"12","is_completed":false,"laps":"12"}]', 1, NULL, 0, '2019-09-28 06:48:44', '2019-09-28 06:48:44'),
(29, 23, 'CARDIO', '2019-10-03 08:32:58', 'Test', 7, 3, 1, '80-90', 'Test', NULL, '[{"duration":"5\\u201d1\\u2019","rest":"12","speed":"9","percentage":"12","is_completed":false,"laps":"12"}]', 1, NULL, 0, '2019-10-02 08:33:37', '2019-10-02 08:33:37'),
(30, 33, 'CARDIO', '2019-10-08 05:45:12', 'Test', 4, 5, 1, '65-80', 'Test', NULL, '[{"duration":"2\\u201d1\\u2019","rest":"22","speed":"3","percentage":"12","is_completed":false,"laps":"12"}]', 1, NULL, 0, '2019-10-07 05:45:50', '2019-10-07 05:45:50'),
(31, 33, 'CARDIO', '2019-10-09 05:52:00', 'Test', 3, 5, 2, '60-72', 'Test', NULL, '[{"duration":"1\\u201d2\\u2019","rest":"12","speed":"3","is_completed":false,"rpm":"4","laps":"14"}]', 1, NULL, 0, '2019-10-07 05:52:27', '2019-10-07 05:52:27'),
(32, 33, 'CARDIO', '2019-10-07 11:06:15', 'Test', 4, 3, 2, '65-80', 'Test', NULL, '[{"duration":"1\\u201d2\\u2019","rest":"12","speed":"3","is_completed":false,"rpm":"4","laps":"12"}]', 1, NULL, 0, '2019-10-07 07:07:05', '2019-10-07 07:07:05'),
(33, 3, 'CARDIO', '2019-10-14 01:41:31', 'Ssff', 2, 5, 2, '95-100', 'Zdf', NULL, '[{"duration":"3\\u201d0\\u2019","rest":"45","speed":"3","is_completed":false,"rpm":"3","laps":"1"}]', 1, NULL, 0, '2019-10-12 01:41:57', '2019-10-12 01:41:57'),
(34, 3, 'CARDIO', '2019-06-10 10:38:00', 'Test 10', 1, 2, 3, '84-100', 'Test', NULL, '[{"is_completed":false,"speed":"15","rest":"15","laps":"15","duration":"15"}]', 1, NULL, 0, '2019-10-25 09:56:36', '2019-10-25 09:56:36'),
(35, 3, 'CARDIO', '2019-06-10 10:38:00', 'Test 10', 1, 2, 3, '84-100', 'Test', NULL, '[{"is_completed":false,"speed":"15","rest":"15","laps":"15","duration":"15"}]', 1, NULL, 0, '2019-10-25 10:04:35', '2019-10-25 10:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `training_programs`
--

CREATE TABLE IF NOT EXISTS `training_programs` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'which user add this program',
  `status` varchar(50) NOT NULL COMMENT 'RESISTANCE and CARDIO Use Constant',
  `type` varchar(50) NOT NULL COMMENT 'PRESET and CUSTOM Use Constant',
  `preset_training_programs_id` bigint(20) DEFAULT NULL COMMENT 'From preset_training_programs table',
  `training_frequencies_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL COMMENT 'Program start date',
  `end_date` timestamp NULL DEFAULT NULL COMMENT 'Program end date',
  `by_date` varchar(10) DEFAULT NULL COMMENT 'Use Constant START || END',
  `days` varchar(100) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `phases` text COMMENT 'Use Only in In Training Program In Cardio and Resistance',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE IF NOT EXISTS `training_types` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'From name',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'is active or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `name`, `code`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Remote', 'REMOTE', 0, NULL, NULL),
(2, 'Meet-up', 'MEET_UP', 1, NULL, '2019-07-10 04:40:04'),
(3, 'Remote and Meet-up', 'REMOTE_AND_MEET_UP', 1, NULL, '2019-08-20 04:44:56'),
(4, 'No Preference', 'NO_PREFERENCE', 0, NULL, NULL),
(6, 'New', 'New', 0, '2019-07-10 05:01:00', '2019-07-10 05:01:00'),
(7, 'Test', 'Test', 1, '2019-07-10 05:01:10', '2019-08-20 04:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_followers`
--

CREATE TABLE IF NOT EXISTS `user_followers` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'user id',
  `followers_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'User follower to this users',
  `following_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'User following to this users',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_followers`
--

INSERT INTO `user_followers` (`id`, `user_id`, `followers_ids`, `following_ids`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '1,3,4', '2019-08-13 05:31:38', '2019-08-13 07:12:30'),
(2, 4, NULL, '1,3,2', '2019-08-13 05:31:38', '2019-08-13 07:12:30'),
(4, 22, NULL, '1,11,2,12', '2019-09-05 07:38:15', '2019-10-19 10:27:10'),
(5, 3, NULL, '1,3,2', '2019-08-13 05:31:38', '2019-08-13 07:12:30'),
(6, 34, NULL, '12', '2019-10-13 02:18:16', '2019-10-13 02:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'first last name',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Country code for mobile verification',
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User facebook id',
  `date_of_birth` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `goal` text COLLATE utf8mb4_unicode_ci COMMENT 'User Goal.',
  `country_id` bigint(20) DEFAULT NULL COMMENT 'User Location.',
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User latitude Location.',
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'User longitude Location.',
  `membership_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'member-01',
  `user_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin, user',
  `account_id` bigint(20) DEFAULT NULL COMMENT 'free, premium, professional',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_profile_complete` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile_verified_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'Check for last login at',
  `socket_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Store Socket Id',
  `is_online` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'check the user is online for chat',
  `is_snooze` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'for professional user is snooze or not',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `country_code`, `mobile`, `facebook`, `date_of_birth`, `gender`, `height`, `weight`, `photo`, `goal`, `country_id`, `latitude`, `longitude`, `membership_code`, `user_type`, `account_id`, `is_active`, `is_profile_complete`, `email_verified_at`, `mobile_verified_at`, `expired_at`, `last_login_at`, `socket_id`, `is_online`, `is_snooze`, `created_at`, `updated_at`) VALUES
(1, 'Vikas U J', 'vikasukani51@gmail.com', '$2y$12$tu1k.dsFIj1yTIV64sNKneklCCpdDYI2K5lR3aJD2HqbY8cWdvvA2', '+91', '9898989898', '', '15-02-2000', 'MALE', 100, 50, '/uploaded/images/users/5d8b0009106f0_qaK3b', 'Improve Fitness', 1, '21.598146', '71.484662', NULL, 'USER', 23, 0, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-08-30 06:00:00', '', 0, 0, '2019-05-30 06:24:02', '2019-08-30 06:32:36'),
(2, 'Mailinator', 'mehul.lakhani1@dignizant.com', '$2y$10$xai0RfyX.LqUz3G.CGdajeITuKrWuwz3eCrBqv2jUeWCcSNs65mnO', NULL, '9898989892', NULL, '02-01-1996', 'MALE', 160, 60, '/uploaded/images/users/5d8b0009106f0_qaK3b', NULL, 5, '21.598146', '71.484662', NULL, 'USER', 22, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-06-12 10:23:24', '', 0, 1, '2019-05-27 06:29:20', '2019-09-09 04:09:47'),
(3, 'Anil 1 Dhameliya', 'anil.dhameliya@dignizant.com', '$2y$12$FI0HzpyGhL15dNN05d5Ebe9H5KMiXLWj/CFex9hmLV.8BIEeF8rtK', '+91', '9898989898', 'www://facebook.com1', '01-04-2016', 'FEMALE', 127, 39, '/uploaded/images/users/5d8b0009106f0_qaK3b', NULL, 3, '0', '0', NULL, 'USER', 22, 1, 1, '2019-10-09 00:00:00', '2019-08-28 18:30:00', NULL, '2019-10-09 09:11:28', '', 0, 0, '2019-06-04 08:39:34', '2019-10-09 09:11:28'),
(4, 'Vikas Ukani', 'vikas@gmail.com', '$2y$12$IJ6NzlsAZ9S1S/VxyVdWA.ebn7mZqiz6/fDNKlUT.5.ihkZMxwb16', NULL, '9898989894', NULL, NULL, 'MALE', NULL, NULL, '/uploaded/images/users/5d8b0009106f0_qaK3b', NULL, 1, '21.598146', '71.484662', NULL, 'USER', 23, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-08-31 04:02:36', '', 0, 0, '2019-06-07 07:06:15', '2019-08-31 04:02:36'),
(5, 'Vikas Admin', 'vikas.ukani1@dignizant.com', '$2y$10$5VK7Rk2NdE5NV0UmXZ16Nu0Ya0ave3uq1nldzlDUVmOb92XUFWw0W', NULL, '9898989898', 'null', '1-02-1984', 'FEMALE', 1, 1, '/uploaded/images/users/5d8af8e2d832f_trainer', 'Improve Fitness', 6, '21.598146', '71.484662', NULL, 'ADMIN', 24, 1, 0, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-07-19 12:13:13', '', 0, 0, '2019-06-18 06:35:39', '2019-10-09 11:09:30'),
(6, 'Mailinator', 'vikas123@mailinator.com', '$2y$10$HN2EEuhg8K5EO4rAgusUcu2WSdPVAfyIJqgsePCugNqd2HIdvJCQu', NULL, NULL, NULL, '02-01-1996', 'MALE', 160, 60, '/uploaded/images/users/5d70b19781ae5_21RmE', NULL, NULL, '0', '0', NULL, NULL, NULL, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-10-08 07:09:05', NULL, 0, 0, '2019-09-03 05:58:03', '2019-10-08 07:09:05'),
(22, 'Vikas Digni', 'vikas.ukani@dignizant.com', '$2y$10$Xz//LZ9VjEyUuYB.lxkPBer5jVZ9peZFhfO8IWZdq18gNxJKUmBHq', '+93', '123486789', '', '05-10-1986', 'MALE', 160, 50, '/uploaded/images/users/5d70b19781ae5_21RmE', NULL, 1, '21.235218197166105', '72.85870479961743', NULL, 'ADMIN', 22, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-11-18 11:21:21', '', 0, 0, '2019-09-04 10:53:58', '2019-11-19 05:47:17'),
(23, 'Anil Dhameliya', 'anildhameliya66@gmail.com', '$2y$10$/biXloMHnAHIYnjEmyEfHOXF379QrinKT63bSt6sSC7rWTANDbWxu', '+91', '1234567890', '', '19-11-2015', 'FEMALE', 30, 30, '/uploaded/images/users/5d70b19781ae5_21RmE', NULL, 1, '0', '0', NULL, NULL, 22, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, '2019-10-26 09:11:17', 'sNSYMNbWSxTvbwEGAAAH', 1, 0, '2019-09-04 10:55:13', '2019-11-19 06:31:08'),
(26, 'Vikas Digni', 'anildhameliya@gmail.com', '$2y$10$E8L/4zKfmn.wJlZFGX7OSO7nwMk5v8yHUqmHnN.JWzmib/yUqydUW', NULL, NULL, NULL, '16-06-2019', 'MALE', 160, 50, '/uploaded/images/users/5d6fb9e9562f7_car-1494607-wallhere.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2019-06-18 06:41:03', '2019-08-28 18:30:00', NULL, NULL, NULL, 0, 0, '2019-09-04 13:18:32', '2019-09-04 13:19:37'),
(27, 'Anil', 'anil@gmail.com', '$2y$10$SLvjfiqAJjwjxAGtsCEdROb8hCZWokd3XK0oCqHVF4UoC04GftkSG', NULL, NULL, NULL, '01-08-2019', 'MALE', 127, 38, '/uploaded/images/users/5d92de881b62a_Z8TXC', NULL, NULL, '0', '0', NULL, NULL, NULL, 1, 1, '2019-10-01 00:00:00', NULL, NULL, '2019-10-01 05:04:25', NULL, 0, 0, '2019-10-01 04:00:35', '2019-10-01 05:05:12'),
(29, NULL, 'test@test.com', '$2y$10$kzQR.6Tqj4aLby.aV82VSekQD.xWyPo0WXNql63NZemFdg3aVJkwC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, 0, NULL, '2019-10-01 00:00:00', NULL, NULL, NULL, 0, 0, '2019-10-01 04:55:11', '2019-10-01 04:55:11'),
(30, 'Anil 1', 'anil1@gmail.com', '$2y$10$H3efWmgPDaI5WfKKKLquAuBH0O1VnxnZnEPuPSU0UlyzMaQWJN.S2', NULL, NULL, NULL, '01-07-2019', 'MALE', 125, 38, '/uploaded/images/users/5d92e03ebd33c_h7Vlx', NULL, NULL, '0', '0', NULL, NULL, 23, 1, 1, '2019-10-01 00:00:00', NULL, NULL, '2019-10-01 05:13:32', NULL, 0, 0, '2019-10-01 05:11:58', '2019-10-01 05:14:23'),
(32, 'Test 2', 'test1@test.com', '$2y$10$n217fen14R0KP22DeTmLMeWrLO15UGeI9ffpzwlwIg0V3gvw46lA6', NULL, NULL, NULL, '16-06-2019', 'MALE', 160, 50, '/uploaded/images/users/5d931056d22e4_buisiness', NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, 1, '2019-10-01 08:34:57', NULL, NULL, NULL, NULL, 0, 0, '2019-10-01 08:34:57', '2019-10-01 08:37:42'),
(33, 'Abhay Test', 'abhay@gmail.com', '$2y$10$/9mImW3S7wpQMLViaAAmp.LpSzKA/iFOSyXXCmHvzpv2NxmEhZ4b6', NULL, NULL, NULL, '07-10-2013', 'MALE', 125, 39, '/uploaded/images/users/5d9acb73996c2_5x4OS', NULL, NULL, '0', '0', NULL, NULL, 22, 1, 1, '2019-10-07 05:21:18', NULL, NULL, '2019-10-09 10:32:14', NULL, 0, 0, '2019-10-07 05:21:18', '2019-10-09 10:32:14'),
(34, 'Anna T', 'designeratwork@gmail.com', '$2y$10$TDxuFngZBNkYf2yv2gGoiefJL/d0otixe9rJVcYK6RxGseCorY2hG', '+65', '12345678', '', '04-10-1986', 'FEMALE', 165, 53, '/uploaded/images/users/5d9d88482ad59_u7smK', NULL, 8, '1.378775872586877', '103.83877663202993', NULL, NULL, 22, 1, 1, '2019-10-09 07:02:47', NULL, NULL, '2019-10-26 06:49:29', '', 0, 0, '2019-10-09 07:02:47', '2019-10-27 09:17:06'),
(35, 'Anil D', 'anil123@gmail.com', '$2y$10$XAwVsSnvwQ/PZc3N5QJ4Gu7trdxRiShiWNvTKm.NVDaI1mIi.faNm', NULL, NULL, NULL, '09-10-2019', 'MALE', 12, 12, '/uploaded/images/users/5d9dad0133854_gYgII', NULL, NULL, '0', '0', NULL, NULL, 22, 1, 1, '2019-10-09 09:12:05', NULL, NULL, '2019-10-09 09:36:29', NULL, 0, 0, '2019-10-09 09:12:05', '2019-10-09 09:48:49'),
(36, 'Villas 123', 'vikas123@gmail.com', '$2y$10$vwFZ37POhc70bg370Z27J.W9pc0TyKX8WBgzTrx2HU10JTL7Zenfe', NULL, NULL, NULL, '09-10-2017', 'MALE', 165, 53, '/uploaded/images/users/5d9dc0470b17d_TMsiI', NULL, NULL, '0', '0', NULL, NULL, 22, 1, 1, '2019-10-09 11:10:37', NULL, NULL, '2019-10-15 05:31:18', NULL, 0, 0, '2019-10-09 11:10:37', '2019-10-15 05:31:18'),
(37, 'A Hay Pandora', 'abhay.pandora@dignizant.com', '$2y$10$4CHn70QrzH1J//TLxlI3A.bFmTgW7i1Im9/lmpS8XTDneTJ2Ino2y', NULL, NULL, NULL, '25-10-2017', 'MALE', 12, 23, '/uploaded/images/users/5db2d99c8287f_MALwu', NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, 1, '2019-10-25 11:16:12', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:16:12', '2019-10-25 11:16:44'),
(38, NULL, 'test11@test.com', '$2y$10$FyzfHQp9A4pD2EPY/4eoQuJVsfD7bG.oLBFvxanOonopXjkEWowWC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, 0, '2019-10-25 11:22:56', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:22:56', '2019-10-25 11:22:56'),
(39, NULL, 'test11@mailinator.com', '$2y$10$qlKQCCSgNkXIrcfuQUoQXuYain3uX/lETCWkqFIWNSllGDXPCMGqm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, 0, '2019-10-25 11:24:03', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:24:03', '2019-10-25 11:24:03'),
(40, NULL, 'vikas123123@mailinator.com', '$2y$10$4fdRxKFMBt8P3RX1ftHMtObgucgDZmwoCiLrcEueJFCBPoFw760lC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, 0, '2019-10-25 11:25:04', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:25:04', '2019-10-25 11:25:04'),
(41, NULL, 'test123@mailinator.com', '$2y$10$TxtEzCsv9IKvjn3td6FD7uYYiN3fq93.aiTuISlW7CUaLr6flvbRa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 1, 0, '2019-10-25 11:40:50', NULL, NULL, NULL, NULL, 0, 0, '2019-10-25 11:40:40', '2019-10-25 11:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `users_relations`
--

CREATE TABLE IF NOT EXISTS `users_relations` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'User Id.',
  `relation_id` bigint(20) NOT NULL COMMENT 'Relation With Status Wise',
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'status wise relation ids',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_relations`
--

INSERT INTO `users_relations` (`id`, `user_id`, `relation_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PROFESSIONAL_SPECIALIZATION', NULL, NULL),
(2, 1, 4, 'PROFESSIONAL_SPECIALIZATION', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_snoozes`
--

CREATE TABLE IF NOT EXISTS `users_snoozes` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) NOT NULL COMMENT 'Snooze for user id',
  `start_date` timestamp NULL DEFAULT NULL COMMENT 'Set snooze time for start date',
  `end_date` timestamp NULL DEFAULT NULL COMMENT 'Set snooze time for end date',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_snoozes`
--

INSERT INTO `users_snoozes` (`id`, `user_id`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 2, '2019-08-26 11:16:25', '2019-08-27 11:00:25', '2019-09-09 04:09:47', '2019-09-09 04:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `week_wise_frequency_masters`
--

CREATE TABLE IF NOT EXISTS `week_wise_frequency_masters` (
  `id` bigint(20) unsigned NOT NULL,
  `training_plan_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'use Constant like 5K',
  `week_number` int(11) NOT NULL COMMENT 'week number',
  `frequency` int(11) NOT NULL COMMENT 'frequency number X',
  `workouts` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'week workouts W1,W2,W3',
  `base` int(11) DEFAULT NULL COMMENT 'week workouts W1,W2,W3',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `week_wise_frequency_masters`
--

INSERT INTO `week_wise_frequency_masters` (`id`, `training_plan_type`, `week_number`, `frequency`, `workouts`, `base`, `created_at`, `updated_at`) VALUES
(1, '5K', 1, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(2, '5K', 2, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(3, '5K', 3, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(4, '5K', 4, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(5, '5K', 5, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(6, '5K', 6, 4, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(7, '5K', 7, 4, '1,2,3', 4, '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(8, '5K', 7, 5, '1,2,3', 4, '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(9, '5K', 8, 4, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(10, '5K', 8, 5, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(11, '5K', 9, 4, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(12, '5K', 9, 5, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(13, '5K', 10, 4, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(14, '5K', 10, 5, '1,2,3', 4, '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(15, '5K', 11, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(16, '5K', 11, 5, '1,2,3', 5, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(17, '5K', 12, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(18, '5K', 12, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(19, '5K', 13, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(20, '5K', 13, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(21, '5K', 14, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(22, '5K', 14, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(23, '5K', 15, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(24, '5K', 15, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(25, '5K', 16, 4, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(26, '5K', 16, 5, '1,2,3', 4, '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(27, '5K', 1, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(28, '5K', 2, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(29, '5K', 3, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(30, '5K', 4, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(31, '5K', 5, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(32, '5K', 6, 5, '1,1,1,1', NULL, '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(33, '5K', 17, 4, '1,2,3', 4, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(34, '5K', 17, 5, '1,2,3', 4, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(35, '5K', 18, 4, '1,2', 3, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(36, '5K', 18, 5, '1,2', 3, '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(37, '10K', 1, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(38, '10K', 2, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(39, '10K', 3, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(40, '10K', 4, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(41, '10K', 5, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(42, '10K', 6, 5, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(43, '10K', 7, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(44, '10K', 7, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(45, '10K', 8, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(46, '10K', 8, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(47, '10K', 9, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(48, '10K', 9, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(49, '10K', 10, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(50, '10K', 10, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(51, '10K', 11, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(52, '10K', 11, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(53, '10K', 12, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(54, '10K', 12, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(55, '10K', 13, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(56, '10K', 13, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(57, '10K', 14, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(58, '10K', 14, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(59, '10K', 15, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(60, '10K', 15, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(61, '10K', 16, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(62, '10K', 16, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(63, '10K', 17, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(64, '10K', 17, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(65, '10K', 18, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(66, '10K', 18, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(67, '10K', 19, 5, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(68, '10K', 19, 6, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(69, '10K', 20, 5, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(70, '10K', 20, 6, '1,2,3', 4, '2019-11-05 00:00:00', '2019-11-05 00:00:00'),
(71, '10K', 21, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(72, '10K', 21, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(73, '10K', 22, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(74, '10K', 22, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(75, '10K', 23, 5, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(76, '10K', 23, 6, '1,2,3', 4, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(77, '10K', 24, 5, '1', 2, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(78, '10K', 24, 6, '1', 2, '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(79, '10K', 1, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(80, '10K', 2, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(81, '10K', 3, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(82, '10K', 4, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(83, '10K', 5, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(84, '10K', 6, 6, '1,2,3,4,5', NULL, '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(85, '21K', 1, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(86, '21K', 2, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(87, '21K', 3, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(88, '21K', 4, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(89, '21K', 5, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(90, '21K', 6, 5, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(91, '21K', 1, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(92, '21K', 2, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(93, '21K', 3, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(94, '21K', 4, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(95, '21K', 5, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(96, '21K', 6, 6, '1', NULL, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(97, '21K', 7, 5, '1,2,3', 4, '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(98, '21K', 7, 6, '1,2,3', 4, '2019-11-12 00:00:00', '2019-11-12 05:52:03'),
(99, '21K', 8, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(100, '21K', 8, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(101, '21K', 9, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(102, '21K', 9, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(103, '21K', 10, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(104, '21K', 10, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(105, '21K', 11, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(106, '21K', 11, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(107, '21K', 12, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(108, '21K', 12, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(109, '21K', 13, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(110, '21K', 13, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(111, '21K', 14, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(112, '21K', 14, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(113, '21K', 15, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(114, '21K', 15, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(115, '21K', 16, 5, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(116, '21K', 16, 6, '1,2,3', 4, '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(117, '21K', 17, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(118, '21K', 17, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(119, '21K', 18, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(120, '21K', 18, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(121, '21K', 18, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(122, '21K', 18, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(123, '21K', 20, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(124, '21K', 20, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(125, '21K', 21, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(126, '21K', 21, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(127, '21K', 22, 5, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(128, '21K', 22, 6, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(129, '21K', 23, 5, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(130, '21K', 23, 6, '1,2,3', 4, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(131, '21K', 24, 5, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(132, '21K', 24, 6, '1,2', 3, '2019-11-13 05:52:03', '2019-11-11 05:52:03'),
(133, '42K', 1, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(134, '42K', 1, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(135, '42K', 2, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(136, '42K', 2, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(137, '42K', 3, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(138, '42K', 3, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(139, '42K', 4, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(140, '42K', 4, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(141, '42K', 5, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(142, '42K', 5, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(143, '42K', 6, 5, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(144, '42K', 6, 6, '1', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(145, '42K', 7, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(146, '42K', 7, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(147, '42K', 8, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(148, '42K', 8, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(149, '42K', 9, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(150, '42K', 9, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(151, '42K', 10, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(152, '42K', 10, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(153, '42K', 11, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(154, '42K', 11, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(155, '42K', 12, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(156, '42K', 12, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(157, '42K', 13, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(158, '42K', 13, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(159, '42K', 14, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(160, '42K', 14, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(161, '42K', 15, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(162, '42K', 15, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(163, '42K', 16, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(164, '42K', 16, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(165, '42K', 17, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(166, '42K', 17, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(167, '42K', 18, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(168, '42K', 18, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(169, '42K', 19, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(170, '42K', 19, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(171, '42K', 20, 5, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(172, '42K', 20, 6, '1,2,3', 4, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(173, '42K', 21, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(174, '42K', 21, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(175, '42K', 22, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(176, '42K', 22, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(177, '42K', 23, 5, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(178, '42K', 23, 6, '1,2', 3, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(179, '42K', 24, 5, '1,2,3,4,5,6', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03'),
(180, '42K', 24, 6, '1,2,3,4,5,6', NULL, '2019-11-18 05:52:03', '2019-11-11 18:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `week_wise_workouts`
--

CREATE TABLE IF NOT EXISTS `week_wise_workouts` (
  `id` bigint(20) unsigned NOT NULL,
  `week_wise_frequency_master_id` bigint(20) unsigned DEFAULT NULL,
  `week_wise_frequency_master_ids` text COLLATE utf8mb4_unicode_ci,
  `workout` int(11) NOT NULL COMMENT 'Workout number',
  `training_activity_id` bigint(20) NOT NULL COMMENT 'Training Activity id',
  `training_goal_id` bigint(20) NOT NULL COMMENT 'Training Goal id',
  `training_intensity_id` bigint(20) NOT NULL COMMENT 'Training intensity id',
  `THR` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'inputed from pdf',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Title of the week wise workouts',
  `note` text COLLATE utf8mb4_unicode_ci COMMENT 'notes of week wise workouts',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `week_wise_workouts`
--

INSERT INTO `week_wise_workouts` (`id`, `week_wise_frequency_master_id`, `week_wise_frequency_master_ids`, `workout`, `training_activity_id`, `training_goal_id`, `training_intensity_id`, `THR`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 1, 1, 8, 2, '60-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(2, 2, NULL, 1, 1, 8, 2, '60-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(3, 3, NULL, 1, 1, 8, 2, '60-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(4, 4, NULL, 1, 1, 8, 2, '60-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(5, 5, NULL, 1, 1, 8, 2, '60-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(6, 6, NULL, 1, 1, 8, 2, '60-72', 'Base Fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(7, 7, NULL, 1, 1, 7, 1, '83-87', 'General Conditioning', 'Include 2 - 3 days of hard workouts (tempo and interval running). Increase distance every 3 weeks, but not more than 10%.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(8, 8, NULL, 1, 1, 7, 1, '83-87', 'General Conditioning', 'Include 2 - 3 days of hard workouts (tempo and interval running). Increase distance every 3 weeks, but not more than 10%.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(9, 7, NULL, 2, 1, 33, 3, '93-100', 'General Conditioning', 'To develop strength and aerobic fitness.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(10, 8, NULL, 2, 1, 33, 3, '93-100', 'General Conditioning', 'To develop strength and aerobic fitness.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(11, 7, NULL, 3, 1, 20, 3, '93-100', 'General Conditioning', 'Repeat the cycle to clock a total of 5km (3 miles).\r\nTo improve running speed and economy.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(12, 8, NULL, 3, 1, 20, 3, '93-100', 'General Conditioning', 'Repeat the cycle to clock a total of 5km (3 miles).\r\nTo improve running speed and economy.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(13, 7, NULL, 4, 1, 3, 2, '60-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(14, 8, NULL, 4, 1, 3, 2, '60-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-15 00:00:00', '2019-10-15 00:00:00'),
(15, 9, NULL, 1, 1, 7, 1, '83-87', 'General Conditioning', 'Include 2 - 3 days of hard workouts (tempo and interval running). Increase distance every 3 weeks, but not more than 10%.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(16, 10, NULL, 1, 1, 7, 1, '83-87', 'General Conditioning', 'Include 2 - 3 days of hard workouts (tempo and interval running). Increase distance every 3 weeks, but not more than 10%.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(17, 9, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(18, 10, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(19, 9, NULL, 3, 1, 4, 5, '73-82', 'General Conditioning', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(20, 10, NULL, 3, 1, 4, 5, '73-82', 'General Conditioning', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(21, 9, NULL, 4, 1, 3, 2, '60-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(22, 10, NULL, 4, 1, 3, 2, '60-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(23, 11, NULL, 1, 1, 34, 3, '93-100', 'General Conditioning', 'To develop the aerobic system at race pace. The total distance should be less than 10k.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(24, 12, NULL, 1, 1, 34, 3, '93-100', 'General Conditioning', 'To develop the aerobic system at race pace. The total distance should be less than 10k.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(25, 11, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(26, 12, NULL, 2, 1, 7, 1, '83-87', 'General Conditioning', 'Warm-up and cool-down based on your preferences and needs.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(27, 11, NULL, 3, 1, 7, 1, '83-87', 'General Conditioning', 'Run the work intervals at your 5k goal race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(28, 12, NULL, 3, 1, 7, 1, '83-87', 'General Conditioning', 'Run the work intervals at your 5k goal race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(29, 11, NULL, 4, 1, 3, 2, '60-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(30, 12, NULL, 4, 1, 3, 2, '60-72', 'General Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(31, 13, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(32, 14, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(33, 13, NULL, 2, 1, 7, 1, '83-87', 'Recovery', 'Warm-up and cool-down accordingly. Run at your 5k race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(34, 14, NULL, 2, 1, 7, 1, '83-87', 'Recovery', 'Warm-up and cool-down accordingly. Run at your 5k race pace.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(35, 13, NULL, 3, 1, 4, 5, '73-82', 'Recovery', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(36, 14, NULL, 3, 1, 4, 5, '73-82', 'Recovery', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(37, 13, NULL, 4, 1, 3, 2, '60-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(38, 14, NULL, 4, 1, 3, 2, '60-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(39, 15, NULL, 1, 1, 35, 3, '93-100', 'Specific Conditioning', 'High stride rate, pulling the knees up and forward, and staying on the balls of the feet. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(40, 16, NULL, 1, 1, 35, 3, '93-100', 'Specific Conditioning', 'High stride rate, pulling the knees up and forward, and staying on the balls of the feet. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(41, 15, NULL, 2, 1, 7, 1, '83-87', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(42, 16, NULL, 2, 1, 7, 1, '83-87', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(43, 15, NULL, 3, 1, 22, 1, '88-92', 'Specific Conditioning', 'Repeat the cycle for a total distance of 5km or 3 miles.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(44, 16, NULL, 3, 1, 22, 1, '88-92', 'Specific Conditioning', 'Repeat the cycle for a total distance of 5km or 3 miles.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(45, 15, NULL, 4, 1, 3, 2, '60-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(46, 16, NULL, 4, 1, 3, 2, '60-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(47, 17, NULL, 1, 1, 36, 3, '93-100', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(48, 18, NULL, 1, 1, 36, 3, '93-100', 'Specific Conditioning', 'Warm-up and cool-down accordingly.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(49, 17, NULL, 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'Warm-up and cool-down accordingly.\r\nRun at your lactate threshold pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(50, 18, NULL, 2, 1, 5, 6, '88-92', 'Specific Conditioning', 'Warm-up and cool-down accordingly.\r\nRun at your lactate threshold pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(51, 17, NULL, 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Aim for 90 strides/ min.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(52, 18, NULL, 3, 1, 4, 5, '73-82', 'Specific Conditioning', 'Aim for 90 strides/ min.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(53, 17, NULL, 4, 1, 3, 2, '60-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(54, 18, NULL, 4, 1, 3, 2, '60-72', 'Specific Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(55, 19, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(56, 20, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(57, 19, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'Warm-up and cool-down accordingly. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(58, 20, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'Warm-up and cool-down accordingly. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(59, 19, NULL, 3, 1, 36, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles). Run at your mile race pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(60, 20, NULL, 3, 1, 36, 3, '93-100', 'Final Conditioning', 'Repeat the cycle for a total distance of 5km (3 miles). Run at your mile race pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(61, 19, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(62, 20, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(63, 21, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(64, 22, NULL, 1, 1, 34, 3, '93-100', 'Recovery', 'Recovery week, reduce distance.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(65, 21, NULL, 2, 1, 35, 3, '93-100', 'Recovery', 'Have adequate warm-up. Repeated runs of total distance up to 2km (1.2 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(66, 22, NULL, 2, 1, 35, 3, '93-100', 'Recovery', 'Have adequate warm-up. Repeated runs of total distance up to 2km (1.2 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(67, 21, NULL, 3, 1, 34, 3, '93-100', 'Recovery', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(68, 22, NULL, 3, 1, 34, 3, '93-100', 'Recovery', 'Repeat the cycle for a total distance of 5km (3 miles).', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(69, 21, NULL, 4, 1, 3, 2, '60-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(70, 22, NULL, 4, 1, 3, 2, '60-72', 'Recovery', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(71, 23, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(72, 24, NULL, 1, 1, 34, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(73, 23, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'To develop the aerobic system at race pace. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(74, 24, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'To develop the aerobic system at race pace. Active recovery at easy pace.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(75, 23, NULL, 3, 1, 4, 5, '73-82', 'Final Conditioning', 'Race pace pickups only once or twice every 5 mins for 30 secs.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(76, 24, NULL, 3, 1, 4, 5, '73-82', 'Final Conditioning', 'Race pace pickups only once or twice every 5 mins for 30 secs.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(77, 23, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(78, 24, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(79, 27, NULL, 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(80, 28, NULL, 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(81, 29, NULL, 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(82, 30, NULL, 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(83, 31, NULL, 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(84, 32, NULL, 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-10-18 18:30:00', '2019-10-18 18:30:00'),
(85, 25, NULL, 1, 1, 2, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(86, 26, NULL, 1, 1, 2, 3, '93-100', 'Final Conditioning', 'Ensure adequate warm-up.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(87, 25, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'To improve endurance.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(88, 26, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'To improve endurance.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(89, 25, NULL, 3, 1, 7, 1, '83-87', 'Final Conditioning', 'Active recovery at an easy pace.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(90, 26, NULL, 3, 1, 7, 1, '83-87', 'Final Conditioning', 'Active recovery at an easy pace.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(91, 25, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(92, 26, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-25 00:00:00', '2019-10-25 00:00:00'),
(93, 33, NULL, 1, 1, 7, 1, '83-87', 'Final Conditioning', 'Repeat the cycle for a total distance of 8km (5 miles).\r\nEnsure adequate warm-up.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(94, 34, NULL, 1, 1, 7, 1, '83-87', 'Final Conditioning', 'Repeat the cycle for a total distance of 8km (5 miles).\r\nEnsure adequate warm-up.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(95, 33, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'To improve endurance.\r\nRun at your 5k race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(96, 34, NULL, 2, 1, 7, 1, '83-87', 'Final Conditioning', 'To improve endurance.\r\nRun at your 5k race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(97, 33, NULL, 3, 1, 34, 3, '93-100', 'Final Conditioning', 'Run at or faster than mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(98, 34, NULL, 3, 1, 34, 3, '93-100', 'Final Conditioning', 'Run at or faster than mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(99, 33, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(100, 34, NULL, 4, 1, 3, 2, '60-72', 'Final Conditioning', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(101, 35, NULL, 1, 1, 34, 3, '93-100', 'Race Week', 'Reduce this week''s total distance. Repeat the intervals for a total of 6km (4 miles).', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(102, 36, NULL, 1, 1, 34, 3, '93-100', 'Race Week', 'Reduce this week''s total distance. Repeat the intervals for a total of 6km (4 miles).', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(103, 35, NULL, 2, 1, 34, 3, '93-100', 'Race Week', 'To maintain the cardiovascular fitness level.\r\nRun at your mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(104, 36, NULL, 2, 1, 34, 3, '93-100', 'Race Week', 'To maintain the cardiovascular fitness level.\r\nRun at your mile race pace.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(105, 35, NULL, 3, 1, 3, 2, '60-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(106, 36, NULL, 3, 1, 3, 2, '60-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(107, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(108, NULL, '43,44', 1, 1, 19, 3, '93-100', 'General conditioning - Initial building', 'To improve speed and running economy. Run at mile race pace or faster.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(109, NULL, '43,44', 2, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'To develop the cardiovascular fitness. Active recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(110, NULL, '43,44', 3, 1, 23, 3, '93-100', 'General conditioning - Initial building', 'Repeat the process for a distance of up to 10km.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(111, NULL, '43,44', 4, 1, 3, 3, '93-100', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(112, NULL, '45,46', 1, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'Repeat the cycle for a total of 10-12 laps. The work laps distance should not exceed 5% of the week''s total distance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(113, NULL, '45,46', 2, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(114, NULL, '45,46', 3, 1, 4, 5, '73-82', 'General conditioning - Initial building', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(115, NULL, '45,46', 4, 1, 3, 2, '60-72', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(116, NULL, '47,48', 1, 1, 19, 3, '93-100', 'General conditioning - Initial building', 'Improve speed and running economy. Total distance should be less than 8km.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(117, NULL, '47,48', 2, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(118, NULL, '47,48', 3, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'Repeat the cycle for 5-6 times and make sure the total work distance does not exceed 8% of the week`s total distance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(119, NULL, '47,48', 4, 1, 3, 2, '60-72', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(120, NULL, '49,50', 1, 1, 24, 6, '88-92', 'Recovery Week', 'Reduce total weekly distance.\r\nTo improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(121, NULL, '49,50', 2, 1, 5, 6, '88-92', 'Recovery Week', 'To develop cardiovascular fitness.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(122, NULL, '49,50', 3, 1, 4, 5, '73-82', 'Recovery Week', 'To develop cardiovascular fitness.\r\nTo increase the ability of the body to tolerate repeated impact from running.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(123, NULL, '49,50', 4, 1, 3, 2, '60-72', 'Recovery Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(124, NULL, '51,52', 1, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'Total distance ran should not exceed 5% of the week''s total distance. Active recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(125, NULL, '51,52', 2, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'Have adequate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(126, NULL, '51,52', 3, 1, 22, 3, '93-100', 'General conditioning - Initial building', 'Repeat the process for a total distance of 10km.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(127, NULL, '51,52', 4, 1, 3, 2, '60-72', 'Specific conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(128, NULL, '53,54', 1, 1, 21, 3, '93-100', 'Specific conditioning - Initial building', 'To improve speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(129, NULL, '53,54', 2, 1, 2, 3, '93-100', 'Specific conditioning - Initial building', 'To improve cardiovascular fitness at race pace. Total distance covered should be less than 10km (6 miles).', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(130, NULL, '53,54', 3, 1, 5, 6, '88-92', 'Specific conditioning - Initial building', 'Ensure adequate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(131, NULL, '53,54', 4, 1, 3, 2, '60-72', 'Specific conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological\r\nchanges.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(132, NULL, '55,56', 1, 1, 5, 6, '88-92', 'Specific conditioning - Initial building', 'Ensure adquate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(133, NULL, '55,56', 2, 1, 2, 3, '93-100', 'Specific conditioning - Initial building', 'To develop the cardiovascular fitness at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(134, NULL, '55,56', 3, 1, 5, 6, '88-92', 'Specific conditioning - Initial building', 'Ensure adequate warm-up and cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(135, NULL, '55,56', 4, 1, 3, 2, '60-72', 'Specific conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(136, NULL, '57,58', 1, 1, 2, 3, '93-100', 'Recovery Week', 'Clock a total of 10-12 laps.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(137, NULL, '57,58', 2, 1, 5, 7, '88-92', 'Recovery Week', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(138, NULL, '57,58', 3, 1, 24, 6, '88-92', 'Recovery Week', 'Active recovery at easy pace', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(139, NULL, '57,58', 4, 1, 3, 2, '88-92', 'Maintenance - Final building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(140, NULL, '59,60', 1, 1, 5, 7, '88-92', 'Specific conditioning - Second building', 'Improve endurance. Active recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(141, NULL, '59,60', 2, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'To develop the cardiovascular system at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(142, NULL, '59,60', 3, 1, 5, 7, '93-100', 'Specific conditioning - Second building', 'To improve endurance.\r\nActive recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(143, NULL, '59,60', 4, 1, 2, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(144, NULL, '61,62', 1, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'Active recovery at easy pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(145, NULL, '61,62', 2, 1, 5, 6, '88-92', 'Specific conditioning - Second building', 'Repeat the whole cycle 4 times. Allocate time for cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(146, NULL, '61,62', 3, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'To develop the cardiovascular system at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(147, NULL, '61,62', 4, 1, 2, 2, '60-72', 'Maintenance - Final building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(148, NULL, '63,64', 1, 1, 25, 3, '93-100', 'Specific conditioning - Second building', 'Active recovery at easy pace. Allocate time for cool-down.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(149, NULL, '63,64', 2, 1, 7, 1, '83-87', 'Specific conditioning - Second building', 'To develop the cardiovascular system at race pace.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(150, NULL, '63,64', 3, 1, 4, 5, '73-82', 'Specific conditioning - Second building', 'Have at least 6 x 30 secs pickups within the run. Gradually increase the pace to race pace. Have at least 5 mins of easy pace run before the next pickups.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(151, NULL, '63,64', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(152, NULL, '65,66', 1, 1, 5, 6, '88-92', 'Recovery Week', 'Reduce weekly total distance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(153, NULL, '65,66', 2, 1, 5, 6, '88-92', 'Recovery Week', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(154, NULL, '65,66', 3, 1, 19, 3, '93-100', 'Recovery Week', 'To improve speed and running economy.\r\nEnsure full recoveries between each run.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(155, NULL, '65,66', 4, 1, 3, 2, '60-72', 'Recovery Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(156, NULL, '67,68', 1, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'To develop the cardiovascular system at race pace and to improve speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(157, NULL, '67,68', 2, 1, 5, 6, '88-92', 'Specific conditioning - Third building', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(158, NULL, '67,68', 3, 1, 23, 3, '93-100', 'Specific conditioning - Third building', 'Repeat the process and run up to 60 mins.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(159, NULL, '67,68', 4, 1, 3, 2, '60-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(160, NULL, '69,70', 1, 1, 26, 3, '93-100', 'Specific conditioning - Third building', 'To develop the cardiovascular system at race pace and to improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(161, NULL, '69,70', 2, 1, 5, 6, '88-92', 'Specific conditioning - Third building', 'To develop the cardiovascular system at race pace and to improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(162, NULL, '69,70', 3, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'To develop the cardiovasucular system.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(163, NULL, '69,70', 4, 1, 2, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(164, NULL, '71,72', 1, 1, 5, 6, '88-92', 'Specific conditioning - Third building', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(165, NULL, '71,72', 2, 1, 4, 5, '73-82', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote positive physiological adaptations.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(166, NULL, '71,72', 3, 1, 22, 6, '88-92', 'Specific conditioning - Third building', 'Repeat the process and run a total of 60 mins in duration.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(167, NULL, '71,72', 4, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(168, NULL, '73,74', 1, 1, 5, 6, '88-92', 'Recovery Week', 'Reduce total weekly distance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(169, NULL, '73,74', 2, 1, 2, 3, '93-100', 'Recovery Week', 'To develop the cardiovascular system and to improve speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(170, NULL, '73,74', 3, 1, 2, 3, '93-100', 'Recovery Week', 'To stress the aerobic power and to improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(171, NULL, '73,74', 4, 1, 3, 2, '60-72', 'Recovery Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(172, NULL, '75,76', 1, 1, 5, 6, '88-92', 'Maintanence - Final Building', 'To improve endurance.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(173, NULL, '75,76', 2, 1, 7, 1, '83-87', 'Maintanence - Final Building', 'To develop the cardiovascular system.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(174, NULL, '75,76', 3, 1, 26, 3, '93-100', 'Maintanence - Final Building', 'To improve endurance, speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(175, NULL, '75,76', 4, 1, 3, 2, '60-72', 'Maintanence - Final Building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(176, NULL, '77,78', 1, 1, 5, 6, '88-92', 'Race Week', 'To improve endurance, speed and running economy.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(177, NULL, '77,78', 2, 1, 3, 2, '60-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(178, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 2, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(179, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 3, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(180, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 4, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(181, NULL, '37,38,39,40,41,42,79,80,81,82,83,84', 5, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(182, NULL, '85,86,87,88,89,90,91,92,93,94,95,96', 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running.', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(183, NULL, '97,98', 1, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'To stress the aerobic system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(185, NULL, '97,98', 2, 1, 5, 8, '93-100', 'General conditioning - Initial building', 'Try to perform this workout on a track. Run 1.6km (1 mile) in each direction (clockwise\r\nand anticlock-wise)\r\nRun at the intensity of RPE 2-3 on the curves and RPE 5-7 on the straights.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(186, NULL, '97,98', 3, 1, 4, 5, '73-82', 'General conditioning - Initial building', 'To develop the cardiovascular system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(187, NULL, '97,98', 4, 1, 3, 2, '60-72', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(188, NULL, '99,100', 1, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'Develop the aerobic fitness.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(189, NULL, '99,100', 2, 1, 7, 1, '83-87', 'General conditioning - Initial building', 'Run slightly faster than your pace for 5k.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(190, NULL, '99,100', 3, 1, 4, 5, '73-82', 'General conditioning - Initial building', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(191, NULL, '99,100', 4, 1, 3, 2, '60-72', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(192, NULL, '101,102', 1, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'To develop cardiovascular system at race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(193, NULL, '101,102', 2, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'To improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(194, NULL, '101,102', 3, 1, 4, 5, '73-82', 'General conditioning - Initial building', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(195, NULL, '101,102', 4, 1, 3, 2, '60-72', '60-72\r\nGeneral conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(196, NULL, '103,104', 1, 1, 2, 3, '93-100', 'Recovery Week', 'Reduce total weekly distance.\r\nTo improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(197, NULL, '103,104', 2, 1, 2, 3, '93-100', 'Recovery Week', 'To develop cardiovascular fitness.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(198, NULL, '103,104', 3, 1, 4, 5, '73-82', 'Recovery Week', 'To increase the ability of the body to tolerate repeated impact from running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(199, NULL, '103,104', 4, 1, 3, 2, '60-72', 'Recovery Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(200, NULL, '105,106', 1, 1, 22, 6, '88-92', 'Specific conditioning - First building', 'Run hard for the time stated and easy jog for half of that time.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(201, NULL, '105,106', 2, 1, 2, 3, '93-100', 'Specific conditioning - First building', 'Have adequate warm-up and cool-down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(202, NULL, '105,106', 3, 1, 4, 5, '73-82', 'Specific conditioning - First building', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(203, NULL, '105,106', 4, 1, 3, 2, '60-72', 'Specific conditioning - First building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(204, NULL, '107,108', 1, 1, 19, 3, '93-100', 'Specific conditioning - First building', 'To improve speed and running economy.\r\nDuring the recovery jog, allow the heart rate to drop significantly.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(205, NULL, '107,108', 1, 1, 2, 3, '93-100', 'Specific conditioning - First building', 'To improve cardiovascular fitness at race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(206, NULL, '107,108', 1, 1, 4, 5, '73-82', 'Specific conditioning - First building', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(207, NULL, '107,108', 1, 1, 3, 2, '60-72', 'Specific conditioning - First building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(208, NULL, '109,110', 1, 1, 27, 7, '88-92', 'Specific conditioning - Second building', 'Focus on maintaining posture and a high stride rate.\r\nRun at 5k race pace.\r\nActive recovery at an easy pace/ walk.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(209, NULL, '109,110', 2, 1, 5, 7, '88-92', 'Specific conditioning - Second building', 'To improve your lactate threshold.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(210, NULL, '109,110', 3, 1, 4, 5, '73-82', 'Specific conditioning - Second building', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(211, NULL, '109,110', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(212, NULL, '111,112', 1, 1, 7, 1, '83-87', 'Specific conditioning - Second building', 'To improve cardiovascular fitness.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(213, NULL, '111,112', 2, 1, 5, 7, '88-92', 'Specific conditioning - Second building', 'Repeat the process 3 times.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(214, NULL, '111,112', 3, 1, 5, 6, '88-92', 'Specific conditioning - Second building', 'To improve cardiovascular endurance at race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(215, NULL, '111,112', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(216, NULL, '113,114', 1, 1, 27, 6, '88-92', 'Specific conditioning - Second building', 'Focus on maintaining posture and a high stride rate.\r\nActive recovery at easy pace/ walk.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(217, NULL, '113,114', 2, 1, 5, 6, '88-92', 'Specific conditioning - Second building', 'Keep the intensity consistent.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(218, NULL, '113,114', 3, 1, 4, 5, '73-82', 'Specific conditioning - Second building', 'Make sure the run distance does not exceed 5% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(219, NULL, '113,114', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(220, NULL, '115,116', 1, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'To improve on cardiovascular fitness.\r\nIf possible, maintain the intensity.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(221, NULL, '115,116', 2, 1, 5, 6, '88-92', 'Specific conditioning - Second building', 'To improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(222, NULL, '115,116', 3, 1, 28, 3, '93-100', 'Specific conditioning - Second building', 'To improve running speed and economy.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(223, NULL, '115,116', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(224, NULL, '117,118', 1, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'To develop the cardiovascular system at race pace.\r\nRepeat the first set of workout 10 times, second set of workout 4 times and last\r\nset of workout 10 times.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(225, NULL, '117,118', 2, 1, 5, 6, '88-92', 'Specific conditioning - Second building', 'To improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(226, NULL, '117,118', 3, 1, 4, 5, '73-82', 'Specific conditioning - Second building', 'Make sure the run distance does not exceed 25% of the week''s total distance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(227, NULL, '117,118', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(228, NULL, '119,120', 1, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'To stress the cardiovascular system.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(229, NULL, '119,120', 2, 1, 5, 6, '88-92', 'Specific conditioning - Second building', 'To improve endurance.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(230, NULL, '119,120', 3, 1, 19, 3, '93-100', 'Specific conditioning - Second building', 'To improve speed and running economy.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(231, NULL, '119,120', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-13 00:00:00', '2019-11-13 00:00:00'),
(232, NULL, '121,122', 1, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'To develop the cardiovascular system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(233, NULL, '121,122', 2, 1, 4, 5, '73-82', 'Specific conditioning - Third building', 'To improve endurance.\r\nIncreasing the ability of the muscles, tendons, and bones to tolerate repeated\r\nimpact from running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(234, NULL, '121,122', 3, 1, 26, 3, '93-100', 'Specific conditioning - Third building', 'To develop both cardiovascular endurance and power.\r\nRepeat 8x for both first and last set of workout.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(235, NULL, '121,122', 4, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(236, NULL, '123,124', 1, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'Allocate time to cool down.\r\nTo improve cardiovascular endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(237, NULL, '123,124', 2, 1, 7, 1, '83-87', 'Specific conditioning - Third building', 'To develop the cardiovascular system.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(238, NULL, '123,124', 3, 1, 19, 3, '93-100', 'Specific conditioning - Third building', 'To develop the cardiovasucular system at race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(239, NULL, '123,124', 4, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(240, NULL, '125,126', 1, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'Allocate time to cool down.\r\nTo improve aerobic power.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(241, NULL, '125,126', 2, 1, 21, 3, '93-100', 'Specific conditioning - Third building', 'To develop strength specific to running.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(242, NULL, '125,126', 3, 1, 5, 6, '88-92', 'Specific conditioning - Third building', 'Run as fast as possible at a steady pace for the duration.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(243, NULL, '125,126', 4, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(244, NULL, '127,128', 1, 1, 5, 6, '88-92', 'Specific conditioning - Third building', 'To improve endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(245, NULL, '127,128', 2, 1, 28, 3, '93-100', 'Specific conditioning - Third building', 'To improve cardiovascular power and running speed and economy.\r\nAllocate time to cool down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(246, NULL, '127,128', 3, 1, 3, 2, '60-72', 'Recovery Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(247, NULL, '129,130', 1, 1, 2, 3, '93-100', 'Peaking', 'Reduce weekly distance by 5-10%.\r\nAllocate time to cool-down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(248, NULL, '129,130', 2, 1, 2, 6, '88-92', 'Peaking', 'Reduce weekly distance by 5-10%.\r\nAllocate time to cool-down.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(249, NULL, '129,130', 3, 1, 5, 3, '93-100', 'Peaking', 'To maintain cardiovascular endurance.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(250, NULL, '129,130', 4, 1, 3, 2, '60-72', 'Peaking', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(251, NULL, '131,132', 1, 1, 4, 6, '88-92', 'Race Week', 'Include approximately 5 pickups within the run.\r\nPickups pace at or faster than mile race pace.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(252, NULL, '131,132', 2, 1, 2, 3, '93-100', 'Race Week', 'Reduce the total distance covered.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(253, NULL, '131,132', 3, 1, 3, 2, '60-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(254, NULL, '133,134,135,136,137,138,139,140,141,142,143,144', 1, 1, 3, 2, '60-72', 'General conditioning - Base fitness', 'Develop an aerobic foundation with easy-pace running. ', '2019-11-12 05:52:03', '2019-11-12 05:52:03'),
(255, NULL, '145,146', 1, 1, 29, 6, '88-92', 'General conditioning - Initial building', 'To develop aerobic endurance and improve lactate tolerance. ', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(256, NULL, '145,146', 2, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'Ensure adequate warm-up.\r\nAllow the heart rate to fluctuate but do not drop below 88% of Hrmax (RPE 4-6).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(257, NULL, '145,146', 3, 1, 30, 3, '93-100', 'General conditioning - Initial building', 'To develop cardiovascular power and strength specific to running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(258, NULL, '145,146', 4, 1, 3, 2, '60-72', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(259, NULL, '147,148', 1, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'To improve endurance. ', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(260, NULL, '147,148', 2, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'To develop the aerobic power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(261, NULL, '147,148', 3, 1, 21, 3, '93-100', 'General conditioning - Initial building', 'Focus on leg extension and knee drive to produce the most force and power on \r\neach stride.\r\nTo improve running speed and economy.\r\nTo develop strength specific to running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(262, NULL, '147,148', 4, 1, 3, 2, '60-72', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(263, NULL, '149,150', 1, 1, 19, 3, '93-100', 'General conditioning - Initial building', 'To improve running speed and economy.\r\nAllocate time for cool-down. ', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(264, NULL, '149,150', 2, 1, 2, 3, '93-100', 'General conditioning - Initial building', 'To develop cardiovascular power.\r\nAllocate time for cool-down.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(265, NULL, '149,150', 3, 1, 5, 6, '88-92', 'General conditioning - Initial building', 'Allow heart rate to fluctuate, but do not let it drop below 88% of HRmax (RPE: 4.6)', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(266, NULL, '149,150', 4, 1, 3, 2, '60-72', 'General conditioning - Initial building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(267, NULL, '151,152', 1, 1, 2, 3, '93-100', 'Recovery Week', 'Reduce total weekly distance.\r\nTo improve cardiovascular power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03');
INSERT INTO `week_wise_workouts` (`id`, `week_wise_frequency_master_id`, `week_wise_frequency_master_ids`, `workout`, `training_activity_id`, `training_goal_id`, `training_intensity_id`, `THR`, `name`, `note`, `created_at`, `updated_at`) VALUES
(268, NULL, '151,152', 2, 1, 7, 1, '83-87', 'Recovery Week', 'Allow time to cool-down.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(269, NULL, '151,152', 3, 1, 21, 3, '93-100', 'Recovery Week', 'To develop strength specific to running.\r\nFocus on leg extension and knee drive to produce high force and power on each stride', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(270, NULL, '151,152', 4, 1, 2, 2, '60-72', 'Recovery Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(271, NULL, '153,154', 1, 1, 5, 6, '88-92', 'Specific conditioning - First building', 'To develop cardiovascular power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(272, NULL, '153,154', 2, 1, 7, 1, '83-87', 'Specific conditioning - First building', 'Total workout duration of at least 75 mins.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(273, NULL, '153,154', 3, 1, 4, 5, '73-82', 'Specific conditioning - First building', 'Workout distance should not exceed 25% of weekly distance.\r\nFocus on stride rate and keeping a relaxed upper body.\r\nIf you feel fatigue, insert a few 20 secs pickups throughout the run (with several mins apart) to break up the monotony of it.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(274, NULL, '153,154', 4, 1, 3, 2, '60-72', 'Specific conditioning - First building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(275, NULL, '155,156', 1, 1, 5, 6, '88-92', 'Specific conditioning - First building', 'To develop cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(276, NULL, '155,156', 2, 1, 28, 3, '93-100', 'Specific conditioning - First building', 'To improve endurance and cardiovascular fitness at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(277, NULL, '155,156', 3, 1, 4, 5, '73-82', 'Specific conditioning - First building', 'Workout distance should not exceed 25% of weekly distance.\r\nFocus on form and count stride rate periodically during the run.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(278, NULL, '155,156', 4, 1, 3, 2, '60-72', 'Specific conditioning - First building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(279, NULL, '157,158', 1, 1, 25, 1, '83-87', 'Specific conditioning - Second building', 'To stress the aerobic system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(280, NULL, '157,158', 2, 1, 28, 3, '93-100', 'Specific conditioning - Second building', 'To improve running speed and economy.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(281, NULL, '157,158', 3, 1, 31, 3, '93-100', 'Specific conditioning - Second building', 'Develop the cardiovascular system at race pace.\r\nTo increase lactate threshold tolerance.\r\nRepeat the second set of intervals to clock a total of 9.5km (6 miles).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(282, NULL, '157,158', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(283, NULL, '159,160', 1, 1, 2, 3, '93-100', 'Recovery Week', 'Reduce weekly total distance.\r\nTo improve endurance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(284, NULL, '159,160', 2, 1, 31, 3, '93-100', 'Recovery Week', 'To stress the cardiovascular system at race pace.\r\nRun at your 5k race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(285, NULL, '159,160', 3, 1, 22, 6, '88-92', 'Recovery Week', 'During the interval run, run as fast as you can maintain for the prescribed duration.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(286, NULL, '159,160', 4, 1, 3, 2, '60-72', 'Recovery Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(287, NULL, '161,162', 1, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'To stress the cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(288, NULL, '161,162', 2, 1, 31, 3, '93-100', 'Specific conditioning - Second building', 'Allow time to cool-down.\r\nTo stress the cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(289, NULL, '161,162', 3, 1, 4, 5, '73-82', 'Specific conditioning - Second building', 'Run at a steady and easy pace.\r\nWorkout distance should not exceed 25% of weekly distance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(290, NULL, '161,162', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(291, NULL, '163,164', 1, 1, 2, 3, '93-100', 'Specific conditioning - Second building', 'To develop on cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(292, NULL, '163,164', 2, 1, 22, 3, '93-100', 'Specific conditioning - Second building', 'Continue the second set of interval pattern for 16km (10 miles).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(293, NULL, '163,164', 3, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(294, NULL, '165,166', 1, 1, 5, 6, '88-92', 'Specific conditioning - Second building', 'To improve endurance and threshold tolerance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(295, NULL, '165,166', 2, 1, 32, 7, '88-92', 'Specific conditioning - Second building', 'To stress the cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(296, NULL, '165,166', 3, 1, 4, 5, '73-82', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(297, NULL, '165,166', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(298, NULL, '167,168', 1, 1, 31, 3, '93-100', 'Recovery Week', 'Reduce total distance.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(299, NULL, '167,168', 2, 1, 2, 3, '93-100', 'Recovery Week', 'To develop cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(300, NULL, '167,168', 3, 1, 4, 5, '73-82', 'Recovery Week', 'Run at a steady pace.\r\nTo increase the body''s ability to tolerate repeated impact from running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(301, NULL, '167,168', 4, 1, 3, 2, '60-72', 'Specific conditioning - Second building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(302, NULL, '169,170', 1, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'To develop the cardiovascular system.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(303, NULL, '169,170', 2, 1, 4, 5, '73-82', 'Specific conditioning - Third building', 'Run at a steady pace.\r\nTo increase the body''s ability to tolerate repeated impact from running.\r\n', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(304, NULL, '169,170', 3, 1, 25, 3, '93-100', 'Specific conditioning - Third building', 'To develop cardiovascular endurance at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(305, NULL, '169,170', 4, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(306, NULL, '171,172', 1, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'Allow adequate warm-up and cool down.\r\nTo improve cardiovascular endurance at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(307, NULL, '171,172', 2, 1, 4, 5, '72-82', 'Specific conditioning - Third building', 'Workout distance should not exceed 25% of weekly distance or 24km (15 miles).', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(308, NULL, '171,172', 3, 1, 5, 6, '88-92', 'Specific conditioning - Third building', 'Allow time to warm-up and cool-down.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(309, NULL, '171,172', 4, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(310, NULL, '173,174', 1, 1, 4, 5, '73-82', 'Specific conditioning - Third building', 'To develop the cardiovascular system.\nTo increase the body''s ability to tolerate repeated impact from running.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(311, NULL, '173,174', 2, 1, 19, 3, '93-100', 'Specific conditioning - Third building', 'To stress cardiovascular power at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(312, NULL, '173,174', 3, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(313, NULL, '175,176', 1, 1, 2, 3, '93-100', 'Specific conditioning - Third building', 'To stress the cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(314, NULL, '175,176', 2, 1, 5, 6, '88-92', 'Specific conditioning - Third building', 'Run at goal race pace or threshold pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(315, NULL, '175,176', 3, 1, 3, 2, '60-72', 'Specific conditioning - Third building', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(316, NULL, '177,178', 1, 1, 2, 3, '93-100', 'Peaking', 'Include warm-up and cool-down.\r\nStress cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(317, NULL, '177,178', 2, 1, 2, 3, '93-100', 'Peaking', 'Ensure full recoveries between each practice.\r\nStress cardiovascular system at race pace.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(318, NULL, '177,178', 3, 1, 3, 2, '60-72', 'Peaking', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(319, NULL, '179,180', 1, 1, 4, 5, '73-82', 'Race Week', 'Develop cardiovascular system.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(320, NULL, '179,180', 2, 1, 4, 5, '73-82', 'Race Week', 'Practice 5x fast strides at mile race pace or faster. Ensure full recoveries between each practice.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(321, NULL, '179,180', 3, 1, 2, 3, '93-100', 'Race Week', 'To improve aerobic power.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(322, NULL, '179,180', 4, 1, 3, 2, '60-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological changes.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(323, NULL, '179,180', 5, 1, 3, 2, '60-72', 'Race Week', 'To develop the cardiovascular system and to promote desirable physiological \r\nchanges. Practice 4x fast strides at mile race pace or faster. Ensure full recoveries \r\n between each practice.', '2019-11-18 05:52:03', '2019-11-18 05:52:03'),
(324, NULL, '179,180', 6, 1, 3, 2, '60-72', 'Race Week', 'Practice 4x fast strides at mile race pace or faster. Ensure full recoveries between each practice..', '2019-11-18 05:52:03', '2019-11-18 05:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `workout_wise_laps`
--

CREATE TABLE IF NOT EXISTS `workout_wise_laps` (
  `id` bigint(20) unsigned NOT NULL,
  `week_wise_workout_ids` text COLLATE utf8mb4_unicode_ci COMMENT 'week_wise_workouts ids',
  `lap` int(11) NOT NULL COMMENT 'lap number',
  `percent` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'percent of current lap',
  `distance` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'distance of current lap',
  `duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'duration of current lap',
  `speed` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'speed of current lap',
  `rest` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rest of current lap',
  `VDOT` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'VDOT for calculate speed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1932 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workout_wise_laps`
--

INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(1, '1,2,3,4,5,6,79,80,81,82,83,84', 1, '0.00', '2.5-5km', NULL, NULL, NULL, 'E/M', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(7, '7,8', 1, '0.00', '0.4km', NULL, NULL, NULL, 'I-5K', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(8, '7,8', 2, '0.00', '0.4km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(9, '7,8', 3, '0.00', '0.4km', NULL, NULL, NULL, 'I-5K', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(10, '7,8', 4, '0.00', '0.4km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(11, '7,8', 5, '0.00', '0.4km', NULL, NULL, NULL, 'I-5K', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(12, '7,8', 6, '0.00', '0.4km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(13, '7,8', 1, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(15, '7,8', 3, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(16, '7,8', 4, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(17, '7,8', 5, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(18, '7,8', 6, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(19, '7,8', 7, '0.00', '0.2km', NULL, NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(20, '7,8', 8, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(28, '7,8', 2, '0.00', '0.2km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(35, '9,10', 1, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(36, '9,10', 2, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(37, '9,10', 3, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(38, '9,10', 4, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(39, '9,10', 5, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(40, '9,10', 6, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(41, '9,10', 7, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(42, '9,10', 8, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(43, '9,10', 9, '5-10', NULL, '0:03:00-0:05:00', NULL, NULL, 'I', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(44, '9,10', 10, '0', NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-10-13 18:30:00', '2019-10-13 18:30:00'),
(45, '11,12', 1, '0', NULL, '0:02:00', NULL, NULL, 'R', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(46, '11,12', 2, '0', NULL, '0:01:00', NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(47, '11,12', 3, '0', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(48, '11,12', 4, '0', NULL, '0:00:30', NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(49, '11,12', 5, '0', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(50, '11,12', 6, '0', NULL, '0:02:00', NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(51, '13,14', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-13 18:30:00', '2019-10-16 18:30:00'),
(53, '15,16', 1, '0', '0.4km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(54, '15,16', 2, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(55, '15,16', 3, '0', '0.4km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(56, '15,16', 4, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(57, '15,16', 5, '0', '0.4km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(58, '15,16', 6, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(59, '15,16', 7, '0', '0.4km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(60, '15,16', 8, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(61, '15,16', 1, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(62, '15,16', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(63, '15,16', 3, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(64, '15,16', 4, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(65, '15,16', 5, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(66, '15,16', 6, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(67, '15,16', 7, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(68, '15,16', 8, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(69, '15,16', 9, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(70, '15,16', 10, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(71, '17,18', 1, '0', NULL, '0:30:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(72, '19,20', 1, '0', NULL, '0:60:00', NULL, NULL, 'M', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(73, '21,22', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(74, '23,24', 1, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(75, '23,24', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(76, '23,24', 3, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(77, '23,24', 4, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(78, '23,24', 1, '0', '0.4km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(79, '23,24', 2, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(80, '23,24', 1, '0', '0.8km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(81, '23,24', 2, '0', '0.8km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(82, '23,24', 1, '0', '0.4km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(83, '23,24', 2, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(84, '23,24', 1, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(85, '23,24', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(86, '23,24', 3, '0', '0.2km', NULL, NULL, NULL, 'I', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(87, '23,24', 4, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(88, '25,26', 1, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(89, '25,26', 2, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(90, '25,26', 3, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(91, '25,26', 4, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(92, '25,26', 5, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(93, '25,26', 6, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(94, '25,26', 7, '0', '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(95, '25,26', 8, '0', NULL, NULL, NULL, '0:02:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(96, '27,28', 1, '0', NULL, '0:03:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(97, '27,28', 2, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(98, '27,28', 3, '0', NULL, '0:03:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(99, '27,28', 4, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(100, '27,28', 5, '0', NULL, '0:03:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(101, '27,28', 6, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(102, '27,28', 7, '0', NULL, '0:03:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(103, '27,28', 8, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(112, '29,30', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(113, '31,32', 1, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(114, '31,32', 2, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(115, '31,32', 3, '0', '0.4km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(116, '31,32', 4, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(117, '31,32', 5, '0', '0.8km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(118, '31,32', 6, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(119, '31,32', 7, '0', '0.2km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(120, '31,32', 8, '0', '0.2km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(121, '31,32', 9, '0', '0.4km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(122, '31,32', 10, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(123, '31,32', 11, '0', '0.8km', NULL, NULL, NULL, 'R', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(124, '31,32', 12, '0', '0.4km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(125, '33,34', 1, '0', NULL, '0:30:00 - 0:40:00', NULL, NULL, 'I-5k', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(126, '35,36', 1, '0', NULL, '0:50:00-0:60:00', NULL, NULL, 'M', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(127, '37,38', 1, '0', '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-16 00:00:00', '2019-10-16 00:00:00'),
(128, '39,40', 1, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(129, '39,40', 2, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(130, '39,40', 3, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(131, '39,40', 4, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(132, '39,40', 5, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(133, '39,40', 6, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(134, '39,40', 7, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(135, '39,40', 8, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(136, '39,40', 9, '5-10', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(137, '39,40', 10, NULL, NULL, NULL, NULL, '0:01:30-0:05:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(138, '41,42', 1, NULL, '4-5km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(139, '41,42', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(140, '41,42', 3, NULL, '2.4-3km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(141, '41,42', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(142, '41,42', 5, NULL, '0.8-1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(143, '43,44', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(144, '43,44', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(145, '43,44', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(146, '43,44', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(147, '43,44', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(148, '43,44', 6, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(149, '45,46', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(150, '47,48', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(151, '47,48', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(152, '47,48', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(153, '47,48', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(154, '47,48', 5, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(155, '47,48', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(156, '47,48', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(157, '47,48', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(158, '47,48', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(159, '47,48', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(160, '47,48', 5, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(161, '47,48', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(162, '47,48', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(163, '47,48', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(164, '47,48', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(165, '47,48', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(166, '47,48', 5, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(167, '47,48', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(168, '49,50', 1, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(169, '49,50', 2, NULL, NULL, '0:05:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(170, '49,50', 3, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(171, '51,52', 1, NULL, NULL, '0:50:00-0:65:00', NULL, NULL, 'M', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(172, '53,54', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(173, '55,56', 1, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(174, '55,56', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(175, '57,58', 1, NULL, '3.2km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(176, '57,58', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(177, '57,58', 3, NULL, '3.2km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(178, '57,58', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(179, '57,58', 5, NULL, '3.2km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(180, '57,58', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(181, '59,60', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(182, '59,60', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(183, '59,60', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(184, '59,60', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(185, '59,60', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(186, '59,60', 6, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(187, '61,62', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(188, '63,64', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(189, '63,64', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(190, '63,64', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(191, '63,64', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(192, '63,64', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(193, '63,64', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(194, '63,64', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(195, '63,64', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(196, '63,64', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(197, '63,64', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(198, '63,64', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(199, '63,64', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(200, '63,64', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(201, '63,64', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(202, '63,64', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(203, '63,64', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(204, '65,66', 1, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(205, '65,66', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(206, '65,66', 3, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(207, '65,66', 4, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(208, '65,66', 5, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(209, '65,66', 6, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(210, '65,66', 7, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(211, '65,66', 8, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(212, '65,66', 9, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(213, '65,66', 10, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(214, '65,66', 11, '5-7', NULL, '0:01:00', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(215, '65,66', 12, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(216, '65,66', 1, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(217, '65,66', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(218, '65,66', 3, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(219, '65,66', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(220, '65,66', 5, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(221, '65,66', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(222, '65,66', 7, '8-10', NULL, '0:00:30', NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(223, '65,66', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(224, '67,68', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(225, '67,68', 2, NULL, NULL, NULL, NULL, '0:02:30', 'I', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(226, '69,70', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(227, '71,72', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(228, '71,72', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(229, '71,72', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(230, '71,72', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(231, '71,72', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(232, '71,72', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(233, '71,72', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(234, '71,72', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(235, '71,72', 9, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(236, '71,72', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(237, '73,74', 1, NULL, '2.4km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(238, '73,74', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(239, '73,74', 3, NULL, '2.4km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(240, '73,74', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(241, '73,74', 5, NULL, '2.4km', NULL, NULL, NULL, 'I-5k', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(242, '73,74', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(245, '75,76', 1, NULL, '12-25km', NULL, NULL, NULL, 'M', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(246, '75,76', 2, NULL, NULL, NULL, NULL, NULL, 'R', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(247, '77,78', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-17 00:00:00', '2019-10-17 00:00:00'),
(248, '85,86', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(249, '85,86', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(250, '85,86', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(251, '85,86', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(252, '85,86', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(253, '85,86', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(254, '85,86', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(255, '85,86', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(256, '85,86', 9, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(257, '85,86', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(258, '85,86', 11, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(259, '85,86', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(260, '87,88', 1, NULL, NULL, '0:12:00', NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(261, '87,88', 2, NULL, NULL, '0:03:00', NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(262, '87,88', 3, NULL, NULL, '0:12:00', NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(263, '89,90', 1, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(264, '89,90', 2, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(265, '89,90', 3, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(266, '89,90', 4, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(267, '89,90', 5, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(268, '89,90', 6, NULL, NULL, NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(270, '93,94', 1, NULL, NULL, '0:04:00', NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(271, '93,94', 2, NULL, NULL, NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(272, '95,96', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(273, '95,96', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(274, '95,96', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(275, '95,96', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(276, '95,96', 5, NULL, NULL, '0:10:00', NULL, NULL, 'I-5k', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(277, '95,96', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(278, '97,98', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(279, '97,98', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(280, '97,98', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(281, '97,98', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(282, '97,98', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(283, '97,98', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(284, '97,98', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(285, '97,98', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(286, '97,98', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(287, '97,98', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(288, '97,98', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(289, '97,98', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(290, '97,98', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(291, '97,98', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(292, '99,100', 1, NULL, NULL, '2.5-5km', NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(293, '101,102', 1, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(294, '101,102', 1, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(295, '103,104', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(296, '103,104', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(297, '103,104', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(298, '103,104', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(299, '103,104', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(300, '103,104', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(301, '103,104', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(302, '103,104', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(303, '105,106', 1, NULL, '2.5-5km', NULL, NULL, NULL, 'E', '2019-10-18 00:00:00', '2019-10-18 00:00:00'),
(304, '107', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(305, '108', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(306, '108', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(307, '108', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(308, '108', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(309, '108', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(310, '108', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(311, '108', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(312, '108', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(313, '108', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(314, '108', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(315, '109', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(316, '109', 2, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(317, '109', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(318, '109', 4, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(319, '109', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(320, '109', 6, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(321, '109', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(322, '109', 8, NULL, NULL, NULL, NULL, '0:01:00 - 0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(323, '110', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(324, '110', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(325, '110', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(326, '110', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(327, '110', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(328, '110', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(329, '111', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(330, '112', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(331, '112', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(332, '112', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(333, '112', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(334, '112', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(335, '112', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(336, '112', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(337, '112', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(338, '112', 9, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(339, '112', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(340, '112', 11, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(341, '112', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(342, '112', 13, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(343, '112', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(344, '112', 15, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(345, '112', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(346, '112', 17, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(347, '112', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(348, '112', 19, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(349, '112', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(350, '113', 1, NULL, NULL, '0:30:00-0:40:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(351, '114', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(352, '115', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(353, '116', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(354, '116', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(355, '116', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(356, '116', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(357, '116', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(358, '116', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(359, '116', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(360, '116', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(361, '116', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(362, '116', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(363, '116', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(364, '116', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(365, '116', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(366, '116', 2, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(367, '116', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(368, '116', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(369, '116', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(370, '116', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(371, '116', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(372, '116', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(373, '116', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(374, '116', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(375, '116', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(376, '116', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(377, '116', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(378, '116', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(379, '117', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(380, '117', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(381, '117', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(382, '117', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(383, '117', 5, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(384, '117', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(385, '118', 1, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(386, '118', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(387, '118', 3, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(388, '118', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(389, '118', 5, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(390, '118', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(391, '118', 7, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(392, '118', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(393, '118', 9, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(394, '118', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(395, '119', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(396, '120', 1, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(397, '120', 2, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(398, '120', 3, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(399, '120', 4, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(400, '120', 5, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(401, '120', 6, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(402, '120', 7, '4-6', NULL, '0:03:00-0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(403, '120', 8, '0', NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(404, '121', 1, NULL, NULL, '0:40:00-0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(405, '122', 1, NULL, NULL, '0:60:00', NULL, NULL, 'M', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(406, '123', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(407, '124', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(408, '124', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(409, '124', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(410, '124', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(411, '124', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(412, '124', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(413, '124', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(414, '124', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(415, '124', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(416, '124', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(417, '124', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(418, '124', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(419, '124', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(420, '124', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(421, '124', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(422, '124', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(423, '124', 17, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(424, '124', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(425, '124', 19, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(426, '124', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(427, '125', 1, NULL, '4.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(428, '125', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(429, '125', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(430, '125', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(431, '125', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(432, '126', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(433, '126', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(434, '126', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(435, '126', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(436, '126', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(437, '126', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(438, '127', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(439, '128', 1, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(440, '128', 2, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(441, '128', 3, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(442, '128', 4, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(443, '128', 5, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(444, '128', 6, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(445, '128', 7, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(446, '128', 8, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(447, '128', 9, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(448, '128', 10, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(449, '128', 11, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(450, '128', 12, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(451, '128', 13, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(452, '128', 14, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(453, '128', 15, '6-8', NULL, '0:00:30-0:01:00', NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(454, '128', 16, '0', NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(455, '129', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(456, '129', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(457, '129', 3, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(458, '129', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(459, '129', 5, NULL, NULL, NULL, NULL, '0:01:30-0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(460, '129', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(461, '129', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(462, '129', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(463, '129', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(464, '129', 5, NULL, NULL, NULL, NULL, '0:01:30-0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(465, '129', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(466, '129', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(467, '129', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(468, '129', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(469, '129', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(470, '129', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(471, '129', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(472, '129', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(473, '130', 1, NULL, NULL, '0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(474, '131', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(475, '132', 1, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(476, '132', 2, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(477, '132', 3, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(478, '132', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(479, '132', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(480, '132', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(481, '132', 7, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(482, '132', 8, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(483, '133', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(484, '133', 2, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(485, '133', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(486, '133', 4, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(487, '133', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(488, '133', 6, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(489, '133', 7, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(490, '133', 8, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(491, '133', 9, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(492, '133', 10, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(493, '133', 11, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(494, '133', 12, NULL, NULL, NULL, NULL, '0:03:00-0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(495, '134', 1, NULL, NULL, '0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(496, '135', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(497, '136', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(498, '136', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(499, '136', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(500, '136', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(501, '136', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(502, '136', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(503, '136', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(504, '136', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(505, '136', 9, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(506, '136', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(507, '136', 11, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(508, '136', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(509, '136', 13, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(510, '136', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(511, '136', 15, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(512, '136', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(513, '136', 17, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(514, '136', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(515, '136', 19, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(516, '136', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(517, '137', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(518, '137', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00');
INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(519, '137', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(520, '137', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(521, '137', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(522, '137', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(523, '138', 1, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(524, '138', 2, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(525, '138', 3, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(526, '138', 4, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(527, '138', 5, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(528, '138', 6, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(529, '138', 7, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(530, '138', 8, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(531, '138', 9, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(532, '138', 10, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(533, '138', 11, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(534, '138', 12, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(535, '138', 13, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(536, '138', 14, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(537, '138', 15, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(538, '138', 16, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(539, '138', 17, '5-10', NULL, '0:03:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(540, '138', 18, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(541, '138', 19, '5-10', NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(542, '138', 20, '0', NULL, NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(543, '139', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(544, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(545, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(546, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(547, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(548, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(549, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(550, '140', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(551, '140', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(552, '141', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(553, '141', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(554, '141', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(555, '141', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(556, '141', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(557, '141', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(558, '141', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(559, '141', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(560, '141', 1, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(561, '141', 2, NULL, '1km', NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(562, '141', 3, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(563, '141', 4, NULL, '1km', NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(564, '141', 5, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(565, '141', 6, NULL, '1km', NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(566, '141', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(567, '141', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(568, '141', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(569, '141', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(570, '142', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(571, '142', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(572, '142', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(573, '142', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(574, '142', 5, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(575, '142', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(576, '142', 7, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(577, '142', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(578, '143', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(579, '144', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(580, '144', 2, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(581, '144', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(582, '144', 4, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(583, '144', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(584, '144', 6, NULL, '0.8km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(585, '144', 1, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(586, '144', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(587, '144', 3, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(588, '144', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(589, '144', 5, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(590, '144', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(591, '145', 1, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(592, '145', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(593, '145', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(594, '145', 4, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(595, '145', 5, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(596, '145', 6, NULL, NULL, NULL, NULL, '0:06:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(597, '145', 7, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(598, '145', 8, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(599, '145', 9, NULL, NULL, '0:05:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(600, '146', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(601, '146', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(602, '146', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(603, '146', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(604, '146', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(605, '146', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(606, '146', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(607, '146', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(608, '146', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(609, '146', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(610, '146', 3, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(611, '146', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(612, '147', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(613, '148', 1, NULL, '2-2.5km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(614, '148', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(615, '148', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(616, '148', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(617, '148', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(618, '148', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(619, '148', 5, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(620, '148', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(621, '148', 7, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(622, '148', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(623, '148', 1, NULL, NULL, NULL, NULL, '0:05:00', 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(624, '149', 1, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(625, '149', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(626, '149', 3, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(627, '149', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(628, '149', 5, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(629, '149', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(630, '149', 7, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(631, '149', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(632, '149', 9, NULL, '1.6km', NULL, NULL, NULL, 'I-5k', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(633, '149', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(634, '150', 1, NULL, '12-38km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(635, '151', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(636, '152', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(637, '152', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(638, '152', 3, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(639, '152', 4, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(640, '152', 1, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(641, '152', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(642, '152', 3, NULL, NULL, '0:20:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(643, '152', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(644, '153', 1, NULL, '4.8km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(645, '153', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(646, '153', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(647, '153', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(648, '153', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(649, '153', 6, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(650, '154', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(651, '154', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(652, '154', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(653, '154', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(654, '154', 5, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(655, '154', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(656, '154', 7, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(657, '154', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(658, '154', 9, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(659, '154', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(660, '154', 11, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(661, '154', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(662, '154', 13, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(663, '154', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(664, '154', 15, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(665, '154', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(666, '155', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(667, '156', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(668, '156', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(669, '156', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(670, '156', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(671, '156', 1, NULL, '3.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(672, '156', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(673, '156', 3, NULL, '3.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(674, '156', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(675, '156', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(676, '156', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(677, '156', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(678, '156', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(679, '157', 1, NULL, NULL, '0:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(680, '158', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(681, '158', 2, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(682, '158', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(683, '158', 4, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(684, '158', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(685, '158', 6, NULL, NULL, '0:05:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(686, '159', 2, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(687, '160', 1, NULL, '3-4km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(688, '160', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(689, '160', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(690, '160', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(691, '160', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(692, '160', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(693, '160', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(694, '160', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(695, '160', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(696, '161', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(697, '161', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(698, '161', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(699, '161', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(700, '161', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(701, '161', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(702, '161', 3, NULL, '1.5km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(703, '162', 1, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(704, '162', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(705, '162', 3, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(706, '162', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(707, '162', 5, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(708, '162', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(709, '162', 7, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(710, '162', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(711, '162', 9, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(712, '162', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(713, '163', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(714, '164', 1, NULL, NULL, '0:40:00-00:45:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(715, '165', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(716, '166', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(717, '166', 2, NULL, NULL, '0:02:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(718, '166', 3, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(719, '166', 4, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(720, '166', 5, NULL, NULL, '0:00:30', NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(721, '166', 6, NULL, NULL, '0:05:00', NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(722, '167', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(723, '168', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(724, '168', 2, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(725, '168', 3, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(726, '168', 4, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(727, '168', 5, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(728, '168', 6, NULL, NULL, NULL, NULL, '0:02:00-0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(729, '169', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(730, '169', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(731, '169', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(732, '169', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(733, '169', 1, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(734, '169', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(735, '169', 3, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(736, '169', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(737, '169', 5, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(738, '169', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(739, '169', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(740, '169', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(741, '169', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(742, '169', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(743, '170', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(744, '170', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(745, '170', 1, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(746, '170', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(747, '170', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(748, '170', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(749, '170', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(750, '170', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(751, '170', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(752, '170', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(753, '171', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(754, '172', 1, NULL, NULL, '0:30:00', NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(755, '173', 1, NULL, '0.2km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(756, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(757, '173', 3, NULL, '0.2km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(758, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(759, '173', 1, NULL, '0.4km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(760, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(761, '173', 3, NULL, '0.4km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(762, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(763, '173', 1, NULL, '0.8km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(764, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(765, '173', 3, NULL, '0.8km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(766, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(767, '173', 1, NULL, '0.4km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(768, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(769, '173', 3, NULL, '0.4km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(770, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(771, '173', 1, NULL, '0.2km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(772, '173', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(773, '173', 3, NULL, '0.2km', NULL, NULL, NULL, 'I-5K', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(774, '173', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(775, '174', 1, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(776, '174', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(777, '174', 3, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(778, '174', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(779, '174', 5, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(780, '174', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(781, '174', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(782, '174', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(783, '174', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(784, '174', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(785, '174', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(786, '174', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(787, '174', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(788, '174', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(789, '174', 1, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(790, '174', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(791, '174', 3, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(792, '174', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(793, '174', 5, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(794, '174', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(795, '174', 7, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(796, '174', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(797, '174', 9, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(798, '174', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(799, '174', 11, NULL, '0.1km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(800, '174', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(801, '175', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(802, '176', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(803, '176', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(804, '176', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(805, '176', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(806, '176', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(807, '176', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(808, '176', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(809, '177', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 00:00:00', '2019-11-04 00:00:00'),
(810, '178', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(811, '179', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(812, '180', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(813, '181', 1, '0', '5-10km', NULL, NULL, NULL, 'E', '2019-11-04 05:52:03', '2019-11-04 05:52:03'),
(814, '182', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(815, '183', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(816, '183', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(817, '183', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(818, '183', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(819, '183', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(820, '183', 6, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(821, '185', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(822, '185', 2, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(823, '185', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(824, '185', 4, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(825, '186', 1, NULL, '5-12km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(826, '186', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(827, '188', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(828, '188', 2, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(829, '188', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(830, '188', 4, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(831, '188', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(832, '188', 6, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(833, '189', 1, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(834, '189', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(835, '189', 3, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(836, '189', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(837, '189', 5, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(838, '189', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(839, '189', 7, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(840, '189', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(841, '189', 9, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(842, '189', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(843, '189', 11, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(844, '189', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(845, '189', 13, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(846, '189', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(847, '189', 15, NULL, '0.2km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(848, '189', 16, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(849, '190', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(850, '191', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(851, '192', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(852, '192', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(853, '192', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(854, '192', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(855, '193', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(856, '193', 2, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(857, '193', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(858, '193', 4, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(859, '193', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(860, '193', 6, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(861, '193', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(862, '193', 8, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(863, '193', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(864, '193', 10, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(865, '193', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(866, '193', 12, NULL, '0.1km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(867, '193', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(868, '193', 2, NULL, '0.2km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(869, '193', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(870, '193', 4, NULL, '0.2km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(871, '193', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(872, '193', 6, NULL, '0.2km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(873, '194', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(874, '195', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(875, '196', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(876, '196', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(877, '196', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(878, '196', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(879, '196', 5, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(880, '196', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(881, '197', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(882, '197', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(883, '197', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(884, '197', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(885, '197', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(886, '197', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(887, '197', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(888, '197', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(889, '197', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(890, '197', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(891, '197', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(892, '197', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(893, '197', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(894, '197', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(895, '197', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(896, '197', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(897, '198', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(898, '199', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(899, '200', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(900, '200', 2, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(901, '200', 3, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(902, '200', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(903, '200', 5, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(904, '200', 6, NULL, NULL, NULL, NULL, '0:01:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(905, '200', 7, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(906, '200', 8, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(907, '200', 9, NULL, NULL, '0:01:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(908, '200', 10, NULL, NULL, NULL, NULL, '0:00:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(909, '200', 11, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(910, '200', 12, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(911, '200', 13, NULL, NULL, '0:03:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(912, '200', 14, NULL, NULL, NULL, NULL, '0:01:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(913, '200', 15, NULL, NULL, '0:04:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(914, '200', 16, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(915, '200', 17, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(916, '200', 18, NULL, NULL, NULL, NULL, '0:02:30', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(917, '201', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(918, '201', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(919, '201', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(920, '201', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(921, '201', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(922, '201', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(923, '201', 3, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(924, '201', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(925, '201', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(926, '201', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(927, '201', 3, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(928, '201', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(929, '201', 1, NULL, '0.4km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(930, '201', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(931, '201', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(932, '202', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(933, '203', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(950, '204', 1, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(951, '204', 2, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(952, '204', 3, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(953, '204', 4, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(954, '204', 5, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(955, '204', 6, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(956, '204', 7, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(957, '204', 8, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(958, '204', 9, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(959, '204', 10, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(960, '204', 11, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(961, '204', 12, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(962, '204', 13, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(963, '204', 14, NULL, NULL, '0:04:30', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(964, '204', 15, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(965, '205', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(966, '205', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(967, '205', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(968, '205', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(969, '205', 5, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(970, '205', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(971, '205', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(972, '205', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(973, '205', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(974, '205', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(975, '205', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(976, '205', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(977, '205', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(978, '205', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(979, '205', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(980, '205', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(981, '205', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(982, '205', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(983, '205', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(984, '205', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(985, '206', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(986, '207', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(987, '208', 1, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I-5K', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(988, '208', 2, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(989, '208', 3, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I-5K', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(990, '208', 4, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(991, '208', 5, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I-5K', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(992, '208', 6, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(993, '208', 7, '2-4', NULL, '0:04:00-0:05:00', NULL, NULL, 'I-5K', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(994, '208', 8, NULL, NULL, NULL, NULL, '0:04:00-0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(995, '209', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(996, '209', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(997, '209', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(998, '209', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(999, '209', 5, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1000, '209', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1001, '210', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1002, '211', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1003, '212', 1, NULL, '1km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1004, '212', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1005, '212', 3, NULL, '1km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1006, '212', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1007, '212', 5, NULL, '1km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1008, '212', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1009, '212', 7, NULL, '1km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1010, '212', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1011, '212', 9, NULL, '1km', NULL, NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1012, '212', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1013, '212', 1, NULL, '0:05:00', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1014, '212', 1, NULL, '1km', NULL, NULL, NULL, 'I-5K', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1015, '212', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1016, '212', 3, NULL, '1km', NULL, NULL, NULL, 'I-5K', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1017, '212', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1018, '212', 5, NULL, '1km', NULL, NULL, NULL, 'I-5K', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1019, '212', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1020, '213', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1021, '213', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1022, '213', 3, NULL, NULL, '0:10:00', '0:03:00', NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1023, '213', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1024, '213', 5, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1025, '213', 6, NULL, NULL, NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1026, '214', 1, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1027, '214', 2, NULL, NULL, '0:01:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1028, '214', 3, NULL, NULL, '0:01:30', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1029, '214', 4, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1030, '214', 5, NULL, NULL, '0:01:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03');
INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(1031, '214', 6, NULL, NULL, '0:01:30', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1032, '214', 7, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1033, '214', 8, NULL, NULL, '0:01:30', NULL, NULL, 'R', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1034, '214', 9, NULL, NULL, '0:01:30', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1035, '215', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1036, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1037, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1038, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1039, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1040, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1041, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1042, '216', 1, '2-4', NULL, '0:05:00-0:06:00', NULL, NULL, 'I-5k', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1043, '216', 2, NULL, NULL, NULL, NULL, '0:05:00-0:06:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1044, '217', 1, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1045, '217', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1046, '217', 3, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1047, '217', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1048, '217', 5, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1049, '217', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1050, '217', 7, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1051, '217', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1052, '217', 9, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1053, '217', 10, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1054, '218', 1, NULL, '12-38', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1055, '219', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1056, '220', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1057, '220', 2, NULL, NULL, NULL, NULL, '0:02:00', 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1058, '220', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1059, '220', 4, NULL, NULL, NULL, NULL, '0:02:00', 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1060, '220', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1061, '220', 6, NULL, NULL, NULL, NULL, '0:02:00', 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1062, '220', 7, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1063, '220', 8, NULL, NULL, NULL, NULL, '0:02:00', 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1064, '220', 9, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1065, '220', 10, NULL, NULL, NULL, NULL, '0:02:00', 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1066, '220', 11, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1067, '220', 12, NULL, NULL, NULL, NULL, '0:02:00', 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1068, '220', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1069, '220', 14, NULL, NULL, NULL, NULL, '0:02:00', 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1070, '221', 1, NULL, NULL, '0:30:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1071, '222', 1, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1072, '222', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1073, '222', 3, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1074, '222', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1075, '222', 5, NULL, NULL, '0:02:00', NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1076, '222', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1077, '223', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1078, '224', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1079, '224', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1080, '224', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1081, '224', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1082, '224', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1083, '224', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1084, '224', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1085, '224', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1086, '224', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1087, '224', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1088, '224', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1089, '224', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1090, '224', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1091, '224', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1092, '224', 15, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1093, '224', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1094, '224', 17, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1095, '224', 18, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1096, '224', 19, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1097, '224', 20, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1098, '224', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1099, '224', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1100, '224', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1101, '224', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1102, '224', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1103, '224', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1104, '224', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1105, '224', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1106, '224', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1107, '224', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1108, '224', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1109, '224', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1110, '224', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1111, '224', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1112, '224', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1113, '224', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1114, '224', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1115, '224', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1116, '224', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1117, '224', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1118, '224', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1119, '224', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1120, '224', 15, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1121, '224', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1122, '224', 17, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1123, '224', 18, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1124, '224', 19, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1125, '224', 20, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1126, '225', 1, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1127, '225', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1128, '225', 3, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1129, '225', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1130, '225', 5, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1131, '225', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1132, '225', 7, NULL, NULL, '0:06:00', NULL, NULL, 'T', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1133, '225', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1134, '226', 1, NULL, '12-38km', NULL, NULL, NULL, 'M', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1135, '227', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-11 05:52:03', '2019-11-11 05:52:03'),
(1136, '228', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1137, '228', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1138, '228', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1139, '228', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1140, '228', 5, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1141, '228', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1142, '228', 7, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1143, '228', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1144, '228', 9, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1145, '228', 10, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1146, '228', 11, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1147, '228', 12, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1148, '229', 1, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1149, '229', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1150, '229', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1151, '229', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1152, '229', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1153, '229', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1154, '230', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1155, '230', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1156, '230', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1157, '230', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1158, '230', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1159, '230', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1160, '230', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1161, '230', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1162, '230', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1163, '230', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1164, '230', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1165, '230', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1166, '230', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1167, '230', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1168, '230', 14, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1169, '230', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1170, '231', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1171, '232', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1172, '232', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1173, '232', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1174, '232', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1175, '232', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1176, '232', 5, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1177, '232', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1178, '232', 7, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1179, '232', 8, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1180, '232', 9, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1181, '232', 10, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1182, '232', 11, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1183, '232', 12, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1184, '233', 1, NULL, '21-24km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1185, '234', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1186, '234', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1187, '234', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1188, '234', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1189, '234', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1190, '234', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1191, '234', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1192, '234', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1193, '234', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1194, '234', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1195, '234', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1196, '234', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1197, '234', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1198, '234', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1199, '234', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1200, '234', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1201, '234', 1, NULL, '4.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1202, '234', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1203, '234', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1204, '234', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1205, '234', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1206, '234', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1207, '234', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1208, '234', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1209, '234', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1210, '234', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1211, '234', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1212, '234', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1213, '234', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1214, '234', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1215, '234', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1216, '234', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1217, '234', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1218, '235', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1219, '236', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1220, '236', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1221, '236', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1222, '236', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1223, '236', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1224, '236', 5, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1225, '236', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1226, '236', 7, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1227, '236', 8, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1228, '236', 9, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1229, '236', 10, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1230, '236', 11, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1231, '236', 12, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1232, '236', 13, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1233, '236', 14, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1234, '236', 15, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1235, '236', 16, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1236, '236', 1, NULL, '0.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1237, '237', 1, NULL, NULL, '0:20:00-0:25:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1238, '237', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1239, '237', 2, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1240, '237', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1241, '237', 4, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1242, '237', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1243, '237', 6, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1244, '237', 7, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1245, '237', 8, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1246, '237', 9, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1247, '237', 10, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1248, '237', 11, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1249, '237', 12, NULL, NULL, NULL, NULL, '0:04:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1250, '237', 1, NULL, NULL, '0:20:00-0:25:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1251, '238', 1, NULL, '4.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1252, '238', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1253, '238', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1254, '238', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1255, '238', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1256, '238', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1257, '238', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1258, '238', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1259, '238', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1260, '238', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1261, '238', 10, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1262, '238', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1263, '238', 12, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1264, '238', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1265, '238', 14, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1266, '238', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1267, '238', 16, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1268, '238', 1, NULL, '4.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1269, '239', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1270, '240', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1271, '240', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1272, '240', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1273, '240', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1274, '240', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1275, '240', 5, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1276, '240', 6, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1277, '240', 7, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1278, '240', 8, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1279, '240', 9, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1280, '240', 10, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1281, '240', 11, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1282, '240', 12, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1283, '240', 13, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1284, '240', 14, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1285, '240', 15, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1286, '240', 16, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1287, '240', 1, NULL, '0.8km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1288, '241', 1, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1289, '241', 2, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1290, '241', 3, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1291, '241', 4, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1292, '241', 5, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1293, '241', 6, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1294, '241', 7, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1295, '241', 8, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1296, '241', 9, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1297, '241', 10, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1298, '241', 11, '6-8', NULL, '0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1299, '241', 12, '0', NULL, NULL, NULL, '0:01:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1300, '242', 1, NULL, NULL, '0:60:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1301, '243', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1302, '244', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1303, '244', 2, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1304, '244', 3, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1305, '244', 4, NULL, NULL, '0:15:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1306, '244', 1, NULL, NULL, '0:05:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1307, '244', 2, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1308, '244', 3, NULL, NULL, '0:05:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1309, '244', 4, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1310, '245', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1311, '245', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1312, '245', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1313, '245', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1314, '245', 5, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1315, '245', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1316, '245', 7, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1317, '245', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1318, '245', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1319, '245', 2, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1320, '245', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1321, '245', 4, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1322, '245', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1323, '245', 6, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1324, '245', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1325, '245', 8, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1326, '245', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1327, '245', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1328, '245', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1329, '245', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1330, '245', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1331, '245', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1332, '245', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1333, '245', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1334, '245', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1335, '245', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1336, '245', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1337, '245', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1338, '245', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1339, '245', 14, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1340, '245', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1341, '245', 16, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1342, '246', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1343, '247', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1344, '247', 2, NULL, '6.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1345, '247', 3, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1346, '247', 4, NULL, '3.2km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1347, '248', 1, NULL, NULL, '0:20:00-0:30:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1348, '248', 1, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1349, '248', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1350, '248', 3, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1351, '248', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1352, '249', 1, NULL, '8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1353, '250', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1354, '251', 1, NULL, NULL, '0:45:00-0:60:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1355, '251', 1, NULL, NULL, '0:00:20-0:00:30', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1356, '252', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1357, '252', 1, NULL, '0.8-1.2km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1358, '252', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1359, '252', 3, NULL, '0.8-1.2km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1360, '252', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1361, '252', 5, NULL, '0.8-1.2km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1362, '252', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1363, '253', 1, NULL, '5-10km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1364, '254', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1365, '255', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1366, '255', 1, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1367, '255', 2, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1368, '255', 3, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1369, '255', 4, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1370, '255', 5, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1371, '255', 6, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1372, '255', 7, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1373, '255', 8, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1374, '255', 9, NULL, NULL, '0:02:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1375, '255', 10, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1376, '255', 1, NULL, NULL, '0:15:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1377, '256', 1, NULL, '9.5-11km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1378, '257', 1, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1379, '257', 2, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1380, '257', 3, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1381, '257', 4, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1382, '257', 5, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1383, '257', 6, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1384, '257', 7, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1385, '257', 8, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1386, '257', 9, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1387, '257', 10, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1388, '257', 11, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1389, '257', 12, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1390, '257', 13, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1391, '257', 14, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1392, '257', 15, '5-6', NULL, '0:03:00', NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1393, '257', 16, NULL, NULL, '0:01:30', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1394, '258', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1395, '259', 1, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1396, '259', 2, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1397, '259', 3, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1398, '259', 4, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1399, '259', 5, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1400, '259', 6, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1401, '259', 7, NULL, NULL, '0:10:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1402, '259', 8, NULL, NULL, '0:03:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1403, '260', 1, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1404, '260', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1405, '260', 3, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1406, '260', 4, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1407, '260', 5, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1408, '260', 6, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1409, '260', 7, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1410, '260', 8, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1411, '260', 9, NULL, '1km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1412, '260', 10, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1413, '261', 1, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1414, '261', 2, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1415, '261', 3, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1416, '261', 4, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1417, '261', 5, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1418, '261', 6, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1419, '261', 7, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1420, '261', 8, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1421, '261', 9, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1422, '261', 10, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1423, '261', 11, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1424, '261', 12, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1425, '262', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1426, '263', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1427, '263', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1428, '263', 2, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1429, '263', 3, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1430, '263', 4, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1431, '263', 5, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1432, '263', 6, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1433, '263', 7, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1434, '263', 8, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1435, '263', 9, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1436, '263', 10, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1437, '263', 11, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1438, '263', 12, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1439, '263', 13, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1440, '263', 14, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1441, '263', 15, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1442, '263', 16, NULL, NULL, NULL, NULL, '0:03:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1443, '263', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1444, '264', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1445, '264', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1446, '264', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1447, '264', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1448, '264', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1449, '264', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1452, '264', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1453, '264', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1454, '264', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1455, '264', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1456, '265', 1, NULL, NULL, '0:60:00', NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1457, '266', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1458, '267', 1, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1459, '267', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1460, '267', 3, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1461, '267', 4, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1462, '267', 5, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1463, '267', 6, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1464, '267', 7, NULL, '0.8km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1465, '267', 8, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1466, '267', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1467, '267', 2, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1468, '267', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1469, '267', 4, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1470, '267', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1471, '267', 6, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1472, '267', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1473, '267', 8, NULL, '0.4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1474, '268', 1, NULL, NULL, '0:30:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1475, '269', 1, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1476, '269', 2, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1477, '269', 3, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1478, '269', 4, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1479, '269', 5, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1480, '269', 6, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1481, '269', 7, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1482, '269', 8, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1483, '269', 9, '6-8', NULL, '0:01:00', NULL, NULL, 'R', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1484, '269', 10, NULL, NULL, NULL, NULL, '0:02:00-0:02:30', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1485, '270', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1486, '271', 1, NULL, '2.5-4km', NULL, NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1487, '271', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1488, '271', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1489, '271', 1, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1490, '271', 2, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1491, '271', 3, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1492, '271', 4, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1493, '271', 5, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1494, '271', 6, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1495, '271', 7, NULL, '1.6km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1496, '271', 8, NULL, NULL, NULL, NULL, '0:01:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1497, '271', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1498, '271', 2, NULL, NULL, NULL, NULL, '0:10:00', 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1499, '272', 1, NULL, NULL, '0:15:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1500, '272', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1501, '272', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1502, '272', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1503, '272', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1504, '272', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1505, '272', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1506, '272', 7, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1507, '272', 8, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1508, '272', 9, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1509, '272', 10, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1510, '272', 11, NULL, NULL, '0:05:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1511, '272', 12, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1512, '272', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1513, '272', 2, NULL, NULL, '0:10:00', NULL, NULL, 'I-5k', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1514, '272', 1, NULL, NULL, '0:10:00-0:15:00', NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1515, '273', 1, NULL, NULL, '0:90:00', NULL, NULL, 'M', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1516, '274', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-13 05:52:03', '2019-11-13 05:52:03'),
(1517, '275', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1518, '275', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1519, '275', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1520, '275', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03');
INSERT INTO `workout_wise_laps` (`id`, `week_wise_workout_ids`, `lap`, `percent`, `distance`, `duration`, `speed`, `rest`, `VDOT`, `created_at`, `updated_at`) VALUES
(1521, '275', 4, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1522, '275', 5, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1523, '275', 6, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1524, '275', 7, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1525, '275', 8, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1526, '275', 1, NULL, '3.2km', NULL, NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1527, '275', 1, NULL, '11km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1528, '275', 2, NULL, '0.5km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1529, '275', 3, NULL, '1km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1530, '275', 4, NULL, '0.5km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1531, '276', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1532, '276', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1533, '276', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1534, '276', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1535, '276', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1536, '276', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1537, '276', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1538, '276', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1539, '276', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1540, '276', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1541, '276', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1542, '276', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1543, '276', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1544, '276', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1545, '276', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1546, '276', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1547, '276', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1548, '276', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1549, '276', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1550, '276', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1551, '276', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1552, '276', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1553, '276', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1554, '276', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1555, '276', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1556, '276', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1557, '276', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1558, '276', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1559, '276', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1560, '276', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1561, '276', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1562, '276', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1563, '277', 1, NULL, NULL, '0:90:00-01:45:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1564, '278', 1, NULL, '6-12', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1565, '279', 1, NULL, NULL, '0:15:00-0:25:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1566, '279', 1, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1567, '279', 2, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1568, '279', 3, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1569, '279', 4, NULL, NULL, NULL, NULL, '0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1570, '279', 1, NULL, NULL, '0:15:00-0:25:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1571, '280', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1572, '280', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1573, '280', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1574, '280', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1575, '280', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1576, '280', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1577, '280', 7, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1578, '280', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1579, '280', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1580, '280', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1581, '280', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1582, '280', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1583, '280', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1584, '280', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1585, '280', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1586, '280', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1587, '280', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1588, '280', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1589, '280', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1590, '280', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1591, '280', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1592, '280', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1593, '280', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1594, '280', 16, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1595, '280', 17, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1596, '280', 18, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1597, '280', 19, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1598, '280', 20, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1599, '280', 21, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1600, '280', 22, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1601, '280', 23, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1602, '280', 24, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1603, '280', 25, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1604, '280', 26, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1605, '280', 27, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1606, '280', 28, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1607, '280', 29, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1608, '280', 30, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1609, '280', 31, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1610, '280', 32, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1611, '280', 33, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1612, '280', 34, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1613, '280', 35, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1614, '280', 36, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1615, '280', 37, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1616, '280', 39, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1617, '280', 40, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1618, '281', 31, NULL, NULL, '0:15:00-0:25:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1619, '281', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1620, '281', 2, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1621, '281', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1622, '282', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1623, '283', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1624, '283', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1625, '283', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1626, '283', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1627, '283', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1628, '283', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1629, '283', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1630, '283', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1631, '283', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1632, '283', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1633, '283', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1634, '283', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1635, '283', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1636, '283', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1637, '283', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1638, '283', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1639, '283', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1640, '283', 17, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1641, '283', 18, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1642, '283', 19, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1643, '283', 20, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1644, '283', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1645, '284', 1, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1646, '284', 1, NULL, NULL, '0:30:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1647, '284', 2, NULL, NULL, NULL, NULL, '0:06:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1648, '284', 3, NULL, NULL, '0:30:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1649, '284', 4, NULL, NULL, NULL, NULL, '0:06:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1650, '284', 1, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1651, '285', 1, NULL, NULL, '0:30:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1652, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1653, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1654, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1655, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1656, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1657, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1658, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1659, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1660, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1661, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1662, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1663, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1664, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1665, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1666, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1667, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1668, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1669, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1670, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1671, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1672, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1673, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1674, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1675, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1676, '285', 1, NULL, NULL, '0:02:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1677, '285', 2, NULL, NULL, '0:01:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1678, '285', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1679, '285', 4, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1680, '285', 5, NULL, NULL, '0:00:30', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1681, '285', 6, NULL, NULL, '0:00:30', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1682, '285', 1, NULL, NULL, '0:30:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1683, '286', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1684, '287', 1, NULL, '1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1685, '287', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1686, '287', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1687, '287', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1688, '287', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1689, '287', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1690, '287', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1691, '287', 1, NULL, '3.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1692, '287', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1693, '287', 1, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1694, '287', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1695, '287', 3, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1696, '287', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1697, '287', 5, NULL, '1.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1698, '287', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1699, '287', 1, NULL, '0.8-1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1700, '288', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1701, '288', 1, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1702, '288', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1703, '288', 3, NULL, NULL, '0:20:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1704, '288', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1705, '288', 1, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1706, '288', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1707, '288', 3, NULL, NULL, '0:10:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1708, '288', 4, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1709, '289', 1, NULL, NULL, '2:00:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1710, '290', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1711, '291', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1712, '291', 1, NULL, NULL, '0:35:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1713, '291', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1714, '291', 3, NULL, NULL, '0:35:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1715, '291', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1716, '291', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1717, '292', 1, NULL, '3.2km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1718, '292', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1719, '292', 2, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1720, '292', 3, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1721, '292', 4, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1722, '292', 1, NULL, '1.6km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1723, '293', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1724, '294', 1, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1725, '294', 2, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1726, '294', 3, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1727, '294', 4, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1728, '294', 5, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1729, '294', 6, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1730, '294', 7, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1731, '294', 8, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1732, '294', 9, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1733, '294', 10, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1734, '294', 11, '6-8', NULL, '0:04:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1735, '294', 12, NULL, NULL, NULL, NULL, '0:02:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1736, '295', 1, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1737, '295', 2, NULL, NULL, '0:40:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1738, '295', 3, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1739, '295', 4, NULL, NULL, '0:15:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1740, '295', 4, NULL, NULL, '0:15:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1741, '296', 1, NULL, NULL, '2:00:00-2:30:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1742, '297', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1743, '298', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1744, '298', 1, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1745, '298', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1746, '298', 3, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1747, '298', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1748, '298', 5, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1749, '298', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1750, '298', 7, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1751, '298', 7, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1752, '298', 9, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1753, '298', 10, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1754, '298', 11, NULL, NULL, '0:06:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1755, '298', 12, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1756, '298', 1, NULL, NULL, '0:10:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1757, '299', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1758, '299', 1, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1759, '299', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1760, '299', 3, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1761, '299', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1762, '299', 5, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1763, '299', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1764, '299', 7, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1765, '299', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1766, '299', 1, NULL, NULL, '0:10:00-0:20:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1767, '300', 1, NULL, '29-30km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1768, '301', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1770, '302', 1, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1771, '302', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1772, '302', 3, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1773, '302', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1774, '302', 5, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1775, '302', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1776, '302', 7, NULL, '0.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1777, '302', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1778, '302', 1, NULL, NULL, NULL, NULL, '0:04:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1779, '302', 1, NULL, NULL, '0.8km', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1780, '302', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1781, '302', 3, NULL, NULL, '0.8km', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1782, '302', 4, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1783, '302', 5, NULL, NULL, '0.8km', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1784, '302', 6, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1785, '302', 7, NULL, NULL, '0.8km', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1786, '302', 8, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1787, '303', 1, NULL, '29-30km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1788, '304', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1789, '304', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1790, '304', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1791, '304', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1792, '304', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1793, '304', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1794, '304', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1795, '304', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1796, '304', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1797, '304', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1798, '304', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1799, '304', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1800, '304', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1801, '304', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1802, '304', 15, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1803, '304', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1804, '304', 17, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1805, '304', 18, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1806, '304', 19, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1807, '304', 20, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1808, '304', 1, NULL, '4.8km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1809, '304', 2, NULL, NULL, NULL, NULL, '0:01:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1810, '304', 3, NULL, '4.8km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1811, '305', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1812, '306', 1, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1813, '306', 2, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1814, '306', 3, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1815, '306', 4, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1816, '306', 5, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1817, '306', 6, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1818, '306', 7, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1819, '306', 8, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1820, '306', 9, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1821, '306', 10, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1822, '306', 11, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1823, '306', 12, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1824, '306', 13, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1825, '306', 14, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1826, '306', 15, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1827, '306', 16, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1828, '306', 17, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1829, '306', 18, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1830, '306', 19, NULL, '0.4km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1831, '306', 20, NULL, '0.2km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1832, '306', 1, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1833, '306', 1, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1834, '306', 2, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1835, '306', 3, NULL, '0.8km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1836, '306', 4, NULL, NULL, NULL, NULL, '0:02:30', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1837, '307', 1, NULL, '24km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1838, '308', 1, NULL, '6.4km', NULL, NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1839, '308', 2, NULL, NULL, NULL, NULL, '0:02:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1840, '308', 3, NULL, '6.4km', NULL, NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1841, '309', 1, NULL, '6 - 12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1842, '310', 1, NULL, '32-35km', NULL, NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1843, '311', 1, NULL, '1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1844, '311', 1, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1845, '311', 2, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1846, '311', 3, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1847, '311', 4, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1848, '311', 5, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1849, '311', 6, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1850, '311', 7, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1851, '311', 8, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1852, '311', 9, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1853, '311', 10, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1854, '311', 11, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1855, '311', 12, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1856, '311', 13, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1857, '311', 14, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1858, '311', 15, NULL, '0.2km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1859, '311', 16, NULL, '0.1km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1860, '311', 1, NULL, '1.6km', NULL, NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1861, '311', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1862, '311', 1, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1863, '311', 2, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1864, '311', 3, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1865, '311', 4, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1866, '311', 5, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1867, '311', 6, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1868, '311', 7, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1869, '311', 8, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1870, '311', 9, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1871, '311', 10, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1872, '311', 11, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1873, '311', 12, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1874, '311', 13, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1875, '311', 14, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1876, '311', 15, NULL, '0.2km', NULL, NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1877, '311', 16, NULL, '0.4km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1878, '311', 1, NULL, '0.8km-1.6km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1879, '312', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1880, '313', 1, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1881, '313', 2, NULL, NULL, NULL, NULL, '0:03:00', 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1882, '313', 3, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1883, '313', 4, NULL, NULL, NULL, NULL, '0:03:00', 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1884, '313', 5, NULL, NULL, '0:12:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1885, '313', 6, NULL, NULL, NULL, NULL, '0:03:00', 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1886, '314', 1, NULL, NULL, '0:20:00-0:30:00', NULL, NULL, 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1887, '314', 2, NULL, NULL, '2:00:00-2:30:00', NULL, NULL, 'T', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1888, '315', 1, NULL, '6-12km', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1889, '316', 1, NULL, NULL, '0:30:00-0:40:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1890, '316', 1, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1891, '316', 2, NULL, NULL, '0:30:00-0:40:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1892, '316', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1893, '317', 1, NULL, NULL, '0:15:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1894, '317', 2, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1895, '317', 3, NULL, NULL, '0:15:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1896, '317', 4, NULL, NULL, NULL, NULL, '0:05:00', 'M', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1897, '317', 1, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1898, '317', 2, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1899, '317', 3, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1900, '317', 4, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1901, '317', 5, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1902, '317', 6, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1903, '317', 7, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1904, '317', 8, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1905, '317', 9, NULL, NULL, '0:01:00', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1906, '317', 10, NULL, NULL, NULL, NULL, '0:03:00-0:05:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1907, '318', 1, NULL, '6-12', NULL, NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1908, '319', 1, NULL, NULL, '1:00:00-1:15:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1909, '320', 1, NULL, NULL, '0:45:00-0:60:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1910, '320', 1, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1911, '320', 2, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1912, '320', 3, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1913, '320', 4, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1914, '320', 5, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1915, '321', 1, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1916, '321', 2, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1917, '321', 3, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1918, '321', 4, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1919, '321', 5, NULL, NULL, '0:05:00', NULL, NULL, 'I', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1920, '321', 6, NULL, NULL, NULL, NULL, '0:03:00', 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1921, '322', 1, NULL, NULL, '0:35:00-0:45:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1922, '323', 1, NULL, NULL, '0:35:00-0:45:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1923, '323', 1, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1924, '323', 2, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1925, '323', 3, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1926, '323', 4, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1927, '324', 1, NULL, NULL, '0:15:00-0:30:00', NULL, NULL, 'E', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1928, '324', 1, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1929, '324', 2, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1930, '324', 3, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03'),
(1931, '324', 4, NULL, NULL, '0:00:10-0:00:15', NULL, NULL, 'R', '2019-11-19 05:52:03', '2019-11-19 05:52:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_forces`
--
ALTER TABLE `action_forces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `available_times`
--
ALTER TABLE `available_times`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `available_times_code_unique` (`code`);

--
-- Indexes for table `billing_informations`
--
ALTER TABLE `billing_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body_parts`
--
ALTER TABLE `body_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_clients`
--
ALTER TABLE `booked_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancellation_policies`
--
ALTER TABLE `cancellation_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_programs_weeks`
--
ALTER TABLE `common_programs_weeks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_programs_weeks_laps`
--
ALTER TABLE `common_programs_weeks_laps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `common_programs_weeks_laps_common_programs_week_id_foreign` (`common_programs_week_id`);

--
-- Indexes for table `completed_training_logs`
--
ALTER TABLE `completed_training_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completed_training_programs`
--
ALTER TABLE `completed_training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_training_programs`
--
ALTER TABLE `custom_training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_comments`
--
ALTER TABLE `feed_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_likes`
--
ALTER TABLE `feed_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `libraries`
--
ALTER TABLE `libraries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `load_center_events`
--
ALTER TABLE `load_center_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_center_events_user_id_foreign` (`user_id`);

--
-- Indexes for table `load_center_requests`
--
ALTER TABLE `load_center_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `load_center_requests_user_id_foreign` (`user_id`),
  ADD KEY `load_center_requests_country_id_foreign` (`country_id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_conversation`
--
ALTER TABLE `message_conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`from_id`),
  ADD KEY `messages_receiver_id_foreign` (`to_id`),
  ADD KEY `from_id` (`from_id`),
  ADD KEY `to_id` (`to_id`),
  ADD KEY `conversation_id` (`conversation_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_options`
--
ALTER TABLE `payment_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preset_training_programs`
--
ALTER TABLE `preset_training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professional_types`
--
ALTER TABLE `professional_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repetition_maxes`
--
ALTER TABLE `repetition_maxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_workouts`
--
ALTER TABLE `saved_workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_log_id` (`training_log_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_premium`
--
ALTER TABLE `setting_premium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_professional_profiles`
--
ALTER TABLE `setting_professional_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setting_professional_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `setting_race_distances`
--
ALTER TABLE `setting_race_distances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_trainings`
--
ALTER TABLE `setting_trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `targeted_muscles`
--
ALTER TABLE `targeted_muscles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_activity`
--
ALTER TABLE `training_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_frequencies`
--
ALTER TABLE `training_frequencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_goal`
--
ALTER TABLE `training_goal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_intensity`
--
ALTER TABLE `training_intensity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_logs`
--
ALTER TABLE `training_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_programs`
--
ALTER TABLE `training_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_followers_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_relations`
--
ALTER TABLE `users_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_snoozes`
--
ALTER TABLE `users_snoozes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_wise_frequency_masters`
--
ALTER TABLE `week_wise_frequency_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `week_wise_workouts`
--
ALTER TABLE `week_wise_workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `week_wise_workouts_week_wise_frequency_master_id_foreign` (`week_wise_frequency_master_id`);

--
-- Indexes for table `workout_wise_laps`
--
ALTER TABLE `workout_wise_laps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `action_forces`
--
ALTER TABLE `action_forces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `available_times`
--
ALTER TABLE `available_times`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `billing_informations`
--
ALTER TABLE `billing_informations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `body_parts`
--
ALTER TABLE `body_parts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `booked_clients`
--
ALTER TABLE `booked_clients`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `cancellation_policies`
--
ALTER TABLE `cancellation_policies`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `common_programs_weeks`
--
ALTER TABLE `common_programs_weeks`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `common_programs_weeks_laps`
--
ALTER TABLE `common_programs_weeks_laps`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `completed_training_logs`
--
ALTER TABLE `completed_training_logs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `completed_training_programs`
--
ALTER TABLE `completed_training_programs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `custom_training_programs`
--
ALTER TABLE `custom_training_programs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `feed_comments`
--
ALTER TABLE `feed_comments`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `feed_likes`
--
ALTER TABLE `feed_likes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `libraries`
--
ALTER TABLE `libraries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `load_center_events`
--
ALTER TABLE `load_center_events`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `load_center_requests`
--
ALTER TABLE `load_center_requests`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `message_conversation`
--
ALTER TABLE `message_conversation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `payment_options`
--
ALTER TABLE `payment_options`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `preset_training_programs`
--
ALTER TABLE `preset_training_programs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `professional_types`
--
ALTER TABLE `professional_types`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `repetition_maxes`
--
ALTER TABLE `repetition_maxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `saved_workouts`
--
ALTER TABLE `saved_workouts`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting_premium`
--
ALTER TABLE `setting_premium`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `setting_professional_profiles`
--
ALTER TABLE `setting_professional_profiles`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `setting_race_distances`
--
ALTER TABLE `setting_race_distances`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `setting_trainings`
--
ALTER TABLE `setting_trainings`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `targeted_muscles`
--
ALTER TABLE `targeted_muscles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `training_activity`
--
ALTER TABLE `training_activity`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `training_frequencies`
--
ALTER TABLE `training_frequencies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `training_goal`
--
ALTER TABLE `training_goal`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `training_intensity`
--
ALTER TABLE `training_intensity`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `training_logs`
--
ALTER TABLE `training_logs`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `training_programs`
--
ALTER TABLE `training_programs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user_followers`
--
ALTER TABLE `user_followers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `users_relations`
--
ALTER TABLE `users_relations`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_snoozes`
--
ALTER TABLE `users_snoozes`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `week_wise_frequency_masters`
--
ALTER TABLE `week_wise_frequency_masters`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=181;
--
-- AUTO_INCREMENT for table `week_wise_workouts`
--
ALTER TABLE `week_wise_workouts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=325;
--
-- AUTO_INCREMENT for table `workout_wise_laps`
--
ALTER TABLE `workout_wise_laps`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1932;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `load_center_events`
--
ALTER TABLE `load_center_events`
  ADD CONSTRAINT `load_center_events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `load_center_requests`
--
ALTER TABLE `load_center_requests`
  ADD CONSTRAINT `load_center_requests_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `load_center_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `setting_professional_profiles`
--
ALTER TABLE `setting_professional_profiles`
  ADD CONSTRAINT `setting_professional_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_followers`
--
ALTER TABLE `user_followers`
  ADD CONSTRAINT `user_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `week_wise_workouts`
--
ALTER TABLE `week_wise_workouts`
  ADD CONSTRAINT `week_wise_workouts_week_wise_frequency_master_id_foreign` FOREIGN KEY (`week_wise_frequency_master_id`) REFERENCES `week_wise_frequency_masters` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
