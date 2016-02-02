
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2015 at 05:34 AM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a7048709_u6`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bestselling`
--

CREATE TABLE `wp_bestselling` (
  `bsl_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `bsl_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `bsl_description` longtext COLLATE latin1_general_ci NOT NULL,
  `bsl_modify` datetime NOT NULL,
  `link_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `bel_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bsl_id`),
  KEY `link_id` (`link_id`),
  KEY `bel_name` (`bsl_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_bestselling`
--

INSERT INTO `wp_bestselling` VALUES(1, 'mason jar', 'DIY mason jar comes in many colors for home decoration.... vivid and refreshing colors', '2015-02-27 05:28:53', 1, '2015-02-27 05:28:53');
INSERT INTO `wp_bestselling` VALUES(2, 'ombre lamp', 'DIY lovely ombre lamp made from paper and handcraft suitable for decorating living room and bedroom. ', '2015-02-27 05:30:28', 2, '2015-02-27 05:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `wp_category`
--

CREATE TABLE `wp_category` (
  `cmeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `cat_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `cat_name` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `cat_description` longtext CHARACTER SET ucs2 NOT NULL,
  `cat_modify` datetime NOT NULL,
  `link_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `cat_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cmeta_id`),
  KEY `link_id` (`link_id`),
  KEY `cat_name` (`cat_name`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_category`
--

INSERT INTO `wp_category` VALUES(1, 1, 'container', 'Handmade container for decoration ', '2015-02-27 05:24:49', 12, '2015-02-27 05:24:49');
INSERT INTO `wp_category` VALUES(2, 2, 'wall art', 'DIY paper wall art...for wall decoration and room divider......', '2015-02-27 05:27:05', 18, '2015-02-27 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `wp_image`
--

CREATE TABLE `wp_image` (
  `image_id` bigint(20) unsigned NOT NULL COMMENT 'PK',
  `im_description` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `im_modify` datetime NOT NULL,
  `link_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `im_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`image_id`),
  KEY `link_id` (`link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `wp_image`
--

INSERT INTO `wp_image` VALUES(1, 'mason jar', '2015-02-27 05:19:32', 1, '2015-02-27 05:19:32');
INSERT INTO `wp_image` VALUES(2, 'ombre lamp', '2015-02-27 05:19:57', 2, '2015-02-27 05:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `wp_newproduct`
--

CREATE TABLE `wp_newproduct` (
  `np_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `np_name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `np_decription` longtext COLLATE latin1_general_ci NOT NULL,
  `np_modify` datetime NOT NULL,
  `link_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `np_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`np_id`),
  KEY `link_id` (`link_id`),
  KEY `np_name` (`np_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_newproduct`
--

INSERT INTO `wp_newproduct` VALUES(1, 'Ball Light Garland', 'DIY Handmade ball lights. for bedroom and living room decoration......', '2015-02-27 05:17:20', 6, '2015-02-27 05:17:20');
INSERT INTO `wp_newproduct` VALUES(2, 'Yarn Chandelier', 'DIY Yarn Chandelier....comes in many colors for your cozy living room and bed room :)', '2015-02-27 05:18:42', 7, '2015-02-27 05:18:42');

-- --------------------------------------------------------

--
-- Table structure for table `wp_product`
--

CREATE TABLE `wp_product` (
  `product_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `p_name` varchar(255) CHARACTER SET ucs2 NOT NULL,
  `p_description` longtext CHARACTER SET ucs2 NOT NULL,
  `p_modify` datetime NOT NULL,
  `p_price` double(10,2) NOT NULL,
  `p_comment` longtext CHARACTER SET utf8 NOT NULL,
  `link_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `p_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  KEY `link_id` (`link_id`),
  KEY `p_timestamp` (`p_timestamp`),
  KEY `p_name` (`p_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_product`
--

INSERT INTO `wp_product` VALUES(1, 'mason jar', 'DIY mason jar... various colors', '2015-02-27 05:06:09', 12.50, 'DIY Mason jar..........', 1, '2015-02-27 05:06:09');
INSERT INTO `wp_product` VALUES(2, 'DIY ombre lamp', 'DIY ombre lamp comes in many colors......', '2015-02-27 05:07:57', 29.00, 'DIY ombre lamps are new items xxxxxxxxx', 2, '2015-02-27 05:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `wp_requestmeta`
--

CREATE TABLE `wp_requestmeta` (
  `qmeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `rq_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `meta_key` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `meta_value` longtext CHARACTER SET utf8 NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL COMMENT 'FK',
  `re_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`qmeta_id`),
  KEY `rq_id` (`rq_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `wp_requestmeta`
--

INSERT INTO `wp_requestmeta` VALUES(1, 1, 'container', 'Want a lighting to decorate my sister room for her birthday. Need pastel colors.....', 9, '2015-02-27 05:21:54');
INSERT INTO `wp_requestmeta` VALUES(2, 2, 'lighting', 'Need paper wall art to decorate my room... red heart shape....', 21, '2015-02-27 05:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  `user_ipaddress` int(25) unsigned NOT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`),
  KEY `user_ipaddress` (`user_ipaddress`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` VALUES(1, 1, 'nickname', 'u6', 0);
INSERT INTO `wp_usermeta` VALUES(2, 1, 'first_name', '', 0);
INSERT INTO `wp_usermeta` VALUES(3, 1, 'last_name', '', 0);
INSERT INTO `wp_usermeta` VALUES(4, 1, 'description', '', 0);
INSERT INTO `wp_usermeta` VALUES(5, 1, 'rich_editing', 'true', 0);
INSERT INTO `wp_usermeta` VALUES(6, 1, 'comment_shortcuts', 'false', 0);
INSERT INTO `wp_usermeta` VALUES(7, 1, 'admin_color', 'fresh', 0);
INSERT INTO `wp_usermeta` VALUES(8, 1, 'use_ssl', '0', 0);
INSERT INTO `wp_usermeta` VALUES(9, 1, 'show_admin_bar_front', 'true', 0);
INSERT INTO `wp_usermeta` VALUES(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}', 0);
INSERT INTO `wp_usermeta` VALUES(11, 1, 'wp_user_level', '10', 0);
INSERT INTO `wp_usermeta` VALUES(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets', 0);
INSERT INTO `wp_usermeta` VALUES(13, 1, 'show_welcome_panel', '1', 0);
INSERT INTO `wp_usermeta` VALUES(14, 1, 'session_tokens', 'a:1:{s:64:"a0df87192f197648ae7a9f4f9b6170d40ccaf643a686b21aeade61deda3cc1bf";a:4:{s:10:"expiration";i:1425003914;s:2:"ip";s:13:"168.156.93.65";s:2:"ua";s:68:"Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko";s:5:"login";i:1424831114;}}', 0);
INSERT INTO `wp_usermeta` VALUES(15, 1, 'wp_dashboard_quick_press_last_post_id', '3', 0);
INSERT INTO `wp_usermeta` VALUES(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}', 0);
INSERT INTO `wp_usermeta` VALUES(17, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` VALUES(1, 'u6', '$P$B4GQD.TL4cdCA/OpJHQB3OwaM0RkBC/', 'u6', 'u6@videogamerec.com', '', '2015-02-20 01:49:25', '', 0, 'u6');
