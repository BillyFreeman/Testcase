-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: testcase
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tc_rendering_engines`
--

DROP TABLE IF EXISTS `tc_rendering_engines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tc_rendering_engines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engine_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `browser_name` varchar(45) CHARACTER SET utf8 NOT NULL,
  `platform` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `engine_version` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `css_grade` varchar(10) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tc_rendering_engines`
--

LOCK TABLES `tc_rendering_engines` WRITE;
/*!40000 ALTER TABLE `tc_rendering_engines` DISABLE KEYS */;
INSERT INTO `tc_rendering_engines` VALUES (1,'Trident','Internet Explorer 4.0','Win 95+','4','X'),(2,'Trident','Internet Explorer 5.0','Win 95+','5','C'),(3,'Trident','Internet Explorer 5.5','Win 95+','5.5','A'),(4,'Trident','Internet Explorer 6','Win 98+','6','A'),(5,'Trident','Internet Explorer 7','Win XP SP2+','7','A'),(6,'Trident','AOL browser (AOL desktop)','Win XP','6','A'),(7,'Gecko','Firefox 1.0','Win 98+ / OSX.2+','1.7','A'),(8,'Gecko','Firefox 1.5','Win 98+ / OSX.2+','1.8','A'),(9,'Gecko','Firefox 2.0','Win 98+ / OSX.2+','1.8','A'),(10,'Gecko','Firefox 3.0','Win 2k+ / OSX.3+','1.9','A'),(11,'Gecko','Camino 1.0','OSX.2+','1.8','A'),(12,'Gecko','Camino 1.5','OSX.3+','1.8','A'),(13,'Gecko','Netscape 7.2','Win 95+ / Mac OS 8.6-9.2','1.7','A'),(14,'Gecko','Netscape Browser 8','Win 98SE+','1.7','A'),(15,'Gecko','Netscape Navigator 9','Win 98+ / OSX.2+','1.8','A'),(16,'Gecko','Mozilla 1.0','Win 95+ / OSX.1+','1','A'),(17,'Gecko','Mozilla 1.1','Win 95+ / OSX.1+','1.1','A'),(18,'Gecko','Mozilla 1.2','Win 95+ / OSX.1+','1.2','A'),(19,'Gecko','Mozilla 1.3','Win 95+ / OSX.1+','1.3','A'),(20,'Gecko','Mozilla 1.4','Win 95+ / OSX.1+','1.4','A'),(21,'Gecko','Mozilla 1.5','Win 95+ / OSX.1+','1.5','A'),(22,'Gecko','Mozilla 1.6','Win 95+ / OSX.1+','1.6','A'),(23,'Gecko','Mozilla 1.7','Win 98+ / OSX.1+','1.7','A'),(24,'Gecko','Mozilla 1.8','Win 98+ / OSX.1+','1.8','A'),(25,'Gecko','Seamonkey 1.126','Win 98+ / OSX.2+','1.8','A'),(26,'Gecko','Epiphany 2.20','Gnome','1.8','A'),(27,'Webkit','Safari 1.2','OSX.3','125.5','A'),(28,'Webkit','Safari 1.3','OSX.3','312.8','A'),(29,'Webkit','Safari 2.0','OSX.4+','419.3','A'),(30,'Webkit','Safari 3.0','OSX.4+','522.1','A'),(31,'Webkit','OmniWeb 5.5','OSX.4+','420','A'),(32,'Webkit','iPod Touch / iPhone','iPod','420.1','A'),(33,'Webkit','S60','S60','413','A'),(34,'Presto','Opera 7.0','Win 95+ / OSX.1+','','A'),(35,'Presto','Opera 7.5','Win 95+ / OSX.2+','','A'),(36,'Presto','Opera 8.0','Win 95+ / OSX.2+','','A'),(37,'Presto','Opera 8.5','Win 95+ / OSX.2+','','A'),(38,'Presto','Opera 9.0','Win 95+ / OSX.3+','','A'),(39,'Presto','Opera 9.2','Win 88+ / OSX.3+','','A'),(40,'Presto','Opera 9.5','Win 88+ / OSX.3+','','A'),(41,'Presto','Opera for Wii','Wii','','A'),(42,'Presto','Nokia N800','N800','','A'),(43,'Presto','Nintendo DS browser','Nintendo DS','8.5','C/A'),(44,'KHTML','Konqureror 3.1','KDE 3.1','3.1','C'),(45,'KHTML','Konqureror 3.3','KDE 3.3','3.3','A'),(46,'KHTML','Konqureror 3.5','KDE 3.5','3.5','A'),(47,'Tasman','Internet Explorer 4.5','Mac OS 8-9','','X'),(48,'Tasman','Internet Explorer 5.1','Mac OS 7.6-9','1','C'),(49,'Tasman','Internet Explorer 5.2','Mac OS 8-X','1','C'),(50,'Misc','NetFront 3.1','Embedded devices','','C'),(51,'Misc','NetFront 3.4','Embedded devices','','A'),(52,'Misc','Dillo 0.8','Embedded devices','','X'),(53,'Misc','Links','Text only','','X'),(54,'Misc','Lynx','Text only','','X'),(55,'Misc','IE Mobile','Windows Mobile 6','','C'),(56,'Misc','PSP browser','PSP','','C'),(57,'Other browsers','All others','','','U');
/*!40000 ALTER TABLE `tc_rendering_engines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-28 19:51:25
