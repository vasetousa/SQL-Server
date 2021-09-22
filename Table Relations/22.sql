-- 22
USE [SoftUni]
GO

UPDATE [Employees]
SET [Salary] += [Salary] * 0.10
SELECT [Salary] FROM [Employees]
