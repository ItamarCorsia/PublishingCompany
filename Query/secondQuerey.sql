SELECT f.filmName, f.genre, fc.financing
FROM films f
INNER JOIN filmsdistributioncompany fc 
ON f.filmName = fc.filmName
having fc.financing > (
  SELECT AVG(avgf.avgfilmsdistributioncompanyfinancing)
  FROM avgfinancinggenre avgf
  WHERE f.genre = avgf.genre);