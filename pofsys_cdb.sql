-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2020 at 02:04 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pofsys_cdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_email_verification`
--

CREATE TABLE `pfc_tbl_email_verification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL COMMENT '1 or 0',
  `expired` int(11) DEFAULT NULL COMMENT '1 or 0',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pfc_tbl_email_verification`
--

INSERT INTO `pfc_tbl_email_verification` (`id`, `user_id`, `code`, `verified`, `expired`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(18, 444, '931748', 1, 0, 1, '2019-11-06 08:58:02', 1, '2019-11-06 08:57:57', NULL, NULL),
(21, 449, '377408', 1, 0, 1, '2019-11-07 01:38:04', 1, '2019-11-07 01:37:57', NULL, NULL),
(25, 458, '222376', 1, 0, 1, '2019-11-08 03:28:23', 1, '2019-11-08 03:28:21', NULL, NULL),
(26, 459, '917309', 1, 0, 1, '2019-11-08 06:55:34', 1, '2019-11-08 06:55:25', NULL, NULL),
(37, 467, '619298', 0, 0, 0, '2019-11-13 05:59:59', NULL, NULL, NULL, NULL),
(38, 470, '392361', 0, 0, 0, '2019-11-12 22:16:32', NULL, NULL, NULL, NULL),
(43, 480, '254938', 1, 1, 1, '2019-11-14 08:17:29', NULL, '2019-11-14 08:17:45', NULL, NULL),
(44, 481, '708964', 1, 0, 1, '2019-11-20 09:42:58', 1, '2019-11-20 09:42:47', NULL, NULL),
(54, 491, '931035', 0, 0, 1, '2019-12-17 06:07:22', NULL, '2019-12-17 06:07:22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_logs`
--

CREATE TABLE `pfc_tbl_logs` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `table_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_otp`
--

CREATE TABLE `pfc_tbl_otp` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL,
  `verified` int(11) DEFAULT NULL COMMENT '1 or 0',
  `expired` int(11) DEFAULT NULL COMMENT '1 or 0',
  `otp_type` enum('login','forgotpassword') DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pfc_tbl_otp`
--

INSERT INTO `pfc_tbl_otp` (`id`, `user_id`, `otp`, `verified`, `expired`, `otp_type`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(368, 376, '600796', 1, NULL, NULL, NULL, '2019-10-31 02:19:39', NULL, '2019-10-31 02:19:34', NULL, NULL),
(370, 378, '283698', NULL, NULL, NULL, NULL, '2019-10-31 03:14:13', NULL, '2019-10-31 03:14:13', NULL, NULL),
(384, 427, '728107', NULL, NULL, NULL, NULL, '2019-11-06 01:33:07', NULL, '2019-11-06 01:33:07', NULL, NULL),
(387, 439, '695896', 1, NULL, NULL, NULL, '2019-11-06 03:45:24', NULL, '2019-11-06 03:45:19', NULL, NULL),
(394, 444, '584753', 1, NULL, NULL, NULL, '2019-11-13 06:37:18', NULL, '2019-11-13 06:37:13', NULL, NULL),
(407, 458, '284018', NULL, NULL, NULL, NULL, '2019-11-13 03:47:03', NULL, '2019-11-08 06:43:14', NULL, NULL),
(417, 444, '105476', NULL, NULL, NULL, NULL, '2019-11-08 05:52:03', NULL, '2019-11-08 05:52:03', NULL, NULL),
(418, 444, '349434', NULL, NULL, NULL, NULL, '2019-11-08 05:54:18', NULL, '2019-11-08 05:54:18', NULL, NULL),
(419, 459, '209861', 1, 1, NULL, NULL, '2019-11-12 00:41:54', NULL, '2019-11-12 00:41:51', NULL, NULL),
(420, 459, '404299', 1, NULL, NULL, NULL, '2019-11-08 06:56:34', NULL, '2019-11-08 06:56:25', NULL, NULL),
(586, 449, '956199', 0, 0, NULL, 1, '2019-11-14 06:39:40', NULL, '2019-11-14 06:39:40', NULL, NULL),
(587, 449, '489933', 0, 0, NULL, 1, '2019-11-14 06:39:42', NULL, '2019-11-14 06:39:42', NULL, NULL),
(600, 480, '578250', 1, 1, NULL, 1, '2019-11-14 08:19:14', NULL, '2019-11-14 08:19:30', NULL, NULL),
(601, 332, '932400', NULL, NULL, 'forgotpassword', 1, '2019-11-18 16:00:00', NULL, NULL, NULL, NULL),
(602, 332, '843778', NULL, NULL, 'forgotpassword', 1, '2019-11-18 16:00:00', NULL, NULL, NULL, NULL),
(603, 332, '157063', NULL, NULL, 'login', 1, '2019-11-18 16:00:00', NULL, NULL, NULL, NULL),
(604, 332, '684508', NULL, NULL, 'login', 1, '2019-11-18 16:00:00', NULL, NULL, NULL, NULL),
(605, 332, '563551', NULL, NULL, 'login', 1, '2019-11-18 16:00:00', NULL, NULL, NULL, NULL),
(607, 332, '765058', NULL, NULL, 'login', 1, '2019-11-20 16:00:00', NULL, NULL, NULL, NULL),
(610, 361, '710095', 0, 0, NULL, 1, '2019-11-25 01:06:28', NULL, '2019-11-25 01:06:28', NULL, NULL),
(654, 361, '977776', 0, 0, 'forgotpassword', 1, '2019-11-27 02:30:16', NULL, '2019-11-27 02:30:16', NULL, NULL),
(655, 361, '466888', 1, 1, 'forgotpassword', 1, '2019-11-27 02:32:14', NULL, '2019-11-27 02:32:18', NULL, NULL),
(656, 439, '985503', 0, 0, NULL, 1, '2019-11-28 06:29:53', NULL, '2019-11-28 06:29:53', NULL, NULL),
(657, 361, '644839', 1, 1, 'forgotpassword', 1, '2019-12-03 02:04:40', NULL, '2019-12-03 02:04:49', NULL, NULL),
(660, 376, '287617', 1, 1, 'forgotpassword', 1, '2019-12-04 07:30:09', NULL, '2019-12-04 07:30:16', NULL, NULL),
(661, 458, '662149', 1, 1, NULL, 1, '2019-12-05 00:52:44', NULL, '2019-12-05 00:52:52', NULL, NULL),
(662, 444, '951762', 1, NULL, NULL, NULL, '2020-01-02 07:24:40', NULL, '2020-01-02 07:24:40', NULL, NULL),
(663, 361, '546375', NULL, NULL, 'forgotpassword', 1, '2020-01-06 16:00:00', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_product`
--

CREATE TABLE `pfc_tbl_product` (
  `id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_user`
--

CREATE TABLE `pfc_tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_num` varchar(50) DEFAULT NULL,
  `password` text,
  `code` varchar(100) DEFAULT NULL,
  `remember_token` text,
  `active` int(11) NOT NULL DEFAULT '1',
  `type` varchar(100) DEFAULT NULL COMMENT '"first type of registration here"',
  `email_connect` int(11) DEFAULT NULL COMMENT 'Yes = 1 : No=0',
  `fb_connect` int(11) DEFAULT NULL COMMENT 'Yes = 1 : No=0',
  `email_verified` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `sms_verified` int(11) NOT NULL DEFAULT '0',
  `sms_verified_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pfc_tbl_user`
--

INSERT INTO `pfc_tbl_user` (`id`, `username`, `email`, `mobile_num`, `password`, `code`, `remember_token`, `active`, `type`, `email_connect`, `fb_connect`, `email_verified`, `email_verified_at`, `sms_verified`, `sms_verified_at`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(332, 'rhespinosa', '1@gmail.com', '09563256254', '$2y$10$iz3OIWYhe0vC/tNqreWrf.gklsHSCgd63dnpiqMOXb1JtP38CDl2K', '127262', 'TjFwdueEICqokpIbhdCZZt1CXMAAVwpYLMpv4BfKSzSY1PVD5c8BrtIdyp0W', 1, NULL, NULL, NULL, 1, NULL, 1, NULL, 1, '2019-11-28 05:52:38', 1, '2019-11-13 16:00:00', NULL, NULL),
(361, 'markrenz', 'mfolimberio.aktus@gmail.com', '09461407480', '$2y$10$Tzz8gTWHIHueQB/vu0Tdqe/nY2OauXM4zrr06qdF5QHNeubuB8/cO', '145596', NULL, 1, NULL, NULL, NULL, 1, '2019-10-30 01:07:24', 1, '2019-10-30 01:08:33', 1, '2020-01-07 01:25:34', 1, '2020-01-06 16:00:00', NULL, NULL),
(376, 'jdtolentino', 'jltolentino0106@gmail.com', '09228643312', '$2y$10$y.2CrY4RaPUD1JEAM5tJWuiXSqUf2GIs8seDtfK2egSIHAoxb6Foe', '353395', NULL, 1, NULL, NULL, NULL, 1, '2019-10-31 02:17:36', 1, NULL, 1, '2019-12-04 07:30:27', 1, '2019-12-04 07:30:35', NULL, NULL),
(378, '09352270914', 'jdmetran@sjcgroup.ph', '09483600818', 'password', '706592', NULL, 1, NULL, NULL, NULL, 1, '2019-10-31 03:13:04', 0, NULL, 1, '2019-10-31 03:14:19', NULL, '2019-10-31 03:14:13', NULL, NULL),
(418, 'LMV.Ace', 'victorioleonard@gmail.com', '09984477257', '$2y$10$nEPW8LKv7FyQK.uB53uMRug0Aq4tFjDnc5ry0HpHkuoeEm.SBcX3m', '40720', NULL, 1, NULL, NULL, NULL, 0, NULL, 0, NULL, 1, '2019-11-12 06:44:45', 1, '2019-11-11 16:00:00', NULL, NULL),
(427, 'jmnuqui01', 'jmnuqui01@gmail.com', '09299501827', '$2y$10$NafJmIoP/cln4TwgCGWhEuWziyEVhj/Ref73Q9jqlJJfqvmvqXVfC', NULL, NULL, 1, NULL, NULL, NULL, 1, '2019-11-06 01:28:45', 0, NULL, 1, '2019-11-13 03:29:08', 1, '2019-11-11 02:05:59', NULL, NULL),
(439, 'jcvergara', 'jcvergara@sjcgroup.ph', '09072119301', '$2y$10$.zx68kJgtkbE9D6HnqAfwOY4ft65N5fJXSBZE6NEmZqvDCf/wOtXS', '103400', NULL, 1, NULL, NULL, NULL, 1, '2019-11-06 03:38:03', 1, NULL, 1, '2019-11-14 06:39:30', 1, '2019-11-14 06:39:47', NULL, NULL),
(444, 'samplessss', 'nvalerio747@gmail.com', '09953039622', '$2y$10$QzvRigOH/vkE2WsNRE2OW.7FexocFt0FgFAkoqO.Sd3U6qzYHxlnW', '786303', NULL, 1, NULL, NULL, NULL, 1, '2019-11-06 08:57:57', 1, '2020-01-02 07:24:40', 1, '2020-01-02 07:24:55', 1, '2020-01-02 07:24:54', NULL, NULL),
(449, NULL, 'jcvergara.aktus@gmail.com', NULL, '$2y$10$1IZVFcf/R6a4HfP.Q3sPueFrWCIkOrrZJoVu44wcTFDFatEaD0/iO', '976404', NULL, 1, NULL, NULL, NULL, 1, '2019-11-07 01:37:58', 0, NULL, 1, '2019-11-25 07:22:19', NULL, '2019-11-25 07:22:23', NULL, NULL),
(458, 'jmnuqui', 'jmnuqui@sjcgroup.ph', '09055703101', '$2y$10$dfO4hfAwJMun6yzSIKX6puoU1RfMk3tNcZ/hN.v7M3gT0tOWdEJG6', '222376', NULL, 1, NULL, NULL, NULL, 1, '2019-11-08 03:28:21', 1, '2019-12-05 00:52:52', 1, '2019-12-05 00:52:44', 1, '2019-12-05 00:52:52', NULL, NULL),
(459, 'test', 'nperdigon@sjcgroup.ph', '09953039621', '$2y$10$lqfJXf2eneIh1gmX/Q/ZPOUyi8.6EZkOEqOcuvGHM/RHCUbsjusta', '578871', NULL, 1, NULL, NULL, NULL, 1, '2019-11-08 06:55:25', 1, '2019-11-08 06:56:25', 1, '2019-11-13 07:29:18', NULL, '2019-11-12 06:40:22', NULL, NULL),
(467, NULL, 'reymond.espinosa06@gmail.com', NULL, '$2y$10$imE0dveS6qURdQQv3fmzzeMRtKRI6cdaIrhy1uiuT0FVFuVxmGq6C', NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, 0, NULL, 0, '2019-11-13 06:12:29', NULL, NULL, NULL, NULL),
(470, NULL, 'rhespinosa@sjcgroup.ph', NULL, '$2y$10$FaPsNz3fqo0/b3.eath5zOTLi1d4gJD9KNBDXtvYfYF9fT3otLH7a', NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, 0, NULL, 0, '2019-11-13 07:58:25', NULL, NULL, NULL, NULL),
(480, 'aasamson', 'gelanicaalarsamcon26@gmail.com', '09205492674', '$2y$10$i1F.lX7ZrZtzPlWsko2OS.CiHcK1/a4yw7YvHPjkiJ3EjzcKtZ0yG', '254938', NULL, 1, 'app', 0, 0, 1, '2019-11-14 08:17:45', 1, '2019-11-14 08:19:30', 1, '2019-11-21 00:35:05', 1, '2019-11-21 00:35:02', NULL, NULL),
(481, NULL, 'vjohnree25@gmail.com', NULL, '$2y$10$mbeyFRIUqMx.VNBB9TNzM.TNo60DKDj7W/vWCWhn3IciqQ41N6A7a', '708964', NULL, 1, NULL, NULL, NULL, 1, '2019-11-20 09:42:47', 0, NULL, 1, '2019-11-20 09:42:59', NULL, '2019-11-20 09:42:47', NULL, NULL),
(491, NULL, 'hps.229888@gmail.com', NULL, '$2y$10$IGrdD8cK2SDIxAVvkkFqdOoL5Bqyxmnl78HzNckkiw8sMzvIOBX6W', '931035', NULL, 1, NULL, NULL, NULL, 1, NULL, 0, NULL, 1, '2019-12-17 06:09:34', NULL, '2019-12-17 06:07:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_user_info`
--

CREATE TABLE `pfc_tbl_user_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_num` varchar(50) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `telephone_num` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pfc_tbl_user_info`
--

INSERT INTO `pfc_tbl_user_info` (`id`, `user_id`, `user_num`, `first_name`, `middle_name`, `last_name`, `telephone_num`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(127, 361, '361', 'Mark Renz', 'Fernandez', 'Olimberio', '09461407480', 1, '2019-11-25 08:08:37', 1, '2019-11-25 08:08:42', NULL, NULL),
(133, 376, '376', 'Jan Lawrence', 'D.C.', 'Tolentino', '123123', 1, '2019-10-31 02:17:58', NULL, '2019-10-31 02:17:58', NULL, NULL),
(135, 378, '378', 'von', 'd', 'metran', '234', 1, '2019-10-31 03:14:13', NULL, '2019-10-31 03:14:13', NULL, NULL),
(151, 418, '418', 'Leonard', 'M', 'Victorio', '09984477257', 1, '2019-11-05 07:33:04', NULL, '2019-11-05 07:33:04', NULL, NULL),
(156, 427, '427', 'Jeremiaha', 'Morales', 'Nuqui', '99999999', 1, '2019-11-11 01:35:33', 1, '2019-11-11 01:35:36', NULL, NULL),
(160, 439, '439', 'John Ree', 'Ceniza', 'Vergara', '86366015', 1, '2019-11-07 02:37:43', NULL, '2019-11-07 02:37:36', NULL, NULL),
(163, 444, '444', 'samples', 'samples', 'sampless', '12361365', 1, '2020-01-02 07:22:51', 1, '2020-01-02 07:22:51', NULL, NULL),
(174, 458, '458', 'Jeremiah', 'morales', 'Nuqui', '09055703101', 1, '2019-12-05 00:53:34', 1, '2019-12-05 00:53:42', NULL, NULL),
(175, 459, '459', 'tset', 'test', 'test', '12631536', 1, '2019-11-08 06:55:57', NULL, '2019-11-08 06:55:57', NULL, NULL),
(190, 480, '480', 'Angelica', 'A', 'Samson', '09205492674', 1, '2019-11-18 08:53:56', 1, '2019-11-18 08:53:56', NULL, NULL),
(191, 332, '09563256254', 'Reymond', 'Hallazgo', 'Espinosa', '09563256254', 1, '2019-11-21 06:48:17', 1, '2019-11-20 16:00:00', NULL, NULL),
(200, 491, '491', 'Maam', 'MAam', 'Maam', '090909090909', 0, '2019-12-17 06:11:53', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_user_membership_type`
--

CREATE TABLE `pfc_tbl_user_membership_type` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `membership_type` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_user_notification`
--

CREATE TABLE `pfc_tbl_user_notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `receive_email` int(11) NOT NULL COMMENT '1 or 0',
  `receive_sms` int(11) NOT NULL COMMENT '1 or 0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pfc_tbl_user_notification`
--

INSERT INTO `pfc_tbl_user_notification` (`id`, `user_id`, `receive_email`, `receive_sms`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(76, 376, 1, 0, 1, '2019-10-31 02:17:58', NULL, '2019-10-31 02:17:58', NULL, NULL),
(78, 378, 1, 0, 1, '2019-10-31 03:14:13', NULL, '2019-10-31 03:14:13', NULL, NULL),
(86, 427, 1, 0, 1, '2019-11-06 01:33:06', NULL, '2019-11-06 01:33:06', NULL, NULL),
(89, 439, 0, 0, 1, '2019-11-07 01:24:44', NULL, '2019-11-07 01:24:37', NULL, NULL),
(92, 444, 1, 0, 1, '2019-11-06 08:58:22', NULL, '2019-11-06 08:58:22', NULL, NULL),
(94, 361, 1, 1, 1, '2019-12-17 08:48:32', 1, '2019-12-17 08:48:30', NULL, NULL),
(96, 458, 1, 0, 1, '2019-11-08 03:30:26', NULL, '2019-11-08 03:30:26', NULL, NULL),
(97, 459, 1, 0, 1, '2019-11-08 06:55:57', NULL, '2019-11-08 06:55:57', NULL, NULL),
(101, 467, 0, 0, 0, '2019-11-12 19:43:26', NULL, NULL, NULL, NULL),
(103, 470, 0, 0, 0, '2019-11-12 22:16:31', NULL, NULL, NULL, NULL),
(111, 480, 1, 1, 1, '2019-11-21 06:11:23', 1, '2019-11-21 06:11:20', NULL, NULL),
(112, 332, 1, 1, 1, '2019-11-21 06:48:17', 1, '2019-11-20 16:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_user_product`
--

CREATE TABLE `pfc_tbl_user_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_user_type_of_registration`
--

CREATE TABLE `pfc_tbl_user_type_of_registration` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL COMMENT 'email, mobile, fb',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pfc_tbl_user_type_of_registration`
--

INSERT INTO `pfc_tbl_user_type_of_registration` (`id`, `user_id`, `type`, `created_by`, `created_at`, `updated_by`, `updated_at`, `deleted_by`, `deleted_at`) VALUES
(104, 361, 'email', 1, '2019-10-30 01:07:24', NULL, '2019-10-30 01:07:24', NULL, NULL),
(145, 376, 'gmail', 1, '2019-10-31 02:17:36', NULL, '2019-10-31 02:17:36', NULL, NULL),
(147, 378, 'gmail', 1, '2019-10-31 03:13:04', NULL, '2019-10-31 03:13:04', NULL, NULL),
(198, 418, 'gmail', 1, '2019-11-05 07:32:16', NULL, '2019-11-05 07:32:16', NULL, NULL),
(206, 427, 'email', 1, '2019-11-07 01:37:54', 1, '2019-11-06 01:47:56', NULL, NULL),
(217, 439, 'gmail', 1, '2019-11-06 03:38:03', NULL, '2019-11-06 03:38:03', NULL, NULL),
(221, 444, 'email', 1, '2019-11-06 08:57:57', NULL, '2019-11-06 08:57:57', NULL, NULL),
(226, 449, 'email', 1, '2019-11-07 01:37:58', NULL, '2019-11-07 01:37:58', NULL, NULL),
(228, 427, 'gmail', 1, '2019-11-07 01:44:09', NULL, '2019-11-07 01:44:09', NULL, NULL),
(242, 458, 'email', 1, '2019-11-08 03:28:21', NULL, '2019-11-08 03:28:21', NULL, NULL),
(243, 459, 'email', 1, '2019-11-08 06:55:25', NULL, '2019-11-08 06:55:25', NULL, NULL),
(263, 467, 'app', 0, '2019-11-12 19:43:26', NULL, NULL, NULL, NULL),
(266, 470, 'app', 0, '2019-11-12 22:16:32', NULL, NULL, NULL, NULL),
(280, 480, 'app', 1, '2019-11-14 08:17:14', NULL, '2019-11-14 08:17:14', NULL, NULL),
(281, 481, 'email', 1, '2019-11-20 09:42:47', NULL, '2019-11-20 09:42:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pfc_tbl_user_verification`
--

CREATE TABLE `pfc_tbl_user_verification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` text NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pfc_tbl_email_verification`
--
ALTER TABLE `pfc_tbl_email_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `deleted_by` (`deleted_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `pfc_tbl_logs`
--
ALTER TABLE `pfc_tbl_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`);

--
-- Indexes for table `pfc_tbl_otp`
--
ALTER TABLE `pfc_tbl_otp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pfc_tbl_product`
--
ALTER TABLE `pfc_tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`);

--
-- Indexes for table `pfc_tbl_user`
--
ALTER TABLE `pfc_tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`);

--
-- Indexes for table `pfc_tbl_user_info`
--
ALTER TABLE `pfc_tbl_user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pfc_tbl_user_membership_type`
--
ALTER TABLE `pfc_tbl_user_membership_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pfc_tbl_user_notification`
--
ALTER TABLE `pfc_tbl_user_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pfc_tbl_user_product`
--
ALTER TABLE `pfc_tbl_user_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `pfc_tbl_user_type_of_registration`
--
ALTER TABLE `pfc_tbl_user_type_of_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pfc_tbl_user_verification`
--
ALTER TABLE `pfc_tbl_user_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_updated_by_deleted_by` (`created_by`,`updated_by`,`deleted_by`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pfc_tbl_email_verification`
--
ALTER TABLE `pfc_tbl_email_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `pfc_tbl_logs`
--
ALTER TABLE `pfc_tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pfc_tbl_otp`
--
ALTER TABLE `pfc_tbl_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=664;

--
-- AUTO_INCREMENT for table `pfc_tbl_product`
--
ALTER TABLE `pfc_tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pfc_tbl_user`
--
ALTER TABLE `pfc_tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=492;

--
-- AUTO_INCREMENT for table `pfc_tbl_user_info`
--
ALTER TABLE `pfc_tbl_user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `pfc_tbl_user_membership_type`
--
ALTER TABLE `pfc_tbl_user_membership_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pfc_tbl_user_notification`
--
ALTER TABLE `pfc_tbl_user_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `pfc_tbl_user_product`
--
ALTER TABLE `pfc_tbl_user_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pfc_tbl_user_type_of_registration`
--
ALTER TABLE `pfc_tbl_user_type_of_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `pfc_tbl_user_verification`
--
ALTER TABLE `pfc_tbl_user_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pfc_tbl_email_verification`
--
ALTER TABLE `pfc_tbl_email_verification`
  ADD CONSTRAINT `FK_pfc_tbl_email_verification_pfc_tbl_user` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pfc_tbl_otp`
--
ALTER TABLE `pfc_tbl_otp`
  ADD CONSTRAINT `pfc_tbl_otp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pfc_tbl_user_info`
--
ALTER TABLE `pfc_tbl_user_info`
  ADD CONSTRAINT `FK_tbl_user_info_tbl_user` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pfc_tbl_user_membership_type`
--
ALTER TABLE `pfc_tbl_user_membership_type`
  ADD CONSTRAINT `FK_tbl_user_membership_type_tbl_user` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pfc_tbl_user_notification`
--
ALTER TABLE `pfc_tbl_user_notification`
  ADD CONSTRAINT `FK_pfc_tbl_otp_pfc_tbl_user` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pfc_tbl_user_product`
--
ALTER TABLE `pfc_tbl_user_product`
  ADD CONSTRAINT `pfc_tbl_user_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `pfc_tbl_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pfc_tbl_user_product_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pfc_tbl_user_type_of_registration`
--
ALTER TABLE `pfc_tbl_user_type_of_registration`
  ADD CONSTRAINT `FK_pfc_tbl_type_of_registration_pfc_tbl_user` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pfc_tbl_user_verification`
--
ALTER TABLE `pfc_tbl_user_verification`
  ADD CONSTRAINT `FK_tbl_user_product_tbl_user` FOREIGN KEY (`user_id`) REFERENCES `pfc_tbl_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
