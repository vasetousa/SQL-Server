USE [SoftUni]
GO

CREATE OR ALTER PROCEDURE usp_GetHoldersWithBalanceHigherThan @number MONEY
       AS
   SELECT
		  ah.[FirstName] AS [First Name], ah.[LastName] AS [Last Name]
     FROM
		  [AccountHolders] AS ah
     JOIN [AccountHolderId] AS ahi ON ah.[Id] = ahi.[Id]
    WHERE SUM(ahi.[Balance]) > @number
 ORDER BY ah.[FirstName] ASC, ah.[LastName] ASC


CREATE FUNCTION udf_EmployeeListByDepartment(@DepName nvarchar(20))RETURNS @result TABLE(    FirstName nvarchar(50) NOT NULL,    LastName nvarchar(50) NOT NULL,    DepartmentName nvarchar(20) NOT NULL) ASBEGIN    WITH Employees_CTE (FirstName, LastName, DepartmentName)    AS(        SELECT e.FirstName, e.LastName, d.[Name]        FROM Employees AS e         LEFT JOIN Departments AS d ON d.DepartmentID = e.DepartmentID)    INSERT INTO @result SELECT FirstName, LastName, DepartmentName       FROM Employees_CTE WHERE DepartmentName = @DepName    RETURNEND