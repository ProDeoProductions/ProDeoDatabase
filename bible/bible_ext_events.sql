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
-- Table structure for table `ext_events`
--

DROP TABLE IF EXISTS `ext_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ext_events` (
  `order_id` int(11) DEFAULT NULL,
  `ext_event_id` int(11) NOT NULL,
  `descr` text,
  `length` text,
  `date` text,
  `book_start_id` int(11) DEFAULT NULL,
  `book_start_chap` int(11) DEFAULT NULL,
  `book_start_vers` int(11) DEFAULT NULL,
  `book_end_id` int(11) DEFAULT NULL,
  `book_end_chap` int(11) DEFAULT NULL,
  `book_end_vers` int(11) DEFAULT NULL,
  PRIMARY KEY (`ext_event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ext_events`
--

LOCK TABLES `ext_events` WRITE;
/*!40000 ALTER TABLE `ext_events` DISABLE KEYS */;
INSERT INTO `ext_events` VALUES (0,1,'God schiep het universum','-1','-1',0,1,1,0,1,1),(1,2,'God schiep de Aarde','-1','-1',0,1,1,0,1,1),(2,3,'De aarde was nog woest en doods','-1','-1',0,1,2,0,1,2),(5,5,'God sprak','-1','-1',0,1,3,0,1,3),(7,6,'God zag dat het licht goed was','-1','-1',0,1,4,0,1,4),(9,7,'Het licht noemde hij dag','-1','-1',0,1,5,0,1,5),(11,8,'Het werd avond (De eerste dag)','-1','-1',0,1,5,0,1,5),(13,10,'God sprak','-1','-1',0,1,6,0,1,6),(14,12,'God maakte het gewelf','-1','-1',0,1,7,0,1,7),(16,13,'Hij noemde het gewelf hemel','-1','-1',0,1,8,0,1,8),(17,14,'Het werd avond (De tweede dag)','-1','-1',0,1,8,0,1,8),(19,16,'God sprak.','-1','-1',0,1,9,0,1,9),(22,17,'Het droge noemde hij aarde.','-1','-1',0,1,10,0,1,10),(24,18,'God zag dat het goed was.','-1','-1',0,1,10,0,1,10),(25,19,'God sprak.','-1','-1',0,1,11,0,1,11),(26,20,'De aarde bracht jong groen voort','-1','-1',0,1,12,0,1,12),(29,21,'God zag dat het goed was.','-1','-1',0,1,12,0,1,12),(30,22,'Het werd avond (De derde dag)','-1','-1',0,1,13,0,1,13),(32,24,'God sprak','-1','-1',0,1,14,0,1,14),(33,26,'God maakte de zon en de maan','-1','-1',0,1,16,0,1,16),(35,27,'Hij plaatste ze aan het hemelgewelf om licht te geven op de aarde, om te heersen over de dag en de nacht en om het licht te scheiden van de duisternis.','-1','-1',0,1,17,0,1,17),(36,29,'God zag dat het goed was.','-1','-1',0,1,18,0,1,18),(37,30,'Het werd avond (De vierde dag)','-1','-1',0,1,19,0,1,19),(39,32,'God sprak','-1','-1',0,1,20,0,1,20),(40,33,'Hij schiep de grote zeemonsters en alle soorten levende wezens waarvan het water wemelt en krioelt.','-1','-1',0,1,21,0,1,21),(42,34,'God zag dat het goed was.','-1','-1',0,1,21,0,1,21),(43,35,'God zegende wat vleugels heeft en wat in het water leeft','-1','-1',0,1,22,0,1,22),(44,36,'Het werd avond (De vijfde dag)','-1','-1',0,1,23,0,1,23),(46,38,'God sprak','-1','-1',0,1,24,0,1,24),(47,39,'God maakte alle soorten in het wild levende dieren.','-1','-1',0,1,25,0,1,25),(50,40,'God zag dat het goed was.','-1','-1',0,1,25,0,1,25),(51,41,'God sprak','-1','-1',0,1,26,0,1,26),(52,42,'God schiep de mens als zijn evenbeeld.','-1','-1',0,1,27,0,1,27),(55,43,'Hij zegende hen','-1','-1',0,1,28,0,1,28),(57,44,'God gaf hen alle zaaddragende planten en alle vruchtbomen op de aarde; dat zal hun voedsel zijn.','-1','-1',0,1,29,0,1,29),(58,45,'Aan de wilde dieren, de vogels en de kruipende dieren gaf God alle groene planten tot voedsel.','-1','-1',0,1,30,0,1,30),(59,46,'God keek naar alles wat hij had gemaakt en zag dat het zeer goed was.','-1','-1',0,1,31,0,1,31),(60,47,'Het werd avond (De zesde dag)','-1','-1',0,1,31,0,1,31),(62,49,'Zo werden de hemel en de aarde in al hun rijkdom voltooid.','-1','-1',0,2,1,0,2,1),(63,50,'Op de zevende dag had God zijn werk voltooid.','-1','-1',0,2,2,0,2,2),(65,51,'God zegende de zevende dag.','-1','-1',0,2,3,0,2,3),(68,52,'Dit is de geschiedenis van de hemel en de aarde.','-1','-1',0,2,4,0,2,4),(69,53,'Zo ontstonden ze.','-1','-1',0,2,4,0,2,4),(71,54,'God, de HEER, maakte aarde en hemel','-1','-1',0,2,4,0,2,4),(72,55,'Er groeide op de aarde nog geen enkele struik','-1','-1',0,2,5,0,2,5),(76,56,'Er was water dat uit de aarde opwelde en de aardbodem overal bevloeide.','-1','-1',0,2,6,0,2,6),(77,57,'God, de HEER, maakte de mens.','-1','-1',0,2,7,0,2,7),(78,58,'Hij vormde hem uit stof, uit aarde.','-1','-1',0,2,7,0,2,7),(80,59,'De mens werd een levend wezen.','-1','-1',0,2,7,0,2,7),(81,60,'God, de HEER, legde in het oosten, in â€‹Eden, een tuin aan.','-1','-1',0,2,8,0,2,8),(83,61,'Hij liet uit de aarde allerlei bomen opschieten.','-1','-1',0,2,9,0,2,9),(86,62,'In het midden van de tuin stonden de levensboom en de boom van de kennis van goed en kwaad.','-1','-1',0,2,9,0,2,9),(87,63,'Er ontspringt in â€‹Edenâ€‹ een rivier.','-1','-1',0,2,10,0,2,10),(89,64,'De rivier vertakt zich in vier grote stromen.','-1','-1',0,2,10,0,2,10),(90,65,'De rivier vertakt zich in de Pison.','-1','-1',0,2,11,0,2,11),(93,66,'Het goud van Chawila is uitstekend','-1','-1',0,2,12,0,2,12),(95,67,'De rivier vertakt zich in de Gichon.','-1','-1',0,2,13,0,2,13),(97,68,'De rivier vertakt zich in de â€‹Tigris.','-1','-1',0,2,14,0,2,14),(99,69,'De rivier vertakt zich in de â€‹Eufraat.','-1','-1',0,2,14,0,2,14),(100,70,'God, de HEER, bracht de mens in de tuin van â€‹Eden.','-1','-1',0,2,15,0,2,15),(102,71,'Hij sprak tot hen','-1','-1',0,2,16,0,2,16),(103,72,'Hij verbad hen te eten van de boom van de kennis van goed en kwaad','-1','-1',0,2,17,0,2,17),(104,73,'God, de HEER, dacht tot zichzelf.','-1','-1',0,2,18,0,2,18),(106,74,'Toen vormde hij uit aarde alle in het wild levende dieren en alle vogels.','-1','-1',0,2,19,0,2,19),(110,75,'De mens gaf namen aan al het â€‹vee, aan alle vogels en alle wilde dieren.','-1','-1',0,2,20,0,2,20),(112,76,'Toen liet God, de HEER, de mens in een diepe slaap vallen.','-1','-1',0,2,21,0,2,21),(115,77,'God, de HEER bouwde een mens uit de rib die hij bij de mens had weggenomen.','-1','-1',0,2,22,0,2,22),(118,78,'De mens riep -','-1','-1',0,2,23,0,2,23),(120,79,'Een man maakt zich los van zijn vader en moeder.','-1','-1',0,2,24,0,2,24),(123,80,'Beiden waren ze naakt, de mens en zijn vrouw.','-1','-1',0,2,25,0,2,25),(4,30007,'Gods geest zweefde over het water','-1','-1',0,1,2,0,1,2),(6,30008,'Er was licht','-1','-1',0,1,3,0,1,3),(8,30009,'Hij scheidde het licht van de duisternis','-1','-1',0,1,4,0,1,4),(12,30010,'Het werd morgen (De tweede dag)','-1','-1',0,1,5,0,1,5),(15,30011,'God scheidde het water onder het gewelf van het water erboven (zee en regen)','-1','-1',0,1,7,0,1,7),(18,30012,'Het werd morgen (De derde dag)','-1','-1',0,1,8,0,1,8),(20,30013,'Het water onder de hemel stroomde naar Ã©Ã©n plaats.','-1','-1',0,1,9,0,1,9),(31,30015,'Het werd morgen (De vierde dag)','-1','-1',0,1,13,0,1,13),(3,30016,'Duisternis lag over de oervloed','-1','-1',0,1,2,0,1,2),(10,30017,'De duisternis noemde hij nacht','-1','-1',0,1,5,0,1,5),(21,30019,'Er ontstond droog land.','-1','-1',0,1,9,0,1,9),(23,30020,'Het samengestroomde water noemde hij zee.','-1','-1',0,1,10,0,1,10),(34,30021,'God maakte de sterren.','-1','-1',0,1,16,0,1,16),(38,30022,'Het werd morgen (De vijfde dag)','-1','-1',0,1,19,0,1,19),(41,30023,'Hij schiep alles wat vleugels heeft.','-1','-1',0,1,21,0,1,21),(45,30024,'Het werd morgen (De zesde dag)','-1','-1',0,1,23,0,1,23),(48,30025,'God maakte al het â€‹vee.','-1','-1',0,1,25,0,1,25),(49,30026,'God maakte alles wat op de aardbodem rondkruipt.','-1','-1',0,1,25,0,1,25),(53,30027,'Als evenbeeld van God schiep hij hem.','-1','-1',0,1,27,0,1,27),(54,30028,'Mannelijk en vrouwelijk schiep hij de mensen.','-1','-1',0,1,27,0,1,27),(56,30029,'Hij sprak tot hen','-1','-1',0,1,28,0,1,28),(61,30030,'Het werd morgen (De zevende dag)','-1','-1',0,1,31,0,1,31),(64,30038,'Op de zevende dag rustte hij van het werk dat hij gedaan had.','-1','-1',0,2,2,0,2,2),(66,30039,'God verklaarde de zevende dag â€‹heilig.','-1','-1',0,2,3,0,2,3),(67,30040,'Op de zevende dag rustte hij van heel zijn scheppingswerk.','-1','-1',0,2,3,0,2,3),(70,30041,'Zo werden ze geschapen.','-1','-1',0,2,4,0,2,4),(73,30042,'Er was geen enkele plant opgeschoten','-1','-1',0,2,5,0,2,5),(74,30043,'God, de HEER, had het nog niet laten regenen op de aarde','-1','-1',0,2,5,0,2,5),(75,30044,'Er waren geen mensen om het land te bewerken','-1','-1',0,2,5,0,2,5),(79,30045,'Hij blies hem levensadem in de neus.','-1','-1',0,2,7,0,2,7),(82,30046,'God, de HEER, plaatste de mens die hij had gemaakt in de tuin.','-1','-1',0,2,8,0,2,8),(84,30047,'De bomen zagen aanlokkelijk uit.','-1','-1',0,2,9,0,2,9),(85,30048,'De bomen hadden heerlijke vruchten.','-1','-1',0,2,9,0,2,9),(88,30049,'De rivier bevloeit de tuin.','-1','-1',0,2,10,0,2,10),(91,30050,'De Pison stroomt om heel Chawila heen','-1','-1',0,2,11,0,2,11),(92,30051,'In Chawila wordt goud gevonden','-1','-1',0,2,11,0,2,11),(94,30052,'Er is in Chawila â€‹balsemharsâ€‹ en â€‹onyx.','-1','-1',0,2,12,0,2,12),(96,30053,'De Gichon stroomt om heel NubiÃ« heen.','-1','-1',0,2,13,0,2,13),(98,30054,'De Tigris loopt ten oosten van â€‹AssyriÃ«.','-1','-1',0,2,14,0,2,14),(101,30055,'De mens moest de tuin van Eden bewerken en erover te waken.','-1','-1',0,2,15,0,2,15),(105,30056,'God, de HEER, wilde een helper voor de mens maken die bij hem past.','-1','-1',0,2,18,0,2,18),(107,30057,'Hij bracht die bij de mens.','-1','-1',0,2,19,0,2,19),(108,30058,'Hij wilde zien welke namen de mens ze zou geven.','-1','-1',0,2,19,0,2,19),(109,30059,'Zoals de mens elk levend wezen zou noemen, zo zou het heten.','-1','-1',0,2,19,0,2,19),(111,30060,'De mens vond geen helper die bij hem paste.','-1','-1',0,2,20,0,2,20),(113,30061,'Terwijl de mens sliep nam God een van zijn ribben weg.','-1','-1',0,2,21,0,2,21),(114,30062,'God vulde die plaats weer met vlees.','-1','-1',0,2,21,0,2,21),(116,30063,'Het was een vrouw.','-1','-1',0,2,22,0,2,22),(117,30064,'God bracht haar bij de mens.','-1','-1',0,2,22,0,2,22),(119,30069,'De mens noemde het nieuwe wezen: vrouw -','-1','-1',0,2,23,0,2,23),(121,30070,'Hij hecht zich aan zijn vrouw.','-1','-1',0,2,24,0,2,24),(122,30071,'Hij wordt Ã©Ã©n van lichaam met zijn vrouw.','-1','-1',0,2,24,0,2,24),(124,30072,'Ze schaamden zich niet voor elkaar.','-1','-1',0,2,25,0,2,25),(28,30079,'Er groeide allerlei bomen die vruchten droegen met zaad erin','-1','-1',0,1,12,0,1,12),(27,30081,'Er groeide allerlei zaadvormende planten','-1','-1',0,1,12,0,1,12);
/*!40000 ALTER TABLE `ext_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-18 20:33:47
