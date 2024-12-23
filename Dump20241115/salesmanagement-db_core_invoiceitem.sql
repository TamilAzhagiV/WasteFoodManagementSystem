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
-- Table structure for table `core_invoiceitem`
--

DROP TABLE IF EXISTS `core_invoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_invoiceitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int unsigned NOT NULL,
  `accumulated` int unsigned NOT NULL,
  `invoice_id` bigint NOT NULL,
  `item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_invoiceitem_invoice_id_ed095f3b_fk_core_invo` (`invoice_id`),
  KEY `core_invoiceitem_item_id_721d2a49_fk_core_product_id` (`item_id`),
  CONSTRAINT `core_invoiceitem_invoice_id_ed095f3b_fk_core_invo` FOREIGN KEY (`invoice_id`) REFERENCES `core_invoice` (`invoice_number`),
  CONSTRAINT `core_invoiceitem_item_id_721d2a49_fk_core_product_id` FOREIGN KEY (`item_id`) REFERENCES `core_product` (`id`),
  CONSTRAINT `core_invoiceitem_chk_1` CHECK ((`quantity` >= 0)),
  CONSTRAINT `core_invoiceitem_chk_2` CHECK ((`accumulated` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_invoiceitem`
--

LOCK TABLES `core_invoiceitem` WRITE;
/*!40000 ALTER TABLE `core_invoiceitem` DISABLE KEYS */;
INSERT INTO `core_invoiceitem` VALUES (3,5,1000,2,6),(4,2,100,2,1),(5,3,300,2,7),(6,2,100,2,10),(9,2,500,2,17),(11,2,100,3,1),(13,1,500,3,11),(14,2,500,3,19),(16,5,500,3,7),(18,2,400,3,18),(19,10,12000,5,8),(20,20,600,5,4),(21,5,2500,5,11),(22,10,4500,6,16),(23,10,2000,6,18),(24,5,2500,6,11),(25,6,1200,6,6),(26,20,600,7,4),(27,10,2000,7,6),(28,5,1250,7,19),(29,12,360,8,4),(31,12,5400,8,16),(32,12,3000,8,19),(33,21,9450,8,16),(34,12,600,14,1),(35,11,2750,14,17),(36,22,1100,14,10),(37,11,2750,14,17);
/*!40000 ALTER TABLE `core_invoiceitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 19:56:38
