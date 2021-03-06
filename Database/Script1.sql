USE [CommunityAppDb]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ForumMessage_Forum]') AND parent_object_id = OBJECT_ID(N'[dbo].[ForumMessage]'))
ALTER TABLE [dbo].[ForumMessage] DROP CONSTRAINT [FK_ForumMessage_Forum]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forum_ForumCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forum]'))
ALTER TABLE [dbo].[Forum] DROP CONSTRAINT [FK_Forum_ForumCategory]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Country_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [FK_Country_Region]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BlogPostComments_BlogPost]') AND parent_object_id = OBJECT_ID(N'[dbo].[BlogPostComments]'))
ALTER TABLE [dbo].[BlogPostComments] DROP CONSTRAINT [FK_BlogPostComments_BlogPost]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Region_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [DF_Region_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Region_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] DROP CONSTRAINT [DF_Region_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumMessage_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumMessage] DROP CONSTRAINT [DF_ForumMessage_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumMessage_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumMessage] DROP CONSTRAINT [DF_ForumMessage_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumCategory_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumCategory] DROP CONSTRAINT [DF_ForumCategory_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumCategory_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumCategory] DROP CONSTRAINT [DF_ForumCategory_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Forum_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Forum] DROP CONSTRAINT [DF_Forum_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Forum_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Forum] DROP CONSTRAINT [DF_Forum_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Expertise_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expertise] DROP CONSTRAINT [DF_Expertise_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Expertise_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expertise] DROP CONSTRAINT [DF_Expertise_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EventInfo_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EventInfo] DROP CONSTRAINT [DF_EventInfo_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EventInfo_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EventInfo] DROP CONSTRAINT [DF_EventInfo_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Country_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF_Country_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Country_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] DROP CONSTRAINT [DF_Country_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPostComments_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPostComments] DROP CONSTRAINT [DF_BlogPostComments_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPostComments_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPostComments] DROP CONSTRAINT [DF_BlogPostComments_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPost_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPost] DROP CONSTRAINT [DF_BlogPost_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPost_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPost] DROP CONSTRAINT [DF_BlogPost_CreatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlertInfo_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlertInfo] DROP CONSTRAINT [DF_AlertInfo_UpdatedDate]
END

GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlertInfo_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlertInfo] DROP CONSTRAINT [DF_AlertInfo_CreatedDate]
END

GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
DROP INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_UserId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
DROP INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
DROP TABLE [dbo].[Region]
GO
/****** Object:  Table [dbo].[ForumMessage]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumMessage]') AND type in (N'U'))
DROP TABLE [dbo].[ForumMessage]
GO
/****** Object:  Table [dbo].[ForumCategory]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumCategory]') AND type in (N'U'))
DROP TABLE [dbo].[ForumCategory]
GO
/****** Object:  Table [dbo].[Forum]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forum]') AND type in (N'U'))
DROP TABLE [dbo].[Forum]
GO
/****** Object:  Table [dbo].[Expertise]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expertise]') AND type in (N'U'))
DROP TABLE [dbo].[Expertise]
GO
/****** Object:  Table [dbo].[EventInfo]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventInfo]') AND type in (N'U'))
DROP TABLE [dbo].[EventInfo]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[BlogPostComments]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BlogPostComments]') AND type in (N'U'))
DROP TABLE [dbo].[BlogPostComments]
GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BlogPost]') AND type in (N'U'))
DROP TABLE [dbo].[BlogPost]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AlertInfo]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertInfo]') AND type in (N'U'))
DROP TABLE [dbo].[AlertInfo]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
USE [master]
GO
/****** Object:  Database [CommunityAppDb]    Script Date: 4/24/2016 12:49:33 AM ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'CommunityAppDb')
DROP DATABASE [CommunityAppDb]
GO
/****** Object:  Database [CommunityAppDb]    Script Date: 4/24/2016 12:49:33 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'CommunityAppDb')
BEGIN
CREATE DATABASE [CommunityAppDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CommunityAppDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CommunityAppDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CommunityAppDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CommunityAppDb_log.ldf' , SIZE = 1792KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [CommunityAppDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CommunityAppDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CommunityAppDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CommunityAppDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CommunityAppDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CommunityAppDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CommunityAppDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [CommunityAppDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CommunityAppDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityAppDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CommunityAppDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CommunityAppDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CommunityAppDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CommunityAppDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CommunityAppDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CommunityAppDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CommunityAppDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CommunityAppDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CommunityAppDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CommunityAppDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CommunityAppDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CommunityAppDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CommunityAppDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CommunityAppDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CommunityAppDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CommunityAppDb] SET RECOVERY FULL 
GO
ALTER DATABASE [CommunityAppDb] SET  MULTI_USER 
GO
ALTER DATABASE [CommunityAppDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CommunityAppDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CommunityAppDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CommunityAppDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'CommunityAppDb', N'ON'
GO
ALTER AUTHORIZATION ON DATABASE::[CommunityAppDb] TO [Yasith-PC\Yasith]
GO
USE [CommunityAppDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[__MigrationHistory] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AlertInfo]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlertInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AlertInfo](
	[AlertId] [bigint] IDENTITY(1,1) NOT NULL,
	[AlertTitle] [nvarchar](200) NULL,
	[AlertDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_AlertInfo] PRIMARY KEY CLUSTERED 
(
	[AlertId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AlertInfo] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AspNetRoles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AspNetUserClaims] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AspNetUserLogins] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AspNetUserRoles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[ContactNo] [nvarchar](max) NULL,
	[Skills] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[AspNetUsers] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BlogPost]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BlogPost](
	[PostId] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [ntext] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_BlogPost] PRIMARY KEY CLUSTERED 
(
	[PostId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[BlogPost] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[BlogPostComments]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BlogPostComments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BlogPostComments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PostID] [bigint] NOT NULL,
	[Comment] [text] NOT NULL,
	[ParentCommentID] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](100) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_BlogPostComments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[BlogPostComments] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Country]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Country](
	[CountryId] [bigint] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[RegionId] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Country] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[EventInfo]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EventInfo](
	[EventId] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [ntext] NOT NULL,
	[Location] [nvarchar](200) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Capacity] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_EventInfo] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[EventInfo] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Expertise]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Expertise]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Expertise](
	[ExptertiseId] [bigint] IDENTITY(1,1) NOT NULL,
	[ExptertiseName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Expertise] PRIMARY KEY CLUSTERED 
(
	[ExptertiseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Expertise] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Forum]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Forum]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Forum](
	[ForumId] [bigint] IDENTITY(1,1) NOT NULL,
	[ForumCategoryId] [bigint] NULL,
	[QuestionTitle] [nvarchar](200) NULL,
	[QuestionDescription] [ntext] NULL,
	[IsAnswered] [bit] NULL,
	[Votes] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Forum] PRIMARY KEY CLUSTERED 
(
	[ForumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Forum] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ForumCategory]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ForumCategory](
	[ForumCategoryId] [bigint] IDENTITY(1,1) NOT NULL,
	[ForumCategoryName] [nvarchar](100) NULL,
	[ForumCategoryParentId] [bigint] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ForumCategory] PRIMARY KEY CLUSTERED 
(
	[ForumCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[ForumCategory] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ForumMessage]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ForumMessage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ForumMessage](
	[ForumMessageId] [bigint] IDENTITY(1,1) NOT NULL,
	[MessageDescription] [ntext] NULL,
	[ForumId] [bigint] NULL,
	[IsCorrectAnswer] [bit] NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_ForumMessage] PRIMARY KEY CLUSTERED 
(
	[ForumMessageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[ForumMessage] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Region]    Script Date: 4/24/2016 12:49:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Region]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Region](
	[RegionId] [bigint] IDENTITY(1,1) NOT NULL,
	[RegionName] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](100) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
ALTER AUTHORIZATION ON [dbo].[Region] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 4/24/2016 12:49:33 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_RoleId')
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 4/24/2016 12:49:33 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_UserId')
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 4/24/2016 12:49:33 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlertInfo_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlertInfo] ADD  CONSTRAINT [DF_AlertInfo_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_AlertInfo_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AlertInfo] ADD  CONSTRAINT [DF_AlertInfo_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPost_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPost] ADD  CONSTRAINT [DF_BlogPost_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPost_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPost] ADD  CONSTRAINT [DF_BlogPost_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPostComments_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPostComments] ADD  CONSTRAINT [DF_BlogPostComments_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_BlogPostComments_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BlogPostComments] ADD  CONSTRAINT [DF_BlogPostComments_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Country_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Country_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EventInfo_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EventInfo] ADD  CONSTRAINT [DF_EventInfo_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_EventInfo_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[EventInfo] ADD  CONSTRAINT [DF_EventInfo_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Expertise_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expertise] ADD  CONSTRAINT [DF_Expertise_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Expertise_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Expertise] ADD  CONSTRAINT [DF_Expertise_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Forum_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Forum] ADD  CONSTRAINT [DF_Forum_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Forum_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Forum] ADD  CONSTRAINT [DF_Forum_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumCategory_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumCategory] ADD  CONSTRAINT [DF_ForumCategory_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumCategory_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumCategory] ADD  CONSTRAINT [DF_ForumCategory_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumMessage_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumMessage] ADD  CONSTRAINT [DF_ForumMessage_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ForumMessage_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ForumMessage] ADD  CONSTRAINT [DF_ForumMessage_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Region_CreatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_Region_UpdatedDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Region] ADD  CONSTRAINT [DF_Region_UpdatedDate]  DEFAULT (getdate()) FOR [UpdatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BlogPostComments_BlogPost]') AND parent_object_id = OBJECT_ID(N'[dbo].[BlogPostComments]'))
ALTER TABLE [dbo].[BlogPostComments]  WITH CHECK ADD  CONSTRAINT [FK_BlogPostComments_BlogPost] FOREIGN KEY([PostID])
REFERENCES [dbo].[BlogPost] ([PostId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BlogPostComments_BlogPost]') AND parent_object_id = OBJECT_ID(N'[dbo].[BlogPostComments]'))
ALTER TABLE [dbo].[BlogPostComments] CHECK CONSTRAINT [FK_BlogPostComments_BlogPost]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Country_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([RegionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Country_Region]') AND parent_object_id = OBJECT_ID(N'[dbo].[Country]'))
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Region]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forum_ForumCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forum]'))
ALTER TABLE [dbo].[Forum]  WITH CHECK ADD  CONSTRAINT [FK_Forum_ForumCategory] FOREIGN KEY([ForumCategoryId])
REFERENCES [dbo].[ForumCategory] ([ForumCategoryId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Forum_ForumCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[Forum]'))
ALTER TABLE [dbo].[Forum] CHECK CONSTRAINT [FK_Forum_ForumCategory]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ForumMessage_Forum]') AND parent_object_id = OBJECT_ID(N'[dbo].[ForumMessage]'))
ALTER TABLE [dbo].[ForumMessage]  WITH CHECK ADD  CONSTRAINT [FK_ForumMessage_Forum] FOREIGN KEY([ForumId])
REFERENCES [dbo].[Forum] ([ForumId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ForumMessage_Forum]') AND parent_object_id = OBJECT_ID(N'[dbo].[ForumMessage]'))
ALTER TABLE [dbo].[ForumMessage] CHECK CONSTRAINT [FK_ForumMessage_Forum]
GO
USE [master]
GO
ALTER DATABASE [CommunityAppDb] SET  READ_WRITE 
GO
