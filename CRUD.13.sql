-- 13
USE SoftUni
GO

SELECT TOP 5 [FirstName], [LastName]
FROM [dbo].[Employees]
WHERE [Salary] > 50000
ORDER BY [Salary] DESC