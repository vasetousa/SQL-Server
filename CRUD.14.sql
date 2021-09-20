-- 14
USE SoftUni
GO

SELECT [FirstName], [LastName]
FROM [dbo].[Employees]
-- WHERE [DepartmentID] != 4
WHERE NOT [DepartmentID] = 4
