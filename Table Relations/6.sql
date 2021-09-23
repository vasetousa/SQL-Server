--6
CREATE DATABASE [University]
GO
USE [University]
GO

CREATE TABLE [Subjects]
	(
	[SubjectID] int PRIMARY KEY IDENTITY NOT NULL,
	[SubjectName]  varchar(50) NOT NULL
	)

CREATE TABLE [Majors]
	(
	[MajorID] int PRIMARY KEY IDENTITY NOT NULL,
	[Name]  varchar(50) NOT NULL
	)

CREATE TABLE [Students]
	(
	[StudentID] int PRIMARY KEY IDENTITY NOT NULL,
	[StudentNumber]  int NOT NULL,
	[StudentName]  varchar(50) NOT NULL,
	[MajorID]  int FOREIGN KEY REFERENCES [Majors]([MajorID]) NOT NULL
	)

CREATE TABLE [Payments]
	(
	[PaymentID] int PRIMARY KEY IDENTITY NOT NULL,
	[PaymentDate]  DATE,
	[PaymentAmount]  int NOT NULL,
	[StudentID]  int FOREIGN KEY REFERENCES [Students]([StudentID]) NOT NULL
	)

CREATE TABLE [Agenda]
	(
	[StudentID] int FOREIGN KEY REFERENCES [Students]([StudentID]) NOT NULL,
	[SubjectID]  int FOREIGN KEY REFERENCES [Subjects]([SubjectID]) NOT NULL,
	PRIMARY KEY ([StudentID], [SubjectID])
	)