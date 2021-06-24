CREATE DATABASE  IF NOT EXISTS `bible` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
-- Table structure for table `people_to_activity`
--

DROP TABLE IF EXISTS `people_to_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `people_to_activity` (
  `people_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `people_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_to_activity`
--

LOCK TABLES `people_to_activity` WRITE;
/*!40000 ALTER TABLE `people_to_activity` DISABLE KEYS */;
INSERT INTO `people_to_activity` VALUES (NULL,1,'God'),(NULL,2,'God'),(NULL,5,'God'),(NULL,6,'God'),(NULL,8,'God'),(NULL,9,'God'),(NULL,11,'God'),(NULL,14,'God'),(NULL,15,'God'),(NULL,16,'God'),(NULL,17,'God'),(NULL,20,'God'),(NULL,23,'God'),(NULL,24,'God'),(NULL,25,'God'),(NULL,26,'God'),(NULL,30,'God'),(NULL,33,'God'),(NULL,34,'God'),(NULL,35,'God'),(NULL,36,'God'),(NULL,40,'God'),(NULL,43,'God'),(NULL,44,'God'),(NULL,45,'God'),(NULL,46,'God'),(NULL,47,'God'),(NULL,48,'God'),(NULL,49,'God'),(NULL,52,'God'),(NULL,53,'God'),(NULL,54,'God'),(NULL,55,'God'),(NULL,56,'God'),(NULL,57,'God'),(NULL,58,'God'),(NULL,58,'De mens'),(NULL,59,'God'),(NULL,59,'De mens'),(NULL,60,'Mensen'),(NULL,60,'God'),(NULL,61,'God'),(NULL,61,'Mensen'),(NULL,62,'God'),(NULL,62,'Mensen'),(NULL,63,'God'),(NULL,63,'Mensen'),(NULL,64,'Mensen'),(NULL,64,'God'),(NULL,65,'Mensen'),(NULL,66,'God'),(NULL,67,'God'),(NULL,68,'God'),(NULL,69,'God'),(NULL,70,'God'),(NULL,75,'God'),(NULL,76,'God'),(NULL,77,'God'),(NULL,78,'God'),(NULL,85,'Mensen'),(NULL,88,'God'),(NULL,88,'De mens'),(NULL,89,'God'),(NULL,89,'De mens'),(NULL,90,'God'),(NULL,90,'De mens'),(NULL,91,'God'),(NULL,91,'De mens'),(NULL,92,'De mens'),(NULL,93,'God'),(NULL,110,'God'),(NULL,110,'De mens'),(NULL,111,'De mens'),(NULL,112,'De mens'),(NULL,113,'God'),(NULL,113,'De Mens'),(NULL,114,'God'),(NULL,114,'De mens'),(NULL,115,'God'),(NULL,116,'De mens'),(NULL,116,'God'),(NULL,117,'God'),(NULL,117,'De mens'),(NULL,118,'God'),(NULL,118,'De mens'),(NULL,119,'De mens'),(NULL,120,'De mens'),(NULL,121,'De mens'),(NULL,122,'De mens'),(NULL,123,'De mens'),(NULL,124,'God'),(NULL,124,'De mens'),(NULL,125,'De m'),(NULL,126,'God'),(NULL,126,'De mens'),(NULL,127,'God'),(NULL,128,'God'),(NULL,128,'De mens'),(NULL,129,'De vrouw'),(NULL,130,'De mens'),(NULL,130,'God'),(NULL,130,'De vrouw'),(NULL,131,'De mens'),(NULL,132,'De vrouw'),(NULL,132,'De mens'),(NULL,136,'De mens'),(NULL,136,'De Vrouw'),(NULL,137,'De mens'),(NULL,137,'De vrouw');
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

-- Dump completed on 2021-06-24 21:28:38
