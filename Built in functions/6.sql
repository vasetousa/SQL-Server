--6
USE SoftUni
GO

SELECT [TownId], [Name]
FROM [Towns]
 WHERE [Name] LIKE '[BMEK]%' ORDER BY [Name] ASC
