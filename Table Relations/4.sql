--4
USE [Table Relations]
GO

CREATE TABLE [Teachers]
	(
	[TeacherID] int PRIMARY KEY IDENTITY(101, 1) NOT NULL,
	[Name] varchar(20) NOT NULL,
	[ManagerID] int	FOREIGN KEY REFERENCES [Teachers]([TeacherID])
	)

INSERT INTO [Teachers]([Name], [ManagerID])
VALUES
	('John', NULL)
	,('Maya', 106)
	,('Silvia', 106)
	,('Ted', 105)
	,('Mark', 101)
	,('Freta', 101)

