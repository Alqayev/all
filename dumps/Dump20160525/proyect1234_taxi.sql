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
-- Table structure for table `taxi`
--

DROP TABLE IF EXISTS `taxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxi` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Mob` varchar(25) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `RegistrDay` date DEFAULT NULL,
  `Gender` int(11) DEFAULT NULL,
  `Language` int(11) DEFAULT NULL,
  `KindOfTaxi` int(11) DEFAULT NULL,
  `Active` int(11) DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxi`
--

LOCK TABLES `taxi` WRITE;
/*!40000 ALTER TABLE `taxi` DISABLE KEYS */;
INSERT INTO `taxi` VALUES (1,'Taleh','Balaken','055','alqayevt@gmail.com','2017-06-05',1,3,50,0),(2,'Elmeddin','Sariyev','051','@gmail.com','2016-11-05',1,3,7,1),(3,'Aslan','Baki','051','es@gmail.com','2012-08-05',1,3,8,1),(4,'Ayten','Goran','051','l@gmail.ru','2016-05-05',2,5,9,1),(5,'Aynur','Sabirabad','051','a@gmail.om','2007-10-05',2,4,12,1),(6,'Elgun','Nahid','051','a@gmail.om','2007-11-05',1,5,5,1),(7,'Akif','Incir','055','a@gmail.om','2016-02-05',1,3,5,1),(8,'Ilyas','endora','051','s@gmail.om','2006-11-05',1,5,5,1),(9,'Murad','Balaken','055','a@gmail.om','2006-10-05',1,5,7,1),(10,'Aysu','Baki','051','a@mail.ru','2007-09-05',2,NULL,8,1),(11,'Sakir','Sabirabad','051','a@gmail.om','2016-11-05',1,NULL,5,1),(12,'Selim','Nazirov','051','ssss@gmail.om','2010-06-05',1,NULL,5,1),(13,'SAbir','Sabirabad','055','s@gmail.com','2007-10-05',1,NULL,12,1),(14,'Aysel','Imisli','077','ss@gmail.com','1998-05-05',2,NULL,10,1),(15,'Kamil','Qarabag','077','sss@gmail.com','1992-04-05',1,NULL,7,1),(16,'Taleh','Baki','051','sad','2013-04-05',1,NULL,6,1),(17,'sdsdasasd','asd','051','sad','2009-07-05',1,NULL,8,1),(18,'amid','baki','051','a\"mailşru','2007-03-05',2,NULL,7,1),(19,'İliki','Baki','051','a@mail.ru','2017-06-05',1,NULL,7,1),(20,'name','name','051','a@gmail.com','2015-02-05',1,NULL,6,1),(21,'name','name','051','a@gmail.com','2015-02-05',1,NULL,6,1),(22,'amil','nazar','051','a@gmail.com','2010-12-05',1,NULL,7,1),(23,'Salim','Baku','051','a@gmail.com','1996-09-05',1,NULL,12,1),(24,'Nahid','Hid','051','a@gmail.com','2007-09-05',1,NULL,11,1),(25,'Taleh','Balaken','051','a#gmail.com','2008-08-05',1,NULL,7,1),(26,'alik','Saray','051','a@gmail.com','2016-04-05',1,NULL,6,1),(27,'taxi','taxi','051','a@gmail.com','2017-07-05',1,NULL,6,1),(28,'elsen','Balaken','051','a@gmail.com','2017-07-05',1,NULL,6,1),(29,'salim','barda','051','a@gmail.com','2007-11-05',1,NULL,7,1),(30,'salim','barda','051','a@gmail.com','2007-11-05',1,NULL,7,1),(31,'nadir','gence','051','a@gmail.com','2016-06-05',1,NULL,6,1),(32,'intiqam','balaken','051','a@gmail.com','2017-07-05',1,NULL,7,1),(33,'intiqam','balaken','051','a@gmail.com','2017-07-05',1,NULL,7,1),(34,'isalm','balaken','051','L@gmail.com','2016-05-05',1,NULL,6,1),(35,'asim','asim','051','a@gmail.com','2017-06-05',1,NULL,6,1),(36,'qalib','qalib','055','q@gmail.com','2013-10-05',1,NULL,8,1),(37,'bir','adres','070','s@gmail.com','2017-07-05',2,NULL,10,1),(38,'seddam','kas','077','s@gmail.com','2016-12-05',1,NULL,7,1),(39,'seddam','kas','077','s@gmail.com','2016-12-05',1,NULL,7,1),(40,'solmaz','sol','055','s@gmail.com','2016-06-05',2,NULL,7,1),(41,'solmaz','sol','055','s@gmail.com','2016-06-05',2,NULL,7,1),(42,'solmaz','sol','055','s@gmail.com','2016-06-05',2,NULL,7,1),(43,'solmaz','sol','055','s@gmail.com','2016-06-05',2,NULL,7,1),(44,'es','es','060','s@gmail.com','2022-05-05',1,NULL,9,1),(45,'sadiq','saqid','082','q@gmail.com','2007-04-05',1,NULL,6,1),(46,'afiq','afiq','055','g@gmail.com','2017-01-05',1,NULL,6,1),(47,'as','as','450','a@gm.ru','2017-08-05',1,NULL,7,1),(48,'dd','dd','051','a@gmail.com','2016-05-05',1,NULL,10,1),(49,'rasim','baki','051','as@gmail.com','2018-04-05',1,NULL,6,1),(50,'asom','baki','055','q@gmail.com','2018-03-05',1,NULL,7,1),(51,'qalib','Baki','051','s@gmail.com','2016-06-05',1,NULL,7,1),(52,'faiq','baki','055','f@mai.ru','2016-12-05',1,NULL,6,1),(53,'dfgdfgdfg','dfgdfgdf','123','f@mail.ru','2016-05-05',1,NULL,7,1),(54,'hafiz','baki','055','a@gmail.com','2016-05-05',1,NULL,6,1),(55,'qasim','adrs','055','a@mail.ru','2016-03-05',1,NULL,7,1),(56,'iskender','balaken','055','is@gmail.com','2006-04-05',1,NULL,6,1),(57,'iskender','balaken','055','is@gmail.com','2006-04-05',1,NULL,6,1),(58,'sas','assas','055','a@mail.com','2016-05-05',1,NULL,6,1),(59,'kadir','kadir','055','email@mail.com','2017-06-05',1,NULL,6,1),(60,'sdds',',m,n,n','4546','46','2017-07-05',1,NULL,7,1),(61,'hkjhkhj','jhghg','252','m@mss.ru','2018-02-05',1,NULL,7,1),(62,'leman','leman','055','s@mail.ru','2016-05-05',1,NULL,6,1),(63,'salam','salam','070','t@mail.ru','2017-07-05',1,NULL,6,1),(64,'bir','dir','055','a@mail.ru','2016-12-05',1,NULL,6,1),(65,'esra','turkey','012','esr@mail.com','2016-12-05',1,NULL,7,1),(66,'talib','talib','020','k@mail.ru','2017-09-05',1,NULL,7,1),(67,'uc','baki','021','a@gmail.com','2017-07-05',1,NULL,7,1),(68,'huquq','huquq','051','a@gmail.com','2016-05-05',1,NULL,10,1),(69,'eldorado','ispaniya','055','as@gmail.com','2018-03-05',1,NULL,7,1),(70,'esli','sdfsdfsd','055','s@gm.ru','2017-08-05',1,NULL,6,1),(71,'sadjkasd','asasd','564564','12dskml@sd.com','2017-01-05',1,NULL,11,1),(72,'asd','asd','45456','asd@sdfsdf.tr','2016-04-05',1,NULL,7,1),(73,'sahib','baki','055','ad@gmail.com','2016-12-05',1,NULL,7,1),(74,'Aqsin','baki','021','l@gmail.com','2016-06-05',1,NULL,6,1),(75,'adim','adim','mob','sd@gmail.com','2016-05-05',1,NULL,6,1),(76,'Name','Naxcivan','055','d@gmail.com','2006-04-05',1,NULL,6,1),(77,'zeynal','quba','055','ws@gmail.com','2016-05-05',1,NULL,6,1),(78,'sdgdfgdfg','dfgdfgdfg','566465','w@ffgf.ru','2017-01-05',1,NULL,6,1),(79,'Aydin','Baki','055','s@gmail.com','2008-09-05',1,NULL,9,1),(80,'24','Zumrud','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(81,'80','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(82,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(83,'82','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(84,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(85,'84','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(86,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(87,'86','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(88,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(89,'88','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(90,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(91,'90','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(92,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(93,'92','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(94,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(95,'94','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(96,'Taleh','Bakixanov','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(97,'96','25','055230','alqayevT@gmail.com','2010-02-24',1,NULL,NULL,1),(98,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(99,'98','25','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(100,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(101,'100','25','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(102,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(103,'102','25','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(104,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(105,'104','25','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(106,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(107,'106','25','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(108,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(109,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(110,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(111,'SAsasd','Bajki','6546','6sdcd.ru','2002-02-14',1,NULL,NULL,1),(112,'Alim','Ganca','email',NULL,'2003-02-24',1,NULL,NULL,1),(113,'Alim','Ganca','email',NULL,'2003-02-24',1,NULL,NULL,1),(114,'Gulcan','Saatli','051','aw@gmail.com','2003-02-24',2,NULL,NULL,1),(115,'Gulcan','nizami','055','aolkil.com','2003-02-24',2,NULL,NULL,1),(116,'Gulcan','nizami','055','aolkil.com','2003-02-24',2,NULL,NULL,1),(117,'Gulcan','nizami','055','aolkil.com','2003-02-24',2,NULL,NULL,1),(118,'Gulcan','nizami','055','aolkil.com','2003-02-24',2,NULL,NULL,1),(119,'Gulcan','nizami','055','aolkil.com','2003-02-24',2,NULL,NULL,0),(120,'Gulcan','nizami','055','aolkil.com','2003-02-24',2,NULL,NULL,0),(121,'Islam','barda','0542562','A.gmaul','2013-02-24',1,NULL,NULL,1),(122,'Asli',NULL,'055','Asi@gmail.com','2017-03-24',2,NULL,NULL,1);
/*!40000 ALTER TABLE `taxi` ENABLE KEYS */;
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
