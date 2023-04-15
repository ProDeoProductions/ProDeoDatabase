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
-- Table structure for table `books_lang`
--

DROP TABLE IF EXISTS `books_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books_lang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `lang` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_lang`
--

LOCK TABLES `books_lang` WRITE;
/*!40000 ALTER TABLE `books_lang` DISABLE KEYS */;
INSERT INTO `books_lang` VALUES (1,1,'Genesis','This bible book describes how God created the earth, how people came to be and how they became disobient to God.<br><br>The following known stories occur in this book:<br>- Adam and Eve<br>- Abraham and Sarah who get a son<br>- The wife found for Isaac<br>- Jacob who steals Esau\'s birthright <br>- The tower of Babel<br>- Noah and the ark<br>- The story of Joseph who became viceroy<br><br>The book ends with the death of Joseph, when all Jacobs (Israel) offspring lives in Egypt.','en'),(2,2,'Exodus','','en'),(3,3,'Leviticus','','en'),(4,4,'Numbers','','en'),(5,5,'Deuteronomy','','en'),(6,6,'Joshua','','en'),(7,7,'Judges','','en'),(8,8,'Ruth','','en'),(9,9,'1 Samuel','','en'),(10,10,'2 Samuel','','en'),(11,11,'1 Kings','','en'),(12,12,'2 Kings','','en'),(13,13,'1 Chronicles','','en'),(14,14,'2 Chronicles','','en'),(15,15,'Ezra','','en'),(16,16,'Nehemiah','','en'),(17,17,'Esther','','en'),(18,18,'Job','','en'),(19,19,'Psalms','','en'),(20,20,'Proverbs','','en'),(21,21,'Ecclesiastes','','en'),(22,22,'Songs','','en'),(23,23,'Isaiaj','','en'),(24,24,'Jeremiah','','en'),(25,25,'Lamentations','','en'),(26,26,'Ezekiel','','en'),(27,27,'Daniël','','en'),(28,28,'Hosea','','en'),(29,29,'Joel','','en'),(30,30,'Amos','','en'),(31,31,'Obadiah','','en'),(32,32,'Jonah','','en'),(33,33,'Micah','','en'),(34,34,'Nahum','','en'),(35,35,'Habakkuk','','en'),(36,36,'Zephaniah','','en'),(37,37,'Haggai','','en'),(38,38,'Zechariah','','en'),(39,39,'Malachi','','en'),(40,40,'Matthew','','en'),(41,41,'Mark','','en'),(42,42,'Luke','','en'),(43,43,'John','','en'),(44,44,'Acts','','en'),(45,45,'Romans','','en'),(46,46,'1 Corinthians','','en'),(47,47,'2 Corinthians','','en'),(48,48,'Galatians','','en'),(49,49,'Ephesians','','en'),(50,50,'Philippians','','en'),(51,51,'Colossians','','en'),(52,52,'1 Thessalonians','','en'),(53,53,'2 Thessalonians','','en'),(54,54,'1 Timothy','','en'),(55,55,'2 Timothy','','en'),(56,56,'Titus','','en'),(57,57,'Philemon','','en'),(58,58,'Hebrews','','en'),(59,59,'James','','en'),(60,60,'1 Peter','','en'),(61,61,'2 Peter','','en'),(62,62,'1 John','','en'),(63,63,'2 John','','en'),(64,64,'3 John','','en'),(65,65,'Juda','','en'),(66,66,'Revelation','','en');
/*!40000 ALTER TABLE `books_lang` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15 19:04:13
