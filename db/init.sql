-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2024 at 05:40 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1


-- Create and use the database `pixelium`
CREATE DATABASE IF NOT EXISTS pixelium;
USE pixelium;


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pixaguru_share`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_responder`
--

CREATE TABLE `ad_responder` (
  `ar_id` int(11) NOT NULL,
  `ar_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ar_options` text COLLATE utf8_unicode_ci NOT NULL,
  `ar_status` tinyint(4) NOT NULL DEFAULT '1'
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
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active_datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bonusdetails`
--

CREATE TABLE `bonusdetails` (
  `b_id` int(11) NOT NULL,
  `b_name` varchar(250) NOT NULL,
  `b_link` varchar(500) NOT NULL,
  `b_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2b2a11b0e5ef491d3cdf667c604f90553aee083d', '::1', 1732858158, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323835383135383b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b),
('62b3e9231c54fb38d4ba460164f4039da96458ba', '::1', 1732856502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323835363530323b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b),
('6a505a66507669246a7b4155dba63133bd6d9ed5', '::1', 1732801630, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323830313633303b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b70726963657c693a303b5f5f63695f766172737c613a313a7b733a353a227072696365223b733a333a226f6c64223b7d),
('7568e38a1129f0a69493b74451585ade37da9b96', '::1', 1732856810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323835363831303b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b),
('7f1de85ba0ea7deff88c15fb0a131cd79f42c0d3', '::1', 1732857717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323835373731373b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b),
('9761ad73edbb705c13def4f79168963c01e9d065', '::1', 1732801656, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323830313633303b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b70726963657c693a303b5f5f63695f766172737c613a313a7b733a353a227072696365223b733a333a226f6c64223b7d),
('cb82054d9670ed38409481222d5495b4107a8a1f', '::1', 1732858173, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323835383135383b757365725f69647c733a323a223230223b656d61696c7c733a32343a22726176692e6b75736877616840706978656c6e782e636f6d223b6d656d6265725f6c6f67696e7c623a303b61646d696e5f6d656d6265725f6c6f67696e7c623a313b6163636573735f6c6576656c7c733a313a2230223b70726f66696c655f7069637c733a33313a2275706c6f6164732f757365725f32302f70726f66696c655f7069632e706e67223b6e616d657c733a353a2241646d696e223b66616365626f6f6b5f706f73747c623a303b);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `edited_video`
--

CREATE TABLE `edited_video` (
  `id` int(11) NOT NULL,
  `parent_video` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `expire_access_token` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pagedata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lp_templates`
--

CREATE TABLE `lp_templates` (
  `tempid` int(11) NOT NULL,
  `temp_design` longblob NOT NULL,
  `temp_status` tinyint(4) NOT NULL,
  `temp_fonts` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `pl_id` int(11) NOT NULL,
  `pl_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pl_price` float(10,2) NOT NULL,
  `pl_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
  `interval` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `create_datetime` datetime NOT NULL,
  `update_datetime` datetime NOT NULL,
  `plan_description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `interval_count` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plan_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `plan_period_start` datetime DEFAULT NULL,
  `pl_templates` text COLLATE utf8_unicode_ci NOT NULL,
  `pl_sites` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `frontend` int(11) NOT NULL DEFAULT '1',
  `oto` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suggestion_category`
--

CREATE TABLE `suggestion_category` (
  `s_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `imported_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `template_importer`
--

INSERT INTO `template_importer` (`id`, `importe_name`, `imported_date`) VALUES
(26, 'update_sql.sql', '2024-11-06 14:15:25');

-- --------------------------------------------------------

--
-- Table structure for table `theme_setting`
--

CREATE TABLE `theme_setting` (
  `ts_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data_key` varchar(200) NOT NULL,
  `data_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theme_setting`
--

INSERT INTO `theme_setting` (`ts_id`, `user_id`, `data_key`, `data_value`) VALUES
(42, 20, 'pg_logo_image', 'logo.png'),
(43, 20, 'pg_favicon_image', 'favicon.png'),
(44, 20, 'pg_preloader_image', 'preloader.gif'),
(62, 20, 'smtp_settings_data', '{\"smtp_host\":\"mail.kamleshyadav.com\",\"smtp_port\":\"465\",\"smtp_user\":\"support@kamleshyadav.com\",\"smtp_pass\":\"^G-9lGru~7Z8\",\"enable_smpt\":\"true\",\"mail_title\":\"Pixaguru Support \",\"from_mail\":\"support@kamleshyadav.com\",\"smpt_crypto\":\"ssl\"}'),
(63, 20, 'paymentSetting', '{\"stripe_publishKey\":\"pk_test_51F39j4Dn0Yc5TNXRz2wgu98A42cC6JDFDBQMnCrjHJuoT8UCJ6atcbuDBxmfKil2IAEF9FawPCKl0ICn60pgHCJB00ccN0aCz0\",\"strpe_secret_key\":\"sk_test_51F39j4Dn0Yc5TNXRktDp0b1CdEwNxiLIHg2e3jihOgrIKXUyNn8VzJKOdHS76RIbU8Hb4xnDbFIIfO0EJXoJook20054O5hd9t\",\"paypal_client_id\":\"AV5uTH4UXLFTm42A3QrkolHzAP8k1tWWDruQwY3sInjooCxsVcDGBKSpNXhIVxyMGaX3Itn-yoOwFag9\",\"sandbox_accounts\":\"sb-u4jdx27299772@business.example.com\",\"razorpay_key_id\":\"rzp_test_vQpZXr8QmbGkom\",\"razorpay_secret_key\":\"Gn7aLmDIhAtBerJA3Sr3nKkJ\",\"paystack_key_id\":\"pk_test_8859615c71d77558411f1faef4a808105298c089\",\"paystack_secret_key\":\"sk_test_308423072dc9554f2e9bf8929df9fe141e028d0c\"}'),
(64, 20, 'bg_remove_api', '{\"appId\":\"19188\",\"secret_key\":\"1gc7ghrsulggitvs1l95te99a9p7aqbd1ta6p0jdu58hn1029f8v\",\"AuthKey\":\"MTg1NDQ6bG1jOTI1ZTZkcGhuNjdxYW1oOTdoZ21nams2NmthbWZzNjRhamhmZ2lnbWJqa2pmcW9hMA==\"}'),
(65, 20, 'apiSetting', '{\"open_ai_key\":\"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\",\"youtube_api_key\":\"AIzaSyDCx-bN76PUkynehO4Xf3hXVLT3L5w_h-0\",\"pixabay_key\":\"4298772-5bcc33553ad61ce64e43177ae\",\"BGAuthKey\":\"\"}'),
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
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `access_level` varchar(50) NOT NULL COMMENT 'Plan ID',
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `source` varchar(20) NOT NULL,
  `subscription_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_no`, `profile_pic`, `password`, `status`, `datetime`, `code`, `access_level`, `role`, `source`, `subscription_id`) VALUES
(20, 'Admin', 'amine@pixelium.com', '874512653', 'uploads/user_20/profile_pic.png', 'f4a55ca057ceec1c981639227d11b33d', 1, '2018-04-24 04:11:17', 'ff1c1e7c', '0', 'admin', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_download_mange`
--

CREATE TABLE `user_download_mange` (
  `n_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_image`
--

CREATE TABLE `user_image` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `thumb_url` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `usp_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `plan_id` int(11) NOT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_subscription_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_customer_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stripe_plan_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `plan_amount` float(10,2) NOT NULL,
  `plan_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `plan_interval` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `plan_interval_count` tinyint(2) NOT NULL,
  `plan_period_start` datetime NOT NULL,
  `plan_period_end` datetime NOT NULL,
  `payer_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `access_level` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL,
  `template_access_leavel` int(11) NOT NULL,
  `template_custom_size` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bonusdetails`
--
ALTER TABLE `bonusdetails`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `campaign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_code`
--
ALTER TABLE `coupon_code`
  MODIFY `cp_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lp_templates`
--
ALTER TABLE `lp_templates`
  MODIFY `tempid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qg_video_templates`
--
ALTER TABLE `qg_video_templates`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `split_test`
--
ALTER TABLE `split_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_download_mange`
--
ALTER TABLE `user_download_mange`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_image`
--
ALTER TABLE `user_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `usp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_templates`
--
ALTER TABLE `user_templates`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Plan Table add new colom 
--

-- Drop the column if it exists
ALTER TABLE `plans`
  DROP COLUMN `plan_type`;

-- Add the column
ALTER TABLE `plans`
  ADD COLUMN `plan_type` VARCHAR(100) NOT NULL AFTER `interval_count`;

ALTER TABLE `plans`
MODIFY `plan_period_start` DATETIME DEFAULT NULL;  

--
-- Table structure for table `template_importer`
--

CREATE TABLE IF NOT EXISTS `template_importer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `importe_name` varchar(255) NOT NULL,
  `imported_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `template_importer`
--
ALTER TABLE `template_importer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- User Table access colom comment text change 
--

ALTER TABLE `users` CHANGE `access_level` `access_level` VARCHAR(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'Plan ID';

--
-- payment_method change type 
--
ALTER TABLE `user_subscriptions` CHANGE `payment_method` `payment_method` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL;

