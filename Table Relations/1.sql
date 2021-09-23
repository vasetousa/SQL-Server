--1
USE master
GO
CREATE DATABASE [Table Relations]
GO

USE [Table Relations]
GO

CREATE TABLE [Passports]
	(
	   [PassportID] int NOT NULL PRIMARY KEY IDENTITY(101, 1)
      ,[PassportNumber] varchar(8) NOT NULL
	)

INSERT INTO [Passports]([PassportNumber])
VALUES
	('N34FG21B'),
	('K65LO4R7'),
	('ZE657QP2')

CREATE TABLE [Persons]
	(
	   [PersonID] int NOT NULL PRIMARY KEY IDENTITY 
      ,[FirstName] varchar(20) NOT NULL
      ,[Salary] decimal(10, 2) NOT NULL
      ,[PassportID] int FOREIGN KEY REFERENCES [Passports]([PassportID]) NOT NULL
	)

INSERT INTO [Persons]([FirstName], [Salary], [PassportID])
VALUES
	('Roberto', 43300.00, 101),
	('Tom', 56100.00, 102),
	('Yana', 60200.00, 103)