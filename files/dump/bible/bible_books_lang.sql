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
  `id` int NOT NULL,
  `book_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `lang` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Translated version of books. Only text columns are translated, and the language is given in the language column.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_lang`
--

LOCK TABLES `books_lang` WRITE;
/*!40000 ALTER TABLE `books_lang` DISABLE KEYS */;
INSERT INTO `books_lang` VALUES (204,1,'Genesans','','es'),(205,2,'Exodans','','es'),(206,3,'Levitans','','es'),(207,1,'Genesis','This bible book describes how God created the earth, how people came to be and how they became disobient to God.<br><br>The following known stories occur in this book:<br>- Adam and Eve<br>- Abraham and Sarah who get a son<br>- The wife found for Isaac<br>- Jacob who steals Esau\'s birthright <br>- The tower of Babel<br>- Noah and the ark<br>- The story of Joseph who became viceroy<br><br>The book ends with the death of Joseph, when all Jacobs (Israel) offspring lives in Egypt.','en'),(208,2,'Exodus','','en'),(209,3,'Leviticus','','en'),(210,4,'Numbers','','en'),(211,5,'Deuteronomy','','en'),(212,6,'Joshua','','en'),(213,7,'Judges','','en'),(214,8,'Ruth','','en'),(215,9,'1 Samuel','','en'),(216,10,'2 Samuel','','en'),(217,11,'1 Kings','','en'),(218,12,'2 Kings','','en'),(219,13,'1 Chronicles','','en'),(220,14,'2 Chronicles','','en'),(221,15,'Ezra','','en'),(222,16,'Nehemiah','','en'),(223,17,'Esther','','en'),(224,18,'Job','','en'),(225,19,'Psalms','','en'),(226,20,'Proverbs','','en'),(227,21,'Ecclesiastes','','en'),(228,22,'Songs','','en'),(229,23,'Isaiaj','','en'),(230,24,'Jeremiah','','en'),(231,25,'Lamentations','','en'),(232,26,'Ezekiel','','en'),(233,27,'Daniël','','en'),(234,28,'Hosea','','en'),(235,29,'Joel','','en'),(236,30,'Amos','','en'),(237,31,'Obadiah','','en'),(238,32,'Jonah','','en'),(239,33,'Micah','','en'),(240,34,'Nahum','','en'),(241,35,'Habakkuk','','en'),(242,36,'Zephaniah','','en'),(243,37,'Haggai','','en'),(244,38,'Zechariah','','en'),(245,39,'Malachi','','en'),(246,40,'Matthew','','en'),(247,41,'Mark','','en'),(248,42,'Luke','','en'),(249,43,'John','','en'),(250,44,'Acts','','en'),(251,45,'Romans','','en'),(252,46,'1 Corinthians','','en'),(253,47,'2 Corinthians','','en'),(254,48,'Galatians','','en'),(255,49,'Ephesians','','en'),(256,50,'Philippians','','en'),(257,51,'Colossians','','en'),(258,52,'1 Thessalonians','','en'),(259,53,'2 Thessalonians','','en'),(260,54,'1 Timothy','','en'),(261,55,'2 Timothy','','en'),(262,56,'Titus','','en'),(263,57,'Philemon','','en'),(264,58,'Hebrews','','en'),(265,59,'James','','en'),(266,60,'1 Peter','','en'),(267,61,'2 Peter','','en'),(268,62,'1 John','','en'),(269,63,'2 John','','en'),(270,64,'3 John','','en'),(271,65,'Juda','','en'),(272,66,'Revelation','','en');
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

-- Dump completed on 2023-07-21 15:57:56
