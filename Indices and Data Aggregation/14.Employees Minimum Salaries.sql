USE [SoftUni]


SELECT
[DepartmentID], MIN([Salary]) AS [MinimumSalary]
    FROM
	     [Employees]
   WHERE [HireDate] > '2000-01-01'
GROUP BY [DepartmentID]
  HAVING [DepartmentID] IN (2,5,7)
ORDER BY [DepartmentID]
