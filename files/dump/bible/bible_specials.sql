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
  `order_id` int NOT NULL COMMENT 'The order we want the specials to be viewed in. This is used in the textfiles for the DatabaseHelper and on the website',
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `descr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `meaning_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `type` int DEFAULT NULL COMMENT 'The type corresponds to the values in the type_special table.',
  `book_start_id` int DEFAULT NULL COMMENT 'Bible book of the first appearance',
  `book_start_chap` int DEFAULT NULL COMMENT 'Bible chapter of the first appearance',
  `book_start_vers` int DEFAULT NULL COMMENT 'Bible vers of the first appearance',
  `book_end_id` int DEFAULT NULL COMMENT 'Bible book of the last appearance',
  `book_end_chap` int DEFAULT NULL COMMENT 'Bible chapter of the last appearance',
  `book_end_vers` int DEFAULT NULL COMMENT 'Bible vers of the last appearance',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Specials, these are objects and anything with a name that doesn''t really belong in any other table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
INSERT INTO `specials` VALUES (1,1,'Oervloed','','',-1,1,1,1,1,1,1),(2,2,'Hemellichamen','','',-1,1,1,16,1,1,17),(3,3,'Zeemonsters','','',-1,1,1,21,1,1,21),(4,4,'Tuin van Eden','','',-1,1,2,9,1,2,9),(5,5,'Levensboom','','',-1,1,2,9,1,2,9),(6,6,'Boom van de kennis van goed en kwaad','','',-1,1,2,9,1,2,9),(7,7,'Boek van de oprechte','','',-1,6,10,13,6,10,13),(8,8,'Baäl-Berit','','',1,7,8,33,7,8,33),(9,9,'Kemos','','',-1,7,11,24,7,11,24),(10,10,'Lied van de boog','','',3,10,1,18,10,1,18),(11,11,'Woud van de Libanon','','',-1,11,7,2,11,7,2),(12,12,'Jachin','Rechterzuil van de tempel van Salomo','Opgericht',0,11,7,21,11,7,21),(13,13,'Boaz','Linkerzuil van de tempel van Salomo','Kracht',0,11,7,21,11,7,21),(14,14,'Millobolwerk','','',-1,11,9,15,11,9,15),(15,15,'Astarte','','',-1,11,11,5,11,11,5),(16,16,'Milkom','','',-1,11,11,5,11,11,5),(17,17,'Moloch','','',-1,11,11,7,11,11,7),(18,18,'Kronieken vd Koningen v Israël','','',-1,11,14,19,11,14,19),(19,19,'Kronieken vd Koningen v Juda','','',-1,11,14,29,11,14,29),(20,20,'Baäl-Zebub','','',-1,12,1,2,12,1,2),(21,21,'Sukkot-Benot','','',-1,12,17,30,12,17,30),(22,22,'Nergal','','',-1,12,17,30,12,17,30),(23,23,'Asima','','',-1,12,17,30,12,17,30),(24,24,'Nibchaz','','',-1,12,17,31,12,17,31),(25,25,'Tartak','','',-1,12,17,31,12,17,31),(26,26,'Adrammelech','','',-1,12,17,31,12,17,31),(27,27,'Anammelech','','',-1,12,17,31,12,17,31),(28,28,'Koperslang','','',-1,12,18,4,12,18,4),(29,29,'Nisroch','','',-1,12,19,37,12,19,37),(30,30,'Dagon','','',-1,13,10,10,13,10,10),(31,31,'Geschriften van Natan, Achia & Jedo','','',-1,14,9,29,14,9,29),(32,32,'Geschriften van Chozai','','',-1,14,33,19,14,33,19),(33,33,'Boek van de klaagliederen','','',-1,14,25,25,14,25,25),(34,34,'Leviatan','','',-1,19,74,14,19,74,14),(35,35,'Lilit','','',-1,23,34,14,23,34,14),(36,36,'Amon','','',-1,24,46,25,24,46,25),(37,37,'Bel','','',-1,24,51,44,24,51,44),(38,38,'Tammuz','','',-1,26,8,14,26,8,14),(39,39,'Dal der passanten','','',-1,26,39,11,26,39,11),(40,40,'Dal van het leger van Gog','','',-1,26,39,11,26,39,11),(41,41,'Beltesassar','','',-1,27,4,5,27,4,5),(42,42,'Heilig sieraad','','',-1,27,11,45,27,11,45),(43,43,'Plejaden','','',-1,30,5,8,30,5,8),(44,44,'Orion','','',-1,30,5,8,30,5,8),(45,45,'Sakkut','','',-1,30,5,26,30,5,26),(46,46,'Kewan','','',-1,30,5,26,30,5,26),(47,47,'Hadad-Rimmon','','',-1,38,12,11,38,12,11),(48,48,'Levitian','','',-1,18,3,8,18,3,8),(49,49,'Immanuël','','God met ons',-1,40,1,23,40,1,23),(50,50,'Messias','','',-1,40,2,4,40,2,4),(51,51,'Narozeeër','','',-1,40,2,23,40,2,23),(52,52,'Farizeeër','','',-1,40,3,7,40,3,7),(53,53,'Sadduceeër','','',-1,40,3,7,40,3,7),(54,54,'Koninkrijk van de Hemel','','',-1,40,10,7,40,10,7),(55,55,'Mensenzoon','','',-1,40,10,23,40,10,23),(56,56,'Beëlzebul','','',-1,40,10,25,40,10,25),(57,57,'Gehenna','','',-1,40,10,28,40,10,28),(58,58,'Sanhedrin','','',-1,40,26,59,40,26,59),(59,59,'Refan','','',-1,44,7,43,44,7,43),(60,60,'Zeus','','',-1,44,14,12,44,14,12),(61,61,'Hermes','','',-1,44,14,12,44,14,12),(62,62,'Artemis','','',-1,44,19,24,44,19,24),(63,63,'Eurakylon','','',-1,44,27,14,44,27,14),(64,64,'Diké','','',-1,44,28,4,44,28,4),(65,65,'Dioscuren','','',-1,44,28,11,44,28,11),(66,66,'Alsem','','',-1,66,8,11,66,8,11),(67,67,'Abaddon','','',-1,66,9,11,66,9,11),(68,68,'Apollyon','','',-1,66,9,11,66,9,11);
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

-- Dump completed on 2023-07-21 15:57:57
