USE [SoftUni]
GO

SELECT TOP 5
epr.[EmployeeID],
e.[FirstName],
pr.[Name] AS [ProjectName]
FROM
[Employees] AS e
JOIN [EmployeesProjects] AS epr ON e.[EmployeeID] = epr.[EmployeeID]
JOIN [Projects] AS pr ON epr.[ProjectID] = pr.[ProjectID]
WHERE pr.[StartDate] > '2002-08-13' AND pr.[EndDate] iS NULL
ORDER BY epr.[EmployeeID] ASC
