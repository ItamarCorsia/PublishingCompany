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
-- Table structure for table `workersfilm`
--

DROP TABLE IF EXISTS `workersfilm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `workersfilm` (
  `workerId` int(11) NOT NULL,
  `filmName` varchar(255) NOT NULL,
  `rollOfWorkerInFilm` varchar(45) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  PRIMARY KEY (`workerId`,`filmName`),
  KEY `filmName_fKey_idx` (`filmName`) /*!80000 INVISIBLE */,
  CONSTRAINT `filmName_fKey` FOREIGN KEY (`filmName`) REFERENCES `films` (`filmname`),
  CONSTRAINT `workerId_fKey` FOREIGN KEY (`workerId`) REFERENCES `workers` (`workerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workersfilm`
--

LOCK TABLES `workersfilm` WRITE;
/*!40000 ALTER TABLE `workersfilm` DISABLE KEYS */;
INSERT INTO `workersfilm` VALUES (1,'Jurassic Park','Actor','2023-04-20','2023-04-23'),(2,'E.T. the Extra-Terrestrial','Director','2023-04-22','2023-04-24'),(3,'Despicable Me','Cinematographer','2023-04-26','2023-04-29'),(3,'The Mummy','Actor','2023-04-26','2023-04-29'),(4,'Meet the Parents','Actor','2023-04-21','2023-04-29'),(5,'The Bourne Identity','Actor','2023-04-20','2023-04-22'),(5,'The Mummy','Director','2023-04-20','2023-04-22'),(6,'The Bourne Identity','Actor','2023-04-23','2023-04-26'),(7,'Jurassic Park','Production Designer','2023-04-22','2023-04-26'),(8,'Jurassic Park','Director','2023-04-20','2023-04-22'),(9,'Jurassic Park','Cinematographer','2023-04-19','2023-04-20'),(11,'Jurassic Park','Visual Effects Supervisor','2023-04-29','2023-04-30');
/*!40000 ALTER TABLE `workersfilm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01  1:28:51
