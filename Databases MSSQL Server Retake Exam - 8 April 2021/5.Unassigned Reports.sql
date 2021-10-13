USE[Service]
GO

SELECT 
[Description],
CONVERT(varchar, [OpenDate], 105) AS [OpenDate] 
FROM
[Reports] as r
WHERE [EmployeeId] is NULL
ORDER BY r.[OpenDate] ASC, r.[Description] ASC

