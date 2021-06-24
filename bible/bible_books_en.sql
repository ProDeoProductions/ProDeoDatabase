CREATE DATABASE  IF NOT EXISTS `bible` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
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
-- Table structure for table `books_en`
--

DROP TABLE IF EXISTS `books_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `books_en` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books_en`
--

LOCK TABLES `books_en` WRITE;
/*!40000 ALTER TABLE `books_en` DISABLE KEYS */;
INSERT INTO `books_en` VALUES (1,'Genesis','Dit bijbelboek beschrijft hoe God de aarde schiep, hoe de mensen ontstonden en hoe zij ongehoorzaam werden aan God.<br><br>Ook komen hier de volgende bekende verhalen in voor:<br>- Adam en Eva<br>- Abraham en Sarai die een zoon krijgen<br>- De vrouw die voor Isaak werd gezocht<br>- Jakob die Esau\'s geboorterecht steelt<br>- De toren van Babel<br>- Noach en de ark<br>- Het verhaal van Jozef tot onderkoning<br><br>Het boek eindigt met het sterven van Jozef, wanneer alle nakomelingen van Jakob (IsraÃ«l) in Egypte wonen.'),(2,'Exodus','Dit bijbelboek is een vervolg van de verhalen uit Genesis. <br>Zodra Jozef en de Farao zijn gestorven, komt er een nieuwe farao die niet bekend is met het verhaal van Jozef. <br><br>De IsraÃ«lieten deden het zo goed en waren met zo velen geworden, dat ze werden gezien als dreiging en gevaar voor Egypte.<br><br>Het boek Exodus vertelt over Gods grote kracht, die kunnen werken door de meest gewone mensen. Mozes, die als kind bijna vermoord was, heeft God gemaakt tot (geadopteerd) kleinkind van de Farao. Tot een boodschapper van Gods woorden naar de Farao en het volk dat God zo lief heeft. Tot degene die het volk mag leiden door de woestijn naar het beloofte land.<br><br>Het boek eindigt in de woestijn, wanneer het volk is weggetrokken uit Egypte, het leger van Egypte is weggevaagd en er een tent is gemaakt waar de Heer en zijn majesteit in konden verblijven. Om zo dicht mogelijk bij IsraÃ«ls nakomelingen te kunnen zijn.'),(3,'Leviticus','Dit boek bevat de vele wetten, regels, geboden en bepalingen die God aan het volk gaf dat is uitgeleid uit Egypte.'),(4,'Numeri','Tussen de vele nummers van tellingen, nog meer voorschriften en bouwplannen, lees je hoe Mozes het volk probeert te leiden naar het belofte land. Tot ze eindelijk de grens bereiken en staan voor de Jordaan, wat het volk scheid van het beloofte land. <br><br>Het word Mozes niet makkelijk gemaakt, en uiteindelijk mag de huidige generatie van het volk het beloofte land niet in. Inclusief Mozes zelf. <br><br>Het verhaal eindigd met Mozes die de leiding overdraagd aan Jozua.'),(5,'Deuteronomium','Het boek begint met een korte terugblik op de geschiedenis van hoe het volk IsraÃ«l, Jakobs nakomelingen, van Egypte tot hier gekomen zijn.<br><br>Daarna komt een lange lijst met voorschriften, bepalingen en voorbereidingen voor het leven in het beloofte land. Mozes is duidelijk telleurgesteld dat hij het land niet mag binnentreden en laat dit nog even goed weten aan de mensen die dat wel mogen.<br><br>Uiteindelijk draagt Mozes de leiding over aan Jozua en eindigt het verhaal met Mozes op de Nebo, waar God hem het beloofte land laat zien. Na zijn dood, begraaft God Mozes zelf.'),(6,'Jozua','Het boek Jozua beschrijft hoe het volk, onder leiding van Jozua, de Jordaan oversteekt en het beloofte land in bezit neemt.<br><br>De huidige inwoners laten zich niet zomaar wegjagen, en daarom is er veel strijd en oorlog voordat de IsraÃ«lieten het nieuwe land zich kunnen toe eigenen.<br><br>Na alle strijd, wordt het land verdeeld onder de nakomelingen van Jakobs zonen. Iedere stam (nakomelingen van 1 van Jakobs zonen) een eigen gebied.<br><br>Ten slotte geeft Jozua nog Ã©Ã©n laatste toespraak voordat hij zijn laatste adem uitblaast.'),(7,'Rechters','Rechters beschrijft de tijd tussen Jozua en SamuÃ«l. De tijd dat het volk een leider nodig had die ze in de juiste sporen zou leiden, en terug bracht naar Gods weg als ze hadden gezondigd.<br><br>De volgende rechters komen voor in dit boek:<br>- OtniÃ«l<br>- Ehud<br>- Samgar<br>- Debora<br>- Gideon<br>- Tola<br>- JaÃ¯r<br>- Jefta<br>- Ibsan<br>- Elon<br>- Abdon<br>- Simson'),(8,'Ruth','Ruth is het verhaal van de schoondochter van de JudeÃ«r NoÃ¶mi. <br><br>NoÃ¶mi kwam uit Juda, is naar Moab verhuisd in verband met een hongersnood en is haar man en twee getrouwde zonen kwijt geraakt.<br><br>Na afloop van de hongersnood, besluit NoÃ¶mi terug te gaan naar Juda, en een van haar schoondochers, Ruth, besluit met haar mee te gaan.<br><br>Eenmaal daar, leert Ruth Boaz kennen, wie naaste familie blijkt te zijn van NoÃ¶mi. Dat komt goed uit, want zonder nakomelingen voor NoÃ¶mi, zou niemand de grond uit hun familie erven. En volgens de gebruiken van de IsraÃ«lieten, zal het kind dat Ruth krijgt toch ook van Ruths overleden man zijn.<br><br>Zo trouwen Boaz en Ruth uiteindelijk ook en krijgen samen een kindje die ze Obed noemen. Obed is de opa van koning David.'),(9,'1 SamuÃ«l',''),(10,'2 SamuÃ«l',''),(11,'1 Koningen',''),(12,'2 Koningen',''),(13,'1 Kronieken',''),(14,'2 Kronieken',''),(15,'Ezra',''),(16,'Nehemia',''),(17,'Ester',''),(18,'Job',''),(19,'Psalmen',''),(20,'Spreuken',''),(21,'Prediker',''),(22,'Hooglied',''),(23,'Jesaja',''),(24,'Jeremia',''),(25,'Klaagliederen',''),(26,'EzechiÃ«l',''),(27,'DaniÃ«l',''),(28,'Hosea',''),(29,'Joel',''),(30,'Amos',''),(31,'Obadja',''),(32,'Jona',''),(33,'Micha',''),(34,'Nahum',''),(35,'Habakuk',''),(36,'Sefanja',''),(37,'Haggai',''),(38,'Zacharia',''),(39,'Maleachi',''),(40,'MatteÃ¼s',''),(41,'Marcus',''),(42,'Lucas',''),(43,'Johannes',''),(44,'Handelingen',''),(45,'Romeinen',''),(46,'1 KorintiÃ«rs',''),(47,'2 KorintiÃ«rs',''),(48,'Galaten',''),(49,'EfeziÃ«rs',''),(50,'Filippenzen',''),(51,'Kolossenzen',''),(52,'1 Tessalonicenzen',''),(53,'2 Tessalonicenzen',''),(54,'1 TimoteÃ¼s',''),(55,'2 TimoteÃ¼s',''),(56,'Titus',''),(57,'Filemon',''),(58,'HebreeÃ«n',''),(59,'Jakobus',''),(60,'1 Petrus',''),(61,'2 Petrus',''),(62,'1 Johannes',''),(63,'2 Johannes',''),(64,'3 Johannes',''),(65,'Judas',''),(66,'Openbaring','');
/*!40000 ALTER TABLE `books_en` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-24 21:28:44
