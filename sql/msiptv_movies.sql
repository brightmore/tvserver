CREATE DATABASE  IF NOT EXISTS `msiptv` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `msiptv`;
-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: msiptv
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.10.1

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `description` tinytext,
  `image_url` varchar(500) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `category_id` varchar(100) NOT NULL,
  `video_url` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Mr Bean','This sample demonstrates the basic interfaces available within Android that allow developers to playback various locally stored media files. It takes advantage of the VideoView and MediaController interfaces. VideoView enables the display of video, while ','/images/pic_1.jpg','2013','Action','/videos/handlerbars.mp4'),(2,'Endless love','This sample demonstrates the basic interfaces available within Android that allow developers to playback various locally stored media files. It takes advantage of the VideoView and MediaController interfaces. VideoView enables the display of video, while ','/images/pic_2.jpg','2014','Romantic','/videos/handlerbars.mp4'),(3,'Abducted ','This sample demonstrates the basic interfaces available within Android that allow developers to playback various locally stored media files. It takes advantage of the VideoView and MediaController interfaces. VideoView enables the display of video, while ','/images/pic_2.jpg','2014','Comedy','/videos/handlerbars.mp4'),(4,'Kingdom','This sample demonstrates the basic interfaces available within Android that allow developers to playback various locally stored media files. It takes advantage of the VideoView and MediaController interfaces. VideoView enables the display of video, while ','/images/pic_1.jpg','2014','Action','/videos/Ciara -- Body Party.mp4');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-22  9:57:03
