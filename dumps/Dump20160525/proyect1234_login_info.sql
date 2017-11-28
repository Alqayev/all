-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: proyect1234
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
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TaxiId` int(11) DEFAULT NULL,
  `Login` varchar(150) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  `RegisDay` date DEFAULT NULL,
  `Tasks` varchar(150) DEFAULT NULL,
  `Active` int(11) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
INSERT INTO `login_info` VALUES (1,22,'log','bir','2016-01-05','user',1),(2,23,'salim','202cb962ac59675b964b67152d234b70','2010-11-05','user',1),(3,24,'nahid','53c8f03f8cd8947ab96c656a8dd69fab','2016-11-05','user',1),(4,25,'taleh','8944a4f19e63dfdc3f67a26ddcc0b158','2012-03-05','admin',1),(5,26,'nahid','202cb962ac59675b964b67152d234b70','2016-03-05','user',1),(6,27,'Taxi','35e768d3643c55b5546979da7feaf81c','2006-11-05','user',1),(7,28,'elsen','c34e3542e9e6a5753622698ea8381b1c','2008-09-05','user',1),(8,29,'Salim','ca6b147b8fbdd688d8ebcaa3b863c22a','2008-07-05','user',1),(9,30,'Salim','ca6b147b8fbdd688d8ebcaa3b863c22a','2008-07-05','user',1),(10,31,'Nadir','6ea797883aeadd79107381659847c650','2016-10-05','user',1),(11,32,'intiqam','e9569c3ecaa28218b3ded097567771ec','2016-04-05','user',1),(12,33,'intiqam','e9569c3ecaa28218b3ded097567771ec','2016-04-05','user',1),(13,34,'islam','637c53a1a1be94b8b2d9696b2d60ca65','2017-06-05','user',1),(14,35,'asim','697d2f1bc2a7b06f7135e712e710e8e3','2006-11-05','user',1),(15,36,'qalib','da3e6b673fb111eace6aa5a77564d034','2009-07-05','user',1),(16,37,'esra','a9d7aee0786e81ead3679cf8a08eab21','2008-09-05','user',1),(17,38,'seddam','5fe972d42a72954ad41dfa6a9276dee9','2006-11-05','user',1),(18,39,'seddam','5fe972d42a72954ad41dfa6a9276dee9','2006-11-05','user',1),(19,40,'solmaz','83522327b84ed8613726f3ebc097b97b','2006-05-05','user',1),(20,41,'solmaz','83522327b84ed8613726f3ebc097b97b','2006-05-05','user',1),(21,42,'solmaz','83522327b84ed8613726f3ebc097b97b','2006-05-05','user',1),(22,43,'solmaz','83522327b84ed8613726f3ebc097b97b','2006-05-05','user',1),(23,44,'es','12476fe466d44017d96eab37dd65fc14','2016-06-05','user',1),(24,45,'sadiq','9e57dc68e299b150b37c939ecb4e5a67','2006-11-05','user',1),(25,46,'afiq','35bbf5fc2389c0a570a16d2fd3e9c71e','2016-11-05','user',1),(26,47,'as','f970e2767d6cfe75876ea857f92e319b','2016-12-05','user',1),(27,48,'dd','1aabac6d668eef6a7bad3fdf50a05cc8','2016-06-05','user',1),(28,49,'rasim','351ac251388588c9574adf62a1906efb','2017-01-05','user',1),(29,50,'asom','b029c97c69686c9297c22c9d394bf0e2','2006-11-05','user',1),(30,51,'qalib','da3e6b673fb111eace6aa5a77564d034','2016-05-05','user',1),(31,52,'faiq','336cfc1d106bf2606a4b5661684b323b','2016-04-05','user',1),(32,53,'dfggdfg','55542542b9318fb4a7fd6f7dd8f1a566','2016-04-05','user',1),(33,54,'hafiz','839a54bf20626e4942bc8f11873f6654','2016-06-05','user',1),(34,55,'qasim','3ec1e3974dcc84a0a7a64a1cd28970a5','2007-06-05','user',1),(35,56,'iskender','d16a993e677c7cfc76a86536adb563e8','2007-03-05','user',1),(36,57,'iskender','d16a993e677c7cfc76a86536adb563e8','2007-03-05','user',1),(37,58,'asas','baa7a52965b99778f38ef37f235e9053','2016-11-05','user',1),(38,59,'kadir','19104f80b87a4fa150d6b9aab2536952','2018-02-05','user',1),(39,60,'js','6226f7cbe59e99a96b5cef6f94f966fd','2018-01-05','user',1),(40,61,'hgjhgjkj','226dbb87db906aad5ac08d9d8b6e7bde','2016-03-05','user',1),(41,62,'leman','f477a5a42cd59f44f719e57ee6683569','2016-11-05','user',1),(42,63,'salam','de6838252f95d3b9e863b28df33b4baa','2006-05-05','user',1),(43,64,'dir','736067832d2167baaae763fd3a3f3cf1','2018-02-05','user',1),(44,65,'esra','a9d7aee0786e81ead3679cf8a08eab21','2016-04-05','user',1),(45,66,'talib','29227953dce7d36524531dda2450604e','2017-06-05','user',1),(46,67,'uc','d38af049e086eb7b59102bcf6c93974c','2007-03-05','user',1),(47,68,'huquq','d1ee2ee34276654b20bca793d16ff1ff','2016-11-05','user',1),(48,69,'Samara','285315d3547d826393b5884cfa9fe4c3','2016-11-05','user',1),(49,70,'bdfvdfvdvv','7d79c7423991abeca5c3bb66f8b8d4ed','2016-12-05','user',1),(50,71,'lhkjhkjhjk','6a37f0e6f74146291226cd696a692b8a','2016-04-05','user',1),(51,72,'asdad','a8f5f167f44f4964e6c998dee827116c','2017-06-05','user',1),(52,73,'Sahib','f17ff23f1c10ea5b1cf3e386d3536964','2017-07-05','user',1),(53,74,'Aqsin','51d29ac7213c32e3a169deac4971e450','2006-04-05','user',1),(54,75,'Ahmet','cdb5efc9c72196c1bd8b7a594b46b44f','2007-01-05','user',1),(55,76,'Sakir','924e1c34b46d5cd0e490b3cf1a2c5527','2006-04-05','user',1),(56,77,'Zeynal','97746672efa450773da1e11c5980495f','2006-04-05','user',1),(57,78,'Togrul','516176c780896f4bb4d0757b9dfcf3c7','2016-04-05','user',1),(58,79,'Aydin','166c298db8a76969b670d253de38e46c','2008-01-05','user',1);
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-25 21:11:04
