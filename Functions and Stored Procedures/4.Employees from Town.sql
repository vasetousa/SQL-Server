-- 4
USE [SoftUni]
GO


CREATE OR ALTER PROC usp_GetEmployeesFromTown @CityName varchar(25)
AS
SELECT 
e.[FirstName],
e.[LastName]
FROM
[Employees] AS e
LEFT JOIN [Addresses] as a ON e.[AddressID] = a.[AddressID]
LEFT JOIN [Towns] as t ON a.[TownID] = t.[TownID]
WHERE t.[Name] = @CityName
GO

EXEC usp_GetEmployeesFromTown 'Sofia'