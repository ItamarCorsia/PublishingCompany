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
-- Temporary view structure for view `sumphotographysiterent`
--

DROP TABLE IF EXISTS `sumphotographysiterent`;
/*!50001 DROP VIEW IF EXISTS `sumphotographysiterent`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `sumphotographysiterent` AS SELECT 
 1 AS `filmName`,
 1 AS `total_rent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avgfinancinggenre`
--

DROP TABLE IF EXISTS `avgfinancinggenre`;
/*!50001 DROP VIEW IF EXISTS `avgfinancinggenre`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `avgfinancinggenre` AS SELECT 
 1 AS `genre`,
 1 AS `avg(financing)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sumworkerssalary`
--

DROP TABLE IF EXISTS `sumworkerssalary`;
/*!50001 DROP VIEW IF EXISTS `sumworkerssalary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `sumworkerssalary` AS SELECT 
 1 AS `filmName`,
 1 AS `total_rent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `locationsshotsamedate`
--

DROP TABLE IF EXISTS `locationsshotsamedate`;
/*!50001 DROP VIEW IF EXISTS `locationsshotsamedate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `locationsshotsamedate` AS SELECT 
 1 AS `location1`,
 1 AS `location2`,
 1 AS `startFilmingDays`,
 1 AS `endFilmingDays`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `maxavgminofcost`
--

DROP TABLE IF EXISTS `maxavgminofcost`;
/*!50001 DROP VIEW IF EXISTS `maxavgminofcost`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `maxavgminofcost` AS SELECT 
 1 AS `genre`,
 1 AS `avgfilmsdistributioncompanyfinancing`,
 1 AS `maxfilmsdistributioncompanyfinancing`,
 1 AS `minfilmsdistributioncompanyfinancing`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!50001 DROP VIEW IF EXISTS `statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `statistics` AS SELECT 
 1 AS `genre`,
 1 AS `avgfilmsdistributioncompanyfinancing`,
 1 AS `maxfilmsdistributioncompanyfinancing`,
 1 AS `minfilmsdistributioncompanyfinancing`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `sumphotographysiterent`
--

/*!50001 DROP VIEW IF EXISTS `sumphotographysiterent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sumphotographysiterent` AS select `f`.`filmName` AS `filmName`,sum(`ps`.`rentByHour`) AS `total_rent` from ((`photographysites` `ps` join `filmsphotographysites` `fps` on((`ps`.`locName` = `fps`.`locName`))) join `films` `f` on((`fps`.`filmName` = `f`.`filmName`))) group by `f`.`filmName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avgfinancinggenre`
--

/*!50001 DROP VIEW IF EXISTS `avgfinancinggenre`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avgfinancinggenre` AS select `films`.`genre` AS `genre`,avg(`filmsdistributioncompany`.`financing`) AS `avg(financing)` from (`filmsdistributioncompany` join `films` on((`films`.`filmName` = `filmsdistributioncompany`.`filmName`))) group by `films`.`genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sumworkerssalary`
--

/*!50001 DROP VIEW IF EXISTS `sumworkerssalary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sumworkerssalary` AS select `f`.`filmName` AS `filmName`,sum(`ps`.`salary`) AS `total_rent` from ((`workers` `ps` join `workersfilm` `fps` on((`ps`.`workerid` = `fps`.`workerId`))) join `films` `f` on((`fps`.`filmName` = `f`.`filmName`))) group by `f`.`filmName` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `locationsshotsamedate`
--

/*!50001 DROP VIEW IF EXISTS `locationsshotsamedate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `locationsshotsamedate` AS select `f1`.`locName` AS `location1`,`f2`.`locName` AS `location2`,`f1`.`startFilmingDays` AS `startFilmingDays`,`f1`.`endFilmingDays` AS `endFilmingDays` from (`filmsphotographysites` `f1` join `filmsphotographysites` `f2` on(((`f1`.`startFilmingDays` = `f2`.`startFilmingDays`) and (`f1`.`endFilmingDays` = `f2`.`endFilmingDays`) and (`f1`.`locName` < `f2`.`locName`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `maxavgminofcost`
--

/*!50001 DROP VIEW IF EXISTS `maxavgminofcost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `maxavgminofcost` AS select `films`.`genre` AS `genre`,avg(`films`.`cost`) AS `avgfilmsdistributioncompanyfinancing`,max(`films`.`cost`) AS `maxfilmsdistributioncompanyfinancing`,min(`films`.`cost`) AS `minfilmsdistributioncompanyfinancing` from `films` group by `films`.`genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statistics`
--

/*!50001 DROP VIEW IF EXISTS `statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `statistics` AS select `films`.`genre` AS `genre`,avg(`filmsdistributioncompany`.`financing`) AS `avgfilmsdistributioncompanyfinancing`,max(`filmsdistributioncompany`.`financing`) AS `maxfilmsdistributioncompanyfinancing`,min(`filmsdistributioncompany`.`financing`) AS `minfilmsdistributioncompanyfinancing` from (`filmsdistributioncompany` join `films` on((`films`.`filmName` = `filmsdistributioncompany`.`filmName`))) group by `films`.`genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping routines for database 'publishingcompany'
--
/*!50003 DROP PROCEDURE IF EXISTS `calculateFilmDays` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculateFilmDays`(IN film_name varchar(255))
BEGIN
	declare remaining_financing int (11);
    
    select (fdc.financing - sws.total_rent - spr.total_rent) Into remaining_financing
	from filmsdistributioncompany fdc
	Left join sumworkerssalary sws on fdc.filmName = sws.filmName
    left join sumphotographysiterent spr on fdc.filmName = spr.filmName
    where fdc.filmName = film_name;

	select ps.locName as photographySite,
    remaining_financing /ps.rentByHour / 24 as numDays
    
    from photographysites ps;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `checkFilmCostFinancing` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkFilmCostFinancing`(In fName varchar(255))
BEGIN
	declare filmCost decimal(10,2);
    declare companyFinancing decimal(10,2);
    declare financingCoverage varchar(10);
    
    select cost into filmCost
    from films
    where fName = films.filmName;
    
    select financing into companyFinancing 
    from filmsdistributioncompany
    where fName = filmsdistributioncompany.filmName;
    
    if filmCost <= companyFinancing then 
		set financingCoverage = 'Yes';
	else	
		set financingCoverage = 'No';
	End if;
    
    select financingCoverage as result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAvailablePhoto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailablePhoto`( in startDate Date, IN endDate Date)
BEGIN

	select distinct locName
	from filmsphotographysites
    where filmsphotographysites.startFilmingDays > endDate or filmsphotographysites.endFilmingDays < startDate;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAvailableRooms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailableRooms`(In meetingDate Date)
BEGIN

	select type
	from roomsFilm
	where meetingDate = meetingDate
    and type not in ( 
    select type 
    from roomsFilm 
    where roomsFilm.meetingDate = meetingDate);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAvailableWorkers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailableWorkers`(In rollOfWorkerInFilm varchar(45), in startDate Date, IN endDate Date)
BEGIN

	select * 
	from workersFilm
	join workers
	on workers.workerId = workersFilm.workerId
	having workersFilm.rollOfWorkerInFilm = rollOfWorkerInFilm
	and workersFilm.startDate < endDate and workersFilm.endDate < startDate; 
END ;;
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

-- Dump completed on 2023-06-01  1:28:53
