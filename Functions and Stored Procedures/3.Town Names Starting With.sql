-- 3
USE [SoftUni]
GO


CREATE OR ALTER PROC usp_GetTownsStartingWith @City varchar(25)
AS
SELECT 
t.[Name] AS Town
FROM
[Towns] AS t
WHERE LEFT(t.[Name], LEN(@City)) = LOWER(@City)
GO

EXEC usp_GetTownsStartingWith 'S'