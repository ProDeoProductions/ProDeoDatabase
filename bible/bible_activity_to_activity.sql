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
-- Table structure for table `activity_to_activity`
--

DROP TABLE IF EXISTS `activity_to_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activity_to_activity` (
  `activity1_id` int(11) DEFAULT NULL,
  `activity2_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_to_activity`
--

LOCK TABLES `activity_to_activity` WRITE;
/*!40000 ALTER TABLE `activity_to_activity` DISABLE KEYS */;
INSERT INTO `activity_to_activity` VALUES (1,2),(2,3),(2,4),(2,5),(3,6),(4,6),(5,6),(6,7),(7,8),(8,9),(9,10),(9,11),(10,12),(11,12),(12,13),(13,86),(14,15),(15,16),(16,17),(17,18),(18,19),(19,20),(20,21),(21,22),(22,23),(22,24),(23,25),(24,25),(110,26),(26,27),(27,28),(27,29),(28,30),(29,30),(30,31),(31,32),(32,33),(33,34),(33,35),(34,36),(35,36),(36,37),(36,38),(36,39),(37,40),(38,40),(39,40),(40,41),(41,42),(42,43),(43,44),(43,45),(43,46),(44,47),(45,47),(46,47),(47,48),(47,49),(48,50),(49,50),(50,51),(51,52),(52,53),(52,54),(52,55),(53,56),(54,56),(55,56),(56,117),(57,58),(58,59),(59,60),(60,61),(137,61),(61,62),(62,63),(62,64),(63,65),(64,65),(65,66),(65,67),(65,68),(66,69),(67,69),(68,69),(69,70),(70,71),(71,72),(72,73),(72,74),(73,75),(74,75),(75,76),(76,77),(76,78),(77,79),(78,79),(79,80),(80,81),(84,16),(84,83),(84,82),(25,82),(25,83),(86,87),(87,14),(87,84),(83,85),(82,85),(85,88),(88,89),(88,90),(89,91),(90,91),(91,92),(92,93),(93,110),(26,29),(29,94),(29,95),(94,96),(95,96),(96,30),(96,114),(93,97),(97,98),(98,99),(99,100),(100,101),(101,102),(102,103),(103,104),(99,105),(105,106),(99,107),(107,108),(99,109),(110,111),(110,112),(111,113),(112,113),(113,114),(114,115),(115,116),(116,53),(116,46),(116,46),(116,53),(53,117),(46,117),(117,118),(118,119),(119,120),(119,121),(119,122),(120,123),(121,123),(122,123),(123,124),(124,125),(125,126),(126,127),(127,128),(127,57),(128,129),(129,130),(130,131),(131,132),(133,134),(134,135),(132,136),(136,137),(132,133);
/*!40000 ALTER TABLE `activity_to_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-27 14:24:45
