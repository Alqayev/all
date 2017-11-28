-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyect1234
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
-- Table structure for table `picturetaxi`
--

DROP TABLE IF EXISTS `picturetaxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `picturetaxi` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TaxiId` int(11) DEFAULT NULL,
  `Picture` varchar(2000) DEFAULT NULL,
  `Active` int(11) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picturetaxi`
--

LOCK TABLES `picturetaxi` WRITE;
/*!40000 ALTER TABLE `picturetaxi` DISABLE KEYS */;
INSERT INTO `picturetaxi` VALUES (1,2,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\New Р”РѕРєСѓРјРµРЅС‚ Microsoft Word.docx',NULL),(2,22,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\ing dili.docx',1),(3,2,'',NULL),(4,25,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\63d6facc-86fc-4303-bc57-b49c4dd66904-original.jpeg',1),(5,0,'',1),(6,0,'',1),(7,0,'',1),(8,0,'',1),(9,77,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\63d6facc-86fc-4303-bc57-b49c4dd66904-original.jpeg',1),(10,25,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\13177204_574501349399026_2253295628042376065_n.jpg',1),(11,25,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\Default-Icon-icon.png',1),(12,25,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\Default-Icon-icon.png',1),(13,78,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\Default-Icon-icon.png',1),(14,25,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\head-idea-ico.png',1),(15,79,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\Capture.PNG',1),(16,79,'C:\\Users\\Taleh\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\Capture.PNG',1),(17,123,'C:\\Users\\TALEH\\Documents\\IdeaProjects\\Proyect123\\out\\artifacts\\Proyect123_war_exploded\\upload\\chrome_100_percent.pak',1);
/*!40000 ALTER TABLE `picturetaxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 12:25:37
