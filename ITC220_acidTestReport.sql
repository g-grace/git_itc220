
-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2015 at 09:29 PM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a7048709_u6`
--

-- --------------------------------------------------------

--
-- Table structure for table `rp_customer`
--

CREATE TABLE `rp_customer` (
  `account_id` int(15) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `first_name` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `login_name` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `login_password` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `zip_code` int(15) NOT NULL,
  `billing_id` int(15) unsigned NOT NULL COMMENT 'FK to "Billing" Table ',
  `payment_id` int(15) unsigned NOT NULL COMMENT 'FK to "Payment" Table',
  `IPAddress` int(25) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`),
  KEY `customer_name` (`first_name`,`last_name`),
  KEY `zip_code` (`zip_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `rp_customer`
--

INSERT INTO `rp_customer` VALUES(2, 'Mary', 'Jane', 2147483647, 'maryjane@gmail.com', '199 13rd AVE SW. Seattle, WA', 'MaryJane', 'J10lll$', 98102, 0, 1, 1110, '2015-03-11 14:34:31');
INSERT INTO `rp_customer` VALUES(50, 'David', 'Smith', 2147483647, 'davids@gmail.com', '10 1st AVE. Seattle, WA', 'davidsmith', 'dO1yy!', 98104, 0, 0, 1111, '2015-03-11 14:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `rp_outagelevel`
--

CREATE TABLE `rp_outagelevel` (
  `priority_id` int(15) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `comment_id` int(15) NOT NULL COMMENT 'FK to "Comment" Table',
  `staff_id` int(10) NOT NULL COMMENT 'FK to "Staff" Table',
  `report_id` int(15) NOT NULL COMMENT 'FK to "Report" Table',
  `account_id` int(15) NOT NULL COMMENT 'FK to "Customer Account" Table',
  PRIMARY KEY (`priority_id`),
  KEY `comment_id` (`comment_id`),
  KEY `staff_id` (`staff_id`),
  KEY `report_id` (`report_id`),
  KEY `account_id` (`account_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rp_outagelevel`
--

INSERT INTO `rp_outagelevel` VALUES(1, 10, 1, 100, 0);
INSERT INTO `rp_outagelevel` VALUES(3, 0, 2, 101, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rp_report`
--

CREATE TABLE `rp_report` (
  `ticket_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `last_name` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `zip_code` int(15) NOT NULL,
  `IPAddress` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `staff_id` int(10) unsigned NOT NULL COMMENT 'FK to "Staff" Table',
  `account_id` int(15) unsigned NOT NULL COMMENT 'FK to "Customer Account" Table',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`),
  KEY `report_name` (`first_name`,`last_name`),
  KEY `zip code` (`zip_code`),
  KEY `customer_accountID` (`account_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=102 ;

--
-- Dumping data for table `rp_report`
--

INSERT INTO `rp_report` VALUES(100, 'Rick', 'Dough', 2147483647, 'rick dough@gmail.com', '1111 25th AVE NE. Seattle, WA', 98115, '255.252.525.11', 1, 0, '2015-03-11 14:29:03');
INSERT INTO `rp_report` VALUES(101, 'Mary', 'Jane', 2147483647, 'maryjane@gmail.com', '6199 13rd AVE SW. Seattle, WA', 98102, '11.10.121.11', 2, 1, '2015-03-11 14:30:32');

-- --------------------------------------------------------

--
-- Table structure for table `rp_staff`
--

CREATE TABLE `rp_staff` (
  `staff_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'PK',
  `username` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` datetime NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rp_staff`
--

INSERT INTO `rp_staff` VALUES(1, 'Jane', '2015-03-11 14:25:42', '0000-00-00 00:00:00');
INSERT INTO `rp_staff` VALUES(2, '02', '2015-03-11 14:25:57', '0000-00-00 00:00:00');
