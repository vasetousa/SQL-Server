USE [SoftUni]

SELECT TOP 10
e.[FirstName],
e.[LastName],
e.[DepartmentID]
FROM
[Employees] AS e
WHERE [Salary] >
	(SELECT 
	AVG([Salary]) AS [AvgSalary]
	FROM
	[Employees] AS esub
	WHERE esub.[DepartmentID] = e.[DepartmentID]
	GROUP BY [DepartmentID])
	ORDER BY [DepartmentID]