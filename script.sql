USE [master]
GO
/****** Object:  Database [Pizza]    Script Date: 7/14/2019 8:15:02 PM ******/
CREATE DATABASE [Pizza]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pizza', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Pizza.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pizza_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Pizza_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Pizza] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pizza].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pizza] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pizza] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pizza] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pizza] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pizza] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pizza] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pizza] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pizza] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pizza] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pizza] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pizza] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pizza] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pizza] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pizza] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pizza] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pizza] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pizza] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pizza] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pizza] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pizza] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pizza] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pizza] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pizza] SET RECOVERY FULL 
GO
ALTER DATABASE [Pizza] SET  MULTI_USER 
GO
ALTER DATABASE [Pizza] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pizza] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pizza] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pizza] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pizza] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pizza', N'ON'
GO
ALTER DATABASE [Pizza] SET QUERY_STORE = OFF
GO
USE [Pizza]
GO
/****** Object:  Table [dbo].[LoginTable]    Script Date: 7/14/2019 8:15:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginTable](
	[User_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nchar](10) NULL,
	[password] [nchar](10) NULL,
	[reg_id] [int] NULL,
 CONSTRAINT [PK_LoginTable] PRIMARY KEY CLUSTERED 
(
	[User_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pizza]    Script Date: 7/14/2019 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pizza](
	[P_id] [int] IDENTITY(1,1) NOT NULL,
	[B_id] [int] NULL,
	[onions] [nchar](10) NULL,
	[capsicum] [nchar](10) NULL,
	[chicken] [nchar](10) NULL,
	[beef] [nchar](10) NULL,
 CONSTRAINT [PK_pizza] PRIMARY KEY CLUSTERED 
(
	[P_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reg]    Script Date: 7/14/2019 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reg](
	[reg_id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](10) NULL,
	[Age] [nchar](10) NULL,
 CONSTRAINT [PK_Reg] PRIMARY KEY CLUSTERED 
(
	[reg_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sauce]    Script Date: 7/14/2019 8:15:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sauce](
	[B_id] [int] IDENTITY(1,1) NOT NULL,
	[sauce] [nchar](10) NULL,
 CONSTRAINT [PK_sauce] PRIMARY KEY CLUSTERED 
(
	[B_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LoginTable] ON 

INSERT [dbo].[LoginTable] ([User_id], [username], [password], [reg_id]) VALUES (1, N'user      ', N'user      ', NULL)
INSERT [dbo].[LoginTable] ([User_id], [username], [password], [reg_id]) VALUES (2, N'          ', N'          ', NULL)
INSERT [dbo].[LoginTable] ([User_id], [username], [password], [reg_id]) VALUES (3, N'sam       ', N'sam       ', NULL)
SET IDENTITY_INSERT [dbo].[LoginTable] OFF
SET IDENTITY_INSERT [dbo].[pizza] ON 

INSERT [dbo].[pizza] ([P_id], [B_id], [onions], [capsicum], [chicken], [beef]) VALUES (1, 2, N'yes       ', N'yes       ', N'yes       ', N'yes       ')
SET IDENTITY_INSERT [dbo].[pizza] OFF
SET IDENTITY_INSERT [dbo].[Reg] ON 

INSERT [dbo].[Reg] ([reg_id], [Name], [Age]) VALUES (1, N'user      ', N'31        ')
INSERT [dbo].[Reg] ([reg_id], [Name], [Age]) VALUES (2, N'          ', N'          ')
INSERT [dbo].[Reg] ([reg_id], [Name], [Age]) VALUES (3, N'sam       ', N'19        ')
SET IDENTITY_INSERT [dbo].[Reg] OFF
SET IDENTITY_INSERT [dbo].[sauce] ON 

INSERT [dbo].[sauce] ([B_id], [sauce]) VALUES (2, N'Tomato    ')
INSERT [dbo].[sauce] ([B_id], [sauce]) VALUES (3, N'BBQ       ')
INSERT [dbo].[sauce] ([B_id], [sauce]) VALUES (4, N'Apricot   ')
INSERT [dbo].[sauce] ([B_id], [sauce]) VALUES (5, N'Peri-Peri ')
SET IDENTITY_INSERT [dbo].[sauce] OFF
ALTER TABLE [dbo].[LoginTable]  WITH CHECK ADD  CONSTRAINT [FK_LoginTable_Reg] FOREIGN KEY([reg_id])
REFERENCES [dbo].[Reg] ([reg_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LoginTable] CHECK CONSTRAINT [FK_LoginTable_Reg]
GO
ALTER TABLE [dbo].[pizza]  WITH CHECK ADD  CONSTRAINT [FK_pizza_sauce] FOREIGN KEY([B_id])
REFERENCES [dbo].[sauce] ([B_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pizza] CHECK CONSTRAINT [FK_pizza_sauce]
GO
USE [master]
GO
ALTER DATABASE [Pizza] SET  READ_WRITE 
GO
