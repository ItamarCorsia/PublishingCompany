CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailableWorkers`(In rollOfWorkerInFilm varchar(45), in startDate Date, IN endDate Date)
BEGIN

	select * 
	from workersFilm
	join workers
	on workers.workerId = workersFilm.workerId
	having workersFilm.rollOfWorkerInFilm = rollOfWorkerInFilm
	and workersFilm.startDate < endDate and workersFilm.endDate < startDate; 
END