-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: workers
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
-- Table structure for table `primarytable`
--

DROP TABLE IF EXISTS `primarytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `primarytable` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Surname` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Pass` varchar(3000) DEFAULT NULL,
  `Born_date` date DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Role` int(11) DEFAULT NULL,
  `Active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primarytable`
--

LOCK TABLES `primarytable` WRITE;
/*!40000 ALTER TABLE `primarytable` DISABLE KEYS */;
INSERT INTO `primarytable` VALUES (1,'Taleh','Alqayev','alqayevt@gmail.com','1234','1993-06-04',1,3,1),(2,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,4,0),(3,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,3,0),(4,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,4,0),(5,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,NULL,0),(6,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,4,0),(7,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,NULL,0),(8,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,NULL,0),(9,'aslan',NULL,'as@mail.ru',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `primarytable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 12:25:36
