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
-- Table structure for table `filmsdistributioncompany`
--

DROP TABLE IF EXISTS `filmsdistributioncompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `filmsdistributioncompany` (
  `filmName` varchar(255) NOT NULL,
  `companyName` varchar(45) NOT NULL,
  `releasedate` date DEFAULT NULL,
  `financing` int(11) DEFAULT NULL,
  PRIMARY KEY (`filmName`,`companyName`),
  KEY `filmName_fKey_idx` (`filmName`) /*!80000 INVISIBLE */,
  KEY `companyName_fKey3_idx` (`companyName`),
  CONSTRAINT `companyName_fKey3` FOREIGN KEY (`companyName`) REFERENCES `distributioncompany` (`companyname`),
  CONSTRAINT `filmName_fKey3` FOREIGN KEY (`filmName`) REFERENCES `films` (`filmname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmsdistributioncompany`
--

LOCK TABLES `filmsdistributioncompany` WRITE;
/*!40000 ALTER TABLE `filmsdistributioncompany` DISABLE KEYS */;
INSERT INTO `filmsdistributioncompany` VALUES ('Despicable Me','ABC Distributors','2010-08-20',100000),('E.T. the Extra-Terrestrial','ABC Distributors','2010-03-20',80000),('Fast and Furious','GHI Distributors','2030-01-20',89000),('Jurassic Park','JKL Distributors','2000-01-20',3333),('Meet the Parents','JKL Distributors','2003-01-20',109000),('Meet the Parents','LMN Distributors','2003-01-20',109000),('The Bourne Identity','MNO Distributors','2013-01-20',199000),('The Fast and the Furious','PQR Distributors','2019-01-20',199000),('The Mummy','VWX Distributors','2016-01-20',100);
/*!40000 ALTER TABLE `filmsdistributioncompany` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_profitability` AFTER UPDATE ON `filmsdistributioncompany` FOR EACH ROW BEGIN
    DECLARE totalRentSalary DECIMAL(10,2);
    DECLARE financing DECIMAL(10,2);
    
   	set totalRentSalary = (
		select (sws.total_rent + spr.total_rent)
		from sumworkerssalary sws 
		join sumphotographysiterent spr on sws.filmName = spr.filmName
		where sws.filmName = NEW.filmName
	);
    
	set financing = (
		select fdc.financing
		from filmsdistributioncompany fdc
		where fdc.filmName = NEW.filmName
	);

   if totalRentSalary > financing then 
		update films
        set isItProfitable = 0 
		where filmName = NEW.filmName;
	end If;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01  1:28:52
