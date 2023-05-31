select financing,sumworkerssalary.filmName,(sumworkerssalary.total_rent + sumphotographysiterent.total_rent)
from sumphotographysiterent
join sumworkerssalary
on sumworkerssalary.filmName = sumphotographysiterent.filmName
join filmsdistributioncompany
on filmsdistributioncompany.filmName = sumworkerssalary.filmName
having filmName = 'Jurassic Park';