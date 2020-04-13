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
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `specials` (
  `order_id` int(11) DEFAULT NULL,
  `special_id` int(11) NOT NULL,
  `name` text,
  `descr` text,
  `meaning_name` text,
  `type` int(11) DEFAULT NULL,
  `book_start_id` int(11) DEFAULT NULL,
  `book_start_chap` int(11) DEFAULT NULL,
  `book_start_vers` int(11) DEFAULT NULL,
  `book_end_id` int(11) DEFAULT NULL,
  `book_end_chap` int(11) DEFAULT NULL,
  `book_end_vers` int(11) DEFAULT NULL,
  PRIMARY KEY (`special_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (0,0,'Boek van de oprechte','','',-1,5,10,13,5,10,13),(1,1,'BaÃ¤l-Berit','','',-1,6,8,33,6,8,33),(2,2,'Kemos','','',-1,6,11,24,6,11,24),(3,3,'Lied van de boog','','',-1,9,1,18,9,1,18),(4,4,'Woud van de Libanon','','',-1,10,7,2,10,7,2),(5,5,'Jachin','Info=Rechterzuil','',-1,10,7,21,10,7,21),(6,6,'Boaz','Info=Linkerzuil','',-1,10,7,21,10,7,21),(7,7,'Millobolwerk','','',-1,10,9,15,10,9,15),(8,8,'Astarte','','',-1,10,11,5,10,11,5),(9,9,'Milkom','','',-1,10,11,5,10,11,5),(10,10,'Moloch','','',-1,10,11,7,10,11,7),(11,11,'Kronieken vd Koningen v IsraÃ«l','','',-1,10,14,19,10,14,19),(12,12,'Kronieken vd Koningen v Juda','','',-1,10,14,29,10,14,29),(13,13,'BaÃ¤l-Zebub','','',-1,11,1,2,11,1,2),(14,14,'Sukkot-Benot','','',-1,11,17,30,11,17,30),(15,15,'Nergal','','',-1,11,17,30,11,17,30),(16,16,'Asima','','',-1,11,17,30,11,17,30),(17,17,'Nibchaz','','',-1,11,17,31,11,17,31),(18,18,'Tartak','','',-1,11,17,31,11,17,31),(19,19,'Adrammelech','','',-1,11,17,31,11,17,31),(20,20,'Anammelech','','',-1,11,17,31,11,17,31),(21,21,'Koperslang','','',-1,11,18,4,11,18,4),(22,22,'Nisroch','','',-1,11,19,37,11,19,37),(23,23,'Dagon','','',-1,12,10,10,12,10,10),(24,24,'Geschriften van Natan, Achia & Jedo','','',-1,13,9,29,13,9,29),(25,25,'Geschriften van Chozai','','',-1,13,33,19,13,33,19),(26,26,'Boek van de klaagliederen','','',-1,13,25,25,13,25,25),(27,27,'Leviatan','','',-1,18,74,14,18,74,14),(28,28,'Lilit','','',-1,22,34,14,22,34,14),(29,29,'Amon','','',-1,23,46,25,23,46,25),(30,30,'Bel','','',-1,23,51,44,23,51,44),(31,31,'Tammuz','','',-1,25,8,14,25,8,14),(32,32,'Dal der passanten','','',-1,25,39,11,25,39,11),(33,33,'Dal van het leger van Gog','','',-1,25,39,11,25,39,11),(34,34,'Beltesassar','','',-1,26,4,5,26,4,5),(35,35,'Heilig sieraad','','',-1,26,11,45,26,11,45),(36,36,'Plejaden','','',-1,29,5,8,29,5,8),(37,37,'Orion','','',-1,29,5,8,29,5,8),(38,38,'Sakkut','','',-1,29,5,26,29,5,26),(39,39,'Kewan','','',-1,29,5,26,29,5,26),(40,40,'Hadad-Rimmon','','',-1,37,12,11,37,12,11),(41,41,'Levitian','','',-1,17,3,8,17,3,8),(42,42,'ImmanuÃ«l','','God met ons',-1,39,1,23,39,1,23),(43,43,'Messias','','',-1,39,2,4,39,2,4),(44,44,'NarozeeÃ«r','','',-1,39,2,23,39,2,23),(45,45,'FarizeeÃ«r','','',-1,39,3,7,39,3,7),(46,46,'SadduceeÃ«r','','',-1,39,3,7,39,3,7),(47,47,'Koninkrijk van de Hemel','','',-1,39,10,7,39,10,7),(48,48,'Mensenzoon','','',-1,39,10,23,39,10,23),(49,49,'BeÃ«lzebul','','',-1,39,10,25,39,10,25),(50,50,'Gehenna','','',-1,39,10,28,39,10,28),(51,51,'Sanhedrin','','',-1,39,26,59,39,26,59),(52,52,'Refan','','',-1,43,7,43,43,7,43),(53,53,'Zeus','','',-1,43,14,12,43,14,12),(54,54,'Hermes','','',-1,43,14,12,43,14,12),(55,55,'Artemis','','',-1,43,19,24,43,19,24),(56,56,'Eurakylon','','',-1,43,27,14,43,27,14),(57,57,'DikÃ©','','',-1,43,28,4,43,28,4),(58,58,'Dioscuren','','',-1,43,28,11,43,28,11),(59,59,'Alsem','','',-1,65,8,11,65,8,11),(60,60,'Abaddon','','',-1,65,9,11,65,9,11),(61,61,'Apollyon','','',-1,65,9,11,65,9,11);
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 12:39:30
