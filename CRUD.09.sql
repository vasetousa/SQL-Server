-- 9
USE SoftUni
GO

SELECT [FirstName], [LastName], [JobTitle]
FROM [dbo].[Employees]
WHERE [Salary] BETWEEN 20000 AND 30000