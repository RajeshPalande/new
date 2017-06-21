/*
SQLyog Community Edition- MySQL GUI v6.16
MySQL - 5.5.39 : Database - studyphp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `studyphp`;

USE `studyphp`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `login_details` */

DROP TABLE IF EXISTS `login_details`;

CREATE TABLE `login_details` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(2000) DEFAULT NULL,
  `email_id` varchar(2000) DEFAULT NULL,
  `mobile_number` varchar(2000) DEFAULT NULL,
  `password` varchar(2000) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1' COMMENT '0->inactive, 1->active',
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_details` */

/*Table structure for table `sp_user_details` */

DROP TABLE IF EXISTS `sp_user_details`;

CREATE TABLE `sp_user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(2000) NOT NULL,
  `user_email` varchar(2000) NOT NULL,
  `user_mobile` varchar(2000) NOT NULL,
  `user_dob` date NOT NULL,
  `user_gender` enum('0','1') NOT NULL COMMENT '0->male, 1->female',
  `user_address` text NOT NULL,
  `upload_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(100) NOT NULL,
  `age` int(5) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `sp_user_details` */

insert  into `sp_user_details`(`user_id`,`user_name`,`user_email`,`user_mobile`,`user_dob`,`user_gender`,`user_address`,`upload_date`,`ip`,`age`) values (1,'Janardan Sutarj','janardansutar@gmail.com','9768208986','1991-05-14','','',NULL,'',25),(3,'kalpesh Khandagale','kalpesh@gmail.com','9821753718','1992-08-03','0','Mumbai','2015-09-12 07:47:11','192.168.2.1',25),(5,'ABC123','rajeshpalande12377@gmail.com','9221460041','1988-12-07','','test','2015-08-26 13:16:11','192.168.1.12',20),(6,'ABC123','a@gmail.com','9696969696','2015-10-01','0','Test','2015-10-04 02:22:53','189.123.123.1',30);

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(2000) DEFAULT NULL,
  `user_email` varchar(2000) DEFAULT NULL,
  `user_number` varchar(2000) DEFAULT NULL,
  `user_dob` date DEFAULT NULL,
  `gender` varchar(2000) DEFAULT NULL,
  `address` text,
  `ip` varchar(100) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_details` */

insert  into `user_details`(`user_id`,`user_name`,`user_email`,`user_number`,`user_dob`,`gender`,`address`,`ip`,`upload_date`) values (1,'Rajesh','rajeshpalande77@gmail.com','9221460041','1988-12-07','Male','test',NULL,'2015-08-26 13:16:11'),(2,'Rajesh1','rajeshpalande771@gmail.com','9221460041','1988-12-07','Male','test',NULL,'2015-08-26 13:16:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
