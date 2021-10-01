USE [SoftUni]
GO

SELECT TOP 3
e.[EmployeeID],
e.[FirstName]
FROM
[Employees] AS e
LEFT JOIN [EmployeesProjects] as ee ON e.[EmployeeID] = ee.[EmployeeID]
WHERE ee.[ProjectID] IS NULL
ORDER BY [EmployeeID] ASC