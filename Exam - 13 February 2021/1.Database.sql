CREATE DATABASE [Bitbucket]
GO
USE [Bitbucket]
GO

CREATE TABLE [Repositories]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[Name] varchar(50) NOT NULL
	)

CREATE TABLE [Users]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[UserName] varchar(30) NOT NULL
	,[Password] varchar(30) NOT NULL
	,[Email] varchar(50) NOT NULL
	)

CREATE TABLE [RepositoriesContributors]
	(
	 [RepositoryId] int FOREIGN KEY REFERENCES [Repositories]([Id]) NOT NULL
	,[ContributorId] int FOREIGN KEY REFERENCES [Users]([Id]) NOT NULL
	)

CREATE TABLE [Issues]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[Title] varchar(255) NOT NULL
	,[IssueStatus] char(6) NOT NULL
	,[RepositoryId] int FOREIGN KEY REFERENCES [Repositories]([Id]) NOT NULL
	,[AssigneeId] int FOREIGN KEY REFERENCES [Users]([Id]) NOT NULL
	)

CREATE TABLE [Commits]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[Message] varchar(255) NOT NULL
	,[IssueId] int FOREIGN KEY REFERENCES [Issues]([Id])
	,[RepositoryId] int FOREIGN KEY REFERENCES [Repositories]([Id]) NOT NULL
	,[ContributorId] int FOREIGN KEY REFERENCES [Users]([Id]) NOT NULL
	)

CREATE TABLE [Files]
	(
	 [Id] int IDENTITY PRIMARY KEY
	,[Name] varchar(100) NOT NULL
	,[Size] DECIMAL(10, 2) NOT NULL
	,[ParentId] int FOREIGN KEY REFERENCES [Files]([Id])
	,[CommitId] int FOREIGN KEY REFERENCES [Commits]([Id]) NOT NULL
	)


