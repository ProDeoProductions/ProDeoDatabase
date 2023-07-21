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
-- Table structure for table `people_to_activity`
--

DROP TABLE IF EXISTS `people_to_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_to_activity` (
  `people_id` int NOT NULL,
  `activity_id` int NOT NULL,
  PRIMARY KEY (`people_id`,`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='All peoples and activities that have a relationship. This is a many-to-many linking table, meaning that a single person can link to multiple activities and a single activity can link to multiple people.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_to_activity`
--

LOCK TABLES `people_to_activity` WRITE;
/*!40000 ALTER TABLE `people_to_activity` DISABLE KEYS */;
INSERT INTO `people_to_activity` VALUES (1,1),(1,5),(1,6),(1,8),(1,9),(1,10),(1,11),(1,15),(1,16),(1,17),(1,18),(1,22),(1,25),(1,26),(1,27),(1,28),(1,32),(1,36),(1,37),(1,38),(1,39),(1,43),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,71),(1,72),(1,73),(1,74),(1,75),(1,81),(1,82),(1,83),(1,84),(1,94),(1,95),(1,96),(1,97),(1,99),(1,116),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,130),(1,132),(1,133),(1,134),(1,136),(2,63),(2,64),(2,65),(2,66),(2,67),(2,68),(2,69),(2,70),(2,94),(2,95),(2,96),(2,97),(2,98),(2,116),(2,117),(2,118),(2,119),(2,120),(2,122),(2,123),(2,124),(2,125),(2,126),(2,127),(2,128),(2,129),(2,130),(2,131),(2,132),(2,134),(2,136),(2,137),(2,138),(2,142),(2,143),(3,65),(3,66),(3,67),(3,68),(3,69),(3,70),(3,135),(3,136),(3,138),(3,142),(3,143);
/*!40000 ALTER TABLE `people_to_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 15:58:00
