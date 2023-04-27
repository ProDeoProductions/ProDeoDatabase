CREATE DATABASE  IF NOT EXISTS `bible` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bible`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bible
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Testity Test','Gewoon even een test om de blog weer te zien','1','2020-05-21 12:01:06 pm'),(2,'Lange blog','Veeel tekst hier<br/><br/><br/>TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi  TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi<br/><br/><br/><br/><br/>TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi  TEstestdgesrgdsgdfgdsfgdsfgdsghdfiTEstestdgesrgdsgdfgdsfgdsfgdsghdfi TEstestdgesrgdsgdfgdsfgdsfgdsghdfi','1','2020-05-22 09:23:32 am'),(3,'Tester','WERGIERGEREeergergergergergergergergergerghduigheriohg ergerg e ger gergergerg ergereergeeergerwebfbwjbeveiiwewergregregetrh ergergrergreg','1','2020-08-06 14:35:30 pm'),(8,'Hello!','Dit is de text van deze blog!!!!','1','1619367553'),(10,'Hello!','Dit is de text van deze blog!!!!','1','1619368020'),(11,'Hello!','Dit is de text2 van deze blog!!!!','1','1619368252'),(12,'Hello!','Dit is de text2 van deze blog!!!!','1','2021-04-25 16:45:53 pm'),(13,'Test',' test <br><br>Test 2','1','2022-04-03 12:41:16'),(14,'Test2','&lt<DEL>b&gt<DEL> test &lt<DEL>/b&gt<DEL><br><br>Test 2','1','2022-04-03 12:49:18'),(16,'Testing Quill','<p>Testing <i><b>Summernote </b></i>this time</p><p><span style=\"font-size: 10px<DEL>\">Making a nice long text and such</span></p><h2>Smaller and bigger text<span style=\"font-size: 10px<DEL>\"><br></span></h2><h5>I don\'t like the <u><i>big </i></u>distance <b>between </b>paragraphs</h5>Removing the fontsize thingy','1','2022-04-10T18:38:49.436Z'),(17,'Testing Quill','<p>add_blog_text</p><p>Line height soo olonnnn<br></p>','1','2022-04-10T18:41:35.218Z'),(18,'Testing summernote','<p>Line</p><h1><b>Line22</b></h1><p>Line</p><p>Line</p><p>Line<br></p>','1','2022-04-10T18:43:34.643Z'),(19,'Testing summernote','<p>Test 2</p><p><br></p><p>testtest<br></p>','1','2022-04-11T12:48:02.867Z'),(20,'TEstt45','<p>Test</p><p>TEst<br></p>','1','2022-04-11T12:56:29.614Z'),(21,'Test',' test <br><br>Test 2','1','2022-04-11T12:58:10.314Z'),(23,'TEst2','<p>Date test<br></p>','1','2022-05-24T18:13:53.952Z'),(24,'efwef','<p>wefwef<br></p>','1','2022-08-24T17:54:43.715Z'),(25,'ee','<p><br></p>','1','2022-08-24T17:54:54.641Z');
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

-- Dump completed on 2023-04-27 15:46:46
