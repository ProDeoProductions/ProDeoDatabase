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
-- Table structure for table `location_to_activity`
--

DROP TABLE IF EXISTS `location_to_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location_to_activity` (
  `location_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `location_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_to_activity`
--

LOCK TABLES `location_to_activity` WRITE;
/*!40000 ALTER TABLE `location_to_activity` DISABLE KEYS */;
INSERT INTO `location_to_activity` VALUES (NULL,1,'Universem'),(NULL,2,'Aarde'),(NULL,3,'Aarde'),(NULL,4,'De oervloed'),(NULL,14,' '),(NULL,15,'Gewelf'),(NULL,16,'Het gewelf'),(NULL,17,'Hemel'),(NULL,17,'Gewelf'),(NULL,21,'Hemel'),(NULL,23,'Aarde'),(NULL,24,'Zee'),(NULL,27,'Aarde'),(NULL,34,'Zon'),(NULL,34,'Maan'),(NULL,36,'Hemelgewelf'),(NULL,37,'De Aarde'),(NULL,64,'De Aarde'),(NULL,71,' '),(NULL,73,'Hemel'),(NULL,74,'Aarde'),(NULL,79,'Hemel'),(NULL,79,'Aarde'),(NULL,82,'Aarde'),(NULL,86,'Aarde'),(NULL,93,'Het Oosten'),(NULL,93,'Eden'),(NULL,93,'De Tuin van Eden'),(NULL,96,'De Tuin van Eden'),(NULL,97,'Eden'),(NULL,100,'Pison'),(NULL,101,'Chawila'),(NULL,101,'Pison'),(NULL,102,'Chawila'),(NULL,103,'Chawila'),(NULL,104,'Chawila'),(NULL,105,'Gichon'),(NULL,106,'Gichon'),(NULL,106,'Nubië'),(NULL,107,'Tigris'),(NULL,108,'Tigris'),(NULL,108,'Assyrië'),(NULL,109,'Eufraat'),(NULL,110,'Eden'),(NULL,110,'De tuin van Eden'),(NULL,111,'De tuin van Eden'),(NULL,111,'Eden');
/*!40000 ALTER TABLE `location_to_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-08 18:35:23
