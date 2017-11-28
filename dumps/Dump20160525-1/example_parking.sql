-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: example
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking` (
  `No` int(11) NOT NULL AUTO_INCREMENT,
  `ParkingNo` int(11) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Surname` varchar(45) DEFAULT NULL,
  `CarNom` varchar(45) DEFAULT NULL,
  `Date` date DEFAULT '2001-01-01',
  `Active` int(11) DEFAULT '1',
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (1,123321,'Taleh','Alqayev','10-AA-010','2001-01-01',1),(2,23,'Taleh','Asim','10-AA-010','2001-01-01',1),(3,145,'Taleh','Sariyev','21-CV-253','2001-01-01',1),(4,7,'Amid','Sari','25-BC-033','2001-01-01',1),(5,74,'Amid','Sari','33-CC-021','2001-01-01',1),(6,47,'Asim','Sari','54-SD-654','2001-01-01',1),(7,42,'Amid','Sari','55-SD-122','2001-01-01',1),(8,1,'Amid','Sari','64-SD-322','2001-01-01',1),(9,0,'Amid','Sari','56-SD-546','2001-01-01',1),(10,57,'Amid','Sari','55-SD-455','2001-01-01',1),(11,544,'Amid','Sari','48-XZ-021','2001-01-01',1),(12,452,'Amid','Sari','15-AS-158','2001-01-01',1),(13,758,'Amid','Sari','74-AS-544','2001-01-01',1),(14,741,'Amid','Sari','85-AS-542','2001-01-01',1),(15,4,'Amid','Sari','48-AS-455','2001-01-01',1),(16,45,'Amid','Sari','25-BC-033','2001-01-01',1),(17,855,'Amid','Sari','25-BC-037','2001-01-01',1),(18,7858,'Amid','Sari','25-BC-031','2001-01-01',1),(19,5,'Amid','Sari','25-BC-035','2001-01-01',1),(20,7857,'Amid','Sari','15-AS-157','2001-01-01',1),(21,57,'Amid','Sari','15-AS-156','2001-01-01',1),(22,4,'Amid','Sari','15-AS-155','2001-01-01',1),(23,4567,'Amid','Sari','15-AS-154','2001-01-01',1),(24,54,'Amid','Sari','15-AS-153','2001-01-01',1),(25,56,'Amid','Sari','15-AS-151','2001-01-01',1),(26,5,'Amid','Sari','55-SD-457','2001-01-01',1),(27,65,'Amid','Sari','55-SD-454','2001-01-01',1),(28,56,'Amid','Sari','55-SD-451','2001-01-01',1),(29,56,'Amid','Sari','64-SD-322','2001-01-01',1),(30,56,'Amid','Sari','64-SD-654','2001-01-01',1),(31,5,'Amid','Sari','64-SD-741','2001-01-01',1),(32,15,'Amid','Sari','64-SJ-545','2001-01-01',1),(33,12,'Amid','Sari','64-SD-754','2001-01-01',1),(34,21,'Amid','Sari','64-SD-542','2001-01-01',1),(35,11141,'Amid','Sari','64-SD-374','2001-01-01',1),(36,5,'Amid','Sari','64-SD-379','2001-01-01',1),(37,14,'Amid','Sari','64-SD-385','2001-01-01',1),(38,4,'Amid','Sari','64-SD-326','2001-01-01',1),(39,184,'Amid','Sari','64-SD-328','2001-01-01',1),(40,62,'Solmaz','Laconova','12-CV-012','2001-01-01',1),(41,12,'Kamile','Zamanova','45-BC-021','2015-12-24',1),(42,12,'Kamile','Zamanova','45-BC-021','0205-12-24',1),(43,24,'Zamin','Zamanov','45-BC-021','2017-02-24',1),(44,24,'Gunay',NULL,'45-BC-021','2017-02-24',1),(45,24,'Gunay',NULL,'45-BC-021','2013-02-24',1),(46,24,'Zumrud',NULL,'54-CF-021','2010-02-24',1);
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-25 21:18:20
