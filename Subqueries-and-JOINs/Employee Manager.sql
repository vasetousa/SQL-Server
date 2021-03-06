USE [SoftUni]
GO

SELECT 
e.[EmployeeID],
e.[FirstName],
e.[ManagerID],
me.[FirstName] AS [ManagerName]
FROM
[Employees] AS e
JOIN [Employees] AS me ON me.[EmployeeID] = e.[ManagerID]
WHERE e.[ManagerID] IN (3,7)
ORDER BY e.[EmployeeID]
