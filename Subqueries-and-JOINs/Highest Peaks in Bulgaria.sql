USE [Geography]
GO

SELECT 
c.[CountryCode],
m.[MountainRange],
p.[PeakName],
p.[Elevation]
FROM [Peaks] AS p
JOIN [Mountains] AS m ON p.[MountainId] = m.[Id]
JOIN [MountainsCountries] AS mc ON m.[Id] = mc.[MountainId]
JOIN [Countries] AS c ON mc.[CountryCode] = c.[CountryCode]
WHERE mc.[CountryCode] = 'BG' AND p.[Elevation] > 2835
ORDER BY p.[Elevation] DESC


SELECT 
c.CountryCode,
m.MountainRange,
p.PeakName,
p.Elevation
FROM MountainsCountries AS mc
INNER JOIN Countries AS c ON c.CountryCode = mc.CountryCode
INNER JOIN Mountains AS m ON mc.MountainId = m.Id
INNER JOIN Peaks AS p ON p.MountainId = m.Id
WHERE c.CountryCode = 'BG' AND p.Elevation >= 2835
ORDER BY p.Elevation DESC