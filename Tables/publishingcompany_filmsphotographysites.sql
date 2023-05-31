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
-- Table structure for table `filmsphotographysites`
--

DROP TABLE IF EXISTS `filmsphotographysites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filmsphotographysites` (
  `filmName` varchar(255) NOT NULL,
  `locName` varchar(255) NOT NULL,
  `startFilmingDays` date DEFAULT NULL,
  `endFilmingDays` date DEFAULT NULL,
  KEY `filmName_fKey_idx` (`filmName`) /*!80000 INVISIBLE */,
  KEY `locName_fKey1_idx` (`locName`),
  CONSTRAINT `filmName_fKey1` FOREIGN KEY (`filmName`) REFERENCES `films` (`filmname`),
  CONSTRAINT `locName_fKey1` FOREIGN KEY (`locName`) REFERENCES `photographysites` (`locname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmsphotographysites`
--

LOCK TABLES `filmsphotographysites` WRITE;
/*!40000 ALTER TABLE `filmsphotographysites` DISABLE KEYS */;
INSERT INTO `filmsphotographysites` VALUES ('Despicable Me','Beach Paradise','2023-04-11','2023-04-14'),('E.T. the Extra-Terrestrial','City Skyline','2023-04-13','2023-04-15'),('Fast and Furious','Desert Mirage','2023-04-16','2023-04-19'),('Meet the Parents','Garden Oasis','2023-04-16','2023-04-19'),('The Bourne Identity','Historic Monument','2023-04-20','2023-04-21'),('The Fast and the Furious','Mountain Peak','2023-04-22','2023-04-23'),('The Fast and the Furious','City Skyline','2023-04-13','2023-04-15'),('Jurassic Park','Beach Paradise','2023-04-11','2023-04-14'),('Jurassic Park','City Skyline','2023-04-13','2023-04-15');
/*!40000 ALTER TABLE `filmsphotographysites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01  1:28:53
