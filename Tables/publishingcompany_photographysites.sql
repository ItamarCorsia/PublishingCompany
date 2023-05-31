CREATE DATABASE  IF NOT EXISTS `publishingcompany` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `publishingcompany`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: publishingcompany
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `photographysites`
--

DROP TABLE IF EXISTS `photographysites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `photographysites` (
  `locName` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `streetNum` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `ownerPhone` varchar(255) NOT NULL,
  `rentByHour` int(11) NOT NULL,
  PRIMARY KEY (`locName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photographysites`
--

LOCK TABLES `photographysites` WRITE;
/*!40000 ALTER TABLE `photographysites` DISABLE KEYS */;
INSERT INTO `photographysites` VALUES ('Beach Paradise','Honolulu','USA','Beach Road','963','Beach','123-456-7897',100),('City Skyline','Chicago','italy','Lake Shore Drive','246','Skyscraper','123-456-7893',300),('Desert Mirage','Las Vegas','israel','Desert Road','753','Desert','123-456-7896',350),('Garden Oasis','Miami','israel','Garden Ave','159','Garden','123-456-7895',30),('Historic Monument','Washington D.C.','USA','Monument Ave','159','Monument','123-456-7898',80),('Mountain Peak','Denver','USA','Mountain Drive','789','Mountain','123-456-7892',100),('Park Picnic','San Francisco','USA','Park Blvd','753','Park','123-456-7899',120),('Rustic Barn','Austin','USA','Country Road','369','Barn','123-456-7894',12),('Scenic View','New York','USA','5th Ave','123','Outdoor','123-456-7890',14),('Sunset Spot','Los Angeles','USA','Sunset Blvd','456','Beach','123-456-7891',140);
/*!40000 ALTER TABLE `photographysites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01  1:28:52
