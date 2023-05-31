select country,location1,location2,startFilmingDays,endFilmingDays
from locationsshotsamedate
join photographysites
on photographysites.locName = locationsshotsamedate.location1
where
(select country 
from photographysites 
where locName = locationsshotsamedate.location2)
=
(select country 
from photographysites 
where locName = locationsshotsamedate.location1);