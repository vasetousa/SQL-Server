-- 10
USE [master]
GO

CREATE TABLE [Users]
	(
	[Id] bigint PRIMARY KEY IDENTITY,
	[Username] nvarchar(30) NOT NULL UNIQUE,
	[Password] varchar(26) NOT NULL CHECK [Password] >= 5,	
	[ProfilePicture] varbinary(MAX),
	CHECK (DATALENGTH([ProfilePicture]) <= 900000),
	[LastLoginTime] DATETIME2,
	[IsDeleted] BIT NOT NULL
	)

INSERT INTO [Users] ([Username], [Password], [LastLoginTime], [IsDeleted])
VALUES
	('Pesho', 'asdfdsexsd', '21:13:45', 0),
	('Gosho', 'rtdgfdsw', '12:14:47', 0),
	('Iva', 'lllkjuf', '15:21:55', 0),
	('Hasan', 'gtg443sdd', '07:33:19', 0),
	('Valentina', '111sdefds@', '11:44:08', 0)