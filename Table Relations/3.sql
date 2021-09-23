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
	[StudentID] int FOREIGN KEY REFERENCES [Students]([StudentID])
	,[ExamID] int FOREIGN KEY REFERENCES [Exams]([ExamID])
	CONSTRAINT [PK_StudentsExams] PRIMARY KEY ([StudentID], [ExamID])
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
