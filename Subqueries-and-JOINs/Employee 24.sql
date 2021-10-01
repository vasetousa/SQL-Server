USE [SoftUni]
GO

SELECT
epr.[EmployeeID],
e.[FirstName],
	CASE
		WHEN YEAR(pr.[StartDate]) >= 2005 THEN NULL
		ELSE pr.[Name]
	END
FROM
[Employees] AS e
JOIN [EmployeesProjects] AS epr ON e.[EmployeeID] = epr.[EmployeeID]
JOIN [Projects] AS pr ON epr.[ProjectID] = pr.[ProjectID]
WHERE e.EmployeeID = 24
ORDER BY epr.[EmployeeID] ASC
