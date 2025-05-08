-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 07:16 AM
-- Server version: 11.7.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deenas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE `admin_logs` (
  `log_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_logs`
--

INSERT INTO `admin_logs` (`log_id`, `admin_id`, `action`, `timestamp`, `ip_address`, `user_agent`) VALUES
(1, 1, 'Created a new user', '2025-02-03 15:02:39', '192.168.1.10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'),
(2, 1, 'Updated system settings', '2025-02-03 15:02:39', '192.168.1.15', 'Chrome/91.0.4472.124'),
(3, 2, 'Deleted an inactive account', '2025-02-03 15:02:39', '192.168.1.20', 'Safari/14.0.3'),
(4, 3, 'Reset a user password', '2025-02-03 15:02:39', '192.168.1.30', 'Edge/90.0.818.51'),
(5, 1, 'Logged In', '2025-02-13 01:22:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(6, 1, 'Viewed folders he/she created', '2025-02-13 01:22:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(7, 1, 'Viewed folders he/she created', '2025-02-13 01:22:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(8, 1, 'Viewed folders he/she created', '2025-02-13 01:22:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(9, 1, 'Viewed the files of the folder with code dfgdfgd', '2025-02-13 01:23:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(10, 1, 'Logged out', '2025-02-13 01:24:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(11, 1, 'Logged In', '2025-02-28 06:11:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(12, 1, 'Viewed folders he/she created', '2025-02-28 06:11:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(13, 1, 'Viewed folders he/she created', '2025-02-28 06:12:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(14, 1, 'Viewed folders he/she created', '2025-02-28 06:13:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(15, 1, 'Viewed folders he/she created', '2025-02-28 06:13:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(16, 1, 'Logged In', '2025-03-06 00:49:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(17, 1, 'Viewed folders he/she created', '2025-03-06 00:49:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(18, 1, 'Logged out', '2025-03-06 00:52:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(19, 111111, 'Logged In', '2025-03-07 01:51:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(20, 1, 'Logged In', '2025-03-10 01:50:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(21, 1, 'Viewed folders he/she created', '2025-03-10 01:50:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(22, 1, 'Viewed folders he/she created', '2025-03-10 01:51:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(23, 1, 'Viewed folders he/she created', '2025-03-10 01:51:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(24, 1, 'Logged out', '2025-03-10 03:07:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(25, 1, 'Logged In', '2025-03-14 01:19:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(26, 1, 'Viewed folders he/she created', '2025-03-14 01:19:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(27, 1, 'Viewed folders he/she created', '2025-03-14 01:27:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(28, 1, 'Viewed folders he/she created', '2025-03-14 01:27:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(29, 1, 'Viewed folders he/she created', '2025-03-14 01:27:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(30, 1, 'Viewed folders he/she created', '2025-03-14 01:28:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(31, 1, 'Viewed folders he/she created', '2025-03-14 01:29:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(32, 1, 'Viewed folders he/she created', '2025-03-14 01:29:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(33, 1, 'Viewed folders he/she created', '2025-03-14 01:29:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(34, 1, 'Viewed folders he/she created', '2025-03-14 01:30:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(35, 1, 'Viewed folders he/she created', '2025-03-14 01:30:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(36, 1, 'Viewed folders he/she created', '2025-03-14 01:30:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(37, 1, 'Viewed folders he/she created', '2025-03-14 01:30:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(38, 1, 'Viewed folders he/she created', '2025-03-14 01:30:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(39, 1, 'Viewed folders he/she created', '2025-03-14 01:30:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(40, 1, 'Logged out', '2025-03-14 01:42:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(41, 111111, 'Logged In', '2025-03-14 02:03:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(42, 1, 'Logged In', '2025-03-14 02:52:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(43, 1, 'Viewed folders he/she created', '2025-03-14 02:53:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(44, 1, 'Viewed folders he/she created', '2025-03-14 02:53:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(45, 1, 'Logged In', '2025-03-18 01:11:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(46, 1, 'Viewed folders he/she created', '2025-03-18 01:11:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(47, 1, 'Logged In', '2025-03-25 02:08:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(48, 1, 'Viewed folders he/she created', '2025-03-25 02:27:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(49, 1, 'Logged out', '2025-03-25 02:32:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(50, 1, 'Logged In', '2025-03-25 04:38:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(51, 1, 'Viewed folders he/she created', '2025-03-25 04:38:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(52, 1, 'Logged out', '2025-03-25 06:27:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(53, 1, 'Logged In', '2025-04-02 02:34:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(54, 1, 'Viewed folders he/she created', '2025-04-02 02:34:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(55, 1, 'Logged In', '2025-04-03 02:30:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(56, 1, 'Viewed folders he/she created', '2025-04-03 02:31:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(57, 1, 'Viewed folders he/she created', '2025-04-03 03:09:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(58, 1, 'Logged out', '2025-04-03 03:14:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(59, 1, 'Logged In', '2025-04-03 03:33:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(60, 1, 'Viewed folders he/she created', '2025-04-03 03:34:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(61, 1, 'Viewed folders he/she created', '2025-04-03 03:37:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(62, 1, 'Viewed folders he/she created', '2025-04-03 07:59:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(63, 1, 'Viewed folders he/she created', '2025-04-03 08:03:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(64, 1, 'Viewed folders he/she created', '2025-04-03 08:03:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(65, 1, 'Viewed folders he/she created', '2025-04-03 08:04:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(66, 1, 'Viewed folders he/she created', '2025-04-03 08:04:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(67, 1, 'Viewed folders he/she created', '2025-04-03 08:04:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(68, 1, 'Viewed folders he/she created', '2025-04-03 08:05:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(69, 1, 'Viewed folders he/she created', '2025-04-03 08:06:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(70, 1, 'Viewed folders he/she created', '2025-04-03 08:12:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(71, 1, 'Viewed folders he/she created', '2025-04-03 08:12:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(72, 1, 'Viewed folders he/she created', '2025-04-03 08:12:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(73, 1, 'Viewed folders he/she created', '2025-04-03 08:13:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(74, 1, 'Viewed folders he/she created', '2025-04-03 08:13:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(75, 1, 'Viewed folders he/she created', '2025-04-03 08:13:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(76, 1, 'Viewed folders he/she created', '2025-04-03 08:13:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(77, 1, 'Viewed folders he/she created', '2025-04-03 08:14:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(78, 1, 'Viewed folders he/she created', '2025-04-03 08:14:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(79, 1, 'Viewed folders he/she created', '2025-04-03 08:20:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(80, 1, 'Logged In', '2025-04-08 02:32:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(81, 1, 'Viewed folders he/she created', '2025-04-08 02:59:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(82, 1, 'Viewed folders he/she created', '2025-04-08 03:02:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(83, 1, 'Viewed folders he/she created', '2025-04-08 03:03:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(84, 1, 'Logged out', '2025-04-08 03:03:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(85, 1, 'Logged In', '2025-04-08 03:03:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(86, 1, 'Viewed folders he/she created', '2025-04-08 03:03:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(87, 1, 'Logged out', '2025-04-08 03:03:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(88, 1, 'Logged In', '2025-04-08 03:06:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(89, 1, 'Viewed folders he/she created', '2025-04-08 03:06:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(90, 1, 'Viewed folders he/she created', '2025-04-08 04:46:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(91, 1, 'Viewed folders he/she created', '2025-04-08 04:47:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(92, 1, 'Viewed folders he/she created', '2025-04-08 04:52:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(93, 1, 'Viewed folders he/she created', '2025-04-08 04:53:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(94, 1, 'Viewed folders he/she created', '2025-04-08 04:55:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(95, 1, 'Viewed folders he/she created', '2025-04-08 05:02:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(96, 1, 'Viewed folders he/she created', '2025-04-08 05:02:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(97, 1, 'Viewed folders he/she created', '2025-04-08 05:02:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(98, 1, 'Viewed folders he/she created', '2025-04-08 05:02:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(99, 1, 'Viewed folders he/she created', '2025-04-08 05:03:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(100, 1, 'Viewed folders he/she created', '2025-04-08 05:03:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(101, 1, 'Viewed folders he/she created', '2025-04-08 05:04:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(102, 1, 'Viewed folders he/she created', '2025-04-08 05:04:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(103, 1, 'Viewed folders he/she created', '2025-04-08 05:04:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(104, 1, 'Viewed folders he/she created', '2025-04-08 05:04:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(105, 1, 'Viewed folders he/she created', '2025-04-08 06:46:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(106, 1, 'Logged out', '2025-04-08 07:06:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(107, 1, 'Logged In', '2025-04-08 07:38:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(108, 1, 'Viewed folders he/she created', '2025-04-08 07:38:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(109, 1, 'Viewed folders he/she created', '2025-04-08 14:52:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(110, 1, 'Logged out', '2025-04-08 14:52:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(112, 2, '2', '2025-04-10 22:56:20', '1', '1'),
(113, 11, '1', '2025-04-10 21:57:52', '1', '1'),
(114, 111111, 'Logged In', '2025-04-11 17:08:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(115, 111111, 'Logged In', '2025-04-22 06:29:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(116, 111111, 'Logged In', '2025-04-22 06:30:20', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(117, 111111, 'Admin added a student to the system', '2025-04-22 07:01:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(118, 1, 'Logged In', '2025-04-24 16:25:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(119, 1, 'Viewed folders he/she created', '2025-04-24 16:25:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(120, 1, 'Logged out', '2025-04-24 17:00:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(121, 1, 'Logged In', '2025-04-24 21:14:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(122, 1, 'Viewed folders he/she created', '2025-04-24 21:14:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(123, 1, 'Viewed folders he/she created', '2025-04-24 21:14:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(124, 1, 'Viewed folders he/she created', '2025-04-24 21:17:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(125, 1, 'Logged out', '2025-04-24 21:18:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(126, 111111, 'Logged In', '2025-04-24 21:58:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(127, 111111, 'Logged In', '2025-04-24 22:00:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(128, 111111, 'Logged In', '2025-04-24 22:02:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(129, 111111, 'Admin added a student to the system', '2025-04-24 22:06:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(130, 1, 'Logged In', '2025-04-24 23:05:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(131, 1, 'Viewed folders he/she created', '2025-04-24 23:05:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(132, 1, 'Viewed folders he/she created', '2025-04-24 23:12:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(133, 1, 'Viewed folders he/she created', '2025-04-24 23:14:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(134, 1, 'Viewed folders he/she created', '2025-04-24 23:15:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(135, 1, 'Logged out', '2025-04-24 23:16:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(136, 1, 'Logged In', '2025-04-25 04:23:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(137, 1, 'Viewed folders he/she created', '2025-04-25 04:23:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(138, 1, 'Viewed folders he/she created', '2025-04-25 04:25:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(139, 1, 'Viewed folders he/she created', '2025-04-25 04:32:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(140, 1, 'Viewed folders he/she created', '2025-04-25 04:34:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(141, 1, 'Viewed folders he/she created', '2025-04-25 04:34:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(142, 1, 'Viewed folders he/she created', '2025-04-25 04:35:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(143, 1, 'Viewed folders he/she created', '2025-04-25 04:35:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(144, 1, 'Viewed folders he/she created', '2025-04-25 04:38:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(145, 1, 'Viewed folders he/she created', '2025-04-25 04:39:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(146, 1, 'Viewed folders he/she created', '2025-04-25 04:40:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(147, 1, 'Viewed folders he/she created', '2025-04-25 04:40:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(148, 1, 'Viewed folders he/she created', '2025-04-25 04:40:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(149, 1, 'Viewed folders he/she created', '2025-04-25 04:40:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(150, 1, 'Viewed folders he/she created', '2025-04-25 04:42:01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(151, 1, 'Viewed folders he/she created', '2025-04-25 04:45:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(152, 1, 'Viewed folders he/she created', '2025-04-25 04:47:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(153, 1, 'Viewed folders he/she created', '2025-04-25 04:55:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(154, 1, 'Viewed folders he/she created', '2025-04-25 04:56:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(155, 1, 'Viewed folders he/she created', '2025-04-25 04:57:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(156, 1, 'Viewed folders he/she created', '2025-04-25 05:00:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(157, 1, 'Viewed folders he/she created', '2025-04-25 05:00:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(158, 1, 'Viewed folders he/she created', '2025-04-25 05:03:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(159, 1, 'Viewed folders he/she created', '2025-04-25 05:04:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(160, 1, 'Viewed folders he/she created', '2025-04-25 05:04:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(161, 1, 'Viewed folders he/she created', '2025-04-25 05:05:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(162, 1, 'Viewed folders he/she created', '2025-04-25 05:06:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(163, 1, 'Viewed folders he/she created', '2025-04-25 05:07:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(164, 1, 'Viewed folders he/she created', '2025-04-25 05:07:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(165, 1, 'Viewed folders he/she created', '2025-04-25 05:08:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(166, 1, 'Viewed folders he/she created', '2025-04-25 05:09:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(167, 1, 'Viewed folders he/she created', '2025-04-25 05:09:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(168, 1, 'Viewed folders he/she created', '2025-04-25 05:10:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(169, 1, 'Viewed folders he/she created', '2025-04-25 05:10:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(170, 1, 'Viewed folders he/she created', '2025-04-25 05:11:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(171, 1, 'Viewed folders he/she created', '2025-04-25 05:11:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(172, 1, 'Viewed folders he/she created', '2025-04-25 05:15:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(173, 1, 'Viewed folders he/she created', '2025-04-25 05:15:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(174, 1, 'Viewed folders he/she created', '2025-04-25 05:16:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(175, 1, 'Viewed folders he/she created', '2025-04-25 05:16:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(176, 1, 'Viewed folders he/she created', '2025-04-25 05:16:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(177, 1, 'Viewed folders he/she created', '2025-04-25 05:17:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(178, 1, 'Viewed folders he/she created', '2025-04-25 05:19:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(179, 1, 'Viewed folders he/she created', '2025-04-25 05:20:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(180, 1, 'Viewed folders he/she created', '2025-04-25 05:25:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(181, 1, 'Viewed folders he/she created', '2025-04-25 05:28:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(182, 1, 'Viewed folders he/she created', '2025-04-25 05:30:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(183, 1, 'Viewed folders he/she created', '2025-04-25 05:30:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(184, 1, 'Viewed folders he/she created', '2025-04-25 05:31:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(185, 1, 'Viewed folders he/she created', '2025-04-25 05:37:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(186, 1, 'Viewed folders he/she created', '2025-04-25 05:41:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(187, 1, 'Viewed folders he/she created', '2025-04-25 05:41:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(188, 1, 'Viewed folders he/she created', '2025-04-25 05:42:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(189, 1, 'Viewed folders he/she created', '2025-04-25 06:12:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(190, 1, 'Viewed folders he/she created', '2025-04-25 06:15:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(191, 1, 'Viewed folders he/she created', '2025-04-25 06:17:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(192, 1, 'Viewed folders he/she created', '2025-04-25 06:25:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(193, 1, 'Viewed folders he/she created', '2025-04-25 06:25:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(194, 1, 'Viewed folders he/she created', '2025-04-25 06:25:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(195, 1, 'Viewed folders he/she created', '2025-04-25 06:26:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(196, 1, 'Viewed folders he/she created', '2025-04-25 06:26:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(197, 1, 'Viewed folders he/she created', '2025-04-25 06:27:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(198, 1, 'Viewed folders he/she created', '2025-04-25 06:27:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(199, 1, 'Viewed folders he/she created', '2025-04-25 06:28:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(200, 1, 'Logged out', '2025-04-25 06:28:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(201, 111111, 'Logged In', '2025-04-25 06:35:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(202, 111111, 'Logged In', '2025-04-25 07:08:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add captcha store', 7, 'add_captchastore'),
(26, 'Can change captcha store', 7, 'change_captchastore'),
(27, 'Can delete captcha store', 7, 'delete_captchastore'),
(28, 'Can view captcha store', 7, 'view_captchastore');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `captcha_captchastore`
--

CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `captcha_captchastore`
--

INSERT INTO `captcha_captchastore` (`id`, `challenge`, `response`, `hashkey`, `expiration`) VALUES
(386, 'TPETYX', 'tpetyx', '6f529e789f5698beee965b4833848bc5caa17cfc', '2025-04-24 15:13:01.339984');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'captcha', 'captchastore'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-02-03 06:50:59.771017'),
(2, 'auth', '0001_initial', '2025-02-03 06:51:07.343947'),
(3, 'admin', '0001_initial', '2025-02-03 06:51:09.222408'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-02-03 06:51:09.249597'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-02-03 06:51:09.289441'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-02-03 06:51:10.216395'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-02-03 06:51:10.823210'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-02-03 06:51:11.386068'),
(9, 'auth', '0004_alter_user_username_opts', '2025-02-03 06:51:11.435065'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-02-03 06:51:12.213168'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-02-03 06:51:12.239574'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-02-03 06:51:12.262059'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-02-03 06:51:12.651596'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-02-03 06:51:13.083358'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-02-03 06:51:13.576363'),
(16, 'auth', '0011_update_proxy_permissions', '2025-02-03 06:51:13.598355'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-02-03 06:51:14.067633'),
(18, 'sessions', '0001_initial', '2025-02-03 06:51:14.786731'),
(19, 'captcha', '0001_initial', '2025-02-06 14:13:21.032467'),
(20, 'captcha', '0002_alter_captchastore_id', '2025-02-06 14:13:21.094958');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0b4pujfdhibyid6ciezvezg34kgzetqd', '.eJxNjrEOgjAURX-FdNU2rxRRmEBjNE4OLk6k0ieSUCC0TTTGf5cqA297596bnDcx1ilsbVErkhKeUIA1T8iSmOLumqaVGkd-ys_H_SUI8sM2vwY75vNph1rWzVgJORWREJBV7CatsdIidQyVY_1jVjdD2Smc9cess70HccQh_r8FPvt6eHkK4YqCoLC-AE85T8WGiSiOk9UCIAU_l0rX7c-f_25JnMFhMldYImulYeZlLOqs8rqs7DT5fAGLvEog:1tqMsM:f2ooJIIEZcavhJ0-Wciv90k972drgvkZM0NDHk2u_nk', '2025-03-21 01:51:46.365268'),
('0e4a7py6xooqyrdjnm5ebk05xjmd4cei', 'eyJzdHVkZW50X2lkIjoiMjEtMDg0MjAiLCJzX2Z1bGxuYW1lIjoiRXJpY2EgTWlzY2hlbGxlIEFyYW5kYSAifQ:1tiNxu:-L2sYH0iie7OSMvbfScNtH89_oJdxjJlidEVZMgHWSM', '2025-02-27 01:24:30.614533'),
('1hg8ienkxiz4u05ncvzdm7ys7p38lzjq', 'eyJmYWN1bHR5X2lkIjoxLCJhX2Z1bGxuYW1lIjoiUmFscGggR2VyYXJkIFNhbmdhbGFuZyAifQ:1tuLU2:kEw7RbKQoVV0jPsOENx3THhpbVyrcKHBroc1DfnOCjk', '2025-04-01 01:11:06.419350'),
('2do0ncyrci08klzs67q94hoigy3c0h6t', 'eyJmYWN1bHR5X2lkIjoxLCJhX2Z1bGxuYW1lIjoiUmFscGggR2VyYXJkIFNhbmdhbGFuZyAifQ:1u0BL5:sz3KbJNgjO178yKiu4tb801gm7DvpUx9hqlLebz-5tI', '2025-04-17 03:33:59.205840'),
('6v19yf9jivs424onyhzjhmrgxvrb7tst', 'eyJzdHVkZW50X2lkIjoiMTktMDAwMzMiLCJzX2Z1bGxuYW1lIjoiUFJFUyBMRUUgQU5OICBNRU5ET1pBIEQuIn0:1u2AJt:ftvkt58r-CNaJeBEg5vx8gC2MxRy9fRqkPPlmt5ASj8', '2025-04-22 14:52:57.916505'),
('ca4f9zivpgl6fdftqnsy0g8oxzmrguc0', 'eyJmYWN1bHR5X2lkIjoxLCJhX2Z1bGxuYW1lIjoiUmFscGggR2VyYXJkIFNhbmdhbGFuZyAifQ:1tntb2:XKGVfpXsDRIZY-YGpgEAlEzNO0-JSf4xeTmSWmbWGkw', '2025-03-14 06:11:40.064335'),
('gni9f5z6drjh3bz6h98thuj23swh4lhq', 'eyJmYWN1bHR5X2lkIjoxLCJhX2Z1bGxuYW1lIjoiUmFscGggR2VyYXJkIFNhbmdhbGFuZyAifQ:1tznvo:ikKEYHef3Xyy7BbaEZNShE3JCac43eNXu_K0ulCP5Tw', '2025-04-16 02:34:20.081224'),
('gzp7ibrdwvw6f9t0gi3nmm2vk3khvrsy', 'eyJzdHVkZW50X2lkIjoiMTktMDA3MTkiLCJzX2Z1bGxuYW1lIjoiSkFQSEVUICBBR0JBWSBDLiJ9:1u7xNk:Vwd5aG_veL-yX2gRiEXMo4V6QKIjgzoYjCb7rWK97_8', '2025-05-08 14:16:52.816535'),
('ijyqyn77qhnu0uwr2os5ecu484jvukp6', 'eyJhZG1pbl9pZCI6MTExMTExLCJhX2Z1bGxuYW1lIjoiZGVjZS5uYXMuc3lzdGVtQGdtYWlsLmNvbSJ9:1u7yBe:3mVBl4UdDpQfaFZFpeArrRyIyt55HESvwVUiw__h8U4', '2025-05-08 15:08:26.869261'),
('j8krs054dueklvp2wct3irevhyoj14me', '.eJyrViouKU1JzSuJT81NzMxRslIyMtQ1NjE2NnBI10tKLCkuSSxJ1S3VS00p1SvIUNKBKy8uSs5PSUVSjySXmQIUN7TUNTAwN7QEicenlebk5CXmgtR7OQZ4uIYoKDi6OzlGKjjrKdUCAPFXKBY:1trU7L:j4mPlyS8fiDUu9IRb1K9xxnci-jJGfVUke1EY0dTj7o', '2025-03-24 03:47:51.900449'),
('tvuwfe2pxybzn5ym7tqn4l0fkyqdex7y', 'eyJzdHVkZW50X2lkIjoiMTktMDAwMzMiLCJzX2Z1bGxuYW1lIjoiUFJFUyBMRUUgQU5OICBNRU5ET1pBIEQuIn0:1u32w1:xtnKYEwdbkuhBoXpMZyCky-3HVWGZXfhT1PKiAp3wfE', '2025-04-25 01:11:57.957961'),
('zkekoinxnlpwmpwbyx3un7t0212mtkx7', 'eyJhZG1pbl9pZCI6MTExMTExLCJ1c2VybmFtZSI6ImRlY2UubmFzLnN5c3RlbUBnbWFpbC5jb20ifQ:1u6sA8:I8_ufvttiwt6QIVf8rFoM3aPhNVqOb0qoNVfERYANlM', '2025-05-05 14:30:20.367755');

-- --------------------------------------------------------

--
-- Stand-in structure for view `faculty_accounts`
-- (See below for the actual view)
--
CREATE TABLE `faculty_accounts` (
`u_id` int(11)
,`username` varchar(50)
,`hashed_password` varchar(255)
,`faculty_id` int(11)
,`gsuite` varchar(100)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`mb_limit` int(20)
,`last_name` varchar(50)
,`email_verified` enum('no','yes')
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `faculty_admin_logs`
-- (See below for the actual view)
--
CREATE TABLE `faculty_admin_logs` (
`id` bigint(21)
,`faculty_id` int(11)
,`gsuite` varchar(100)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
,`log_id` int(11)
,`admin_id` int(11)
,`action` varchar(255)
,`timestamp` datetime
,`ip_address` varchar(45)
,`user_agent` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `faculty_folders`
-- (See below for the actual view)
--
CREATE TABLE `faculty_folders` (
`id` bigint(21)
,`u_id` int(11)
,`username` varchar(50)
,`faculty_id` int(11)
,`faculty_first_name` varchar(50)
,`faculty_last_name` varchar(50)
,`faculty_email` varchar(100)
,`student_id` varchar(10)
,`email_verified` enum('no','yes')
,`folder_id` int(11)
,`folder_name` varchar(255)
,`description` varchar(455)
,`unique_code` varchar(255)
,`apicode` varchar(255)
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_info`
--

CREATE TABLE `faculty_info` (
  `id` int(11) NOT NULL,
  `gsuite` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty_info`
--

INSERT INTO `faculty_info` (`id`, `gsuite`, `first_name`, `middle_name`, `last_name`) VALUES
(11, 'ralphgerard.sangalang@g.batstate-u.edu.ph', 'SANGALANG', 'RALPH GERARD ', 'B.'),
(12, 'carlosjhay.arroyo@g.batstate-u.edu.ph', 'ARROYO', 'CARLOS JHAY ', 'A.'),
(13, 'johnphol.belen@g.batstate-u.edu.ph', 'BELEN', 'JOHN PHOL ', 'M.'),
(14, 'johncarlo.aggari@g.batstate-u.edu.ph', 'Aggari', 'John Carlo ', 'V.'),
(15, 'albertsonamante@g.batstate-u.edu.ph', 'Amante', 'Albertson ', 'D.'),
(16, 'jefril.amboy@g.batstate-u.edu.ph', 'Amboy', 'Jefril ', 'M.'),
(17, 'alvinrex.arellano@g.batstate-u.edu.ph', 'Arellano', 'Alvin Rex ', 'L.'),
(18, 'gil.barte@g.batstate-u.edu.ph', 'Barte', 'Gil ', 'B.'),
(19, 'antonette.chua@g.batstate-u.edu.ph', 'Chua', 'Antonette ', 'V.'),
(20, 'antonlouise.deocampo@g.batstate-u.edu.ph', 'De Ocampo', 'Anton Louise ', 'P.'),
(21, 'dilay.mirasol@g.batstate-u.edu.ph', 'Dilay', 'Mirasol ', 'C.'),
(22, 'johnkristoffer.javarez@g.batstate-u.edu.ph', 'Javarez', 'John Kristoffer ', 'L.'),
(23, 'oliverlexterjuly.jose@g.batstate-u.edu.ph', 'Jose', 'Oliver Lexter July ', 'A.'),
(24, 'ahriz.marasigan@g.batstate-u.edu.ph', 'Marasigan', 'Ahriz ', 'A.'),
(25, 'janice.peralta@g.batstate-u.edu.ph', 'Peralta', 'Janice ', 'F.'),
(26, 'divinagracia.ronquillo@g.batstate-u.edu.ph', 'Ronquillo', 'Divina Gracia ', 'D.'),
(27, 'anela.salvador@g.batstate-u.edu.ph', 'Salvador', 'Anela L. - Dept. Cha', 'ir'),
(29, 'louie.villaverde@g.batstate-u.edu.ph', 'Villaverde', 'Louie ', 'L.'),
(30, 'rosellemarie.azucena@g.batstate-u.edu.ph', 'Azucena', 'Roselle Marie ', 'D.'),
(31, 'yernell.cabungcal@g.batstate-u.edu.ph', 'Cabungcal', 'Yernell ', 'H.'),
(32, 'anthony.cruzat@g.batstate-u.edu.ph', 'Cruzat', 'Anthony ', 'V.'),
(33, 'mikko.detorres@g.batstate-u.edu.ph', 'De Torres', 'Mikko ', 'A.'),
(34, 'joven.dimaculangan@g.batstate-u.edu.ph', 'Dimaculangan', 'Joven ', 'L.'),
(35, 'aprylljoy.hernandez@g.batstate-u.edu.ph', 'Hernandez', 'Apryll Joy ', 'A.'),
(36, '2', 'Hernandez', 'Neil Bryan ', 'C.'),
(37, 'rendelljason.lagman@g.batstate-u.edu.ph', 'Lagman', 'Rendell Jason ', 'M.'),
(38, 'dexter.landicho@g.batstate-u.edu.ph', 'Landicho', 'Dexter', ' M'),
(39, 'jamesdarrel.lara@g.batstate-u.edu.ph', 'Lara', 'James Darrel ', 'M.'),
(40, 'gladys.maderazo@g.batstate-u.edu.ph', 'Maderazo', 'Gladys ', 'B.'),
(41, 'selverino.magon@g.batstate-u.edu.ph', 'Magon', 'Selverino ', 'A.'),
(42, 'darwin.managa@g.batstate-u.edu.ph', 'Mañaga', 'Darwin ', 'D.'),
(43, 'vienfernando.marasigan@g.batstate-u.edu.ph', 'Marasigan', 'Vien Fernando ', 'V.'),
(44, 'clydejohnjuneil.masicat@g.batstate-u.edu.ph', 'Masicat', 'Clyde John Juneil ', 'T.'),
(45, 'galeleo.mendoza@g.batstate-u.edu.ph', 'Mendoza', 'Galeleo ', 'M.'),
(46, 'charlesfinny.plata@g.batstate-u.edu.ph', 'Plata', 'Charles Finny ', 'A.'),
(47, 'kenneth.caringal@g.batstate-u.edu.ph', 'Caringal', 'Kenneth ', 'D.'),
(48, 'renzjeremiah.mercado@g.batstate-u.edu.ph', 'Mercado', 'Renz Jeremiah ', 'A.'),
(49, 'sherwin.trinidad@g.batstate-u.edu.ph', 'Trinidad', 'Sherwin ', 'R.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `files_of_faculty`
-- (See below for the actual view)
--
CREATE TABLE `files_of_faculty` (
`id` bigint(21)
,`u_id` int(11)
,`username` varchar(50)
,`hashed_password` varchar(255)
,`faculty_id` int(11)
,`gsuite` varchar(100)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
,`file_id` int(11)
,`folder_code` varchar(255)
,`file_name` varchar(255)
,`file_guide` varchar(200)
,`file_description` text
,`file_link` varchar(255)
,`uploader_id` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `file_of_students`
-- (See below for the actual view)
--
CREATE TABLE `file_of_students` (
`id` bigint(21)
,`u_id` int(11)
,`username` varchar(50)
,`hashed_password` varchar(255)
,`student_id` varchar(10)
,`email_verified` enum('no','yes')
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
,`file_id` int(11)
,`folder_code` varchar(255)
,`file_name` varchar(255)
,`file_guide` varchar(200)
,`file_description` text
,`file_link` varchar(255)
,`uploader_id` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `folder_files`
--

CREATE TABLE `folder_files` (
  `file_id` int(11) NOT NULL,
  `folder_code` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_guide` varchar(200) NOT NULL,
  `file_description` text DEFAULT NULL,
  `file_link` varchar(255) NOT NULL,
  `uploader_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folder_tns`
--

CREATE TABLE `folder_tns` (
  `id` int(11) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `description` varchar(455) NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `apicode` varchar(255) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_accounts`
-- (See below for the actual view)
--
CREATE TABLE `student_accounts` (
`u_id` int(11)
,`username` varchar(50)
,`hashed_password` varchar(255)
,`student_id` varchar(10)
,`mb_limit` int(20)
,`email_verified` enum('no','yes')
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_activity_logs`
-- (See below for the actual view)
--
CREATE TABLE `student_activity_logs` (
`id` bigint(21)
,`sr_code` varchar(10)
,`first_name` varchar(50)
,`middle_name` varchar(50)
,`last_name` varchar(50)
,`log_id` int(11)
,`student_id` varchar(11)
,`action` varchar(255)
,`timestamp` datetime
,`ip_address` varchar(45)
,`user_agent` text
);

-- --------------------------------------------------------

--
-- Table structure for table `student_folder`
--

CREATE TABLE `student_folder` (
  `id` int(11) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_folder_view`
-- (See below for the actual view)
--
CREATE TABLE `student_folder_view` (
`id` bigint(21)
,`sr_code` varchar(10)
,`student_first_name` varchar(50)
,`student_middle_name` varchar(50)
,`student_last_name` varchar(50)
,`faculty_gsuite` varchar(100)
,`faculty_first_name` varchar(50)
,`faculty_middle_name` varchar(50)
,`faculty_last_name` varchar(50)
,`folder_name` varchar(255)
,`description` varchar(455)
,`unique_code` varchar(255)
,`apicode` varchar(255)
,`faculty_id` int(11)
,`student_folder_created_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `sr_code` varchar(10) NOT NULL,
  `g_email` varchar(455) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`sr_code`, `g_email`, `first_name`, `middle_name`, `last_name`) VALUES
(' 22-04816', '22-04816@g.batstate-u.edu.ph', 'RODRIGUEZ', 'MARK WINDEL ', 'D.'),
(' 23-03498', '23-03498@g.batstate-u.edu.ph', 'SAN JOSE', 'SEAN KENYON ', 'C.'),
('21-00120', '21-00120@g.batstate-u.edu.ph', 'RIVERA', 'JIANN RHEN ', 'M.'),
('21-00161', '21-00161@g.batstate-u.edu.ph', 'CRUZ', 'JOMARIE ', 'D.'),
('21-00297', '21-00297@g.batstate-u.edu.ph', 'Postrero', 'Ted Ange', 'lo'),
('21-00353', '21-00353@g.batstate-u.edu.ph', 'TORRECAMPO', 'JERARD ', 'V.'),
('21-00611', '21-00611@g.batstate-u.edu.ph', 'PANOPIO', 'KRISTINE GRACE ', 'A.'),
('21-01057', '21-01057@g.batstate-u.edu.ph', 'BONIFACIO', 'CARMELA LAINE ', 'P.'),
('21-01126', '21-01126@g.batstate-u.edu.ph', 'Antiga', 'Karrihl Marriane ', 'D.'),
('21-01209', '21-01209@g.batstate-u.edu.ph', 'BARILLO', 'NEDDIE ANNE ', 'S.'),
('21-01283', '21-01283@g.batstate-u.edu.ph', 'GUBOT', 'EPHRAIM ', 'L.'),
('21-01457', '21-01457@g.batstate-u.edu.ph', 'LAT', 'NIB OWEN ', 'S.'),
('21-02055', '21-02055@g.batstate-u.edu.ph', 'PAMPLONA', 'CRISTEEN MARI ', 'M.'),
('21-02255', '21-02255@g.batstate-u.edu.ph', 'MANALO', 'ZURIEL ', 'G.'),
('21-02272', '21-02272@g.batstate-u.edu.ph', 'OLIVER', 'IVY ', 'C.'),
('21-02983', '21-02983@g.batstate-u.edu.ph', 'Hernandez', 'Gladys M', 'ae'),
('21-03027', '21-03027@g.batstate-u.edu.ph', 'Montalbo', 'King Albert ', 'P.'),
('21-03031', '21-03031@g.batstate-u.edu.ph', 'Ramos', 'Dea Maxine ', 'G.'),
('21-03214', '21-03214@g.batstate-u.edu.ph', 'BRINGQUEZ', 'ABBEY ', 'P.'),
('21-03325', '21-03325@g.batstate-u.edu.ph', 'Punzalan', 'Gian Pau', 'lo'),
('21-03425', '21-03425@g.batstate-u.edu.ph', 'Cañeda', 'Karl Angelo ', 'D.'),
('21-03898', '21-03898@g.batstate-u.edu.ph', 'LUBIS', 'IRA MARIE ', 'T.'),
('21-05001', '21-05001@g.batstate-u.edu.ph', 'Lunar', 'Aleigh', 'a '),
('21-05130', '21-05130@g.batstate-u.edu.ph', 'Cubero', 'Ever Joy', 'ce'),
('21-05371', '21-05371@g.batstate-u.edu.ph', 'LEYCANO', 'CARLA ', 'A.'),
('21-05443', '21-05443@g.batstate-u.edu.ph', 'Vendiola', 'Amil Lez A', '. '),
('21-05489', '21-05489@g.batstate-u.edu.ph', 'Vengco', 'Jethr', 'o '),
('21-05582', '21-05582@g.batstate-u.edu.ph', 'Dumalagan', 'Josiah ', 'G.'),
('21-05740', '21-05740@g.batstate-u.edu.ph', 'ELORIAGA', 'PRINCESS ALIAH ', 'M.'),
('21-06284', '21-06284@g.batstate-u.edu.ph', 'FRESNIDO', 'JAN REYMOND ', 'M.'),
('21-06581', '21-06581@g.batstate-u.edu.ph', 'Luistro', 'John Lloyd Thyro', 'ne'),
('21-06865', '21-06865@g.batstate-u.edu.ph', 'RODAVIA', 'MARK JOHN AL ', 'S.'),
('21-06955', '21-06955@g.batstate-u.edu.ph', 'Florendo', 'Maria Carme', 'la'),
('21-06962', '21-06962@g.batstate-u.edu.ph', 'MARCO', 'JENCEL DAVID ANDREW ', 'C.'),
('21-07192', '21-07192@g.batstate-u.edu.ph', 'LIBATON', 'MARK LESTER ', 'A.'),
('21-07392', '21-07392@g.batstate-u.edu.ph', 'Gambol', 'Deniel ', 'E.'),
('21-08070', '21-08070@g.batstate-u.edu.ph', 'AUSTRIA', 'LADY PAMIELA ANDREA ', 'F.'),
('21-09407', '21-09407@g.batstate-u.edu.ph', 'CASTILLO', 'CHRISTINE DIANNE ', 'D.'),
('21-09465', '21-09465@g.batstate-u.edu.ph', 'OBRADOR', 'KHARL JAZER ', 'M.'),
('21-09742', '21-09742@g.batstate-u.edu.ph', 'LINDOG', 'JOHN STEVEN ', 'H.'),
('21-09922', '21-09922@g.batstate-u.edu.ph', 'Matibag', 'Francis Lore', 'nz'),
('21-09942', '21-09942@g.batstate-u.edu.ph', 'Ricafrente', 'Jasmine Marie ', 'M.'),
('21-09944', '21-09944@g.batstate-u.edu.ph', 'ACUZAR', 'MC SANNDEL ANGELA ', 'M.'),
('22-00013', '22-00013@g.batstate-u.edu.ph', 'Arrojado', 'Yuan Paolo A', '. '),
('22-00016', '22-00016@g.batstate-u.edu.ph', 'ALAMAG', 'CYRAH ', 'M.'),
('22-00028', '22-00028@g.batstate-u.edu.ph', 'PASICARAN', 'JOHN MARLOWE ', 'A.'),
('22-00066', '22-00066@g.batstate-u.edu.ph', 'BORBON', 'KENNETH VIRGIL ', 'L.'),
('22-00132', '22-00132@g.batstate-u.edu.ph', 'BALDOMERO', 'DANIELLE GENLY ', 'C.'),
('22-00148', '22-00148@g.batstate-u.edu.ph', 'VILLARETE', 'PIERRE ALLEN ', 'D.'),
('22-00158', '22-00158@g.batstate-u.edu.ph', 'CABINTE', 'JOSE GABRIEL ', 'A.'),
('22-00177', '22-00177@g.batstate-u.edu.ph', 'SAN JUAN', 'JOHN CHRISTIAN ', 'C.'),
('22-00184', '22-00184@g.batstate-u.edu.ph', 'MENDOZA', 'MARK JASON ', 'M.'),
('22-00283', '22-00283@g.batstate-u.edu.ph', 'MACALINTAL', 'KEY BEARD ', 'D.'),
('22-00313', '22-00313@g.batstate-u.edu.ph', 'MENDOZA', 'MARK CLARENCE ', 'B.'),
('22-00326', '22-00326@g.batstate-u.edu.ph', 'MALAPITAN', 'GILBERT ARIES ', 'A.'),
('22-00385', '22-00385@g.batstate-u.edu.ph', 'Castillo', 'Russel ', 'F.'),
('22-00393', '22-00393@g.batstate-u.edu.ph', 'MANALO', 'MATTHEW ', 'D.'),
('22-00400', '22-00400@g.batstate-u.edu.ph', 'MENDOZA', 'JOF ', 'C.'),
('22-00414', '22-00414@g.batstate-u.edu.ph', 'Mutia', 'Shiela Marie ', 'G.'),
('22-00500', '22-00500@g.batstate-u.edu.ph', 'NAMUCO', 'ANDREW ', 'B.'),
('22-00589', '22-00589@g.batstate-u.edu.ph', 'De Guzman', 'Alessandra E', '. '),
('22-00662', '22-00662@g.batstate-u.edu.ph', 'Magallanes', 'Raven Niño ', 'C.'),
('22-00668', '22-00668@g.batstate-u.edu.ph', 'Gajon', 'Joshua Emmanuel ', 'M.'),
('22-00766', '22-00766@g.batstate-u.edu.ph', 'ESTREMERA', 'GODWIN REUBEN ', 'Z.'),
('22-00833', '22-00833@g.batstate-u.edu.ph', 'ZAMORA', 'ALGEN ', 'B.'),
('22-00865', '22-00865@g.batstate-u.edu.ph', 'SANDOVAL', 'ALYSSA MAE ', 'D.'),
('22-00878', '22-00878@g.batstate-u.edu.ph', 'Andal', 'Katrina Mei ', 'H.'),
('22-00911', '22-00911@g.batstate-u.edu.ph', 'OGAYON', 'NEIL JOHN ', 'M.'),
('22-00926', '22-00926@g.batstate-u.edu.ph', 'Caguimbal', 'Mea Noreen ', 'D.'),
('22-01021', '22-01021@g.batstate-u.edu.ph', 'Catapang', 'Mary Aljen ', 'B.'),
('22-01042', '22-01042@g.batstate-u.edu.ph', 'GUARDA', 'ROCHELLE ', 'B.'),
('22-01079', '22-01079@g.batstate-u.edu.ph', 'MACUHA', 'LOUVEN JAIRO ', 'B.'),
('22-01180', '22-01180@g.batstate-u.edu.ph', 'ILAO', 'KARYLLE MIKAELA ', 'L.'),
('22-01207', '22-01207@g.batstate-u.edu.ph', 'MANDIGMA', 'CHRISTIAN ', 'C.'),
('22-01255', '22-01255@g.batstate-u.edu.ph', 'Ramos', 'Raynniel M', '. '),
('22-01281', '22-01281@g.batstate-u.edu.ph', 'ANDAL', 'JANE PAULA ', 'S.'),
('22-01308', '22-01308@g.batstate-u.edu.ph', 'DIMAANO', 'ZAI FRITZ ', 'C.'),
('22-01337', '22-01337@g.batstate-u.edu.ph', 'Bereña', 'Marcus Rhiguel ', 'O.'),
('22-01371', '22-01371@g.batstate-u.edu.ph', 'FRANCISCO', 'FRANZ DEO ', 'G.'),
('22-01388', '22-01388@g.batstate-u.edu.ph', 'Gabi', 'Dianne Joy ', 'C.'),
('22-01500', '22-01500@g.batstate-u.edu.ph', 'Importante', 'Daniele Arenze O', '. '),
('22-01514', '22-01514@g.batstate-u.edu.ph', 'DELGADO', 'LYKA ', 'D.'),
('22-01560', '22-01560@g.batstate-u.edu.ph', 'GAHOL', 'MAXINE ANDREA ', 'O.'),
('22-01626', '22-01626@g.batstate-u.edu.ph', 'Abante', 'Mark Jay ', 'B.'),
('22-01665', '22-01665@g.batstate-u.edu.ph', 'Orense', 'Fenilla Kim ', 'R.'),
('22-01821', '22-01821@g.batstate-u.edu.ph', 'Rocero', 'Christian Daniel ', 'B.'),
('22-01822', '22-01822@g.batstate-u.edu.ph', 'CADANO', 'KIMBERLY ', 'C.'),
('22-01829', '22-01829@g.batstate-u.edu.ph', 'Aguila', 'Mary Anne ', 'D.'),
('22-01866', '22-01866@g.batstate-u.edu.ph', 'FRANE', 'JOHN LIMUEL ', 'D.'),
('22-01885', '22-01885@g.batstate-u.edu.ph', 'REYES', 'JOHN KHYLE ', 'C.'),
('22-01899', '22-01899@g.batstate-u.edu.ph', 'CARCABUSO', 'KRIZZIA CASAND', 'RA'),
('22-01920', '22-01920@g.batstate-u.edu.ph', 'BROTONEL', 'JIREH JOSEPH ', 'B.'),
('22-01984', '22-01984@g.batstate-u.edu.ph', 'De Castro', 'Joanne Nicole ', 'S.'),
('22-02167', '22-02167@g.batstate-u.edu.ph', 'ALVAREZ', 'JED CEDRIC ', 'A.'),
('22-02400', '22-02400@g.batstate-u.edu.ph', 'PLATA', 'EAHRIELLE ANDHREW ', 'B.'),
('22-02403', '22-02403@g.batstate-u.edu.ph', 'Angciangco', 'Chiara Jane ', 'M.'),
('22-02407', '22-02407@g.batstate-u.edu.ph', 'SALIVA', 'MARJORIE ', 'R.'),
('22-02430', '22-02430@g.batstate-u.edu.ph', 'CALLO JR.', 'GAUDENCIO ', 'G.'),
('22-02515', '22-02515@g.batstate-u.edu.ph', 'VERGARA', 'CHRISTIAN JOHN ', 'D.'),
('22-02522', '22-02522@g.batstate-u.edu.ph', 'Nueva', 'Juliana Kyle ', 'L.'),
('22-02569', '22-02569@g.batstate-u.edu.ph', 'SUASI', 'GABRIELLE ', 'G.'),
('22-02613', '22-02613@g.batstate-u.edu.ph', 'TORILLO', 'SHIELO ', 'B.'),
('22-02637', '22-02637@g.batstate-u.edu.ph', 'Aragon', 'John Fridrich B', '. '),
('22-02641', '22-02641@g.batstate-u.edu.ph', 'MUTYA', 'ELOIZA JANE ', 'C.'),
('22-02666', '22-02666@g.batstate-u.edu.ph', 'MONTALBO', 'ED LAWRENCE ', 'T.'),
('22-02699', '22-02699@g.batstate-u.edu.ph', 'DIJAN', 'GIRAH CAMILLE ', 'S.'),
('22-02742', '22-02742@g.batstate-u.edu.ph', 'EATA', 'KEAN KHYDDE ', 'E.'),
('22-02793', '22-02793@g.batstate-u.edu.ph', 'GARCIA', 'JULIA KRISTIANNA ', 'M.'),
('22-02802', '22-02802@g.batstate-u.edu.ph', 'DEL MUNDO', 'JAINAH ', 'D.'),
('22-02875', '22-02875@g.batstate-u.edu.ph', 'Umali', 'Niño Angelo ', 'R.'),
('22-02909', '22-02909@g.batstate-u.edu.ph', 'DEL RIO', 'FRANCINE FAITH ', 'O.'),
('22-02911', '22-02911@g.batstate-u.edu.ph', 'Cena', 'Cejay D', '. '),
('22-02930', '22-02930@g.batstate-u.edu.ph', 'MONTENEGRO', 'PATRICK ANGELO ', 'P.'),
('22-02962', '22-02962@g.batstate-u.edu.ph', 'Mayuga', 'Dannah Lei ', 'A.'),
('22-02963', '22-02963@g.batstate-u.edu.ph', 'ATIENZA', 'MARK TOM ', 'A.'),
('22-02980', '22-02980@g.batstate-u.edu.ph', 'FLORES', 'DANA SAMANTHA ', 'O.'),
('22-03001', '22-03001@g.batstate-u.edu.ph', 'CARANDANG', 'SHERYN ', 'B.'),
('22-03121', '22-03121@g.batstate-u.edu.ph', 'BELLO', 'ERIN JOY ', 'D.'),
('22-03205 ', '22-03205@g.batstate-u.edu.ph', 'Sangalang', 'Jan Noel E', '. '),
('22-03222', '22-03222@g.batstate-u.edu.ph', 'Hilario', 'Angela ', 'T.'),
('22-03234', '22-03234@g.batstate-u.edu.ph', 'Valencia', 'Pearl Marie ', 'N.'),
('22-03268', '22-03268@g.batstate-u.edu.ph', 'TARREGA', 'ARIELLE ', 'A.'),
('22-03316', '22-03316@g.batstate-u.edu.ph', 'FORTALEZA', 'AMANDA CHRISTABEL ', 'L.'),
('22-03325', '22-03325@g.batstate-u.edu.ph', 'Bagon', 'Jessie Andrei ', 'P.'),
('22-03338', '22-03338@g.batstate-u.edu.ph', 'PASUMBAL', 'BEA CARMELA ', 'V.'),
('22-03356', '22-03356@g.batstate-u.edu.ph', 'Alcantara', 'Maria Gabriella Andrea ', 'B.'),
('22-03375', '22-03375@g.batstate-u.edu.ph', 'Rubis', 'Keith Cloyd ', 'S.'),
('22-03387 ', '22-03387@g.batstate-u.edu.ph', 'Mazo', 'Mark Joseph ', 'F.'),
('22-03410', '22-03410@g.batstate-u.edu.ph', 'Mendoza', 'Earl Justi', 'ne'),
('22-03475', '22-03475@g.batstate-u.edu.ph', 'MANLOLO', 'NOEL ALEXIS ', 'C.'),
('22-03562', '22-03562@g.batstate-u.edu.ph', 'Delos Reyes', 'Angelo Zevastian ', 'S.'),
('22-03584', '22-03584@g.batstate-u.edu.ph', 'BANAWA', 'KIAN ISAAC ', 'P.'),
('22-03616', '22-03616@g.batstate-u.edu.ph', 'GARCIA', 'RON IVAN ', 'M.'),
('22-03635', '22-03635@g.batstate-u.edu.ph', 'Adame', 'Kae Ann ', 'G.'),
('22-03650', '22-03650@g.batstate-u.edu.ph', 'Hernandez', 'Ara Jhell D', '. '),
('22-03731', '22-03731@g.batstate-u.edu.ph', 'UBAS', 'CHERRY JEAN ', 'B.'),
('22-03793', '22-03793@g.batstate-u.edu.ph', 'Aguila', 'Yna Joana M', '. '),
('22-03855', '22-03855@g.batstate-u.edu.ph', 'Bagorio', 'Arabella Nadine ', 'U.'),
('22-03874', '22-03874@g.batstate-u.edu.ph', 'CARINUGAN', 'MARXUZ AURELEUZ ', 'U.'),
('22-03881', '22-03881@g.batstate-u.edu.ph', 'MEJIA', 'KATRINA CASSANDRA ', 'D.'),
('22-03978', '22-03978@g.batstate-u.edu.ph', 'ACUZAR', 'MC SANDEL ANGELYN ', 'M.'),
('22-04021', '22-04021@g.batstate-u.edu.ph', 'De Castro', 'Kathleen Joy ', 'C.'),
('22-04201', '22-04201@g.batstate-u.edu.ph', 'OGAYON', 'KENNETH ANGEL ', 'N.'),
('22-04263', '22-04263@g.batstate-u.edu.ph', 'GARCIA', 'JOHN ANTHONY ', 'D.'),
('22-04269', '22-04269@g.batstate-u.edu.ph', 'Bagui', 'Tyrone Jeff V', '. '),
('22-04273', '22-04273@g.batstate-u.edu.ph', 'DAPADAP', 'ALVIN ', 'L.'),
('22-04291', '22-04291@g.batstate-u.edu.ph', 'NORA', 'RASHID ', 'M.'),
('22-04312', '22-04312@g.batstate-u.edu.ph', 'LANDICHO', 'FRANCINE ', 'R.'),
('22-04366', '22-04366@g.batstate-u.edu.ph', 'RIEL', 'JANINE ', 'M.'),
('22-04436', '22-04436@g.batstate-u.edu.ph', 'LLARENA', 'JANELLE JOYCE ', 'R.'),
('22-04447', '22-04447@g.batstate-u.edu.ph', 'OLAVE', 'JOHN ISAAC ', 'I.'),
('22-04462', '22-04462@g.batstate-u.edu.ph', 'MONTANTE', 'CJ CARL ', 'M.'),
('22-04544', '22-04544@g.batstate-u.edu.ph', 'ARCE', 'BRIAN DAVIN ', 'A.'),
('22-04554', '22-04554@g.batstate-u.edu.ph', 'VINEGAS', 'DIANNE MAE ', 'Q.'),
('22-04585', '22-04585@g.batstate-u.edu.ph', 'HARINA', 'BEA SHERRYN ', 'D.'),
('22-04610', '22-04610@g.batstate-u.edu.ph', 'Pangilinan', 'Jerome Jay F', '. '),
('22-04613', '22-04613@g.batstate-u.edu.ph', 'BALAYAN', 'JEGO ', 'A.'),
('22-04635', '22-04635@g.batstate-u.edu.ph', 'Dudas', 'May Shane Joy ', 'C.'),
('22-04786', '22-04786@g.batstate-u.edu.ph', 'GARCIA', 'EL-JOHN KYLE ', 'M.'),
('22-04787', '22-04787@g.bastate-u.edu.ph', 'De Torres', 'Jovan ', 'G.'),
('22-04823', '22-04823@g.batstate-u.edu.ph', 'Evangelista', 'Christine Shire M', '. '),
('22-04857 ', '22-04857@g.batstate-u.edu.ph', 'Grena', 'Aron Paul ', 'P.'),
('22-04867', '22-04867@g.batstate-u.edu.ph', 'CASTILLO', 'ALTHEAMAE JULIET ', 'A.'),
('22-04880', '22-04880@g.batstate-u.edu.ph', 'GUTIERREZ', 'HERSON ', 'A.'),
('22-04919', '22-04919@g.batstate-u.edu.ph', 'PARBA', 'MARCUS LOMER ', 'C.'),
('22-04949', '22-04949@g.batstate-u.edu.ph', 'DE JESUS', 'RIAN VINZE ', 'N.'),
('22-04952', '22-04952@g.batstate-u.edu.ph', 'Martinez', 'John Justine D', '. '),
('22-05059', '22-05059@g.batstate-u.edu.ph', 'Abeleda', 'Joshua Martin R', '. '),
('22-05060', '22-05060@g.batstate-u.edu.ph', 'CALATON', 'MARCO ', 'A.'),
('22-05316', '22-05316@g.batstate-u.edu.ph', 'DELA PEÑA', 'FIONA ', 'P.'),
('22-05439', '22-05439@g.batstate-u.edu.ph', 'Crisologo', 'Gian Jahziel D', '. '),
('22-05462', '22-05462@g.batstate-u.edu.ph', 'LAJA', 'ANGEL DAYNE JOSHUA ', 'F.'),
('22-05517', '22-05517@g.batstate-u.edu.ph', 'ALIGADA', 'MA. LIA ISOBEL ', 'I.'),
('22-05567', '22-05567@g.batstate-u.edu.ph', 'BACAY', 'JONEL ANDREY ', 'A.'),
('22-05606', '22-05606@g.batstate-u.edu.ph', 'ARGETE', 'BEA CHANDELLE ', 'F.'),
('22-05656', '22-05656@g.batstate-u.edu.ph', 'AMBA', 'JOHN MICHAEL ', 'A.'),
('22-05790', '22-05790@g.batstate-u.edu.ph', 'PANGILINAN', 'VON MATHEW ', 'A.'),
('22-05856', '22-05856@g.batstate-u.edu.ph', 'Orijuela', 'Aubrey Yuan Andrei', ' V'),
('22-05888', '22-05888@g.batstate-u.edu.ph', 'MOJADO', 'JASON ', 'B.'),
('22-05895', '22-05895@g.batstate-u.edu.ph', 'RESPETO', 'KRISTINE ', 'A.'),
('22-05940', '22-05940@g.batstate-u.edu.ph', 'JAMPAS', 'JUSTINE JENNIFER ', 'P.'),
('22-06116', '22-06116@g.batstate-u.edu.ph', 'DECENA', 'DIANNE ELIZABETH ', 'C.'),
('22-06119', '22-06119@g.batstate-u.edu.ph', 'ALCAIDE', 'CEDRICK FORD ', 'H.'),
('22-06194', '22-06194@g.batstate-u.edu.ph', 'Delos Reyes', 'Manuel Jhon ', 'M.'),
('22-06206', '22-06206@g.batstate-u.edu.ph', 'Mangali', 'Ma. Kristina Cassandra ', 'S.'),
('22-06220', '22-06220@g.batstate-u.edu.ph', 'MAGNAYI', 'MARIANNE CHARISSE ', 'C.'),
('22-06273', '22-06273@g.batstate-u.edu.ph', 'Marqueses', 'Cristel ', 'S.'),
('22-06316', '22-06316@g.batstate-u.edu.ph', 'MENDOZA', 'HAZEAL ', 'B.'),
('22-06338', '22-06338@g.batstate-u.edu.ph', 'Guerra', 'Alyssa Thea D', '. '),
('22-06478', '22-06478@g.batstate-u.edu.ph', 'Cariaga', 'Julliane ', 'R.'),
('22-06550', '22-06550@g.batstate-u.edu.ph', 'BUENAVENTURA', 'JAN ROVIC ', 'G.'),
('22-06553', '22-06553@g.batstate-u.edu.ph', 'DIMAYUGA', 'MARIENOR QUIANNA RAYNE ', 'M.'),
('22-06686', '22-06686@g.batstate-u.edu.ph', 'VILLAREAL', 'LANCE ', 'B.'),
('22-06716', '22-06716@g.batstate-u.edu.ph', 'EVANGELISTA', 'AXEL NIKKO ', 'C.'),
('22-06726', '22-06726@g.batstate-u.edu.ph', 'SAMONTE', 'KYTE VALERIE ', 'C.'),
('22-06964', '22-06964@g.batstate-u.edu.ph', 'SOSA', 'NARAIN ', 'M.'),
('22-06995', '22-06995@g.batstate-u.edu.ph', 'GENETE', 'ROCHELLE LYN ', 'D.'),
('22-07038 ', '22-07038@g.batstate-u.edu.ph', 'Almonte', 'Jon Denzel S', '. '),
('22-07183', '22-07183@g.batstate-u.edu.ph', 'DIMASACAT', 'JAYCEE ', 'M.'),
('22-07304', '22-07304@g.batstate-u.edu.ph', 'FALCUNAYA', 'VINCE IAN ', 'F.'),
('22-07325', '22-07325@g.batstate-u.edu.ph', 'MERCADO', 'LOURENCE CHRISTOPHER ', 'B.'),
('22-07330', '22-07330@g.batstate-u.edu.ph', 'MAGPANTAY', 'KENT ADRI', 'AN'),
('22-07365', '22-07365@g.batstate-u.edu.ph', 'NADERA', 'MANUELA ', 'B.'),
('22-07395', '22-07395@g.batstate-u.edu.ph', 'Sale', 'Janssen Bianca ', 'I.'),
('22-07492', '22-07492@g.batstate-u.edu.ph', 'Bantoc', 'Rachel ', 'M.'),
('22-07503', '22-07503@g.batstate-u.edu.ph', 'ENDAYA', 'EARL JASPER ', 'T.'),
('22-07551', '22-07551@g.batstate-u.edu.ph', 'MARASIGAN', 'KIM HAROLD ', 'D.'),
('22-07585', '22-07585@g.batstate-u.edu.ph', 'LAMBOSON', 'JAYCEL ', 'L.'),
('22-07586 ', '22-07586@g.batstate-u.edu.ph', 'Belmonte', 'Daneika Xynne ', 'I.'),
('22-07597', '22-07597@g.batstate-u.edu.ph', 'HERNANDEZ', 'JHONAS ', 'R.'),
('22-07604', '22-07604@g.batstate-u.edu.ph', 'PRECILLA', 'CHRISTIAN JAMES ', 'S.'),
('22-07608', '22-07608@g.batstate-u.edu.ph', 'Maranan', 'Mhar Vincent M', '. '),
('22-07609', '22-07609@g.batstate-u.edu.ph', 'DE GUZMAN', 'JENDEL ', 'L.'),
('22-07716', '22-07716@g.batstate-u.edu.ph', 'RUSTIA', 'MARY CLAIRE ', 'A.'),
('22-07801', '22-07801@g.batstate-u.edu.ph', 'BITUIN', 'MARY JOY ', 'F.'),
('22-07919', '22-07919@g.batstate-u.edu.ph', ' Balita', 'Fatima D', '. '),
('22-08027', '22-08027@g.batstate-u.edu.ph', 'Macalalad', 'Armand Cedie E', '. '),
('22-08028', '22-08028@g.batstate-u.edu.ph', 'MAGHIRANG', 'KIEN SHOUHEI ', 'P.'),
('22-08055', '22-08055@g.batstate-u.edu.ph', 'GOMEZ', 'FRANZANE ARABELLA RVEE ', 'E.'),
('22-08097', '22-08097@g.batstate-u.edu.ph', 'ANTONIO', 'LINUS RONNE ', 'L.'),
('22-08131', '22-08131@g.batstate-u.edu.ph', 'BANUELOS', 'JOSHUA ', 'C.'),
('22-08165', '22-08165@g.batstate-u.edu.ph', 'BAUTISTA', 'ARZ', 'IE'),
('22-08312', '22-08312@g.batstate-u.edu.ph', 'CRUZ', 'GABRIEL ANGELO ', 'E.'),
('22-08323', '22-08323@g.batstate-u.edu.ph', 'DIPASUPIL', 'HANAH VERONICA ', 'M.'),
('22-08366', '22-08366@g.batstate-u.edu.ph', 'CAMBE', 'JIERO ', 'A.'),
('22-08374', '22-08374@g.batstate-u.edu.ph', 'Masangkay', 'Mariana Karmella ', 'T.'),
('22-08379', '22-08379@g.batstate-u.edu.ph', 'Gomez', 'Kiro James C', '. '),
('22-08431', '22-08431@g.batstate-u.edu.ph', 'Lazaga', 'Princess Samuelyn ', 'R.'),
('22-08451', '22-08451@g.batstate-u.edu.ph', 'CENTOS', 'SHAINA MARIE ', 'B.'),
('22-08468 ', '22-08468@g.batstate-u.edu.ph', 'Silva Jr.', 'Marlon ', 'M.'),
('22-08512', '22-08512@g.batstate-u.edu.ph', 'YOLOLA', 'LEMUEL ', 'C.'),
('22-08538', '22-08538@g.batstate-u.edu.ph', 'Reyes', 'Xiena Kassandra ', 'Y.'),
('22-08569', '22-08569@g.batstate-u.edu.ph', 'MALIJAN', 'SHIELA MAE ', 'T.'),
('22-08587', '22-08587@g.batstate-u.edu.ph', 'BALIAT', 'CAZANDRA ', 'L.'),
('22-08594', '22-08594@g.batstate-u.edu.ph', 'Pateña', 'Alexandra Mae A', '. '),
('22-08753', '22-08753@g.batstate-u.edu.ph', 'Abrenica', 'Brent Col', 'ey'),
('22-08793', '22-08793@g.batstate-u.edu.ph', 'INASORIA', 'PAULINE KHATE ', 'M.'),
('22-08800', '22-08800@g.batstate-u.edu.ph', 'Calalo', 'Mark Clarence ', 'D.'),
('22-08806 ', '22-08806@g.batstate-u.edu.ph', 'De Luna', 'Zandrex ', 'B.'),
('22-08819', '22-08819@g.batstate-u.edu.ph', 'BALABAG', 'EARL YUAN ', 'L.'),
('22-08824', '22-08824@g.batstate-u.edu.ph', 'Ilagan', 'Jhea Elize Mae ', 'H.'),
('22-08870', '22-08870@g.batstate-u.edu.ph', 'CASAS', 'CZAR IVAN JOSEPH ', 'A.'),
('22-08910', '22-08910@g.batstate-u.edu.ph', 'LOBO', 'ANGEL MAE ', 'H.'),
('22-08946', '22-08946@g.batstate-u.edu.ph', 'Balmes', 'Owen Cyrill ', 'A.'),
('22-08952', '22-08952@g.batstate-u.edu.ph', 'FLORENDO', 'KARLO ', 'S.'),
('22-08962', '22-08962@g.batstate-u.edu.ph', 'Pelaga', 'Lanz Mathew ', 'C.'),
('22-08978', '22-08978@g.batstate-u.edu.ph', 'MAKIG-ANGAY', 'JOHN MICHAEL ', 'B.'),
('22-09012', '22-09012@g.batstate-u.edu.ph', 'NUQUI', 'LESTHER ', 'A.'),
('22-09030', '22-09030@g.batstate-u.edu.ph', 'VIRREY', 'BEAVER FREUD ', 'D.'),
('22-09097', '22-09097@g.batstate-u.edu.ph', 'Tupaz', 'Clifford Wawin B', '. '),
('22-09103', '22-09103@g.batstate-u.edu.ph', 'Cortez', 'Chris Adrian O', '. '),
('22-09111', '22-09111@g.batstate-u.edu.ph', 'CUBALLES', 'JOSEPH REIGN ', 'J.'),
('22-09196', '22-09196@g.batstate-u.edu.ph', 'Caponpon', 'Kristine Joy ', 'M.'),
('22-09254', '22-09254@g.batstate-u.edu.ph', 'DULIN', 'JANE FRANCISCARYL ', 'M.'),
('22-09272', '22-09272@g.batstate-u.edu.ph', 'Briones', 'Angelica Cyril ', 'M.'),
('22-09304', '22-09304@g.batstate-u.edu.ph', 'RIO', 'ROENTGEN ', 'C.'),
('22-09360', '22-09360@g.batstate-u.edu.ph', 'Rosales', 'Kyrk Patrick C', '. '),
('22-09399', '22-09399@g.batstate-u.edu.ph', 'HOLGADO', 'JANNA ', 'G.'),
('22-09451', '22-09451@g.batstate-u.edu.ph', 'Caya', 'Eurice ', 'F.'),
('22-09475', '22-09475@g.batstate-u.edu.ph', 'Perez', 'Anne Michaella ', 'M.'),
('22-09488', '22-09488@g.batstate-u.edu.ph', 'Dimalibot', 'Paula ', 'P.'),
('22-09493', '22-09493@g.batstate-u.edu.ph', 'PLATA', 'KEITH ALLEN ', 'C.'),
('22-09547', '22-09547@g.batstate-u.edu.ph', 'ACUZAR', 'DESIREE FAITH ', 'C.'),
('22-09591', '22-09591@g.batstate-u.edu.ph', 'PURGADAS', 'JOSHUA ANDREI ', 'M.'),
('22-09662', '22-09662@g.batstate-u.edu.ph', 'CALUMPIANO', 'ALLYANNA ', 'M.'),
('22-09825', '22-09825@g.batstate-u.edu.ph', 'Maralit', 'Kendrick ', 'A.'),
('22-09904', '22-09904@g.batstate-u.edu.ph', 'VILLANUEVA', 'FRANCINE ANNE ', 'R.'),
('22-09907', '22-09907@g.batstate-u.edu.ph', 'JUSAY', 'JHUN KENJI ', 'A.'),
('22-09957', '22-09957@g.batstate-u.edu.ph', 'ABRAGANTE', 'KIM ', 'M.');

-- --------------------------------------------------------

--
-- Table structure for table `student_logs`
--

CREATE TABLE `student_logs` (
  `log_id` int(11) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_logs`
--

INSERT INTO `student_logs` (`log_id`, `student_id`, `action`, `timestamp`, `ip_address`, `user_agent`) VALUES
(1, '21-00623', 'Logged in to the portal', '2025-02-03 15:02:53', '192.168.1.40', 'Firefox/89.0'),
(2, '21-01836', 'Submitted an assignment', '2025-02-03 15:02:53', '192.168.1.50', 'Opera/75.0'),
(3, '21-00641', 'Updated profile information', '2025-02-03 15:02:53', '192.168.1.60', 'Brave/1.26.74'),
(4, '21-01642', 'Viewed course materials', '2025-02-03 15:02:53', '192.168.1.70', 'Microsoft Edge/92.0.902.62'),
(5, '21-08420', 'Logged in', '2025-02-13 01:20:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(6, '21-08420', 'Viewed folders he/she is joined in', '2025-02-13 01:21:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(7, '21-08420', 'Logged out', '2025-02-13 01:21:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(8, '21-08420', 'Logged in', '2025-02-13 01:24:30', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(9, '21-08420', 'Viewed folders he/she is joined in', '2025-02-13 01:24:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(10, '21-08420', 'Viewed the files of the folder with code 9DYvkdd0Mx', '2025-02-13 01:24:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0'),
(11, '21-08420', 'Logged in', '2025-03-06 00:53:13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(12, '21-08420', 'Viewed folders he/she is joined in', '2025-03-06 00:53:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(13, '21-08420', 'Viewed folders he/she is joined in', '2025-03-06 00:54:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(14, '21-08420', 'Logged out', '2025-03-06 01:00:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(15, '19-00719', 'Logged in', '2025-03-06 05:56:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(16, '19-00719', 'Viewed folders he/she is joined in', '2025-03-06 06:00:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(17, '19-00719', 'Viewed folders he/she is joined in', '2025-03-06 06:14:47', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(18, '19-00719', 'Viewed folders he/she is joined in', '2025-03-06 06:14:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36'),
(19, '21-34311', 'Registered to the system', '2025-03-07 00:56:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(20, '21-34330', 'Registered to the system', '2025-03-07 01:06:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(21, '19-00033', 'Logged in', '2025-03-10 03:08:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(22, '19-00033', 'Viewed folders he/she is joined in', '2025-03-10 03:08:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(23, '19-00033', 'Viewed folders he/she is joined in', '2025-03-10 03:08:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(24, '19-00033', 'Logged out', '2025-03-10 03:34:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(25, '21-34330', 'Registered to the system', '2025-03-10 03:39:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(26, '19-00719', 'Logged in', '2025-03-10 03:47:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(27, '19-00719', 'Viewed folders he/she is joined in', '2025-03-10 03:47:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(28, '19-00719', 'Viewed folders he/she is joined in', '2025-03-10 03:48:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(29, '21-34330', 'Registered to the system', '2025-03-14 01:49:15', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(30, '21-34330', 'Registered to the system', '2025-03-14 01:49:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(31, '19-00719', 'Logged in', '2025-03-14 01:55:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(32, '19-00719', 'Viewed folders he/she is joined in', '2025-03-14 01:55:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(33, '19-00719', 'Viewed folders he/she is joined in', '2025-03-14 01:55:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(34, '19-00719', 'Logged out', '2025-03-14 02:02:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(35, '19-00719', 'Logged in', '2025-03-25 02:35:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(36, '19-00719', 'Viewed folders he/she is joined in', '2025-03-25 02:35:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(37, '19-00719', 'Logged out', '2025-03-25 02:36:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(38, '19-00100', 'Logged in', '2025-03-25 02:38:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(39, '19-00100', 'Viewed folders he/she is joined in', '2025-03-25 02:38:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(40, '19-00100', 'Viewed folders he/she is joined in', '2025-03-25 02:38:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(41, '19-00100', 'Logged out', '2025-03-25 02:44:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(42, '19-00100', 'Logged in', '2025-03-25 02:44:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(43, '19-00100', 'Logged out', '2025-03-25 02:46:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(44, '19-00100', 'Logged in', '2025-03-25 02:47:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(45, '19-00100', 'Logged out', '2025-03-25 02:50:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(46, '19-00033', 'Logged in', '2025-03-25 02:50:50', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(47, '19-00033', 'Logged out', '2025-03-25 02:51:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(48, '19-00100', 'Logged in', '2025-03-25 02:52:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(49, '19-00100', 'Logged out', '2025-03-25 02:52:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(50, '19-00033', 'Logged in', '2025-03-25 02:53:02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(51, '19-00033', 'Logged out', '2025-03-25 02:59:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(52, '19-00100', 'Logged in', '2025-03-25 03:00:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(53, '19-00100', 'Viewed folders he/she is joined in', '2025-03-25 04:34:35', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(54, '19-00100', 'Logged out', '2025-03-25 04:37:53', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(55, '19-00033', 'Logged in', '2025-04-01 04:27:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(56, '19-00033', 'Viewed folders he/she is joined in', '2025-04-01 04:29:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(57, '19-00033', 'Logged in', '2025-04-02 01:59:34', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(58, '19-00033', 'Viewed folders he/she is joined in', '2025-04-02 02:02:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(59, '19-00033', 'Logged out', '2025-04-02 02:16:28', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(60, '19-00033', 'Logged in', '2025-04-02 02:19:12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(61, '19-00033', 'Viewed folders he/she is joined in', '2025-04-02 02:20:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(62, '19-00033', 'Logged out', '2025-04-02 02:29:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(63, '19-00033', 'Logged in', '2025-04-03 03:14:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(64, '19-00033', 'Viewed folders he/she is joined in', '2025-04-03 03:14:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(65, '19-00033', 'Logged out', '2025-04-03 03:33:38', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36'),
(66, '19-00033', 'Logged in', '2025-04-08 02:29:18', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(67, '19-00033', 'Logged out', '2025-04-08 02:31:03', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(68, '19-00033', 'Logged in', '2025-04-08 03:04:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(69, '19-00033', 'Viewed folders he/she is joined in', '2025-04-08 03:04:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(70, '19-00033', 'Viewed folders he/she is joined in', '2025-04-08 03:04:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(71, '19-00033', 'Viewed folders he/she is joined in', '2025-04-08 03:05:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(72, '19-00033', 'Logged out', '2025-04-08 03:05:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(73, '19-00033', 'Logged in', '2025-04-08 07:06:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(74, '19-00033', 'Viewed folders he/she is joined in', '2025-04-08 07:06:43', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(75, '19-00033', 'Logged out', '2025-04-08 07:38:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(76, '19-00033', 'Logged in', '2025-04-08 14:52:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(77, '19-00033', 'Viewed folders he/she is joined in', '2025-04-08 14:52:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(78, '19-00033', 'Logged in', '2025-04-10 07:13:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(79, '19-00033', 'Viewed folders he/she is joined in', '2025-04-10 07:13:49', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(80, '19-00033', 'Viewed folders he/she is joined in', '2025-04-11 17:06:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(81, '19-00033', 'Logged out', '2025-04-11 17:08:22', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(82, '19-00033', 'Logged in', '2025-04-11 17:11:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(83, '19-00033', 'Viewed folders he/she is joined in', '2025-04-11 17:11:57', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(84, '19-00033', 'Viewed folders he/she is joined in', '2025-04-11 17:14:54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(85, '19-00033', 'Viewed folders he/she is joined in', '2025-04-11 17:15:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(86, '19-00719', 'Logged in', '2025-04-24 16:19:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(87, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 16:19:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(88, '19-00719', 'Logged out', '2025-04-24 16:25:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(89, '19-00719', 'Logged in', '2025-04-24 17:02:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(90, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 17:02:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(91, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 21:11:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(92, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 21:12:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(93, '19-00719', 'Logged out', '2025-04-24 21:13:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(94, '19-00719', 'Logged in', '2025-04-24 22:37:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(95, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:37:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(96, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:42:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(97, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:42:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(98, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:42:51', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(99, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:43:00', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(100, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:43:31', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(101, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:44:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(102, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:45:59', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(103, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:46:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(104, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:47:29', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(105, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:47:39', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(106, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:53:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(107, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:59:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(108, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 22:59:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(109, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:01:48', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(110, '19-00719', 'Logged out', '2025-04-24 23:03:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(111, '19-00719', 'Logged in', '2025-04-24 23:16:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(112, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:16:27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(113, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:17:56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(114, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:18:33', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(115, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:20:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(116, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:21:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(117, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:21:45', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(118, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:26:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(119, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:26:41', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(120, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:29:24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(121, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:30:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(122, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:32:14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(123, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:33:21', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(124, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:38:44', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(125, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:39:04', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(126, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:39:05', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(127, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:39:58', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(128, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:40:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(129, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:43:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(130, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:48:46', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(131, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:49:08', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(132, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:49:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(133, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:50:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(134, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:51:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(135, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:52:07', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(136, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:52:09', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(137, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:52:23', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(138, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:52:37', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(139, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:53:11', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(140, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:53:40', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(141, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:53:42', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(142, '19-00719', 'Viewed folders he/she is joined in', '2025-04-24 23:55:17', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(143, '19-00719', 'Viewed folders he/she is joined in', '2025-04-25 04:22:32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(144, '19-00719', 'Logged out', '2025-04-25 04:22:55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(145, '19-00719', 'Logged in', '2025-04-25 06:16:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(146, '19-00719', 'Viewed folders he/she is joined in', '2025-04-25 06:16:52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(147, '19-00719', 'Logged in', '2025-04-25 06:29:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(148, '19-00719', 'Viewed folders he/she is joined in', '2025-04-25 06:29:06', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(149, '19-00719', 'Viewed folders he/she is joined in', '2025-04-25 06:29:25', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(150, '19-00719', 'Viewed folders he/she is joined in', '2025-04-25 06:30:19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36'),
(151, '19-00719', 'Logged out', '2025-04-25 06:34:16', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE `user_account` (
  `u_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `student_id` varchar(10) DEFAULT NULL,
  `email_verified` enum('no','yes') NOT NULL DEFAULT 'no',
  `mb_limit` int(20) NOT NULL DEFAULT 500
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`u_id`, `username`, `hashed_password`, `faculty_id`, `student_id`, `email_verified`, `mb_limit`) VALUES
(11, 'ralphgerard.sangalang@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 11, NULL, 'no', 500),
(12, 'carlosjhay.arroyo@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 12, NULL, 'no', 500),
(13, 'johnphol.belen@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 13, NULL, 'no', 500),
(14, 'johncarlo.aggari@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 14, NULL, 'no', 500),
(15, 'albertsonamante@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 15, NULL, 'no', 500),
(16, 'jefril.amboy@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 16, NULL, 'no', 500),
(17, 'alvinrex.arellano@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 17, NULL, 'no', 500),
(18, 'gil.barte@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 18, NULL, 'no', 500),
(19, 'antonette.chua@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 19, NULL, 'no', 500),
(20, 'antonlouise.deocampo@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 20, NULL, 'no', 500),
(21, 'dilay.mirasol@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 21, NULL, 'no', 500),
(22, 'johnkristoffer.javarez@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 22, NULL, 'no', 500),
(23, 'oliverlexterjuly.jose@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 23, NULL, 'no', 500),
(24, 'ahriz.marasigan@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 24, NULL, 'no', 500),
(25, 'janice.peralta@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 25, NULL, 'no', 500),
(26, 'divinagracia.ronquillo@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 26, NULL, 'no', 500),
(27, 'anela.salvador@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 27, NULL, 'no', 500),
(29, 'louie.villaverde@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 29, NULL, 'no', 500),
(30, 'rosellemarie.azucena@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 30, NULL, 'no', 500),
(31, 'yernell.cabungcal@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 31, NULL, 'no', 500),
(32, 'anthony.cruzat@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 32, NULL, 'no', 500),
(33, 'mikko.detorres@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 33, NULL, 'no', 500),
(34, 'joven.dimaculangan@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 34, NULL, 'no', 500),
(35, 'aprylljoy.hernandez@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 35, NULL, 'no', 500),
(36, '2', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 36, NULL, 'no', 500),
(37, 'rendelljason.lagman@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 37, NULL, 'no', 500),
(38, 'dexter.landicho@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 38, NULL, 'no', 500),
(39, 'jamesdarrel.lara@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 39, NULL, 'no', 500),
(40, 'gladys.maderazo@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 40, NULL, 'no', 500),
(41, 'selverino.magon@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 41, NULL, 'no', 500),
(42, 'darwin.managa@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 42, NULL, 'no', 500),
(43, 'vienfernando.marasigan@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 43, NULL, 'no', 500),
(44, 'clydejohnjuneil.masicat@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 44, NULL, 'no', 500),
(45, 'galeleo.mendoza@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 45, NULL, 'no', 500),
(46, 'charlesfinny.plata@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 46, NULL, 'no', 500),
(47, 'kenneth.caringal@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 47, NULL, 'no', 500),
(48, 'renzjeremiah.mercado@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 48, NULL, 'no', 500),
(49, 'sherwin.trinidad@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', 49, NULL, 'no', 500),
(111380, '22-04816@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, ' 22-04816', 'no', 500),
(111381, '23-03498@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, ' 23-03498', 'no', 500),
(111382, '21-00120@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-00120', 'no', 500),
(111383, '21-00161@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-00161', 'no', 500),
(111384, '21-00297@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-00297', 'no', 500),
(111385, '21-00353@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-00353', 'no', 500),
(111386, '21-00611@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-00611', 'no', 500),
(111387, '21-01057@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-01057', 'no', 500),
(111388, '21-01126@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-01126', 'no', 500),
(111389, '21-01209@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-01209', 'no', 500),
(111390, '21-01283@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-01283', 'no', 500),
(111391, '21-01457@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-01457', 'no', 500),
(111392, '21-02055@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-02055', 'no', 500),
(111393, '21-02255@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-02255', 'no', 500),
(111394, '21-02272@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-02272', 'no', 500),
(111395, '21-02983@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-02983', 'no', 500),
(111396, '21-03027@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-03027', 'no', 500),
(111397, '21-03031@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-03031', 'no', 500),
(111398, '21-03214@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-03214', 'no', 500),
(111399, '21-03325@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-03325', 'no', 500),
(111400, '21-03425@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-03425', 'no', 500),
(111401, '21-03898@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-03898', 'no', 500),
(111402, '21-05001@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-05001', 'no', 500),
(111403, '21-05130@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-05130', 'no', 500),
(111404, '21-05371@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-05371', 'no', 500),
(111405, '21-05443@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-05443', 'no', 500),
(111406, '21-05489@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-05489', 'no', 500),
(111407, '21-05582@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-05582', 'no', 500),
(111408, '21-05740@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-05740', 'no', 500),
(111409, '21-06284@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-06284', 'no', 500),
(111410, '21-06581@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-06581', 'no', 500),
(111411, '21-06865@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-06865', 'no', 500),
(111412, '21-06955@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-06955', 'no', 500),
(111413, '21-06962@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-06962', 'no', 500),
(111414, '21-07192@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-07192', 'no', 500),
(111415, '21-07392@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-07392', 'no', 500),
(111416, '21-08070@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-08070', 'no', 500),
(111417, '21-09407@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-09407', 'no', 500),
(111418, '21-09465@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-09465', 'no', 500),
(111419, '21-09742@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-09742', 'no', 500),
(111420, '21-09922@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-09922', 'no', 500),
(111421, '21-09942@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-09942', 'no', 500),
(111422, '21-09944@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '21-09944', 'no', 500),
(111423, '22-00013@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00013', 'no', 500),
(111424, '22-00016@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00016', 'no', 500),
(111425, '22-00028@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00028', 'no', 500),
(111426, '22-00066@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00066', 'no', 500),
(111427, '22-00132@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00132', 'no', 500),
(111428, '22-00148@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00148', 'no', 500),
(111429, '22-00158@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00158', 'no', 500),
(111430, '22-00177@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00177', 'no', 500),
(111431, '22-00184@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00184', 'no', 500),
(111432, '22-00283@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00283', 'no', 500),
(111433, '22-00313@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00313', 'no', 500),
(111434, '22-00326@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00326', 'no', 500),
(111435, '22-00385@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00385', 'no', 500),
(111436, '22-00393@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00393', 'no', 500),
(111437, '22-00400@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00400', 'no', 500),
(111438, '22-00414@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00414', 'no', 500),
(111439, '22-00500@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00500', 'no', 500),
(111440, '22-00589@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00589', 'no', 500),
(111441, '22-00662@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00662', 'no', 500),
(111442, '22-00668@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00668', 'no', 500),
(111443, '22-00766@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00766', 'no', 500),
(111444, '22-00833@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00833', 'no', 500),
(111445, '22-00865@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00865', 'no', 500),
(111446, '22-00878@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00878', 'no', 500),
(111447, '22-00911@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00911', 'no', 500),
(111448, '22-00926@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-00926', 'no', 500),
(111449, '22-01021@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01021', 'no', 500),
(111450, '22-01042@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01042', 'no', 500),
(111451, '22-01079@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01079', 'no', 500),
(111452, '22-01180@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01180', 'no', 500),
(111453, '22-01207@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01207', 'no', 500),
(111454, '22-01255@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01255', 'no', 500),
(111455, '22-01281@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01281', 'no', 500),
(111456, '22-01308@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01308', 'no', 500),
(111457, '22-01337@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01337', 'no', 500),
(111458, '22-01371@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01371', 'no', 500),
(111459, '22-01388@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01388', 'no', 500),
(111460, '22-01500@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01500', 'no', 500),
(111461, '22-01514@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01514', 'no', 500),
(111462, '22-01560@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01560', 'no', 500),
(111463, '22-01626@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01626', 'no', 500),
(111464, '22-01665@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01665', 'no', 500),
(111465, '22-01821@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01821', 'no', 500),
(111466, '22-01822@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01822', 'no', 500),
(111467, '22-01829@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01829', 'no', 500),
(111468, '22-01866@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01866', 'no', 500),
(111469, '22-01885@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01885', 'no', 500),
(111470, '22-01899@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01899', 'no', 500),
(111471, '22-01920@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01920', 'no', 500),
(111472, '22-01984@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-01984', 'no', 500),
(111473, '22-02167@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02167', 'no', 500),
(111474, '22-02400@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02400', 'no', 500),
(111475, '22-02403@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02403', 'no', 500),
(111476, '22-02407@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02407', 'no', 500),
(111477, '22-02430@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02430', 'no', 500),
(111478, '22-02515@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02515', 'no', 500),
(111479, '22-02522@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02522', 'no', 500),
(111480, '22-02569@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02569', 'no', 500),
(111481, '22-02613@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02613', 'no', 500),
(111482, '22-02637@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02637', 'no', 500),
(111483, '22-02641@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02641', 'no', 500),
(111484, '22-02666@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02666', 'no', 500),
(111485, '22-02699@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02699', 'no', 500),
(111486, '22-02742@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02742', 'no', 500),
(111487, '22-02793@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02793', 'no', 500),
(111488, '22-02802@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02802', 'no', 500),
(111489, '22-02875@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02875', 'no', 500),
(111490, '22-02909@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02909', 'no', 500),
(111491, '22-02911@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02911', 'no', 500),
(111492, '22-02930@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02930', 'no', 500),
(111493, '22-02962@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02962', 'no', 500),
(111494, '22-02963@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02963', 'no', 500),
(111495, '22-02980@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-02980', 'no', 500),
(111496, '22-03001@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03001', 'no', 500),
(111497, '22-03121@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03121', 'no', 500),
(111498, '22-03205@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03205 ', 'no', 500),
(111499, '22-03222@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03222', 'no', 500),
(111500, '22-03234@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03234', 'no', 500),
(111501, '22-03268@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03268', 'no', 500),
(111502, '22-03316@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03316', 'no', 500),
(111503, '22-03325@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03325', 'no', 500),
(111504, '22-03338@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03338', 'no', 500),
(111505, '22-03356@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03356', 'no', 500),
(111506, '22-03375@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03375', 'no', 500),
(111507, '22-03387@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03387 ', 'no', 500),
(111508, '22-03410@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03410', 'no', 500),
(111509, '22-03475@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03475', 'no', 500),
(111510, '22-03562@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03562', 'no', 500),
(111511, '22-03584@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03584', 'no', 500),
(111512, '22-03616@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03616', 'no', 500),
(111513, '22-03635@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03635', 'no', 500),
(111514, '22-03650@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03650', 'no', 500),
(111515, '22-03731@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03731', 'no', 500),
(111516, '22-03793@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03793', 'no', 500),
(111517, '22-03855@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03855', 'no', 500),
(111518, '22-03874@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03874', 'no', 500),
(111519, '22-03881@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03881', 'no', 500),
(111520, '22-03978@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-03978', 'no', 500),
(111521, '22-04021@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04021', 'no', 500),
(111522, '22-04201@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04201', 'no', 500),
(111523, '22-04263@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04263', 'no', 500),
(111524, '22-04269@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04269', 'no', 500),
(111525, '22-04273@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04273', 'no', 500),
(111526, '22-04291@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04291', 'no', 500),
(111527, '22-04312@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04312', 'no', 500),
(111528, '22-04366@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04366', 'no', 500),
(111529, '22-04436@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04436', 'no', 500),
(111530, '22-04447@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04447', 'no', 500),
(111531, '22-04462@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04462', 'no', 500),
(111532, '22-04544@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04544', 'no', 500),
(111533, '22-04554@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04554', 'no', 500),
(111534, '22-04585@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04585', 'no', 500),
(111535, '22-04610@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04610', 'no', 500),
(111536, '22-04613@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04613', 'no', 500),
(111537, '22-04635@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04635', 'no', 500),
(111538, '22-04786@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04786', 'no', 500),
(111539, '22-04787@g.bastate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04787', 'no', 500),
(111540, '22-04823@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04823', 'no', 500),
(111541, '22-04857@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04857 ', 'no', 500),
(111542, '22-04867@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04867', 'no', 500),
(111543, '22-04880@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04880', 'no', 500),
(111544, '22-04919@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04919', 'no', 500),
(111545, '22-04949@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04949', 'no', 500),
(111546, '22-04952@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-04952', 'no', 500),
(111547, '22-05059@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05059', 'no', 500),
(111548, '22-05060@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05060', 'no', 500),
(111549, '22-05316@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05316', 'no', 500),
(111550, '22-05439@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05439', 'no', 500),
(111551, '22-05462@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05462', 'no', 500),
(111552, '22-05517@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05517', 'no', 500),
(111553, '22-05567@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05567', 'no', 500),
(111554, '22-05606@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05606', 'no', 500),
(111555, '22-05656@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05656', 'no', 500),
(111556, '22-05790@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05790', 'no', 500),
(111557, '22-05856@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05856', 'no', 500),
(111558, '22-05888@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05888', 'no', 500),
(111559, '22-05895@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05895', 'no', 500),
(111560, '22-05940@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-05940', 'no', 500),
(111561, '22-06116@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06116', 'no', 500),
(111562, '22-06119@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06119', 'no', 500),
(111563, '22-06194@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06194', 'no', 500),
(111564, '22-06206@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06206', 'no', 500),
(111565, '22-06220@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06220', 'no', 500),
(111566, '22-06273@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06273', 'no', 500),
(111567, '22-06316@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06316', 'no', 500),
(111568, '22-06338@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06338', 'no', 500),
(111569, '22-06478@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06478', 'no', 500),
(111570, '22-06550@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06550', 'no', 500),
(111571, '22-06553@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06553', 'no', 500),
(111572, '22-06686@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06686', 'no', 500),
(111573, '22-06716@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06716', 'no', 500),
(111574, '22-06726@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06726', 'no', 500),
(111575, '22-06964@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06964', 'no', 500),
(111576, '22-06995@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-06995', 'no', 500),
(111577, '22-07038@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07038 ', 'no', 500),
(111578, '22-07183@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07183', 'no', 500),
(111579, '22-07304@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07304', 'no', 500),
(111580, '22-07325@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07325', 'no', 500),
(111581, '22-07330@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07330', 'no', 500),
(111582, '22-07365@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07365', 'no', 500),
(111583, '22-07395@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07395', 'no', 500),
(111584, '22-07492@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07492', 'no', 500),
(111585, '22-07503@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07503', 'no', 500),
(111586, '22-07551@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07551', 'no', 500),
(111587, '22-07585@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07585', 'no', 500),
(111588, '22-07586@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07586 ', 'no', 500),
(111589, '22-07597@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07597', 'no', 500),
(111590, '22-07604@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07604', 'no', 500),
(111591, '22-07608@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07608', 'no', 500),
(111592, '22-07609@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07609', 'no', 500),
(111593, '22-07716@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07716', 'no', 500),
(111594, '22-07801@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07801', 'no', 500),
(111595, '22-07919@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-07919', 'no', 500),
(111596, '22-08027@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08027', 'no', 500),
(111597, '22-08028@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08028', 'no', 500),
(111598, '22-08055@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08055', 'no', 500),
(111599, '22-08097@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08097', 'no', 500),
(111600, '22-08131@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08131', 'no', 500),
(111601, '22-08165@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08165', 'no', 500),
(111602, '22-08312@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08312', 'no', 500),
(111603, '22-08323@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08323', 'no', 500),
(111604, '22-08366@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08366', 'no', 500),
(111605, '22-08374@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08374', 'no', 500),
(111606, '22-08379@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08379', 'no', 500),
(111607, '22-08431@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08431', 'no', 500),
(111608, '22-08451@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08451', 'no', 500),
(111609, '22-08468@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08468 ', 'no', 500),
(111610, '22-08512@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08512', 'no', 500),
(111611, '22-08538@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08538', 'no', 500),
(111612, '22-08569@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08569', 'no', 500),
(111613, '22-08587@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08587', 'no', 500),
(111614, '22-08594@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08594', 'no', 500),
(111615, '22-08753@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08753', 'no', 500),
(111616, '22-08793@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08793', 'no', 500),
(111617, '22-08800@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08800', 'no', 500),
(111618, '22-08806@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08806 ', 'no', 500),
(111619, '22-08819@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08819', 'no', 500),
(111620, '22-08824@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08824', 'no', 500),
(111621, '22-08870@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08870', 'no', 500),
(111622, '22-08910@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08910', 'no', 500),
(111623, '22-08946@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08946', 'no', 500),
(111624, '22-08952@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08952', 'no', 500),
(111625, '22-08962@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08962', 'no', 500),
(111626, '22-08978@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-08978', 'no', 500),
(111627, '22-09012@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09012', 'no', 500),
(111628, '22-09030@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09030', 'no', 500),
(111629, '22-09097@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09097', 'no', 500),
(111630, '22-09103@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09103', 'no', 500),
(111631, '22-09111@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09111', 'no', 500),
(111632, '22-09196@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09196', 'no', 500),
(111633, '22-09254@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09254', 'no', 500),
(111634, '22-09272@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09272', 'no', 500),
(111635, '22-09304@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09304', 'no', 500),
(111636, '22-09360@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09360', 'no', 500),
(111637, '22-09399@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09399', 'no', 500),
(111638, '22-09451@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09451', 'no', 500),
(111639, '22-09475@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09475', 'no', 500),
(111640, '22-09488@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09488', 'no', 500),
(111641, '22-09493@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09493', 'no', 500),
(111642, '22-09547@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09547', 'no', 500),
(111643, '22-09591@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09591', 'no', 500),
(111644, '22-09662@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09662', 'no', 500),
(111645, '22-09825@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09825', 'no', 500),
(111646, '22-09904@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09904', 'no', 500),
(111647, '22-09907@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09907', 'no', 500),
(111648, '22-09957@g.batstate-u.edu.ph', '36e47dd992c4e177ba3e3c0b493f1a05036a05e62b17e2560afab6d8a6695817', NULL, '22-09957', 'no', 500);

-- --------------------------------------------------------

--
-- Structure for view `faculty_accounts`
--
DROP TABLE IF EXISTS `faculty_accounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_accounts`  AS SELECT `ua`.`u_id` AS `u_id`, `ua`.`username` AS `username`, `ua`.`hashed_password` AS `hashed_password`, `fi`.`id` AS `faculty_id`, `fi`.`gsuite` AS `gsuite`, `fi`.`first_name` AS `first_name`, `fi`.`middle_name` AS `middle_name`, `ua`.`mb_limit` AS `mb_limit`, `fi`.`last_name` AS `last_name`, `ua`.`email_verified` AS `email_verified` FROM (`user_account` `ua` join `faculty_info` `fi` on(`ua`.`faculty_id` = `fi`.`id`)) WHERE `ua`.`faculty_id` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `faculty_admin_logs`
--
DROP TABLE IF EXISTS `faculty_admin_logs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_admin_logs`  AS SELECT row_number() over ( order by `a`.`timestamp`) AS `id`, `f`.`id` AS `faculty_id`, `f`.`gsuite` AS `gsuite`, `f`.`first_name` AS `first_name`, `f`.`middle_name` AS `middle_name`, `f`.`last_name` AS `last_name`, `a`.`log_id` AS `log_id`, `a`.`admin_id` AS `admin_id`, `a`.`action` AS `action`, `a`.`timestamp` AS `timestamp`, `a`.`ip_address` AS `ip_address`, `a`.`user_agent` AS `user_agent` FROM (`faculty_info` `f` join `admin_logs` `a` on(`f`.`id` = `a`.`admin_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `faculty_folders`
--
DROP TABLE IF EXISTS `faculty_folders`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_folders`  AS SELECT row_number() over () AS `id`, `ua`.`u_id` AS `u_id`, `ua`.`username` AS `username`, `ua`.`faculty_id` AS `faculty_id`, `f`.`first_name` AS `faculty_first_name`, `f`.`last_name` AS `faculty_last_name`, `f`.`gsuite` AS `faculty_email`, `ua`.`student_id` AS `student_id`, `ua`.`email_verified` AS `email_verified`, `ft`.`id` AS `folder_id`, `ft`.`folder_name` AS `folder_name`, `ft`.`description` AS `description`, `ft`.`unique_code` AS `unique_code`, `ft`.`apicode` AS `apicode`, `ft`.`created_at` AS `created_at` FROM ((`user_account` `ua` join `folder_tns` `ft` on(`ua`.`faculty_id` = `ft`.`faculty_id`)) left join `faculty_info` `f` on(`ua`.`faculty_id` = `f`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `files_of_faculty`
--
DROP TABLE IF EXISTS `files_of_faculty`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `files_of_faculty`  AS SELECT row_number() over () AS `id`, `faculty_accounts`.`u_id` AS `u_id`, `faculty_accounts`.`username` AS `username`, `faculty_accounts`.`hashed_password` AS `hashed_password`, `faculty_accounts`.`faculty_id` AS `faculty_id`, `faculty_accounts`.`gsuite` AS `gsuite`, `faculty_accounts`.`first_name` AS `first_name`, `faculty_accounts`.`middle_name` AS `middle_name`, `faculty_accounts`.`last_name` AS `last_name`, `folder_files`.`file_id` AS `file_id`, `folder_files`.`folder_code` AS `folder_code`, `folder_files`.`file_name` AS `file_name`, `folder_files`.`file_guide` AS `file_guide`, `folder_files`.`file_description` AS `file_description`, `folder_files`.`file_link` AS `file_link`, `folder_files`.`uploader_id` AS `uploader_id` FROM (`faculty_accounts` join `folder_files` on(`folder_files`.`uploader_id` = `faculty_accounts`.`faculty_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `file_of_students`
--
DROP TABLE IF EXISTS `file_of_students`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `file_of_students`  AS SELECT row_number() over () AS `id`, `student_accounts`.`u_id` AS `u_id`, `student_accounts`.`username` AS `username`, `student_accounts`.`hashed_password` AS `hashed_password`, `student_accounts`.`student_id` AS `student_id`, `student_accounts`.`email_verified` AS `email_verified`, `student_accounts`.`first_name` AS `first_name`, `student_accounts`.`middle_name` AS `middle_name`, `student_accounts`.`last_name` AS `last_name`, `folder_files`.`file_id` AS `file_id`, `folder_files`.`folder_code` AS `folder_code`, `folder_files`.`file_name` AS `file_name`, `folder_files`.`file_guide` AS `file_guide`, `folder_files`.`file_description` AS `file_description`, `folder_files`.`file_link` AS `file_link`, `folder_files`.`uploader_id` AS `uploader_id` FROM (`student_accounts` join `folder_files` on(`folder_files`.`uploader_id` = `student_accounts`.`student_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_accounts`
--
DROP TABLE IF EXISTS `student_accounts`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_accounts`  AS SELECT `ua`.`u_id` AS `u_id`, `ua`.`username` AS `username`, `ua`.`hashed_password` AS `hashed_password`, `si`.`sr_code` AS `student_id`, `ua`.`mb_limit` AS `mb_limit`, `ua`.`email_verified` AS `email_verified`, `si`.`first_name` AS `first_name`, `si`.`middle_name` AS `middle_name`, `si`.`last_name` AS `last_name` FROM (`user_account` `ua` join `student_info` `si` on(`ua`.`student_id` = `si`.`sr_code`)) WHERE `ua`.`student_id` is not null ;

-- --------------------------------------------------------

--
-- Structure for view `student_activity_logs`
--
DROP TABLE IF EXISTS `student_activity_logs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_activity_logs`  AS SELECT row_number() over ( order by `l`.`timestamp`) AS `id`, `s`.`sr_code` AS `sr_code`, `s`.`first_name` AS `first_name`, `s`.`middle_name` AS `middle_name`, `s`.`last_name` AS `last_name`, `l`.`log_id` AS `log_id`, `l`.`student_id` AS `student_id`, `l`.`action` AS `action`, `l`.`timestamp` AS `timestamp`, `l`.`ip_address` AS `ip_address`, `l`.`user_agent` AS `user_agent` FROM (`student_info` `s` join `student_logs` `l` on(`s`.`sr_code` = `l`.`student_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_folder_view`
--
DROP TABLE IF EXISTS `student_folder_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_folder_view`  AS SELECT row_number() over ( order by `si`.`sr_code`) AS `id`, `si`.`sr_code` AS `sr_code`, `si`.`first_name` AS `student_first_name`, `si`.`middle_name` AS `student_middle_name`, `si`.`last_name` AS `student_last_name`, `fi`.`gsuite` AS `faculty_gsuite`, `fi`.`first_name` AS `faculty_first_name`, `fi`.`middle_name` AS `faculty_middle_name`, `fi`.`last_name` AS `faculty_last_name`, `ft`.`folder_name` AS `folder_name`, `ft`.`description` AS `description`, `ft`.`unique_code` AS `unique_code`, `ft`.`apicode` AS `apicode`, `ft`.`faculty_id` AS `faculty_id`, `sf`.`created_at` AS `student_folder_created_at` FROM (((`student_folder` `sf` join `student_info` `si` on(`sf`.`student_id` = `si`.`sr_code`)) join `folder_tns` `ft` on(`sf`.`folder_id` = `ft`.`id`)) join `faculty_info` `fi` on(`ft`.`faculty_id` = `fi`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashkey` (`hashkey`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `faculty_info`
--
ALTER TABLE `faculty_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gsuite` (`gsuite`);

--
-- Indexes for table `folder_files`
--
ALTER TABLE `folder_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `folder_tns`
--
ALTER TABLE `folder_tns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_code` (`unique_code`);

--
-- Indexes for table `student_folder`
--
ALTER TABLE `student_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `folder_id` (`folder_id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`sr_code`);

--
-- Indexes for table `student_logs`
--
ALTER TABLE `student_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`u_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `faculty_info`
--
ALTER TABLE `faculty_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `folder_files`
--
ALTER TABLE `folder_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folder_tns`
--
ALTER TABLE `folder_tns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_folder`
--
ALTER TABLE `student_folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_logs`
--
ALTER TABLE `student_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111891;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `student_folder`
--
ALTER TABLE `student_folder`
  ADD CONSTRAINT `student_folder_ibfk_1` FOREIGN KEY (`folder_id`) REFERENCES `folder_tns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_account`
--
ALTER TABLE `user_account`
  ADD CONSTRAINT `user_account_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_info` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_account_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_info` (`sr_code`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
