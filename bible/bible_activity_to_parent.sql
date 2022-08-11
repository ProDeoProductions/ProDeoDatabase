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
  `activity_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_to_parent`
--

LOCK TABLES `activity_to_parent` WRITE;
/*!40000 ALTER TABLE `activity_to_parent` DISABLE KEYS */;
INSERT INTO `activity_to_parent` VALUES (2,1),(3,2),(4,2),(5,2),(6,3),(6,4),(6,5),(7,6),(8,7),(9,8),(10,9),(11,9),(12,10),(12,11),(13,12),(86,13),(15,14),(16,15),(17,16),(18,17),(19,18),(20,19),(21,20),(22,21),(23,22),(24,22),(25,23),(25,24),(26,110),(27,26),(28,27),(29,27),(30,28),(30,29),(31,30),(32,31),(33,32),(34,33),(35,33),(36,34),(36,35),(37,36),(38,36),(39,36),(40,37),(40,38),(40,39),(41,40),(42,41),(43,42),(44,43),(45,43),(46,43),(47,44),(47,45),(47,46),(48,47),(49,47),(50,48),(50,49),(51,50),(52,51),(53,52),(54,52),(55,52),(56,53),(56,54),(56,55),(117,56),(58,57),(59,58),(60,59),(61,60),(61,137),(62,61),(63,62),(64,62),(65,63),(65,64),(66,65),(67,65),(68,65),(69,66),(69,67),(69,68),(70,69),(71,70),(72,71),(73,72),(74,72),(75,73),(75,74),(76,75),(77,76),(78,76),(79,77),(79,78),(80,79),(81,80),(16,84),(83,84),(82,84),(82,25),(83,25),(87,86),(14,87),(84,87),(85,83),(85,82),(88,85),(89,88),(90,88),(91,89),(91,90),(92,91),(93,92),(110,93),(29,26),(94,29),(95,29),(96,94),(96,95),(30,96),(114,96),(97,93),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,99),(106,105),(107,99),(108,107),(109,99),(111,110),(112,110),(113,111),(113,112),(114,113),(115,114),(116,115),(53,116),(46,116),(46,116),(53,116),(117,53),(117,46),(118,117),(119,118),(120,119),(121,119),(122,119),(123,120),(123,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(57,127),(129,128),(130,129),(131,130),(132,131),(134,133),(135,134),(136,132),(137,136),(133,132);
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

-- Dump completed on 2022-08-11 15:03:08
