USE Airport

SELECT 
	 CONCAT(p.[FirstName], ' ', p.[LastName]) AS [Full Name],
		   pl.[Name] AS [Plane Name],
	 CONCAT(f.[Origin], ' - ', f.[Destination]) AS [Trip],
		   lt.[Type] AS [Luggage Type]
			
  FROM
			[Tickets] AS t
JOIN   [Passengers] AS p ON p.[Id] = t.[PassengerId]
JOIN   [Flights] AS f ON f.[Id] = t.[FlightId]
JOIN   [Luggages] AS l ON t.[LuggageId] = l.[Id]
JOIN   [LuggageTypes] AS lt ON l.[LuggageTypeId] = lt.[Id]
JOIN   [Planes] AS pl ON f.[PlaneId] = pl.[Id]
 ORDER BY	[Full Name] ASC, [Plane Name] ASC, [Trip] ASC, [Luggage Type] ASC
