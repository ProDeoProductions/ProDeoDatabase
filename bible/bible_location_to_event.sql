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
INSERT INTO `location_to_event` VALUES (-1,1,'Hemel'),(-1,1,'Aarde'),(-1,2,'Aarde'),(-1,10,'Het gewelf'),(-1,11,'Het gewelf'),(-1,11,'Hemel'),(-1,15,'Aarde'),(-1,15,'Zee'),(-1,18,'Aarde'),(-1,25,'Hemelgewelf'),(-1,47,'Hemel'),(-1,47,'Aarde'),(-1,50,'Hemel'),(-1,50,'Aarde'),(-1,52,'Hemel'),(-1,52,'Aarde'),(-1,53,'Aarde'),(-1,54,'Aarde'),(-1,58,'Het Oosten'),(-1,58,'Eden'),(-1,58,'Een tuin'),(-1,59,'Aarde'),(-1,60,'De Tuin'),(-1,61,'Eden'),(-1,63,'Pison'),(-1,63,'Chawila'),(-1,65,'Gichon'),(-1,65,'NubiÃ«'),(-1,66,'Tigris'),(-1,66,'AssyriÃ«'),(-1,67,'Eufraat'),(-1,68,'De tuin van Eden'),(-1,68,'Eden'),(-1,88,'De tuin'),(-1,101,'De tuin van Eden'),(-1,101,'Eden'),(-1,101,'Aarde'),(-1,102,'Ten oosten van de tuin van Eden'),(-1,119,'Nod'),(-1,119,'Eden'),(-1,121,'Henoch'),(-1,187,'Aarde'),(-1,190,'Aarde'),(-1,192,'Aarde'),(-1,194,'Aarde'),(-1,199,'Aarde'),(-1,200,'Aarde'),(-1,205,'Aarde'),(-1,209,'Aarde'),(-1,210,'Hemel'),(-1,210,'Oervloed'),(-1,211,'Aarde'),(-1,217,'Aarde'),(-1,218,'Aarde'),(-1,219,'Aarde'),(-1,222,'Aarde'),(-1,224,'Aarde'),(-1,226,'Aarde'),(-1,228,'Aarde'),(-1,229,'Oervloed'),(-1,229,'Hemel'),(-1,230,'Aarde'),(-1,231,'Araratgebergte'),(-1,235,'Aarde'),(-1,237,'Aarde'),(-1,241,'Aarde'),(-1,244,'Aarde'),(-1,245,'Aarde'),(-1,246,'Aarde'),(-1,251,'Aarde'),(-1,253,'Aarde'),(-1,259,'Aarde'),(-1,273,'De kustgebieden'),(-1,280,'Uruk'),(-1,280,'Akkad'),(-1,280,'Kalne'),(-1,280,'Sinear'),(-1,280,'Babel'),(-1,281,'AssyriÃ«'),(-1,281,'Nineve'),(-1,281,'Rechobot-Ir'),(-1,281,'Kalach'),(-1,282,'Resen'),(-1,282,'Nineve'),(-1,282,'Kalach'),(-1,290,'Adma'),(-1,290,'SeboÃ¯m'),(-1,290,'Lesa'),(-1,290,'Sidon'),(-1,290,'Gerar'),(-1,290,'Gaza'),(-1,290,'Sodom'),(-1,290,'Gomorra'),(-1,298,'Aarde'),(-1,305,'Mesa'),(-1,305,'Sefar'),(-1,305,'Het gebergte in het Oosten'),(-1,308,'Aarde'),(-1,309,'Aarde'),(-1,310,'Sinear'),(-1,310,'Een vlakte'),(-1,313,'De stad'),(-1,317,'Aarde'),(-1,317,'De stad'),(-1,318,'Babel'),(-1,318,'Aarde'),(-1,348,'Ur');
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

-- Dump completed on 2019-06-29 12:03:03
