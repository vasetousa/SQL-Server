-- 2
USE [SoftUni]
GO


CREATE OR ALTER PROC usp_GetEmployeesSalaryAboveNumber @num DECIMAL(18, 4)
AS
SELECT 
e.[FirstName], e.[LastName]
FROM
[Employees] AS e
WHERE e.[Salary] >= @num

GO

EXEC usp_GetEmployeesSalaryAboveNumber 48100.0000