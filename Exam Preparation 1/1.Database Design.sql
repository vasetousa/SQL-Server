CREATE DATABASE Airport
GO
USE Airport

CREATE TABLE [Planes]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[Name] varchar(30) NOT NULL
	,[Seats] int NOT NULL
	,[Range] int NOT NULL
	)

CREATE TABLE [Flights]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[DepartureTime] DATETIME
	,[ArrivalTime] DATETIME
	,[Origin] varchar(50) NOT NULL
	,[Destination] varchar(50) NOT NULL
	,[PlaneId] int FOREIGN KEY REFERENCES [Planes]([Id]) NOT NULL
	)

CREATE TABLE [LuggageTypes]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[Type] varchar(30) NOT NULL
	)

CREATE TABLE [Passengers]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[FirstName] varchar(30) NOT NULL
	,[LastName] varchar(30) NOT NULL
	,[Age] int NOT NULL
	,[Address] varchar(30) NOT NULL
	,[PassportId] varchar(11) NOT NULL
	)

CREATE TABLE [Luggages]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[LuggageTypeId] int FOREIGN KEY REFERENCES [LuggageTypes]([Id]) NOT NULL
	,[PassengerId] int FOREIGN KEY REFERENCES [Passengers]([Id]) NOT NULL
	)

CREATE TABLE [Tickets]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[PassengerId] int FOREIGN KEY REFERENCES [Passengers]([Id]) NOT NULL
	,[FlightId] int FOREIGN KEY REFERENCES [Flights]([Id]) NOT NULL
	,[LuggageId] int FOREIGN KEY REFERENCES [luggages]([Id]) NOT NULL
	,[Price] DECIMAL(10,2) NOT NULL
	)
