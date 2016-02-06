-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.10-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table bhms.city
DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `FK_ogqc1b0omhdvgo6vojoj95hv7` (`state_id`),
  CONSTRAINT `FK_ogqc1b0omhdvgo6vojoj95hv7` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- Dumping data for table bhms.city: ~5 rows (approximately)
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
REPLACE INTO `city` (`city_id`, `city_name`, `state_id`) VALUES
	(100, 'Pune', NULL),
	(101, 'Bhopal', NULL),
	(102, 'Indore', NULL),
	(103, 'Hyderabad', NULL),
	(105, 'Delhi', NULL);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


-- Dumping structure for table bhms.consultation
DROP TABLE IF EXISTS `consultation`;
CREATE TABLE IF NOT EXISTS `consultation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `doctor_id` bigint(10) DEFAULT NULL,
  `patient_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_consultation_patinet_idx` (`patient_id`),
  KEY `fk_consultation_doctor_idx` (`doctor_id`),
  CONSTRAINT `fk_consultation_doctor` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_details` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultation_patinet` FOREIGN KEY (`patient_id`) REFERENCES `patient_details` (`MEDICAL_RECORDS_NUMBER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bhms.consultation: ~0 rows (approximately)
/*!40000 ALTER TABLE `consultation` DISABLE KEYS */;
/*!40000 ALTER TABLE `consultation` ENABLE KEYS */;


-- Dumping structure for table bhms.country
DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table bhms.country: ~3 rows (approximately)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
REPLACE INTO `country` (`country_id`, `country_name`) VALUES
	(1, 'ind'),
	(2, 'Aus'),
	(4, 'Sri ');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;


-- Dumping structure for table bhms.doctor_consultation_time
DROP TABLE IF EXISTS `doctor_consultation_time`;
CREATE TABLE IF NOT EXISTS `doctor_consultation_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `consultation_day` varchar(255) DEFAULT NULL,
  `consultation_time_end` datetime DEFAULT NULL,
  `consultation_time_start` varchar(255) DEFAULT NULL,
  `doctor_details_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table bhms.doctor_consultation_time: ~0 rows (approximately)
/*!40000 ALTER TABLE `doctor_consultation_time` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctor_consultation_time` ENABLE KEYS */;


-- Dumping structure for table bhms.doctor_details
DROP TABLE IF EXISTS `doctor_details`;
CREATE TABLE IF NOT EXISTS `doctor_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `building_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `doctor_consultation_time` tinyblob,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `landline` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `postalcode` varchar(255) DEFAULT NULL,
  `primary_mobile` varchar(255) DEFAULT NULL,
  `secondary_mobile` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table bhms.doctor_details: ~8 rows (approximately)
/*!40000 ALTER TABLE `doctor_details` DISABLE KEYS */;
REPLACE INTO `doctor_details` (`id`, `age`, `building_name`, `city`, `country`, `qualification`, `dob`, `doctor_consultation_time`, `email_id`, `first_name`, `gender`, `landline`, `last_name`, `locality`, `photo`, `postalcode`, `primary_mobile`, `secondary_mobile`, `speciality`, `state`, `street`) VALUES
	(1, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, ''),
	(2, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, ''),
	(3, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, ''),
	(4, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, ''),
	(5, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, ''),
	(6, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, ''),
	(7, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, ''),
	(8, NULL, '', NULL, NULL, NULL, NULL, NULL, '', '', NULL, '', '', '', NULL, '', '', '', 'Default', NULL, '');
/*!40000 ALTER TABLE `doctor_details` ENABLE KEYS */;


-- Dumping structure for table bhms.patient_details
DROP TABLE IF EXISTS `patient_details`;
CREATE TABLE IF NOT EXISTS `patient_details` (
  `MEDICAL_RECORDS_NUMBER` bigint(20) NOT NULL AUTO_INCREMENT,
  `AGE` int(11) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `BUILDING_NAME_NUMBER` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `EMAIL_ID` varchar(255) NOT NULL,
  `FRIST_NAME` varchar(255) NOT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `LANDLINE_NUMBER` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `LOCALITY` varchar(255) DEFAULT NULL,
  `POSTAL_CODE` varchar(255) DEFAULT NULL,
  `PRIMARY_MOBILE_NUMBER` varchar(255) DEFAULT NULL,
  `SECONDARY_MOBILE_NUMBER` varchar(255) DEFAULT NULL,
  `STATE` varchar(255) DEFAULT NULL,
  `STREET_ADDRESS` varchar(255) DEFAULT NULL,
  `TENANT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MEDICAL_RECORDS_NUMBER`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- Dumping data for table bhms.patient_details: ~72 rows (approximately)
/*!40000 ALTER TABLE `patient_details` DISABLE KEYS */;
REPLACE INTO `patient_details` (`MEDICAL_RECORDS_NUMBER`, `AGE`, `DOB`, `BUILDING_NAME_NUMBER`, `CITY`, `COUNTRY`, `EMAIL_ID`, `FRIST_NAME`, `GENDER`, `LANDLINE_NUMBER`, `LAST_NAME`, `LOCALITY`, `POSTAL_CODE`, `PRIMARY_MOBILE_NUMBER`, `SECONDARY_MOBILE_NUMBER`, `STATE`, `STREET_ADDRESS`, `TENANT_ID`) VALUES
	(1, NULL, '2018-08-01 00:00:00', '', '', '', 'test@gmail.com', 'ABC', NULL, '', 'ABC', '', '', '', '', '', '', NULL),
	(2, 564, NULL, 'lkjdfsdfli', '101', 'jkkjh', 'jgjh@gmail.com', 'werwr', 'M', '564646', 'werewr', 'sdfsdf', 'jgjhhg', '654654', '65464', 'kjhhkh', 'sdfsdf', NULL),
	(3, 564, NULL, 'lkjdfsdfli', '101', 'jkkjh', 'jgjh@gmail.com', 'werwr', 'M', '564646', 'werewr', 'sdfsdf', 'jgjhhg', '654654', '65464', 'kjhhkh', 'sdfsdf', NULL),
	(4, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(5, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(6, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(7, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(8, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(9, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(10, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(11, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(12, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(13, NULL, NULL, '', '101', '', '', '', NULL, '', '', '', '', '', '', '', '', NULL),
	(14, 45345, NULL, 'fdgdgfg', '101', 'dfgdfgfdg', 'sdfdsf@gmai.com', 'sdfsdfdsf', 'M', '56756546', 'dfsdfds', 'fdgdfg', '4000321', '324234324', '546546546', 'fdgdfg', 'dfgdfgfd', NULL),
	(15, 45345, NULL, 'fdgdgfg', '101', 'dfgdfgfdg', 'sdfdsf@gmai.com', 'sdfsdfdsf', 'M', '56756546', 'dfsdfds', 'fdgdfg', '4000321', '324234324', '546546546', 'fdgdfg', 'dfgdfgfd', NULL),
	(31, 42, NULL, 'jhkjgg', NULL, '', 'dsfsdf@gmail.com', 'sdfsdfds', 'M', 'hgjgh', 'sfdsfdsf', '', '', '6787685675', 'yui567567', '', '', NULL),
	(32, 324234, NULL, '', NULL, '', 'sdfdsf@gmai.com', 'dfdsfsdf', 'M', 'efrrwer4234', 'dfsdfsdf', '', '', '3453453434', '345345345', '', '', NULL),
	(33, 324234, NULL, '', NULL, '', 'sdfdsf@gmai.com', 'dfdsfsdf', 'M', 'efrrwer4234', 'dfsdfsdf', '', '', '3453453434', '345345345', '', '', NULL),
	(34, NULL, NULL, '', NULL, '', 'dsfsdf@gmail.com', 'ddfdf', NULL, '', 'dsfdsf', '', '', '', '', '', '', NULL),
	(35, NULL, NULL, '', NULL, '', 'sdfsdf@gmail.com', 'lsdfkj', NULL, '', 'sdfdsf', '', '', '', '', '', '', NULL),
	(36, NULL, NULL, '', NULL, '', 'sdfsdf@gmail.comm', 'fdsfdsf', NULL, '', 'dsfdf', '', '', '', '', '', '', NULL),
	(38, 25, NULL, 'kjjksdf12', '101', 'dfsdfsdfsdf', 'bhawesh@gmail.com', 'bhawesh', 'M', '98897897897', 'kahar', 'sdfsdf', '877677', '7654356789', '8979797', 'sdfsdfsdf', 'dfsfsdfdsf', NULL),
	(39, 5465, NULL, 'lksjdflk', '101', 'sdfsdf', 'bhawesh@gmail.com', 'bhawesh', 'M', '76786876', 'kahar', 'sdfsdfsdf', 'sdfsdf', '76687678678', '87897897', 'sfsdf', 'sdfdsf', NULL),
	(40, 34234, NULL, 'erwer', '101', 'werewr', 'sdfsdf@gmail.com', 'lksjdfkl', 'M', '456456456', 'sdfdsf', 'rewr', 'werwer', '34345435', '45634345', 'werwer', 'erewr', NULL),
	(41, 23432, NULL, 'dfsdf', '101', 'sdfsdf', 'sdfsdf@gmail.com', 'sdfsdf', 'M', '5345', 'sdfsdf', 'sdfsdf', 'dsdf', '45345435', '5345', 'sdfdsf', 'dfsdf', NULL),
	(42, 5465, NULL, 'lksjdflk', '101', 'sdfsdf', 'bhawesh@gmail.com', 'bhawesh', 'M', '76786876', 'kahar', 'sdfsdfsdf', 'sdfsdf', '76687678678', '87897897', 'sfsdf', 'sdfdsf', NULL),
	(43, 28, NULL, 'hyd', '101', 'india', 'bhawesh@gmail.com', 'bhawesh', 'M', '83423423423', 'kahar', 'india', '461551', '7416634619', '8602573867', 'my', 'hyd', NULL),
	(44, 28, NULL, 'hyd', '101', 'india', 'bhawesh@gmail.com', 'bhawesh', 'M', '83423423423', 'kahar', 'india', '461551', '7416634619', '8602573867', 'my', 'hyd', NULL),
	(45, NULL, NULL, '', '105', '2', '', '', NULL, '', '', '', '', '', '', '105', '', NULL),
	(46, 29, NULL, 'kjsdf', '100', '1', 'jay@gmail.com', 'jay', 'M', '987987', 'chouhan', 'sdfdf', '908908', '97897', '098908908', '100', 'sdff', NULL),
	(47, NULL, NULL, 'erwer', '100', '1', 'erwre', 'erwer', 'M', '3234', 'sdsad', 'rwere', 'erwer', '234234', '34234', '100', 'werer', NULL),
	(48, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(49, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(50, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(51, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(52, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(53, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(54, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(55, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(56, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(57, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(58, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(59, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(60, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(61, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(62, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(63, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(64, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(65, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(66, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(67, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(68, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(69, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(70, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(71, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(72, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(73, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(74, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(75, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(76, NULL, NULL, '', '100', '1', '', '', NULL, '', '', '', '', '', '', '100', '', NULL),
	(77, 34, NULL, '234324', '100', '1', '23324', 'fsdfds', 'M', '34234', 'sdfdsf', 'werewr', '234324', '34234324', '234324', '100', 'erwer', NULL),
	(78, NULL, NULL, '', 'Pune', '1', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(79, NULL, NULL, '', 'Pune', '1', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(80, NULL, NULL, '', 'Pune', 'com.buchee.bhms.entity.Country@d8cba14', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(81, NULL, NULL, '', 'Pune', 'ind', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(82, NULL, NULL, '', 'Pune', 'ind', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(83, NULL, NULL, '', 'Pune', 'ind', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(84, NULL, NULL, '', 'Pune', 'ind', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(85, NULL, NULL, '', 'Pune', 'ind', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(86, NULL, NULL, '', 'Pune', 'ind', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL),
	(87, NULL, NULL, '', 'Indore', 'ind', '', '', NULL, '', '', '', '', '', '', 'Indore', '', NULL),
	(88, NULL, NULL, '', 'Pune', 'ind', '', '', NULL, '', '', '', '', '', '', 'Pune', '', NULL);
/*!40000 ALTER TABLE `patient_details` ENABLE KEYS */;


-- Dumping structure for table bhms.state
DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `state_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  KEY `FK_lxoqjm8644epv72af3k3jpalx` (`country_id`),
  CONSTRAINT `FK_lxoqjm8644epv72af3k3jpalx` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table bhms.state: ~3 rows (approximately)
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
REPLACE INTO `state` (`state_id`, `state_name`, `country_id`) VALUES
	(1, 'mp', NULL),
	(2, 'up', NULL),
	(3, 'ap', NULL);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
