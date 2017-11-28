-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shoppingspring
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
-- Table structure for table `usergender`
--

DROP TABLE IF EXISTS `usergender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergender` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Primary_Id` int(11) NOT NULL,
  `Gender` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `gender_idx` (`Primary_Id`),
  CONSTRAINT `gender` FOREIGN KEY (`Primary_Id`) REFERENCES `login` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergender`
--

LOCK TABLES `usergender` WRITE;
/*!40000 ALTER TABLE `usergender` DISABLE KEYS */;
INSERT INTO `usergender` VALUES (1,1,2),(2,7,1),(3,8,1),(4,9,1),(5,10,1),(6,11,1),(7,12,1),(8,13,1),(9,14,1),(10,15,1),(11,16,1),(12,17,1),(13,18,1),(14,19,1),(15,20,1),(16,21,1),(17,22,1),(18,23,1),(19,24,2),(20,25,1),(21,26,1),(22,27,1),(23,28,1),(24,29,1),(25,30,1),(26,31,1),(27,32,1),(28,33,1),(29,34,1),(30,35,1),(31,36,1),(32,37,1),(33,38,1),(34,39,1),(35,40,2),(36,41,1),(37,43,1),(38,44,1),(39,46,2),(40,47,1),(41,48,1),(42,49,1),(43,50,1),(44,51,1),(45,52,1),(46,53,1);
/*!40000 ALTER TABLE `usergender` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 12:25:35
