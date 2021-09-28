--11
USE [SoftUni]
GO

SELECT * FROM
(SELECT [EmployeeID],	[FirstName], [LastName], [Salary], 
		DENSE_RANK() OVER (PARTITION BY [Salary] ORDER BY [EmployeeID]) AS [DRank]
	FROM Employees
	WHERE [Salary] BETWEEN 10000 AND 50000) AS [RankCol]
	WHERE [DRANK] = 2
	ORDER BY Salary DESC
