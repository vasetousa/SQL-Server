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


CREATE FUNCTION udf_EmployeeListByDepartment(@DepName nvarchar(20))