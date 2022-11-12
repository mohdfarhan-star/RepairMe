-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2020 at 08:54 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `renewa10`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookservices`
--

CREATE TABLE `bookservices` (
  `sno` int(6) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `category` text NOT NULL,
  `area` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `service_date` date NOT NULL,
  `service_time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookservices`
--

INSERT INTO `bookservices` (`sno`, `name`, `email`, `phone`, `category`, `area`, `location`, `date`, `service_date`, `service_time`) VALUES
(1, 'Soyl Namdev', 'sv9204081@gmail.com', '8085256283', 'AC', 'Nipaniya', 'Near rawatpura gate', '0000-00-00 00:00:00', '0000-00-00', '00:00:00.000000'),
(2, 'Shubham vishwakarma', 'sv9204081@gmail.com', '7470692361', 'TV', 'Nipaniya', 'rawatpura gate', '0000-00-00 00:00:00', '2020-07-28', '10:30:55.000000'),
(3, 'rehn', 'Dr.Doom@gmail.com', '8085256283', 'dg', 'd', 'dfg', '2020-07-28 00:00:00', '2020-07-28', '17:34:18.000000'),
(4, 'rex', 'Dr.Doom@gmail.com', '8085256283', 'ac', 'ad', 'sfsf', '2020-07-28 00:38:16', '2020-07-29', '23:37:43.000000'),
(5, 'Soyal Namdev', 'soyalnamdev5467@gmail.com', '8085256283', 'TV', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 18:35:30', '2020-07-29', '12:40:00.000000'),
(6, 'Rajneesh Tiwari', 'rajneeshtiwari65@gmail.co', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 20:39:34', '2020-07-29', '14:45:00.000000'),
(7, 'Pramod Prajapati', 'pramod@gmail.com', '8085256283', 'worker', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 20:51:16', '2020-07-30', '10:53:00.000000'),
(8, 'Soyal NAmdev', 'soyal8085@gmail.com', '8085256283', 'launching', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:04:51', '2020-07-31', '12:05:00.000000'),
(9, 'soyal namdev', 'soyalnamdev5467@gmail.com', '6574839234', 'paiment', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:09:26', '2020-07-31', '14:09:00.000000'),
(10, 'soyal namdev', 'soyalnamdev5467@gmail.com', '6574839234', 'paiment', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:12:15', '2020-07-31', '14:09:00.000000'),
(11, 'soyal namdev', 'soyalnamdev5467@gmail.com', '6574839234', 'paiment', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:12:36', '2020-07-31', '14:09:00.000000'),
(12, 'shubham', 'soyalnamdev5467@gmail.com', '8085256283', 'AC', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:25:04', '2020-07-29', '14:25:00.000000'),
(13, 'soyal namdev', 'soyalnamdev5467@gmail.com', '8085256283', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:29:05', '2020-07-30', '23:28:00.000000'),
(14, 'soyal namdev', '', '8085256283', 'TV', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:34:54', '2020-07-25', '14:34:00.000000'),
(15, 'soyal namdev', 'soyalnamdev5467@gmail.com', '8085256283', 'TV', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:35:24', '2020-07-25', '14:34:00.000000'),
(16, 'soyal namdev', 'soyalnamdev5467@gmail.com', '8085256283', 'refrigerator', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:48:33', '2020-08-01', '12:01:00.000000'),
(17, 'soyal namdev', 'soyalnamdev5467@gmail.com', '8085256283', 'fixing', 'Nipaniya', 'Rawatpura gate ', '2020-07-28 21:50:43', '2020-07-28', '12:51:00.000000'),
(18, 'shubham', 'soyalnamdev5467@gmail.com', '', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-29 01:21:51', '2020-07-30', '06:21:00.000000'),
(19, 'ranu kushwaha', 'ranu702442@gmail.com', '7024420655', 'setting', 'Nipaniya', 'rewa', '2020-07-31 17:16:54', '2020-08-01', '07:31:00.000000'),
(20, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:29:55', '2020-08-01', '22:29:00.000000'),
(21, 'shubham', 'sv9204081@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:30:19', '2020-08-07', '23:30:00.000000'),
(22, 'shubham', 'sv9204081@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:34:17', '2020-08-07', '23:30:00.000000'),
(23, 'shubham', 'sv9204081@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:34:53', '2020-08-07', '23:30:00.000000'),
(24, 'shubham', 'sv9204081@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:37:35', '2020-08-07', '23:30:00.000000'),
(25, 'shubham', 'sv9204081@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:38:12', '2020-08-07', '23:30:00.000000'),
(26, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:45:22', '2020-07-31', '22:45:00.000000'),
(27, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:46:41', '2020-07-31', '22:45:00.000000'),
(28, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:53:14', '2020-07-31', '22:45:00.000000'),
(29, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 17:57:07', '2020-07-31', '22:45:00.000000'),
(30, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'TV', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 22:02:43', '2020-07-31', '22:07:00.000000'),
(31, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'refrigerator', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 22:03:34', '2020-07-30', '13:03:00.000000'),
(32, 'REX rwex', 'soyalnamdev5467@gmail.com', '6574839234', 'TV', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 22:32:06', '2020-08-08', '22:37:00.000000'),
(33, 'soyal namdev', 'soyalnamdev5467@gmail.com', '8085256283', 'material', 'Nipaniya', 'Rawatpura gate ', '2020-07-31 22:37:01', '2020-08-07', '15:37:00.000000'),
(34, 'Kiran vishwakarma', 'kiran5467@gmail.com', '6574839234', 'fixing', 'Nipaniya', 'Rawatpura gate ', '2020-08-01 22:00:27', '2020-09-04', '14:00:00.000000'),
(35, 'shubham vishwakarma', 'sv9204081@gmail.com', '7470692361', 'plumber', 'nipaniya', 'rawatpura gate', '2020-08-01 22:46:00', '2020-08-01', '15:45:00.000000'),
(36, 'shubham vishwakarma', 'sv9204081@gmail.com', '7470692361', 'plumber', 'nipaniya', 'rawatpura gate', '2020-08-01 22:46:54', '2020-08-01', '15:45:00.000000'),
(37, 'shubham vishwakarma', 'sv9204081@gmail.com', '7470692361', 'plumber', 'nipaniya', 'rawatpura gate', '2020-08-01 22:47:19', '2020-08-01', '17:47:00.000000'),
(38, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'TV', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:18:23', '2020-08-29', '16:18:00.000000'),
(39, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'TV', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:19:07', '2020-08-29', '16:18:00.000000'),
(40, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'setting', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:20:35', '2020-09-02', '16:20:00.000000'),
(41, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'plumber', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:21:49', '2020-08-14', '15:21:00.000000'),
(42, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'plumber', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:21:55', '2020-08-14', '15:21:00.000000'),
(43, 'Dr.Doom', 'soyalnamdev5467@gmail.com', '6574839234', 'worker', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:27:02', '2020-09-12', '15:26:00.000000'),
(44, 'Rehan', 'soyalnamdev5467@gmail.com', '6574839234', 'paiment', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:30:15', '2020-08-27', '16:30:00.000000'),
(45, 'Rehan', 'soyalnamdev5467@gmail.com', '6574839234', 'paiment', 'Nipaniya', 'Rawatpura gate ', '2020-08-02 23:31:48', '2020-08-27', '16:30:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(6) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `subject` text DEFAULT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `subject`, `msg`, `date`) VALUES
(1, 'Soyal Namdev', 'synamdev@gmail.com', '8085256283', 'Aur Shubham Ka kar rahe be', 'Shubham Ghar me aaja maggy bani h . ', '2020-07-22 00:43:57'),
(2, 'PRAMOD', 'soyal8085@gmail.com', '6574839234', NULL, 'jhvhjk', '2020-07-22 11:45:30'),
(3, 'SHUBHAM VISHWAKARMA', 'sv9204081@gmail.com', '7470692361', NULL, 'ka bhai kaisan', '2020-07-22 11:47:41'),
(4, 'Dr.Doom', 'soyalnamdev5467@gmail.com', '6574839234', NULL, 'gjtgyjgtjt', '2020-07-22 11:49:12'),
(5, 'SHUBHAM VISHWAKARMA', 'sv9204081@gmail.com', '7470692361', 'done', 'Is bar ho gay achhe se le', '2020-07-22 11:52:35'),
(6, 'Rajneesh Tiwari', 'gokaran@gmail.com', '6574839234', 'Hello! shubham', 'nadi chaliye', '2020-07-22 11:55:18'),
(7, 'Rajneesh Tiwari', 'gokaran@gmail.com', '6574839234', 'Hello! shubham', 'nadi chaliye', '2020-07-22 11:55:23'),
(8, 'Rehan', 'soyalnamdev5467@gmail.com', '6574839234', 'Hello! shubham', 'ertrety', '2020-07-22 11:57:13'),
(9, 'shubham', 'soyalnamdev5467@gmail.com', '8085647382', 'done', 'dfrhdr', '2020-07-22 11:58:33'),
(10, 'shubham', 'soyalnamdev5467@gmail.com', '8085647382', 'done', 'dfrhdr', '2020-07-22 11:58:53'),
(11, 'RANU', 'shubham@gamil.com', '8085256283', 'Hello! shubham', '10RS. DEDE', '2020-07-22 22:30:57'),
(12, 'Rehan', 'sv9204081@gmail.com', '6574839234', 'Hello! shubham', 'no ball h', '2020-07-22 22:32:09'),
(13, 'shubham', 'sv9204081@gmail.com', '1574839234', 'Hello! shubham', 'uyrttyr', '2020-07-22 22:45:41'),
(14, 'SHUBHAM VISHWAKARMA', 'soyalnamdev5467@gmail.com', '8085256283', 'Hello! shubham', 'GHDRFHDRG', '2020-07-24 11:00:56'),
(15, 'soyal namdev', 'soyalnamdev5467@gmail.com', '8085647382', 'Hello! shubham', 'jkfghdg', '2020-07-24 11:15:27'),
(16, 'Rehan', 'rehankhan5467@gamil.com', '1574839234', 'Kabe Shubham', 'fgdfgdcgd', '2020-07-24 11:59:05'),
(17, 'Rehan', 'rehankhan5467@gamil.com', '1574839234', 'Kabe Shubham', 'fgdfgdcgd', '2020-07-24 12:00:46'),
(18, 'Dr.Doom', 'soyalnamdev5467@gmail.com', '6574839234', 'Hello! shubham', 'I have a complain about shubham vishwakarma.', '2020-07-24 19:25:16'),
(19, 'Rehan', 'shubham@gamil.com', '1574839234', 'Hello! shubham', 'e4t5r', '2020-07-24 19:28:47'),
(20, 'Pramod', 'sv9204081@gmail.com', '6574839234', 'Hello! shubham', 'dryryr', '2020-07-27 12:02:45'),
(21, 'tv', 'soyalnamdev5467@gmail.com', '6574839234', 'Hello! shubham', 'dhrh', '2020-07-27 12:11:32'),
(22, 'SHUBHAM VISHWAKARMA', 'sv9204081@gmail.com', '7470692361', 'Hello! shubham', 'Ho gaya kaam', '2020-07-27 23:56:58'),
(23, 'shubham', 'sv9204081@gmail.com', '6574839234', 'Hello! shubham', '5y5685', '2020-07-27 23:42:11'),
(24, 'rex', 'Dr.Doom@gmail.com', '8085256283', 'dgd', 'dgdfgd', '2020-07-28 00:36:27'),
(25, 'Rajneesh Tiwari', 'rajneeshtiwari65@gmail.co', '8085647382', 'compliment', 'very good service', '2020-07-28 20:46:38'),
(26, 'shubham', 'soyalnamdev5467@gmail.com', '8085647382', 'compliment', 'fdghfdhg', '2020-07-28 21:31:23'),
(27, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'Kabe Shubham', 'drrty', '2020-07-31 17:19:51'),
(28, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'Kabe Shubham', 'drrty', '2020-07-31 17:26:08'),
(29, 'shubham', 'soyalnamdev5467@gmail.com', '6574839234', 'Kabe Shubham', 'drrty', '2020-07-31 17:26:28'),
(30, 'Dr.Doom', 'soyalnamdev5467@gmail.com', '6574839234', 'Hello! shubham', 'fgvc', '2020-08-02 23:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `sno` int(6) NOT NULL,
  `title` text NOT NULL,
  `description` varchar(1000) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `cat1` text NOT NULL,
  `cat2` text NOT NULL,
  `cat3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`sno`, `title`, `description`, `slug`, `icon`, `color`, `date`, `cat1`, `cat2`, `cat3`) VALUES
(1, 'Home Appliance', '  We have experts for your home services.', 'first-service', 'tv', '#ff689b', '2020-07-31 17:19:15', 'AC', 'TV', 'refrigerator'),
(10, 'Electrical', ' Best elecrician all over the world.', 'second-service', 'plug', '#e9bf06', '2020-07-28 23:09:37', 'setting', 'fixing', 'launching'),
(11, 'Plumbing', ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatu', 'third-service', 'shower', '#3fcdc7', '2020-07-27 23:44:17', 'plumber', 'material', 'service'),
(12, 'Workers', '  Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'fourth-service', 'people-carry', '#41cf2e', '2020-07-27 23:44:54', 'worker', 'paiment', 'service'),
(13, 'Carpenters', ' segdhg', 'fifth-service', 'gavel', '#ff689b', '2020-07-27 23:45:21', 'carpenter', 'material', 'service');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookservices`
--
ALTER TABLE `bookservices`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookservices`
--
ALTER TABLE `bookservices`
  MODIFY `sno` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `sno` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
