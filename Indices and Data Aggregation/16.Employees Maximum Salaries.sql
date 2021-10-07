USE [SoftUni]

SELECT
[DepartmentID], MAX([Salary]) AS [MaxSalary]
FROM 
[Employees]
--WHERE [Salary] NOT BETWEEN 30000 AND 70000
GROUP BY [DepartmentID]
HAVING Max([Salary]) < 30000 OR MAX([Salary]) > 70000

