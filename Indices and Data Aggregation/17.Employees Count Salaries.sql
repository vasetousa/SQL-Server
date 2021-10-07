USE [SoftUni]

SELECT
	SUM([scounts]) AS [Count]
FROM (

SELECT
[DepartmentID],
COUNT([Salary]) AS scounts
FROM 
[Employees]
WHERE [ManagerID] IS NULL
GROUP BY [DepartmentID]) AS [NoManagerEmployees]

