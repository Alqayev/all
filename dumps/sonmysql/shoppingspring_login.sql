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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(1000) DEFAULT NULL,
  `Born_Date` date DEFAULT NULL,
  `Login_Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Active` int(11) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'Alqayev Taleh','alqayevt@gmail.com','4d03c52b6b2b35b302d61fbaef1650610e7e23c013d7cf5940c1c2e3216d494e','1993-06-06','2016-07-30 09:17:14',1),(2,'u_fullName','asladsn@mail.ru','1234',NULL,'2016-07-30 09:17:14',1),(3,'Arzu Sila','arzu@hotmail.com','1','1992-02-02','2016-07-30 09:17:14',1),(4,'Aydan Sari','aysu@hotmail.com','2','1991-02-02','2016-07-30 11:14:40',1),(5,'Aygun','als@mail.com','5','1995-02-02','2016-07-30 12:28:44',1),(6,'efsfsdfs','a@mail.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-23','2016-08-02 21:03:55',1),(7,'scsc','a@mail.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-02 21:05:04',1),(8,'samir ilqarli','ilqarli@mail.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-24','2016-08-02 21:28:53',1),(9,'asiman hasimli','alqat@gmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-16','2016-08-02 21:41:44',1),(10,'aaa','addd@mail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-23','2016-08-02 21:46:36',1),(11,'hukjkhjk','asd@mail.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-02 21:47:54',1),(12,'275788','dfddfd@mail.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-02 21:48:37',1),(13,'sdfsdfsdf','sas@dss.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-16','2016-08-02 21:56:32',1),(14,'sdfsf','sdfsdf@mail.cv','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-02','2016-08-02 21:58:12',1),(15,'qqqqq','as@j.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-02 22:36:26',1),(16,'hjkhkhjk','khjhk@ma.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-09','2016-08-02 22:37:38',1),(17,'dfgdfgdfg','assd@ma.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-02 22:43:35',1),(18,'hjkhjk','hkkhk@dssdf.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-16','2016-08-02 22:44:10',1),(19,'asef','alqaye@gmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-08','2016-08-02 22:45:17',1),(20,'Akif Islamli','akif@mail.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-03','2016-08-03 06:49:45',1),(21,'samed samedli','samed@m.gf','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-03','2016-08-03 06:58:37',1),(22,'samed samedli','at@gmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-03','2016-08-03 06:58:58',1),(23,'aaaaaa','aaaa@fff.tt','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-23','2016-08-03 07:08:11',1),(24,'aaaaaa','ddd@df.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-23','2016-08-03 07:09:39',1),(25,'asdad','asdasd@am.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-01','2016-08-03 07:10:10',1),(26,'asdasdadad','asss@n.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-23','2016-08-03 07:12:46',1),(27,'tttt','la@m.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-03 07:15:14',1),(28,'sdgsdgs','ddd@ma.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-31','2016-08-03 07:18:31',1),(29,'fykul/','hjk@md.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-03 07:19:49',1),(30,'qqqq','asas@mm.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-01','2016-08-03 07:21:21',1),(31,'ppp','ph@m.ru','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-30','2016-08-03 07:25:02',1),(32,'alqasimli ilkin','ilkin@hotmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','1992-07-15','2016-08-03 10:25:35',1),(33,'Akifzade Elcin','Akifzade@hotmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','1992-07-09','2016-08-03 10:27:52',1),(34,'Akifzade Elcin','Akifzade@hotmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','1992-07-09','2016-08-03 10:32:01',1),(35,'sfsdfsdsdfDF','t@gmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-09','2016-08-03 10:33:25',1),(36,'CVBCVCVB','CVB@MDFG.RU','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-02','2016-08-03 10:34:57',1),(37,'ASDAD','asd@msds.ru','9f71c1d3786e9310aff9f463f7b11f243dcbcf53d4d755e9e02a68bd018a510e','2000-08-30','2016-08-03 10:37:02',1),(38,'sfsfsvafasdfafasasgagfgadf','dvdfg@mail.ty','18b17e37c2dfb40f696450afc2324b96020dd60123d0d66e5a32b1ce7db4d9b0','1991-08-10','2016-08-03 10:38:40',1),(39,'zzzzz','zzz@sddsd.ty','4aff13c876aa259f16a04047d524da6d8da50706fc557f97e2518c7d55d5f33d','2016-08-30','2016-08-03 10:39:39',1),(40,'Akifzade@hotmail.com','Akifzade@hotmail.com','4d4e1bad8e135fa235bcf858082fde108190afeb735656ebd2d29807c37928a6','2016-08-16','2016-08-03 10:45:04',1),(41,'dd','Akifzade@hotmail.com','4d4e1bad8e135fa235bcf858082fde108190afeb735656ebd2d29807c37928a6','2016-08-23','2016-08-03 11:04:38',1),(42,'ghjj','Akifzade@hotmail.com','11','1992-02-02','2016-08-03 13:26:58',1),(43,'sdcsf','sdfsdfsdf@m.ru','dfsdfsdf','1992-02-02','2016-08-03 13:48:41',1),(44,'k@mail.ru','k@mail.ru','bcde49359764eeb546af93a6dc13f12e9f7105654b19ecd98cc5c4af676185ed','2016-08-30','2016-08-03 13:52:13',1),(45,'fffffffff','fffffffff@m.ru','024926acc946b90459068a07b7662977da32950669623b705f81e887c3d2ab0e','2016-08-29','2016-08-03 14:45:25',1),(46,'asli asli','ASLINDA@dord.cpm','406cf4a8f0ba813916e0aa75220b40946683e81072e1e15771e00168ce50cee2','2016-08-30','2016-08-03 15:31:51',1),(47,'uid','s@s.s','ffee107a443a13af952e23dd8bdb78945ebea03c337a2a1069f8da31928c8cd8','2016-08-23','2016-08-03 16:04:18',1),(48,'Asif Zohrabli','aska@mail.ci','36ec90742413eee15e1115434f128ff7b4f3d012c771dab1f283f7469832d3bc','2016-08-30','2016-08-03 16:08:44',1),(49,'Asiman','qarahanli@hotmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-15','2016-08-07 15:50:58',1),(50,'sadiqs','alqayevtsssssss@gmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-10','2016-08-10 09:42:33',1),(51,'asiman','yeniGun@gmail.com','605b2bbd210ab6ce8efdc5292874d79b87ca0023a08fed9877992888da82e260','2016-08-08','2016-08-10 14:02:35',1),(52,'sdsdfsdfsdf','alqayesdfsdfsdfvt@gmail.com','4aff13c876aa259f16a04047d524da6d8da50706fc557f97e2518c7d55d5f33d','2016-08-23','2016-08-11 15:25:21',1),(53,'qqq','alqayeqqqvt@gmail.com','4aff13c876aa259f16a04047d524da6d8da50706fc557f97e2518c7d55d5f33d','2016-08-01','2016-08-11 15:26:51',1),(54,'Abdurrahman','Balakisi@mail.ru','123456',NULL,'2016-08-26 16:17:19',1),(55,'tuyui','ui','ii',NULL,'2016-08-27 14:59:10',1),(56,'rtyrty','rtyrtyrty','trtyry',NULL,'2016-08-27 15:07:47',1),(57,'rtyrty','rtyrtyrty','trtyry',NULL,'2016-08-27 15:07:48',1),(58,'sfsdfsdf','sdfsdfsdfsdf','sdfsdfsdfsdf',NULL,'2016-08-27 19:24:23',1),(59,'sfsdfsdf','sdfsdfsdfsdf','sdfsdfsdfsdf',NULL,'2016-08-27 19:24:23',1),(60,'sfsdfsdf','sdfsdfsdfsdf','sdfsdfsdfsdf',NULL,'2016-08-27 19:24:24',1),(61,'kl;k;kl;','kl;kl;k;k;','k;k;kl;k;',NULL,'2016-08-27 19:28:47',1),(62,'44','444','4444',NULL,'2016-08-27 19:29:36',1),(63,'m,.m,..m','m,.m.m.','.m.m,.m..',NULL,'2016-08-27 19:32:55',1),(64,'m,.m,..m','m,.m.m.','.m.m,.m..',NULL,'2016-08-27 19:32:55',1),(65,'ljlkljkl','kljljljjll','kljljkjljl',NULL,'2016-08-27 21:49:47',1),(66,'kazim','kazimli','1993',NULL,'2016-08-27 21:52:58',1),(67,'as','as','as',NULL,'2016-08-27 22:17:06',1),(68,'qq','qq','qq',NULL,'2016-08-28 08:15:15',1),(69,'qq','qq','qq',NULL,'2016-08-28 08:15:31',1),(70,'qq','qq','qq',NULL,'2016-08-28 08:15:36',1),(71,'zx','zx','zx',NULL,'2016-08-28 08:15:59',1),(72,'nn','nn','nn',NULL,'2016-08-28 08:16:57',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
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
