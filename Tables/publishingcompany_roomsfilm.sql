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
-- Table structure for table `roomsfilm`
--

DROP TABLE IF EXISTS `roomsfilm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roomsfilm` (
  `type` varchar(255) NOT NULL,
  `filmName` varchar(255) NOT NULL,
  `meetingDate` date NOT NULL,
  `meetingTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type`,`filmName`),
  KEY `filmName_fKey_idx` (`filmName`) /*!80000 INVISIBLE */,
  CONSTRAINT `filmName_fKey4` FOREIGN KEY (`filmName`) REFERENCES `films` (`filmname`),
  CONSTRAINT `type_fKey` FOREIGN KEY (`type`) REFERENCES `room` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomsfilm`
--

LOCK TABLES `roomsfilm` WRITE;
/*!40000 ALTER TABLE `roomsfilm` DISABLE KEYS */;
INSERT INTO `roomsfilm` VALUES ('Costume Room','Despicable Me','2023-04-15',''),('Green Room','Despicable Me','2023-04-13',''),('Green Room','Meet the Parents','2023-04-13',''),('Lighting Room','Despicable Me','2023-04-16',''),('Makeup Room','E.T. the Extra-Terrestrial','2023-04-17',''),('Makeup Room','Fast and Furious','2023-04-17',''),('Prop Room','E.T. the Extra-Terrestrial','2023-04-18',''),('Sound Room','Fast and Furious','2023-04-19',''),('Storage Room','Fast and Furious','2023-04-20','');
/*!40000 ALTER TABLE `roomsfilm` ENABLE KEYS */;
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
