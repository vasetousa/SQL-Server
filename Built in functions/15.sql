--15
USE [DIablo]
GO

SELECT 
[Username],
SUBSTRING([Email], CHARINDEX('@', [Email], 1)+1, LEN([EMail])) 
AS [Email Provider]
FROM
[Users]
ORDER BY [Email Provider], [Username]
