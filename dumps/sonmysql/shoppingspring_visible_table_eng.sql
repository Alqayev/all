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
-- Table structure for table `visible_table_eng`
--

DROP TABLE IF EXISTS `visible_table_eng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visible_table_eng` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `JspName` varchar(45) NOT NULL,
  `Tag_Group` varchar(45) NOT NULL,
  `Tag_Id` varchar(45) NOT NULL,
  `Value` mediumtext NOT NULL,
  `Active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visible_table_eng`
--

LOCK TABLES `visible_table_eng` WRITE;
/*!40000 ALTER TABLE `visible_table_eng` DISABLE KEYS */;
INSERT INTO `visible_table_eng` VALUES (1,'login','href','loginFormFace','Login Form',1),(2,'login','txtPlaceholder','useremail','E-mail',1),(3,'login','pswPlaceholder','password','Password',1),(4,'login','logSubmit','login','Log in',1),(5,'login','RegHref','regHr','Registr',1),(6,'login','FogPassHref','fogPassHr','Forgot your password',1),(7,'registred','href',' rgLogInHr','Log In',1),(8,'registred','href','rgSignUpHr','Sign Up',1),(9,'registred','header','formHeaderH','It’s free and always will be.',1),(10,'registred','txtPlaceholder','fullNametxt','Full Name *',1),(11,'registred','txtPlaceholder','bornDatetxt','Born Date *',1),(12,'registred','txtPlaceholder','userEmailTxt','E-mail *',1),(13,'registred','txtPlaceholder','userPasswordTxt','Set A Password *',1),(14,'registred','txtPlaceholder','userPasswordAgainTxt','Password Again *',1),(15,'registred','selectBox','userGender','Choose *',1),(16,'registred','selectBox','userGenderV1','Male',1),(17,'registred','selectBox','userGenderV2','Female',1),(18,'registred','regSubmit','regButtonSb','Sign Up',1);
/*!40000 ALTER TABLE `visible_table_eng` ENABLE KEYS */;
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
