Select Codes.IUCR, Codes.PrimaryDesc, Codes.SecondaryDesc, COUNT (CID) AS NumOccurred
FROM Crimes right JOIN Codes ON Crimes.IUCR = Codes.IUCR
Group By Codes.IUCR, Codes.PrimaryDesc, Codes.SecondaryDesc
ORDER BY PrimaryDesc ASC, SecondaryDesc ASC