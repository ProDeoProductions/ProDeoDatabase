CREATE DATABASE  IF NOT EXISTS `bible` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bible`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bible
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `location_to_event`
--

DROP TABLE IF EXISTS `location_to_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `location_to_event` (
  `location_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `location_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_to_event`
--

LOCK TABLES `location_to_event` WRITE;
/*!40000 ALTER TABLE `location_to_event` DISABLE KEYS */;
INSERT INTO `location_to_event` VALUES (-1,1,'Universem'),(-1,2,'Aarde'),(-1,3,'Aarde'),(-1,10,' '),(-1,12,'Gewelf'),(-1,13,'Gewelf'),(-1,13,'Hemel'),(-1,17,'Aarde'),(-1,20,'Aarde'),(-1,26,'Zon'),(-1,26,'Maan'),(-1,27,'Hemelgewelf'),(-1,47,' '),(-1,49,'Hemel'),(-1,52,'Hemel'),(-1,52,'Aarde'),(-1,55,'Aarde'),(-1,56,'Aarde'),(-1,60,'Het Oosten'),(-1,60,'Eden'),(-1,60,'De Tuin van Eden'),(-1,62,'De Tuin van Eden'),(-1,63,'Eden'),(-1,65,'Pison'),(-1,66,'Chawila'),(-1,67,'Gichon'),(-1,68,'Tigris'),(-1,69,'Eufraat'),(-1,70,'Eden'),(-1,70,'De tuin van Eden'),(-1,30011,'Het gewelf'),(-1,30013,'Hemel'),(-1,30016,'De oervloed'),(-1,30020,'Zee'),(-1,30050,'Pison'),(-1,30050,'Chawila'),(-1,30051,'Chawila'),(-1,30052,'Chawila'),(-1,30053,'Gichon'),(-1,30053,'NubiÃ«'),(-1,30054,'Tigris'),(-1,30054,'AssyriÃ«'),(-1,30055,'De tuin van Eden'),(-1,30055,'Eden'),(-1,30082,'De Aarde'),(-1,30087,'De Aarde'),(-1,30099,'Aarde');
/*!40000 ALTER TABLE `location_to_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 12:39:27
