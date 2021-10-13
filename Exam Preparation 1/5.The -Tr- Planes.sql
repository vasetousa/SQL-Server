USE Airport

	SELECT 
	*
	  FROM
		   [Planes]
	 WHERE 
		   [Name] LIKE '%Tr%'
  ORDER BY [Id] ASC, [Name] ASC, [Seats] ASC, [Range] ASC