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
INSERT INTO `ext_events` VALUES (0,1,'God schiep het universum','-1','-1',0,1,1,0,1,1),(1,2,'God schiep de Aarde','-1','-1',0,1,1,0,1,1),(2,3,'De aarde was nog woest en doods','-1','-1',0,1,2,0,1,2),(5,5,'God sprak','-1','-1',0,1,3,0,1,3),(7,6,'God zag dat het licht goed was','-1','-1',0,1,4,0,1,4),(9,7,'Het licht noemde hij dag','-1','-1',0,1,5,0,1,5),(11,8,'Het werd avond (De eerste dag)','-1','-1',0,1,5,0,1,5),(13,10,'God sprak','-1','-1',0,1,6,0,1,6),(14,12,'God maakte het gewelf','-1','-1',0,1,7,0,1,7),(16,13,'Hij noemde het gewelf hemel','-1','-1',0,1,8,0,1,8),(17,14,'Het werd avond (De tweede dag)','-1','-1',0,1,8,0,1,8),(19,16,'God sprak','-1','-1',0,1,9,0,1,9),(22,17,'Het droge noemde hij aarde','-1','-1',0,1,10,0,1,10),(24,18,'God zag dat het goed was','-1','-1',0,1,10,0,1,10),(25,19,'God sprak','-1','-1',0,1,11,0,1,11),(26,20,'De aarde bracht jong groen voort','-1','-1',0,1,12,0,1,12),(29,21,'God zag dat het goed was','-1','-1',0,1,12,0,1,12),(30,22,'Het werd avond (De derde dag)','-1','-1',0,1,13,0,1,13),(32,24,'God sprak','-1','-1',0,1,14,0,1,14),(33,26,'God maakte de zon en de maan','-1','-1',0,1,16,0,1,16),(35,27,'Hij plaatste ze aan het hemelgewelf','-1','-1',0,1,17,0,1,17),(39,29,'God zag dat het goed was','-1','-1',0,1,18,0,1,18),(40,30,'Het werd avond (De vierde dag)','-1','-1',0,1,19,0,1,19),(42,32,'God sprak','-1','-1',0,1,20,0,1,20),(43,33,'Hij schiep de grote zeemonsters','-1','-1',0,1,21,0,1,21),(46,34,'God zag dat het goed was','-1','-1',0,1,21,0,1,21),(47,35,'God zegende wat vleugels heeft','-1','-1',0,1,22,0,1,22),(49,36,'Het werd avond (De vijfde dag)','-1','-1',0,1,23,0,1,23),(51,38,'God sprak','-1','-1',0,1,24,0,1,24),(52,39,'God maakte alle soorten in het wild levende dieren','-1','-1',0,1,25,0,1,25),(55,40,'God zag dat het goed was','-1','-1',0,1,25,0,1,25),(56,41,'God sprak','-1','-1',0,1,26,0,1,26),(57,42,'God schiep de mens als zijn evenbeeld','-1','-1',0,1,27,0,1,27),(60,43,'Hij zegende hen','-1','-1',0,1,28,0,1,28),(62,44,'God gaf hen alle zaaddragende planten','-1','-1',0,1,29,0,1,29),(65,45,'Aan de wilde dieren gaf God alle groene planten tot voedsel','-1','-1',0,1,30,0,1,30),(68,46,'God keek naar alles wat hij had gemaakt','-1','-1',0,1,31,0,1,31),(70,47,'Het werd avond (De zesde dag)','-1','-1',0,1,31,0,1,31),(72,49,'De hemel was in al zijn rijkdom voltooid.','-1','-1',0,2,1,0,2,1),(74,50,'God had zijn werk voltooid.','-1','Op de zevende dag',0,2,2,0,2,2),(76,51,'God zegende de zevende dag.','-1','-1',0,2,3,0,2,3),(78,52,'Dit is de geschiedenis van de hemel en de aarde.','-1','-1',0,2,4,0,2,4),(79,53,'Zo ontstonden ze.','-1','-1',0,2,4,0,2,4),(81,55,'Er groeide op de aarde nog geen enkele struik','-1','-1',0,2,5,0,2,5),(85,56,'Er was water dat uit de aarde opwelde.','-1','-1',0,2,6,0,2,6),(87,57,'God, de HEER, maakte de mens.','-1','-1',0,2,7,0,2,7),(88,58,'Hij vormde hem uit stof','-1','-1',0,2,7,0,2,7),(91,59,'De mens werd een levend wezen.','-1','-1',0,2,7,0,2,7),(92,60,'God, de HEER, legde in het oosten, in â€‹Eden, een tuin aan.','-1','-1',0,2,8,0,2,8),(95,62,'In het midden van de tuin stonden de levensboom en de boom van de kennis van goed en kwaad.','-1','-1',0,2,9,0,2,9),(96,63,'Er ontspringt in â€‹Edenâ€‹ een rivier.','-1','-1',0,2,10,0,2,10),(98,64,'De rivier vertakt zich in vier grote stromen.','-1','-1',0,2,10,0,2,10),(99,65,'De rivier vertakt zich in de Pison.','-1','-1',0,2,11,0,2,11),(102,66,'Het goud van Chawila is uitstekend','-1','-1',0,2,12,0,2,12),(104,67,'De rivier vertakt zich in de Gichon.','-1','-1',0,2,13,0,2,13),(106,68,'De rivier vertakt zich in de â€‹Tigris.','-1','-1',0,2,14,0,2,14),(108,69,'De rivier vertakt zich in de â€‹Eufraat.','-1','-1',0,2,14,0,2,14),(109,70,'God, de HEER, bracht de mens in de tuin van â€‹Eden.','-1','-1',0,2,15,0,2,15),(112,71,'Hij sprak tot hem','-1','-1',0,2,16,0,2,16),(113,72,'Hij verbad hem te eten van de boom van de kennis van goed en kwaad','-1','-1',0,2,17,0,2,17),(114,73,'God, de HEER, dacht tot zichzelf.','-1','-1',0,2,18,0,2,18),(119,75,'De mens gaf namen aan al het â€‹vee.','-1','-1',0,2,20,0,2,20),(123,76,'Toen liet God, de HEER, de mens in een diepe slaap vallen.','-1','-1',0,2,21,0,2,21),(127,77,'God, de HEER bouwde een mens uit de rib die hij bij de mens had weggenomen.','-1','-1',0,2,22,0,2,22),(130,78,'De mens riep','-1','-1',0,2,23,0,2,23),(132,79,'Een man maakt zich los van zijn vader en moeder.','-1','-1',0,2,24,0,2,24),(135,80,'Beiden waren ze naakt, de mens en zijn vrouw.','-1','-1',0,2,25,0,2,25),(4,30007,'Gods geest zweefde over het water','-1','-1',0,1,2,0,1,2),(6,30008,'Er was licht','-1','-1',0,1,3,0,1,3),(8,30009,'Hij scheidde het licht van de duisternis','-1','-1',0,1,4,0,1,4),(12,30010,'Het werd morgen (De tweede dag)','-1','-1',0,1,5,0,1,5),(15,30011,'God scheidde het water onder het gewelf van het water erboven','-1','-1',0,1,7,0,1,7),(18,30012,'Het werd morgen (De derde dag)','-1','-1',0,1,8,0,1,8),(20,30013,'Het water onder de hemel stroomde naar Ã©Ã©n plaats','-1','-1',0,1,9,0,1,9),(31,30015,'Het werd morgen (De vierde dag)','-1','-1',0,1,13,0,1,13),(3,30016,'Duisternis lag over de oervloed','-1','-1',0,1,2,0,1,2),(10,30017,'De duisternis noemde hij nacht','-1','-1',0,1,5,0,1,5),(21,30019,'Er ontstond droog land','-1','-1',0,1,9,0,1,9),(23,30020,'Het samengestroomde water noemde hij zee','-1','-1',0,1,10,0,1,10),(34,30021,'God maakte de sterren','-1','-1',0,1,16,0,1,16),(41,30022,'Het werd morgen (De vijfde dag)','-1','-1',0,1,19,0,1,19),(45,30023,'Hij schiep alles wat vleugels heeft','-1','-1',0,1,21,0,1,21),(50,30024,'Het werd morgen (De zesde dag)','-1','-1',0,1,23,0,1,23),(53,30025,'God maakte al het â€‹vee','-1','-1',0,1,25,0,1,25),(54,30026,'God maakte alles wat op de aardbodem rondkruipt','-1','-1',0,1,25,0,1,25),(58,30027,'Als evenbeeld van God schiep hij hem','-1','-1',0,1,27,0,1,27),(59,30028,'Mannelijk en vrouwelijk schiep hij de mensen','-1','-1',0,1,27,0,1,27),(61,30029,'Hij sprak tot hen','-1','-1',0,1,28,0,1,28),(71,30030,'Het werd morgen (De zevende dag)','-1','-1',0,1,31,0,1,31),(75,30038,'Hij rustte van het werk dat hij gedaan had.','-1','Op de zevende dag',0,2,2,0,2,2),(77,30039,'God verklaarde de zevende dag â€‹heilig.','-1','-1',0,2,3,0,2,3),(80,30041,'Zo werden ze geschapen.','-1','-1',0,2,4,0,2,4),(82,30042,'Er was geen enkele plant opgeschoten','-1','-1',0,2,5,0,2,5),(83,30043,'Het had nog niet geregend','-1','-1',0,2,5,0,2,5),(84,30044,'Er waren geen mensen om het land te bewerken','-1','-1',0,2,5,0,2,5),(90,30045,'Hij blies hem levensadem in de neus.','-1','-1',0,2,7,0,2,7),(93,30047,'De bomen zagen aanlokkelijk uit.','-1','-1',0,2,9,0,2,9),(94,30048,'De bomen hadden heerlijke vruchten.','-1','-1',0,2,9,0,2,9),(97,30049,'De rivier bevloeit de tuin.','-1','-1',0,2,10,0,2,10),(100,30050,'De Pison stroomt om heel Chawila heen','-1','-1',0,2,11,0,2,11),(101,30051,'In Chawila wordt goud gevonden','-1','-1',0,2,11,0,2,11),(103,30052,'Er is in Chawila â€‹balsemharsâ€‹ en â€‹onyx.','-1','-1',0,2,12,0,2,12),(105,30053,'De Gichon stroomt om heel NubiÃ« heen.','-1','-1',0,2,13,0,2,13),(107,30054,'De Tigris loopt ten oosten van â€‹AssyriÃ«.','-1','-1',0,2,14,0,2,14),(110,30055,'De mens moest de tuin van Eden bewerken.','-1','-1',0,2,15,0,2,15),(115,30056,'God, de HEER, wilde een helper voor de mens maken die bij hem past.','-1','-1',0,2,18,0,2,18),(116,30057,'Hij bracht die bij de mens.','-1','-1',0,2,19,0,2,19),(117,30058,'Hij wilde zien welke namen de mens ze zou geven.','-1','-1',0,2,19,0,2,19),(118,30059,'Zoals de mens elk levend wezen zou noemen, zo zou het heten.','-1','-1',0,2,19,0,2,19),(122,30060,'De mens vond geen helper die bij hem paste.','-1','-1',0,2,20,0,2,20),(124,30061,'De mens sliep .','-1','-1',0,2,21,0,2,21),(126,30062,'God vulde die plaats weer met vlees.','-1','-1',0,2,21,0,2,21),(128,30063,'Het was een vrouw.','-1','-1',0,2,22,0,2,22),(129,30064,'God bracht haar bij de mens.','-1','-1',0,2,22,0,2,22),(131,30069,'De mens noemde het nieuwe wezen: vrouw -','-1','-1',0,2,23,0,2,23),(133,30070,'Hij hecht zich aan zijn vrouw.','-1','-1',0,2,24,0,2,24),(134,30071,'Hij wordt Ã©Ã©n van lichaam met zijn vrouw.','-1','-1',0,2,24,0,2,24),(136,30072,'Ze schaamden zich niet voor elkaar.','-1','-1',0,2,25,0,2,25),(28,30079,'Er groeide allerlei bomen die vruchten droegen met zaad erin','-1','-1',0,1,12,0,1,12),(27,30081,'Er groeide allerlei zaadvormende planten','-1','-1',0,1,12,0,1,12),(36,30082,'Ze moesten licht te geven op de aarde','-1','-1',0,1,17,0,1,17),(37,30083,'Ze moesten heersen over de dag en de nacht','-1','-1',0,1,17,0,1,17),(38,30084,'Ze moesten het licht te scheiden van de duisternis','-1','-1',0,1,17,0,1,17),(44,30085,'Hij schiep alle soorten levende wezens waarvan het water wemelt en krioelt','-1','-1',0,1,21,0,1,21),(48,30086,'God zegende wat in het water leeft','-1','-1',0,1,22,0,1,22),(63,30087,'God gaf hen alle vruchtbomen op de aarde','-1','-1',0,1,29,0,1,29),(64,30088,'Dat zal hun voedsel zijn','-1','-1',0,1,29,0,1,29),(66,30089,'Aan de vogels gaf God alle groene planten tot voedsel','-1','-1',0,1,30,0,1,30),(67,30090,'Aan de kruipende dieren gaf God alle groene planten tot voedsel','-1','-1',0,1,30,0,1,30),(69,30091,'God zag dat het zeer goed was','-1','-1',0,1,31,0,1,31),(86,30092,'Het bevloeide de aardbodem overal.','-1','-1',0,2,6,0,2,6),(89,30093,'Hij vormde hem uit aarde.','-1','-1',0,2,7,0,2,7),(111,30094,'De mens moest erover te waken.','-1','-1',0,2,15,0,2,15),(120,30096,'De mens gaf namen aan alle vogels.','-1','-1',0,2,20,0,2,20),(121,30097,'De mens gaf namen aan alle wilde dieren.','-1','-1',0,2,20,0,2,20),(125,30098,'God nam een van zijn ribben weg.','-1','-1',0,2,21,0,2,21),(73,30099,'Zo aarde was in al zijn rijkdom voltooid.','-1','-1',0,2,1,0,2,1);
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

-- Dump completed on 2020-04-13 12:39:27
