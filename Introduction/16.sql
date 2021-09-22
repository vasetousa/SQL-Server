-- 16
USE master
GO
CREATE DATABASE [CRUD]
GO
USE [CRUD]
GO

CREATE TABLE [Towns]
	(
	[Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] varchar(20) NOT NULL
	)

CREATE TABLE [Addresses]
	(
	[Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[AddressText] varchar(255) NOT NULL,
	[TownId] int FOREIGN KEY (TownId) REFERENCES [Towns]([Id])
	)

CREATE TABLE [Departments]
	(
	[Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[Name] varchar(20) NOT NULL,
	)

CREATE TABLE [Employees]
	(
	[Id] int PRIMARY KEY IDENTITY(1, 1) NOT NULL,
	[FirstName] varchar(20) NOT NULL,
	[MiddleName] varchar(20), 
	[LastName] varchar(20) NOT NULL, 
	[JobTitle] varchar(50) NOT NULL, 
	[DepartmentId] int FOREIGN KEY (DepartmentId) REFERENCES [Departments]([Id]), 
	[HireDate] char(10) NOT NULL, 
	[Salary] decimal(6, 2), 
	[AddressId] int FOREIGN KEY (AddressId) REFERENCES [Addresses]([Id])
	)

