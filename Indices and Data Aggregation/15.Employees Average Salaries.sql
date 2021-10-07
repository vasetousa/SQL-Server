USE [SoftUni]

SELECT *
INTO [EmpSalaryMoreThan30000]
FROM [Employees]
WHERE [Salary] > 30000

DELETE 
[EmpSalaryMoreThan30000]
WHERE [ManagerID] = 42

UPDATE [EmpSalaryMoreThan30000]
SET [Salary] += 5000
WHERE [DepartmentID] = 1

SELECT [DepartmentID], AVG([Salary]) AS [AverageSalary]
FROM
[EmpSalaryMoreThan30000]
GROUP BY [DepartmentID]

