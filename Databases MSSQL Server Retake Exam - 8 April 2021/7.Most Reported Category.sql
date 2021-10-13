USE[Service]
GO
		(
	  SELECT
				c.[Name] AS [CategoryName],
DENSE_RANK() OVER(PARTITION BY r.[CategoryId] ORDER BY r.[UserId] DESC, c.[Name] ASC) AS [ReportsNumber]
	    FROM
				[Categories] AS c
				LEFT JOIN [Reports] as r ON r.[CategoryId] = c.[Id]
				)

				NOT FINISHED 