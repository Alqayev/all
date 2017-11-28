-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cambalkon
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ourworksub`
--

DROP TABLE IF EXISTS `ourworksub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ourworksub` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `super_id` bigint(20) NOT NULL,
  `image_path` varchar(200) NOT NULL,
  `image_name` varchar(45) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ourworksub`
--

LOCK TABLES `ourworksub` WRITE;
/*!40000 ALTER TABLE `ourworksub` DISABLE KEYS */;
INSERT INTO `ourworksub` VALUES (1,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0004.370x250.mz.jpg','dsc_0004.370x250.mz.jpg',1),(2,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0006_vacib.370x250.mz.jpg','dsc_0006_vacib.370x250.mz.jpg',1),(3,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0007.370x250.mz.jpg','dsc_0007.370x250.mz.jpg',1),(4,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0011.370x250.mz.jpg','dsc_0011.370x250.mz.jpg',1),(5,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0027vacib.370x250.mz.jpg','dsc_0027vacib.370x250.mz.jpg',1),(6,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\fkh9210.370x250.jpg','fkh9210.370x250.jpg',1),(7,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\fkh9242_4_tonemapped.370x250.jpg','fkh9242_4_tonemapped.370x250.jpg',1),(8,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\fkh9253_4_5_tonemapped.370x250.jpg','fkh9253_4_5_tonemapped.370x250.jpg',1),(9,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\fotki_s_canon_048.370x250.mz.jpg','fotki_s_canon_048.370x250.mz.jpg',1),(10,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5294.370x250.mz.jpg','mg_5294.370x250.mz.jpg',1),(11,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5306.370x250.mz.jpg','mg_5306.370x250.mz.jpg',1),(12,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5319.370x250.mz.jpg','mg_5319.370x250.mz.jpg',1),(13,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5386.370x250.mz.jpg','mg_5386.370x250.mz.jpg',1),(14,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5404.370x250.mz.jpg','mg_5404.370x250.mz.jpg',1),(15,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5413_vacib.370x250.mz.jpg','mg_5413_vacib.370x250.mz.jpg',1),(16,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5441.370x250.mz.jpg','mg_5441.370x250.mz.jpg',1),(17,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5443_vacib.370x250.mz.jpg','mg_5443_vacib.370x250.mz.jpg',1),(18,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5457.370x250.mz.jpg','mg_5457.370x250.mz.jpg',1),(19,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5463.370x250.mz.jpg','mg_5463.370x250.mz.jpg',1),(20,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5464.370x250.mz.jpg','mg_5464.370x250.mz.jpg',1),(21,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5470_vacib.370x250.mz.jpg','mg_5470_vacib.370x250.mz.jpg',1),(22,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5476_2.370x250.mz.jpg','mg_5476_2.370x250.mz.jpg',1),(23,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5481.370x250.mz.jpg','mg_5481.370x250.mz.jpg',1),(24,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_6422.370x250.mz.jpg','mg_6422.370x250.mz.jpg',1),(25,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_6439_vacib.370x250.mz.jpg','mg_6439_vacib.370x250.mz.jpg',1),(26,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_6453.370x250.mz.jpg','mg_6453.370x250.mz.jpg',1),(27,1,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_8610_vacib.370x250.mz.jpg','mg_8610_vacib.370x250.mz.jpg',1),(28,2,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc00246.370x250.mz.jpg','dsc00246.370x250.mz.jpg',1),(29,2,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\havuz_kapatma_1.370x250.mz.jpg','havuz_kapatma_1.370x250.mz.jpg',1),(30,2,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_6455.370x250.mz.jpg','mg_6455.370x250.mz.jpg',1),(31,2,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_6475.370x250.mz.jpg','mg_6475.370x250.mz.jpg',1),(32,2,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_6477.370x250.mz.jpg','mg_6477.370x250.mz.jpg',1),(33,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0052-1.370x250.mz.jpg','dsc_0052-1.370x250.mz.jpg',0),(34,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\1.370x250.mz.jpg','1.370x250.mz.jpg',1),(35,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\023.370x250.mz.jpg','023.370x250.mz.jpg',1),(36,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0065.370x250.mz.jpg','dsc_0065.370x250.mz.jpg',1),(37,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0073.370x250.mz.jpg','dsc_0073.370x250.mz.jpg',1),(38,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0083.370x250.mz.jpg','dsc_0083.370x250.mz.jpg',1),(39,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0124.370x250.mz.jpg','dsc_0124.370x250.mz.jpg',1),(40,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0143.370x250.mz.jpg','dsc_0143.370x250.mz.jpg',1),(41,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0145.370x250.mz.jpg','dsc_0145.370x250.mz.jpg',1),(42,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\kis-bahcesi.370x250.mz.jpg','kis-bahcesi.370x250.mz.jpg',1),(43,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\kis-bahcesi-1.370x250.mz.jpg','kis-bahcesi-1.370x250.mz.jpg',1),(44,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\meh5-1.370x250.mz.jpg','meh5-1.370x250.mz.jpg',1),(45,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\meh9.370x250.mz.jpg','meh9.370x250.mz.jpg',1),(46,3,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\mg_5426.370x250.mz.jpg','mg_5426.370x250.mz.jpg',1),(47,4,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0052-1.370x250.mz.jpg','dsc_0052-1.370x250.mz.jpg',1),(48,4,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0054.370x250.mz.jpg','dsc_0054.370x250.mz.jpg',1),(49,4,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0059.370x250.mz.jpg','dsc_0059.370x250.mz.jpg',1),(50,4,'C:\\Users\\TALEH\\Desktop\\Cam\\out\\artifacts\\Cam_war_exploded\\ourwork\\dsc_0060-1.370x250.mz.jpg','dsc_0060-1.370x250.mz.jpg',1);
/*!40000 ALTER TABLE `ourworksub` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 12:14:25
