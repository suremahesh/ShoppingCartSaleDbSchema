/*
SQLyog Community v13.1.4  (64 bit)
MySQL - 8.0.26 : Database - shoppingcartsale
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoppingcartsale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shoppingcartsale`;

/*Table structure for table `buyer_link` */

DROP TABLE IF EXISTS `buyer_link`;

CREATE TABLE `buyer_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `buyer_number` varchar(20) NOT NULL,
  `seller_number` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `buyer_link` */

insert  into `buyer_link`(`id`,`buyer_number`,`seller_number`) values 
(392,'+916305287651','+919705661669');

/*Table structure for table `cart_info` */

DROP TABLE IF EXISTS `cart_info`;

CREATE TABLE `cart_info` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(20) NOT NULL,
  `prod_id` bigint DEFAULT NULL,
  `prod_count` bigint DEFAULT NULL,
  `mobile_number_send` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cart_info` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`) values 
(1,'Morning'),
(2,'Afternoon'),
(3,'Night'),
(4,'DIm');

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(475);

/*Table structure for table `location_table` */

DROP TABLE IF EXISTS `location_table`;

CREATE TABLE `location_table` (
  `ID` int NOT NULL,
  `LOCATION` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `location_table` */

insert  into `location_table`(`ID`,`LOCATION`) values 
(371,'hyd');

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bill_no` bigint DEFAULT NULL,
  `prod_id` bigint DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order_details` */

insert  into `order_details`(`id`,`bill_no`,`prod_id`,`quantity`) values 
(455,454,375,1),
(456,454,428,1),
(459,458,375,1),
(463,462,375,1),
(464,462,428,1),
(468,467,375,1),
(469,467,428,1),
(473,472,375,1),
(474,472,428,1);

/*Table structure for table `order_placed` */

DROP TABLE IF EXISTS `order_placed`;

CREATE TABLE `order_placed` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'billno',
  `seller_number` varchar(15) DEFAULT NULL,
  `buyer_number` varchar(15) DEFAULT NULL,
  `transactiondate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=473 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `order_placed` */

insert  into `order_placed`(`id`,`seller_number`,`buyer_number`,`transactiondate`) values 
(454,'+919705661669','+916305287651','2021-12-03 16:46:27'),
(458,'+919705661669','+916305287651','2021-12-03 16:46:44'),
(462,'+919705661669','+916305287651','2021-12-03 16:49:42'),
(467,'+919705661669','+916305287651','2021-12-03 16:49:59'),
(472,'+919705661669','+916305287651','2021-12-03 16:56:39');

/*Table structure for table `products_mst` */

DROP TABLE IF EXISTS `products_mst`;

CREATE TABLE `products_mst` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category_id` bigint NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `products_mst` */

insert  into `products_mst`(`id`,`name`,`category_id`,`price`) values 
(77,'cjgi',1,25),
(79,'cjgi',3,36),
(375,'chc',1,98),
(428,'test2',1,35),
(430,'test3',2,36),
(432,'fh',3,36);

/*Table structure for table `shop_names` */

DROP TABLE IF EXISTS `shop_names`;

CREATE TABLE `shop_names` (
  `ID` int NOT NULL,
  `SHOP_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `shop_names` */

insert  into `shop_names`(`ID`,`SHOP_NAME`) values 
(370,'vsgs');

/*Table structure for table `type_table` */

DROP TABLE IF EXISTS `type_table`;

CREATE TABLE `type_table` (
  `ID` int NOT NULL,
  `TYPE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `type_table` */

insert  into `type_table`(`ID`,`TYPE`) values 
(1,'BUYER'),
(2,'SELLER');

/*Table structure for table `user_dtl` */

DROP TABLE IF EXISTS `user_dtl`;

CREATE TABLE `user_dtl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(255) NOT NULL,
  `location_id` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `owner_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `shop_id` (`shop_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=392 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_dtl` */

insert  into `user_dtl`(`id`,`mobile_number`,`location_id`,`shop_id`,`owner_name`) values 
(372,'+919705661669',371,370,'mahesh'),
(378,'+916305287651',0,0,''),
(380,'+916305287651',0,0,''),
(383,'+916305287651',0,0,''),
(385,'+916305287651',0,0,''),
(389,'+916305287651',0,0,''),
(391,'+916305287651',0,0,'');

/*Table structure for table `user_product` */

DROP TABLE IF EXISTS `user_product`;

CREATE TABLE `user_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `user_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products_mst` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_product` */

insert  into `user_product`(`id`,`product_id`,`mobile_number`) values 
(376,375,'+919705661669'),
(429,428,'+919705661669'),
(431,430,'+919705661669'),
(433,432,'+919705661669');

/*Table structure for table `user_table` */

DROP TABLE IF EXISTS `user_table`;

CREATE TABLE `user_table` (
  `id` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `mobile_number` varchar(255) NOT NULL,
  `type` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `STATUS` int DEFAULT NULL,
  PRIMARY KEY (`id`,`mobile_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user_table` */

insert  into `user_table`(`id`,`created_at`,`created_by`,`mobile_number`,`type`,`updated_at`,`updated_by`,`STATUS`) values 
(369,'2021-12-03 11:07:12','','+919705661669',2,'2021-12-03 11:07:12','',2),
(377,'2021-12-03 11:11:41','','+916305287651',1,'2021-12-03 11:53:03','',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
