--1
USE master
GO
CREATE DATABASE [Service]
GO
USE[Service]

CREATE TABLE [Users]
(
 [Id] int IDENTITY PRIMARY KEY
,[Username] varchar(30) UNIQUE NOT NULL
,[Password] varchar(50) NOT NULL
,[Name] varchar(50)
,[Birthdate] DATETIME2 
,[Age] int,
	 CHECK ([Age] BETWEEN 14 and 114)
,[Email] varchar(50) NOT NULL
)

CREATE TABLE [Status]
(
 [Id] int IDENTITY PRIMARY KEY
,[Name] varchar(50) NOT NULL
)

CREATE TABLE [Departments]
(
 [Id] int IDENTITY PRIMARY KEY
,[Name] varchar(50) NOT NULL
)

CREATE TABLE [Employees]
(
 [Id] int IDENTITY PRIMARY KEY
,[FirstName] varchar(25)
,[LastName] varchar(25)
,[Birthdate] DATETIME2
,[Age] int,
	 CHECK ([Age] BETWEEN 18 and 110)
,[DepartmentId] int FOREIGN KEY REFERENCES [Departments]([Id])
)

CREATE TABLE [Categories]
(
 [Id] int IDENTITY PRIMARY KEY
,[Name] varchar(50) NOT NULL
,[DepartmentId] int FOREIGN KEY REFERENCES [Departments]([Id])
 )

CREATE TABLE [Reports]
(
  [Id] int IDENTITY PRIMARY KEY
 ,[CategoryId] int FOREIGN KEY REFERENCES [Categories]([Id]) NOT NULL
 ,[StatusId] int FOREIGN KEY REFERENCES [Status]([Id]) NOT NULL
 ,[OpenDate] DATETIME2 NOT NULL
 ,[CloseDate] DATETIME2
 ,[Description] varchar(200) NOT NULL
 ,[UserId] int FOREIGN KEY REFERENCES [Users]([Id]) NOT NULL
 ,[EmployeeId] int FOREIGN KEY REFERENCES [Employees]([Id]) NOT NULL
)
