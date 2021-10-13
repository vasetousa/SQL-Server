USE Airport

SElECT 
pl.[Name], 
pl.[Seats],
COUNT(t.[Id]) AS [Passengers Count]
FROM
[Planes] AS pl
LEFT JOIN [Flights] AS f ON f.[PlaneId] = pl.[Id]
LEFT JOIN [Tickets] AS t ON f.[Id] = t.[FlightId]
GROUP BY pl.[Id], pl.[Name], pl.[Seats]
ORDER BY [Passengers Count] DESC, pl.[Name], pl.[Seats]
