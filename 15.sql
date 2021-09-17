-- 15
USE [master]
CREATE DATABASE [Hotel]
GO
USE [Hotel]
GO

-- Create Tables
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
	[AccountNumber] int PRIMARY KEY NOT NULL, 
	[FirstName] varchar(20) NOT NULL, 
	[LastName] varchar(20) NOT NULL, 
	[PhoneNumber] varchar(15) NOT NULL, 
	[EmergencyName] varchar(50), 
	[EmergencyNumber] varchar(20),
	[Notes] varchar(255)
	)

CREATE TABLE [RoomStatus]
	(
	[RoomStatus] varchar(10) NOT NULL,
	[Notes] varchar(255)
	)

CREATE TABLE [RoomTypes]
	(
	[RoomType] varchar(50) NOT NULL,
	[Notes] varchar(255)
	)

CREATE TABLE [BedTypes]
	(
	[BedType] varchar(50) NOT NULL,
	[Notes] varchar(255)
	)

CREATE TABLE [Rooms]
	(
	[RoomNumber] int NOT NULL,
	[RoomType] varchar(20) NOT NULL,
	[BedType] varchar(20) NOT NULL,
	[Rate] int NOT NULL,
	[RoomStatus] varchar(20) NOT NULL,
	[Notes] varchar(255)
	)

CREATE TABLE [Payments]
	(
	[Id] int PRIMARY KEY NOT NULL, 
	[EmployeeId] int FOREIGN KEY REFERENCES [Employees]([Id]), 
	[PaymentDate] varchar(10) NOT NULL, 
	[AccountNumber] int NOT NULL, 
	[FirstDateOccupied]  varchar(10) NOT NULL, 
	[LastDateOccupied]  varchar(10) NOT NULL, 
	[TotalDays] int NOT NULL, 
	[AmountCharged] decimal(10,2) NOT NULL, 
	[TaxRate] decimal(5,2) NOT NULL, 
	[TaxAmount] decimal(5,2) NOT NULL, 
	[PaymentTotal] decimal(10,2) NOT NULL, 
	[Notes] varchar(255)
	)

CREATE TABLE [Occupancies]
	(
	[Id] int PRIMARY KEY NOT NULL, 
	[EmployeeId] int FOREIGN KEY REFERENCES [Employees]([Id]), 
	[DateOccupied]  varchar(10) NOT NULL, 
	[AccountNumber] int NOT NULL,
	[RoomNumber] int NOT NULL, 
	[RateApplied] decimal(5,2) NOT NULL, 
	[PhoneCharge] decimal(10,2) NOT NULL, 
	[Notes] varchar(255)
	)

-- Insert info into tables
INSERT INTO [Employees]
VALUES
	(1, 'Rodger', 'Federer', 'Manager', 'cool'),
	(2, 'Grigor', 'Dimitrov', 'Receptionist', 'lazy'),
	(3, 'Rafael', 'Nadal', 'maintenance', 'determent')

INSERT INTO [Customers]
VALUES
	(1, 'Novak', 'Djokovic', '+31684298112', 'Sevda', '+31344325678', 'Awfull attitude'),
	(2, 'Andre', 'Agassi', '+13215567885', 'Sara', '+13216678909', 'Great person'),
	(3, 'Pete', 'Sampras', '+16167895567', 'Shonda', '+16169908772', 'Old, but wise')

INSERT INTO [RoomStatus]
VALUES
	('Occupied', 'change bulb'),
	('Vacant', 'clean bathtub'),
	('Maintenace', 'AC')

INSERT INTO [RoomTypes]
VALUES
	('One bedroom', 'cleaned'),
	('Two bedroom', 'cleaned'),
	('Studio', 'dirty')

INSERT INTO [BedTypes]
VALUES
	('One double bed', 'cleaned'),
	('Two double beds', 'cleaned'),
	('Sofa + one bed', 'ready')

INSERT INTO [Rooms]
VALUES
	(100, 'One bedroom', 'One double bed', 125, 'Occupied', '7 days'),
	(101, 'Two bedroom', 'Two double beds', 165, 'Vacant', 'ready for rent'),
	(102, 'Studio', 'Sofa + one bed', 85, 'Maintenance', '1 day')

INSERT INTO [Payments]
VALUES
	(1, 1, '19/11/2021', 889985346, '12/11/2021', '19/11/2021', 7, 875, 15.00, 131.25, 1006.25, 'paid'),
	(2, 2, '11/11/2021', 459014553, '08/11/2021', '11/11/2021', 3, 495, 15.00, 74.25, 569.25, 'paid'),
	(3, 3, '14/11/2021', 907771233, '10/11/2021', '14/11/2021', 4, 340, 15.00, 51.00, 391.00, 'paid')

INSERT INTO [Occupancies]
VALUES
	(1, 1, '12/11/2021', 889985346, 100, 125.00, 0.00,  'paid'),
	(2, 2, '08/11/2021', 459014553, 101, 165.00, 0.00, 'paid'),
	(3, 3, '10/11/2021', 907771233, 102, 85.00, 0.00, 'paid')