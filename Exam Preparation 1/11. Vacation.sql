USE Airport
GO

CREATE FUNCTION udf_CalculateTickets(@origin VARCHAR(50), @destination VARCHAR(50), @peopleCount INT) 
   RETURNS VARCHAR(50) AS
BEGIN
        IF (@peopleCount <= 0) RETURN 'Invalid people count!'
        IF (NOT EXISTS (SELECT 1 FROM [Flights] WHERE [Origin] = @origin AND [Destination] = @destination))
    RETURN 'Invalid flight!'
    RETURN CONCAT('Total price ', (SELECT TOP(1) ts.[Price] FROM [Tickets] AS ts 
      JOIN [Flights] AS f ON ts.[FlightId] = f.[Id]
     WHERE f.[Origin] = @origin AND f.Destination = @destination) * @peopleCount)
END
 
 SELECT dbo.udf_CalculateTickets('Kolyshley','Rancabolang', 33)