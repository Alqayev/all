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
-- Table structure for table `visible_table_az`
--

DROP TABLE IF EXISTS `visible_table_az`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visible_table_az` (
  `Id` bigint(100) NOT NULL AUTO_INCREMENT,
  `JspName` varchar(45) NOT NULL,
  `Tag_Group` varchar(45) NOT NULL,
  `Tag_Id` varchar(45) NOT NULL,
  `Value` mediumtext NOT NULL,
  `Active` varchar(45) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visible_table_az`
--

LOCK TABLES `visible_table_az` WRITE;
/*!40000 ALTER TABLE `visible_table_az` DISABLE KEYS */;
INSERT INTO `visible_table_az` VALUES (1,'login','Head','loginFormFace','Giriş Formu','1'),(2,'login','txtPlaceholder','useremail','E-mail','1'),(3,'login','pswPlaceholder','password','Şifrə','1'),(4,'login','logSubmit','login','Daxil olun','1'),(5,'login','RegHref','regHr','Hesab açın','1'),(6,'login','FogPassHref','fogPassHr','Şifrəni unutmusan?','1'),(7,'registred','href','rgLogInHr','Daxil olun','1'),(8,'registred','href','rgSignUpHr','Qeydiyyatdan keçmək','1'),(9,'registred','header','formHeaderH','Qeydiyyat pulsuzdur və hər zaman belə qalacaq.','1'),(10,'registred','txtPlaceholder','fullNametxt','Tam ad','1'),(11,'registred','txtPlaceholder','bornDatetxt','Doğum tarixi','1'),(12,'registred','txtPlaceholder','userEmailTxt','E-mail','1'),(13,'registred','txtPlaceholder','userPasswordTxt','Şifrə','1'),(14,'registred','txtPlaceholder','userPasswordAgainTxt','Şifrəni təkrarlayın','1'),(15,'registred','selectBox','userGender','Seçin','1'),(16,'registred','selectBox','userGenderV1','Kişi','1'),(17,'registred','selectBox','userGenderV2','Qadın','1'),(18,'registred','regSubmit','regButtonSb','Qeydiyyatdan keç','1');
/*!40000 ALTER TABLE `visible_table_az` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-26 12:25:34
