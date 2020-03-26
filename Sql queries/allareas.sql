Select Areas.Area, Areas.AreaName, COUNT (*) AS NumOccurred
FROM Areas
Group By Areas.AreaName, Areas.Area
ORDER BY AreaName ASC