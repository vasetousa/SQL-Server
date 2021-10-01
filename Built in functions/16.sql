--16
USE [DIablo]
GO

SELECT 
[Username],
[IpAddress] AS [IP Address]
FROM
[Users]
WHERE [IpAddress] LIKE '[0-9][0-9][0-9].1%.%[0-9][0-9][0-9]' --'___.1%.%.___' 
ORDER BY [Username]