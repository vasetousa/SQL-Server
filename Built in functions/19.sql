--19
USE [master]
GO
CREATE DATABASE [People]
GO
USE [People]
GO

CREATE TABLE [People]
	(	
	   [Id] int IDENTITY PRIMARY KEY NOT NULL
      ,[Name] varchar(15) NOT NULL
      ,[Birthdate] varchar(25) NOT NULL
	)

INSERT INTO [People]([Name], [Birthdate])
VALUES
	('Victor', '2000-12-07 00:00:00.000'),
	('Steven', '1992-09-10 00:00:00.000'),
	('Stephen', '1910-09-19 00:00:00.000'),
	('John', '2010-01-06 00:00:00.000')


SELECT
[Name],
DATEPART(YEAR, GETDATE()) - DATEPART(YEAR, [Birthdate]) AS [Age in Years],
DATEPART(MONTH, GETDATE()) - DATEPART(MONTH, [Birthdate]) AS [Age in Months],
DATEPART(MINUTE, GETDATE()) - DATEPART(MINUTE, [Birthdate]) AS [Age in Minutess]
FROM
[People]
