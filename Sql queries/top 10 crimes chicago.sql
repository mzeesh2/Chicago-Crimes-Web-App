SELECT TOP 10 Crimes.IUCR, PrimaryDesc, SecondaryDesc, Count(*) AS NumCrimes,
ROUND((cast(COUNT(*) as decimal) / cast((SELECT COUNT(*) FROM Crimes) as decimal) * 100), 2)  AS totalCrimes, 
ROUND((sum(cast(Arrested as decimal))*100 / COUNT(*)),2) AS arrestedPercent
	FROM Crimes
	INNER JOIN Codes ON Crimes.IUCR = Codes.IUCR
	GROUP BY Crimes.IUCR, PrimaryDesc, SecondaryDesc
	ORDER BY Count(*) DESC;