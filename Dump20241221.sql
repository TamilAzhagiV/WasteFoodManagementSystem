CREATE DATABASE  IF NOT EXISTS `salesmanagement-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `salesmanagement-db`;
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add invoice',9,'add_invoice'),(34,'Can change invoice',9,'change_invoice'),(35,'Can delete invoice',9,'delete_invoice'),(36,'Can view invoice',9,'view_invoice'),(37,'Can add invoice item',10,'add_invoiceitem'),(38,'Can change invoice item',10,'change_invoiceitem'),(39,'Can delete invoice item',10,'delete_invoiceitem'),(40,'Can view invoice item',10,'view_invoiceitem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$nIfi1yg5AH0B6YFs8qA8Yt$Ry4aIdQ96IGo3IOTpbpLzbw+Td6xTJKfMVQB6CCapXM=','2024-11-18 10:55:27.004338',1,'tamil','','','tamilspace09@gmail.com',1,1,'2022-01-22 11:31:50.000000'),(2,'',NULL,0,'deleted user','','','',0,1,'2022-01-22 17:26:01.128000'),(3,'pbkdf2_sha256$720000$48dkzfFQ5TD7VBOKB5dJgE$Zv+bWLEMLe9WmLFxzemwUT8JqIrEVsvtI+DrDDrqRgI=','2024-11-15 09:33:24.114551',0,'shyam','Shyam','Thapa','shayamth@mail.com',0,1,'2022-02-24 12:26:46.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (321,1,1),(322,1,2),(323,1,3),(324,1,4),(325,1,5),(326,1,6),(327,1,7),(328,1,8),(329,1,9),(330,1,10),(331,1,11),(332,1,12),(333,1,13),(334,1,14),(335,1,15),(336,1,16),(337,1,17),(338,1,18),(339,1,19),(340,1,20),(341,1,21),(342,1,22),(343,1,23),(344,1,24),(345,1,25),(346,1,26),(347,1,27),(348,1,28),(349,1,29),(350,1,30),(351,1,31),(352,1,32),(353,1,33),(354,1,34),(355,1,35),(356,1,36),(357,1,37),(358,1,38),(359,1,39),(360,1,40);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_invoice`
--

LOCK TABLES `core_invoice` WRITE;
/*!40000 ALTER TABLE `core_invoice` DISABLE KEYS */;
INSERT INTO `core_invoice` VALUES (2,'Fruit Waste','2022-02-18 04:18:53.355000',1,3250),(3,'Thivin','2022-02-23 23:02:42.930000',1,2000),(5,'Kani','2022-02-24 17:41:31.670000',1,15100),(6,'Harini','2022-02-24 18:06:47.973000',1,10200),(7,'Santhosh','2022-02-24 18:12:49.974000',3,3850),(8,'Pavithraa','2024-11-14 23:57:47.357346',1,18210),(14,'Monish','2024-11-15 15:03:37.525759',3,7200),(15,'das','2024-11-15 19:26:30.814927',1,0),(16,'Ajay','2024-11-18 16:26:54.771774',1,19280);
/*!40000 ALTER TABLE `core_invoice` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_invoiceitem`
--

LOCK TABLES `core_invoiceitem` WRITE;
/*!40000 ALTER TABLE `core_invoiceitem` DISABLE KEYS */;
INSERT INTO `core_invoiceitem` VALUES (3,5,1000,2,6),(4,2,100,2,1),(5,3,300,2,7),(6,2,100,2,10),(9,2,500,2,17),(11,2,100,3,1),(13,1,500,3,11),(14,2,500,3,19),(16,5,500,3,7),(18,2,400,3,18),(19,10,12000,5,8),(20,20,600,5,4),(21,5,2500,5,11),(22,10,4500,6,16),(23,10,2000,6,18),(24,5,2500,6,11),(25,6,1200,6,6),(26,20,600,7,4),(27,10,2000,7,6),(28,5,1250,7,19),(29,12,360,8,4),(31,12,5400,8,16),(32,12,3000,8,19),(33,21,9450,8,16),(34,12,600,14,1),(35,11,2750,14,17),(36,22,1100,14,10),(37,11,2750,14,17),(38,10,300,16,4),(39,20,9980,16,20),(40,10,2500,16,17),(41,10,4500,16,16),(42,10,2000,16,6);
/*!40000 ALTER TABLE `core_invoiceitem` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'core','invoice'),(10,'core','invoiceitem'),(8,'core','product'),(6,'sessions','session'),(7,'users','profile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-11-14 17:28:19.851129'),(2,'auth','0001_initial','2024-11-14 17:28:30.048147'),(3,'admin','0001_initial','2024-11-14 17:28:30.751119'),(4,'admin','0002_logentry_remove_auto_add','2024-11-14 17:28:30.789858'),(5,'admin','0003_logentry_add_action_flag_choices','2024-11-14 17:28:30.817459'),(6,'contenttypes','0002_remove_content_type_name','2024-11-14 17:28:31.101089'),(7,'auth','0002_alter_permission_name_max_length','2024-11-14 17:28:31.322426'),(8,'auth','0003_alter_user_email_max_length','2024-11-14 17:28:31.400540'),(9,'auth','0004_alter_user_username_opts','2024-11-14 17:28:31.416164'),(10,'auth','0005_alter_user_last_login_null','2024-11-14 17:28:31.610123'),(11,'auth','0006_require_contenttypes_0002','2024-11-14 17:28:31.610123'),(12,'auth','0007_alter_validators_add_error_messages','2024-11-14 17:28:31.657796'),(13,'auth','0008_alter_user_username_max_length','2024-11-14 17:28:31.951198'),(14,'auth','0009_alter_user_last_name_max_length','2024-11-14 17:28:32.258270'),(15,'auth','0010_alter_group_name_max_length','2024-11-14 17:28:32.342567'),(16,'auth','0011_update_proxy_permissions','2024-11-14 17:28:32.373084'),(17,'auth','0012_alter_user_first_name_max_length','2024-11-14 17:28:32.575216'),(18,'core','0001_initial','2024-11-14 17:28:33.319581'),(19,'core','0002_invoice_total_alter_product_product_image','2024-11-14 17:28:34.143858'),(20,'sessions','0001_initial','2024-11-14 17:28:34.291662'),(21,'users','0001_initial','2024-11-14 17:28:34.587272'),(22,'users','0002_alter_profile_image','2024-11-14 17:28:34.622635'),(23,'core','0003_product_created_by_alter_invoiceitem_item','2024-11-15 09:31:49.735293');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1bzzgjum5a7bneubv3evly6oq3wfam3f','.eJxVjEEOwiAQRe_C2hAoIODSvWcgw8wgVVOS0q6Md7dNutDtf-_9t0iwLjWtnec0krgII06_WwZ88rQDesB0bxLbtMxjlrsiD9rlrRG_rof7d1Ch161G6ylEy846UKXobJgCIjKXoCKeMyN60tYNwJ5YDxs3MUB0g8asnPh8ARTmOPk:1tBsPd:t7vBW1Nq_m4uUnqkj1Ax5Jhe8-Ou7n5JxZ957BDjzx0','2024-11-29 09:14:45.977449'),('6t0buykm4fgi2ejve7wnaveu1s7t8rz0','.eJxVjEEOwiAQRe_C2pABCh1duvcMZIBBqgaS0q6MdzckXej2v_f-W3jat-L3zqtfkrgIJU6_W6D45DpAelC9Nxlb3dYlyKHIg3Z5a4lf18P9OyjUy6idRXBuAmBmBNCTTQY1IVqjLeZ4TkB6JmUgGKLgsiJirbKmWSVnxOcLvMM3Ug:1tC05m:Jn4iDvE4K_4K-9ysAdKFdSntBxxgA2ekXwweb31oipQ','2024-11-29 17:26:46.100867'),('a35r5f46pnzqgg969l4r9lqcycl0jq8q','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nNDFI:iCaDAjtcB9lOe16GeF1eB17_fudABT4tJGuZR3odWRM','2022-03-10 12:29:20.093000'),('bpwd7rvn1gowgxa2o9nxvfa0oxbnz005','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nN8gg:ylCbc3h169AiHq5J88TwqlpG-56MSPmRTvkNvoxh4oE','2022-03-10 07:37:18.815000'),('cxu8zlm05rpv6lyhlu4zilaz0jv973vs','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nMueQ:M-dN55F13PALKRXjh3jWWyFnYqyB9-0Dlff1F2FLE1o','2022-03-09 16:38:02.250000'),('d7oltmwkm80qwadps2dr958ehpr7dxcw','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nTQUd:lgw4glUuocj3yxbXsp_qAv6gQrtctuC_hsMEWT2eW0Y','2022-03-27 15:50:51.544000'),('fkgptqs449tlgjhyq6znznt9j38m2ora','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nN95I:yiN225SeSYKupOiF-8kcuNakZ9qD5TFxFeBLaZo8zEQ','2022-03-10 08:02:44.529000'),('iiqc5epn9slu9hrs2goahazki7u3fu33','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nREOs:czwLv8XHF7kMISZa3B9TG4GhwnS6njJLU-sXXuOgy4k','2022-03-21 14:31:50.123000'),('k1w5li129w4j55b5tge6yy97s1ckpct9','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nCj64:ygLckLYzNIb6QhGsVxoSfL66gjmraaTvusR7mgN2uI8','2022-02-09 14:16:28.551000'),('obik7ooraghsxk9kg6slzlzthzevapar','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nBt1T:DqxpgtqURWuhu7XG6Alf1gEC5ONaJENNw8FlQjl39Po','2022-02-07 06:40:15.161000'),('opetwh6ntfpzwitjfdw15mt0fedvdcl2','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nRBL4:S9Go8N-XOFOC7h23GYuzNbPfg1dpDiXUhjmh1HGPLcs','2022-03-21 11:15:42.339000'),('p1a8x06ktvairtkbe1rpzni2k3zvn729','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nJvM6:mvZ_pLHvP839G_RKoY2u7SNoJSPRHjVmAn1iTSa4bfo','2022-03-01 10:46:46.911000'),('pm6q76ytxr26l9ldl9d8cz517cnlcebl','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nN91h:sa2fnWt60pVkdTsiiXZcnKNf5AVtWmM8fOlF1r4amT4','2022-03-10 07:59:01.047000'),('tjbmwhdm5igu7sbsd9weo0uu8n0tppw5','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nRB0M:sj3-WfS7a8rdkZabV1-jtAp_5m-sl84TrsJt4uwiEpI','2022-03-21 10:54:18.207000'),('v1roazgnost0oyxnng5fsg3y1esa9k8b','.eJxVjEEOwiAQRe_C2pAOUDvj0n3PQAYGpGpoUtqV8e7apAvd_vfefynP21r81tLiJ1EXZdXpdwscH6nuQO5cb7OOc12XKehd0QdtepwlPa-H-3dQuJVv3TGi6VECOEBCYqAM4CgalMGYnpEiBWslu9gZoTRwIrFnQAdEmdT7A74XNws:1nNZjH:ocdmyN7QnEwexkQ71nqrSEZqQesww124nTeCKSnEJ0Y','2022-03-11 12:29:47.602000'),('zom9zawoo73brlyn5lvn5hj4gs5zm5qj','.eJxVjEEOwiAQRe_C2pABCh1duvcMZIBBqgaS0q6MdzckXej2v_f-W3jat-L3zqtfkrgIJU6_W6D45DpAelC9Nxlb3dYlyKHIg3Z5a4lf18P9OyjUy6idRXBuAmBmBNCTTQY1IVqjLeZ4TkB6JmUgGKLgsiJirbKmWSVnxOcLvMM3Ug:1tCzPj:LKWdiQYhO6x45hdIV8TOWA3z_ePX7omvuEkb_HeN_pE','2024-12-02 10:55:27.296652');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_profile`
--

DROP TABLE IF EXISTS `users_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_profile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_profile`
--

LOCK TABLES `users_profile` WRITE;
/*!40000 ALTER TABLE `users_profile` DISABLE KEYS */;
INSERT INTO `users_profile` VALUES (25,'default.png',1),(26,'default.png',2),(27,'default.png',3);
/*!40000 ALTER TABLE `users_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21 16:28:58
