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
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specials` (
  `order_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `meaning_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `type` int DEFAULT NULL,
  `book_start_id` int DEFAULT NULL,
  `book_start_chap` int DEFAULT NULL,
  `book_start_vers` int DEFAULT NULL,
  `book_end_id` int DEFAULT NULL,
  `book_end_chap` int DEFAULT NULL,
  `book_end_vers` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (6,1,'Boek van de oprechte','','',-1,6,10,13,6,10,13),(7,2,'Baäl-Berit','','',1,7,8,33,7,8,33),(8,3,'Kemos','','',-1,7,11,24,7,11,24),(9,4,'Lied van de boog','','',3,10,1,18,10,1,18),(10,5,'Woud van de Libanon','','',-1,11,7,2,11,7,2),(11,6,'Jachin','Info=Rechterzuil','',-1,11,7,21,11,7,21),(12,7,'Boaz','Info=Linkerzuil','',-1,11,7,21,11,7,21),(13,8,'Millobolwerk','','',-1,11,9,15,11,9,15),(14,9,'Astarte','','',-1,11,11,5,11,11,5),(15,10,'Milkom','','',-1,11,11,5,11,11,5),(16,11,'Moloch','','',-1,11,11,7,11,11,7),(17,12,'Kronieken vd Koningen v Israël','','',-1,11,14,19,11,14,19),(18,13,'Kronieken vd Koningen v Juda','','',-1,11,14,29,11,14,29),(19,14,'Baäl-Zebub','','',-1,12,1,2,12,1,2),(20,15,'Sukkot-Benot','','',-1,12,17,30,12,17,30),(21,16,'Nergal','','',-1,12,17,30,12,17,30),(22,17,'Asima','','',-1,12,17,30,12,17,30),(23,18,'Nibchaz','','',-1,12,17,31,12,17,31),(24,19,'Tartak','','',-1,12,17,31,12,17,31),(25,20,'Adrammelech','','',-1,12,17,31,12,17,31),(26,21,'Anammelech','','',-1,12,17,31,12,17,31),(27,22,'Koperslang','','',-1,12,18,4,12,18,4),(28,23,'Nisroch','','',-1,12,19,37,12,19,37),(29,24,'Dagon','','',-1,13,10,10,13,10,10),(30,25,'Geschriften van Natan, Achia & Jedo','','',-1,14,9,29,14,9,29),(31,26,'Geschriften van Chozai','','',-1,14,33,19,14,33,19),(32,27,'Boek van de klaagliederen','','',-1,14,25,25,14,25,25),(33,28,'Leviatan','','',-1,19,74,14,19,74,14),(34,29,'Lilit','','',-1,23,34,14,23,34,14),(35,30,'Amon','','',-1,24,46,25,24,46,25),(36,31,'Bel','','',-1,24,51,44,24,51,44),(37,32,'Tammuz','','',-1,26,8,14,26,8,14),(38,33,'Dal der passanten','','',-1,26,39,11,26,39,11),(39,34,'Dal van het leger van Gog','','',-1,26,39,11,26,39,11),(40,35,'Beltesassar','','',-1,27,4,5,27,4,5),(41,36,'Heilig sieraad','','',-1,27,11,45,27,11,45),(42,37,'Plejaden','','',-1,30,5,8,30,5,8),(43,38,'Orion','','',-1,30,5,8,30,5,8),(44,39,'Sakkut','','',-1,30,5,26,30,5,26),(45,40,'Kewan','','',-1,30,5,26,30,5,26),(46,41,'Hadad-Rimmon','','',-1,38,12,11,38,12,11),(47,42,'Levitian','','',-1,18,3,8,18,3,8),(48,43,'Immanuël','','God met ons',-1,40,1,23,40,1,23),(49,44,'Messias','','',-1,40,2,4,40,2,4),(50,45,'Narozeeër','','',-1,40,2,23,40,2,23),(51,46,'Farizeeër','','',-1,40,3,7,40,3,7),(52,47,'Sadduceeër','','',-1,40,3,7,40,3,7),(53,48,'Koninkrijk van de Hemel','','',-1,40,10,7,40,10,7),(54,49,'Mensenzoon','','',-1,40,10,23,40,10,23),(55,50,'Beëlzebul','','',-1,40,10,25,40,10,25),(56,51,'Gehenna','','',-1,40,10,28,40,10,28),(57,52,'Sanhedrin','','',-1,40,26,59,40,26,59),(58,53,'Refan','','',-1,44,7,43,44,7,43),(59,54,'Zeus','','',-1,44,14,12,44,14,12),(60,55,'Hermes','','',-1,44,14,12,44,14,12),(61,56,'Artemis','','',-1,44,19,24,44,19,24),(62,57,'Eurakylon','','',-1,44,27,14,44,27,14),(63,58,'Diké','','',-1,44,28,4,44,28,4),(64,59,'Dioscuren','','',-1,44,28,11,44,28,11),(65,60,'Alsem','','',-1,66,8,11,66,8,11),(66,61,'Abaddon','','',-1,66,9,11,66,9,11),(67,62,'Apollyon','','',-1,66,9,11,66,9,11),(0,63,'Oervloed','','',-1,1,1,1,1,1,1),(1,64,'Hemellichamen','','',-1,1,1,16,1,1,17),(2,65,'Zeemonsters','','',-1,1,1,21,1,1,21),(3,66,'Tuin van Eden','','',-1,1,2,9,1,2,9),(4,67,'Levensboom','','',-1,1,2,9,1,2,9),(5,68,'Boom van de kennis van goed en kwaad','','',-1,1,2,9,1,2,9);
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

-- Dump completed on 2023-04-15 19:04:14
