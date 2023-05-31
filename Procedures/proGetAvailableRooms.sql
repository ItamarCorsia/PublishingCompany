CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAvailableRooms`(In meetingDate Date)
BEGIN

	select type
	from roomsFilm
	where meetingDate = meetingDate
    and type not in ( 
    select type 
    from roomsFilm 
    where roomsFilm.meetingDate = meetingDate);
    END