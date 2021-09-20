-- 10
USE SoftUni
GO

SELECT CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName]) AS
[Full Name]
FROM [dbo].[Employees]
WHERE [Salary] = 12500 OR [Salary] = 14000 OR [Salary] =25000 OR [Salary] = 23600