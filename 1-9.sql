-- 1
CREATE DATABASE [Minions]

-- One way to create table + PK
-- 2
CREATE TABLE [Minions] 
	(
    [Id] int NOT NULL PRIMARY KEY,
    [Name] nvarchar(255) NOT NULL,
    [Age] int
    )

CREATE TABLE [Towns]
	(
	Id int NOT NULL PRIMARY KEY,
	Name nvarchar(255) NOT NULL
	)

-- 3
ALTER TABLE [Minions]
ADD [TownId] int NOT NULL

ALTER TABLE [Minions]
ADD CONSTRAINT [FK_MinionsTownId] FOREIGN KEY (TownId) REFERENCES [Towns]([Id])

-- 4
INSERT INTO [Towns] ([Id], [Name]) 
VALUES
	(1, 'Sofia'),
	(2, 'Plovdiv'),
	(3, 'Varna')
	
INSERT INTO [Minions] ([Id], [Name], [Age], [TownId]) 
VALUES
	(1, 'Kevin', 22, 1),
	(2, 'Bob', 15, 3),
	(3, 'Steward', NULL, 2)

-- 5
TRUNCATE TABLE [Minions]

-- 6
DROP TABLE [Minions]
DROP TABLE [Towns]

-- 7
CREATE TABLE [People]
	(
	[Id] bigint PRIMARY KEY IDENTITY,
	[Name] nvarchar(200) NOT NULL,
	[Picture] varbinary(MAX),
	[Heigth] decimal(3, 2),
	[Weigth] int,
	[Gender] char NOT NULL,
	CHECK ([Gender] != 'm' or [Gender] != 'f'),
	[Birthdate] char(10) NOT NULL,
	[Biography] nvarchar(MAX)
	)

INSERT INTO [People] ([Name], [Heigth], [Weigth], [Gender], [Birthdate])
VALUES
	('Pesho', 1.76, 81, 'm', '06.06.1994'),
	('Gosho', 1.90, 90, 'm', '01.11.1992'),
	('Iva', 1.55, 55, 'f', '11.03.1979'),
	('Hasan', 1.80, 101, 'm', '10.09.1973'),
	('Valentina', 1.60, 57, 'f', '21.02.1997')


-- 8
CREATE TABLE [Users]
	(
	[Id] bigint PRIMARY KEY IDENTITY,
	[Username] nvarchar(30) NOT NULL UNIQUE,
	[Password] varchar(26) NOT NULL,
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

-- 9
ALTER TABLE [Users]
DROP CONSTRAINT [PK__Users__3214EC073FA6D5E2]

ALTER TABLE [Users]
ADD CONSTRAINT [PK_UserCompositeIdIUsername] PRIMARY KEY([Id], [Username])

