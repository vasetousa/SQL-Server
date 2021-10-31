USE [Bitbucket]

  SELECT DISTINCT
			[Id],
			[Name],		
			CONCAT([Size], 'KB') AS [Size],
			ParentId
	FROM
			[Files]
   WHERE NOT EXISTS	
	(
	SELECT ParentId FROM Files
	)

ORDER BY	[Id], [Name], [Size] DESC
