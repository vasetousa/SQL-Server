--5
USE [Table Relations]
GO

CREATE TABLE [ItemTypes]
	(
	[ItemTypeID] int PRIMARY KEY IDENTITY NOT NULL,
	[Name]  varchar(50) NOT NULL,
	)

CREATE TABLE [Items]
	(
	[ItemID] int PRIMARY KEY IDENTITY NOT NULL,
	[Name]  varchar(50) NOT NULL,
	[ItemTypeID] int FOREIGN KEY REFERENCES [ItemTypes]([ItemTypeID])
	)

CREATE TABLE [Cities]
	(
	[CityID] int PRIMARY KEY IDENTITY NOT NULL,
	[Name]  varchar(50) NOT NULL,
	)

CREATE TABLE [Customers]
	(
	[CustomerID] int PRIMARY KEY IDENTITY NOT NULL,
	[Name]  varchar(50) NOT NULL,
	[Birthday] date,
	[CityID] int FOREIGN KEY REFERENCES [Cities]([CityID]) NOT NULL
	)

CREATE TABLE [Orders]
	(
	[OrderID] int PRIMARY KEY IDENTITY NOT NULL,
	[CustomerID] int FOREIGN KEY REFERENCES [Customers]([CustomerID]) NOT NULL
	)

	-- Mapper for Orders and Items
CREATE TABLE [OrderItems]
	(
	[OrderID] int FOREIGN KEY REFERENCES [Orders]([OrderID]) NOT NULL,
	[ItemID] int FOREIGN KEY REFERENCES [Items]([ItemID]) NOT NULL
	PRIMARY KEY (OrderID, ItemID)
	)
