--11
USE [SoftUni]
GO

SELECT *
	      FROM

			    (SELECT
							e.[EmployeeID], 
							e.[FirstName],
							e.[LastName],
							e.[Salary],
			DENSE_RANK() OVER (PARTITION BY e.[Salary] ORDER BY e.[EmployeeID]) AS [Rank]
					FROM
							  [Employees] AS e
					WHERE	e.[Salary] BETWEEN 10000 AND 50000
			         ) AS Res

   WHERE [Rank] = 2
ORDER BY [Salary] DESC

