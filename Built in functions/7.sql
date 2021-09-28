--7
USE SoftUni
GO

SELECT [TownId], [Name]
FROM [Towns]
 WHERE [Name] NOT LIKE '[RBD]%' ORDER BY [Name] ASC
