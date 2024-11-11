-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2024 at 05:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixaguru`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_responder`
--

CREATE TABLE `ad_responder` (
  `ar_id` int(11) NOT NULL,
  `ar_name` varchar(50) NOT NULL,
  `ar_options` text NOT NULL,
  `ar_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api` varchar(300) NOT NULL,
  `site` varchar(500) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `active_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `autoresponder`
--

CREATE TABLE `autoresponder` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ar_name` varchar(100) NOT NULL,
  `ar_details` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bonusdetails`
--

CREATE TABLE `bonusdetails` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(250) NOT NULL,
  `b_link` varchar(500) NOT NULL,
  `b_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `campaign_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('fd60q4jk0qdibo4b70p1niobv1dd7v97', '192.168.29.28', 1709527343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393532373039313b70726963657c693a303b5f5f63695f766172737c613a313a7b733a353a227072696365223b733a333a226f6c64223b7d61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b),
('lkrqcpioqsqvdp12mjdt8l6hm4609iqe', '192.168.29.28', 1709526602, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393532363630323b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b),
('v8sluse9mvghfnup00psq3iio2rqe3g5', '192.168.29.28', 1709527091, 0x5f5f63695f6c6173745f726567656e65726174657c693a313730393532373039313b70726963657c693a303b5f5f63695f766172737c613a313a7b733a353a227072696365223b733a333a226f6c64223b7d757365725f69647c733a343a2231313034223b656d61696c7c733a31373a22757365724070697861677572752e636f6d223b6d656d6265725f6c6f67696e7c623a313b61646d696e5f6d656d6265725f6c6f67696e7c623a303b6163636573735f6c6576656c7c733a313a2239223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a343a2275736572223b66616365626f6f6b5f706f73747c623a303b);

-- --------------------------------------------------------

--
-- Table structure for table `coupon_code`
--

CREATE TABLE `coupon_code` (
  `cp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `coupon_code` text NOT NULL,
  `discount_set` varchar(100) NOT NULL,
  `discount_per_price` varchar(100) NOT NULL,
  `discount_create_time` datetime NOT NULL,
  `discount_expire_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `edited_video`
--

CREATE TABLE `edited_video` (
  `id` int(11) NOT NULL,
  `parent_video` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fb_ads`
--

CREATE TABLE `fb_ads` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `page_id` varchar(50) NOT NULL,
  `advertname` varchar(200) NOT NULL,
  `image_path` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `call_to_action` varchar(500) NOT NULL,
  `product_heading` varchar(200) NOT NULL,
  `objective` varchar(50) NOT NULL,
  `optimization` varchar(50) NOT NULL,
  `billing_event` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `campaign_id` varchar(50) NOT NULL,
  `adset_id` varchar(50) NOT NULL,
  `creative_id` varchar(50) NOT NULL,
  `ads_id` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fb_details`
--

CREATE TABLE `fb_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fb_user_id` varchar(25) NOT NULL,
  `account_id` varchar(25) NOT NULL,
  `app_id` varchar(30) NOT NULL,
  `app_secret` varchar(100) NOT NULL,
  `access_token` varchar(500) NOT NULL,
  `failure_message` varchar(250) NOT NULL,
  `datetime` datetime NOT NULL,
  `expire_access_token` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landingpage`
--

CREATE TABLE `landingpage` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `list_id` varchar(100) NOT NULL,
  `ar_id` varchar(100) NOT NULL,
  `ar_htmlform` text NOT NULL,
  `design` longblob NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pagedata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lp_templates`
--

CREATE TABLE `lp_templates` (
  `tempid` int(11) NOT NULL,
  `temp_design` longblob NOT NULL,
  `temp_status` tinyint(4) NOT NULL,
  `temp_fonts` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `pl_id` int(11) NOT NULL,
  `pl_name` varchar(255) NOT NULL,
  `pl_price` float(10,2) NOT NULL,
  `pl_currency` varchar(10) NOT NULL DEFAULT 'USD',
  `interval` varchar(200) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `plan_description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `interval_count` varchar(50) NOT NULL,
  `plan_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`pl_id`, `pl_name`, `pl_price`, `pl_currency`, `interval`, `create_datetime`, `update_datetime`, `plan_description`, `user_id`, `interval_count`, `plan_type`) VALUES
(1, 'Plan 3', 41.00, 'USD', '31', '2023-05-27 09:17:32', '2023-11-23 13:52:50', '                   100 images\n100 logos', 20, 'month', 'paid'),
(9, 'Free', 0.00, 'USD', '7', '2024-03-04 05:30:02', '2024-03-04 05:30:02', 'Free Trial Plan', 20, 'week', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `qg_video_templates`
--

CREATE TABLE `qg_video_templates` (
  `ID` bigint(20) NOT NULL,
  `raw_data` varchar(1000) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `name` varchar(20) NOT NULL,
  `registered` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `qg_video_templates`
--

INSERT INTO `qg_video_templates` (`ID`, `raw_data`, `user_id`, `title`, `name`, `registered`) VALUES
(30, '{\"type\":\"serve\",\"action\":\"copy\",\"id\":\"95d6a431-daee-4201-9060-e08fd0fd77ec\",\"render\":\"507c681e-7827-46aa-a9b2-d1ad33fc10f3\",\"owner\":\"qj9pibxbma\",\"status\":\"ready\",\"url\":\"https://cdn.shotstack.io/au/stage/qj9pibxbma/507c681e-7827-46aa-a9b2-d1ad33fc10f3.mp4\",\"error\":null,\"completed\":\"2023-06-23T12:32:45.856Z\"}', 31, 'Hi', 'WAZm9aqs.mp4', '2023-06-23 07:02:46'),
(31, '{\"type\":\"serve\",\"action\":\"copy\",\"id\":\"3378066e-87d2-4b89-8d15-b37d363faac8\",\"render\":\"c31b0370-3cf1-4319-bea8-2dbd9f411f6c\",\"owner\":\"qj9pibxbma\",\"status\":\"ready\",\"url\":\"https://cdn.shotstack.io/au/stage/qj9pibxbma/c31b0370-3cf1-4319-bea8-2dbd9f411f6c.mp4\",\"error\":null,\"completed\":\"2023-06-23T12:33:25.344Z\"}', 31, 'Hi', 'US3B7HXC.mp4', '2023-06-23 07:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `split_test`
--

CREATE TABLE `split_test` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `fb_ads_id` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_users`
--

CREATE TABLE `sub_users` (
  `id` int(11) NOT NULL,
  `parent_user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `sub_user_type` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `suggestion_id` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `suggestion` varchar(500) NOT NULL,
  `suggestion_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `s_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `frontend` int(11) NOT NULL DEFAULT 1,
  `oto` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_category`
--

CREATE TABLE `suggestion_category` (
  `s_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suggestion_category`
--

INSERT INTO `suggestion_category` (`s_id`, `name`, `status`) VALUES
(1, 'Template design', 1),
(2, 'Increase Effectiveness With Proper Use Of Colors', 1),
(3, 'General', 1);

-- --------------------------------------------------------

--
-- Table structure for table `template_importer`
--

CREATE TABLE `template_importer` (
  `id` int(11) NOT NULL,
  `importe_name` varchar(255) NOT NULL,
  `imported_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme_setting`
--

CREATE TABLE `theme_setting` (
  `ts_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data_key` varchar(200) NOT NULL,
  `data_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `theme_setting`
--

INSERT INTO `theme_setting` (`ts_id`, `user_id`, `data_key`, `data_value`) VALUES
(42, 20, 'pg_logo_image', 'logo.png'),
(43, 20, 'pg_favicon_image', 'favicon.png'),
(44, 20, 'pg_preloader_image', 'preloader.gif'),
(62, 20, 'smtp_settings_data', '{\"smtp_host\":\"mail.kamleshyadav.com\",\"smtp_port\":\"465\",\"smtp_user\":\"support@kamleshyadav.com\",\"smtp_pass\":\"^G-9lGru~7Z8\",\"enable_smpt\":\"true\",\"mail_title\":\"Pixaguru Support \",\"from_mail\":\"support@kamleshyadav.com\",\"smpt_crypto\":\"ssl\"}'),
(63, 20, 'paymentSetting', '{\"stripe_publishKey\":\"pk_test_51F39j4Dn0Yc5TNXRz2wgu98A42cC6JDFDBQMnCrjHJuoT8UCJ6atcbuDBxmfKil2IAEF9FawPCKl0ICn60pgHCJB00ccN0aCz0\",\"strpe_secret_key\":\"sk_test_51F39j4Dn0Yc5TNXRktDp0b1CdEwNxiLIHg2e3jihOgrIKXUyNn8VzJKOdHS76RIbU8Hb4xnDbFIIfO0EJXoJook20054O5hd9t\",\"paypal_client_id\":\"AV5uTH4UXLFTm42A3QrkolHzAP8k1tWWDruQwY3sInjooCxsVcDGBKSpNXhIVxyMGaX3Itn-yoOwFag9\",\"sandbox_accounts\":\"sb-u4jdx27299772@business.example.com\"}'),
(64, 20, 'bg_remove_api', '{\"appId\":\"19188\",\"secret_key\":\"1gc7ghrsulggitvs1l95te99a9p7aqbd1ta6p0jdu58hn1029f8v\",\"AuthKey\":\"MTg1NDQ6bG1jOTI1ZTZkcGhuNjdxYW1oOTdoZ21nams2NmthbWZzNjRhamhmZ2lnbWJqa2pmcW9hMA==\"}'),
(65, 20, 'apiSetting', '{\"open_ai_key\":\"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\",\"youtube_api_key\":\"AIzaSyDCx-bN76PUkynehO4Xf3hXVLT3L5w_h-0\",\"pixabay_key\":\"4298772-5bcc33553ad61ce64e43177ae\"}'),
(66, 20, 'language', 'english'),
(67, 20, 'siteTitle', 'Pixaguru Update');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_video`
--

CREATE TABLE `uploaded_video` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campaign_name` varchar(250) NOT NULL,
  `a_title` varchar(250) NOT NULL,
  `r_title` varchar(250) NOT NULL,
  `size` float NOT NULL,
  `dimension` varchar(250) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_video_thumb_list`
--

CREATE TABLE `uploaded_video_thumb_list` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `thumb_name` varchar(250) NOT NULL,
  `slot_time` float NOT NULL,
  `time` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL,
  `code` varchar(50) NOT NULL,
  `access_level` varchar(50) NOT NULL COMMENT 'Plan ID ',
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `source` varchar(20) NOT NULL,
  `subscription_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_no`, `profile_pic`, `password`, `status`, `datetime`, `code`, `access_level`, `role`, `source`, `subscription_id`) VALUES
(20, 'Admin', 'ravi.kushwah@pixelnx.com', '874512653', 'uploads/user_20/profile_pic.png', '202cb962ac59075b964b07152d234b70', 1, '2018-04-24 04:11:17', 'ff1c1e7c', '0', 'admin', '', 0),
(1104, 'user', 'user@pixaguru.com', '', 'uploads/user_20/profile_pic.png', '32c8c0b9c740472cacdaaebb44802140', 1, '2024-03-04 05:30:24', '', '9', 'user', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_download_mange`
--

CREATE TABLE `user_download_mange` (
  `n_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_image`
--

CREATE TABLE `user_image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `thumb_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `usp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `plan_id` int(11) NOT NULL,
  `payment_method` varchar(50) NOT NULL DEFAULT '',
  `stripe_subscription_id` varchar(50) NOT NULL,
  `stripe_customer_id` varchar(50) NOT NULL,
  `stripe_plan_id` varchar(50) NOT NULL,
  `plan_amount` float(10,2) NOT NULL,
  `plan_amount_currency` varchar(10) NOT NULL,
  `plan_interval` varchar(10) NOT NULL,
  `plan_interval_count` tinyint(2) NOT NULL,
  `plan_period_start` datetime NOT NULL,
  `plan_period_end` datetime NOT NULL,
  `payer_email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`usp_id`, `user_id`, `plan_id`, `payment_method`, `stripe_subscription_id`, `stripe_customer_id`, `stripe_plan_id`, `plan_amount`, `plan_amount_currency`, `plan_interval`, `plan_interval_count`, `plan_period_start`, `plan_period_end`, `payer_email`, `created`, `status`) VALUES
(4, 1104, 9, 'TrialPeriod', 'admin_mCYpK0rS&fAN', 'admin_iJnqyXAbxel$SD', 'admin_9W$aizNfJY', 0.00, 'USD', 'week', 1, '2024-03-04 05:30:24', '2024-03-11 05:30:24', 'user', '2024-03-04 05:30:24', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `user_templates`
--

CREATE TABLE `user_templates` (
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `template_data` longtext NOT NULL,
  `gradient_background` varchar(100) NOT NULL,
  `thumb` varchar(500) NOT NULL,
  `template_size` varchar(50) NOT NULL DEFAULT '1200x628',
  `save_as_template` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL,
  `modifydate` datetime NOT NULL,
  `access_level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL,
  `template_access_leavel` int(11) NOT NULL,
  `template_custom_size` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_responder`
--
ALTER TABLE `ad_responder`
  ADD PRIMARY KEY (`ar_id`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `autoresponder`
--
ALTER TABLE `autoresponder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonusdetails`
--
ALTER TABLE `bonusdetails`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_code`
--
ALTER TABLE `coupon_code`
  ADD PRIMARY KEY (`cp_id`);

--
-- Indexes for table `edited_video`
--
ALTER TABLE `edited_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_ads`
--
ALTER TABLE `fb_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fb_details`
--
ALTER TABLE `fb_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landingpage`
--
ALTER TABLE `landingpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lp_templates`
--
ALTER TABLE `lp_templates`
  ADD PRIMARY KEY (`tempid`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `qg_video_templates`
--
ALTER TABLE `qg_video_templates`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `split_test`
--
ALTER TABLE `split_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `sub_users`
--
ALTER TABLE `sub_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`suggestion_id`);

--
-- Indexes for table `suggestion_category`
--
ALTER TABLE `suggestion_category`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `template_importer`
--
ALTER TABLE `template_importer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_setting`
--
ALTER TABLE `theme_setting`
  ADD PRIMARY KEY (`ts_id`);

--
-- Indexes for table `uploaded_video`
--
ALTER TABLE `uploaded_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploaded_video_thumb_list`
--
ALTER TABLE `uploaded_video_thumb_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_download_mange`
--
ALTER TABLE `user_download_mange`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `user_image`
--
ALTER TABLE `user_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`usp_id`);

--
-- Indexes for table `user_templates`
--
ALTER TABLE `user_templates`
  ADD PRIMARY KEY (`template_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_responder`
--
ALTER TABLE `ad_responder`
  MODIFY `ar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `autoresponder`
--
ALTER TABLE `autoresponder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bonusdetails`
--
ALTER TABLE `bonusdetails`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `campaign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=744;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `edited_video`
--
ALTER TABLE `edited_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `fb_ads`
--
ALTER TABLE `fb_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fb_details`
--
ALTER TABLE `fb_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landingpage`
--
ALTER TABLE `landingpage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lp_templates`
--
ALTER TABLE `lp_templates`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `qg_video_templates`
--
ALTER TABLE `qg_video_templates`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `split_test`
--
ALTER TABLE `split_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sub_users`
--
ALTER TABLE `sub_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `suggestion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `suggestion_category`
--
ALTER TABLE `suggestion_category`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `template_importer`
--
ALTER TABLE `template_importer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `theme_setting`
--
ALTER TABLE `theme_setting`
  MODIFY `ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `uploaded_video`
--
ALTER TABLE `uploaded_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uploaded_video_thumb_list`
--
ALTER TABLE `uploaded_video_thumb_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;

--
-- AUTO_INCREMENT for table `user_download_mange`
--
ALTER TABLE `user_download_mange`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_image`
--
ALTER TABLE `user_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1346;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `usp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_templates`
--
ALTER TABLE `user_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3216;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
