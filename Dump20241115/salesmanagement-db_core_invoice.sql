-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: salesmanagement-db
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `core_invoice`
--

DROP TABLE IF EXISTS `core_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_invoice` (
  `invoice_number` bigint NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `created_by_id` int NOT NULL,
  `total` bigint unsigned NOT NULL,
  PRIMARY KEY (`invoice_number`),
  KEY `core_invoice_created_by_id_28ad8f17_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `core_invoice_created_by_id_28ad8f17_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `core_invoice_chk_1` CHECK ((`total` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_invoice`
--

LOCK TABLES `core_invoice` WRITE;
/*!40000 ALTER TABLE `core_invoice` DISABLE KEYS */;
INSERT INTO `core_invoice` VALUES (2,'Fruit Waste','2022-02-18 04:18:53.355000',1,3250),(3,'Thivin','2022-02-23 23:02:42.930000',1,2000),(5,'Kani','2022-02-24 17:41:31.670000',1,15100),(6,'Harini','2022-02-24 18:06:47.973000',1,10200),(7,'Santhosh','2022-02-24 18:12:49.974000',3,3850),(8,'Pavithraa','2024-11-14 23:57:47.357346',1,18210),(11,'Monish','2024-11-15 14:57:46.258765',1,0),(12,'mon','2024-11-15 14:58:16.678681',1,0),(13,'mon','2024-11-15 15:02:53.531901',1,0),(14,'Monish','2024-11-15 15:03:37.525759',3,7200),(15,'das','2024-11-15 19:26:30.814927',1,0);
/*!40000 ALTER TABLE `core_invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 19:56:37
