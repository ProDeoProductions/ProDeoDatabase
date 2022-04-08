CREATE DATABASE  IF NOT EXISTS `bible` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bible`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bible
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Testity Test','Gewoon even een test om de blog weer te zien','Zowiezo101','2020-05-21 12:01:06 pm'),(2,'Lange blog','Veeel tekst hier<br/><br/><br/>TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi  TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi<br/><br/><br/><br/><br/>TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi  TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi','Zowiezo101','2020-05-22 09:23:32 am'),(3,'Tester','WERGIERGEREeergergergergergergergergergerghduigheriohg ergerg e ger gergergerg ergereergeeergerwebfbwjbeveiiwewergregregetrh ergergrergreg','undefined','2020-08-06 14:35:30 pm'),(5,'uihfiuerhgurehg','eugheuighuerihguierhguierhguierhguirehgergegergerwergergerge er erergewge ergergergerger ergerggrgergeer<br/><br/>fwfwefwefwefwefwfewefwef<br/>fwewefwef','undefined','2020-08-16 20:30:42 pm'),(6,NULL,NULL,NULL,NULL),(7,NULL,NULL,NULL,NULL),(8,'Hello!','Dit is de text van deze blog!!!!','Zowiezo101','1619367553'),(9,'?','?','?','?'),(10,'Hello!','Dit is de text van deze blog!!!!','Zowiezo101','1619368020'),(11,'Hello!','Dit is de text2 van deze blog!!!!','Zowiezo101','1619368252'),(12,'Hello!','Dit is de text2 van deze blog!!!!','Zowiezo101','2021-04-25 16:45:53 pm'),(13,'Test',' test \n\nTest 2','Zowiezo101','2022-04-03 12:41:16'),(14,'Test2','&lt;b&gt; test &lt;/b&gt;\n\nTest 2','Zowiezo101','2022-04-03 12:49:18');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08 18:35:19
