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
-- Table structure for table `topaltcategory`
--

DROP TABLE IF EXISTS `topaltcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topaltcategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Top_Id` bigint(20) NOT NULL,
  `Alt_Category_Name` varchar(100) NOT NULL,
  `Active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`),
  KEY `topcategorykey_idx` (`Top_Id`),
  CONSTRAINT `topcategorykey` FOREIGN KEY (`Top_Id`) REFERENCES `topcategory` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topaltcategory`
--

LOCK TABLES `topaltcategory` WRITE;
/*!40000 ALTER TABLE `topaltcategory` DISABLE KEYS */;
INSERT INTO `topaltcategory` VALUES (1,1,'CambalkonNovs',1),(2,1,'Surmali',1),(3,1,'Pardali',1),(4,2,'SabitShusheleme',1),(5,2,'Arakasma',1),(6,3,'Silikon_Cabha',1),(7,3,'Qapaqli_Cabha',1),(8,3,'Monet_Sistem',1),(9,3,'Izosistem',1),(10,3,'Alowood',1),(11,4,'Yuvarlanan_Tavan',1),(12,4,'Cam_Tavan',1),(13,4,'Tent',1),(14,4,'Sky_Light',1),(15,4,'Polikarbonant_Damlar',1),(16,4,'Membran',1),(17,4,'Hovuzlar',1),(18,5,'Aliminium_Alsesuarlarla_ShushaMahaccarlar',1),(19,5,'Paslanmaz_Aksesuarlarla_ShushaMahaccarlar',1),(20,6,'Asqili',1),(21,6,'Pompali',1),(22,6,'Fotoselli',1),(23,6,'Petleli(menteseli) qapilar',1);
/*!40000 ALTER TABLE `topaltcategory` ENABLE KEYS */;
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
