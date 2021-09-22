-- 13
USE [Movies]
GO

-- 13.1
CREATE TABLE [Directors] 
	(
	[Id] int NOT NULL PRIMARY KEY,
	[DirectorName] varchar(50) NOT NULL, 
	[Notes] varchar(255)
	)

-- 13.2
CREATE TABLE [Genres] 
	(
	[Id] int NOT NULL PRIMARY KEY,
	[CategoryName] varchar(50) NOT NULL, 
	[Notes] varchar(255)
	)

-- 13.3
CREATE TABLE [Categories] 
	(
	[Id] int NOT NULL PRIMARY KEY,
	[CategoryName] varchar(50) NOT NULL, 
	[Notes] varchar(255)
	)

-- 13.4
CREATE TABLE [Movies]
	(
	[Id] int NOT NULL PRIMARY KEY, 
	[Title] varchar(50) NOT NULL, 
	[DirectorId] int NOT NULL, 
	[CopyrightYear] int NOT NULL, 
	[Length] decimal(3, 2) NOT NULL, 
	[GenreId] int NOT NULL, 
	[CategoryId] int NOT NULL, 
	[Rating] int, 
	[Notes] varchar(255)
	)

ALTER TABLE [Movies]
ADD CONSTRAINT [FK_DIrectorId] FOREIGN KEY (DirectorId) REFERENCES [Directors]([Id])

ALTER TABLE [Movies]
ADD CONSTRAINT [FK_GenreId] FOREIGN KEY (GenreId) REFERENCES [Genres]([Id])

ALTER TABLE [Movies]
ADD CONSTRAINT [FK_CategoryId] FOREIGN KEY (CategoryId) REFERENCES [Categories]([Id])

INSERT INTO [Directors] ([Id], [DirectorName], [Notes])
VALUES
	(1, 'Hasan', 'Abrakadabra'),
	(2, 'Kolio', 'Nothing to say here'),
	(3, 'Ivan', 'I want to be free'),
	(4, 'Stefan', 'No country for old men'),
	(5, 'Dragan', 'Bob the spunge')

INSERT INTO [Genres] ([Id], [CategoryName], [Notes])
VALUES
	(5, 'Drama', 'Finish episode 4'),
	(6, 'Horror', 'Jason kills the messenger'),
	(7, 'Love Story', 'She finally gives him a blowjob'),
	(8, 'Comedy', 'Some funny momments in the house'),
	(9, 'Action', 'Rambo kills the russian general')

INSERT INTO [Categories] ([Id], [CategoryName], [Notes])
VALUES
	(10, 'kids', 'kids play around the table'),
	(11, 'familly', 'just for familly'),
	(12, 'educational', 'animals in the wild'),
	(13, 'historycal', 'the story of Leonardo'),
	(14, 'documentary', 'FBI in the crossfire again')

INSERT INTO [Movies] ([Id], [Title], [Directorid], [CopyrightYear], [Length], [GenreId], [CategoryId], [Rating], [Notes])
VALUES
	(20, 'Heat', 1, 2002, 2.30, 9, 11, 5, 'Robert De Niro is awesome'),
	(21, 'Batman', 3, 2014, 2.55, 9, 11, 5, 'I love Bale'),
	(22, 'Animal Planet', 4, 2021, 0.45, 7, 12, 3, 'Animals around the world'),
	(23, 'World War II', 5, 1998, 1.25, 9, 14, 3, 'War is bad'),
	(24, 'Everybody loves Raimond', 5, 1994, 1.32, 8, 11, 4, 'Old but good')
