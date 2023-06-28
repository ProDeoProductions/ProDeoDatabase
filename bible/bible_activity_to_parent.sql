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
-- Table structure for table `activity_to_parent`
--

DROP TABLE IF EXISTS `activity_to_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_to_parent` (
  `activity_id` int NOT NULL,
  `parent_id` int NOT NULL,
  PRIMARY KEY (`activity_id`,`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_to_parent`
--

LOCK TABLES `activity_to_parent` WRITE;
/*!40000 ALTER TABLE `activity_to_parent` DISABLE KEYS */;
INSERT INTO `activity_to_parent` VALUES (2,1),(3,2),(4,2),(5,2),(6,3),(6,4),(6,5),(7,6),(8,7),(9,8),(10,9),(11,9),(12,10),(12,11),(13,12),(14,13),(15,93),(16,15),(17,16),(18,17),(19,18),(20,91),(21,20),(22,21),(23,22),(24,23),(25,24),(26,24),(27,25),(27,26),(28,27),(29,28),(30,29),(31,29),(32,30),(32,31),(33,32),(34,33),(35,34),(36,35),(37,36),(38,36),(39,37),(39,38),(40,39),(41,39),(42,39),(43,40),(43,41),(43,42),(44,43),(45,34),(45,122),(46,45),(47,46),(48,47),(49,47),(50,47),(51,48),(51,49),(51,50),(52,51),(53,51),(54,52),(54,53),(55,54),(56,55),(57,56),(58,57),(59,57),(60,57),(61,58),(61,59),(61,60),(62,138),(63,62),(64,63),(65,64),(66,65),(67,66),(68,67),(69,67),(70,68),(70,69),(71,70),(72,70),(73,70),(74,71),(74,72),(74,73),(75,74),(76,75),(77,76),(78,77),(79,78),(80,78),(81,79),(81,80),(82,81),(83,82),(84,82),(85,83),(85,84),(86,85),(87,86),(88,19),(89,19),(90,88),(90,89),(91,90),(92,14),(93,92),(94,91),(95,94),(96,94),(97,95),(97,96),(98,97),(99,98),(100,99),(101,99),(102,100),(102,101),(103,99),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,105),(112,111),(113,105),(114,113),(115,105),(116,102),(117,116),(118,116),(119,117),(119,118),(120,119),(121,44),(121,120),(122,121),(123,61),(124,123),(125,124),(126,125),(127,125),(128,125),(129,126),(129,127),(129,128),(130,129),(131,130),(132,131),(133,132),(134,133),(135,134),(136,135),(137,136),(138,137),(139,138),(140,139),(141,140),(142,138),(143,142);
/*!40000 ALTER TABLE `activity_to_parent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-28 11:54:58
