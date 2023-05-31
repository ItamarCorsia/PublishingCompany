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
-- Table structure for table `distributioncompany`
--

DROP TABLE IF EXISTS `distributioncompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `distributioncompany` (
  `companyName` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `streetNum` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `DistributionType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`companyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributioncompany`
--

LOCK TABLES `distributioncompany` WRITE;
/*!40000 ALTER TABLE `distributioncompany` DISABLE KEYS */;
INSERT INTO `distributioncompany` VALUES ('ABC Distributors','New York','USA','5th Ave','1234','555-555-5555',' cinemas '),('DEF Distributors','Sydney','Australia','George St','1111','555-555-5559','cinemas'),('GHI Distributors','Berlin','Germany','Unter den Linden','2222','555-555-5560','cinemas'),('JKL Distributors','Rome','Italy','Via del Corso','3333','555-555-5561','cinemas'),('LMN Distributors','Tokyo','Japan','Ginza','5555','555-555-5558','cinemas '),('MNO Distributors','Moscow','Russia','Red Square','4444','555-555-5562','cinemas '),('PQR Distributors','Paris','France','Champs-Élysées','9876','555-555-5557','digital'),('VWX Distributors','Beijing','China','Wangfujing St','7777','555-555-5563','cinemas '),('XYZ Distributors','London','UK','Oxford St','4321','555-555-5556','digital'),('YZ Distributors','Mexico City','Mexico','Zócalo','6666','555-555-5564','cinemas');
/*!40000 ALTER TABLE `distributioncompany` ENABLE KEYS */;
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
