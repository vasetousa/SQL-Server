-- 23
USE [Hotel]
GO

UPDATE [Payments]
SET [TaxRate] -= [TaxRate] * 0.03
SELECT [TaxRate] FROM [Payments]