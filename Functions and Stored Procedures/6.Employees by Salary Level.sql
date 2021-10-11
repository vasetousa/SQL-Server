-- 6
USE [SoftUni]
GO



CREATE OR ALTER PROCEDURE usp_EmployeesBySalaryLevel (@Level varchar(7))
AS
SELECT
e.[FirstName],
e.[LastName]
FROM
[Employees] AS e
WHERE dbo.ufn_GetSalaryLevel([Salary]) = @Level


EXEC SoftUni.dbo.usp_EmployeesBySalaryLevel 'high'