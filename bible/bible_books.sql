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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `order_id` int DEFAULT NULL,
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `num_chapters` int DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (0,1,'Genesis',50,'Dit bijbelboek beschrijft hoe God de aarde schiep, hoe de mensen ontstonden en hoe zij ongehoorzaam werden aan God.<br><br>Ook komen hier de volgende bekende verhalen in voor:<br>- Adam en Eva<br>- Abraham en Sarai die een zoon krijgen<br>- De vrouw die voor Isaak werd gezocht<br>- Jakob die Esau\'s geboorterecht steelt<br>- De toren van Babel<br>- Noach en de ark<br>- Het verhaal van Jozef tot onderkoning<br><br>Het boek eindigt met het sterven van Jozef, wanneer alle nakomelingen van Jakob (Israël) in Egypte wonen.'),(1,2,'Exodus',40,'Dit bijbelboek is een vervolg van de verhalen uit Genesis. <br>Zodra Jozef en de Farao zijn gestorven, komt er een nieuwe farao die niet bekend is met het verhaal van Jozef. <br><br>De Israëlieten deden het zo goed en waren met zo velen geworden, dat ze werden gezien als dreiging en gevaar voor Egypte.<br><br>Het boek Exodus vertelt over Gods grote kracht, die kunnen werken door de meest gewone mensen. Mozes, die als kind bijna vermoord was, heeft God gemaakt tot (geadopteerd) kleinkind van de Farao. Tot een boodschapper van Gods woorden naar de Farao en het volk dat God zo lief heeft. Tot degene die het volk mag leiden door de woestijn naar het beloofte land.<br><br>Het boek eindigt in de woestijn, wanneer het volk is weggetrokken uit Egypte, het leger van Egypte is weggevaagd en er een tent is gemaakt waar de Heer en zijn majesteit in konden verblijven. Om zo dicht mogelijk bij Israëls nakomelingen te kunnen zijn.'),(2,3,'Leviticus',27,'Dit boek bevat de vele wetten, regels, geboden en bepalingen die God aan het volk gaf dat is uitgeleid uit Egypte.'),(3,4,'Numeri',36,'Tussen de vele nummers van tellingen, nog meer voorschriften en bouwplannen, lees je hoe Mozes het volk probeert te leiden naar het belofte land. Tot ze eindelijk de grens bereiken en staan voor de Jordaan, wat het volk scheid van het beloofte land. <br><br>Het word Mozes niet makkelijk gemaakt, en uiteindelijk mag de huidige generatie van het volk het beloofte land niet in. Inclusief Mozes zelf. <br><br>Het verhaal eindigd met Mozes die de leiding overdraagd aan Jozua.'),(4,5,'Deuteronomium',34,'Het boek begint met een korte terugblik op de geschiedenis van hoe het volk Israël, Jakobs nakomelingen, van Egypte tot hier gekomen zijn.<br><br>Daarna komt een lange lijst met voorschriften, bepalingen en voorbereidingen voor het leven in het beloofte land. Mozes is duidelijk telleurgesteld dat hij het land niet mag binnentreden en laat dit nog even goed weten aan de mensen die dat wel mogen.<br><br>Uiteindelijk draagt Mozes de leiding over aan Jozua en eindigt het verhaal met Mozes op de Nebo, waar God hem het beloofte land laat zien. Na zijn dood, begraaft God Mozes zelf.'),(5,6,'Jozua',24,'Het boek Jozua beschrijft hoe het volk, onder leiding van Jozua, de Jordaan oversteekt en het beloofte land in bezit neemt.<br><br>De huidige inwoners laten zich niet zomaar wegjagen, en daarom is er veel strijd en oorlog voordat de Israëlieten het nieuwe land zich kunnen toe eigenen.<br><br>Na alle strijd, wordt het land verdeeld onder de nakomelingen van Jakobs zonen. Iedere stam (nakomelingen van 1 van Jakobs zonen) een eigen gebied.<br><br>Ten slotte geeft Jozua nog één laatste toespraak voordat hij zijn laatste adem uitblaast.'),(6,7,'Rechters',21,'Rechters beschrijft de tijd tussen Jozua en Samuël. De tijd dat het volk een leider nodig had die ze in de juiste sporen zou leiden, en terug bracht naar Gods weg als ze hadden gezondigd.<br><br>De volgende rechters komen voor in dit boek:<br>- Otniël<br>- Ehud<br>- Samgar<br>- Debora<br>- Gideon<br>- Tola<br>- Jaïr<br>- Jefta<br>- Ibsan<br>- Elon<br>- Abdon<br>- Simson'),(7,8,'Ruth',4,'Ruth is het verhaal van de schoondochter van de Judeër Noömi. <br><br>Noömi kwam uit Juda, is naar Moab verhuisd in verband met een hongersnood en is haar man en twee getrouwde zonen kwijt geraakt.<br><br>Na afloop van de hongersnood, besluit Noömi terug te gaan naar Juda, en een van haar schoondochers, Ruth, besluit met haar mee te gaan.<br><br>Eenmaal daar, leert Ruth Boaz kennen, wie naaste familie blijkt te zijn van Noömi. Dat komt goed uit, want zonder nakomelingen voor Noömi, zou niemand de grond uit hun familie erven. En volgens de gebruiken van de Israëlieten, zal het kind dat Ruth krijgt toch ook van Ruths overleden man zijn.<br><br>Zo trouwen Boaz en Ruth uiteindelijk ook en krijgen samen een kindje die ze Obed noemen. Obed is de opa van koning David.'),(8,9,'1 Samuël',31,''),(9,10,'2 Samuël',24,''),(10,11,'1 Koningen',22,''),(11,12,'2 Koningen',25,''),(12,13,'1 Kronieken',29,''),(13,14,'2 Kronieken',36,''),(14,15,'Ezra',10,''),(15,16,'Nehemia',13,''),(16,17,'Ester',10,''),(17,18,'Job',42,''),(18,19,'Psalmen',150,''),(19,20,'Spreuken',31,''),(20,21,'Prediker',12,''),(21,22,'Hooglied',8,''),(22,23,'Jesaja',66,''),(23,24,'Jeremia',52,''),(24,25,'Klaagliederen',5,''),(25,26,'Ezechiël',48,''),(26,27,'Daniël',12,''),(27,28,'Hosea',14,''),(28,29,'Joel',4,''),(29,30,'Amos',9,''),(30,31,'Obadja',1,''),(31,32,'Jona',4,''),(32,33,'Micha',7,''),(33,34,'Nahum',3,''),(34,35,'Habakuk',3,''),(35,36,'Sefanja',3,''),(36,37,'Haggai',2,''),(37,38,'Zacharia',14,''),(38,39,'Maleachi',3,''),(39,40,'Matteüs',28,''),(40,41,'Marcus',16,''),(41,42,'Lucas',24,''),(42,43,'Johannes',21,''),(43,44,'Handelingen',28,''),(44,45,'Romeinen',16,''),(45,46,'1 Korintiërs',16,''),(46,47,'2 Korintiërs',13,''),(47,48,'Galaten',6,''),(48,49,'Efeziërs',6,''),(49,50,'Filippenzen',4,''),(50,51,'Kolossenzen',4,''),(51,52,'1 Tessalonicenzen',5,''),(52,53,'2 Tessalonicenzen',3,''),(53,54,'1 Timoteüs',6,''),(54,55,'2 Timoteüs',4,''),(55,56,'Titus',3,''),(56,57,'Filemon',1,''),(57,58,'Hebreeën',13,''),(58,59,'Jakobus',5,''),(59,60,'1 Petrus',5,''),(60,61,'2 Petrus',3,''),(61,62,'1 Johannes',5,''),(62,63,'2 Johannes',1,''),(63,64,'3 Johannes',1,''),(64,65,'Judas',1,''),(65,66,'Openbaring',22,'');
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

-- Dump completed on 2023-04-15 19:04:17
