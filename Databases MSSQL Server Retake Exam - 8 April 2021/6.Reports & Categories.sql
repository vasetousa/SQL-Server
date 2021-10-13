USE[Service]
GO

SELECT 
r.[Description],
c.[Name] AS [CategoryName]
FROM
[Reports] as r
LEFT JOIN [Categories] as c ON r.[CategoryId] = c.[Id]
WHERE r.[CategoryId] IS NOT NULL
ORDER BY r.[Description] ASC, r.[CategoryId] ASC