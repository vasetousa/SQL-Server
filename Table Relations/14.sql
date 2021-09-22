-- 14
CREATE DATABASE [CarRental]
GO
USE [CarRental]
GO

CREATE TABLE [Categories]
	(
	[Id] int PRIMARY KEY NOT NULL, 
	[CategoryName] varchar(20) NOT NULL, 
	[DailyRate] int NOT NULL, 
	[WeeklyRate] int NOT NULL, 
	[MonthlyRate] int NOT NULL, 
	[WeekendRate] int NOT NULL
	)

CREATE TABLE [Cars]
	(
	[Id] int PRIMARY KEY NOT NULL, 
	[PlateNumber] varchar(20) NOT NULL, 
	[Manufacturer] varchar(20) NOT NULL, 
	[Model] varchar(20) NOT NULL, 
	[CarYear] int NOT NULL, 
	[CategoryId] int FOREIGN KEY REFERENCES [Categories]([Id]), 
	[Doors] int, 
	[Picture] varbinary(MAX), 
	[Condition] varchar(20) NOT NULL, 
	[Available] varchar(3) NOT NULL
	)

CREATE TABLE [Employees]
	(
	[Id] int PRIMARY KEY NOT NULL,
	[FirstName] varchar(20) NOT NULL,
	[LastName] varchar(20) NOT NULL, 
	[Title] varchar(50) NOT NULL, 
	[Notes] varchar(255)
	)

CREATE TABLE [Customers]
	(
	[Id] int PRIMARY KEY NOT NULL, 
	[DriverLicenceNumber] varchar(11) NOT NULL, 
	[FullName] varchar(50) NOT NULL, 
	[Address] varchar(50), 
	[City] varchar(50), 
	[ZIPCode] int,
	[Notes] varchar(255)
	)

CREATE TABLE [RentalOrders]
	(
	[Id] int PRIMARY KEY NOT NULL,
	[EmployeeId] int FOREIGN KEY REFERENCES [Employees]([Id]),
	[CustomerId] int FOREIGN KEY REFERENCES [Customers]([Id]),
	[CarId] int FOREIGN KEY REFERENCES [Cars]([Id]), 
	[TankLevel] varchar(10), 
	[KilometrageStart] varchar(10) NOT NULL, 
	[KilometrageEnd] varchar(10) NOT NULL, 
	[TotalKilometrage] varchar(10) NOT NULL, 
	[StartDate] varchar(10) NOT NULL, 
	[EndDate] varchar(10) NOT NULL, 
	[TotalDays] int NOT NULL,
	[RateApplied] decimal(5,2) NOT NULL,
	[TaxRate] decimal(5,2) NOT NULL,
	[OrderStatus] varchar(20) NOT NULL,
	[Notes] varchar(255)
	)


-- Insert info into tables
INSERT INTO [Categories]
VALUES
	(7, 'Business', 150, 1000, 4000, 300),
	(8, 'Comfort', 220, 1500, 6000, 410),
	(9, 'Sport', 199, 1350, 5850, 390)

INSERT INTO [Cars]
VALUES
	(4, 'MS-030-GG', 'Mercedess', 'E350', 2010, 7, 4, NULL, 'good', 'yes'),
	(5, 'HT-056-JJ', 'Audi', 'A8', 2011, 8, 4, NULL, 'good', 'yes'),
	(6, 'TR-304-UI', 'BMW', 'M5', 2014, 9, 4, NULL, 'excellent', 'yes')

INSERT INTO [Employees]
VALUES
	(20, 'Rodger', 'Federer', 'Manager', 'cool'),
	(21, 'Grigor', 'Dimitrov', 'Receptionist', 'lazy'),
	(22, 'Rafael', 'Nadal', 'maintenance', 'determent')

INSERT INTO [Customers]
VALUES
	(10, '31684298112', 'Novak Djokovic', '20 Sandal Creek', 'Orlando', '32824', 'Awfull attitude, bad customer'),
	(11, '32155678855', 'Andre Agassi', '135 Orange Ave', 'Albany', '12206', 'paid in full'),
	(12, '61678955673', 'Pete Sampras',  '13345 Secvoia Gigantea', 'Atlanta', '11809', 'owes $3000')

INSERT INTO [RentalOrders]
VALUES
	(1, 20, 10, 4, 'full', '889985346', '889985346', '889985346', '12/11/2021', '19/11/2021', 7, 875.00, 15.00, 'on time', 'paid'),
	(2, 21, 11, 5, 'full', '459014553', '459014553', '459014553', '08/11/2021', '11/11/2021', 3, 495.00, 15.00, 'prepairing', 'paid'),
	(3, 22, 12, 6, 'full',  '907771233', '907771233', '907771233', '10/11/2021', '14/11/2021', 4, 340.00, 15.00, 'ready for pick up', 'paid')