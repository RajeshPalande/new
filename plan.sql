/*
SQLyog Community Edition- MySQL GUI v6.16
MySQL - 5.5.39 : Database - pizza
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `pizza`;

USE `pizza`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `category_details` */

DROP TABLE IF EXISTS `category_details`;

CREATE TABLE `category_details` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(2000) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(5) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `category_details` */

insert  into `category_details`(`category_id`,`category_name`,`upload_date`,`user_id`,`ip`) values (1,'Promo','2014-02-03 21:45:23',NULL,NULL),(2,'Sandwich','2013-12-16 23:49:52',1,''),(3,'Single Pizza','2013-12-16 22:40:30',1,''),(4,'Side Order','2013-12-16 22:40:52',1,''),(5,'Drink','2013-12-16 22:41:00',1,'');

/*Table structure for table `delivery_boy_details` */

DROP TABLE IF EXISTS `delivery_boy_details`;

CREATE TABLE `delivery_boy_details` (
  `delivery_boy_id` int(5) NOT NULL AUTO_INCREMENT,
  `delivery_boy_name` varchar(2000) DEFAULT NULL,
  `area_id` int(5) DEFAULT NULL,
  `contact_no` varchar(2000) DEFAULT NULL,
  `shift_from_time` int(5) DEFAULT NULL,
  `shift_to_time` int(5) DEFAULT NULL,
  `week_off` varchar(100) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT '0' COMMENT '0->present,1->absent,2->on leave',
  `user_id` int(5) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`delivery_boy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `delivery_boy_details` */

insert  into `delivery_boy_details`(`delivery_boy_id`,`delivery_boy_name`,`area_id`,`contact_no`,`shift_from_time`,`shift_to_time`,`week_off`,`status`,`user_id`,`ip`,`upload_date`) values (1,'Manish',0,'9876541230',21,43,'Wednesday','0',1,'::1','2013-12-07 22:35:33');

/*Table structure for table `fooditem_stock_qty` */

DROP TABLE IF EXISTS `fooditem_stock_qty`;

CREATE TABLE `fooditem_stock_qty` (
  `fooditem_stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `fooditem_id` int(11) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fooditem_stock_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `fooditem_stock_qty` */

insert  into `fooditem_stock_qty`(`fooditem_stock_id`,`fooditem_id`,`insert_date`,`qty`,`user_id`,`upload_date`,`ip`) values (1,2,'2014-02-01',500,1,'2014-02-06 00:13:29','::1'),(2,2,'2014-02-05',900,1,'2014-02-05 22:15:29','::1'),(3,1,'2014-02-04',700,1,'2014-02-05 22:15:44','::1'),(4,1,'2014-02-06',800,1,'2014-02-05 22:15:53','::1'),(5,3,'2014-02-06',300,1,'2014-02-06 00:19:49','::1'),(6,3,'2014-02-06',150,1,'2014-02-06 00:20:03','::1'),(7,2,'2014-02-06',1000,1,'2014-02-06 00:20:16','::1');

/*Table structure for table `group_food_qty` */

DROP TABLE IF EXISTS `group_food_qty`;

CREATE TABLE `group_food_qty` (
  `group_food_qty_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `fooditem_id` int(11) DEFAULT NULL,
  `group_food_qty` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`group_food_qty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `group_food_qty` */

insert  into `group_food_qty`(`group_food_qty_id`,`item_id`,`fooditem_id`,`group_food_qty`,`user_id`,`upload_date`,`ip`) values (1,391,2,50,1,'2014-02-05 22:16:38','::1'),(2,391,1,100,1,'2014-02-05 22:16:38','::1'),(13,397,2,10,1,'2014-02-05 22:40:31','::1'),(12,396,1,20,1,'2014-02-05 22:31:22','::1'),(11,395,1,10,1,'2014-02-05 22:31:01','::1'),(6,392,2,80,1,'2014-02-05 22:16:57','::1'),(10,395,2,10,1,'2014-02-05 22:31:01','::1'),(8,393,1,30,1,'2014-02-05 22:23:52','::1'),(9,394,2,110,1,'2014-02-05 22:26:15','::1'),(14,398,1,10,1,'2014-02-05 22:41:03','::1'),(15,398,2,10,1,'2014-02-05 22:41:03','::1'),(16,399,2,20,1,'2014-02-05 22:45:51','::1'),(17,399,1,10,1,'2014-02-05 22:45:51','::1'),(18,400,2,50,1,'2014-02-05 22:46:12','::1'),(19,401,1,10,1,'2014-02-05 22:51:38','::1'),(20,401,2,20,1,'2014-02-05 22:51:38','::1'),(21,402,1,20,1,'2014-02-05 22:51:56','::1'),(34,NULL,2,80,1,'2014-02-05 23:20:28','::1'),(33,405,2,80,1,'2014-02-05 23:13:38','::1'),(29,405,2,80,1,'2014-02-05 23:13:38','::1'),(30,405,1,10,1,'2014-02-05 23:13:38','::1'),(31,405,2,20,1,'2014-02-05 23:13:38','::1'),(32,405,1,20,1,'2014-02-05 23:13:38','::1'),(35,406,1,10,1,'2014-02-05 23:24:59','::1'),(36,406,2,20,1,'2014-02-05 23:24:59','::1'),(37,406,1,20,1,'2014-02-05 23:24:59','::1'),(38,406,2,80,1,'2014-02-05 23:24:59','::1'),(39,407,2,10,1,'2014-02-05 23:25:59','::1'),(40,407,2,50,1,'2014-02-05 23:25:59','::1'),(41,407,2,110,1,'2014-02-05 23:25:59','::1');

/*Table structure for table `master_drinks_details` */

DROP TABLE IF EXISTS `master_drinks_details`;

CREATE TABLE `master_drinks_details` (
  `drinks_id` int(11) NOT NULL AUTO_INCREMENT,
  `drinks` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`drinks_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `master_drinks_details` */

insert  into `master_drinks_details`(`drinks_id`,`drinks`,`user_id`,`upload_date`,`ip`) values (1,'Water 1 sr',1,'2013-12-17 22:35:58','::1'),(3,'Water 0.5 sr',1,'2013-12-17 22:36:20',''),(4,'Cola Can 1.50  sr',1,'2013-12-21 09:57:57','5.108.64.165'),(5,'Cola  3 sr',1,'2013-12-21 09:57:23','5.108.64.165'),(6,'F.Cola',1,'2013-12-22 12:17:58','103.31.144.5');

/*Table structure for table `master_fooditem` */

DROP TABLE IF EXISTS `master_fooditem`;

CREATE TABLE `master_fooditem` (
  `fooditem_id` int(11) NOT NULL AUTO_INCREMENT,
  `fooditem` varchar(2000) DEFAULT NULL,
  `fooditem_total_qty` int(11) DEFAULT '0',
  `use_qty` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fooditem_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `master_fooditem` */

insert  into `master_fooditem`(`fooditem_id`,`fooditem`,`fooditem_total_qty`,`use_qty`,`user_id`,`upload_date`,`ip`) values (1,'test',460,1040,1,'2015-10-04 02:07:23','::1'),(2,'Potato',-3610,5610,1,'2015-10-04 02:07:23','::1'),(3,'rajesh',450,NULL,1,'2014-02-06 00:20:03','::1');

/*Table structure for table `master_kind_of_pizza_details` */

DROP TABLE IF EXISTS `master_kind_of_pizza_details`;

CREATE TABLE `master_kind_of_pizza_details` (
  `kind_of_pizza_id` int(11) NOT NULL AUTO_INCREMENT,
  `kind_of_pizza` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kind_of_pizza_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `master_kind_of_pizza_details` */

insert  into `master_kind_of_pizza_details`(`kind_of_pizza_id`,`kind_of_pizza`,`user_id`,`upload_date`,`ip`) values (1,'CHICHEN',1,'2013-12-17 22:33:27','::1'),(3,'SPICY',1,'2013-12-17 22:34:22',''),(4,'HAWAII',1,'2013-12-17 22:34:23',''),(5,'DELUXE',1,'2013-12-17 22:34:23',''),(6,'TUNA',1,'2013-12-17 22:34:24',''),(7,'SUPREME',1,'2013-12-17 22:34:24',''),(8,'VEGETABLES',1,'2013-12-17 22:34:25',''),(9,'MEAT',1,'2013-12-17 22:34:26',''),(10,'MARGARITA',1,'2013-12-17 22:34:26',''),(11,'PEPPERONI',1,'2013-12-17 22:34:29',''),(12,'Fajita',1,'2013-12-21 08:58:02','5.108.64.165');

/*Table structure for table `master_kind_of_sandwiches_details` */

DROP TABLE IF EXISTS `master_kind_of_sandwiches_details`;

CREATE TABLE `master_kind_of_sandwiches_details` (
  `kind_of_sandwiches_id` int(11) NOT NULL AUTO_INCREMENT,
  `kind_of_sandwiches` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kind_of_sandwiches_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `master_kind_of_sandwiches_details` */

insert  into `master_kind_of_sandwiches_details`(`kind_of_sandwiches_id`,`kind_of_sandwiches`,`user_id`,`upload_date`,`ip`) values (1,'Fajita',1,'2013-12-21 09:59:00','5.108.64.165'),(2,'Chicken',1,'2013-12-16 22:32:04',''),(3,'Pepproni',1,'2013-12-16 22:32:29',''),(4,'Mix',1,'2013-12-20 21:44:47','::1');

/*Table structure for table `master_meals_details` */

DROP TABLE IF EXISTS `master_meals_details`;

CREATE TABLE `master_meals_details` (
  `meals_id` int(11) NOT NULL AUTO_INCREMENT,
  `meals` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`meals_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `master_meals_details` */

insert  into `master_meals_details`(`meals_id`,`meals`,`user_id`,`upload_date`,`ip`) values (3,'2 Large Pizza + F. Cola',1,'2013-12-21 08:53:07','5.108.64.165'),(17,'Small Pizza + Potato + Cola',1,'2013-12-21 08:51:19','5.108.64.165'),(16,'Meduim Pizza + Potato + Cola',1,'2013-12-21 08:51:51','5.108.64.165'),(15,'Large Pizza + 2 Cola',1,'2013-12-21 08:52:24','5.108.64.165'),(14,'2 Small Pizza ',1,'2013-12-21 08:53:27','5.108.64.165'),(13,'2 Meduim Pizza + 2 Cola',1,'2013-12-21 08:53:46','5.108.64.165');

/*Table structure for table `master_side_order_details` */

DROP TABLE IF EXISTS `master_side_order_details`;

CREATE TABLE `master_side_order_details` (
  `side_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `side_order` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`side_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `master_side_order_details` */

insert  into `master_side_order_details`(`side_order_id`,`side_order`,`user_id`,`upload_date`,`ip`) values (1,'Potato',1,'2013-12-21 09:56:43','5.108.64.165'),(3,'Onion Rings',1,'2013-12-21 09:56:27','5.108.64.165'),(4,'Wings',1,'2013-12-21 09:55:59','5.108.64.165'),(5,'G.Bread',1,'2013-12-22 12:14:16','103.31.144.5');

/*Table structure for table `master_single_order_details` */

DROP TABLE IF EXISTS `master_single_order_details`;

CREATE TABLE `master_single_order_details` (
  `single_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `single_order` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`single_order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `master_single_order_details` */

insert  into `master_single_order_details`(`single_order_id`,`single_order`,`user_id`,`upload_date`,`ip`) values (1,'Large Pizza',1,'2013-12-21 08:54:12','5.108.64.165'),(3,'Meduim Pizza',1,'2013-12-22 12:05:18','103.31.144.5'),(4,'Small Pizza',1,'2013-12-21 08:56:58','5.108.64.165');

/*Table structure for table `master_types_of_dough_details` */

DROP TABLE IF EXISTS `master_types_of_dough_details`;

CREATE TABLE `master_types_of_dough_details` (
  `types_of_dough_id` int(11) NOT NULL AUTO_INCREMENT,
  `types_of_dough` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`types_of_dough_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `master_types_of_dough_details` */

insert  into `master_types_of_dough_details`(`types_of_dough_id`,`types_of_dough`,`user_id`,`upload_date`,`ip`) values (3,'PAN',1,'2013-12-16 22:33:49',''),(2,'THIN',2,'2013-12-20 11:43:28','210.89.37.142'),(4,'Crust',1,'2013-12-21 02:04:49','5.108.76.45');

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `order_id` int(5) NOT NULL AUTO_INCREMENT,
  `order_master_id` int(5) DEFAULT NULL,
  `type_id` int(10) DEFAULT NULL,
  `subtype_id` varchar(500) DEFAULT NULL,
  `dough_id` varchar(1000) DEFAULT NULL,
  `kind_of_pizza_id` varchar(1000) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `rate` varchar(10) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `promo_combo_id` int(11) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

/*Data for the table `order_details` */

insert  into `order_details`(`order_id`,`order_master_id`,`type_id`,`subtype_id`,`dough_id`,`kind_of_pizza_id`,`qty`,`rate`,`note`,`item_id`,`promo_combo_id`,`user_id`,`upload_date`,`ip`) values (1,1,4,'1','','',1,'6','',164,2,1,'2014-01-09 20:45:09','::1'),(2,1,3,'0','4','1',1,'39','',115,2,1,'2014-01-09 20:45:09','::1'),(3,1,2,'4','','',1,'13','',123,1,1,'2014-01-09 20:45:09','::1'),(4,1,5,'5','','',1,'3','',162,1,1,'2014-01-09 20:45:09','::1'),(5,1,5,'1','','',1,'195','',1,1,1,'2014-01-09 20:45:09','::1'),(6,2,5,'1','','',10,'195','',1,0,1,'2014-01-09 22:40:40','::1'),(7,3,5,'4','','',1,'1.5','',161,0,1,'2014-01-09 23:17:56','::1'),(8,3,4,'4','','',1,'12','5,3,',118,1,1,'2014-01-09 23:17:56','::1'),(9,3,2,'2','','',1,'200','3,',3,0,1,'2014-01-09 23:17:56','::1'),(10,3,5,'1','','',1,'195','',1,1,1,'2014-01-09 23:17:56','::1'),(11,3,4,'3','','',1,'6','1,4,',117,1,1,'2014-01-09 23:17:56','::1'),(12,3,5,'1','','',1,'195','',1,0,1,'2014-01-09 23:17:56','::1'),(13,4,5,'6','','',1,'5','',163,2,1,'2014-01-10 22:12:11','::1'),(14,4,2,'4','','',1,'13','',123,0,1,'2014-01-10 22:12:11','::1'),(15,4,3,'0','3','3',1,'25','',69,2,1,'2014-01-10 22:12:11','::1'),(16,4,5,'1','','',1,'195','',1,1,1,'2014-01-10 22:12:11','::1'),(17,4,3,'0','4','3',1,'29','',80,2,1,'2014-01-10 22:12:11','::1'),(18,4,4,'3','','',1,'6','',117,0,1,'2014-01-10 22:12:11','::1'),(19,4,2,'1','','',1,'13','',120,1,1,'2014-01-10 22:12:11','::1'),(20,4,2,'2','','',1,'200','',3,1,1,'2014-01-10 22:12:11','::1'),(21,5,2,'3','','',1,'13','',122,3,2,'2014-01-11 00:30:49','::1'),(22,5,2,'1','','',1,'13','',120,3,2,'2014-01-11 00:30:49','::1'),(23,5,2,'2','','',1,'200','',3,0,2,'2014-01-11 00:30:49','::1'),(24,5,5,'1','','',1,'195','',1,3,2,'2014-01-11 00:30:49','::1'),(25,5,4,'5','','',1,'6','',119,0,2,'2014-01-11 00:30:49','::1'),(26,5,3,'0','2','3',1,'15','',23,4,2,'2014-01-11 00:30:49','::1'),(27,5,3,'0','4','3',1,'18','',45,4,2,'2014-01-11 00:30:49','::1'),(28,5,5,'4','','',1,'1.5','',161,4,2,'2014-01-11 00:30:49','::1'),(29,6,3,'13','2','3',1,'300','',5,4,1,'2014-01-19 17:40:48','::1'),(30,6,4,'3','','',1,'6','',117,4,1,'2014-01-19 17:40:48','::1'),(31,6,5,'1','','',1,'195','',1,3,1,'2014-01-19 17:40:48','::1'),(32,6,2,'2','','',1,'200','',3,3,1,'2014-01-19 17:40:48','::1'),(33,7,5,'3','','',2,'200','',345,0,1,'2014-02-05 05:34:55','::1'),(34,7,5,'4','','',2,'300','',349,0,1,'2014-02-05 05:34:55','::1'),(35,8,5,'3','','',1,'200','',345,0,1,'2014-02-05 05:37:25','::1'),(36,8,5,'4','','',3,'300','',349,0,1,'2014-02-05 05:37:25','::1'),(37,9,5,'5','','',1,'270','',348,0,1,'2014-02-05 05:39:31','::1'),(38,9,5,'4','','',1,'300','',349,0,1,'2014-02-05 05:39:31','::1'),(39,10,5,'3','','',3,'200','',345,0,1,'2014-02-05 05:48:20','::1'),(40,11,5,'4','','',1,'300','',349,0,1,'2014-02-05 05:50:10','::1'),(41,11,5,'3','','',1,'200','',345,0,1,'2014-02-05 05:50:10','::1'),(42,12,5,'4','','',1,'300','',349,0,1,'2014-02-05 05:50:36','::1'),(43,12,5,'3','','',1,'200','',345,0,1,'2014-02-05 05:50:36','::1'),(44,13,5,'4','','',1,'300','',349,0,1,'2014-02-05 06:01:32','::1'),(45,13,5,'3','','',1,'200','',345,0,1,'2014-02-05 06:01:32','::1'),(46,14,5,'4','','',1,'300','',349,0,1,'2014-02-05 06:01:45','::1'),(47,14,5,'3','','',1,'200','',345,0,1,'2014-02-05 06:01:45','::1'),(48,15,5,'1','','',1,'50','',347,0,1,'2014-02-05 22:07:42','::1'),(49,15,5,'3','','',2,'200','',345,0,1,'2014-02-05 22:07:42','::1'),(50,16,5,'1','','',1,'50','',347,0,1,'2014-02-05 22:10:05','::1'),(51,16,5,'3','','',2,'200','',345,0,1,'2014-02-05 22:10:05','::1'),(52,17,5,'3','','',2,'200','',345,0,1,'2014-02-05 22:10:28','::1'),(53,18,5,'1','','',1,'195','',391,0,1,'2014-02-05 22:28:36','::1'),(54,18,5,'6','','',2,'65','',392,0,1,'2014-02-05 22:28:36','::1'),(55,19,2,'2','','',1,'50','',396,0,1,'2014-02-05 22:36:23','::1'),(56,19,2,'1','','',2,'100','',395,0,1,'2014-02-05 22:36:23','::1'),(57,20,4,'3','','',2,'100','',398,0,1,'2014-02-05 22:43:59','::1'),(58,20,4,'1','','',2,'100','',397,0,1,'2014-02-05 22:43:59','::1'),(59,21,3,'0','4','3',2,'195','',400,0,1,'2014-02-05 22:50:14','::1'),(60,21,3,'0','2','1',2,'100','',399,0,1,'2014-02-05 22:50:14','::1'),(61,22,1,'','','',2,'300','1,4,5,3,2,7,6,',407,0,1,'2014-02-05 23:29:02','::1'),(62,22,1,'','','',2,'200','',406,0,1,'2014-02-05 23:29:02','::1'),(63,23,1,'','','',2,'200','',406,0,1,'2014-02-05 23:45:17','::1'),(64,23,5,'1','','',2,'195','1,4,5,3,',391,0,1,'2014-02-05 23:45:17','::1'),(65,23,5,'6','','',1,'65','',392,0,1,'2014-02-05 23:45:17','::1'),(66,23,3,'0','4','3',1,'195','1,',400,0,1,'2014-02-05 23:45:17','::1'),(67,23,4,'1','','',4,'100','1,4,',397,0,1,'2014-02-05 23:45:17','::1'),(68,23,2,'1','','',2,'300','',401,0,1,'2014-02-05 23:45:17','::1'),(69,24,1,'','','',1,'300','',407,0,1,'2014-03-29 11:46:37','::1'),(70,24,1,'','','',1,'200','',406,0,1,'2014-03-29 11:46:37','::1'),(71,24,1,'','','',1,'300','',407,0,1,'2014-03-29 11:46:37','::1'),(72,24,1,'','','',1,'300','',407,0,1,'2014-03-29 11:46:37','::1'),(73,24,1,'','','',1,'200','1,4,5,3,2,7,6,',406,0,1,'2014-03-29 11:46:37','::1');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `order_master_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT '0',
  `order_date` date DEFAULT NULL,
  `order_type` int(5) DEFAULT NULL COMMENT '3 -> delivery',
  `total_amount` int(11) DEFAULT NULL,
  `grand_amount` int(11) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`order_master_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `order_master` */

insert  into `order_master`(`order_master_id`,`order_id`,`order_date`,`order_type`,`total_amount`,`grand_amount`,`user_id`,`upload_date`,`ip`) values (1,1,'2014-01-09',2,256,256,1,'2014-01-09 20:45:09','::1'),(2,2,'2014-01-09',2,1950,1950,1,'2014-01-09 22:40:40','::1'),(3,3,'2014-01-09',1,610,610,1,'2014-01-09 23:17:56','::1'),(4,4,'2014-01-10',2,486,486,1,'2014-01-10 22:12:11','::1'),(5,5,'2014-01-11',2,462,462,2,'2014-01-11 00:30:49','::1'),(6,6,'2014-01-19',1,701,701,1,'2014-01-19 17:40:48','::1'),(7,7,'2014-02-05',1,1000,1000,1,'2014-02-05 05:34:55','::1'),(8,8,'2014-02-05',2,1100,1100,1,'2014-02-05 05:37:25','::1'),(9,9,'2014-02-05',3,570,670,1,'2014-02-05 05:39:31','::1'),(10,10,'2014-02-05',1,600,600,1,'2014-02-05 05:48:20','::1'),(11,11,'2014-02-05',2,500,500,1,'2014-02-05 05:50:10','::1'),(12,12,'2014-02-05',1,500,500,1,'2014-02-05 05:50:36','::1'),(13,13,'2014-02-05',3,500,600,1,'2014-02-05 06:01:32','::1'),(14,14,'2014-02-05',3,500,600,1,'2014-02-05 06:01:45','::1'),(15,15,'2014-02-05',3,450,550,1,'2014-02-05 22:07:42','::1'),(16,16,'2014-02-05',3,450,550,1,'2014-02-05 22:10:05','::1'),(17,17,'2014-02-05',2,400,400,1,'2014-02-05 22:10:28','::1'),(18,18,'2014-02-05',1,325,325,1,'2014-02-05 22:28:36','::1'),(19,19,'2014-02-05',1,250,250,1,'2014-02-05 22:36:23','::1'),(20,20,'2014-02-05',3,400,500,1,'2014-02-05 22:43:59','::1'),(21,21,'2014-02-05',1,590,590,1,'2014-02-05 22:50:14','::1'),(22,22,'2014-02-05',2,1000,1000,1,'2014-02-05 23:29:02','::1'),(23,23,'2014-02-05',1,2050,2050,1,'2014-02-05 23:45:17','::1'),(24,24,'2014-03-29',3,1300,1400,1,'2014-03-29 11:46:37','::1'),(25,25,'2015-07-03',3,245,345,1,'2015-07-03 06:06:46','::1'),(26,26,'2015-07-03',3,245,345,1,'2015-07-03 06:07:07','::1'),(27,27,'2015-07-03',3,245,345,1,'2015-07-03 06:07:18','::1'),(28,28,'2015-07-03',3,245,345,1,'2015-07-03 06:07:26','::1'),(29,29,'2015-07-03',2,195,195,1,'2015-07-03 06:07:56','::1'),(30,30,'2015-08-05',1,195,195,1,'2015-08-05 04:22:01','::1'),(31,31,'2015-09-11',1,245,245,1,'2015-09-11 09:48:12','::1'),(32,32,'2015-09-11',1,245,245,1,'2015-09-11 09:48:48','::1'),(33,33,'2015-09-11',1,245,245,1,'2015-09-11 09:48:49','::1'),(34,34,'2015-09-11',1,245,245,1,'2015-09-11 09:48:49','::1'),(35,35,'2015-09-11',1,245,245,1,'2015-09-11 09:48:51','::1'),(36,36,'2015-09-11',1,245,245,1,'2015-09-11 09:48:51','::1'),(37,37,'2015-09-11',1,245,245,1,'2015-09-11 09:48:51','::1'),(38,38,'2015-09-11',2,245,245,1,'2015-09-11 09:50:28','::1'),(39,39,'2015-09-14',2,390,390,1,'2015-09-14 03:24:43','::1'),(40,40,'2015-09-14',2,65,65,1,'2015-09-14 03:26:12','::1'),(41,41,'2015-10-04',2,795,795,1,'2015-10-04 02:07:23','::1');

/*Table structure for table `pizza_backup` */

DROP TABLE IF EXISTS `pizza_backup`;

CREATE TABLE `pizza_backup` (
  `backup_id` int(11) NOT NULL AUTO_INCREMENT,
  `backup_file_name` varchar(5000) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `pizza_backup` */

insert  into `pizza_backup`(`backup_id`,`backup_file_name`,`user_id`,`upload_date`,`ip`) values (1,'sql_backup1387999584-8aefb6c8b16d353c64c76448e299961b',1,'2013-12-26 00:56:00','::1'),(2,'sql_backup1388034782-8aefb6c8b16d353c64c76448e299961b',1,'2013-12-26 00:13:02','122.170.65.242'),(3,'sql_backup1388071743-8aefb6c8b16d353c64c76448e299961b',1,'2013-12-26 10:29:03','5.108.221.188'),(4,'sql_backup1388076917-8aefb6c8b16d353c64c76448e299961b',2,'2013-12-26 11:55:17','203.115.83.250'),(5,'sql_backup1388081972-8aefb6c8b16d353c64c76448e299961b',1,'2013-12-26 13:19:32','203.115.76.62');

/*Table structure for table `pizza_user_address_details` */

DROP TABLE IF EXISTS `pizza_user_address_details`;

CREATE TABLE `pizza_user_address_details` (
  `pizza_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `pizza_user_id` int(11) NOT NULL DEFAULT '0',
  `flat_no` varchar(5000) DEFAULT NULL,
  `wing` varchar(3000) DEFAULT NULL,
  `building_name` varchar(5000) DEFAULT NULL,
  `land_mark` varchar(5000) DEFAULT NULL,
  `society_no` varchar(5000) DEFAULT NULL,
  `area_id` varchar(5000) DEFAULT NULL,
  `sub_area_id` int(5) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pizza_address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `pizza_user_address_details` */

insert  into `pizza_user_address_details`(`pizza_address_id`,`pizza_user_id`,`flat_no`,`wing`,`building_name`,`land_mark`,`society_no`,`area_id`,`sub_area_id`,`user_id`,`upload_date`,`ip`) values (1,1,'11','A','Ganesh Bilding','LAND MARK','SOC NO','1',0,1,'2013-12-14 15:06:20',''),(2,2,'45','B','gokul','tanaji road','times','1',0,1,'2013-12-06 08:21:07','::1'),(3,1,'12','B','ganesh prasad','saral road','Ashok scoi','1',0,0,'2013-12-06 23:28:40','::1'),(4,3,'122','DD','testing','road','sco','1',0,1,'2013-12-07 10:31:11','::1'),(5,3,'23','W','dsfd','bvcbcvb','xfgggdfg','1',0,0,'2013-12-07 10:32:16','::1'),(6,4,'45','K','dcm,nzxc','.,c ,.c ','zxcnzxcmn','1',0,1,'2013-12-07 10:33:37','::1');

/*Table structure for table `pizza_user_contact_nos_details` */

DROP TABLE IF EXISTS `pizza_user_contact_nos_details`;

CREATE TABLE `pizza_user_contact_nos_details` (
  `pizza_contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `pizza_user_id` varchar(50) DEFAULT '0',
  `mobile` varchar(5000) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pizza_contact_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `pizza_user_contact_nos_details` */

insert  into `pizza_user_contact_nos_details`(`pizza_contact_id`,`pizza_user_id`,`mobile`,`user_id`,`upload_date`,`ip`) values (1,'1','9221460042',1,'2013-12-06 23:22:19','::1'),(2,'2','9892116654',1,'2013-12-06 08:21:09','::1'),(3,'1','9221460041',0,'2013-12-06 23:22:27','::1'),(4,'3','9221460044',1,'2013-12-07 10:31:12','::1'),(5,'4','9221460043',1,'2013-12-07 10:33:38','::1'),(6,'4','9221460045',0,'2013-12-07 10:33:55','::1');

/*Table structure for table `pizza_user_details` */

DROP TABLE IF EXISTS `pizza_user_details`;

CREATE TABLE `pizza_user_details` (
  `pizza_user_id` int(5) NOT NULL AUTO_INCREMENT,
  `fname` varchar(5000) DEFAULT NULL,
  `lname` varchar(5000) DEFAULT NULL,
  `emailid` varchar(4000) DEFAULT NULL,
  `password` varchar(1500) DEFAULT NULL,
  `pizza_user_type` enum('1','2') DEFAULT '2' COMMENT '1->register_user, 2->customer_user',
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pizza_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pizza_user_details` */

insert  into `pizza_user_details`(`pizza_user_id`,`fname`,`lname`,`emailid`,`password`,`pizza_user_type`,`user_id`,`upload_date`,`ip`) values (1,'Rajesh','Palande','rajeshpalande77@gmail.com','admin','2',1,'2013-12-05 22:54:55',''),(2,'ARUN','MORE','arun@gmail.com','123','2',1,'2013-12-06 08:21:07','::1'),(3,'RAM','DALVI','ram@gmail.com','123','2',1,'2013-12-07 10:31:11','::1'),(4,'ARUN','MANE','arun@gmail.com','123','2',1,'2013-12-07 10:33:37','::1');

/*Table structure for table `promo_combination` */

DROP TABLE IF EXISTS `promo_combination`;

CREATE TABLE `promo_combination` (
  `promo_combination_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `promo_category` enum('0','1') DEFAULT NULL COMMENT '0-> promo selected, 1-> free selected',
  `promo_selected_item_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`promo_combination_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `promo_combination` */

insert  into `promo_combination`(`promo_combination_id`,`item_id`,`promo_category`,`promo_selected_item_id`,`upload_date`,`user_id`,`ip`) values (1,406,'0',401,'2014-02-05 23:24:59',1,'::1'),(2,406,'0',402,'2014-02-05 23:24:59',1,'::1'),(3,406,'1',392,'2014-02-05 23:24:59',1,'::1'),(4,407,'0',397,'2014-02-05 23:25:59',1,'::1'),(5,407,'0',400,'2014-02-05 23:25:59',1,'::1'),(6,407,'1',394,'2014-02-05 23:25:59',1,'::1');

/*Table structure for table `sayad_details` */

DROP TABLE IF EXISTS `sayad_details`;

CREATE TABLE `sayad_details` (
  `sayad_id` int(11) NOT NULL AUTO_INCREMENT,
  `sayad` varchar(5000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sayad_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `sayad_details` */

insert  into `sayad_details`(`sayad_id`,`sayad`,`user_id`,`upload_date`,`ip`) values (1,'no mashrom',1,'2013-12-16 23:28:47',''),(2,'no.tmatom',1,'2013-12-16 23:28:48',''),(3,'no.onion',1,'2013-12-16 23:28:49',''),(4,'no.G pepper',1,'2013-12-16 23:28:49',''),(5,'no.olive',1,'2013-12-16 23:28:50',''),(6,'with.olive',1,'2013-12-16 23:28:51',''),(7,'with.chili',1,'2013-12-16 23:28:52','');

/*Table structure for table `shift_time` */

DROP TABLE IF EXISTS `shift_time`;

CREATE TABLE `shift_time` (
  `shift_time_id` int(11) NOT NULL AUTO_INCREMENT,
  `shift_time_name` varchar(500) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`shift_time_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Data for the table `shift_time` */

insert  into `shift_time`(`shift_time_id`,`shift_time_name`,`user_id`,`upload_time`,`ip`) values (1,'00:00',1,'2013-12-07 16:45:16',''),(2,'00:30',1,'2013-12-07 16:45:16',''),(3,'01:00',1,'2013-12-07 16:45:17',''),(4,'01:30',1,'2013-12-07 16:45:18',''),(5,'02:00',1,'2013-12-07 16:45:18',''),(6,'02:30',1,'2013-12-07 16:45:19',''),(7,'03:00',1,'2013-12-07 16:45:19',''),(8,'03:30',1,'2013-12-07 16:45:19',''),(9,'04:00',1,'2013-12-07 16:45:20',''),(10,'04:30',1,'2013-12-07 16:45:20',''),(11,'05:00',1,'2013-12-07 16:45:21',''),(12,'05:30',1,'2013-12-07 16:45:21',''),(13,'06:00',1,'2013-12-07 16:45:22',''),(14,'06:30',1,'2013-12-07 16:45:22',''),(15,'07:00',1,'2013-12-07 16:45:22',''),(16,'07:30',1,'2013-12-07 16:45:23',''),(17,'08:00',1,'2013-12-07 16:45:23',''),(18,'08:30',1,'2013-12-07 16:45:24',''),(19,'09:00',1,'2013-12-07 16:45:24',''),(20,'09:30',1,'2013-12-07 16:45:25',''),(21,'10:00',1,'2013-12-07 16:45:25',''),(22,'10:30',1,'2013-12-07 16:45:25',''),(23,'11:00',1,'2013-12-07 16:45:26',''),(24,'11:30',1,'2013-12-07 16:45:26',''),(25,'12:00',1,'2013-12-07 16:45:27',''),(26,'12:30',1,'2013-12-07 16:45:27',''),(27,'13:00',1,'2013-12-07 16:45:27',''),(28,'13:30',1,'2013-12-07 16:45:28',''),(29,'14:00',1,'2013-12-07 16:45:28',''),(30,'14:30',1,'2013-12-07 16:45:29',''),(31,'15:00',1,'2013-12-07 16:45:29',''),(32,'15:30',1,'2013-12-07 16:45:29',''),(33,'16:00',1,'2013-12-07 16:45:30',''),(34,'16:30',1,'2013-12-07 16:45:30',''),(35,'17:00',1,'2013-12-07 16:45:31',''),(36,'17:30',1,'2013-12-07 16:45:31',''),(37,'18:00',1,'2013-12-07 16:45:31',''),(38,'18:30',1,'2013-12-07 16:45:32',''),(39,'19:00',1,'2013-12-07 16:45:32',''),(40,'19:30',1,'2013-12-07 16:45:33',''),(41,'20:00',1,'2013-12-07 16:45:33',''),(42,'20:30',1,'2013-12-07 16:45:34',''),(43,'21:00',1,'2013-12-07 16:45:34',''),(44,'21:30',1,'2013-12-07 16:45:38',''),(45,'22:00',1,'2013-12-07 16:45:42',''),(46,'22:30',1,'2013-12-07 16:45:39',''),(47,'23:00',1,'2013-12-07 16:45:45',''),(48,'23:30',1,'2013-12-07 16:45:46',''),(49,'24:00',1,'2013-12-07 16:45:47','');

/*Table structure for table `size_of_pizza_details` */

DROP TABLE IF EXISTS `size_of_pizza_details`;

CREATE TABLE `size_of_pizza_details` (
  `size_of_pizza_id` int(11) NOT NULL AUTO_INCREMENT,
  `pizza_size` varchar(2000) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(5) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`size_of_pizza_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `size_of_pizza_details` */

insert  into `size_of_pizza_details`(`size_of_pizza_id`,`pizza_size`,`upload_date`,`user_id`,`ip`) values (1,'SMALL','2013-12-16 22:36:19',1,''),(2,'MEDIUM','2013-12-16 22:36:20',1,''),(3,'LARGE','2013-12-16 22:36:21',1,'');

/*Table structure for table `stock_details` */

DROP TABLE IF EXISTS `stock_details`;

CREATE TABLE `stock_details` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(5) DEFAULT NULL,
  `meals_id` int(5) DEFAULT NULL,
  `dough_id` int(5) DEFAULT NULL,
  `kind_of_pizza_id` int(5) DEFAULT NULL,
  `sandwich_id` int(5) DEFAULT NULL,
  `size_of_pizza_id` int(5) DEFAULT NULL,
  `side_order_id` int(5) DEFAULT NULL,
  `drink_id` int(5) DEFAULT NULL,
  `price` varchar(500) DEFAULT NULL,
  `total_qty` int(11) DEFAULT '0',
  `sales_qty` int(11) NOT NULL DEFAULT '0',
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `description` text,
  `user_id` int(11) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=408 DEFAULT CHARSET=latin1;

/*Data for the table `stock_details` */

insert  into `stock_details`(`item_id`,`type_id`,`meals_id`,`dough_id`,`kind_of_pizza_id`,`sandwich_id`,`size_of_pizza_id`,`side_order_id`,`drink_id`,`price`,`total_qty`,`sales_qty`,`status`,`description`,`user_id`,`upload_date`,`ip`) values (400,3,0,4,3,0,2,0,0,'195',-5,5,'0',NULL,1,'2015-09-14 03:24:43','::1'),(397,4,0,0,0,0,0,1,0,'100',-6,6,'0',NULL,1,'2014-02-05 23:45:17','::1'),(399,3,0,2,1,0,2,0,0,'100',-2,2,'0',NULL,1,'2014-02-05 22:50:14','::1'),(392,5,0,0,0,0,0,0,6,'65',-43,43,'0',NULL,1,'2015-09-14 03:26:12','::1'),(391,5,0,0,0,0,0,0,1,'195',-5,5,'0',NULL,1,'2015-10-04 02:07:23','::1'),(398,4,0,0,0,0,0,3,0,'100',-2,2,'0',NULL,1,'2014-02-05 22:43:59','::1'),(401,2,0,0,0,1,0,0,0,'300',-4,4,'0',NULL,1,'2015-10-04 02:07:23','::1'),(402,2,0,0,0,4,0,0,0,'50',-12,12,'0',NULL,1,'2015-09-11 09:50:28','::1'),(406,1,0,0,0,0,0,0,0,'200',-6,6,'0',NULL,1,'2014-03-29 11:46:36','::1'),(407,1,0,0,0,0,0,0,0,'300',-5,5,'0',NULL,1,'2014-03-29 11:46:36','::1'),(394,5,0,0,0,0,0,0,5,'50',0,0,'0',NULL,1,'2014-02-05 22:26:15','::1');

/*Table structure for table `stock_qty` */

DROP TABLE IF EXISTS `stock_qty`;

CREATE TABLE `stock_qty` (
  `item_qty_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `insert_date` date DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`item_qty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `stock_qty` */

insert  into `stock_qty`(`item_qty_id`,`item_id`,`insert_date`,`item_qty`,`user_id`,`upload_date`,`ip`) values (5,163,'2013-12-27',30,1,'2013-12-27 15:51:32','203.115.77.158'),(6,1,'2013-12-25',10,1,'2013-12-27 13:34:39','103.245.69.184'),(7,163,'2013-12-31',50,1,'2013-12-27 15:51:12','203.115.77.158'),(8,162,'2013-12-27',10,1,'2013-12-27 15:55:52','103.245.69.184'),(9,163,'2013-12-31',20,1,'2013-12-27 15:58:09','103.245.69.184'),(10,164,'2013-12-07',10,1,'2013-12-28 05:00:01','103.245.69.184'),(11,123,'2013-12-04',10,1,'2013-12-28 05:07:14','103.245.69.184'),(12,163,'2013-12-28',10,1,'2013-12-28 14:34:19','5.108.221.12'),(13,115,'2013-12-29',12,1,'2013-12-29 12:31:03','::1'),(14,1,'2014-01-09',5,1,'2014-01-09 22:47:13','::1');

/*Table structure for table `temp_cart_details` */

DROP TABLE IF EXISTS `temp_cart_details`;

CREATE TABLE `temp_cart_details` (
  `cart_id` int(5) NOT NULL AUTO_INCREMENT,
  `item_id` int(10) DEFAULT NULL,
  `type_id` int(10) DEFAULT NULL,
  `subtype_id` int(5) DEFAULT NULL,
  `dough_id` int(5) DEFAULT NULL,
  `kind_of_pizza_id` int(5) DEFAULT NULL,
  `qty` int(5) DEFAULT NULL,
  `rate` varchar(50) NOT NULL,
  `note` varchar(1000) DEFAULT NULL,
  `session_id` varchar(5000) DEFAULT NULL,
  `Promo_type_id` int(11) DEFAULT NULL,
  `promo_combo_id` int(11) DEFAULT '0',
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  `stock_total` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `temp_cart_details` */

insert  into `temp_cart_details`(`cart_id`,`item_id`,`type_id`,`subtype_id`,`dough_id`,`kind_of_pizza_id`,`qty`,`rate`,`note`,`session_id`,`Promo_type_id`,`promo_combo_id`,`upload_date`,`ip`,`stock_total`) values (40,407,1,NULL,NULL,NULL,1,'300',NULL,'4gm7rpdvvoekcuaajne3ohfg15',NULL,0,'2014-03-29 11:47:50','::1',0),(39,406,1,NULL,NULL,NULL,1,'200',NULL,'4gm7rpdvvoekcuaajne3ohfg15',NULL,0,'2014-03-29 11:47:47','::1',0),(54,392,5,6,NULL,NULL,1,'65',NULL,'akpj1420t1dnidrbdd308bsm21',0,0,'2015-10-04 02:06:37','::1',1);

/*Table structure for table `user_master` */

DROP TABLE IF EXISTS `user_master`;

CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(1000) DEFAULT NULL,
  `pass` varchar(1000) DEFAULT NULL,
  `user_type` int(5) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `email` varchar(1000) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `datainter_user_id` int(11) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL,
  `confirm` enum('0','1') DEFAULT '0' COMMENT '0 -> active, 1-> inactive',
  `upload_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_master` */

insert  into `user_master`(`user_id`,`username`,`pass`,`user_type`,`name`,`email`,`mobile`,`datainter_user_id`,`ip`,`confirm`,`upload_time`) values (1,'admin','admin',1,'admin','admin@admin.com','9876541230',1,'::1','0','2013-12-07 00:30:33'),(2,'user','123',1,'Amit','rajeshpalande77@gmail.com','9221460041',2,'103.31.144.5','0','2013-12-22 12:42:45');

/*Table structure for table `user_type_detilas` */

DROP TABLE IF EXISTS `user_type_detilas`;

CREATE TABLE `user_type_detilas` (
  `user_type_id` int(5) NOT NULL AUTO_INCREMENT,
  `role` varchar(1000) DEFAULT NULL,
  `status` enum('0','1') DEFAULT NULL COMMENT '0 -> user active, 1-> user inactive',
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user_type_detilas` */

insert  into `user_type_detilas`(`user_type_id`,`role`,`status`,`upload_date`,`ip`) values (1,'Admin','0','2013-12-03 23:56:21',''),(2,'Manager','0','2013-12-03 23:57:21',''),(3,'Operation','0','2013-12-03 23:57:22',''),(4,'Telecaller','0','2013-12-03 23:57:25','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
