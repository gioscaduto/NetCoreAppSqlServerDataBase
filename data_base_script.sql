USE [master]
GO

/*
	WARNING!

	CHANGE THE DATABASE FILENAME ACCORDING YOU NEED

	*FILENAME = N'F:\Database\MyDataBae.mdf'
	*FILENAME = N'F:\Database\MyDataBae.ldf'
*/

CREATE DATABASE [mydatabase] ON  PRIMARY 
( NAME = N'mydatabase', FILENAME = N'F:\Database\MyDataBae.mdf',  SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'mydatabase_log',FILENAME = N'F:\Database\MyDataBae.ldf',  SIZE = 4096KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [mydatabase] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [mydatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [mydatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [mydatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [mydatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [mydatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [mydatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [mydatabase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [mydatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [mydatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [mydatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [mydatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [mydatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [mydatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [mydatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [mydatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [mydatabase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [mydatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [mydatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [mydatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [mydatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [mydatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [mydatabase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [mydatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [mydatabase] SET RECOVERY FULL 
GO
ALTER DATABASE [mydatabase] SET  MULTI_USER 
GO
ALTER DATABASE [mydatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [mydatabase] SET DB_CHAINING OFF 
GO
USE [mydatabase]
GO
/****** Object:  Table [dbo].[tb_country]    Script Date: 15/02/2019 13:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country] [varchar](100) NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[tb_country] ON 

GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (1, N'The United States', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (2, N'Germany', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (3, N'England', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (4, N'Netherlands', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (5, N'Italy', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (6, N'Brazil', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (7, N'South Africa', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (8, N'Japan', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (9, N'South Korea', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (10, N'North Korea', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (11, N'India', 1)
GO
INSERT [dbo].[tb_country] ([id], [country], [active]) VALUES (12, N'Russia', 1)
GO
SET IDENTITY_INSERT [dbo].[tb_country] OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_COUNTRY_GET_LIST]    Script Date: 15/02/2019 13:32:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_COUNTRY_GET_LIST]
AS
BEGIN

	SELECT id
      ,country
      ,active
	FROM tb_country

END

GO
USE [master]
GO
ALTER DATABASE [mydatabase] SET  READ_WRITE 
GO
