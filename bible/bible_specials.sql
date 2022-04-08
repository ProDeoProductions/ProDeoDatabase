CREATE DATABASE  IF NOT EXISTS `bible` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bible`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: bible
-- ------------------------------------------------------
-- Server version	8.0.18

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
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `meaning_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `type` int(11) DEFAULT NULL,
  `book_start_id` int(11) DEFAULT NULL,
  `book_start_chap` int(11) DEFAULT NULL,
  `book_start_vers` int(11) DEFAULT NULL,
  `book_end_id` int(11) DEFAULT NULL,
  `book_end_chap` int(11) DEFAULT NULL,
  `book_end_vers` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (0,1,'Boek van de oprechte','','',-1,6,10,13,6,10,13),(1,2,'Baäl-Berit','','',1,7,8,33,7,8,33),(2,3,'Kemos','','',-1,7,11,24,7,11,24),(3,4,'Lied van de boog','','',3,10,1,18,10,1,18),(4,5,'Woud van de Libanon','','',-1,11,7,2,11,7,2),(5,6,'Jachin','Info=Rechterzuil','',7,11,7,21,11,7,21),(6,7,'Boaz','Info=Linkerzuil','',7,11,7,21,11,7,21),(7,8,'Millobolwerk','','',-1,11,9,15,11,9,15),(8,9,'Astarte','','',-1,11,11,5,11,11,5),(9,10,'Milkom','','',-1,11,11,5,11,11,5),(10,11,'Moloch','','',-1,11,11,7,11,11,7),(11,12,'Kronieken vd Koningen v Israël','','',-1,11,14,19,11,14,19),(12,13,'Kronieken vd Koningen v Juda','','',-1,11,14,29,11,14,29),(13,14,'Baäl-Zebub','','',-1,12,1,2,12,1,2),(14,15,'Sukkot-Benot','','',-1,12,17,30,12,17,30),(15,16,'Nergal','','',-1,12,17,30,12,17,30),(16,17,'Asima','','',-1,12,17,30,12,17,30),(17,18,'Nibchaz','','',-1,12,17,31,12,17,31),(18,19,'Tartak','','',-1,12,17,31,12,17,31),(19,20,'Adrammelech','','',-1,12,17,31,12,17,31),(20,21,'Anammelech','','',-1,12,17,31,12,17,31),(21,22,'Koperslang','','',-1,12,18,4,12,18,4),(22,23,'Nisroch','','',-1,12,19,37,12,19,37),(23,24,'Dagon','','',-1,13,10,10,13,10,10),(24,25,'Geschriften van Natan, Achia & Jedo','','',-1,14,9,29,14,9,29),(25,26,'Geschriften van Chozai','','',-1,14,33,19,14,33,19),(26,27,'Boek van de klaagliederen','','',-1,14,25,25,14,25,25),(27,28,'Leviatan','','',-1,19,74,14,19,74,14),(28,29,'Lilit','','',-1,23,34,14,23,34,14),(29,30,'Amon','','',-1,24,46,25,24,46,25),(30,31,'Bel','','',-1,24,51,44,24,51,44),(31,32,'Tammuz','','',-1,26,8,14,26,8,14),(32,33,'Dal der passanten','','',-1,26,39,11,26,39,11),(33,34,'Dal van het leger van Gog','','',-1,26,39,11,26,39,11),(34,35,'Beltesassar','','',-1,27,4,5,27,4,5),(35,36,'Heilig sieraad','','',-1,27,11,45,27,11,45),(36,37,'Plejaden','','',-1,30,5,8,30,5,8),(37,38,'Orion','','',-1,30,5,8,30,5,8),(38,39,'Sakkut','','',-1,30,5,26,30,5,26),(39,40,'Kewan','','',-1,30,5,26,30,5,26),(40,41,'Hadad-Rimmon','','',-1,38,12,11,38,12,11),(41,42,'Levitian','','',-1,18,3,8,18,3,8),(42,43,'Immanuël','','God met ons',-1,40,1,23,40,1,23),(43,44,'Messias','','',-1,40,2,4,40,2,4),(44,45,'Narozeeër','','',-1,40,2,23,40,2,23),(45,46,'Farizeeër','','',-1,40,3,7,40,3,7),(46,47,'Sadduceeër','','',-1,40,3,7,40,3,7),(47,48,'Koninkrijk van de Hemel','','',-1,40,10,7,40,10,7),(48,49,'Mensenzoon','','',-1,40,10,23,40,10,23),(49,50,'Beëlzebul','','',-1,40,10,25,40,10,25),(50,51,'Gehenna','','',-1,40,10,28,40,10,28),(51,52,'Sanhedrin','','',-1,40,26,59,40,26,59),(52,53,'Refan','','',-1,44,7,43,44,7,43),(53,54,'Zeus','','',-1,44,14,12,44,14,12),(54,55,'Hermes','','',-1,44,14,12,44,14,12),(55,56,'Artemis','','',-1,44,19,24,44,19,24),(56,57,'Eurakylon','','',-1,44,27,14,44,27,14),(57,58,'Diké','','',-1,44,28,4,44,28,4),(58,59,'Dioscuren','','',-1,44,28,11,44,28,11),(59,60,'Alsem','','',-1,66,8,11,66,8,11),(60,61,'Abaddon','','',-1,66,9,11,66,9,11),(61,62,'Apollyon','','',-1,66,9,11,66,9,11);
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

-- Dump completed on 2022-04-08 18:35:20
