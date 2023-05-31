CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailablePhoto`( in startDate Date, IN endDate Date)
BEGIN

	select distinct locName
	from filmsphotographysites
    where filmsphotographysites.startFilmingDays > endDate or filmsphotographysites.endFilmingDays < startDate;
END