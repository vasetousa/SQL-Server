-- 17
USE SoftUni
GO

CREATE VIEW [v_EmployeeNameJobTitle] AS
-- SELECT CONCAT([FirstName], ' ', [MiddleName], ' ', [LastName]) AS [Full Name], [JobTitle] AS [Job Title]
SELECT CONCAT([FirstName], ' ', ISNULL([MiddleName], ' '), ' ', [LastName]) AS [Full Name], [JobTitle] AS [Job Title]
FROM [dbo].[Employees]
