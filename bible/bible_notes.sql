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
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `id` int NOT NULL,
  `note` text COLLATE utf8mb4_general_ci NOT NULL,
  `type` int DEFAULT NULL COMMENT 'The type corresponds to the values in the type_note table.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Notes are used to convey extra information about a person, location, event or anything else. It can be theories, facts, ideas or anything else.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (0,'God schiep het universum',0),(1,'Duisternis lag over de oervloed (Ook bekend als oersoep)',0),(2,'Er was licht (Fotonen ontstonden, heelal werd zichtbaar) (De bliksem waardoor de aminozuren kwamen?)',0),(3,'God maakte het gewelf',0),(4,'Tehom, in het nederlands bekend als de oervloed',0),(5,'Een belangrijk punt bij dit boek is dat het veel later is geschreven dan wanneer de gebeurtenissen hebben plaats gevonden (200 v Chr. 400 jaar na de gebeurtenissen!). De beschrijving van Nebukadnessar in dit boek, is waarwaarschijnlijk een mengeling van Nebukadnessar en Nebonidus (Beiden koningen van Babylon geweest).',0),(6,'Er is geen bewijs voor het bestaan van Darius de Mediër. Hoogstwaarschijnlijk verward de schrijver hier Darius met Cyrus II.',0),(7,'De schijver van het boek Matteüs lijkt goed bekend te zijn met de griekse taal. De apostel genaamd Matteüs is een joodse overheidsambtenaar en hiervan wordt niet verwacht dat hij ook goed bekend is met de griekse taal. Daarom is de apostel hoogstwaarschijnlijk niet de schrijver.',0);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 15:57:57
