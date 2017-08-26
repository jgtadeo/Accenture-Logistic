-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 24, 2017 at 04:03 AM
-- Server version: 5.7.18
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logistics3`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `created_at` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`created_at`, `user_id`, `item_name`) VALUES
(NULL, 1, 'Super Admin'),
(NULL, 2, 'Volunteer'),
(NULL, 3, 'Barangay'),
(NULL, 4, 'City/Municipal');

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `description` text,
  `data` text,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `data`, `created_at`, `updated_at`, `rule_name`) VALUES
('Barangay', 1, NULL, NULL, NULL, NULL, NULL),
('City/Municipal', 1, NULL, NULL, NULL, NULL, NULL),
('Super Admin', 1, NULL, NULL, NULL, NULL, NULL),
('view-supply', 2, NULL, NULL, NULL, NULL, NULL),
('Volunteer', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `child` varchar(64) NOT NULL,
  `parent` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`child`, `parent`) VALUES
('Super Admin', 'view-supply');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` varchar(45) DEFAULT NULL,
  `updated_at` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `barangay`
--

CREATE TABLE `barangay` (
  `id` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `longitude` decimal(20,0) DEFAULT NULL,
  `latitude` decimal(20,0) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `city_municipal_id` int(11) NOT NULL,
  `city_municipal_province_id` int(11) NOT NULL,
  `city_municipal_province_region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barangay`
--

INSERT INTO `barangay` (`id`, `name`, `longitude`, `latitude`, `population`, `timestamp`, `city_municipal_id`, `city_municipal_province_id`, `city_municipal_province_region_id`) VALUES
('1', 'Barangay 1', '121', '15', NULL, NULL, 2033, 111, 11),
('10', 'Barangay 10', '121', '15', NULL, NULL, 2033, 111, 11),
('11', 'Barangay 11', '121', '15', NULL, NULL, 2033, 111, 11),
('110', 'Barangay 119', '121', '15', NULL, NULL, 2033, 111, 11),
('111', 'Barangay 120', '121', '15', NULL, NULL, 2033, 111, 11),
('112', 'Barangay 121', '121', '15', NULL, NULL, 2033, 111, 11),
('113', 'Barangay 122', '121', '15', NULL, NULL, 2033, 111, 11),
('114', 'Barangay 123', '121', '15', NULL, NULL, 2033, 111, 11),
('115', 'Barangay 124', '121', '15', NULL, NULL, 2033, 111, 11),
('116', 'Barangay 125', '121', '15', NULL, NULL, 2033, 111, 11),
('117', 'Barangay 126', '121', '15', NULL, NULL, 2033, 111, 11),
('118', 'Barangay 127', '121', '15', NULL, NULL, 2033, 111, 11),
('119', 'Barangay 128', '121', '15', NULL, NULL, 2033, 111, 11),
('12', 'Barangay 12', '121', '15', NULL, NULL, 2033, 111, 11),
('120', 'Barangay 129', '121', '15', NULL, NULL, 2033, 111, 11),
('121', 'Barangay 130', '121', '15', NULL, NULL, 2033, 111, 11),
('122', 'Barangay 131', '121', '15', NULL, NULL, 2033, 111, 11),
('123', 'Barangay 132', '121', '15', NULL, NULL, 2033, 111, 11),
('124', 'Barangay 133', '121', '15', NULL, NULL, 2033, 111, 11),
('125', 'Barangay 134', '121', '15', NULL, NULL, 2033, 111, 11),
('126', 'Barangay 135', '121', '15', NULL, NULL, 2033, 111, 11),
('127', 'Barangay 136', '121', '15', NULL, NULL, 2033, 111, 11),
('128', 'Barangay 137', '121', '15', NULL, NULL, 2033, 111, 11),
('129', 'Barangay 138', '121', '15', NULL, NULL, 2033, 111, 11),
('13', 'Barangay 13', '121', '15', NULL, NULL, 2033, 111, 11),
('130', 'Barangay 139', '121', '15', NULL, NULL, 2033, 111, 11),
('131', 'Barangay 140', '121', '15', NULL, NULL, 2033, 111, 11),
('132', 'Barangay 141', '121', '15', NULL, NULL, 2033, 111, 11),
('133', 'Barangay 142', '121', '15', NULL, NULL, 2033, 111, 11),
('134', 'Barangay 143', '121', '15', NULL, NULL, 2033, 111, 11),
('135', 'Barangay 144', '121', '15', NULL, NULL, 2033, 111, 11),
('136', 'Barangay 145', '121', '15', NULL, NULL, 2033, 111, 11),
('137', 'Barangay 146', '121', '15', NULL, NULL, 2033, 111, 11),
('138', 'Barangay 147', '121', '15', NULL, NULL, 2033, 111, 11),
('139', 'Barangay 148', '121', '15', NULL, NULL, 2033, 111, 11),
('14', 'Barangay 14', '121', '15', NULL, NULL, 2033, 111, 11),
('140', 'Barangay 149', '121', '15', NULL, NULL, 2033, 111, 11),
('141', 'Barangay 150', '121', '15', NULL, NULL, 2033, 111, 11),
('142', 'Barangay 151', '121', '15', NULL, NULL, 2033, 111, 11),
('143', 'Barangay 152', '121', '15', NULL, NULL, 2033, 111, 11),
('144', 'Barangay 153', '121', '15', NULL, NULL, 2033, 111, 11),
('145', 'Barangay 154', '121', '15', NULL, NULL, 2033, 111, 11),
('146', 'Barangay 155', '15', '15', NULL, NULL, 2033, 111, 11),
('147', 'Barangay 156', '121', '15', NULL, NULL, 2033, 111, 11),
('148', 'Barangay 157', '121', '121', NULL, NULL, 2033, 111, 11),
('149', 'Barangay 158', '121', '15', NULL, NULL, 2033, 111, 11),
('15', 'Barangay 15', '121', '15', NULL, NULL, 2033, 111, 11),
('150', 'Barangay 159', '121', '15', NULL, NULL, 2033, 111, 11),
('151', 'Barangay 160', '121', '15', NULL, NULL, 2033, 111, 11),
('152', 'Barangay 161', '121', '15', NULL, NULL, 2033, 111, 11),
('153', 'Barangay 162', '121', '15', NULL, NULL, 2033, 111, 11),
('154', 'Barangay 163', '121', '15', NULL, NULL, 2033, 111, 11),
('155', 'Barangay 164', '121', '15', NULL, NULL, 2033, 111, 11),
('156', 'Barangay 165', '121', '15', NULL, NULL, 2033, 111, 11),
('157', 'Barangay 166', '121', '15', NULL, NULL, 2033, 111, 11),
('158', 'Barangay 167', '121', '15', NULL, NULL, 2033, 111, 11),
('159', 'Barangay 168', '121', '15', NULL, NULL, 2033, 111, 11),
('16', 'Barangay 16', '121', '15', NULL, NULL, 2033, 111, 11),
('160', 'Barangay 169', '121', '15', NULL, NULL, 2033, 111, 11),
('161', 'Barangay 170', '121', '15', NULL, NULL, 2033, 111, 11),
('162', 'Barangay 171', '121', '15', NULL, NULL, 2033, 111, 11),
('163', 'Barangay 172', '121', '15', NULL, NULL, 2033, 111, 11),
('164', 'Barangay 173', '121', '15', NULL, NULL, 2033, 111, 11),
('165', 'Barangay 174', '121', '15', NULL, NULL, 2033, 111, 11),
('166', 'Barangay 175', '121', '15', NULL, NULL, 2033, 111, 11),
('167', 'Barangay 176', '121', '15', NULL, NULL, 2033, 111, 11),
('168', 'Barangay 177', '121', '15', NULL, NULL, 2033, 111, 11),
('169', 'Barangay 178', '121', '15', NULL, NULL, 2033, 111, 11),
('17', 'Barangay 17', '121', '15', NULL, NULL, 2033, 111, 11),
('170', 'Barangay 179', '121', '15', NULL, NULL, 2033, 111, 11),
('171', 'Barangay 180', '121', '15', NULL, NULL, 2033, 111, 11),
('172', 'Barangay 181', '121', '15', NULL, NULL, 2033, 111, 11),
('173', 'Barangay 182', '121', '15', NULL, NULL, 2033, 111, 11),
('174', 'Barangay 183', '121', '15', NULL, NULL, 2033, 111, 11),
('175', 'Barangay 184', '121', '15', NULL, NULL, 2033, 111, 11),
('176', 'Barangay 185', '121', '15', NULL, NULL, 2033, 111, 11),
('177', 'Barangay 186', '121', '15', NULL, NULL, 2033, 111, 11),
('178', 'Barangay 187', '121', '15', NULL, NULL, 2033, 111, 11),
('18', 'Barangay 18', '121', '15', NULL, NULL, 2033, 111, 11),
('189', 'Barangay 198', '121', '15', NULL, NULL, 2033, 111, 11),
('19', 'Barangay 19', '121', '14', NULL, NULL, 2033, 111, 11),
('190', 'Barangay 199', '121', '15', NULL, NULL, 2033, 111, 11),
('191', 'Barangay 200', '121', '15', NULL, NULL, 2033, 111, 11),
('192', 'Barangay 201', '121', '15', NULL, NULL, 2033, 111, 11),
('193', 'Barangay 202', '121', '15', NULL, NULL, 2033, 111, 11),
('194', 'Barangay 202-A', '121', '15', NULL, NULL, 2033, 111, 11),
('195', 'Barangay 203', '121', '15', NULL, NULL, 2033, 111, 11),
('196', 'Barangay 204', '121', '15', NULL, NULL, 2033, 111, 11),
('197', 'Barangay 205', '121', '15', NULL, NULL, 2033, 111, 11),
('198', 'Barangay 206', '121', '15', NULL, NULL, 2033, 111, 11),
('199', 'Barangay 207', '121', '15', NULL, NULL, 2033, 111, 11),
('2', 'Barangay 2', '121', '15', NULL, NULL, 2033, 111, 11),
('20', 'Barangay 20', '121', '15', NULL, NULL, 2033, 111, 11),
('200', 'Barangay 208', '121', '15', NULL, NULL, 2033, 111, 11),
('201', 'Barangay 209', '121', '15', NULL, NULL, 2033, 111, 11),
('202', 'Barangay 210', '121', '15', NULL, NULL, 2033, 111, 11),
('203', 'Barangay 211', '121', '15', NULL, NULL, 2033, 111, 11),
('204', 'Barangay 212', '121', '15', NULL, NULL, 2033, 111, 11),
('205', 'Barangay 213', '121', '15', NULL, NULL, 2033, 111, 11),
('206', 'Barangay 214', '121', '15', NULL, NULL, 2033, 111, 11),
('207', 'Barangay 215', '121', '15', NULL, NULL, 2033, 111, 11),
('208', 'Barangay 216', '121', '15', NULL, NULL, 2033, 111, 11),
('209', 'Barangay 217', '121', '15', NULL, NULL, 2033, 111, 11),
('21', 'Barangay 25', '121', '15', NULL, NULL, 2033, 111, 11),
('210', 'Barangay 218', '121', '15', NULL, NULL, 2033, 111, 11),
('211', 'Barangay 219', '121', '15', NULL, NULL, 2033, 111, 11),
('212', 'Barangay 220', '121', '15', NULL, NULL, 2033, 111, 11),
('213', 'Barangay 221', '121', '15', NULL, NULL, 2033, 111, 11),
('214', 'Barangay 222', '121', '15', NULL, NULL, 2033, 111, 11),
('215', 'Barangay 223', '121', '15', NULL, NULL, 2033, 111, 11),
('216', 'Barangay 224', '121', '15', NULL, NULL, 2033, 111, 11),
('217', 'Barangay 225', '121', '15', NULL, NULL, 2033, 111, 11),
('218', 'Barangay 226', '121', '15', NULL, NULL, 2033, 111, 11),
('219', 'Barangay 227', '121', '15', NULL, NULL, 2033, 111, 11),
('22', 'Barangay 26', '121', '15', NULL, NULL, 2033, 111, 11),
('220', 'Barangay 228', '121', '15', NULL, NULL, 2033, 111, 11),
('221', 'Barangay 229', '121', '15', NULL, NULL, 2033, 111, 11),
('222', 'Barangay 230', '121', '15', NULL, NULL, 2033, 111, 11),
('223', 'Barangay 231', '121', '15', NULL, NULL, 2033, 111, 11),
('224', 'Barangay 232', '121', '15', NULL, NULL, 2033, 111, 11),
('225', 'Barangay 233', '121', '15', NULL, NULL, 2033, 111, 11),
('226', 'Barangay 234', '121', '15', NULL, NULL, 2033, 111, 11),
('227', 'Barangay 235', '121', '15', NULL, NULL, 2033, 111, 11),
('228', 'Barangay 236', '121', '15', NULL, NULL, 2033, 111, 11),
('229', 'Barangay 237', '121', '15', NULL, NULL, 2033, 111, 11),
('23', 'Barangay 28', '121', '15', NULL, NULL, 2033, 111, 11),
('230', 'Barangay 238', '121', '15', NULL, NULL, 2033, 111, 11),
('231', 'Barangay 239', '121', '15', NULL, NULL, 2033, 111, 11),
('232', 'Barangay 240', '121', '15', NULL, NULL, 2033, 111, 11),
('233', 'Barangay 241', '121', '15', NULL, NULL, 2033, 111, 11),
('234', 'Barangay 242', '121', '15', NULL, NULL, 2033, 111, 11),
('235', 'Barangay 243', '121', '15', NULL, NULL, 2033, 111, 11),
('236', 'Barangay 244', '121', '15', NULL, NULL, 2033, 111, 11),
('237', 'Barangay 245', '121', '121', NULL, NULL, 2033, 111, 11),
('238', 'Barangay 246', '121', '15', NULL, NULL, 2033, 111, 11),
('239', 'Barangay 247', '121', '15', NULL, NULL, 2033, 111, 11),
('24', 'Barangay 29', '121', '15', NULL, NULL, 2033, 111, 11),
('240', 'Barangay 248', '121', '15', NULL, NULL, 2033, 111, 11),
('241', 'Barangay 249', '121', '15', NULL, NULL, 2033, 111, 11),
('242', 'Barangay 250', '121', '15', NULL, NULL, 2033, 111, 11),
('249', 'Barangay 257', '121', '15', NULL, NULL, 2033, 111, 11),
('25', 'Barangay 30', '121', '14', NULL, NULL, 2033, 111, 11),
('250', 'Barangay 258', '121', '15', NULL, NULL, 2033, 111, 11),
('251', 'Barangay 259', '121', '15', NULL, NULL, 2033, 111, 11),
('252', 'Barangay 260', '121', '15', NULL, NULL, 2033, 111, 11),
('253', 'Barangay 261', '121', '15', NULL, NULL, 2033, 111, 11),
('254', 'Barangay 262', '121', '15', NULL, NULL, 2033, 111, 11),
('255', 'Barangay 263', '121', '15', NULL, NULL, 2033, 111, 11),
('256', 'Barangay 264', '121', '15', NULL, NULL, 2033, 111, 11),
('257', 'Barangay 265', '121', '15', NULL, NULL, 2033, 111, 11),
('258', 'Barangay 266', '121', '15', NULL, NULL, 2033, 111, 11),
('259', 'Barangay 267', '121', '15', NULL, NULL, 2033, 111, 11),
('26', 'Barangay 31', '121', '15', NULL, NULL, 2033, 111, 11),
('260', 'Barangay 287', '121', '15', NULL, NULL, 2033, 111, 11),
('261', 'Barangay 288', '121', '15', NULL, NULL, 2033, 111, 11),
('262', 'Barangay 289', '121', '15', NULL, NULL, 2033, 111, 11),
('263', 'Barangay 290', '121', '15', NULL, NULL, 2033, 111, 11),
('264', 'Barangay 291', '121', '15', NULL, NULL, 2033, 111, 11),
('265', 'Barangay 292', '121', '15', NULL, NULL, 2033, 111, 11),
('266', 'Barangay 293', '121', '15', NULL, NULL, 2033, 111, 11),
('267', 'Barangay 294', '121', '15', NULL, NULL, 2033, 111, 11),
('268', 'Barangay 295', '121', '15', NULL, NULL, 2033, 111, 11),
('269', 'Barangay 296', '121', '15', NULL, NULL, 2033, 111, 11),
('27', 'Barangay 32', '121', '15', NULL, NULL, 2033, 111, 11),
('270', 'Barangay 383', '121', '15', NULL, NULL, 2033, 111, 11),
('271', 'Barangay 384', '121', '15', NULL, NULL, 2033, 111, 11),
('272', 'Barangay 385', '121', '15', NULL, NULL, 2033, 111, 11),
('273', 'Barangay 386', '121', '15', NULL, NULL, 2033, 111, 11),
('274', 'Barangay 387', '121', '15', NULL, NULL, 2033, 111, 11),
('275', 'Barangay 388', '121', '15', NULL, NULL, 2033, 111, 11),
('276', 'Barangay 389', '121', '15', NULL, NULL, 2033, 111, 11),
('277', 'Barangay 390', '121', '15', NULL, NULL, 2033, 111, 11),
('278', 'Barangay 391', '121', '15', NULL, NULL, 2033, 111, 11),
('279', 'Barangay 392', '121', '15', NULL, NULL, 2033, 111, 11),
('28', 'Barangay 33', '121', '15', NULL, NULL, 2033, 111, 11),
('280', 'Barangay 393', '121', '15', NULL, NULL, 2033, 111, 11),
('281', 'Barangay 394', '121', '15', NULL, NULL, 2033, 111, 11),
('282', 'Barangay 306', '121', '15', NULL, NULL, 2033, 111, 11),
('283', 'Barangay 307', '121', '15', NULL, NULL, 2033, 111, 11),
('284', 'Barangay 308', '121', '15', NULL, NULL, 2033, 111, 11),
('285', 'Barangay 309', '121', '15', NULL, NULL, 2033, 111, 11),
('286', 'Barangay 268', '121', '15', NULL, NULL, 2033, 111, 11),
('287', 'Barangay 269', '121', '15', NULL, NULL, 2033, 111, 11),
('288', 'Barangay 270', '121', '15', NULL, NULL, 2033, 111, 11),
('289', 'Barangay 271', '121', '15', NULL, NULL, 2033, 111, 11),
('29', 'Barangay 34', '121', '15', NULL, NULL, 2033, 111, 11),
('290', 'Barangay 272', '121', '15', NULL, NULL, 2033, 111, 11),
('291', 'Barangay 273', '121', '15', NULL, NULL, 2033, 111, 11),
('292', 'Barangay 274', '121', '15', NULL, NULL, 2033, 111, 11),
('293', 'Barangay 275', '121', '15', NULL, NULL, 2033, 111, 11),
('294', 'Barangay 276', '121', '15', NULL, NULL, 2033, 111, 11),
('295', 'Barangay 281', '121', '15', NULL, NULL, 2033, 111, 11),
('296', 'Barangay 282', '121', '15', NULL, NULL, 2033, 111, 11),
('297', 'Barangay 283', '121', '15', NULL, NULL, 2033, 111, 11),
('298', 'Barangay 284', '121', '15', NULL, NULL, 2033, 111, 11),
('299', 'Barangay 285', '121', '15', NULL, NULL, 2033, 111, 11),
('30', 'Barangay 35', '121', '15', NULL, NULL, 2033, 111, 11),
('300', 'Barangay 286', '121', '15', NULL, NULL, 2033, 111, 11),
('301', 'Barangay 297', '121', '15', NULL, NULL, 2033, 111, 11),
('302', 'Barangay 298', '121', '15', NULL, NULL, 2033, 111, 11),
('303', 'Barangay 299', '121', '15', NULL, NULL, 2033, 111, 11),
('304', 'Barangay 300', '121', '15', NULL, NULL, 2033, 111, 11),
('305', 'Barangay 301', '121', '15', NULL, NULL, 2033, 111, 11),
('306', 'Barangay 302', '121', '15', NULL, NULL, 2033, 111, 11),
('307', 'Barangay 303', '121', '15', NULL, NULL, 2033, 111, 11),
('308', 'Barangay 304', '121', '15', NULL, NULL, 2033, 111, 11),
('309', 'Barangay 305', '121', '15', NULL, NULL, 2033, 111, 11),
('31', 'Barangay 36', '121', '15', NULL, NULL, 2033, 111, 11),
('310', 'Barangay 310', '121', '15', NULL, NULL, 2033, 111, 11),
('311', 'Barangay 311', '121', '15', NULL, NULL, 2033, 111, 11),
('312', 'Barangay 312', '121', '15', NULL, NULL, 2033, 111, 11),
('313', 'Barangay 313', '121', '15', NULL, NULL, 2033, 111, 11),
('314', 'Barangay 314', '121', '15', NULL, NULL, 2033, 111, 11),
('315', 'Barangay 315', '121', '15', NULL, NULL, 2033, 111, 11),
('316', 'Barangay 316', '121', '15', NULL, NULL, 2033, 111, 11),
('317', 'Barangay 317', '121', '15', NULL, NULL, 2033, 111, 11),
('318', 'Barangay 318', '121', '15', NULL, NULL, 2033, 111, 11),
('319', 'Barangay 319', '121', '15', NULL, NULL, 2033, 111, 11),
('32', 'Barangay 37', '121', '15', NULL, NULL, 2033, 111, 11),
('320', 'Barangay 320', '121', '15', NULL, NULL, 2033, 111, 11),
('321', 'Barangay 321', '121', '15', NULL, NULL, 2033, 111, 11),
('322', 'Barangay 322', '121', '15', NULL, NULL, 2033, 111, 11),
('323', 'Barangay 323', '121', '15', NULL, NULL, 2033, 111, 11),
('324', 'Barangay 324', '121', '15', NULL, NULL, 2033, 111, 11),
('325', 'Barangay 325', '121', '15', NULL, NULL, 2033, 111, 11),
('326', 'Barangay 326', '121', '15', NULL, NULL, 2033, 111, 11),
('327', 'Barangay 327', '121', '15', NULL, NULL, 2033, 111, 11),
('328', 'Barangay 328', '121', '15', NULL, NULL, 2033, 111, 11),
('329', 'Barangay 329', '121', '15', NULL, NULL, 2033, 111, 11),
('33', 'Barangay 38', '121', '15', NULL, NULL, 2033, 111, 11),
('330', 'Barangay 330', '121', '15', NULL, NULL, 2033, 111, 11),
('331', 'Barangay 331', '121', '15', NULL, NULL, 2033, 111, 11),
('332', 'Barangay 332', '121', '15', NULL, NULL, 2033, 111, 11),
('333', 'Barangay 333', '121', '15', NULL, NULL, 2033, 111, 11),
('334', 'Barangay 334', '121', '15', NULL, NULL, 2033, 111, 11),
('335', 'Barangay 335', '121', '15', NULL, NULL, 2033, 111, 11),
('336', 'Barangay 336', '121', '15', NULL, NULL, 2033, 111, 11),
('337', 'Barangay 337', '121', '15', NULL, NULL, 2033, 111, 11),
('338', 'Barangay 338', '121', '15', NULL, NULL, 2033, 111, 11),
('339', 'Barangay 339', '121', '15', NULL, NULL, 2033, 111, 11),
('34', 'Barangay 39', '121', '15', NULL, NULL, 2033, 111, 11),
('340', 'Barangay 340', '121', '15', NULL, NULL, 2033, 111, 11),
('341', 'Barangay 341', '121', '15', NULL, NULL, 2033, 111, 11),
('342', 'Barangay 342', '121', '15', NULL, NULL, 2033, 111, 11),
('343', 'Barangay 343', '121', '15', NULL, NULL, 2033, 111, 11),
('344', 'Barangay 344', '121', '15', NULL, NULL, 2033, 111, 11),
('345', 'Barangay 345', '121', '15', NULL, NULL, 2033, 111, 11),
('346', 'Barangay 346', '121', '15', NULL, NULL, 2033, 111, 11),
('347', 'Barangay 347', '121', '15', NULL, NULL, 2033, 111, 11),
('348', 'Barangay 348', '121', '15', NULL, NULL, 2033, 111, 11),
('349', 'Barangay 349', '121', '15', NULL, NULL, 2033, 111, 11),
('35', 'Barangay 41', '121', '15', NULL, NULL, 2033, 111, 11),
('350', 'Barangay 350', '121', '15', NULL, NULL, 2033, 111, 11),
('351', 'Barangay 351', '121', '15', NULL, NULL, 2033, 111, 11),
('352', 'Barangay 352', '121', '15', NULL, NULL, 2033, 111, 11),
('353', 'Barangay 353', '121', '15', NULL, NULL, 2033, 111, 11),
('354', 'Barangay 354', '121', '15', NULL, NULL, 2033, 111, 11),
('355', 'Barangay 355', '121', '15', NULL, NULL, 2033, 111, 11),
('356', 'Barangay 356', '121', '15', NULL, NULL, 2033, 111, 11),
('357', 'Barangay 357', '121', '15', NULL, NULL, 2033, 111, 11),
('358', 'Barangay 358', '121', '15', NULL, NULL, 2033, 111, 11),
('359', 'Barangay 359', '121', '15', NULL, NULL, 2033, 111, 11),
('36', 'Barangay 42', '121', '15', NULL, NULL, 2033, 111, 11),
('360', 'Barangay 360', '121', '15', NULL, NULL, 2033, 111, 11),
('361', 'Barangay 361', '121', '15', NULL, NULL, 2033, 111, 11),
('362', 'Barangay 362', '121', '15', NULL, NULL, 2033, 111, 11),
('363', 'Barangay 363', '121', '15', NULL, NULL, 2033, 111, 11),
('364', 'Barangay 364', '121', '15', NULL, NULL, 2033, 111, 11),
('365', 'Barangay 365', '121', '15', NULL, NULL, 2033, 111, 11),
('366', 'Barangay 366', '121', '15', NULL, NULL, 2033, 111, 11),
('367', 'Barangay 367', '121', '15', NULL, NULL, 2033, 111, 11),
('368', 'Barangay 368', '121', '15', NULL, NULL, 2033, 111, 11),
('369', 'Barangay 369', '121', '15', NULL, NULL, 2033, 111, 11),
('37', 'Barangay 43', '121', '15', NULL, NULL, 2033, 111, 11),
('370', 'Barangay 370', '121', '15', NULL, NULL, 2033, 111, 11),
('371', 'Barangay 371', '121', '15', NULL, NULL, 2033, 111, 11),
('372', 'Barangay 372', '121', '15', NULL, NULL, 2033, 111, 11),
('373', 'Barangay 373', '121', '15', NULL, NULL, 2033, 111, 11),
('374', 'Barangay 374', '121', '15', NULL, NULL, 2033, 111, 11),
('375', 'Barangay 375', '121', '15', NULL, NULL, 2033, 111, 11),
('376', 'Barangay 376', '121', '15', NULL, NULL, 2033, 111, 11),
('377', 'Barangay 377', '121', '15', NULL, NULL, 2033, 111, 11),
('378', 'Barangay 378', '121', '15', NULL, NULL, 2033, 111, 11),
('379', 'Barangay 379', '121', '15', NULL, NULL, 2033, 111, 11),
('38', 'Barangay 44', '121', '14', NULL, NULL, 2033, 111, 11),
('380', 'Barangay 380', '121', '15', NULL, NULL, 2033, 111, 11),
('381', 'Barangay 381', '121', '15', NULL, NULL, 2033, 111, 11),
('382', 'Barangay 382', '121', '15', NULL, NULL, 2033, 111, 11),
('383', 'Barangay 395', '121', '15', NULL, NULL, 2033, 111, 11),
('384', 'Barangay 396', '121', '15', NULL, NULL, 2033, 111, 11),
('385', 'Barangay 397', '121', '15', NULL, NULL, 2033, 111, 11),
('386', 'Barangay 398', '121', '15', NULL, NULL, 2033, 111, 11),
('387', 'Barangay 399', '121', '15', NULL, NULL, 2033, 111, 11),
('388', 'Barangay 400', '121', '15', NULL, NULL, 2033, 111, 11),
('389', 'Barangay 401', '121', '15', NULL, NULL, 2033, 111, 11),
('39', 'Barangay 45', '121', '15', NULL, NULL, 2033, 111, 11),
('390', 'Barangay 402', '121', '15', NULL, NULL, 2033, 111, 11),
('391', 'Barangay 403', '121', '15', NULL, NULL, 2033, 111, 11),
('392', 'Barangay 404', '121', '15', NULL, NULL, 2033, 111, 11),
('393', 'Barangay 405', '121', '15', NULL, NULL, 2033, 111, 11),
('394', 'Barangay 406', '121', '15', NULL, NULL, 2033, 111, 11),
('395', 'Barangay 407', '121', '15', NULL, NULL, 2033, 111, 11),
('396', 'Barangay 408', '121', '15', NULL, NULL, 2033, 111, 11),
('397', 'Barangay 409', '121', '15', NULL, NULL, 2033, 111, 11),
('398', 'Barangay 410', '121', '15', NULL, NULL, 2033, 111, 11),
('399', 'Barangay 411', '121', '15', NULL, NULL, 2033, 111, 11),
('40', 'Barangay 46', '121', '15', NULL, NULL, 2033, 111, 11),
('400', 'Barangay 412', '121', '15', NULL, NULL, 2033, 111, 11),
('401', 'Barangay 413', '121', '15', NULL, NULL, 2033, 111, 11),
('402', 'Barangay 414', '121', '15', NULL, NULL, 2033, 111, 11),
('403', 'Barangay 415', '121', '15', NULL, NULL, 2033, 111, 11),
('404', 'Barangay 416', '121', '15', NULL, NULL, 2033, 111, 11),
('405', 'Barangay 417', '121', '15', NULL, NULL, 2033, 111, 11),
('406', 'Barangay 418', '121', '15', NULL, NULL, 2033, 111, 11),
('407', 'Barangay 419', '121', '15', NULL, NULL, 2033, 111, 11),
('408', 'Barangay 420', '121', '15', NULL, NULL, 2033, 111, 11),
('409', 'Barangay 421', '121', '15', NULL, NULL, 2033, 111, 11),
('41', 'Barangay 47', '121', '15', NULL, NULL, 2033, 111, 11),
('410', 'Barangay 422', '121', '15', NULL, NULL, 2033, 111, 11),
('411', 'Barangay 423', '121', '15', NULL, NULL, 2033, 111, 11),
('412', 'Barangay 424', '121', '15', NULL, NULL, 2033, 111, 11),
('413', 'Barangay 425', '121', '15', NULL, NULL, 2033, 111, 11),
('414', 'Barangay 426', '121', '15', NULL, NULL, 2033, 111, 11),
('415', 'Barangay 427', '121', '15', NULL, NULL, 2033, 111, 11),
('416', 'Barangay 428', '121', '15', NULL, NULL, 2033, 111, 11),
('417', 'Barangay 429', '121', '15', NULL, NULL, 2033, 111, 11),
('418', 'Barangay 430', '121', '15', NULL, NULL, 2033, 111, 11),
('419', 'Barangay 431', '121', '15', NULL, NULL, 2033, 111, 11),
('42', 'Barangay 48', '121', '15', NULL, NULL, 2033, 111, 11),
('420', 'Barangay 432', '121', '15', NULL, NULL, 2033, 111, 11),
('421', 'Barangay 433', '121', '15', NULL, NULL, 2033, 111, 11),
('422', 'Barangay 434', '121', '15', NULL, NULL, 2033, 111, 11),
('423', 'Barangay 435', '121', '15', NULL, NULL, 2033, 111, 11),
('424', 'Barangay 436', '121', '15', NULL, NULL, 2033, 111, 11),
('425', 'Barangay 437', '121', '15', NULL, NULL, 2033, 111, 11),
('426', 'Barangay 438', '121', '15', NULL, NULL, 2033, 111, 11),
('427', 'Barangay 439', '121', '15', NULL, NULL, 2033, 111, 11),
('428', 'Barangay 440', '121', '15', NULL, NULL, 2033, 111, 11),
('429', 'Barangay 441', '121', '15', NULL, NULL, 2033, 111, 11),
('43', 'Barangay 49', '121', '15', NULL, NULL, 2033, 111, 11),
('430', 'Barangay 442', '121', '15', NULL, NULL, 2033, 111, 11),
('431', 'Barangay 443', '121', '15', NULL, NULL, 2033, 111, 11),
('432', 'Barangay 444', '121', '15', NULL, NULL, 2033, 111, 11),
('433', 'Barangay 445', '121', '15', NULL, NULL, 2033, 111, 11),
('434', 'Barangay 446', '121', '15', NULL, NULL, 2033, 111, 11),
('435', 'Barangay 447', '121', '15', NULL, NULL, 2033, 111, 11),
('44', 'Barangay 50', '121', '14', NULL, NULL, 2033, 111, 11),
('45', 'Barangay 51', '121', '15', NULL, NULL, 2033, 111, 11),
('46', 'Barangay 52', '121', '15', NULL, NULL, 2033, 111, 11),
('47', 'Barangay 53', '121', '15', NULL, NULL, 2033, 111, 11),
('48', 'Barangay 54', '121', '14', NULL, NULL, 2033, 111, 11),
('49', 'Barangay 55', '121', '15', NULL, NULL, 2033, 111, 11),
('5', 'Barangay 5', '121', '15', NULL, NULL, 2033, 111, 11),
('50', 'Barangay 56', '121', '15', NULL, NULL, 2033, 111, 11),
('51', 'Barangay 57', '121', '15', NULL, NULL, 2033, 111, 11),
('6', 'Barangay 6', '121', '15', NULL, NULL, 2033, 111, 11),
('7', 'Barangay 7', '121', '15', NULL, NULL, 2033, 111, 11),
('8', 'Barangay 8', '121', '15', NULL, NULL, 2033, 111, 11),
('9', 'Barangay 9', '121', '15', NULL, NULL, 2033, 111, 11);

-- --------------------------------------------------------

--
-- Table structure for table `city_municipal`
--

CREATE TABLE `city_municipal` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `longitude` decimal(20,0) DEFAULT NULL,
  `latitude` decimal(20,0) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `province_id` int(11) NOT NULL,
  `province_region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city_municipal`
--

INSERT INTO `city_municipal` (`id`, `name`, `longitude`, `latitude`, `population`, `timestamp`, `province_id`, `province_region_id`) VALUES
(2027, 'Maasim', NULL, NULL, NULL, NULL, 111, 11),
(2028, 'Maitum', NULL, NULL, NULL, NULL, 111, 11),
(2029, 'Malapatan', NULL, NULL, NULL, NULL, 111, 11),
(2030, 'Malungon', NULL, NULL, NULL, NULL, 111, 11),
(2031, 'Cotabato City (Not A Province)', NULL, NULL, NULL, NULL, 111, 11),
(2032, 'Cotabato City', NULL, NULL, NULL, NULL, 111, 11),
(2033, 'City Of Manila', NULL, NULL, NULL, NULL, 111, 11),
(2034, 'Tondo I / Ii', '121', '15', NULL, NULL, 111, 11),
(2035, 'Binondo', '121', '15', NULL, NULL, 111, 11),
(2036, 'Quiapo', '121', '15', NULL, NULL, 111, 11),
(2039, 'Sampaloc', '121', '15', NULL, NULL, 111, 11),
(2040, 'San Miguel', '121', '15', NULL, NULL, 111, 11),
(2041, 'Ermita', '121', '15', NULL, NULL, 111, 11),
(2042, 'Intramuros', '121', '15', NULL, NULL, 111, 11),
(2043, 'Malate', '121', '15', NULL, NULL, 111, 11),
(2044, 'Paco', '121', '15', NULL, NULL, 111, 11),
(2045, 'Pandacan', '121', '15', NULL, NULL, 111, 11),
(2046, 'Port Area', '121', '15', NULL, NULL, 111, 11),
(2047, 'Santa Ana', '121', '15', NULL, NULL, 111, 11),
(2048, 'City Of Mandaluyong', '121', '15', NULL, NULL, 111, 11),
(2049, 'City Of Marikina', '121', '15', NULL, NULL, 111, 11),
(2050, 'City Of Pasig', '121', '15', NULL, NULL, 111, 11),
(2051, 'Quezon City', '121', '15', NULL, NULL, 111, 11),
(2052, 'City Of San Juan', '121', '15', NULL, NULL, 111, 11),
(2053, 'Caloocan City', '121', '15', NULL, NULL, 111, 11),
(2054, 'City Of Malabon', '121', '15', NULL, NULL, 111, 11),
(2055, 'City Of Navotas', '121', '15', NULL, NULL, 111, 11),
(2056, 'City Of Valenzuela', '121', '15', NULL, NULL, 111, 11),
(2057, 'City Of Las Pi?as', '121', '14', NULL, NULL, 111, 11),
(2058, 'City Of Makati', '121', '15', NULL, NULL, 111, 11),
(2059, 'City Of Muntinlupa', '121', '14', NULL, NULL, 111, 11),
(2060, 'City Of Para?aque', '121', '14', NULL, NULL, 111, 11),
(2061, 'Pasay City', '121', '15', NULL, NULL, 111, 11),
(2062, 'Pateros', '121', '15', NULL, NULL, 111, 11),
(2063, 'Taguig City', '121', '15', NULL, NULL, 111, 11),
(2064, 'Bangued (Capital)', NULL, NULL, NULL, NULL, 111, 11),
(2065, 'Boliney', NULL, NULL, NULL, NULL, 111, 11),
(2066, 'Bucay', NULL, NULL, NULL, NULL, 111, 11),
(2067, 'Bucloc', NULL, NULL, NULL, NULL, 111, 11),
(2068, 'Daguioman', NULL, NULL, NULL, NULL, 111, 11),
(2069, 'Adams', '121', '18', NULL, NULL, 111, 11),
(2070, 'Bacarra', '121', '18', NULL, NULL, 111, 11),
(2071, 'Badoc', '120', '18', NULL, NULL, 111, 11),
(2072, 'Bangui', '121', '19', NULL, NULL, 111, 11),
(2073, 'City of Batac', '121', '18', NULL, NULL, 111, 11),
(2075, 'Carasi', '121', '18', NULL, NULL, 111, 11),
(2076, 'Currimao', '121', '18', NULL, NULL, 111, 11),
(2077, 'Dingras', '121', '18', NULL, NULL, 111, 11),
(2078, 'Dumalneg', '121', '18', NULL, NULL, 111, 11),
(2079, 'Banna (Espiritu)', '121', '18', NULL, NULL, 111, 11),
(2080, 'Laoag City', '121', '18', NULL, NULL, 111, 11),
(2081, 'Marcos', '121', '18', NULL, NULL, 111, 11),
(2082, 'Nueva Era', '121', '18', NULL, NULL, 111, 11),
(2083, 'Pagudpud', '121', '19', NULL, NULL, 111, 11),
(2084, 'Paoay', '121', '18', NULL, NULL, 111, 11),
(2085, 'Pasuquin', '121', '18', NULL, NULL, 111, 11),
(2086, 'Piddig', '121', '18', NULL, NULL, 111, 11),
(2087, 'Pinili', '121', '18', NULL, NULL, 111, 11),
(2089, 'Sarrat', '121', '18', NULL, NULL, 111, 11),
(2090, 'Solsona', '121', '18', NULL, NULL, 111, 11),
(2091, 'Vintar', '121', '18', NULL, NULL, 111, 11),
(2092, 'Alilem', '121', '17', NULL, NULL, 111, 11),
(2093, 'Banayoyo', '120', '17', NULL, NULL, 111, 11),
(2094, 'Bantay', '120', '18', NULL, NULL, 111, 11),
(2096, 'Cabugao', '120', '18', NULL, NULL, 111, 11),
(2097, 'City of Candon', '120', '17', NULL, NULL, 111, 11),
(2098, 'Caoayan', '120', '18', NULL, NULL, 111, 11),
(2099, 'Cervantes', '121', '17', NULL, NULL, 111, 11),
(2100, 'Galimuyod', '121', '17', NULL, NULL, 111, 11),
(2101, 'Gregorio Del Pilar (Concepcion)', '121', '17', NULL, NULL, 111, 11),
(2102, 'Lidlidda', '121', '17', NULL, NULL, 111, 11),
(2103, 'Magsingal', '120', '18', NULL, NULL, 111, 11),
(2104, 'Nagbukel', '121', '17', NULL, NULL, 111, 11),
(2105, 'Narvacan', '120', '17', NULL, NULL, 111, 11),
(2106, 'Quirino (Angkaki)', '121', '17', NULL, NULL, 111, 11),
(2107, 'Salcedo (Baugen)', '121', '17', NULL, NULL, 111, 11),
(2108, 'San Emilio', '121', '17', NULL, NULL, 111, 11),
(2109, 'San Esteban', '120', '17', NULL, NULL, 111, 11),
(2110, 'San Ildefonso', '120', '18', NULL, NULL, 111, 11),
(2111, 'San Juan (Lapog)', '120', '17', NULL, NULL, 111, 11),
(2112, 'San Vicente', '120', '18', NULL, NULL, 111, 11),
(2113, 'Santa', '120', '18', NULL, NULL, 111, 11),
(2114, 'Santa Catalina', '120', '18', NULL, NULL, 111, 11),
(2115, 'Santa Cruz', '120', '17', NULL, NULL, 111, 11),
(2116, 'Santa Lucia', '120', '17', NULL, NULL, 111, 11),
(2117, 'Santa Maria', '120', '17', NULL, NULL, 111, 11),
(2118, 'Santiago', '120', '17', NULL, NULL, 111, 11),
(2119, 'Santo Domingo', '120', '18', NULL, NULL, 111, 11),
(2120, 'Sigay', '121', '17', NULL, NULL, 111, 11),
(2121, 'Sinait', '121', '18', NULL, NULL, 111, 11),
(2122, 'Sugpon', '121', '17', NULL, NULL, 111, 11),
(2123, 'Suyo', '121', '17', NULL, NULL, 111, 11),
(2124, 'Tagudin', '120', '17', NULL, NULL, 111, 11),
(2125, 'City Of Vigan (Capital)', '120', '18', NULL, NULL, 111, 11),
(2126, 'Agoo', '120', '16', NULL, NULL, 111, 11),
(2127, 'Aringay', '120', '16', NULL, NULL, 111, 11),
(2128, 'Bacnotan', '120', '17', NULL, NULL, 111, 11),
(2129, 'Bagulin', '120', '17', NULL, NULL, 111, 11),
(2130, 'Balaoan', '120', '17', NULL, NULL, 111, 11),
(2131, 'Bangar', '120', '17', NULL, NULL, 111, 11),
(2132, 'Bauang', '120', '17', NULL, NULL, 111, 11),
(2134, 'Caba', '120', '16', NULL, NULL, 111, 11),
(2137, 'Pugo', '120', '16', NULL, NULL, 111, 11),
(2138, 'Rosario', '120', '16', NULL, NULL, 111, 11),
(2139, 'City Of San Fernando (Capital)', '120', '17', NULL, NULL, 111, 11),
(2140, 'San Gabriel', '121', '17', NULL, NULL, 111, 11),
(2143, 'Santol', '121', '17', NULL, NULL, 111, 11),
(2144, 'Sudipen', '120', '17', NULL, NULL, 111, 11),
(2145, 'Tubao', '120', '16', NULL, NULL, 111, 11),
(2146, 'Agno', '120', '16', NULL, NULL, 111, 11),
(2147, 'Aguilar', '120', '16', NULL, NULL, 111, 11),
(2148, 'City Of Alaminos', '120', '16', NULL, NULL, 111, 11),
(2150, 'Anda', '120', '16', NULL, NULL, 111, 11),
(2151, 'Asingan', '121', '16', NULL, NULL, 111, 11),
(2152, 'Balungao', '121', '16', NULL, NULL, 111, 11),
(2153, 'Bani', '120', '16', NULL, NULL, 111, 11),
(2154, 'Basista', '120', '16', NULL, NULL, 111, 11),
(2155, 'Bautista', '121', '16', NULL, NULL, 111, 11),
(2156, 'Bayambang', '120', '16', NULL, NULL, 111, 11),
(2157, 'Binalonan', '121', '16', NULL, NULL, 111, 11),
(2158, 'Binmaley', '120', '16', NULL, NULL, 111, 11),
(2159, 'Bolinao', '120', '16', NULL, NULL, 111, 11),
(2160, 'Bugallon', '120', '16', NULL, NULL, 111, 11),
(2162, 'Calasiao', '120', '16', NULL, NULL, 111, 11),
(2163, 'Dagupan City', '120', '16', NULL, NULL, 111, 11),
(2164, 'Dasol', '120', '16', NULL, NULL, 111, 11),
(2165, 'Infanta', '120', '16', NULL, NULL, 111, 11),
(2166, 'Labrador', '120', '16', NULL, NULL, 111, 11),
(2167, 'Lingayen (Capital)', '120', '16', NULL, NULL, 111, 11),
(2168, 'Mabini', '120', '16', NULL, NULL, 111, 11),
(2169, 'Malasiqui', '120', '16', NULL, NULL, 111, 11),
(2170, 'Manaoag', '120', '16', NULL, NULL, 111, 11),
(2171, 'Mangaldan', '120', '120', NULL, NULL, 111, 11),
(2172, 'Mangatarem', '120', '16', NULL, NULL, 111, 11),
(2173, 'Mapandan', '120', '16', NULL, NULL, 111, 11),
(2174, 'Natividad', '121', '16', NULL, NULL, 111, 11),
(2175, 'Pozorrubio', '121', '16', NULL, NULL, 111, 11),
(2176, 'Rosales', '121', '16', NULL, NULL, 111, 11),
(2177, 'San Carlos City', '120', '16', NULL, NULL, 111, 11),
(2178, 'San Fabian', '120', '16', NULL, NULL, 111, 11),
(2179, 'San Jacinto', '120', '16', NULL, NULL, 111, 11),
(2180, 'San Manuel', '121', '16', NULL, NULL, 111, 11),
(2181, 'San Nicolas', '121', '16', NULL, NULL, 111, 11),
(2182, 'San Quintin', '121', '16', NULL, NULL, 111, 11),
(2183, 'Santa Barbara', '120', '16', NULL, NULL, 111, 11),
(2186, 'Sison', '121', '16', NULL, NULL, 111, 11),
(2187, 'Sual', '120', '16', NULL, NULL, 111, 11),
(2188, 'Tayug', '121', '16', NULL, NULL, 111, 11),
(2189, 'Umingan', '121', '16', NULL, NULL, 111, 11),
(2190, 'Urbiztondo', '120', '16', NULL, NULL, 111, 11),
(2191, 'City Of Urdaneta', '121', '16', NULL, NULL, 111, 11),
(2192, 'Villasis', '121', '16', NULL, NULL, 111, 11),
(2193, 'Laoac', '121', '16', NULL, NULL, 111, 11),
(2194, 'Basco (Capital)', '122', '20', NULL, NULL, 111, 11),
(2195, 'Itbayat', '122', '21', NULL, NULL, 111, 11),
(2196, 'Ivana', '122', '20', NULL, NULL, 111, 11),
(2197, 'Mahatao', '122', '20', NULL, NULL, 111, 11),
(2198, 'Sabtang', '122', '20', NULL, NULL, 111, 11),
(2199, 'Uyugan', '122', '20', NULL, NULL, 111, 11),
(2200, 'Abulug', '121', '18', NULL, NULL, 111, 11),
(2201, 'Alcala', '122', '18', NULL, NULL, 111, 11),
(2202, 'Allacapan', '122', '18', NULL, NULL, 111, 11),
(2203, 'Amulung', '122', '18', NULL, NULL, 111, 11),
(2204, 'Aparri', '122', '18', NULL, NULL, 111, 11),
(2205, 'Baggao', '122', '18', NULL, NULL, 111, 11),
(2206, 'Ballesteros', '122', '18', NULL, NULL, 111, 11),
(2207, 'Buguey', '122', '18', NULL, NULL, 111, 11),
(2208, 'Calayan', '121', '19', NULL, NULL, 111, 11),
(2209, 'Camalaniugan', '122', '18', NULL, NULL, 111, 11),
(2210, 'Claveria', '121', '19', NULL, NULL, 111, 11),
(2211, 'Enrile', '122', '18', NULL, NULL, 111, 11),
(2212, 'Gattaran', '122', '18', NULL, NULL, 111, 11),
(2213, 'Gonzaga', '122', '18', NULL, NULL, 111, 11),
(2214, 'Iguig', '122', '18', NULL, NULL, 111, 11),
(2215, 'Lal-Lo', '122', '18', NULL, NULL, 111, 11),
(2216, 'Lasam', '122', '18', NULL, NULL, 111, 11),
(2217, 'Pamplona', '121', '18', NULL, NULL, 111, 11),
(2218, 'Pe?ablanca', '122', '18', NULL, NULL, 111, 11),
(2219, 'Piat', '122', '18', NULL, NULL, 111, 11),
(2220, 'Rizal', '121', '18', NULL, NULL, 111, 11),
(2221, 'Sanchez-Mira', '121', '19', NULL, NULL, 111, 11),
(2223, 'Santa Praxedes', '121', '19', NULL, NULL, 111, 11),
(2224, 'Santa Teresita', '122', '18', NULL, NULL, 111, 11),
(2225, 'Santo Ni?o (Faire)', '121', '18', NULL, NULL, 111, 11),
(2226, 'Solana', '122', '18', NULL, NULL, 111, 11),
(2227, 'Tuao', '122', '18', NULL, NULL, 111, 11),
(2228, 'Tuguegarao City (Capital)', '122', '18', NULL, NULL, 111, 11),
(2229, 'Alicia', '122', '17', NULL, NULL, 111, 11),
(2230, 'Angadanan', '122', '17', NULL, NULL, 111, 11),
(2231, 'Aurora', '122', '17', NULL, NULL, 111, 11),
(2232, 'Benito Soliven', '122', '17', NULL, NULL, 111, 11),
(2233, 'Burgos', '122', '17', NULL, NULL, 111, 11),
(2234, 'Cabagan', '122', '17', NULL, NULL, 111, 11),
(2235, 'Cabatuan', '122', '17', NULL, NULL, 111, 11),
(2236, 'City Of Cauayan', '122', '17', NULL, NULL, 111, 11),
(2237, 'Cordon', '121', '17', NULL, NULL, 111, 11),
(2238, 'Dinapigue', '122', '17', NULL, NULL, 111, 11),
(2239, 'Divilacan', '122', '17', NULL, NULL, 111, 11),
(2240, 'Echague', '122', '17', NULL, NULL, 111, 11),
(2241, 'Gamu', '122', '17', NULL, NULL, 111, 11),
(2242, 'Ilagan City (Capital)', '122', '17', NULL, NULL, 111, 11),
(2243, 'Jones', '122', '17', NULL, NULL, 111, 11),
(2244, 'Luna', '122', '17', NULL, NULL, 111, 11),
(2245, 'Maconacon', '122', '17', NULL, NULL, 111, 11),
(2246, 'Delfin Albano (Magsaysay)', '122', '17', NULL, NULL, 111, 11),
(2247, 'Mallig', '122', '17', NULL, NULL, 111, 11),
(2248, 'Naguilian', '122', '17', NULL, NULL, 111, 11),
(2249, 'Palanan', '122', '17', NULL, NULL, 111, 11),
(2251, 'Quirino', '122', '16', NULL, NULL, 111, 11),
(2252, 'Ramon', '122', '17', NULL, NULL, 111, 11),
(2253, 'Reina Mercedes', '122', '17', NULL, NULL, 111, 11),
(2254, 'Roxas', '122', '17', NULL, NULL, 111, 11),
(2255, 'San Agustin', '122', '16', NULL, NULL, 111, 11),
(2256, 'San Guillermo', '122', '17', NULL, NULL, 111, 11),
(2257, 'San Isidro', '122', '17', NULL, NULL, 111, 11),
(2259, 'San Mariano', '122', '17', NULL, NULL, 111, 11),
(2260, 'San Mateo', '122', '17', NULL, NULL, 111, 11),
(2261, 'San Pablo', '122', '17', NULL, NULL, 111, 11),
(2263, 'City Of Santiago', '122', '17', NULL, NULL, 111, 11),
(2264, 'Santo Tomas', '122', '17', NULL, NULL, 111, 11),
(2265, 'Tumauini', '122', '17', NULL, NULL, 111, 11),
(2266, 'Ambaguio', '121', '17', NULL, NULL, 111, 11),
(2267, 'Aritao', '121', '16', NULL, NULL, 111, 11),
(2268, 'Bagabag', '121', '17', NULL, NULL, 111, 11),
(2269, 'Bambang', '121', '16', NULL, NULL, 111, 11),
(2270, 'Bayombong (Capital)', '121', '16', NULL, NULL, 111, 11),
(2271, 'Diadi', '121', '17', NULL, NULL, 111, 11),
(2272, 'Dupax Del Norte', '121', '16', NULL, NULL, 111, 11),
(2273, 'Dupax Del Sur', '121', '16', NULL, NULL, 111, 11),
(2274, 'Kasibu', '121', '16', NULL, NULL, 111, 11),
(2275, 'Kayapa', '121', '16', NULL, NULL, 111, 11),
(2277, 'Santa Fe', '121', '16', NULL, NULL, 111, 11),
(2278, 'Solano', '121', '17', NULL, NULL, 111, 11),
(2279, 'Villaverde', '121', '17', NULL, NULL, 111, 11),
(2280, 'Alfonso Castaneda', '121', '16', NULL, NULL, 111, 11),
(2281, 'Aglipay', '122', '16', NULL, NULL, 111, 11),
(2282, 'Cabarroguis (Capital)', '122', '16', NULL, NULL, 111, 11),
(2283, 'Diffun', '121', '17', NULL, NULL, 111, 11),
(2284, 'Maddela', '122', '16', NULL, NULL, 111, 11),
(2285, 'Saguday', '122', '17', NULL, NULL, 111, 11),
(2286, 'Nagtipunan', '121', '16', NULL, NULL, 111, 11),
(2287, 'Abucay', NULL, NULL, NULL, NULL, 111, 11),
(2288, 'Bagac', NULL, NULL, NULL, NULL, 111, 11);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_status`
--

CREATE TABLE `delivery_status` (
  `id` int(11) NOT NULL,
  `name` enum('Pending','Confirmed','In Transit','Arrived') NOT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_status`
--

INSERT INTO `delivery_status` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Pending', '08-07-2017', NULL),
(2, 'Confirmed', '08-07-2017', NULL),
(3, 'In Transit', NULL, NULL),
(4, 'Arrived', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `description` text,
  `donation_type` int(11) NOT NULL,
  `donor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donation_type`
--

CREATE TABLE `donation_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `license_type` enum('Class A','Class B','Class C') NOT NULL,
  `contact_number` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `legal_structure`
--

CREATE TABLE `legal_structure` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `legal_structure`
--

INSERT INTO `legal_structure` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Affiliate', NULL, NULL),
(2, 'Corporation', NULL, NULL),
(3, 'Incorporated', NULL, NULL),
(4, 'LLC', NULL, NULL),
(5, 'Non-incorporated', NULL, NULL),
(6, 'Non-Proft', NULL, NULL),
(7, 'Partnership', NULL, NULL),
(8, 'Publicly Traded', NULL, NULL),
(9, 'Solely Owned', NULL, NULL),
(10, 'Subsidiary', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `list_of_supply`
--

CREATE TABLE `list_of_supply` (
  `code` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_expiration` varchar(25) DEFAULT NULL,
  `date_received` varchar(25) DEFAULT NULL,
  `description` text,
  `timestamp` varchar(25) DEFAULT NULL,
  `supply_type_id` int(11) NOT NULL,
  `unit_of_measurement_id` int(11) NOT NULL,
  `barangay_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `primary_commodity`
--

CREATE TABLE `primary_commodity` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `descrption` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `primary_commodity`
--

INSERT INTO `primary_commodity` (`id`, `name`, `timestamp`, `descrption`) VALUES
(1, 'Animal Supplies', NULL, NULL),
(2, 'Appliances/Kitchen Equipment', NULL, NULL),
(3, 'Architectural and Engineering Services', NULL, NULL),
(4, 'Art, Music, Theatre Equipment and Supplies', NULL, NULL),
(5, 'Athletic Equipment and Supplies', NULL, NULL),
(6, 'Audio-Video, Electronics, Photo Equipment', NULL, NULL),
(7, 'Carpet and Flooring', NULL, NULL),
(8, 'Catering and Beverages Services', NULL, NULL),
(9, 'Chemicals', NULL, NULL),
(10, 'Cleaning Equipment and Supplies', NULL, NULL),
(11, 'Computer Equipment and Accessories (PC, Servers)', NULL, NULL),
(12, 'Construction, Building Support, Repairs, and Renovation Services', NULL, NULL),
(13, 'Consulting, Legal and Professional Services', NULL, NULL),
(14, 'Document Storage Services', NULL, NULL),
(15, 'Dry Ice', NULL, NULL),
(16, 'Educational and Training Services', NULL, NULL),
(17, 'Environmental Services', NULL, NULL),
(18, 'Food and Beverage Product', NULL, NULL),
(19, 'Medical Equipment and Supplies', NULL, NULL),
(20, 'HR Recruiting Services and Temporary Labor Services', NULL, NULL),
(21, 'Miscellaneous', NULL, NULL),
(22, 'Pest Exterminator Services', NULL, NULL),
(23, 'Security Equipment', NULL, NULL),
(24, 'Telecommunications', NULL, NULL),
(25, 'Transportation', NULL, NULL),
(26, 'Utilities', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `longitude` decimal(20,0) DEFAULT NULL,
  `latitude` decimal(20,0) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `longitude`, `latitude`, `population`, `timestamp`, `region_id`) VALUES
(111, 'Albay', '124', '12', NULL, NULL, 11),
(112, 'Antique', '122', '11', NULL, NULL, 12),
(113, 'Apayao', '121', '18', NULL, NULL, 2),
(114, 'Aurora', '122', '17', NULL, NULL, 8),
(115, 'Basilan', '122', '7', NULL, NULL, 1),
(116, 'Bataan', '120', '15', NULL, NULL, 8),
(117, 'Batanes', '122', '20', NULL, NULL, 7),
(118, 'Batangas', '121', '14', NULL, NULL, 9),
(119, 'Benguet', '121', '17', NULL, NULL, 2),
(152, 'Marinduque', '122', '13', NULL, NULL, 3),
(161, 'Nueva Ecija', '121', '16', NULL, NULL, 8),
(162, 'Nueva Vizcaya', '121', '16', NULL, NULL, 8),
(163, 'Occidental Mindoro', '121', '13', NULL, NULL, 3),
(164, 'Oriental Mindoro', '121', '13', NULL, NULL, 3),
(165, 'Palawan', '119', '10', NULL, NULL, 3),
(166, 'Pampanga', '121', '15', NULL, NULL, 8),
(167, 'Pangasinan', '120', '16', NULL, NULL, 6),
(168, 'Quezon', '121', '15', NULL, NULL, 9),
(169, 'Quirino', '122', '16', NULL, NULL, 7),
(170, 'Rizal', '121', '15', NULL, NULL, 9),
(188, 'Metro Manila', NULL, NULL, NULL, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `longitude` decimal(20,0) DEFAULT NULL,
  `latitude` decimal(20,0) DEFAULT NULL,
  `population` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`, `longitude`, `latitude`, `population`) VALUES
(1, 'ARMM', '124', '7', 3781387),
(2, 'CAR', '121', '17', 1722006),
(3, 'MIMAROPA Region', '121', '13', 2963360),
(4, 'NCR', '121', '15', 12877253),
(5, 'NIR', '123', '10', 4414131),
(6, 'Region I', '121', '16', 5026128),
(7, 'Region II', '122', '17', 3451410),
(8, 'Region III', '121', '15', 11218177),
(9, 'Region IV-A', '121', '14', 14414774),
(10, 'Region IX', '123', '8', 3629783),
(11, 'Region V', '124', '13', 5796989),
(12, 'Region VI', '123', '11', 4477247),
(13, 'Region VII', '124', '10', 6041903),
(14, 'Region VIII', '125', '12', 4440150),
(15, 'Region X', '125', '8', 4689302),
(16, 'Region XI', '126', '7', 4893318),
(17, 'Region XII', '125', '6', 4545276),
(18, 'Region XIII', '126', '9', 2596709);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `tracking_number` int(11) NOT NULL,
  `date_requested` varchar(45) DEFAULT NULL,
  `date_needed` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `description` text,
  `delivery_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `supply` int(11) NOT NULL,
  `vehicle_plate_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `principal_name` varchar(255) DEFAULT NULL,
  `principal_title` enum('CEO','President') DEFAULT NULL,
  `business_number_of_year` int(11) DEFAULT NULL,
  `description` text,
  `supplier_type_id` int(11) NOT NULL,
  `legal_structure_id` int(11) NOT NULL,
  `primary_commodity_id` int(10) UNSIGNED NOT NULL,
  `barangay_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `website`, `contact_person`, `timestamp`, `principal_name`, `principal_title`, `business_number_of_year`, `description`, `supplier_type_id`, `legal_structure_id`, `primary_commodity_id`, `barangay_id`) VALUES
(1, 'Supplier 1', 'koriricruc@qwfox.com', 'sample1web.com', 'Jemi', NULL, 'Boss 1', 'CEO', 10, NULL, 3, 6, 5, '1'),
(2, 'Supplier 2', 'pametretra@hvzoi.com', 'supply1.com.ph', 'Jola', NULL, 'Boss 2', 'President', 10, NULL, 7, 2, 18, '1'),
(3, 'Supplier 3', 'ariana.g@gmail.com', 'supplierofdamit2.com', 'Hola', NULL, 'Boss 3', 'CEO', 11, NULL, 6, 10, 7, '1'),
(4, 'Supplier 4', 'trysample@ksks.com', 'kilokilo0.com', 'Heya', NULL, 'Boss 4', 'President', 25, NULL, 1, 4, 16, '1'),
(5, 'Supplier 5', 'wowamazing.rr@koko.com', 'magandtoh.com', 'Keopi', NULL, 'Boss 5', 'CEO', 1, NULL, 2, 2, 1, '1'),
(6, 'Supplier 6', 'hahahaha@hehe.com', 'masarapfood.com', 'Joyami', NULL, 'Boss 6', 'President', 3, NULL, 3, 3, 25, '1'),
(7, 'Supplier 7', 'Sisososos@momo.com', 'wowdi2.com', 'Jinggie', NULL, 'Boss 7', 'CEO', 6, NULL, 1, 3, 22, '1'),
(8, 'Supplier 8', 'Walang@forever.com', 'puntakana.com.ph', 'Roberto', NULL, 'Boss 8', 'President', 8, NULL, 2, 10, 22, '1'),
(9, 'Supplier 9', 'walang@kayo.ph', 'trymorin.com', 'Rodolfo', NULL, 'Boss 9', 'CEO', 23, NULL, 2, 3, 15, '1'),
(10, 'Supplier 10', 'jo@hana.com', 'magandangser.com', 'Ricardo', NULL, 'Boss 10', 'President', 3, NULL, 6, 6, 17, '1'),
(11, 'Supplier 11', 'sige@oo.com', 'bilinapo.com', 'Oldarrico', NULL, 'Boss 11', 'CEO', 7, NULL, 4, 2, 2, '1'),
(12, 'Supplier 12', 'iajsansjdvn@yahoo.com', 'damitlang.com', 'Rick', NULL, 'Boss 12', 'President', 30, NULL, 4, 9, 23, '1'),
(13, 'Supplier 13', 'ldr@wawawa.ph', 'shortlang.com', 'Compowa', NULL, 'Boss 13', 'CEO', 24, NULL, 2, 2, 9, '1'),
(14, 'Supplier 14', 'jimcas@tull.com', 'bagnarin.com', 'Chuga', NULL, 'Boss 14', 'President', 20, NULL, 5, 3, 10, '1'),
(15, 'Supplier 15', 'love@mosha.com', 'mapawow.com', 'Chiga', NULL, 'Boss 15', 'CEO', 22, NULL, 6, 7, 3, '1'),
(16, 'Supplier 16', 'dika@mahal.com.ph', 'bililangpokau.com.ph', 'Kokey', NULL, 'Boss 16', 'President', 19, NULL, 6, 8, 10, '1'),
(17, 'Supplier 17', 'try.mo.to@yahoo.com', 'oraytzzz.com', 'Lambdam', NULL, 'Boss 17', 'CEO', 18, NULL, 7, 3, 3, '1'),
(18, 'Supplier 18', 'oli@jojo.com', 'busogkadito.com', 'Madam', NULL, 'Boss 18', 'CEO', 17, NULL, 3, 7, 10, '1'),
(19, 'Supplier 19', 'iddi@kol.com', 'librelang.com', 'Ester', NULL, 'Boss 19', 'President', 16, NULL, 7, 2, 9, '1'),
(20, 'Supplier 20', 'shaman@shap.com', 'alisnau.com', 'Kempoy', NULL, 'Boss 20', 'CEO', 14, NULL, 3, 7, 12, '10');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_has_supply`
--

CREATE TABLE `supplier_has_supply` (
  `supplier_id` int(11) NOT NULL,
  `supply_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_type`
--

CREATE TABLE `supplier_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `timestamp` varchar(20) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_type`
--

INSERT INTO `supplier_type` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Manufacturers and Vendors', '08-07-2017', 'These are the companies that research, develop and actually produce the finished product ready for purchase. Manufacturers and vendors are the source of the supply chain.  Distributors, wholesalers, resellers and retailers who purchase goods from manufacturers and vendors benefit from the cheapest prices because no other companies have added their margin to cost of the goods yet.'),
(2, 'Wholesalers and Distributors', '08-07-2017', 'These suppliers are companies that buy in bulk from several manufacturers or vendors. They warehouse the goods for reselling to smaller local distributors, wholesalers and retailers. Distributors and wholesalers may also supply larger quantities to organisations or government departments directly. A genuine wholesale supplier will require your VAT or Tax ID number. This distinguishes them from discount retailers and resellers who market, particularly online, as wholesalers.'),
(3, 'Affiliate Merchants ', '08-07-2017', 'An affiliate merchant is a supplier that wishes to drive traffic to their website or sales of their product through banner ads and links placed throughout a network of affiliates. Merchants will normally pay affiliates a commission for every visit to the website or every sales conversion.'),
(4, 'Franchisors', '08-07-2017', 'A franchisor is a business owner and will grant a licence to an individual, which allows them to develop their own business using the trademark, name, know-how and business systems of the franchisor which includes suppliers and often at better pricing than an individual could get themselves.\r\n'),
(5, 'Importers and exporters', '08-07-2017', 'These suppliers will purchase products from manufacturers in one country and either export them to a distributor in a different country, or import them from an exporter into their country. Some may travel abroad to buy direct from suppliers in another country.'),
(6, 'Independent crafts people', '08-07-2017', 'These are normally manufacturers of products they have designed or produced on smaller unique scales of economy and will usually sell direct to retailers or the end consumer through agents or trade shows.'),
(7, 'Dropshippers ', '08-07-2017', 'These are suppliers of products from single or multiple companies that will deliver direct to the buyer once they have made the purchase from your business. This can be cost effective as it eliminates the need for storage or display of the items for sale.');

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `supplier_id` int(11) NOT NULL,
  `list_of_supply_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supply_type`
--

CREATE TABLE `supply_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supply_type`
--

INSERT INTO `supply_type` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Class I - Subsistence', '08-07-2017', 'A - Nonperishable\r\nC - Combat Rations\r\nR - Refrigerated\r\nS - Other Nonrefrigerated\r\nW - Water'),
(3, 'Class II - Clothing, Individual Equipment, Tools, Admin. Supplies', '08-07-2017', 'A - Air\r\nB - Ground Support Materiel\r\nE - General Supplies\r\nF - Clothing\r\nG - Electronics\r\nM - Weapons\r\nT - Industrial Supplies'),
(4, 'Class III - Petroleum, Oils, Lubricants', '08-07-2017', 'A - POL for Aircraft\r\nW - POL for Surface Vehicles\r\nP - Packaged POL'),
(5, 'Class IV - Construction Materials', '08-07-2017', 'A - Construction \r\nB - Barrier'),
(6, 'Class V - Ammunition', '08-07-2017', 'A - Air Delivery\r\nW - Ground'),
(7, 'Class VI - Personal Demand Items', '08-07-2017', ''),
(8, 'Class VII - Major End Items: Racks, Pylons, Tracked Vehicles, Etc.', '08-07-2017', 'A - Air\r\nB - Ground Support Materiel\r\nD - Admin. Vehicles\r\nG - Electronics\r\nJ - Racks, Adaptors, Pylons\r\nK - Tactical Vehicles\r\nL - Missiles\r\nM - Weapons\r\nN - Special Weapons\r\nX - Aircraft Engines'),
(9, 'Class VIII - Medical Materials', '08-07-2017', 'A - Medical Materiel\r\nB - Blood / Fluids'),
(10, 'Class IX - Repair Parts', '08-07-2017', 'A - Air\r\nB - Ground Support Materiel\r\nD - Admin. Vehicles\r\nG - Electronics\r\nK - Tactical Vehicles\r\nL - Missiles\r\nM - Weapons\r\nN - Special Weapons\r\nX - Aircraft Engines'),
(11, 'Class X - Material For Nonmilitary Programs (Miscellaneous)', '08-07-2017', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit_of_measurement`
--

CREATE TABLE `unit_of_measurement` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `unit_of_measurement`
--

INSERT INTO `unit_of_measurement` (`id`, `name`) VALUES
(4, 'Gram'),
(2, 'kilogram (kg)'),
(1, 'meter (m)'),
(6, 'Microgram'),
(5, 'Milligram'),
(9, 'N/A'),
(8, 'Ounce'),
(7, 'Pound'),
(3, 'Tonne');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` varchar(10) DEFAULT NULL,
  `updated_at` varchar(10) DEFAULT NULL,
  `first` varchar(50) DEFAULT NULL,
  `middle` varchar(45) DEFAULT NULL,
  `last` varchar(45) DEFAULT NULL,
  `birthmonth` varchar(45) DEFAULT NULL,
  `birthdate` varchar(45) DEFAULT NULL,
  `birthyear` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `contact_number` varchar(45) DEFAULT NULL,
  `user_type` int(11) NOT NULL,
  `barangay_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `first`, `middle`, `last`, `birthmonth`, `birthdate`, `birthyear`, `sex`, `contact_number`, `user_type`, `barangay_id`) VALUES
(1, 'jcheramia', '3rWtMj3KVxvbsDucWH8JSha9efftIQIe', '$2y$13$GXx5cvUVgSuMFaIMevwSmOgEfOcgsUMtMBU66uvfrUQd7PNQ3jd5m', NULL, 'johannaheramia@yahoo.com', 10, '1503566184', '1503566184', 'Johanna Marisse', 'Credito', 'Heramia', NULL, NULL, '1997', 'Female', '09261523128', 2, '174'),
(2, 'jgtadeo', 'QXHrQFl7RcYKNvJbtuLefWTHqId75Ky9', '$2y$13$rLCgcK6bfBIzMslXXWok0eMexGrUK0OvmtVM0ztxeBj9KPNKS366K', NULL, 'renzotadeo@yahoo.com', 10, '1503566785', '1503566785', 'Jose Lorenzo', 'Gonzales', 'Tadeo', NULL, NULL, '1997', 'Male', '09354811320', 1, '174'),
(3, 'jggardon', 's1Otuk2-EeivXfRN-hggGPxvcY9ysgED', '$2y$13$A5p2xAfk8kbWXzaJPDql1eiWXTJ1JmAmtrxfnotnsV9ZflP3f5YZ6', NULL, 'janamarie.gardon@gmail.com', 10, '1503566853', '1503566853', 'Jana Marie', 'Gavarra', 'Gardon', NULL, NULL, '1997', 'Female', '09281234567', 3, '174'),
(4, 'roselleg', '_j2TNHT0EwS0fQcLdjKdfFPHceyTosEe', '$2y$13$QW9Bn6BKp7xN7E0f.GOJJOUkA8.hMWgnwqz0e7TY6pMJiDuk07zoe', NULL, 'roselleg@apc.edu.ph', 10, '1503566998', '1503566998', 'Roselle Wednesday', '', 'Gardon', NULL, NULL, '1980', 'Female', '09261523128', 4, '119');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` varchar(25) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Volunteer', '08-11-2017', ''),
(2, 'Super User', '08-11-2017', ''),
(3, 'Barangay', '08-11-2017', ''),
(4, 'City/Municipal', '08-11-2017', ''),
(5, 'Regional', '08-11-2017', ''),
(6, 'Provincial', '08-11-2017', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `plate_number` varchar(10) NOT NULL,
  `model` varchar(100) DEFAULT NULL,
  `is_lease` tinyint(4) DEFAULT NULL,
  `timestamp` varchar(25) DEFAULT NULL,
  `available_day` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') DEFAULT NULL,
  `available_hour_start` varchar(10) DEFAULT NULL,
  `available_hour_end` varchar(10) DEFAULT NULL,
  `vehicle_type` int(11) NOT NULL,
  `vehicle_category` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `vehicle_size` int(11) NOT NULL,
  `barangay_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_category`
--

CREATE TABLE `vehicle_category` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `timestamp` varchar(45) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle_category`
--

INSERT INTO `vehicle_category` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Air', '08-07-2017', NULL),
(2, 'Sea', '08-07-2017', NULL),
(3, 'Land', '08-07-2017', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_has_driver`
--

CREATE TABLE `vehicle_has_driver` (
  `vehicle_plate_number` varchar(10) NOT NULL,
  `driver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_size`
--

CREATE TABLE `vehicle_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `timestamp` varchar(25) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle_size`
--

INSERT INTO `vehicle_size` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Subcompact', '08-12-2017', '4 Cylinder; Avg MPG = 32'),
(2, 'Compact', '08-12-2017', '4 Cylinder; Avg MPG = 23'),
(3, 'Intermediate', NULL, '5 Cylinder; Avg MPG = 20'),
(4, 'Full-Size Vehicle', NULL, '6 Cyclinder; Avg MPG = 19'),
(5, 'Compact Pickup', NULL, '4 Cylinder; Avg MPG = 18'),
(6, 'Full-Size Pickup', NULL, '8 Cyclinder; Avg MPG = 13'),
(7, 'Compact Utility', NULL, '4 Cylinder; Avg MPG = 15'),
(8, 'Intermediate Utility', NULL, '6 Cylinder; Avg MPG = 15'),
(9, 'Full-Size Utility', NULL, '8 Cylinder; Avg MPG = 13'),
(10, 'Mini-Van', NULL, '6 Cylinder; Avg MPG = 17'),
(11, 'Full-Size Van', NULL, '6 Cylinder; Avg MPG = 13'),
(12, 'Small Boat', NULL, 'Standard Width: 8\' ||\r\nStandard Length: 12\',13\',14\',15\',16\',18\',19\' ||\r\nStandard Pontoon Diameter: 24\", 26\" ||\r\n Number of Pontoons: 2'),
(13, 'Medium Boat', NULL, 'Standard Width: 8\', 8.5\',10\' ||\r\nStandard Length: 20\', 25\', 30\', 35\', 40\' ||\r\nStandard Pontoon Diameter: 24\", 26\", 28\", 30\", 33\", 36\" ||\r\nNumber of Pontoons: 2 optional 3'),
(14, 'Large', NULL, 'Standard Width: 12\', 14\', 16\', 18\', 20\' ||\r\nStandard Length: 30\', 35\', 40\', 45\', 50\', 55\', 60\' ||\r\nStandard Pontoon Diameter: 30\", 33\", 36\", \r\n39\", 42\", 45\", 48\", 51\", 54\", 57\", 60\" ||\r\nNumber of Pontoons: 2 optional 3'),
(15, 'Small Truck (10-13 ft)', NULL, '1-3000lbs\r\n400-450 cubic feet\r\nMoving 1-5 Furniture items\r\nUp to 120 medium size boxes\r\n\r\nIntended for: Studio/Small 1 bed apartments (400-800 sqft)'),
(16, 'Medium Truck (14-17 ft)', NULL, '3000-5500 lbs\r\n650-850 cubic feet\r\nMoving 1-10 furniture items\r\nUp to 250 medium size boxes\r\n\r\nIntended for: 1-3 bedroom apartments (600-1200 sqft),\r\nSmall 1-2 bedroom houses (600-1200 sqft)'),
(17, 'Large Truck (18-24 ft)', NULL, '5500-6500 lbs\r\n900-1400 cubic feet\r\nUp to 450 medium size boxes\r\n\r\nIntended for: 3-4 bedrooms (1200-2400 sqft)'),
(18, 'X Large Truck (26+ ft)', NULL, '6500-8400 lbs\r\n1400-1500 cubic feet\r\nUp to 550 medium size boxes\r\n\r\nIntended for: 4+ bedrooms (2400+ sq ft)');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_type`
--

CREATE TABLE `vehicle_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` varchar(25) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle_type`
--

INSERT INTO `vehicle_type` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Convertible', '08-07-2017', 'If you can drop the top to feel the wind in your hair, the car is a convertible. Convertibles, sometimes called cabriolets or roadsters, come with either a soft folding top or a retractable hardtop.'),
(2, 'Coupe', '08-07-2017', 'A coupe has two doors and a conventional trunk or a sloping back with a hinged rear cargo hatch that opens upward.'),
(3, 'Crossover', '08-07-2017', 'Crossovers are tall wagons and SUVs that are based on a passenger-car platform\'s architecture (as opposed to a truck\'s) for improved ride, comfort and fuel economy. They come in all sizes, and many offer a third-row seat. A light-duty four-wheel-drive or all-wheel-drive system is usually optional. '),
(4, 'Diesel', '08-07-2017', 'A diesel is a vehicle whose engine runs on diesel fuel rather than gasoline. '),
(5, 'Hatchback', '08-07-2017', 'A hatchback is a car with a two- or four-door body configuration and a sloping back with a hinged rear cargo hatch that opens upward. '),
(6, 'Hybrid/Electric', '08-07-2017', 'A hybrid vehicle has both a gasoline-powered engine and an electric motor that operate in unison and/or independently to propel the vehicle.'),
(7, 'Luxury', '08-07-2017', NULL),
(8, 'Minivan', '08-07-2017', 'A minivan has a short hood and a box-shaped body enclosing a large passenger/cargo area. '),
(9, 'Sedan', '08-07-2017', 'A sedan has four doors and a conventional trunk or a sloping back with a hinged rear trunk lid that opens upward. '),
(10, 'SUV', '08-07-2017', 'Sport-utility vehicles offer available four-wheel or all-wheel drive and raised ground clearance in combination with a two- or four-door body. '),
(11, 'Truck', '08-07-2017', 'A truck has two or four doors and an exposed cargo bed.'),
(12, 'Wagon', '08-07-2017', 'Wagons have all the same passenger room and driving characteristics as the sedans they\'re based on, but offer more cargo room. A few of the larger wagons even offer a third-row seat. Automakers sometimes come up with names like \"Avant\" or \"Sportback\" or avoid the term wagon altogether. Here\'s an easy way to determine whether a vehicle is a wagon: The roof line of a wagon continues past the rear doors. '),
(13, 'Agricultural', '08-07-2017', 'For agricultural'),
(14, 'Pickup', '08-07-2017', 'Any vehicle with an open cargo bed in the rear.'),
(15, 'Scooter', '08-07-2017', NULL),
(16, 'Ambulance', '08-07-2017', NULL),
(17, 'Motorcycle', '08-07-2017', NULL),
(18, 'Rickshaw', '08-07-2017', NULL),
(19, 'Bulldozer', '08-07-2017', NULL),
(20, 'Dump Trucks', '08-07-2017', NULL),
(21, 'Tractor', '08-07-2017', NULL),
(22, 'Excavator', '08-07-2017', NULL),
(23, 'Helicopter', '08-07-2017', NULL),
(24, 'Terex', '08-07-2017', NULL),
(25, 'Tank', '08-07-2017', NULL),
(26, 'Boat', '08-07-2017', NULL),
(27, 'Refrigerated', NULL, NULL),
(28, 'Inflatable', NULL, NULL),
(29, 'Van', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `year_established` int(11) DEFAULT NULL,
  `description` text,
  `area` varchar(45) DEFAULT NULL,
  `timestamp` varchar(25) DEFAULT NULL,
  `open_hours` varchar(15) DEFAULT NULL,
  `close_hours` varchar(15) DEFAULT NULL,
  `open_day` varchar(45) DEFAULT NULL,
  `warehouse_category` int(11) NOT NULL,
  `barangay_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_category`
--

CREATE TABLE `warehouse_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` varchar(25) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `warehouse_category`
--

INSERT INTO `warehouse_category` (`id`, `name`, `timestamp`, `description`) VALUES
(1, 'Public Warehouse', '08-06-2017', 'Owned and operated by private individuals for renting purpose. Those who open a public warehouse use it as hire to any interested persons and groups who paid rent fee to the owner of the warehouse.'),
(2, 'Manufacturer Warehouse', '08-06-2017', 'Owned and controlled by producers or companies who are into the production of goods. The companies or producers established the warehouse in order to store their goods after production until they are needed.'),
(3, 'Bonded Warehouse', '08-06-2017', 'Used to store goods whose duty is are not yet paid. Once the owner of the goods settle the custom duty a release Ã¯Â¿Â½warrantÃ¯Â¿Â½ will be issued by custom authorities. This document empowers its holder the goods named on it. This warehouse is normally located at the borders and operated by the custom authority.'),
(4, 'Whosesale Warehouse', '08-06-2017', 'Owned and controlled by the wholesaler for storing goods after purchase from the producers until they are sold to retailers or directly to the final consumers. The wholesaler buy in bulk from the producers and sell in small units to the retailer therefore, the wholesaler break the bulk of goods purchased and kept them in the warehouse until they bought.'),
(5, 'Overseas Warehouse', '08-06-2017', 'These catered for the overseas trade. They became the meeting places for overseas wholesale buyers where printed and plain could be discussed and ordered.'),
(6, 'Packing Warehouse', '08-06-2017', 'The main purpose of packing warehouses was the picking, checking, labelling and packing of goods for export.'),
(7, 'Railway Warehouse', '08-06-2017', 'Warehouses were built close to the major stations in railway hubs.'),
(8, 'Canal Warehouse', '08-06-2017', 'All these warehouse types can trace their origins back to the canal warehouses which were used for trans-shipment and storage.'),
(9, 'Climate-Controlled Warehouse', '08-06-2017', 'Handles many types of products including those that need special handling conditions such as freezers for storing frozen products, humidity-controlled environments for delicate products, such as produce or flowers, and dirt-free facilities for handling highly sensitive computer products.'),
(10, 'Distribution Center', '08-06-2017', 'For temporary activity. These warehouses serve as points in the distribution system at which products are received from many suppliers and quickly shipped out to many customers (e.g. Perishable goods enters in morning and distributed by the end of the day).'),
(11, 'State Warehouse', '08-06-2017', 'Created by the government to store contraband or smuggled goods seized by the custom authority.'),
(12, 'Sorting and Consolidation Warehouses: ', NULL, 'his warehouse type is not principally used for storage, but rather for receiving large inbound shipments and then breaking them down into smaller outbound loads. They might also be used for consolidating small inbound shipments into larger ones for dispatch to customers such as retail chains.'),
(13, 'Storage Warehouses', NULL, ' This warehouse type is often used for long-term storage of finished goods as part of a companyÃ¢â‚¬â„¢s outbound supply chain operation.Storage warehouses are also used by companies specializing in maintenance, repair, and similar activities where parts and equipment need to be stored ready for use when required.');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_has_supply`
--

CREATE TABLE `warehouse_has_supply` (
  `warehouse_id` int(11) NOT NULL,
  `supply_list_of_supply_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`user_id`,`item_name`),
  ADD KEY `fk_auth_assignment_auth_item1_idx` (`item_name`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `fk_auth_item_auth_rule1_idx` (`rule_name`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`child`,`parent`),
  ADD KEY `fk_auth_item_has_auth_item_auth_item2_idx` (`child`),
  ADD KEY `fk_auth_item_has_auth_item_auth_item1_idx` (`parent`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `barangay`
--
ALTER TABLE `barangay`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_barangay_city_municipal1_idx` (`city_municipal_id`,`city_municipal_province_id`,`city_municipal_province_region_id`);

--
-- Indexes for table `city_municipal`
--
ALTER TABLE `city_municipal`
  ADD PRIMARY KEY (`id`,`province_id`,`province_region_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_city_municipal_province1_idx` (`province_id`,`province_region_id`);

--
-- Indexes for table `delivery_status`
--
ALTER TABLE `delivery_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`,`donation_type`,`donor`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_donation_donation_type1_idx` (`donation_type`),
  ADD KEY `fk_donation_user1_idx` (`donor`);

--
-- Indexes for table `donation_type`
--
ALTER TABLE `donation_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `legal_structure`
--
ALTER TABLE `legal_structure`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `list_of_supply`
--
ALTER TABLE `list_of_supply`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `id_UNIQUE` (`code`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_supply_supply_type1_idx` (`supply_type_id`),
  ADD KEY `fk_supply_unit_of_measurement1_idx` (`unit_of_measurement_id`),
  ADD KEY `fk_list_of_supply_barangay1_idx` (`barangay_id`);

--
-- Indexes for table `primary_commodity`
--
ALTER TABLE `primary_commodity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`,`region_id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_province_region1_idx` (`region_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`tracking_number`),
  ADD UNIQUE KEY `id_UNIQUE` (`tracking_number`),
  ADD KEY `fk_request_delivery_status1_idx` (`delivery_status`),
  ADD KEY `fk_request_user1_idx` (`user_id`),
  ADD KEY `fk_request_warehouse_has_supply1_idx` (`supply`),
  ADD KEY `fk_request_vehicle_has_driver1_idx` (`vehicle_plate_number`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`),
  ADD KEY `fk_supplier_supplier_type1_idx` (`supplier_type_id`),
  ADD KEY `fk_supplier_legal_structure1_idx` (`legal_structure_id`),
  ADD KEY `fk_supplier_primary_commodity1_idx` (`primary_commodity_id`),
  ADD KEY `fk_supplier_barangay1_idx` (`barangay_id`);

--
-- Indexes for table `supplier_has_supply`
--
ALTER TABLE `supplier_has_supply`
  ADD PRIMARY KEY (`supplier_id`,`supply_code`),
  ADD KEY `fk_supplier_has_supply_supply1_idx` (`supply_code`),
  ADD KEY `fk_supplier_has_supply_supplier1_idx` (`supplier_id`);

--
-- Indexes for table `supplier_type`
--
ALTER TABLE `supplier_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`list_of_supply_code`),
  ADD KEY `fk_supplier_has_list_of_supply_list_of_supply1_idx` (`list_of_supply_code`),
  ADD KEY `fk_supplier_has_list_of_supply_supplier1_idx` (`supplier_id`);

--
-- Indexes for table `supply_type`
--
ALTER TABLE `supply_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_user_user_type_idx` (`user_type`),
  ADD KEY `fk_user_barangay1_idx` (`barangay_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`plate_number`),
  ADD UNIQUE KEY `id_UNIQUE` (`plate_number`),
  ADD KEY `fk_vehicle_vehicle_type1_idx` (`vehicle_type`),
  ADD KEY `fk_vehicle_vehicle_category1_idx` (`vehicle_category`),
  ADD KEY `fk_vehicle_user1_idx` (`owner`),
  ADD KEY `fk_vehicle_vehicle_size1_idx` (`vehicle_size`),
  ADD KEY `fk_vehicle_barangay1_idx` (`barangay_id`);

--
-- Indexes for table `vehicle_category`
--
ALTER TABLE `vehicle_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `vehicle_has_driver`
--
ALTER TABLE `vehicle_has_driver`
  ADD PRIMARY KEY (`vehicle_plate_number`),
  ADD KEY `fk_vehicle_has_driver_driver1_idx` (`driver_id`),
  ADD KEY `fk_vehicle_has_driver_vehicle1_idx` (`vehicle_plate_number`);

--
-- Indexes for table `vehicle_size`
--
ALTER TABLE `vehicle_size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `vehicle_typecol_UNIQUE` (`name`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD KEY `fk_warehouse_warehouse_category1_idx` (`warehouse_category`),
  ADD KEY `fk_warehouse_barangay1_idx` (`barangay_id`);

--
-- Indexes for table `warehouse_category`
--
ALTER TABLE `warehouse_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `warehouse_has_supply`
--
ALTER TABLE `warehouse_has_supply`
  ADD PRIMARY KEY (`supply_list_of_supply_code`),
  ADD KEY `fk_warehouse_has_supply_supply1_idx` (`supply_list_of_supply_code`),
  ADD KEY `fk_warehouse_has_supply_warehouse1_idx` (`warehouse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city_municipal`
--
ALTER TABLE `city_municipal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2289;
--
-- AUTO_INCREMENT for table `delivery_status`
--
ALTER TABLE `delivery_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `donation_type`
--
ALTER TABLE `donation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `legal_structure`
--
ALTER TABLE `legal_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `list_of_supply`
--
ALTER TABLE `list_of_supply`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `primary_commodity`
--
ALTER TABLE `primary_commodity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `tracking_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `supplier_type`
--
ALTER TABLE `supplier_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `supply_type`
--
ALTER TABLE `supply_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `unit_of_measurement`
--
ALTER TABLE `unit_of_measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vehicle_category`
--
ALTER TABLE `vehicle_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vehicle_size`
--
ALTER TABLE `vehicle_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `vehicle_type`
--
ALTER TABLE `vehicle_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `warehouse_category`
--
ALTER TABLE `warehouse_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `fk_auth_assignment_auth_item1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_auth_assignment_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `fk_auth_item_auth_rule1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `fk_auth_item_has_auth_item_auth_item1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_auth_item_has_auth_item_auth_item2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `barangay`
--
ALTER TABLE `barangay`
  ADD CONSTRAINT `fk_barangay_city_municipal1` FOREIGN KEY (`city_municipal_id`,`city_municipal_province_id`,`city_municipal_province_region_id`) REFERENCES `city_municipal` (`id`, `province_id`, `province_region_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `city_municipal`
--
ALTER TABLE `city_municipal`
  ADD CONSTRAINT `fk_city_municipal_province1` FOREIGN KEY (`province_id`,`province_region_id`) REFERENCES `province` (`id`, `region_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `fk_donation_donation_type1` FOREIGN KEY (`donation_type`) REFERENCES `donation_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_donation_user1` FOREIGN KEY (`donor`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `list_of_supply`
--
ALTER TABLE `list_of_supply`
  ADD CONSTRAINT `fk_list_of_supply_barangay1` FOREIGN KEY (`barangay_id`) REFERENCES `barangay` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supply_supply_type1` FOREIGN KEY (`supply_type_id`) REFERENCES `supply_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supply_unit_of_measurement1` FOREIGN KEY (`unit_of_measurement_id`) REFERENCES `unit_of_measurement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `province`
--
ALTER TABLE `province`
  ADD CONSTRAINT `fk_province_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `fk_request_delivery_status1` FOREIGN KEY (`delivery_status`) REFERENCES `delivery_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_request_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_request_vehicle_has_driver1` FOREIGN KEY (`vehicle_plate_number`) REFERENCES `vehicle_has_driver` (`vehicle_plate_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_request_warehouse_has_supply1` FOREIGN KEY (`supply`) REFERENCES `warehouse_has_supply` (`supply_list_of_supply_code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `fk_supplier_barangay1` FOREIGN KEY (`barangay_id`) REFERENCES `barangay` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supplier_legal_structure1` FOREIGN KEY (`legal_structure_id`) REFERENCES `legal_structure` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supplier_primary_commodity1` FOREIGN KEY (`primary_commodity_id`) REFERENCES `primary_commodity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supplier_supplier_type1` FOREIGN KEY (`supplier_type_id`) REFERENCES `supplier_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `supplier_has_supply`
--
ALTER TABLE `supplier_has_supply`
  ADD CONSTRAINT `fk_supplier_has_supply_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supplier_has_supply_supply1` FOREIGN KEY (`supply_code`) REFERENCES `list_of_supply` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `supply`
--
ALTER TABLE `supply`
  ADD CONSTRAINT `fk_supplier_has_list_of_supply_list_of_supply1` FOREIGN KEY (`list_of_supply_code`) REFERENCES `list_of_supply` (`code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_supplier_has_list_of_supply_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_barangay1` FOREIGN KEY (`barangay_id`) REFERENCES `barangay` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_user_type` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `fk_vehicle_barangay1` FOREIGN KEY (`barangay_id`) REFERENCES `barangay` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicle_user1` FOREIGN KEY (`owner`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicle_vehicle_category1` FOREIGN KEY (`vehicle_category`) REFERENCES `vehicle_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicle_vehicle_size1` FOREIGN KEY (`vehicle_size`) REFERENCES `vehicle_size` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicle_vehicle_type1` FOREIGN KEY (`vehicle_type`) REFERENCES `vehicle_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vehicle_has_driver`
--
ALTER TABLE `vehicle_has_driver`
  ADD CONSTRAINT `fk_vehicle_has_driver_driver1` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicle_has_driver_vehicle1` FOREIGN KEY (`vehicle_plate_number`) REFERENCES `vehicle` (`plate_number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `fk_warehouse_barangay1` FOREIGN KEY (`barangay_id`) REFERENCES `barangay` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_warehouse_warehouse_category1` FOREIGN KEY (`warehouse_category`) REFERENCES `warehouse_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `warehouse_has_supply`
--
ALTER TABLE `warehouse_has_supply`
  ADD CONSTRAINT `fk_warehouse_has_supply_supply1` FOREIGN KEY (`supply_list_of_supply_code`) REFERENCES `supply` (`list_of_supply_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_warehouse_has_supply_warehouse1` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouse` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
