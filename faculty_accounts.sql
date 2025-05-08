-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2025 at 04:45 AM
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
-- Structure for view `faculty_accounts`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `faculty_accounts`  AS SELECT `ua`.`u_id` AS `u_id`, `ua`.`username` AS `username`, `ua`.`hashed_password` AS `hashed_password`, `fi`.`id` AS `faculty_id`, `fi`.`gsuite` AS `gsuite`, `fi`.`first_name` AS `first_name`, `fi`.`middle_name` AS `middle_name`, `fi`.`last_name` AS `last_name` FROM (`user_account` `ua` join `faculty_info` `fi` on(`ua`.`faculty_id` = `fi`.`id`)) WHERE `ua`.`faculty_id` is not null ;

--
-- VIEW `faculty_accounts`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
