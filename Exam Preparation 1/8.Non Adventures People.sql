USE Airport

SELECT 
			p.[FirstName],
			p.[LastName],
			p.[Age]
  FROM
			[Passengers] AS p
LEFT JOIN   [Tickets] AS t ON t.[PassengerId] = p.[Id]
LEFT JOIN   [Flights] AS f ON f.[Id] = t.[FlightId]
	WHERE	t.[Id] IS NULL
 ORDER BY	p.[Age] DESC, p.[FirstName] ASC, p.[LastName] ASC
