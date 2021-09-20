-- 21
USE SoftUni
GO

SELECT * 
FROM [dbo].[Employees]
WHERE [DepartmentID] IN (1, 2, 4, 11)

UPDATE [Employees]
SET [Salary] += [Salary] * 0.12
WHERE [DepartmentID] IN (1, 2, 4, 11)

SELECT [Salary] 
FROM [Employees]

