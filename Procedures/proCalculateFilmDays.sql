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

END