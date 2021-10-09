-- 6
USE [SoftUni]
GO

CREATE OR ALTER FUNCTION ufn_GetSalaryLevel(@salary MONEY)

RETURNS varchar(10)
AS
		BEGIN
			DECLARE @salaryLevel VARCHAR(10)IF (@Salary < 30000)    SET @salaryLevel = 'Low'ELSE IF(@Salary <= 50000)    SET @salaryLevel = 'Average'ELSE    SET @salaryLevel = 'High'RETURN @salaryLevel
		END
GO
