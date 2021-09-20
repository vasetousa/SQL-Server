-- 16
USE SoftUni
GO

CREATE VIEW [v_EmployeesSalaries] AS
SELECT [FirstName], [LastName], [Salary]
FROM [dbo].[Employees]

