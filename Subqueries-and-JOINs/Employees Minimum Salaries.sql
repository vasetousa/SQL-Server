USE [SoftUni]

SELECT 
e.[EmployeeID], 
e.[FirstName],
e.[ManagerID],
e2.[FirstName] AS [ManagerName]
FROM
[Employees] AS e
LEFT JOIN [Employees] AS e2 ON e.[ManagerID] = e2.[EmployeeID]
WHERE e.[ManagerID] = 3 OR e.[ManagerID] = 7
ORDER BY [EmployeeID] ASC
