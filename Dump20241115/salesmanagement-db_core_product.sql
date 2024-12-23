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
-- Table structure for table `core_product`
--

DROP TABLE IF EXISTS `core_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `unit_price` int unsigned NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `created_by_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_product_created_by_id_97d0fb4f_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `core_product_created_by_id_97d0fb4f_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `core_product_chk_1` CHECK ((`unit_price` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_product`
--

LOCK TABLES `core_product` WRITE;
/*!40000 ALTER TABLE `core_product` DISABLE KEYS */;
INSERT INTO `core_product` VALUES (1,'Chickent Bones ',50,'products_pics/g5wprcimages (4).jpeg',1),(3,'Chicken Skin ',0,'default_product.png',1),(4,'vegetable peels',30,'products_pics/54ojiqimages (9).jpeg',1),(6,' Sour Milk',200,'products_pics/pyvtcqdownload.jpeg',1),(7,'Overripe fruits',100,'products_pics/kg3wx8images (6).jpeg',1),(8,'Buttermilk',1200,'products_pics/6be7x0images (2).jpeg',1),(10,'Cheese Rinds',50,'products_pics/vwtjg7images (3).jpeg',1),(11,'Pulp from Nut Milk',500,'products_pics/c208l2images (8).jpeg',1),(16,'Broken or Split Nuts',450,'products_pics/4e9rf5images (1).jpeg',1),(17,'Groundnut Oil cake',250,'products_pics/wcyiplimages (7).jpeg',1),(18,'Goat Blood ',200,'products_pics/z2xrepimages (5).jpeg',1),(19,'Beef Blood',250,'products_pics/q1xukxdownload (1).jpeg',1),(20,'Beef Bones',499,'products_pics/cszxt1beef-bones-4_800x.jpg',1),(23,'Meat Offal',342,'products_pics/dqh935offals.png',1);
/*!40000 ALTER TABLE `core_product` ENABLE KEYS */;
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
