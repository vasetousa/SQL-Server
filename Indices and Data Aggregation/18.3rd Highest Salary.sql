-- Variant 1
USE [SoftUni]

SELECT DISTINCT 
[DepartmentID], [Salary] AS [ThirdHighestSalary]
FROM
	(
	SELECT
d.[DepartmentID],
e.[Salary],
DENSE_RANK() OVER(PARTITION BY d.[DepartmentId] ORDER BY e.Salary DESC) AS [SalaryRank]
FROM
[Employees] AS e
RIGHT JOIN [Departments] AS d ON e.[DepartmentID] = d.[DepartmentID]
	) AS [SubQuery]
WHERE [SalaryRank] = 3
	
-- Variant 2
SELECT DISTINCT 
[DepartmentID], [Salary] AS [ThirdHighestSalary]
FROM
	(
	SELECT
e.[DepartmentID],
e.[Salary],
DENSE_RANK() OVER(PARTITION BY e.[DepartmentId] ORDER BY e.Salary DESC) AS [SalaryRank]
FROM
[Employees] AS e
	) AS [SubQuery]
WHERE [SalaryRank] = 3