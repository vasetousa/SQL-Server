--3
USE SoftUni
GO

SELECT [FirstName]
FROM [Employees]
WHERE [DepartmentID] = 3 or  [DepartmentID] = 10 AND HireDate >= 1995 or HireDate <= 2005

