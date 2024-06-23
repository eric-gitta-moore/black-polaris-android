/*
 Navicat Premium Data Transfer

 Source Server         : mssql
 Source Server Type    : SQL Server
 Source Server Version : 16004125 (16.00.4125)
 Source Host           : localhost:1433
 Source Catalog        : testdb
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004125 (16.00.4125)
 File Encoding         : 65001

 Date: 23/06/2024 20:15:31
*/


-- ----------------------------
-- Table structure for admin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type IN ('U'))
	DROP TABLE [dbo].[admin]
GO

CREATE TABLE [dbo].[admin] (
  [TID] int  IDENTITY(1,1) NOT NULL,
  [ID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Password] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Type] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[admin] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[admin] ON
GO

INSERT INTO [dbo].[admin] ([TID], [ID], [Password], [Type]) VALUES (N'1', N'tea', N'tea', N'1')
GO

INSERT INTO [dbo].[admin] ([TID], [ID], [Password], [Type]) VALUES (N'2', N'202101', N'stu', N'2')
GO

SET IDENTITY_INSERT [dbo].[admin] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Course
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND type IN ('U'))
	DROP TABLE [dbo].[Course]
GO

CREATE TABLE [dbo].[Course] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [TeacherID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Course] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Course
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Course] ON
GO

INSERT INTO [dbo].[Course] ([ID], [TeacherID], [CName]) VALUES (N'1', N'tea', N'数据结构')
GO

SET IDENTITY_INSERT [dbo].[Course] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Score
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Score]') AND type IN ('U'))
	DROP TABLE [dbo].[Score]
GO

CREATE TABLE [dbo].[Score] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [StudentID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CourseID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Score] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Term] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Score] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Score
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Score] ON
GO

INSERT INTO [dbo].[Score] ([ID], [StudentID], [CourseID], [Score], [Term]) VALUES (N'2', N'202101', N'数据结构', N'99', N'大一')
GO

SET IDENTITY_INSERT [dbo].[Score] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Student
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Student]') AND type IN ('U'))
	DROP TABLE [dbo].[Student]
GO

CREATE TABLE [dbo].[Student] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [StudentID] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Gender] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Grade] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Class] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Student] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Student
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Student] ON
GO

INSERT INTO [dbo].[Student] ([ID], [StudentID], [Name], [Gender], [Grade], [Class]) VALUES (N'2', N'202101', N'杨玉环', N'女', N'大一', N'2101')
GO

SET IDENTITY_INSERT [dbo].[Student] OFF
GO

COMMIT
GO


-- ----------------------------
-- Auto increment value for admin
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[admin]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE [dbo].[admin] ADD CONSTRAINT [admin_pk] PRIMARY KEY CLUSTERED ([TID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Course
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Course]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table Course
-- ----------------------------
ALTER TABLE [dbo].[Course] ADD CONSTRAINT [Course_pk] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Score
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Score]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Score
-- ----------------------------
ALTER TABLE [dbo].[Score] ADD CONSTRAINT [Score_pk] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Student
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Student]', RESEED, 2)
GO


-- ----------------------------
-- Primary Key structure for table Student
-- ----------------------------
ALTER TABLE [dbo].[Student] ADD CONSTRAINT [Stu_pk] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

