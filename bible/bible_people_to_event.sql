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
-- Table structure for table `people_to_event`
--

DROP TABLE IF EXISTS `people_to_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `people_to_event` (
  `people_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `people_name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people_to_event`
--

LOCK TABLES `people_to_event` WRITE;
/*!40000 ALTER TABLE `people_to_event` DISABLE KEYS */;
INSERT INTO `people_to_event` VALUES (-1,1,'God'),(-1,2,'God'),(-1,5,'God'),(-1,6,'God'),(-1,10,'God'),(-1,12,'God'),(-1,13,'God'),(-1,16,'God'),(-1,17,'God'),(-1,18,'God'),(-1,19,'God'),(-1,21,'God'),(-1,24,'God'),(-1,26,'God'),(-1,27,'God'),(-1,29,'God'),(-1,32,'God'),(-1,33,'God'),(-1,34,'God'),(-1,35,'God'),(-1,38,'God'),(-1,39,'God'),(-1,40,'God'),(-1,41,'God'),(-1,42,'God'),(-1,42,'De mens'),(-1,43,'God'),(-1,43,'Mensen'),(-1,44,'God'),(-1,44,'Mensen'),(-1,45,'God'),(-1,46,'God'),(-1,50,'God'),(-1,51,'God'),(-1,57,'God'),(-1,57,'De mens'),(-1,58,'God'),(-1,58,'De mens'),(-1,59,'De mens'),(-1,60,'God'),(-1,70,'God'),(-1,70,'De mens'),(-1,71,'God'),(-1,71,'De Mens'),(-1,72,'God'),(-1,72,'De mens'),(-1,73,'God'),(-1,75,'De mens'),(-1,76,'God'),(-1,76,'De mens'),(-1,77,'God'),(-1,77,'De mens'),(-1,78,'De mens'),(-1,80,'De mens'),(-1,80,'De Vrouw'),(-1,30007,'God'),(-1,30009,'God'),(-1,30011,'God'),(-1,30017,'God'),(-1,30020,'God'),(-1,30021,'God'),(-1,30023,'God'),(-1,30025,'God'),(-1,30026,'God'),(-1,30027,'God'),(-1,30027,'De mens'),(-1,30028,'God'),(-1,30028,'Mensen'),(-1,30029,'God'),(-1,30029,'Mensen'),(-1,30038,'God'),(-1,30039,'God'),(-1,30044,'Mensen'),(-1,30045,'God'),(-1,30045,'De mens'),(-1,30055,'De mens'),(-1,30056,'God'),(-1,30056,'De mens'),(-1,30057,'God'),(-1,30057,'De mens'),(-1,30058,'God'),(-1,30058,'De mens'),(-1,30059,'De mens'),(-1,30060,'De mens'),(-1,30061,'De m'),(-1,30062,'God'),(-1,30063,'De vrouw'),(-1,30064,'God'),(-1,30064,'De vrouw'),(-1,30064,'De mens'),(-1,30069,'De mens'),(-1,30069,'De vrouw'),(-1,30072,'De mens'),(-1,30072,'De vrouw'),(-1,30085,'God'),(-1,30086,'God'),(-1,30087,'God'),(-1,30087,'Mensen'),(-1,30088,'Mensen'),(-1,30089,'God'),(-1,30090,'God'),(-1,30091,'God'),(-1,30093,'God'),(-1,30093,'De mens'),(-1,30094,'De mens'),(-1,30096,'De mens'),(-1,30097,'De mens'),(-1,30098,'God'),(-1,30098,'De mens');
/*!40000 ALTER TABLE `people_to_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 12:39:31
