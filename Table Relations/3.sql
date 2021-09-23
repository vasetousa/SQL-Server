--3
USE [Table Relations]
GO

CREATE TABLE [Students]
	(
	[StudentID] int PRIMARY KEY IDENTITY NOT NULL
	,[Name] varchar(20) NOT NULL
	)

CREATE TABLE [Exams]
	(
	[ExamID] int PRIMARY KEY IDENTITY(101, 1) NOT NULL
	,[Name] varchar(20) NOT NULL
	)

CREATE TABLE [StudentsExams]
	(
	[StudentID] int FOREIGN KEY REFERENCES [Students]([StudentID]) NOT NULL
	,[ExamID] int FOREIGN KEY REFERENCES [Exams]([ExamID]) NOT NULL
	-- CONSTRAINT [PK_StudentsExams] PRIMARY KEY ([StudentID], [ExamID])
	PRIMARY KEY ([StudentID], [ExamID])
	)


INSERT INTO [Students]([Name])
VALUES
	('Mila')
	,('Toni')
	,('Ron')

INSERT INTO [Exams]([Name])
VALUES
	('SpringMVC')
	,('Neo4j')
	,('Oracle 11g')

INSERT INTO [StudentsExams]([StudentID], [ExamID])
VALUES
	(1,	 101)
	,(1, 102)
	,(2, 101)
	,(3, 103)
	,(2, 102)
	,(2, 103)
