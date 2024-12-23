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
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-22 17:18:36.987000','1','Paper Clips',1,'[{\"added\": {}}]',8,1),(2,'2022-01-22 17:26:29.168000','1','Customer1',1,'[{\"added\": {}}]',9,1),(3,'2022-01-22 17:40:41.427000','1','Customer1',1,'[{\"added\": {}}]',10,1),(4,'2022-01-23 10:40:10.446000','4','Adhesive-Tape',1,'[{\"added\": {}}]',8,1),(5,'2022-01-23 10:40:44.578000','5','Poster Colors',1,'[{\"added\": {}}]',8,1),(6,'2022-01-23 10:43:01.367000','6','Folders',1,'[{\"added\": {}}]',8,1),(7,'2022-01-23 10:43:33.681000','7','Diaries',1,'[{\"added\": {}}]',8,1),(8,'2022-01-23 10:52:05.546000','8','Casio FX-991ES Calculator',1,'[{\"added\": {}}]',8,1),(9,'2022-01-23 17:12:53.263000','1','tamil',2,'[{\"changed\": {\"fields\": [\"User permissions\"]}}]',4,1),(10,'2022-01-24 06:40:34.926000','9','Test Product',3,'',8,1),(11,'2022-02-18 03:44:22.932000','1','Customer1',2,'[]',10,1),(12,'2022-02-18 03:45:01.735000','1','Customer1(Inv_no.1)',3,'',9,1),(13,'2022-02-18 03:46:18.893000','2','Customer101(Inv_no.2)',1,'[{\"added\": {}}]',9,1),(14,'2022-02-18 03:46:34.632000','2','Customer101',1,'[{\"added\": {}}]',10,1),(15,'2022-02-18 03:46:45.783000','3','Customer101',1,'[{\"added\": {}}]',10,1),(16,'2022-02-18 03:46:53.525000','2','Customer101(Inv_no.2)',2,'[]',9,1),(17,'2022-02-18 04:18:47.596000','2','Customer101',3,'',10,1),(18,'2022-02-18 04:18:53.357000','2','Customer101(Inv_no.2)',2,'[]',9,1),(19,'2022-02-24 12:26:46.585000','3','shyam',1,'[{\"added\": {}}]',4,1),(20,'2022-02-24 12:27:15.193000','3','shyam',2,'[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 19:56:39
