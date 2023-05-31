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
END