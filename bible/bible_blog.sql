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
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_general_ci,
  `user` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,'Almost done!','<p>I\'ve been working behind the scenes last few days to update the site a newer look. I\'m not fully done yet, and some more changes will come to make it such that feels finished.</p><p><br></p><p>The most important things are there now, the database can be viewed, timeline and familytrees are created and the worldmap is visible and working.</p><p><br></p><p>I just have a list of details that I want to work on, tiny things that had a lower priority. Also, feel free to send me any feedback, tips or advice! It\'s not perfect, but it\'s also not done yet as well..</p><p><br></p><p>As soon as I\'m done with the website itself, I will continue to work on the database and try to fill in as many blanks as possible and make a clear overview of bible related things.<br></p>','1','2022-07-03T11:55:25.381Z'),(2,'Finally there..','<p>After months of hard work, some breaks in between and a lot of persistence, I think I\'m finally content with the website.</p><p><br></p><p>It\'s still not done though! I still have to fill up the database with information and check if everything truly works as intended. But as far as I can see and have tested the website, it should be good. </p><p><br></p><p>Please let me know if you find anything that does not seem right! Error messages, typo\'s, misinformation etc! Your help is very much appreciated as I work on the database and try to help people get a better understanding of the Bible.</p><p><br></p><p>Thank you for sticking with me<br></p><p><br></p>','1','2022-08-25T13:01:12.934Z');
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

-- Dump completed on 2023-06-28 11:54:53
