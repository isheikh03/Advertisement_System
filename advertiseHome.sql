-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema advertise
--

CREATE DATABASE IF NOT EXISTS advertise;
USE advertise;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(10) unsigned NOT NULL auto_increment,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_photo` blob,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`admin_id`,`admin_name`,`admin_email`,`admin_password`,`admin_photo`) VALUES 
 (2,'Ibrahim','Ibrahim@gmail.com','456',NULL),
 (3,'Giash','b.c@gmail.com','789',NULL),
 (4,'Almir','almer@gmail.com','147',NULL),
 (5,'sheikh','sheikh@gmail.com','123',NULL),
 (6,'Giash BC','Ibrahim@gmail.com','1234',NULL),
 (7,'q','q','q',NULL),
 (8,'fff','f','ffff',NULL);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `area_id` int(10) unsigned NOT NULL auto_increment,
  `district_id` int(10) unsigned NOT NULL,
  `area_name` varchar(300) NOT NULL,
  PRIMARY KEY  (`area_id`),
  KEY `FK_area_city` USING BTREE (`district_id`),
  CONSTRAINT `FK_area_district` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;


--
-- Definition of table `car_advertise`
--

DROP TABLE IF EXISTS `car_advertise`;
CREATE TABLE `car_advertise` (
  `car_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `division_id` int(10) unsigned NOT NULL,
  `district_id` int(10) unsigned NOT NULL,
  `car_type` varchar(100) NOT NULL,
  `car_model` varchar(100) default NULL,
  `rent_per_day` double NOT NULL,
  `car_image` blob,
  `advertisement_title` varchar(100) default NULL,
  `car_description` varchar(350) default NULL,
  `post_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL default 'Y',
  PRIMARY KEY  (`car_id`),
  KEY `FK_car_advertise_user` (`user_id`),
  KEY `FK_car_advertise_division` (`division_id`),
  KEY `FK_car_advertise_city` USING BTREE (`district_id`),
  CONSTRAINT `FK_car_add_district` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`),
  CONSTRAINT `FK_car_advertise_division` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`),
  CONSTRAINT `FK_car_advertise_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_advertise`
--

/*!40000 ALTER TABLE `car_advertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_advertise` ENABLE KEYS */;


--
-- Definition of table `car_comment`
--

DROP TABLE IF EXISTS `car_comment`;
CREATE TABLE `car_comment` (
  `car_comment_id` int(10) unsigned NOT NULL auto_increment,
  `car_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `comments` varchar(450) default NULL,
  PRIMARY KEY  USING BTREE (`car_comment_id`),
  KEY `FK_car_comment_car` (`car_id`),
  KEY `FK_car_comment_user_id` (`user_id`),
  CONSTRAINT `FK_car_comment_car` FOREIGN KEY (`car_id`) REFERENCES `car_advertise` (`car_id`),
  CONSTRAINT `FK_car_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_comment`
--

/*!40000 ALTER TABLE `car_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `car_comment` ENABLE KEYS */;


--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(10) unsigned NOT NULL auto_increment,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY  (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`category_id`,`category_name`) VALUES 
 (1,'House'),
 (2,'Car'),
 (3,'Office'),
 (17,'dddd');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `district_id` int(10) unsigned NOT NULL auto_increment,
  `division_id` int(10) unsigned NOT NULL,
  `district_name` varchar(100) NOT NULL,
  PRIMARY KEY  USING BTREE (`district_id`),
  KEY `FK_city_division` (`division_id`),
  CONSTRAINT `FK_district_division` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

/*!40000 ALTER TABLE `district` DISABLE KEYS */;
/*!40000 ALTER TABLE `district` ENABLE KEYS */;


--
-- Definition of table `division`
--

DROP TABLE IF EXISTS `division`;
CREATE TABLE `division` (
  `division_id` int(10) unsigned NOT NULL auto_increment,
  `division_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `division`
--

/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` (`division_id`,`division_name`) VALUES 
 (1,'Dhaka'),
 (2,'Chittagong'),
 (3,'Rajshahi'),
 (4,'Khulna'),
 (5,'Barisal'),
 (6,'Sylhet'),
 (7,'Mymensingh'),
 (8,'Rangpur'),
 (10,'rrrrrrrrrr');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;


--
-- Definition of table `house_advertise`
--

DROP TABLE IF EXISTS `house_advertise`;
CREATE TABLE `house_advertise` (
  `house_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `division_id` int(10) unsigned NOT NULL,
  `district_id` int(10) unsigned NOT NULL,
  `area_id` int(10) unsigned NOT NULL,
  `near_to` varchar(200) NOT NULL,
  `house_address` varchar(300) NOT NULL,
  `bed_no` int(10) unsigned NOT NULL,
  `bath_no` int(10) unsigned default NULL,
  `house_size` double default NULL,
  `house_img` blob,
  `house_rent` double default NULL,
  `advertisement_title` varchar(100) default NULL,
  `description` varchar(450) default NULL,
  `contact_no` varchar(45) default NULL,
  `post_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `applicable_from` date default NULL,
  `status` char(1) NOT NULL default 'Y',
  PRIMARY KEY  (`house_id`),
  KEY `FK_house_advertise_user` (`user_id`),
  KEY `FK_house_advertise_division` (`division_id`),
  KEY `FK_house_advertise_area` (`area_id`),
  KEY `FK_house_advertise_city` USING BTREE (`district_id`),
  CONSTRAINT `FK_house_advertise_area` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `FK_house_advertise_division` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`),
  CONSTRAINT `FK_house_advertise_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_house_district` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house_advertise`
--

/*!40000 ALTER TABLE `house_advertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_advertise` ENABLE KEYS */;


--
-- Definition of table `house_comment`
--

DROP TABLE IF EXISTS `house_comment`;
CREATE TABLE `house_comment` (
  `house_comment_id` int(10) unsigned NOT NULL auto_increment,
  `house_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY  USING BTREE (`house_comment_id`),
  KEY `FK_house_comment_house` (`house_id`),
  KEY `FK_house_comment_user_id` (`user_id`),
  CONSTRAINT `FK_house_comment_house` FOREIGN KEY (`house_id`) REFERENCES `house_advertise` (`house_id`),
  CONSTRAINT `FK_house_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house_comment`
--

/*!40000 ALTER TABLE `house_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_comment` ENABLE KEYS */;


--
-- Definition of table `other_advertise`
--

DROP TABLE IF EXISTS `other_advertise`;
CREATE TABLE `other_advertise` (
  `other_post_id` int(10) unsigned NOT NULL auto_increment,
  `user_id` int(10) unsigned NOT NULL,
  `division_id` int(10) unsigned NOT NULL,
  `district_id` int(10) unsigned NOT NULL,
  `area_id` int(10) unsigned NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `advertisement_title` varchar(450) NOT NULL,
  `product_description` varchar(450) NOT NULL,
  `product_image` blob,
  `contact_no` varchar(45) NOT NULL,
  `post_date` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `status` char(1) NOT NULL default 'Y',
  PRIMARY KEY  USING BTREE (`other_post_id`),
  KEY `FK_other_add_user` (`user_id`),
  KEY `FK_other_add_division` (`division_id`),
  KEY `FK_other_add_district` (`district_id`),
  KEY `FK_other_add_area` (`area_id`),
  CONSTRAINT `FK_other_add_area` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `FK_other_add_district` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`),
  CONSTRAINT `FK_other_add_division` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`),
  CONSTRAINT `FK_other_add_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_advertise`
--

/*!40000 ALTER TABLE `other_advertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_advertise` ENABLE KEYS */;


--
-- Definition of table `other_comment`
--

DROP TABLE IF EXISTS `other_comment`;
CREATE TABLE `other_comment` (
  `other_comment_id` int(10) unsigned NOT NULL auto_increment,
  `other_post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `comments` varchar(450) default NULL,
  PRIMARY KEY  USING BTREE (`other_comment_id`),
  KEY `FK_other_advertise` USING BTREE (`other_post_id`),
  KEY `FK_other_comment_user_id` (`user_id`),
  CONSTRAINT `FK_other_comment_other_post_id` FOREIGN KEY (`other_post_id`) REFERENCES `other_advertise` (`other_post_id`),
  CONSTRAINT `FK_other_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `other_comment`
--

/*!40000 ALTER TABLE `other_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_comment` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(200) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_gender` varchar(45) default NULL,
  `user_birthdate` date default NULL,
  `user_photo` blob,
  `user_phone` varchar(45) default NULL,
  `division_id` int(10) unsigned default NULL,
  `district_id` int(10) unsigned default NULL,
  `user_address` varchar(350) default NULL,
  `area_id` int(10) unsigned default NULL,
  PRIMARY KEY  (`user_id`),
  KEY `FK_user_reg_division` (`division_id`),
  KEY `FK_user_reg_city` USING BTREE (`district_id`),
  KEY `FK_user_area_id` (`area_id`),
  CONSTRAINT `FK_user_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `FK_user_district` FOREIGN KEY (`district_id`) REFERENCES `district` (`district_id`),
  CONSTRAINT `FK_user_reg_division` FOREIGN KEY (`division_id`) REFERENCES `division` (`division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
