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
INSERT INTO `django_session` VALUES ('1bzzgjum5a7bneubv3evly6oq3wfam3f','.eJxVjEEOwiAQRe_C2hAoIODSvWcgw8wgVVOS0q6Md7dNutDtf-_9t0iwLjWtnec0krgII06_WwZ88rQDesB0bxLbtMxjlrsiD9rlrRG_rof7d1Ch161G6ylEy846UKXobJgCIjKXoCKeMyN60tYNwJ5YDxs3MUB0g8asnPh8ARTmOPk:1tBsPd:t7vBW1Nq_m4uUnqkj1Ax5Jhe8-Ou7n5JxZ957BDjzx0','2024-11-29 09:14:45.977449'),('5cflo6nng6tvtc1qxnnwmm57uk4flvxq','.eJxVjEEOwiAQRe_C2pABCh1duvcMZIBBqgaS0q6MdzckXej2v_f-W3jat-L3zqtfkrgIJU6_W6D45DpAelC9Nxlb3dYlyKHIg3Z5a4lf18P9OyjUy6idRXBuAmBmBNCTTQY1IVqjLeZ4TkB6JmUgGKLgsiJirbKmWSVnxOcLvMM3Ug:1tBwnJ:vWuwCGCW3_sPBMrVx5THduiylymkgaCNpq8__YSypww','2024-11-29 13:55:29.643822'),('a35r5f46pnzqgg969l4r9lqcycl0jq8q','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nNDFI:iCaDAjtcB9lOe16GeF1eB17_fudABT4tJGuZR3odWRM','2022-03-10 12:29:20.093000'),('bpwd7rvn1gowgxa2o9nxvfa0oxbnz005','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nN8gg:ylCbc3h169AiHq5J88TwqlpG-56MSPmRTvkNvoxh4oE','2022-03-10 07:37:18.815000'),('cxu8zlm05rpv6lyhlu4zilaz0jv973vs','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nMueQ:M-dN55F13PALKRXjh3jWWyFnYqyB9-0Dlff1F2FLE1o','2022-03-09 16:38:02.250000'),('d7oltmwkm80qwadps2dr958ehpr7dxcw','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nTQUd:lgw4glUuocj3yxbXsp_qAv6gQrtctuC_hsMEWT2eW0Y','2022-03-27 15:50:51.544000'),('fkgptqs449tlgjhyq6znznt9j38m2ora','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nN95I:yiN225SeSYKupOiF-8kcuNakZ9qD5TFxFeBLaZo8zEQ','2022-03-10 08:02:44.529000'),('iiqc5epn9slu9hrs2goahazki7u3fu33','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nREOs:czwLv8XHF7kMISZa3B9TG4GhwnS6njJLU-sXXuOgy4k','2022-03-21 14:31:50.123000'),('k1w5li129w4j55b5tge6yy97s1ckpct9','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nCj64:ygLckLYzNIb6QhGsVxoSfL66gjmraaTvusR7mgN2uI8','2022-02-09 14:16:28.551000'),('obik7ooraghsxk9kg6slzlzthzevapar','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nBt1T:DqxpgtqURWuhu7XG6Alf1gEC5ONaJENNw8FlQjl39Po','2022-02-07 06:40:15.161000'),('opetwh6ntfpzwitjfdw15mt0fedvdcl2','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nRBL4:S9Go8N-XOFOC7h23GYuzNbPfg1dpDiXUhjmh1HGPLcs','2022-03-21 11:15:42.339000'),('p1a8x06ktvairtkbe1rpzni2k3zvn729','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nJvM6:mvZ_pLHvP839G_RKoY2u7SNoJSPRHjVmAn1iTSa4bfo','2022-03-01 10:46:46.911000'),('pm6q76ytxr26l9ldl9d8cz517cnlcebl','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nN91h:sa2fnWt60pVkdTsiiXZcnKNf5AVtWmM8fOlF1r4amT4','2022-03-10 07:59:01.047000'),('tjbmwhdm5igu7sbsd9weo0uu8n0tppw5','.eJxVjMsOwiAUBf-FtSGWV8Gl-34DuQ-QqoGktCvjv2uTLnR7Zua8RIRtLXHraYkzi4sYxOl3Q6BHqjvgO9Rbk9Tquswod0UetMupcXpeD_fvoEAv3zq4bIxl71FjYK2tMcElym7M1hL5ERSo5CzlMGSgnIIFAo0O2QOrs3h_AO3AONo:1nRB0M:sj3-WfS7a8rdkZabV1-jtAp_5m-sl84TrsJt4uwiEpI','2022-03-21 10:54:18.207000'),('v1roazgnost0oyxnng5fsg3y1esa9k8b','.eJxVjEEOwiAQRe_C2pAOUDvj0n3PQAYGpGpoUtqV8e7apAvd_vfefynP21r81tLiJ1EXZdXpdwscH6nuQO5cb7OOc12XKehd0QdtepwlPa-H-3dQuJVv3TGi6VECOEBCYqAM4CgalMGYnpEiBWslu9gZoTRwIrFnQAdEmdT7A74XNws:1nNZjH:ocdmyN7QnEwexkQ71nqrSEZqQesww124nTeCKSnEJ0Y','2022-03-11 12:29:47.602000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 19:56:35
