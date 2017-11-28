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
-- Table structure for table `visible_table_rus`
--

DROP TABLE IF EXISTS `visible_table_rus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visible_table_rus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `JspName` varchar(45) NOT NULL,
  `Tag_Group` varchar(45) NOT NULL,
  `Tag_Id` varchar(45) NOT NULL,
  `Value` mediumtext NOT NULL,
  `Active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visible_table_rus`
--

LOCK TABLES `visible_table_rus` WRITE;
/*!40000 ALTER TABLE `visible_table_rus` DISABLE KEYS */;
INSERT INTO `visible_table_rus` VALUES (1,'login','href','loginFormFace','Войти форма',1),(2,'login','txtPlaceholder','useremail','Эл. адрес',1),(3,'login','pswPlaceholder','password','пароль',1),(4,'login','logSubmit','login','Вход',1),(5,'login','RegHref','regHr','Регистрация',1),(6,'login','FogPassHref','fogPassHr','Забыли аккаунт ?',1),(7,'registred','href','rgLogInHr','Вход',1),(8,'registred','href','rgSignUpHr','Регистрация',1),(9,'registred','header','formHeaderH','Это бесплатно и всегда будет бесплатнo.',1),(10,'registred','txtPlaceholder','fullNametxt','Полное имя *',1),(11,'registred','txtPlaceholder','bornDatetxt','Дата рождения *',1),(12,'registred','txtPlaceholder','userEmailTxt','Эл. адрес *',1),(13,'registred','txtPlaceholder','userPasswordTxt','Новый пароль *',1),(14,'registred','txtPlaceholder','userPasswordAgainTxt','Повторить пароль *',1),(15,'registred','selectBox','userGender','выбрать *',1),(16,'registred','selectBox','userGenderV1','Мужчина',1),(17,'registred','selectBox','userGenderV2','Женщина',1),(18,'registred','regButtonSb','regButtonSb','Регистрация',1);
/*!40000 ALTER TABLE `visible_table_rus` ENABLE KEYS */;
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
