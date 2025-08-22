-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: full-stack-ecommerce
-- ------------------------------------------------------
-- Server version	5.7.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Mamak',NULL,'Ankara','Tuzlucayir','06820'),(2,'Mamak',NULL,'Ankara','Tuzlucayir','06820'),(3,'Mamak',NULL,'Ankara','Tuzlucayir','06820'),(4,'Mamak',NULL,'Ankara','Tuzlucayir','06820'),(5,'City',NULL,'Alberta','Street','11111'),(6,'City',NULL,'Alberta','Street','11111'),(7,'Test',NULL,'Acre','Test','45555'),(8,'Test',NULL,'Acre','Test','45555'),(9,'Şehir',NULL,'Adıyaman','Sokak','06666'),(10,'Şehir',NULL,'Adıyaman','Sokak','06666'),(11,'City',NULL,'Alberta','Street','22222'),(12,'City',NULL,'Alberta','Street','22222'),(13,'City',NULL,'Acre','Street','22222'),(14,'City',NULL,'Acre','Street','22222'),(15,'Mamak','Turkey','Ankara','Tuzlucayir Mah','06620'),(16,'Mamak','Turkey','Ankara','Tuzlucayir Mah','06620'),(17,'Mamak','Turkey','Ankara','Tuzlucayir Mah','06620'),(18,'Mamak','Turkey','Ankara','Tuzlucayir Mah','06620'),(19,'Mamak','Canada','Alberta','Tuzlucayir Mah','06620'),(20,'Mamak','Canada','Alberta','Tuzlucayir Mah','06620'),(21,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(22,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(23,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(24,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(25,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(26,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(27,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(28,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(29,'Mamak','Germany','Bavaria','Tuzlucayir','06620'),(30,'Mamak','Germany','Bavaria','Tuzlucayir','06620'),(31,'Mamak','Turkey','Ankara','Tuzlucayir','06620'),(32,'Mamak','Turkey','Ankara','Tuzlucayir','06620');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` smallint(5) unsigned NOT NULL,
  `code` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'BR','Brazil'),(2,'CA','Canada'),(3,'DE','Germany'),(4,'IN','India'),(5,'TR','Turkey'),(6,'US','United States');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Eren ','Gaygusuz','gaygusuzeren@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  `code` varchar(45) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_language_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Türkçe','tr-TR'),(2,'English','en-US');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `K_order_id` (`order_id`),
  KEY `FK_product_id` (`product_id`),
  CONSTRAINT `FK_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FK_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,'assets/images/products/books/book-luv2code-1000.png',2,14.99,1,1),(2,'assets/images/products/books/book-luv2code-1002.png',2,14.99,1,3),(3,'assets/images/products/books/book-luv2code-1003.png',2,13.99,1,4),(4,'assets/images/products/luggagetags/luggagetag-luv2code-1000.png',3,16.99,2,76),(5,'assets/images/products/books/book-luv2code-1002.png',2,14.99,2,3),(6,'assets/images/products/books/book-luv2code-1000.png',3,14.99,2,1),(7,'assets/images/products/books/book-luv2code-1003.png',3,13.99,2,4),(8,'assets/images/products/books/book-luv2code-1000.png',5,14.99,3,1),(9,'assets/images/products/luggagetags/luggagetag-luv2code-1000.png',3,16.99,3,76),(10,'assets/images/products/books/book-luv2code-1003.png',3,13.99,3,4),(11,'assets/images/products/books/book-luv2code-1002.png',2,14.99,3,3),(12,'assets/images/products/luggagetags/luggagetag-luv2code-1000.png',3,16.99,4,76),(13,'assets/images/products/books/book-luv2code-1003.png',3,13.99,4,4),(14,'assets/images/products/books/book-luv2code-1002.png',2,14.99,4,3),(15,'assets/images/products/books/book-luv2code-1000.png',5,14.99,4,1),(16,'assets/images/products/luggagetags/luggagetag-luv2code-1000.png',3,16.99,5,76),(17,'assets/images/products/books/book-luv2code-1003.png',3,13.99,5,4),(18,'assets/images/products/books/book-luv2code-1002.png',2,14.99,5,3),(19,'assets/images/products/books/book-luv2code-1000.png',5,14.99,5,1),(20,'assets/images/products/books/book-luv2code-1000.png',2,14.99,6,1),(21,'assets/images/products/books/book-luv2code-1003.png',2,13.99,7,4),(22,'images/products/books/book-luv2code-1001.png',1,20.99,8,2),(23,'images/products/books/book-luv2code-1000.png',4,14.99,8,1),(24,'images/products/books/book-luv2code-1002.png',1,14.99,8,3),(25,'images/products/coffeemugs/coffeemug-luv2code-1000.png',2,18.99,9,26),(26,'images/products/books/book-luv2code-1000.png',2,14.99,10,1),(27,'images/products/books/book-luv2code-1000.png',1,14.99,11,1),(28,'images/products/books/book-luv2code-1001.png',1,20.99,12,2),(29,'images/products/books/book-luv2code-1000.png',2,14.99,12,1),(30,'images/products/mousepads/mousepad-luv2code-1000.png',2,17.99,13,51),(31,'images/products/books/book-luv2code-1000.png',2,14.99,14,1),(32,'images/products/books/book-luv2code-1000.png',1,14.99,15,1),(33,'images/products/luggagetags/luggagetag-luv2code-1001.png',1,16.99,15,77),(34,'images/products/luggagetags/luggagetag-luv2code-1000.png',1,16.99,15,76),(35,'images/products/luggagetags/luggagetag-luv2code-1000.png',1,16.99,16,76),(36,'images/products/mousepads/mousepad-luv2code-1001.png',1,17.99,16,52),(37,'images/products/coffeemugs/coffeemug-luv2code-1002.png',1,18.99,16,28),(38,'images/products/books/book-luv2code-1000.png',2,14.99,16,1);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_tracking_number` varchar(255) DEFAULT NULL,
  `total_price` decimal(19,2) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `billing_address_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `shipping_address_id` bigint(20) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_billing_address_id` (`billing_address_id`),
  UNIQUE KEY `UK_shipping_address_id` (`shipping_address_id`),
  KEY `K_customer_id` (`customer_id`),
  CONSTRAINT `FK_billing_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_shipping_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2aa348da-6cd2-40c2-9e50-c787853b95df',87.94,6,1,1,2,NULL,'2025-07-25 07:42:20.307000','2025-07-25 07:42:20.307000'),(2,'971b9f00-46a2-4c2c-9ce7-027db628ac76',167.89,11,3,1,4,NULL,'2025-07-25 08:12:16.696000','2025-07-25 08:12:16.696000'),(3,'f7db70ce-65b1-49ea-b07f-fa619509e56a',197.87,13,5,1,6,NULL,'2025-07-25 18:31:23.644000','2025-07-25 18:31:23.644000'),(4,'71d22b08-70e4-4297-8ef7-ac730c7ff4eb',197.87,13,7,1,8,NULL,'2025-07-27 08:47:26.895000','2025-07-27 08:47:26.895000'),(5,'facd665d-6f75-4065-b1e1-402a2c866566',197.87,13,9,1,10,NULL,'2025-07-28 06:34:51.431000','2025-07-28 06:34:51.431000'),(6,'f7417e68-df34-4aa1-a348-2a6e84454eb3',29.98,2,11,1,12,NULL,'2025-07-28 06:41:36.132000','2025-07-28 06:41:36.132000'),(7,'bbb22aa6-4363-42aa-924f-3a3f2475c6a0',27.98,2,13,1,14,NULL,'2025-07-28 06:47:33.800000','2025-07-28 06:47:33.800000'),(8,'dd5a77f1-60d0-44d6-aecb-cb4e096579ad',95.94,6,15,1,16,NULL,'2025-08-06 14:26:47.255000','2025-08-06 14:26:47.255000'),(9,'cffc3da3-4c6e-4173-8c9e-e5837b64abd8',37.98,2,17,1,18,NULL,'2025-08-06 14:31:07.529000','2025-08-06 14:31:07.529000'),(10,'8a7fd8d8-d630-4744-923f-7cf9ee4258b8',29.98,2,19,1,20,NULL,'2025-08-06 14:34:44.225000','2025-08-06 14:34:44.225000'),(11,'20dac526-519c-4619-86f6-378a8bc98f79',14.99,1,21,1,22,NULL,'2025-08-17 12:08:09.505000','2025-08-17 12:08:09.505000'),(12,'600f581f-3311-49aa-9da1-766f4d86006d',50.97,3,23,1,24,NULL,'2025-08-17 12:12:10.040000','2025-08-17 12:12:10.040000'),(13,'2455e009-3cb9-49b4-ba8b-2e92b3378c4d',35.98,2,25,1,26,NULL,'2025-08-17 12:14:43.932000','2025-08-17 12:14:43.932000'),(14,'40f8dd4c-b811-4d00-91cf-143c86e6a9a1',29.98,2,27,1,28,NULL,'2025-08-20 14:30:10.801000','2025-08-20 14:30:10.801000'),(15,'65fbef3c-bc66-4124-8acf-a251b0549a61',48.97,3,29,1,30,NULL,'2025-08-21 11:23:12.974000','2025-08-21 11:23:12.974000'),(16,'b3bc5bd6-9f3e-4168-bfda-b43e7eed6498',83.95,5,31,1,32,NULL,'2025-08-22 12:08:54.100000','2025-08-22 12:08:54.100000');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `units_in_stock` int(11) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'BOOK-TECH-1000',14.99,'images/products/books/book-luv2code-1000.png',_binary '',100,'2025-07-11 14:54:57.000000',NULL,1),(2,'BOOK-TECH-1001',20.99,'images/products/books/book-luv2code-1001.png',_binary '',100,'2025-07-11 14:54:57.000000',NULL,1),(3,'BOOK-TECH-1002',14.99,'images/products/books/book-luv2code-1002.png',_binary '',100,'2025-07-11 14:54:57.000000',NULL,1),(4,'BOOK-TECH-1003',13.99,'images/products/books/book-luv2code-1003.png',_binary '',100,'2025-07-11 14:54:57.000000',NULL,1),(5,'BOOK-TECH-1004',18.99,'images/products/books/book-luv2code-1004.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(6,'BOOK-TECH-1005',23.99,'images/products/books/book-luv2code-1005.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(7,'BOOK-TECH-1006',14.99,'images/products/books/book-luv2code-1006.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(8,'BOOK-TECH-1007',16.99,'images/products/books/book-luv2code-1007.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(9,'BOOK-TECH-1008',25.99,'images/products/books/book-luv2code-1008.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(10,'BOOK-TECH-1009',23.99,'images/products/books/book-luv2code-1009.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(11,'BOOK-TECH-1010',24.99,'images/products/books/book-luv2code-1010.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(12,'BOOK-TECH-1011',19.99,'images/products/books/book-luv2code-1011.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(13,'BOOK-TECH-1012',24.99,'images/products/books/book-luv2code-1012.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(14,'BOOK-TECH-1013',19.99,'images/products/books/book-luv2code-1013.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(15,'BOOK-TECH-1014',22.99,'images/products/books/book-luv2code-1014.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(16,'BOOK-TECH-1015',22.99,'images/products/books/book-luv2code-1015.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(17,'BOOK-TECH-1016',27.99,'images/products/books/book-luv2code-1016.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(18,'BOOK-TECH-1017',13.99,'images/products/books/book-luv2code-1017.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(19,'BOOK-TECH-1018',26.99,'images/products/books/book-luv2code-1018.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(20,'BOOK-TECH-1019',13.99,'images/products/books/book-luv2code-1019.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(21,'BOOK-TECH-1020',19.99,'images/products/books/book-luv2code-1020.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(22,'BOOK-TECH-1021',18.99,'images/products/books/book-luv2code-1021.png',_binary '',100,'2025-07-11 14:54:58.000000',NULL,1),(23,'BOOK-TECH-1022',26.99,'images/products/books/book-luv2code-1022.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,1),(24,'BOOK-TECH-1023',22.99,'images/products/books/book-luv2code-1023.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,1),(25,'BOOK-TECH-1024',16.99,'images/products/books/book-luv2code-1024.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,1),(26,'COFFEEMUG-1000',18.99,'images/products/coffeemugs/coffeemug-luv2code-1000.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(27,'COFFEEMUG-1001',18.99,'images/products/coffeemugs/coffeemug-luv2code-1001.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(28,'COFFEEMUG-1002',18.99,'images/products/coffeemugs/coffeemug-luv2code-1002.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(29,'COFFEEMUG-1003',18.99,'images/products/coffeemugs/coffeemug-luv2code-1003.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(30,'COFFEEMUG-1004',18.99,'images/products/coffeemugs/coffeemug-luv2code-1004.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(31,'COFFEEMUG-1005',18.99,'images/products/coffeemugs/coffeemug-luv2code-1005.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(32,'COFFEEMUG-1006',18.99,'images/products/coffeemugs/coffeemug-luv2code-1006.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(33,'COFFEEMUG-1007',18.99,'images/products/coffeemugs/coffeemug-luv2code-1007.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(34,'COFFEEMUG-1008',18.99,'images/products/coffeemugs/coffeemug-luv2code-1008.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(35,'COFFEEMUG-1009',18.99,'images/products/coffeemugs/coffeemug-luv2code-1009.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(36,'COFFEEMUG-1010',18.99,'images/products/coffeemugs/coffeemug-luv2code-1010.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(37,'COFFEEMUG-1011',18.99,'images/products/coffeemugs/coffeemug-luv2code-1011.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(38,'COFFEEMUG-1012',18.99,'images/products/coffeemugs/coffeemug-luv2code-1012.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(39,'COFFEEMUG-1013',18.99,'images/products/coffeemugs/coffeemug-luv2code-1013.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(40,'COFFEEMUG-1014',18.99,'images/products/coffeemugs/coffeemug-luv2code-1014.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(41,'COFFEEMUG-1015',18.99,'images/products/coffeemugs/coffeemug-luv2code-1015.png',_binary '',100,'2025-07-11 14:54:59.000000',NULL,2),(42,'COFFEEMUG-1016',18.99,'images/products/coffeemugs/coffeemug-luv2code-1016.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(43,'COFFEEMUG-1017',18.99,'images/products/coffeemugs/coffeemug-luv2code-1017.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(44,'COFFEEMUG-1018',18.99,'images/products/coffeemugs/coffeemug-luv2code-1018.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(45,'COFFEEMUG-1019',18.99,'images/products/coffeemugs/coffeemug-luv2code-1019.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(46,'COFFEEMUG-1020',18.99,'images/products/coffeemugs/coffeemug-luv2code-1020.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(47,'COFFEEMUG-1021',18.99,'images/products/coffeemugs/coffeemug-luv2code-1021.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(48,'COFFEEMUG-1022',18.99,'images/products/coffeemugs/coffeemug-luv2code-1022.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(49,'COFFEEMUG-1023',18.99,'images/products/coffeemugs/coffeemug-luv2code-1023.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(50,'COFFEEMUG-1024',18.99,'images/products/coffeemugs/coffeemug-luv2code-1024.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,2),(51,'MOUSEPAD-1000',17.99,'images/products/mousepads/mousepad-luv2code-1000.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,3),(52,'MOUSEPAD-1001',17.99,'images/products/mousepads/mousepad-luv2code-1001.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,3),(53,'MOUSEPAD-1002',17.99,'images/products/mousepads/mousepad-luv2code-1002.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,3),(54,'MOUSEPAD-1003',17.99,'images/products/mousepads/mousepad-luv2code-1003.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,3),(55,'MOUSEPAD-1004',17.99,'images/products/mousepads/mousepad-luv2code-1004.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,3),(56,'MOUSEPAD-1005',17.99,'images/products/mousepads/mousepad-luv2code-1005.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,3),(57,'MOUSEPAD-1006',17.99,'images/products/mousepads/mousepad-luv2code-1006.png',_binary '',100,'2025-07-11 14:55:00.000000',NULL,3),(58,'MOUSEPAD-1007',17.99,'images/products/mousepads/mousepad-luv2code-1007.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(59,'MOUSEPAD-1008',17.99,'images/products/mousepads/mousepad-luv2code-1008.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(60,'MOUSEPAD-1009',17.99,'images/products/mousepads/mousepad-luv2code-1009.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(61,'MOUSEPAD-1010',17.99,'images/products/mousepads/mousepad-luv2code-1010.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(62,'MOUSEPAD-1011',17.99,'images/products/mousepads/mousepad-luv2code-1011.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(63,'MOUSEPAD-1012',17.99,'images/products/mousepads/mousepad-luv2code-1012.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(64,'MOUSEPAD-1013',17.99,'images/products/mousepads/mousepad-luv2code-1013.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(65,'MOUSEPAD-1014',17.99,'images/products/mousepads/mousepad-luv2code-1014.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(66,'MOUSEPAD-1015',17.99,'images/products/mousepads/mousepad-luv2code-1015.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(67,'MOUSEPAD-1016',17.99,'images/products/mousepads/mousepad-luv2code-1016.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(68,'MOUSEPAD-1017',17.99,'images/products/mousepads/mousepad-luv2code-1017.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(69,'MOUSEPAD-1018',17.99,'images/products/mousepads/mousepad-luv2code-1018.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(70,'MOUSEPAD-1019',17.99,'images/products/mousepads/mousepad-luv2code-1019.png',_binary '',100,'2025-07-11 14:55:01.000000',NULL,3),(71,'MOUSEPAD-1020',17.99,'images/products/mousepads/mousepad-luv2code-1020.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,3),(72,'MOUSEPAD-1021',17.99,'images/products/mousepads/mousepad-luv2code-1021.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,3),(73,'MOUSEPAD-1022',17.99,'images/products/mousepads/mousepad-luv2code-1022.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,3),(74,'MOUSEPAD-1023',17.99,'images/products/mousepads/mousepad-luv2code-1023.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,3),(75,'MOUSEPAD-1024',17.99,'images/products/mousepads/mousepad-luv2code-1024.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,3),(76,'LUGGAGETAG-1000',16.99,'images/products/luggagetags/luggagetag-luv2code-1000.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(77,'LUGGAGETAG-1001',16.99,'images/products/luggagetags/luggagetag-luv2code-1001.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(78,'LUGGAGETAG-1002',16.99,'images/products/luggagetags/luggagetag-luv2code-1002.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(79,'LUGGAGETAG-1003',16.99,'images/products/luggagetags/luggagetag-luv2code-1003.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(80,'LUGGAGETAG-1004',16.99,'images/products/luggagetags/luggagetag-luv2code-1004.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(81,'LUGGAGETAG-1005',16.99,'images/products/luggagetags/luggagetag-luv2code-1005.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(82,'LUGGAGETAG-1006',16.99,'images/products/luggagetags/luggagetag-luv2code-1006.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(83,'LUGGAGETAG-1007',16.99,'images/products/luggagetags/luggagetag-luv2code-1007.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(84,'LUGGAGETAG-1008',16.99,'images/products/luggagetags/luggagetag-luv2code-1008.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(85,'LUGGAGETAG-1009',16.99,'images/products/luggagetags/luggagetag-luv2code-1009.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(86,'LUGGAGETAG-1010',16.99,'images/products/luggagetags/luggagetag-luv2code-1010.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(87,'LUGGAGETAG-1011',16.99,'images/products/luggagetags/luggagetag-luv2code-1011.png',_binary '',100,'2025-07-11 14:55:02.000000',NULL,4),(88,'LUGGAGETAG-1012',16.99,'images/products/luggagetags/luggagetag-luv2code-1012.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(89,'LUGGAGETAG-1013',16.99,'images/products/luggagetags/luggagetag-luv2code-1013.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(90,'LUGGAGETAG-1014',16.99,'images/products/luggagetags/luggagetag-luv2code-1014.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(91,'LUGGAGETAG-1015',16.99,'images/products/luggagetags/luggagetag-luv2code-1015.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(92,'LUGGAGETAG-1016',16.99,'images/products/luggagetags/luggagetag-luv2code-1016.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(93,'LUGGAGETAG-1017',16.99,'images/products/luggagetags/luggagetag-luv2code-1017.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(94,'LUGGAGETAG-1018',16.99,'images/products/luggagetags/luggagetag-luv2code-1018.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(95,'LUGGAGETAG-1019',16.99,'images/products/luggagetags/luggagetag-luv2code-1019.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(96,'LUGGAGETAG-1020',16.99,'images/products/luggagetags/luggagetag-luv2code-1020.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(97,'LUGGAGETAG-1021',16.99,'images/products/luggagetags/luggagetag-luv2code-1021.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(98,'LUGGAGETAG-1022',16.99,'images/products/luggagetags/luggagetag-luv2code-1022.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(99,'LUGGAGETAG-1023',16.99,'images/products/luggagetags/luggagetag-luv2code-1023.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4),(100,'LUGGAGETAG-1024',16.99,'images/products/luggagetags/luggagetag-luv2code-1024.png',_binary '',100,'2025-07-11 14:55:03.000000',NULL,4);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'book'),(2,'mug-hot'),(3,'computer-mouse'),(4,'tags');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category_translation`
--

DROP TABLE IF EXISTS `product_category_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category_translation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint(20) NOT NULL,
  `language_id` smallint(5) unsigned NOT NULL,
  `product_category_name` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_category_language` (`product_category_id`,`language_id`),
  KEY `fk_category_translation_language` (`language_id`),
  CONSTRAINT `fk_category_translation_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `fk_product_category` FOREIGN KEY (`product_category_id`) REFERENCES `product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category_translation`
--

LOCK TABLES `product_category_translation` WRITE;
/*!40000 ALTER TABLE `product_category_translation` DISABLE KEYS */;
INSERT INTO `product_category_translation` VALUES (1,1,1,'Kitaplar'),(2,2,1,'Kahve Kupaları'),(3,3,1,'Fare Altlıkları'),(4,4,1,'Bagaj Etiketleri'),(5,1,2,'Books'),(6,2,2,'Coffee Mugs'),(7,3,2,'Mouse Pads'),(8,4,2,'Luggage Tags');
/*!40000 ALTER TABLE `product_category_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_translation`
--

DROP TABLE IF EXISTS `product_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_translation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `language_id` smallint(5) unsigned NOT NULL,
  `product_name` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  `product_description` varchar(500) COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_product_language` (`product_id`,`language_id`),
  KEY `fk_product_translation_language` (`language_id`),
  CONSTRAINT `fk_product_translation_language` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`),
  CONSTRAINT `fk_product_translation_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_translation`
--

LOCK TABLES `product_translation` WRITE;
/*!40000 ALTER TABLE `product_translation` DISABLE KEYS */;
INSERT INTO `product_translation` VALUES (1,1,1,'Python’a Hızlı Başlangıç','Python\'u kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(2,2,1,'JavaScript’te Usta Olun','JavaScript\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(3,3,1,'Vue.js’i Keşfetmek','Vue.js\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(4,4,1,'Büyük Veri’de İleri Teknikler','Büyük Veri\'yi kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(5,5,1,'Büyük Veri’ye Hızlı Başlangıç','Büyük Veri\'yi kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(6,6,1,'JavaScript Püf Noktaları Rehberi','JavaScript\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(7,7,1,'SQL’e Başlangıç Rehberi','SQL\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(8,8,1,'JavaScript’te İleri Teknikler','JavaScript\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(9,9,1,'Spring Boot’a Giriş','Spring Boot\'u kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(10,10,1,'React.js’te Usta Olun','React.js\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(11,11,1,'Veri Bilimine Başlangıç Rehberi','Veri bilimini kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(12,12,1,'Java’da İleri Teknikler','Java\'yı kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(13,13,1,'DevOps’u Keşfetmek','DevOps\'u kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(14,14,1,'Uzmanlar için SQL Rehberi','SQL\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(15,15,1,'SQL’e Giriş','SQL\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(16,16,1,'Uzmanlar için JavaScript Rehberi','JavaScript\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(17,17,1,'React.js’i Keşfetmek','React.js\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(18,18,1,'React.js’te İleri Teknikler','React.js\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(19,19,1,'C#’a Giriş','C#\'ı kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(20,20,1,'JavaScript’e Hızlı Başlangıç','JavaScript\'i kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(21,21,1,'Makine Öğrenmesine Giriş','Makine öğrenmesini kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(22,22,1,'Java’da Usta Olun','Java\'yı kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(23,23,1,'Python’a Giriş','Python\'u kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(24,24,1,'C#’ta İleri Teknikler','C#\'ı kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(25,25,1,'Uzmanlar için Makine Öğrenmesi Rehberi','Makine öğrenmesini kendi hızınızda öğrenin. Yazar, teknolojinin nasıl çalıştığını anlaşılır bir dille açıklar. Bu kitap, kendi projelerinizde uygulayabileceğiniz çalışan örnekler içerir. Kitabı satın alın ve bugün başlayın!'),(26,26,1,'Kahve Kupası - Express','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(27,27,1,'Kahve Kupası - Cherokee','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(28,28,1,'Kahve Kupası - Sweeper','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(29,29,1,'Kahve Kupası - Aspire','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(30,30,1,'Kahve Kupası - Dorian','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(31,31,1,'Kahve Kupası - Columbia','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(32,32,1,'Kahve Kupası - Worthing','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(33,33,1,'Kahve Kupası - Oak Cliff','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(34,34,1,'Kahve Kupası - Tachyon','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(35,35,1,'Kahve Kupası - Pan','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(36,36,1,'Kahve Kupası - Phase','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(37,37,1,'Kahve Kupası - Falling','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(38,38,1,'Kahve Kupası - Wispy','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(39,39,1,'Kahve Kupası - Arlington','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(40,40,1,'Kahve Kupası - Gazing','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(41,41,1,'Kahve Kupası - Azura','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(42,42,1,'Kahve Kupası - Quantum Leap','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(43,43,1,'Kahve Kupası - Light Years','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(44,44,1,'Kahve Kupası - Taylor','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(45,45,1,'Kahve Kupası - Gracia','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(46,46,1,'Kahve Kupası - Relax','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(47,47,1,'Kahve Kupası - Windermere','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(48,48,1,'Kahve Kupası - Prancer','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(49,49,1,'Kahve Kupası - Recursion','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(50,50,1,'Kahve Kupası - Treasure','Matematiği seviyor musunuz? Öyleyse bu harika fraktal tasarımlı şık kahve kupasına ihtiyacınız var. Artık sıradan kupalarla uğraşmanıza gerek yok. Bu kupa ofiste kesinlikle sohbet konusu olacak! Hemen satın alın!'),(51,51,1,'Fare Altlığı - Express','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(52,52,1,'Fare Altlığı - Cherokee','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(53,53,1,'Fare Altlığı - Sweeper','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(54,54,1,'Fare Altlığı - Aspire','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(55,55,1,'Fare Altlığı - Dorian','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(56,56,1,'Fare Altlığı - Columbia','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(57,57,1,'Fare Altlığı - Worthing','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(58,58,1,'Fare Altlığı - Oak Cliff','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(59,59,1,'Fare Altlığı - Tachyon','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(60,60,1,'Fare Altlığı - Pan','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(61,61,1,'Fare Altlığı - Phase','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(62,62,1,'Fare Altlığı - Falling','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(63,63,1,'Fare Altlığı - Wispy','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(64,64,1,'Fare Altlığı - Arlington','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(65,65,1,'Fare Altlığı - Gazing','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(66,66,1,'Fare Altlığı - Azura','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(67,67,1,'Fare Altlığı - Quantum Leap','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(68,68,1,'Fare Altlığı - Light Years','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(69,69,1,'Fare Altlığı - Taylor','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(70,70,1,'Fare Altlığı - Gracia','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(71,71,1,'Fare Altlığı - Relax','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(72,72,1,'Fare Altlığı - Windermere','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(73,73,1,'Fare Altlığı - Prancer','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(74,74,1,'Fare Altlığı - Recursion','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(75,75,1,'Fare Altlığı - Treasure','Fraktal görseller harika! Dayanıklı ve pürüzsüz bir malzemeden üretilmiştir; fareniz yüzeyde kolayca kayar. Çalışma alanınızı aydınlatır. Hemen satın alın!'),(76,76,1,'Bagaj Etiketi - Cherish','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(77,77,1,'Bagaj Etiketi - Adventure','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(78,78,1,'Bagaj Etiketi - Skyline','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(79,79,1,'Bagaj Etiketi - River','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(80,80,1,'Bagaj Etiketi - Trail Steps','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(81,81,1,'Bagaj Etiketi - Blooming','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(82,82,1,'Bagaj Etiketi - Park','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(83,83,1,'Bagaj Etiketi - Beauty','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(84,84,1,'Bagaj Etiketi - Water Fall','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(85,85,1,'Bagaj Etiketi - Trail','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(86,86,1,'Bagaj Etiketi - Skyscraper','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(87,87,1,'Bagaj Etiketi - Leaf','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(88,88,1,'Bagaj Etiketi - Jungle','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(89,89,1,'Bagaj Etiketi - Shoreline','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(90,90,1,'Bagaj Etiketi - Blossom','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(91,91,1,'Bagaj Etiketi - Lock','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(92,92,1,'Bagaj Etiketi - Cafe','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(93,93,1,'Bagaj Etiketi - Darling','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(94,94,1,'Bagaj Etiketi - Full Stack','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(95,95,1,'Bagaj Etiketi - Courtyard','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(96,96,1,'Bagaj Etiketi - Coaster','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(97,97,1,'Bagaj Etiketi - Bridge','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(98,98,1,'Bagaj Etiketi - Sunset','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(99,99,1,'Bagaj Etiketi - Flames','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(100,100,1,'Bagaj Etiketi - Countryside','Bu bagaj etiketi, valizinizi kolayca tanımanıza yardımcı olur. Sıradışı tasarımı sayesinde kalabalıkta öne çıkar. Sağlam ve dayanıklı plastikten üretilmiştir. Şimdi satın alın!'),(101,1,2,'Crash Course in Python','Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!'),(102,2,2,'Become a Guru in JavaScript','Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!'),(103,3,2,'Exploring Vue.js','Step-by-step recipes for everyday cooking.'),(104,4,2,'Advanced Techniques in Big Data','An overview of major historical events and figures.'),(105,5,2,'Crash Course in Big Data','Learn the basics of coding in a simple way.'),(106,6,2,'JavaScript Cookbook','Fun and safe experiments to spark curiosity.'),(107,7,2,'Beginners Guide to SQL','A complete guide to painting techniques and materials.'),(108,8,2,'Advanced Techniques in JavaScript','A collection of touching and inspiring poems.'),(109,9,2,'Introduction to Spring Boot','Discover must-see destinations and travel tips.'),(110,10,2,'Become a Guru in React.js','A guide to fitness, nutrition, and wellness.'),(111,11,2,'Beginners Guide to Data Science','Essential tips for building and growing a startup.'),(112,12,2,'Advanced Techniques in Java','Techniques for growing flowers, fruits, and vegetables.'),(113,13,2,'Exploring DevOps','Learn how to capture stunning photos with any camera.'),(114,14,2,'The Expert Guide to SQL','An insight into contemporary building designs.'),(115,15,2,'Introduction to SQL','A detailed guide to animals from around the world.'),(116,16,2,'The Expert Guide to JavaScript','Discover the history and future of space travel.'),(117,17,2,'Exploring React.js','Practical steps to improve focus and reduce stress.'),(118,18,2,'Advanced Techniques in React.js','Strategies, openings, and famous games.'),(119,19,2,'Introduction to C#','Tips and tricks for managing personal finances.'),(120,20,2,'Crash Course in JavaScript','Proven methods to master new languages.'),(121,21,2,'Introduction to Machine Learning','Delicious recipes for cakes, cookies, and bread.'),(122,22,2,'Become a Guru in Java','Strategies for promoting products and services online.'),(123,23,2,'Introduction to Python','Timeless stories from renowned authors.'),(124,24,2,'Advanced Techniques in C#','A simple guide to yoga poses and breathing exercises.'),(125,25,2,'The Expert Guide to Machine Learning','Creative ideas for improving your living space.'),(126,26,2,'Classic White Coffee Mug','A simple, elegant mug for everyday coffee.'),(127,27,2,'Travel Thermos Mug','Keeps your drinks hot or cold for hours.'),(128,28,2,'Motivational Quote Mug','Start your day with an inspiring quote.'),(129,29,2,'Color Changing Mug','Watch the design appear with hot liquid.'),(130,30,2,'Large Capacity Coffee Mug','Perfect for coffee lovers who need an extra boost.'),(131,31,2,'Eco-Friendly Bamboo Mug','Sustainable and stylish.'),(132,32,2,'Vintage Ceramic Mug','A rustic mug for nostalgic coffee moments.'),(133,33,2,'Double-Walled Glass Mug','Keeps drinks warm while staying cool to touch.'),(134,34,2,'Personalized Name Mug','Customizable with your name or message.'),(135,35,2,'Funny Cartoon Mug','A mug with a humorous print for fun mornings.'),(136,36,2,'Minimalist Black Mug','Sleek and modern design.'),(137,37,2,'Animal Print Mug','Cute animal patterns for a playful vibe.'),(138,38,2,'Holiday Special Mug','Festive design for special occasions.'),(139,39,2,'Gradient Color Mug','Beautiful fading colors for a unique look.'),(140,40,2,'Heart Handle Mug','Romantic design for special moments.'),(141,41,2,'Office Desk Mug','Perfect size for your daily office coffee.'),(142,42,2,'Stainless Steel Coffee Mug','Durable and long-lasting.'),(143,43,2,'Floral Pattern Mug','Elegant design with flower prints.'),(144,44,2,'Insulated Travel Mug','No spills, keeps drinks at the right temperature.'),(145,45,2,'Cartoon Character Mug','For fans of animated characters.'),(146,46,2,'Quote of the Day Mug','A new inspiring message every morning.'),(147,47,2,'Pastel Color Mug','Soft colors to brighten your mood.'),(148,48,2,'Geometric Design Mug','Modern art-inspired patterns.'),(149,49,2,'Artisan Handmade Mug','Each piece is unique and crafted by hand.'),(150,50,2,'Luxury Gold Rim Mug','Elegant with a touch of luxury.'),(151,51,2,'Standard Black Mouse Pad','Smooth surface for precise mouse movement.'),(152,52,2,'Gaming Mouse Pad','Extra-large and optimized for gaming.'),(153,53,2,'Ergonomic Wrist Support Pad','Comfortable support for long computer use.'),(154,54,2,'RGB Lighting Mouse Pad','Customizable lighting effects.'),(155,55,2,'Leather Mouse Pad','Premium leather for a professional desk.'),(156,56,2,'Waterproof Mouse Pad','Durable and easy to clean.'),(157,57,2,'Minimalist White Mouse Pad','Clean, simple design.'),(158,58,2,'Nature Scene Mouse Pad','Beautiful landscape images.'),(159,59,2,'Custom Photo Mouse Pad','Personalized with your own photo.'),(160,60,2,'Extended Desk Mat','Covers the entire desk area.'),(161,61,2,'Portable Folding Mouse Pad','Perfect for traveling professionals.'),(162,62,2,'Map Design Mouse Pad','World map printed for geography lovers.'),(163,63,2,'Cute Animal Mouse Pad','Adorable animal prints.'),(164,64,2,'Abstract Art Mouse Pad','Creative and colorful patterns.'),(165,65,2,'Silicone Grip Mouse Pad','Non-slip and flexible.'),(166,66,2,'Transparent Mouse Pad','Stylish clear design.'),(167,67,2,'Office Logo Mouse Pad','Customizable with company branding.'),(168,68,2,'Comic Book Mouse Pad','For comic fans and collectors.'),(169,69,2,'Marble Texture Mouse Pad','Elegant marble look.'),(170,70,2,'3D Pattern Mouse Pad','Unique depth effect designs.'),(171,71,2,'Sports Team Mouse Pad','Show support for your favorite team.'),(172,72,2,'Retro Pattern Mouse Pad','Vintage designs for nostalgic vibes.'),(173,73,2,'Galaxy Design Mouse Pad','Explore the universe on your desk.'),(174,74,2,'Minimal Edge Mouse Pad','Simple edges for a sleek look.'),(175,75,2,'Soft Fabric Mouse Pad','Comfortable and durable.'),(176,76,2,'Classic Leather Luggage Tag','Durable and stylish travel accessory.'),(177,77,2,'Bright Color Luggage Tag','Easily spot your bag at the airport.'),(178,78,2,'Custom Name Luggage Tag','Personalize with your name and contact info.'),(179,79,2,'Transparent Luggage Tag','Simple and functional design.'),(180,80,2,'Vintage Style Luggage Tag','Old-fashioned charm for travelers.'),(181,81,2,'Silicone Luggage Tag','Flexible and waterproof.'),(182,82,2,'Metal Engraved Luggage Tag','Premium engraved finish.'),(183,83,2,'Funny Quote Luggage Tag','Travel with humor.'),(184,84,2,'Animal Shaped Luggage Tag','Fun shapes for kids and young travelers.'),(185,85,2,'Luxury Gold Luggage Tag','Exclusive look for premium travel.'),(186,86,2,'Minimalist Luggage Tag','Simple yet functional.'),(187,87,2,'Flag Design Luggage Tag','Show your country pride.'),(188,88,2,'Bright Pattern Luggage Tag','Bold prints for easy identification.'),(189,89,2,'Lockable Luggage Tag','Extra security for your information.'),(190,90,2,'Eco-Friendly Tag','Made from recycled materials.'),(191,91,2,'Glow in the Dark Luggage Tag','Find your bag even in the dark.'),(192,92,2,'Waterproof PVC Luggage Tag','Durable for all weather.'),(193,93,2,'Sports Theme Luggage Tag','Perfect for sports fans.'),(194,94,2,'Transparent Hard Case Tag','Protects your info from damage.'),(195,95,2,'Art Print Luggage Tag','Stylish designs for art lovers.'),(196,96,2,'Traveler\'s Quote Tag','Inspiring words for your journey.'),(197,97,2,'Custom Logo Luggage Tag','Promote your brand on the go.'),(198,98,2,'Soft Fabric Luggage Tag','Gentle yet durable.'),(199,99,2,'Bold Typography Tag','Make a statement with bold text.'),(200,100,2,'Premium Leather Strap Tag','Luxury touch for your suitcase.');
/*!40000 ALTER TABLE `product_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country` (`country_id`),
  CONSTRAINT `fk_country` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Acre',1),(2,'Alagoas',1),(3,'Amapá',1),(4,'Amazonas',1),(5,'Bahia',1),(6,'Ceará',1),(7,'Distrito Federal',1),(8,'Espírito Santo',1),(9,'Goiás',1),(10,'Maranhão',1),(11,'Mato Grosso do Sul',1),(12,'Mato Grosso',1),(13,'Minas Gerais',1),(14,'Paraná',1),(15,'Paraíba',1),(16,'Pará',1),(17,'Pernambuco',1),(18,'Piaui',1),(19,'Rio de Janeiro',1),(20,'Rio Grande do Norte',1),(21,'Rio Grande do Sul',1),(22,'Rondônia',1),(23,'Roraima',1),(24,'Santa Catarina',1),(25,'Sergipe',1),(26,'São Paulo',1),(27,'Tocantins',1),(28,'Alberta',2),(29,'British Columbia',2),(30,'Manitoba',2),(31,'New Brunswick',2),(32,'Newfoundland and Labrador',2),(33,'Northwest Territories',2),(34,'Nova Scotia',2),(35,'Nunavut',2),(36,'Ontario',2),(37,'Prince Edward Island',2),(38,'Quebec',2),(39,'Saskatchewan',2),(40,'Yukon',2),(41,'Baden-Württemberg',3),(42,'Bavaria',3),(43,'Berlin',3),(44,'Brandenburg',3),(45,'Bremen',3),(46,'Hamburg',3),(47,'Hesse',3),(48,'Lower Saxony',3),(49,'Mecklenburg-Vorpommern',3),(50,'North Rhine-Westphalia',3),(51,'Rhineland-Palatinate',3),(52,'Saarland',3),(53,'Saxony',3),(54,'Saxony-Anhalt',3),(55,'Schleswig-Holstein',3),(56,'Thuringia',3),(57,'Andhra Pradesh',4),(58,'Arunachal Pradesh',4),(59,'Assam',4),(60,'Bihar',4),(61,'Chhattisgarh',4),(62,'Goa',4),(63,'Gujarat',4),(64,'Haryana',4),(65,'Himachal Pradesh',4),(66,'Jammu & Kashmir',4),(67,'Jharkhand',4),(68,'Karnataka',4),(69,'Kerala',4),(70,'Madhya Pradesh',4),(71,'Maharashtra',4),(72,'Manipur',4),(73,'Meghalaya',4),(74,'Mizoram',4),(75,'Nagaland',4),(76,'Odisha',4),(77,'Punjab',4),(78,'Rajasthan',4),(79,'Sikkim',4),(80,'Tamil Nadu',4),(81,'Telangana',4),(82,'Tripura',4),(83,'Uttar Pradesh',4),(84,'Uttarakhand',4),(85,'West Bengal',4),(86,'Andaman and Nicobar Islands',4),(87,'Chandigarh',4),(88,'Dadra and Nagar Haveli',4),(89,'Daman & Diu',4),(90,'Lakshadweep',4),(91,'Puducherry',4),(92,'The Government of NCT of Delhi',4),(93,'Alabama',6),(94,'Alaska',6),(95,'Arizona',6),(96,'Arkansas',6),(97,'California',6),(98,'Colorado',6),(99,'Connecticut',6),(100,'Delaware',6),(101,'District Of Columbia',6),(102,'Florida',6),(103,'Georgia',6),(104,'Hawaii',6),(105,'Idaho',6),(106,'Illinois',6),(107,'Indiana',6),(108,'Iowa',6),(109,'Kansas',6),(110,'Kentucky',6),(111,'Louisiana',6),(112,'Maine',6),(113,'Maryland',6),(114,'Massachusetts',6),(115,'Michigan',6),(116,'Minnesota',6),(117,'Mississippi',6),(118,'Missouri',6),(119,'Montana',6),(120,'Nebraska',6),(121,'Nevada',6),(122,'New Hampshire',6),(123,'New Jersey',6),(124,'New Mexico',6),(125,'New York',6),(126,'North Carolina',6),(127,'North Dakota',6),(128,'Ohio',6),(129,'Oklahoma',6),(130,'Oregon',6),(131,'Pennsylvania',6),(132,'Rhode Island',6),(133,'South Carolina',6),(134,'South Dakota',6),(135,'Tennessee',6),(136,'Texas',6),(137,'Utah',6),(138,'Vermont',6),(139,'Virginia',6),(140,'Washington',6),(141,'West Virginia',6),(142,'Wisconsin',6),(143,'Wyoming',6),(144,'Adıyaman',5),(145,'Afyonkarahisar',5),(146,'Ağrı',5),(147,'Aksaray',5),(148,'Amasya',5),(149,'Ankara',5),(150,'Antalya',5),(151,'Ardahan',5),(152,'Artvin',5),(153,'Aydın',5),(154,'Balıkesir',5),(155,'Bartın',5),(156,'Batman',5),(157,'Bayburt',5),(158,'Bilecik',5),(159,'Bingöl',5),(160,'Bitlis',5),(161,'Bolu',5),(162,'Burdur',5),(163,'Bursa',5),(164,'Çanakkale',5),(165,'Çankırı',5),(166,'Çorum',5),(167,'Denizli',5),(168,'Diyarbakır',5),(169,'Düzce',5),(170,'Edirne',5),(171,'Elazığ',5),(172,'Erzincan',5),(173,'Erzurum',5),(174,'Eskişehir',5),(175,'Gaziantep',5),(176,'Giresun',5),(177,'Gümüşhane',5),(178,'Hakkâri',5),(179,'Hatay',5),(180,'Iğdır',5),(181,'Isparta',5),(182,'İstanbul',5),(183,'İzmir',5),(184,'Kahramanmaraş',5),(185,'Karabük',5),(186,'Karaman',5),(187,'Kars',5),(188,'Kastamonu',5),(189,'Kayseri',5),(190,'Kırıkkale',5),(191,'Kırklareli',5),(192,'Kırşehir',5),(193,'Kilis',5),(194,'Kocaeli',5),(195,'Konya',5),(196,'Kütahya',5),(197,'Malatya',5),(198,'Manisa',5),(199,'Mardin',5),(200,'Mersin',5),(201,'Muğla',5),(202,'Muş',5),(203,'Nevşehir',5),(204,'Niğde',5),(205,'Ordu',5),(206,'Osmaniye',5),(207,'Rize',5),(208,'Sakarya',5),(209,'Samsun',5),(210,'Siirt',5),(211,'Sinop',5),(212,'Sivas',5),(213,'Şanlıurfa',5),(214,'Şırnak',5),(215,'Tekirdağ',5),(216,'Tokat',5),(217,'Trabzon',5),(218,'Tunceli',5),(219,'Uşak',5),(220,'Van',5),(221,'Yalova',5),(222,'Yozgat',5),(223,'Zonguldak',5);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-22 12:47:57
