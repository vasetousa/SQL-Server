USE Airport

SELECT 
CONCAT(p.[FirstName], ' ', p.[LastName]) AS [Full Name],
			f.[Origin], f.[Destination]
  FROM
			[Passengers] AS p
JOIN   [Tickets] AS t ON t.[PassengerId] = p.[Id]
JOIN   [Flights] AS f ON f.[Id] = t.[FlightId]
ORDER BY [Full Name] ASC, f.[Origin] ASC, f.[Destination] ASC