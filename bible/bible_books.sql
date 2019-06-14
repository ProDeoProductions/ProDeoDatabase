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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `name` text,
  `descr` text,
  `num_chapters` int(11) DEFAULT NULL,
  `summary` text,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (0,'Genesis','',50,'Dit bijbelboek beschrijft hoe God de aarde schiep, hoe de mensen ontstonden en hoe zij ongehoorzaam werden aan God.<br><br>Ook komen hier de volgende bekende verhalen in voor:<br>- Adam en Eva<br>- Abraham en Sarai die een zoon krijgen<br>- De vrouw die voor Isaak werd gezocht<br>- Jakob die Esau\'s geboorterecht steelt<br>- De toren van Babel<br>- Noach en de ark<br>- Het verhaal van Jozef tot onderkoning<br><br>Het boek eindigt met het sterven van Jozef, wanneer alle nakomelingen van Jakob (IsraÃ«l) in Egypte wonen.'),(1,'Exodus','',40,'Dit bijbelboek is een vervolg van de verhalen uit Genesis. <br>Zodra Jozef en de Farao zijn gestorven, komt er een nieuwe farao die niet bekend is met het verhaal van Jozef. <br><br>De IsraÃ«lieten deden het zo goed en waren met zo velen geworden, dat ze werden gezien als dreiging en gevaar voor Egypte.<br><br>Het boek Exodus vertelt over Gods grote kracht, die kunnen werken door de meest gewone mensen. Mozes, die als kind bijna vermoord was, heeft God gemaakt tot (geadopteerd) kleinkind van de Farao. Tot een boodschapper van Gods woorden naar de Farao en het volk dat God zo lief heeft. Tot degene die het volk mag leiden door de woestijn naar het beloofte land.<br><br>Het boek eindigt in de woestijn, wanneer het volk is weggetrokken uit Egypte, het leger van Egypte is weggevaagd en er een tent is gemaakt waar de Heer en zijn majesteit in konden verblijven. Om zo dicht mogelijk bij IsraÃ«ls nakomelingen te kunnen zijn.'),(2,'Leviticus','',27,'Dit boek bevat de vele wetten, regels, geboden en bepalingen die God aan het volk gaf dat is uitgeleid uit Egypte.'),(3,'Numeri','',36,'Tussen de vele nummers van tellingen, nog meer voorschriften en bouwplannen, lees je hoe Mozes het volk probeert te leiden naar het belofte land. Tot ze eindelijk de grens bereiken en staan voor de Jordaan, wat het volk scheid van het beloofte land. <br><br>Het word Mozes niet makkelijk gemaakt, en uiteindelijk mag de huidige generatie van het volk het beloofte land niet in. Inclusief Mozes zelf. <br><br>Het verhaal eindigd met Mozes die de leiding overdraagd aan Jozua.'),(4,'Deuteronomium','',34,'Het boek begint met een korte terugblik op de geschiedenis van hoe het volk IsraÃ«l, Jakobs nakomelingen, van Egypte tot hier gekomen zijn.<br><br>Daarna komt een lange lijst met voorschriften, bepalingen en voorbereidingen voor het leven in het beloofte land. Mozes is duidelijk telleurgesteld dat hij het land niet mag binnentreden en laat dit nog even goed weten aan de mensen die dat wel mogen.<br><br>Uiteindelijk draagt Mozes de leiding over aan Jozua en eindigt het verhaal met Mozes op de Nebo, waar God hem het beloofte land laat zien. Na zijn dood, begraaft God Mozes zelf.'),(5,'Jozua','',24,'Het boek Jozua beschrijft hoe het volk, onder leiding van Jozua, de Jordaan oversteekt en het beloofte land in bezit neemt.<br><br>De huidige inwoners laten zich niet zomaar wegjagen, en daarom is er veel strijd en oorlog voordat de IsraÃ«lieten het nieuwe land zich kunnen toe eigenen.<br><br>Na alle strijd, wordt het land verdeeld onder de nakomelingen van Jakobs zonen. Iedere stam (nakomelingen van 1 van Jakobs zonen) een eigen gebied.<br><br>Ten slotte geeft Jozua nog Ã©Ã©n laatste toespraak voordat hij zijn laatste adem uitblaast.'),(6,'Rechters','',21,'Rechters beschrijft de tijd tussen Jozua en SamuÃ«l. De tijd dat het volk een leider nodig had die ze in de juiste sporen zou leiden, en terug bracht naar Gods weg als ze hadden gezondigd.<br><br>De volgende rechters komen voor in dit boek:<br>- OtniÃ«l<br>- Ehud<br>- Samgar<br>- Debora<br>- Gideon<br>- Tola<br>- JaÃ¯r<br>- Jefta<br>- Ibsan<br>- Elon<br>- Abdon<br>- Simson'),(7,'Ruth','',4,'Ruth is het verhaal van de schoondochter van de JudeÃ«r NoÃ¶mi. <br><br>NoÃ¶mi kwam uit Juda, is naar Moab verhuisd in verband met een hongersnood en is haar man en twee getrouwde zonen kwijt geraakt.<br><br>Na afloop van de hongersnood, besluit NoÃ¶mi terug te gaan naar Juda, en een van haar schoondochers, Ruth, besluit met haar mee te gaan.<br><br>Eenmaal daar, leert Ruth Boaz kennen, wie naaste familie blijkt te zijn van NoÃ¶mi. Dat komt goed uit, want zonder nakomelingen voor NoÃ¶mi, zou niemand de grond uit hun familie erven. En volgens de gebruiken van de IsraÃ«lieten, zal het kind dat Ruth krijgt toch ook van Ruths overleden man zijn.<br><br>Zo trouwen Boaz en Ruth uiteindelijk ook en krijgen samen een kindje die ze Obed noemen. Obed is de opa van koning David.'),(8,'1 SamuÃ«l','',31,''),(9,'2 SamuÃ«l','',24,''),(10,'1 Koningen','',22,''),(11,'2 Koningen','',25,''),(12,'1 Kronieken','',29,''),(13,'2 Kronieken','',36,''),(14,'Ezra','',10,''),(15,'Nehemia','',13,''),(16,'Ester','',10,''),(17,'Job','',42,''),(18,'Psalmen','',150,''),(19,'Spreuken','',31,''),(20,'Prediker','',12,''),(21,'Hooglied','',8,''),(22,'Jesaja','',66,''),(23,'Jeremia','',52,''),(24,'Klaagliederen','',5,''),(25,'EzechiÃ«l','',48,''),(26,'DaniÃ«l','',12,''),(27,'Hosea','',14,''),(28,'Joel','',4,''),(29,'Amos','',9,''),(30,'Obadja','',1,''),(31,'Jona','',4,''),(32,'Micha','',7,''),(33,'Nahum','',3,''),(34,'Habakuk','',3,''),(35,'Sefanja','',3,''),(36,'Haggai','',2,''),(37,'Zacharia','',14,''),(38,'Maleachi','',3,''),(39,'MatteÃ¼s','',28,''),(40,'Marcus','',16,''),(41,'Lucas','',24,''),(42,'Johannes','',21,''),(43,'Handelingen','',28,''),(44,'Romeinen','',16,''),(45,'1 KorintiÃ«rs','',16,''),(46,'2 KorintiÃ«rs','',13,''),(47,'Galaten','',6,''),(48,'EfeziÃ«rs','',6,''),(49,'Filippenzen','',4,''),(50,'Kolossenzen','',4,''),(51,'1 Tessalonicenzen','',5,''),(52,'2 Tessalonicenzen','',3,''),(53,'1 TimoteÃ¼s','',6,''),(54,'2 TimoteÃ¼s','',4,''),(55,'Titus','',3,''),(56,'Filemon','',1,''),(57,'HebreeÃ«n','',13,''),(58,'Jakobus','',5,''),(59,'1 Petrus','',5,''),(60,'2 Petrus','',3,''),(61,'1 Johannes','',5,''),(62,'2 Johannes','',1,''),(63,'3 Johannes','',1,''),(64,'Judas','',1,''),(65,'Openbaring','',22,'');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14 19:29:49
