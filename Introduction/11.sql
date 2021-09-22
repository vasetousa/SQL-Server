-- 11
USE [Introduction]
GO

ALTER TABLE [Users] ADD CONSTRAINT [DF_Users] DEFAULT GETDATE() FOR [LastLoginTime]
  