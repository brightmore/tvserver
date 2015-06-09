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
-- Table structure for table `groupedchannels`
--

DROP TABLE IF EXISTS `groupedchannels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groupedchannels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `GroupName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ChannelName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupedchannels`
--

LOCK TABLES `groupedchannels` WRITE;
/*!40000 ALTER TABLE `groupedchannels` DISABLE KEYS */;
INSERT INTO `groupedchannels` VALUES (1,'All','MBC1 HD'),(2,'All','MBC P VARIETY'),(3,'All','Joy TV'),(4,'All','Joy News'),(5,'All','Cine Afrik'),(6,'All','4 Kids'),(7,'All','CNN'),(8,'All','BBC NEWS'),(9,'All','Super Sports 3'),(10,'All','Super Sports 7'),(11,'All','NatGeo Wild'),(12,'All','Animal Planet'),(13,'All','Animal Planet'),(14,'News','CNN'),(15,'News','BBC NEWS'),(16,'English','MBC1 HD'),(17,'English','MBC P VARIETY'),(18,'English','Joy TV'),(19,'English','Joy News'),(20,'English','Cine Afrik'),(21,'English','4 Kids'),(22,'English','CNN'),(23,'English','BBC NEWS'),(24,'News','CNN'),(25,'News','CCTV'),(26,'News','France 24'),(27,'News','BBC NEWS'),(28,'Sports','Joy Sports'),(29,'Sports','Super Sports 3'),(30,'Sports','Super Sports 7'),(31,'Nature& Animals','NatGeo Wild'),(32,'Nature& Animals','Animal Planet'),(33,'Nature& Animals','Discovery'),(34,'Multi TV','Joy TV'),(35,'Multi TV','Joy News'),(36,'Multi TV','Cine Afrik'),(37,'Multi TV','4 Kids'),(38,'Multi TV','Adom TV'),(39,'Multi TV','Kessben Tv'),(40,'Multi TV','Channel 5'),(41,'Multi TV','ZTV'),(42,'Multi TV','Hit Tv'),(43,'Multi TV','Joy Sports'),(44,'Multi TV','Dominion Tv'),(45,'Multi TV','TV Gold'),(46,'Multi TV','ETV'),(47,'Multi TV','Peace Tv'),(48,'Multi TV','Angel Tv'),(49,'Multi TV','Precious Tv'),(50,'Multi TV','Royal Tv'),(51,'Multi TV','ATV'),(52,'Multi TV','Business Africa');
/*!40000 ALTER TABLE `groupedchannels` ENABLE KEYS */;
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
