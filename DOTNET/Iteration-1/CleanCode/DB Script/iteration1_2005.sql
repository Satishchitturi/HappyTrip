USE [master]
GO
/****** Object:  Database [HappyIteration1]    Script Date: 07/08/2013 12:22:32 ******/
CREATE DATABASE [HappyIteration1]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HappyIteration1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HappyIteration1] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [HappyIteration1] SET ANSI_NULLS OFF
GO
ALTER DATABASE [HappyIteration1] SET ANSI_PADDING OFF
GO
ALTER DATABASE [HappyIteration1] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [HappyIteration1] SET ARITHABORT OFF
GO
ALTER DATABASE [HappyIteration1] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [HappyIteration1] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [HappyIteration1] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [HappyIteration1] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [HappyIteration1] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [HappyIteration1] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [HappyIteration1] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [HappyIteration1] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [HappyIteration1] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [HappyIteration1] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [HappyIteration1] SET  DISABLE_BROKER
GO
ALTER DATABASE [HappyIteration1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [HappyIteration1] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [HappyIteration1] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [HappyIteration1] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [HappyIteration1] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [HappyIteration1] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [HappyIteration1] SET  READ_WRITE
GO
ALTER DATABASE [HappyIteration1] SET RECOVERY SIMPLE
GO
ALTER DATABASE [HappyIteration1] SET  MULTI_USER
GO
ALTER DATABASE [HappyIteration1] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [HappyIteration1] SET DB_CHAINING OFF
GO
USE [HappyIteration1]
GO
/****** Object:  Role [aspnet_Membership_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Membership_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Membership_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Membership_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Membership_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Personalization_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Personalization_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Personalization_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Profile_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Profile_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Profile_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Profile_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Roles_BasicAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Roles_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_Roles_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_Roles_ReportingAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Role [aspnet_WebEvent_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE ROLE [aspnet_WebEvent_FullAccess] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess] AUTHORIZATION [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess] AUTHORIZATION [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Roles_FullAccess] AUTHORIZATION [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess] AUTHORIZATION [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess] AUTHORIZATION [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Profile_FullAccess] AUTHORIZATION [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess] AUTHORIZATION [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess] AUTHORIZATION [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess] AUTHORIZATION [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess] AUTHORIZATION [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess] AUTHORIZATION [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Membership_FullAccess] AUTHORIZATION [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 07/08/2013 12:22:32 ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess] AUTHORIZATION [aspnet_Membership_BasicAccess]
GO
/****** Object:  Table [dbo].[Airlines]    Script Date: 07/08/2013 12:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airlines](
	[AirlineId] [int] IDENTITY(1,1) NOT NULL,
	[AirlineName] [nvarchar](100) NOT NULL,
	[AirlineCode] [nvarchar](10) NOT NULL,
	[AirlineLogo] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_Airlines] PRIMARY KEY CLUSTERED 
(
	[AirlineId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Airlines__DC4582127F2BE32F] UNIQUE NONCLUSTERED 
(
	[AirlineId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Airlines] ON
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (2, N'Air India - India', N'AI', N'AirIndia')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (3, N'Air India - Sahara', N'AIS', N'AIR INDIA EXPRESS')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (4, N'GoAir', N'G8', N'GO AIRWAYS')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (5, N'IndiGo', N'6E', N'INDIGO')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (6, N'Kingfisher Airlines', N'IT', N'KINGFISHER AIRLINE')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (7, N'Jet Airways', N'JA', N'JET AIRWAYS')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (8, N'SpiceJet', N'SG', N'SPICEJET')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (9, N'Doha', N'DH', N'Doha')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (10, N'British Airways', N'BAW', N'BAW')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (11, N'KF Gold', N'KFG', N'KFG')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (12, N'Emirates', N'EM', N'Emirates')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (13, N'American', N'AM', N'American Logo')
INSERT [dbo].[Airlines] ([AirlineId], [AirlineName], [AirlineCode], [AirlineLogo]) VALUES (14, N'SriLanka', N'SL', N'Srilanka Logo')
SET IDENTITY_INSERT [dbo].[Airlines] OFF
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 07/08/2013 12:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_A__C93A4C98014935CB] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__17477DE40425A276] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__3091033107020F21] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications] 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Applications] ([ApplicationName], [LoweredApplicationName], [ApplicationId], [Description]) VALUES (N'/HappyTrip', N'/happytrip', N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'Travel Portal')
/****** Object:  Table [dbo].[BookingTypes]    Script Date: 07/08/2013 12:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingTypes](
	[TypeId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](25) NOT NULL,
 CONSTRAINT [pk_BookingTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__BookingT__516F03B445BE5BA9] UNIQUE NONCLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingTypes] ON
INSERT [dbo].[BookingTypes] ([TypeId], [Title]) VALUES (1, N'Flight')
INSERT [dbo].[BookingTypes] ([TypeId], [Title]) VALUES (2, N'Hotel')
INSERT [dbo].[BookingTypes] ([TypeId], [Title]) VALUES (3, N'Taxi')
SET IDENTITY_INSERT [dbo].[BookingTypes] OFF
/****** Object:  Table [dbo].[Classes]    Script Date: 07/08/2013 12:22:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[ClassType] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_Classes] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Classes__CB1927C137703C52] UNIQUE NONCLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Classes] ON
INSERT [dbo].[Classes] ([ClassId], [ClassType]) VALUES (1, N'Economy')
INSERT [dbo].[Classes] ([ClassId], [ClassType]) VALUES (2, N'Business')
SET IDENTITY_INSERT [dbo].[Classes] OFF
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 07/08/2013 12:22:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
 CONSTRAINT [PK__aspnet_W__7944C810797309D9] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 07/08/2013 12:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 07/08/2013 12:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 07/08/2013 12:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_S__5A1E6BC11367E606] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'common', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'health monitoring', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'membership', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'personalization', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'profile', N'1', 1)
INSERT [dbo].[aspnet_SchemaVersions] ([Feature], [CompatibleSchemaVersion], [IsCurrentVersion]) VALUES (N'role manager', N'1', 1)
/****** Object:  Table [dbo].[States]    Script Date: 07/08/2013 12:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [bigint] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__States__C3BA3B3B29221CFB] UNIQUE NONCLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[States] ON
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (1, N'Andaman and Nicobar Islands')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (2, N'Andhra Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (3, N'NULArunachal PradeshL')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (4, N'Assam')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (5, N'Bihar')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (6, N'Chhattisgarh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (7, N'Daman and Diu')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (8, N'Delhi')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (9, N'Goa')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (10, N'Gujarat')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (11, N'Haryana')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (12, N'Himachal Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (13, N'Jammu & Kashmir')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (14, N'Jharkhand')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (15, N'Karnataka')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (16, N'Kerala')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (17, N'Lakshadweep')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (18, N'Madhya Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (19, N'Maharashtra')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (20, N'Manipur')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (21, N'Meghalaya')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (22, N'Mizoram')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (23, N'Nagaland')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (24, N'Orissa')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (25, N'Puducherry')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (26, N'Punjab')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (27, N'Rajasthan')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (28, N'Tamil Nadu')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (29, N'Tripura')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (30, N'Uttar Pradesh')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (31, N'Uttrakhand')
INSERT [dbo].[States] ([StateId], [StateName]) VALUES (32, N'West Bengal')
SET IDENTITY_INSERT [dbo].[States] OFF
/****** Object:  StoredProcedure [dbo].[GetTravelClass]    Script Date: 07/08/2013 12:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTravelClass] 
AS
BEGIN
	SELECT cl.ClassId,cl.ClassType from Classes cl
END
GO
/****** Object:  StoredProcedure [dbo].[GetStates]    Script Date: 07/08/2013 12:22:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStates]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from States
END
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_U__1788CC4D0BC6C43E] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users] 
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'kk@pratian.com', N'kk@pratian.com', NULL, 0, CAST(0x0000A1AF01122D6F AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'1353d1e6-43b5-4278-91c7-25c77632d8d2', N'kk@pratian1.com', N'kk@pratian1.com', NULL, 0, CAST(0x0000A1A90029438D AS DateTime))
INSERT [dbo].[aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'KrishnafromPratian6', N'krishnafrompratian6', NULL, 0, CAST(0x0000A15100E029C5 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[GetAirLines]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jagdeep>
-- Create date: <Create Date,,08-feb-2013>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAirLines]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from dbo.Airlines
END
GO
/****** Object:  Table [dbo].[Flights]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flights](
	[FlightId] [bigint] IDENTITY(1,1) NOT NULL,
	[AirlineId] [int] NOT NULL,
	[FlightName] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_Flights] PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Flights__8A9E14EF03F0984C] UNIQUE NONCLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Flights] ON
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (1, 2, N'Air India - AI0011')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (2, 3, N'Air India Express-IX002')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (3, 4, N'GoAir - G8003')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (4, 5, N'IndiGo -6E004')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (5, 6, N'Kingfisher Airlines-IT005')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (6, 7, N'Jet Airways-9W006')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (7, 8, N'SpiceJet - SG006')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (8, 2, N'Air India - AI001.1')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (9, 2, N'Air India Express-IX003')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (12, 10, N'British Airways - BI1001')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (13, 11, N'KF-Gold K001')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (14, 9, N'Doha - DH003')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (15, 12, N'Emirates EM033')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (16, 12, N'EM 1045')
INSERT [dbo].[Flights] ([FlightId], [AirlineId], [FlightName]) VALUES (17, 2, N'')
SET IDENTITY_INSERT [dbo].[Flights] OFF
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityId] [bigint] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NOT NULL,
	[StateId] [bigint] NOT NULL,
 CONSTRAINT [pk_Cities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Cities__F2D21B7708B54D69] UNIQUE NONCLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cities] ON
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (2, N'Car Nicobar', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (3, N'Port Blair.', 1)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (4, N'Kadapa', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (5, N'Rajahmundry', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (6, N'Hyderabad', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (7, N'Puttaparthi', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (8, N'Tirupati', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (9, N'Vijayawada', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (10, N'Visakhapatnam', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (11, N'Warangal', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (12, N'Alongg', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (13, N'Daporijo', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (14, N'Pasighat', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (15, N'Tezu', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (16, N'Ziro', 3)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (17, N'Dibrugarh', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (18, N'Jorhat', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (19, N'North Lakhimpur', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (20, N'Guwahati', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (21, N'Dhubri', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (22, N'Silchar', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (23, N'Tezpur', 4)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (24, N'Gaya', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (25, N'Patna', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (26, N'Muzzafarpur', 5)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (27, N'Bilaspur', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (28, N'Jagdalpur', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (29, N'Raipur', 6)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (30, N'Daman', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (31, N'Diu', 7)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (32, N'New Delhi', 8)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (33, N'Whole state', 9)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (34, N'Bhavnagar', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (35, N'Bhuj', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (36, N'Jamnagar', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (37, N'Kandla', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (38, N'Keshod', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (39, N'Mehsana', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (40, N'Palanpur', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (41, N'Porbandar', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (42, N'Rajkot', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (44, N'Ahmedabad', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (45, N'Surat', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (46, N'Vadodara', 10)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (47, N'Hisar', 11)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (48, N'Kullu', 12)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (49, N'Kangra', 12)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (50, N'Shimla', 12)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (51, N'Jammu', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (52, N'Kargil', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (53, N'Leh', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (54, N'Srinagar', 13)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (55, N'Ranchi', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (56, N'Jamshedpur', 14)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (57, N'Belgaum', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (58, N'Bellary', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (59, N'Bangalore', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (60, N'Hassan', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (61, N'Hubli', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (62, N'Mangalore', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (63, N'Mysore', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (64, N'Toranagallu', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (65, N'Kozhikode', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (66, N'Kochi', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (67, N'Thiruvananthapuram', 16)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (68, N'Agatti', 17)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (69, N'Indore', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (70, N'Gwalior', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (71, N'Jabalpur', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (72, N'Khajuraho', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (73, N'Bhopal', 18)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (74, N'Akola', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (75, N'Aurangabad', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (76, N'Mumbai', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (77, N'Nagpur', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (78, N'Nashik', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (79, N'Kolhapur', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (80, N'Latur', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (81, N'Nanded', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (82, N'Osmanabad', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (83, N'Pune', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (84, N'Ratnagiri', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (85, N'Solapur', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (86, N'Yavatmal', 19)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (87, N'Imphal', 20)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (88, N'Shillong', 21)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (89, N'Aizawl', 22)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (90, N'Dimapur', 23)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (91, N'Brahmapur', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (92, N'Bhubaneswar', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (93, N'Jeypore', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (94, N'Jharsuguda', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (95, N'Rourkela', 24)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (96, N'Pondicherry', 25)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (97, N'Bathinda', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (98, N'Ludhiana', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (99, N'Pathankot', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (100, N'Ludhiana', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (101, N'Amritsar', 26)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (102, N'Bikaner', 27)
GO
print 'Processed 100 total records'
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (103, N'Jaipur', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (104, N'Jodhpur', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (105, N'Kota', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (106, N'Udaipur', 27)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (107, N'Chennai', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (108, N'Coimbatore', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (109, N'Madurai', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (110, N'Salem', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (111, N'Thanjavur', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (112, N'Tiruchirapalli', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (113, N'Tuticorin', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (114, N'Agartala', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (115, N'Kailashahar', 29)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (116, N'Agra', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (117, N'Allahabad', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (118, N'Lucknow', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (119, N'Gorakhpur', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (120, N'Kanpur', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (121, N'Varansi', 30)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (122, N'Dehradun', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (123, N'Pantnagar', 31)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (124, N'Siliguri', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (125, N'Balurghat', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (126, N'Cooch Behar', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (127, N'Malda', 32)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (128, N'Myrore', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (129, N'Trichy', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (130, N'Shimoga', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (131, N'Coorg', 15)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (132, N'Tanjore', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (133, N'Kurnool', 2)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (134, N'Ooty', 28)
INSERT [dbo].[Cities] ([CityId], [CityName], [StateId]) VALUES (138, N'Mandya', 15)
SET IDENTITY_INSERT [dbo].[Cities] OFF
/****** Object:  Table [dbo].[Bookings]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[BookingDate] [datetime] NOT NULL,
	[BookingReferenceNo] [nvarchar](100) NULL,
	[Remarks] [nvarchar](200) NOT NULL,
	[TotalCost] [decimal](18, 0) NOT NULL,
	[IsCanceled] [bit] NOT NULL,
 CONSTRAINT [pk_Bookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Bookings__73951AEC19DFD96B] UNIQUE NONCLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Bookings__8D59A23F17036CC0] UNIQUE NONCLUSTERED 
(
	[BookingReferenceNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (3, 1, CAST(0x0000A168015380C5 AS DateTime), N'HTRP3', N'Booking Air Ticket', CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (4, 1, CAST(0x0000A16A012882C4 AS DateTime), N'HTRP4', N'Booking Air Ticket', CAST(8000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (5, 1, CAST(0x0000A16A0128DFA8 AS DateTime), N'HTRP5', N'Booking Air Ticket', CAST(8000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (6, 1, CAST(0x0000A16A0129D04A AS DateTime), N'HTRP6', N'Booking Air Ticket', CAST(7000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (8, 1, CAST(0x0000A1870094A969 AS DateTime), N'HTRP8', N'Booking Air Ticket', CAST(4000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (9, 1, CAST(0x0000A1A90030BA5E AS DateTime), N'HTRP9', N'Booking Air Ticket', CAST(5656 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (10, 1, CAST(0x0000A1A90076EDB8 AS DateTime), N'HTRP10', N'Booking Air Ticket', CAST(4000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (17, 1, CAST(0x0000A1B101504294 AS DateTime), N'HTRP17', N'Booking Air Ticket', CAST(5656 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (18, 1, CAST(0x0000A1B1015087BD AS DateTime), N'HTRP18', N'Booking Air Ticket', CAST(10000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (19, 1, CAST(0x0000A1B10151EB99 AS DateTime), N'HTRP19', N'Booking Air Ticket', CAST(5656 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (20, 1, CAST(0x0000A1B10151F4D0 AS DateTime), N'HTRP20', N'Booking Air Ticket', CAST(10000 AS Decimal(18, 0)), 0)
INSERT [dbo].[Bookings] ([BookingId], [TypeId], [BookingDate], [BookingReferenceNo], [Remarks], [TotalCost], [IsCanceled]) VALUES (21, 1, CAST(0x0000A1B20084491F AS DateTime), N'HTRP21', N'Booking Air Ticket', CAST(6500 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[Bookings] OFF
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC5859063A47] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths] 
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_R__8AFACE1B4222D4EF] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles] 
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'e2237fb9-6042-48cf-a3fa-0617eac67de8', N'Administrator', N'administrator', N'One who manages the portal')
INSERT [dbo].[aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'9e02b97c-dba2-4e48-860b-95e604ff64ec', N'TravelUser', N'traveluser', NULL)
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
 CONSTRAINT [PK__aspnet_M__1788CC4D1FCDBCEB] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership] 
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'62KVYHiAOtdefSWuYx2mlKhMe0Y=', 1, N'bOWloVOdIQNgxDdM/7HbQg==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A15100E02734 AS DateTime), CAST(0x0000A15100E02734 AS DateTime), CAST(0x0000A15100E02734 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'62KVYHiAOtdefSWuYx2mlKhMe0Y=', 1, N'bOWloVOdIQNgxDdM/7HbQg==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A17500739E0C AS DateTime), CAST(0x0000A1AF01122D6F AS DateTime), CAST(0x0000A17600CB1B68 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
INSERT [dbo].[aspnet_Membership] ([ApplicationId], [UserId], [Password], [PasswordFormat], [PasswordSalt], [MobilePIN], [Email], [LoweredEmail], [PasswordQuestion], [PasswordAnswer], [IsApproved], [IsLockedOut], [CreateDate], [LastLoginDate], [LastPasswordChangedDate], [LastLockoutDate], [FailedPasswordAttemptCount], [FailedPasswordAttemptWindowStart], [FailedPasswordAnswerAttemptCount], [FailedPasswordAnswerAttemptWindowStart], [Comment]) VALUES (N'fa66e12e-17c5-4403-896a-f1fc38b3d324', N'1353d1e6-43b5-4278-91c7-25c77632d8d2', N'IurAxAdy2ROJoSRk1GIdG2ULhgQ=', 1, N'T3rgaejUzYQOsA1p3PQjIQ==', NULL, NULL, NULL, NULL, NULL, 1, 0, CAST(0x0000A18D0062FB74 AS DateTime), CAST(0x0000A1A90029438D AS DateTime), CAST(0x0000A18D0062FB74 AS DateTime), CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), 0, CAST(0xFFFF2FB300000000 AS DateTime), NULL)
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC5960A75C0F] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__3214EC06656C112C] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser] 
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookingPayments]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingPayments](
	[BookingId] [bigint] NOT NULL,
	[PaymentDate] [datetime] NOT NULL,
	[PaymentAmount] [float] NOT NULL,
	[ReferenceNo] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_BookingPayments] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (3, CAST(0x0000A168015380C8 AS DateTime), 7000, N'1234')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (4, CAST(0x0000A16A012882C9 AS DateTime), 8000, N'1234')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (5, CAST(0x0000A16A0128DFA8 AS DateTime), 8000, N'1234')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (6, CAST(0x0000A16A0129D04A AS DateTime), 7000, N'1234')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (8, CAST(0x0000A1870094A97A AS DateTime), 4000, N'1234')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (9, CAST(0x0000A1A90030BA95 AS DateTime), 5656, N'1234')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (10, CAST(0x0000A1A90076EDB8 AS DateTime), 4000, N'1234')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (17, CAST(0x0000A1B101504295 AS DateTime), 5656, N'fb6e6163-766e-44b7-82ff-a3ad4a0cd19c')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (18, CAST(0x0000A1B1015087BD AS DateTime), 10000, N'fb6e6163-766e-44b7-82ff-a3ad4a0cd19c')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (19, CAST(0x0000A1B10151EB99 AS DateTime), 5656, N'79ff0890-39f2-415c-9617-6d18e3cb04e1')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (20, CAST(0x0000A1B10151F4D0 AS DateTime), 10000, N'79ff0890-39f2-415c-9617-6d18e3cb04e1')
INSERT [dbo].[BookingPayments] ([BookingId], [PaymentDate], [PaymentAmount], [ReferenceNo]) VALUES (21, CAST(0x0000A1B200844931 AS DateTime), 6500, N'b4fe3661-6fcc-4eba-a727-2ca23caecd86')
/****** Object:  Table [dbo].[BookingContacts]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingContacts](
	[BookingContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NOT NULL,
	[ContactName] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[PinCode] [nvarchar](15) NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PhoneNo] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](20) NULL,
 CONSTRAINT [pk_BookingContacts] PRIMARY KEY CLUSTERED 
(
	[BookingContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__BookingC__032D7D4A245D67DE] UNIQUE NONCLUSTERED 
(
	[BookingContactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingContacts] ON
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (2, 3, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', NULL, N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (3, 4, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', NULL, N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (4, 5, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', NULL, N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (5, 6, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', NULL, N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (7, 8, N'Subramanian S', N'A-9, Sri Raja Rajeswari Nivas, Vajpayee Nagar, Bommanahalli, Behind HTMT', N'Bangalore', N'Karnataka', NULL, N'subramanian.s.iyer@gmail.com', N'918025839611', N'918025839611')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (8, 9, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', NULL, N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (9, 10, N'Krishna Kumar S', N'J P Nagar, 5th Phase', N'Bangalore', N'Karnataka', NULL, N'kk@pratian.com', N'09886709024', N'09886709024')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (16, 17, N'a', N'a', N'a', N'a', N'000000', N'x@.com', N'', N'11')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (17, 18, N'a', N'a', N'a', N'a', N'000000', N'x@.com', N'', N'11')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (18, 19, N'a', N'a', N'a', N'a', N'000000', N'x@.com', N'', N'11')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (19, 20, N'a', N'a', N'a', N'a', N'000000', N'x@.com', N'', N'11')
INSERT [dbo].[BookingContacts] ([BookingContactId], [BookingId], [ContactName], [Address], [City], [State], [PinCode], [Email], [PhoneNo], [MobileNo]) VALUES (20, 21, N'a', N'a', N'a', N'a', N'000000', N'x@.com', N'', N'111')
SET IDENTITY_INSERT [dbo].[BookingContacts] OFF
/****** Object:  Table [dbo].[BookingCancelations]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingCancelations](
	[BookingId] [bigint] NOT NULL,
	[CancelationDate] [datetime] NOT NULL,
	[RefundAmount] [float] NOT NULL,
 CONSTRAINT [pk_BookingCancelations] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightBookings]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightBookings](
	[BookingId] [bigint] NOT NULL,
	[DateOfJourney] [datetime] NOT NULL,
	[NoOfSeats] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
 CONSTRAINT [pk_FlightBookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (3, CAST(0x0000A16800000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (4, CAST(0x0000A16B00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (5, CAST(0x0000A16B00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (6, CAST(0x0000A16C00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (8, CAST(0x0000A18800000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (9, CAST(0x0000A1AA00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (10, CAST(0x0000A1AA00000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (17, CAST(0x0000A1B100000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (18, CAST(0x0000A1B800000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (19, CAST(0x0000A1B100000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (20, CAST(0x0000A1B800000000 AS DateTime), 1, 1)
INSERT [dbo].[FlightBookings] ([BookingId], [DateOfJourney], [NoOfSeats], [ClassId]) VALUES (21, CAST(0x0000A1B200000000 AS DateTime), 1, 1)
/****** Object:  StoredProcedure [dbo].[GetCities]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Jan 24th, 2013>
-- Description:	<Procedure to get all the cities>
-- =============================================
CREATE PROCEDURE [dbo].[GetCities] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Select
		c.CityId, c.CityName,
		s.StateId, s.StateName
	From
		Cities c, States s
	Where
		c.StateId = s.StateId
	Order By
		c.CityName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  Table [dbo].[FlightClasses]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightClasses](
	[FlightId] [bigint] NOT NULL,
	[ClassId] [int] NOT NULL,
	[NoOfSeats] [int] NOT NULL,
 CONSTRAINT [pk_FlightClasses] PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC,
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (1, 1, 160)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (2, 1, 120)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (2, 2, 100)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (3, 1, 150)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (4, 1, 150)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (5, 1, 150)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (6, 1, 150)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (6, 2, 100)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (7, 1, 120)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (8, 1, 120)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (8, 2, 30)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (9, 1, 50)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (9, 2, 10)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (12, 1, 80)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (12, 2, 90)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (13, 1, 100)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (13, 2, 150)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (16, 1, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (16, 2, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (17, 1, 0)
INSERT [dbo].[FlightClasses] ([FlightId], [ClassId], [NoOfSeats]) VALUES (17, 2, 0)
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__1788CC4C36B12243] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'1353d1e6-43b5-4278-91c7-25c77632d8d2', N'Personal:S:0:263:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>KK</FullName>
  <Gender>77</Gender>
  <DateOfBirth>0001-01-01T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A18D006300CD AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'Personal:S:0:263:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>KK</FullName>
  <Gender>77</Gender>
  <DateOfBirth>0001-01-01T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A15100E029C5 AS DateTime))
INSERT [dbo].[aspnet_Profile] ([UserId], [PropertyNames], [PropertyValuesString], [PropertyValuesBinary], [LastUpdatedDate]) VALUES (N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'Personal:S:0:263:', N'<?xml version="1.0" encoding="utf-16"?>
<Personal xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <FullName>KK</FullName>
  <Gender>77</Gender>
  <DateOfBirth>0001-01-01T00:00:00</DateOfBirth>
</Personal>', 0x, CAST(0x0000A1750073A0E6 AS DateTime))
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 07/08/2013 12:22:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_U__AF2760AD47DBAE45] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'c10c7e9a-c414-4444-81b9-e31928b93bff', N'e2237fb9-6042-48cf-a3fa-0617eac67de8')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'1353d1e6-43b5-4278-91c7-25c77632d8d2', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
INSERT [dbo].[aspnet_UsersInRoles] ([UserId], [RoleId]) VALUES (N'd1f5ca17-cb2c-44f8-8649-40bbc6bd8a5c', N'9e02b97c-dba2-4e48-860b-95e604ff64ec')
/****** Object:  StoredProcedure [dbo].[GetFlightsID]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlightsID]
@FlightID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT fl.FlightId,fl.FlightName,ai.AirlineId,ai.AirlineName,ai.AirlineCode from dbo.Flights fl inner join Airlines ai on fl.AirlineId=ai.AirlineId
	where fl.FlightId = @FlightID;
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlights]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jagdeep>
-- Create date: <Create Date,,8/feb-2-13>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFlights]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT fl.FlightId,fl.FlightName,ai.AirlineId,ai.AirlineName,ai.AirlineCode from dbo.Flights fl inner join Airlines ai on fl.AirlineId=ai.AirlineId
END
GO
/****** Object:  Table [dbo].[Routes]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routes](
	[RouteId] [bigint] IDENTITY(1,1) NOT NULL,
	[FromCityId] [bigint] NOT NULL,
	[ToCityId] [bigint] NOT NULL,
	[DistanceInKms] [decimal](18, 0) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [pk_Routes] PRIMARY KEY CLUSTERED 
(
	[RouteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Routes__80979B4C0D7A0286] UNIQUE NONCLUSTERED 
(
	[RouteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Routes] ON
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (1, 32, 58, CAST(350 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (2, 32, 77, CAST(1300 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (3, 32, 106, CAST(700 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (4, 32, 15, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (5, 77, 58, CAST(800 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (6, 77, 32, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (7, 77, 106, CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (8, 77, 15, CAST(700 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (9, 106, 58, CAST(800 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (10, 106, 32, CAST(200 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (11, 106, 77, CAST(1400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (12, 106, 15, CAST(300 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (13, 15, 58, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (14, 15, 32, CAST(550 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (15, 15, 77, CAST(660 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (16, 15, 106, CAST(600 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (17, 58, 32, CAST(700 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (18, 50, 7, CAST(2000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (19, 112, 63, CAST(600 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (20, 8, 20, CAST(2500 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (21, 76, 32, CAST(1200 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (22, 118, 32, CAST(700 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (23, 107, 32, CAST(2400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (24, 59, 32, CAST(2300 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (25, 59, 107, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (26, 44, 59, CAST(1600 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (27, 20, 25, CAST(900 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (28, 54, 50, CAST(700 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (29, 70, 77, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (30, 83, 103, CAST(850 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (31, 107, 108, CAST(100 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (32, 109, 110, CAST(600 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (33, 128, 133, CAST(1000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (34, 59, 62, CAST(1500 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (35, 59, 83, CAST(1400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (36, 59, 76, CAST(1000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (37, 107, 76, CAST(2000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (38, 107, 83, CAST(1000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (39, 6, 76, CAST(1222 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (40, 6, 32, CAST(700 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (41, 2, 18, CAST(145 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (42, 59, 44, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (43, 107, 44, CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (44, 44, 83, CAST(700 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (45, 6, 32, CAST(550 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (46, 118, 20, CAST(800 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (47, 76, 107, CAST(740 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (48, 6, 83, CAST(400 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (49, 76, 6, CAST(350 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (50, 20, 44, CAST(300 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (51, 59, 118, CAST(650 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (52, 6, 32, CAST(500 AS Decimal(18, 0)), 1)
INSERT [dbo].[Routes] ([RouteId], [FromCityId], [ToCityId], [DistanceInKms], [Status]) VALUES (53, 16, 33, CAST(145 AS Decimal(18, 0)), 0)
SET IDENTITY_INSERT [dbo].[Routes] OFF
/****** Object:  Table [dbo].[UserBookings]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBookings](
	[BookingId] [bigint] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [pk_UserBookings] PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlight]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFlight]
	-- Add the parameters for the stored procedure here
	@flightid int,
	@flightname varchar(100),
	@airlineId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update 
		Flights 
	set 
		FlightName = @flightname,
		AirlineId = @airlineId 
	where 
	FlightId = @flightid
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlightClass]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFlightClass]
	-- Add the parameters for the stored procedure here
	@flightId int,
	@classId int,
	@noOfSeats int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update 
		FlightClasses
	set 
		ClassId = @classId,
		NoOfSeats = @noOfSeats
	where 
		FlightId = @flightId
END
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
GO
/****** Object:  StoredProcedure [dbo].[UpdateRoutes]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateRoutes]
	-- Add the parameters for the stored procedure here
	@ID bigint,@DisInKms decimal,@Status bit	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Routes set DistanceInKms = @DisInKms, Status = @Status 
	where RouteId = @ID
END
GO
/****** Object:  Table [dbo].[Schedules]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedules](
	[ScheduleId] [bigint] IDENTITY(1,1) NOT NULL,
	[FlightId] [bigint] NOT NULL,
	[RouteId] [bigint] NOT NULL,
	[DepartureTime] [datetime] NULL,
	[ArrivalTime] [datetime] NULL,
	[DurationInMins] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [pk_FlightRoutes] PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__FlightRo__812C3CFD123EB7A3] UNIQUE NONCLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Schedules] ON
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (2, 4, 17, CAST(0x000000000083D600 AS DateTime), CAST(0x0000000000B54640 AS DateTime), 180, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (3, 2, 6, CAST(0x00000000011826C0 AS DateTime), CAST(0x0000000001391C40 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (6, 3, 10, CAST(0x00000000005265C0 AS DateTime), CAST(0x000000000083D600 AS DateTime), 180, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (7, 4, 4, CAST(0x000000000184B240 AS DateTime), CAST(0x000000000184B240 AS DateTime), 125, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (8, 1, 5, CAST(0x000000000184B240 AS DateTime), CAST(0x000000000184B240 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (9, 2, 9, CAST(0x000000000184B240 AS DateTime), CAST(0x000000000184B240 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (10, 1, 17, CAST(0x000000000184B240 AS DateTime), CAST(0x000000000184B240 AS DateTime), 105, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (11, 2, 17, CAST(0x0000000000328980 AS DateTime), CAST(0x0000000000C72090 AS DateTime), 541, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (12, 2, 17, CAST(0x0000000000328980 AS DateTime), CAST(0x0000000000C72090 AS DateTime), 541, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (13, 1, 1, CAST(0x000000000054DE90 AS DateTime), CAST(0x0000000000F84A80 AS DateTime), 595, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (14, 1, 17, CAST(0x0000000000C88020 AS DateTime), CAST(0x00000000011C4570 AS DateTime), 305, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (15, 3, 1, CAST(0x0000000000F73140 AS DateTime), CAST(0x00000000012B60A0 AS DateTime), 190, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (16, 3, 1, CAST(0x0000000000F73140 AS DateTime), CAST(0x00000000012B60A0 AS DateTime), 190, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (17, 4, 21, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (18, 4, 21, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (20, 5, 21, CAST(0x0000000000659FA0 AS DateTime), CAST(0x0000000000869520 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (21, 5, 21, CAST(0x0000000000659FA0 AS DateTime), CAST(0x0000000000869520 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (22, 5, 21, CAST(0x0000000000659FA0 AS DateTime), CAST(0x0000000000869520 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (23, 5, 25, CAST(0x0000000000659FA0 AS DateTime), CAST(0x0000000000761A60 AS DateTime), 60, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (24, 5, 25, CAST(0x0000000000659FA0 AS DateTime), CAST(0x0000000000761A60 AS DateTime), 60, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (25, 1, 21, CAST(0x0000000000FB4FF0 AS DateTime), CAST(0x00000000011C4570 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (26, 9, 26, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000869520 AS DateTime), 175, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (27, 9, 26, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000869520 AS DateTime), 175, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (30, 12, 40, CAST(0x0000000000735B40 AS DateTime), CAST(0x000000000087F4B0 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (32, 2, 39, CAST(0x0000000000568470 AS DateTime), CAST(0x000000000087F4B0 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (33, 4, 39, CAST(0x0000000000568470 AS DateTime), CAST(0x000000000087F4B0 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (34, 1, 39, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 150, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (35, 4, 28, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (36, 3, 29, CAST(0x0000000000659FA0 AS DateTime), CAST(0x000000000087F4B0 AS DateTime), 120, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (37, 5, 30, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (38, 9, 31, CAST(0x00000000007CF830 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 110, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (39, 6, 33, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 150, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (40, 9, 34, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000869520 AS DateTime), 110, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (42, 13, 35, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000869520 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (43, 3, 36, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 110, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (44, 1, 37, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 110, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (45, 3, 38, CAST(0x00000000007CF830 AS DateTime), CAST(0x0000000000A78AA0 AS DateTime), 150, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (46, 4, 39, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000869520 AS DateTime), 80, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (47, 13, 40, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 90, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (48, 6, 32, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000970FE0 AS DateTime), 110, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (49, 4, 32, CAST(0x0000000000735B40 AS DateTime), CAST(0x0000000000A78AA0 AS DateTime), 110, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (50, 3, 35, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000A78AA0 AS DateTime), 170, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (51, 7, 38, CAST(0x000000000057E400 AS DateTime), CAST(0x00000000016D4BA0 AS DateTime), 170, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (52, 8, 36, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000A78AA0 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (53, 6, 39, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000A78AA0 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (54, 6, 33, CAST(0x0000000000568470 AS DateTime), CAST(0x0000000000A78AA0 AS DateTime), 130, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (56, 1, 41, CAST(0x0000A1B100317040 AS DateTime), CAST(0x0000A1B1005AA320 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (57, 1, 42, CAST(0x0000A1B1005265C0 AS DateTime), CAST(0x0000A1B1007B98A0 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (58, 2, 43, CAST(0x0000A1B100317040 AS DateTime), CAST(0x0000A1B1005AA320 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (59, 3, 44, CAST(0x0000A1B10128A180 AS DateTime), CAST(0x0000A1B10151D460 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (60, 4, 45, CAST(0x0000A1B100317040 AS DateTime), CAST(0x0000A1B1005AA320 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (61, 5, 46, CAST(0x0000A1B1009450C0 AS DateTime), CAST(0x0000A1B101624F20 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (62, 6, 47, CAST(0x0000A1B100E6B680 AS DateTime), CAST(0x0000A1B10130DEE0 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (63, 7, 48, CAST(0x0000A1B100317040 AS DateTime), CAST(0x0000A1B1005AA320 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (64, 8, 49, CAST(0x0000A1B100D63BC0 AS DateTime), CAST(0x0000A1B101206420 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (65, 9, 50, CAST(0x0000A1B101391C40 AS DateTime), CAST(0x0000A1B101624F20 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (66, 12, 51, CAST(0x0000A1B100735B40 AS DateTime), CAST(0x0000A1B1009C8E20 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (67, 13, 52, CAST(0x0000A1B100317040 AS DateTime), CAST(0x0000A1B1005AA320 AS DateTime), 100, 1)
INSERT [dbo].[Schedules] ([ScheduleId], [FlightId], [RouteId], [DepartureTime], [ArrivalTime], [DurationInMins], [IsActive]) VALUES (68, 4, 1, CAST(0x000000000042BDF0 AS DateTime), CAST(0x0000000000FA7D00 AS DateTime), 912, 0)
SET IDENTITY_INSERT [dbo].[Schedules] OFF
/****** Object:  StoredProcedure [dbo].[InsertBookingForUser]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <12th Feb, 2013>
-- Description:	<Procedure to add booking for a user>
-- =============================================
CREATE PROCEDURE [dbo].[InsertBookingForUser]
	-- Add the parameters for the stored procedure here
	@BookingReferenceNo nvarchar(100),
	@UserName nvarchar(100)
	
AS
BEGIN
	DECLARE @UserId uniqueidentifier
	DECLARE @BookingId bigint
	
	-- Select information from the table
	Select @UserId = UserId From aspnet_Users Where UserName = @UserName
	Select @BookingId = BookingId From Bookings Where BookingReferenceNo = @BookingReferenceNo
	
	--Insert Into the Bookings Table
	INSERT INTO UserBookings(UserId, BookingId)
	VALUES(@UserId, @BookingId)
	
END
GO
/****** Object:  Table [dbo].[Passengers]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Passengers](
	[PassengerId] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gender] [char](6) NOT NULL,
	[DateOfBirth] [datetime] NOT NULL,
 CONSTRAINT [pk_Passengers] PRIMARY KEY CLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Passenge__88915FB132AB8735] UNIQUE NONCLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Passengers] ON
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (2, 3, N'Krishna Kumar S', N'M     ', CAST(0x0000A16100000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (3, 4, N'Krishna Kumar S', N'M     ', CAST(0x0000A16A00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (4, 5, N'Krishna Kumar S', N'M     ', CAST(0x0000A16A00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (5, 6, N'Krishna Kumar S', N'M     ', CAST(0x0000A16200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (7, 8, N'Krishna Kumar S', N'M     ', CAST(0x0000A18000000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (8, 9, N'Krishna Kumar S', N'M     ', CAST(0x0000A19B00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (9, 10, N'Krishna Kumar S', N'M     ', CAST(0x0000A19B00000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (16, 17, N'a', N'M     ', CAST(0x0000A1A200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (17, 18, N'a', N'M     ', CAST(0x0000A1A200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (18, 19, N'a', N'M     ', CAST(0x0000A1A200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (19, 20, N'a', N'M     ', CAST(0x0000A1A200000000 AS DateTime))
INSERT [dbo].[Passengers] ([PassengerId], [BookingId], [Name], [Gender], [DateOfBirth]) VALUES (20, 21, N'aa', N'M     ', CAST(0x0000A1A200000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Passengers] OFF
/****** Object:  StoredProcedure [dbo].[GetFlightClasses]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jagdeep>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightClasses]
@FlightId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select fc.FlightId,c.ClassId,c.ClassType,fc.NoOfSeats from FlightClasses fc inner join Classes c on fc.ClassId=c.ClassId where fc.FlightId=@FlightId
END
GO
/****** Object:  StoredProcedure [dbo].[GetRoutes]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRoutes]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT r.RouteId,c.CityId "FromCityId", c.CityName "FromCityName",t.CityId "ToCityId", t.CityName "ToCityName",r.DistanceInKms,r.Status from Routes r join Cities c
	on r.FromCityId = c.CityId join Cities t on r.ToCityId = t.CityId
END
GO
/****** Object:  StoredProcedure [dbo].[GetRouteId]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRouteId]
	-- Add the parameters for the stored procedure here
	@fromcity varchar(50), @tocity varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select 
	r.RouteId 
from 
	Routes r, Cities f, Cities t
where 
	r.FromCityId = f.CityId
	and r.ToCityId = t.CityId
	and f.CityName = @fromcity 
	and t.CityName = @tocity
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  Table [dbo].[FlightCosts]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightCosts](
	[FlightCostId] [bigint] IDENTITY(1,1) NOT NULL,
	[ScheduleId] [bigint] NOT NULL,
	[ClassId] [int] NOT NULL,
	[CostPerTicket] [decimal](18, 0) NOT NULL,
 CONSTRAINT [pk_FlightRouteCosts] PRIMARY KEY CLUSTERED 
(
	[FlightCostId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__FlightRo__9BF4383D3E1D39E1] UNIQUE NONCLUSTERED 
(
	[FlightCostId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FlightCosts] ON
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (1, 2, 1, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (2, 2, 2, CAST(9000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (4, 3, 1, CAST(8000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (5, 3, 2, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (6, 6, 1, CAST(7000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (7, 6, 2, CAST(9000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (8, 7, 1, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (9, 7, 2, CAST(7000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (10, 8, 1, CAST(8000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (11, 8, 2, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (12, 9, 1, CAST(7000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (13, 9, 2, CAST(8500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (14, 10, 1, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (15, 10, 2, CAST(12000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (16, 11, 1, CAST(2343 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (17, 12, 1, CAST(2343 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (18, 12, 2, CAST(3333 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (19, 13, 1, CAST(5656 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (20, 14, 1, CAST(5656 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (21, 14, 2, CAST(6767 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (22, 15, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (23, 16, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (24, 16, 2, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (25, 17, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (26, 18, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (27, 18, 2, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (28, 20, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (29, 21, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (30, 22, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (31, 22, 2, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (32, 23, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (33, 24, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (34, 24, 2, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (35, 25, 1, CAST(2500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (36, 25, 2, CAST(4500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (37, 26, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (38, 27, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (39, 27, 2, CAST(7000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (40, 30, 1, CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (41, 30, 2, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (43, 32, 1, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (44, 32, 2, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (45, 33, 1, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (46, 33, 2, CAST(8000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (48, 34, 1, CAST(4500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (49, 34, 2, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (50, 35, 1, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (51, 35, 2, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (52, 36, 1, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (53, 36, 2, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (54, 37, 1, CAST(3500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (55, 37, 2, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (56, 38, 1, CAST(4500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (57, 38, 2, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (58, 39, 1, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (59, 39, 2, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (60, 40, 1, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (61, 40, 2, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (62, 42, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (63, 42, 2, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (64, 43, 1, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (65, 43, 2, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (66, 44, 1, CAST(2500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (67, 44, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (68, 45, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (69, 45, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (70, 46, 1, CAST(2500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (71, 46, 2, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (72, 47, 1, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (73, 47, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (74, 48, 1, CAST(2300 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (75, 48, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (76, 49, 1, CAST(3700 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (77, 49, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (78, 50, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (79, 50, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (80, 51, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (81, 51, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (82, 52, 1, CAST(3500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (83, 52, 2, CAST(5500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (84, 53, 1, CAST(1500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (85, 53, 2, CAST(2500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (86, 54, 1, CAST(3500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (87, 54, 2, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (88, 56, 1, CAST(3000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (89, 56, 2, CAST(4500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (90, 57, 1, CAST(2500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (91, 57, 2, CAST(4500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (94, 58, 1, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (95, 58, 2, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (96, 59, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (97, 59, 2, CAST(4500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (98, 60, 1, CAST(3500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (99, 60, 2, CAST(5000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (100, 61, 1, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (101, 61, 2, CAST(7500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (102, 62, 1, CAST(4500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (103, 62, 2, CAST(5800 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (104, 63, 1, CAST(8000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (105, 63, 2, CAST(8500 AS Decimal(18, 0)))
GO
print 'Processed 100 total records'
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (106, 64, 1, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (107, 64, 2, CAST(7000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (108, 65, 1, CAST(4444 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (109, 65, 2, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (110, 66, 1, CAST(3500 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (111, 66, 2, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (112, 67, 1, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (113, 67, 2, CAST(6000 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (114, 68, 1, CAST(77 AS Decimal(18, 0)))
INSERT [dbo].[FlightCosts] ([FlightCostId], [ScheduleId], [ClassId], [CostPerTicket]) VALUES (115, 68, 2, CAST(99 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[FlightCosts] OFF
/****** Object:  Table [dbo].[FlightBookingSchedules]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightBookingSchedules](
	[FlightBookingScheduleId] [bigint] IDENTITY(1,1) NOT NULL,
	[BookingId] [bigint] NOT NULL,
	[ScheduleId] [bigint] NOT NULL,
	[CostPerTicket] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_FlightBookingSchedules] PRIMARY KEY CLUSTERED 
(
	[FlightBookingScheduleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FlightBookingSchedules] ON
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (1, 3, 2, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (3, 4, 3, CAST(2344 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (4, 5, 8, CAST(4356 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (5, 6, 2, CAST(5434 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (6, 8, 16, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (7, 9, 13, CAST(5656 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (8, 10, 15, CAST(4000 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (15, 17, 13, CAST(5656 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (16, 18, 10, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (17, 19, 13, CAST(5656 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (18, 20, 10, CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (19, 21, 57, CAST(2500 AS Decimal(18, 0)))
INSERT [dbo].[FlightBookingSchedules] ([FlightBookingScheduleId], [BookingId], [ScheduleId], [CostPerTicket]) VALUES (20, 21, 59, CAST(4000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[FlightBookingSchedules] OFF
/****** Object:  StoredProcedure [dbo].[GetScheduleFlight]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetScheduleFlight]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
		dbo.Schedules.ScheduleId,dbo.Schedules.RouteId,f.CityId "FromId",f.CityName "FromCity",t.CityId "ToId",t.CityName "ToCity",DepartureTime,ArrivalTime,DistanceInKms,DurationInMins,dbo.Flights.AirlineId,AirlineName,dbo.Schedules.FlightId,FlightName,[Status]
		from dbo.Schedules join dbo.Routes
			on dbo.Schedules.RouteId = dbo.Routes.RouteId join dbo.Cities f
			on dbo.Routes.FromCityId = f.CityId join dbo.Cities t on dbo.Routes.ToCityId = t.CityId join dbo.Flights
			on dbo.Schedules.FlightId = dbo.Flights.FlightId join dbo.Airlines
			on dbo.Flights.AirlineId = dbo.Airlines.AirlineId
END
GO
/****** Object:  StoredProcedure [dbo].[getScheduleDetails_BasedID]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getScheduleDetails_BasedID]
	-- Add the parameters for the stored procedure here
	@scheduleid int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select dbo.Schedules.ScheduleId,dbo.Schedules.RouteId,f.CityId "FromId",f.CityName "FromCity",t.CityId "ToId",t.CityName "ToCity",DepartureTime,ArrivalTime,DistanceInKms,DurationInMins,dbo.Flights.AirlineId,AirlineName,dbo.Schedules.FlightId,FlightName,Status from dbo.Schedules join dbo.Routes
on dbo.Schedules.RouteId = dbo.Routes.RouteId join dbo.Cities f
on dbo.Routes.FromCityId = f.CityId join dbo.Cities t on dbo.Routes.ToCityId = t.CityId join dbo.Flights
on dbo.Schedules.FlightId = dbo.Flights.FlightId join dbo.Airlines
on dbo.Flights.AirlineId = dbo.Airlines.AirlineId
where dbo.Schedules.ScheduleId = @scheduleid
END
GO
/****** Object:  StoredProcedure [dbo].[InsertPassengerDetails]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <26th Jan, 2013>
-- Description:	<Procedure to add passenger to flight booking>
-- =============================================
CREATE PROCEDURE [dbo].[InsertPassengerDetails]
	-- Add the parameters for the stored procedure here
	@BookingID BIGINT,
	@UserOptions varchar(max)
AS
BEGIN
	DECLARE @PassengerName NVARCHAR(50)
	DECLARE @PassengerGender VARCHAR(5)
	DECLARE @PassengerDateOfBirth DATE

	DECLARE @String VARCHAR(max)
	
	DECLARE @Semicolon CHAR(1)
	DECLARE @SemicolonCheck VARCHAR(1)
	DECLARE @SemicolonPos INT
	DECLARE @SemicolonString VARCHAR(max)
	DECLARE @NextSemicolonPos INT

	SET @String = @UserOptions
	
	SET @Semicolon  = ';'
	SET @SemicolonCheck = right(@String,1) 
	
	DECLARE @DelimiterTab CHAR(1)
	DECLARE @TabCheck VARCHAR(1)
	DECLARE @TabPos INT
	DECLARE @TabString VARCHAR(MAX)
	DECLARE @NextTabPos INT
	--Initialize
	SET @DelimiterTab  = '|'

	--Check for semicolon, if not exists, INSERT
	IF (@SemicolonCheck <> @Semicolon )
 		SET @String = @String + @Semicolon
	 
	--Get position of first semicolon
	SET @SemicolonPos = charindex(@Semicolon,@String)
	SET @NextSemicolonPos = 1
	 
	--Loop while there is still a Tab in the String
	WHILE (@SemicolonPos <>  0)  
	BEGIN
 		SET @SemicolonString = substring(@String,1,@SemicolonPos - 1)
 		--Select @SemicolonString
 		--***********
 		SET @TabCheck = right(@SemicolonString,1)
	 	
 		--Check for trailing Pipe if not exists, INSERT
		IF (@TabCheck <> @DelimiterTab )
			SET @SemicolonString = @SemicolonString + @DelimiterTab
				
		--Get position of first tab
		SET @TabPos = charindex(@DelimiterTab,@SemicolonString)
		SET @NextTabPos = 1		
			
		--Loop while there is still a Tab in the String
		WHILE (@TabPos <>  0)  
		BEGIN
			--============================
			IF @NextTabPos = 1
		 		SET @PassengerName = substring(@SemicolonString,1,@TabPos - 1)
		 	ELSE IF @NextTabPos = 2
		 		SET @PassengerGender = substring(@SemicolonString,1,@TabPos - 1)
		 	ELSE IF @NextTabPos = 3
		 		SET @PassengerDateOfBirth = substring(@SemicolonString,1,@TabPos - 1)
		 	--===============
			SET @SemicolonString = substring(@SemicolonString,@TabPos + 1,len(@SemicolonString))
					
  			SET @NextTabPos = @NextTabPos + 1
  			SET @TabPos= charindex(@DelimiterTab,@SemicolonString)
					
		END

		INSERT INTO Passengers
			VALUES(@BookingID,@PassengerName,@PassengerGender,@PassengerDateOfBirth)

		SET @String = substring(@String,@SemicolonPos + 1,len(@String))	
		SET @NextSemicolonPos = @NextSemicolonPos + 1
		SET @SemicolonPos= charindex(@Semicolon,@String)	
	end
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateSchedule]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateSchedule]
	-- Add the parameters for the stored procedure here
	@scheduleid int,@flightid int,@routeid int,@departuretime time,
	@arrivaltime time,@durationinmins int,@isactive bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update Schedules set FlightId = @flightid,RouteId = @routeid,DepartureTime = @departuretime,ArrivalTime = @arrivaltime,DurationInMins = @durationinmins,IsActive = @isactive where ScheduleId = @scheduleid
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateFlightCost]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFlightCost]
	-- Add the parameters for the stored procedure here
	@scheduleid int,@classid int,@cost decimal
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update FlightCosts set CostPerTicket = @cost where ScheduleId = @scheduleid and ClassId = @classid
END
GO
/****** Object:  StoredProcedure [dbo].[GetScheduleFlightCost]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetScheduleFlightCost]
	-- Add the parameters for the stored procedure here
	@scheduleid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
select dbo.Classes.ClassId,ClassType,CostPerTicket from dbo.FlightCosts join dbo.Schedules
on  dbo.Schedules.ScheduleId = dbo.FlightCosts.ScheduleId
join dbo.Classes on dbo.Classes.ClassId = 
dbo.FlightCosts.ClassId where dbo.Schedules.ScheduleId = @scheduleid;
END
GO
/****** Object:  StoredProcedure [dbo].[InsertFlightTicketSchedule]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <26th Jan, 2013>
-- Description:	<Procedure to add flight booking schedules>
-- =============================================
CREATE PROCEDURE [dbo].[InsertFlightTicketSchedule]
	-- Add the parameters for the stored procedure here
	@BookingId BIGINT,
	@ScheduleId BIGINT,
	@CostPerTicket DECIMAL	
AS
BEGIN
	--Insert Into the Bookings Table
	INSERT INTO FlightBookingSchedules(BookingId,ScheduleId,CostPerTicket)
	VALUES(@BookingId, @ScheduleId, @CostPerTicket)

	
END
GO
/****** Object:  StoredProcedure [dbo].[GetFlightSchedules]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Jan 25th,2013>
-- Description:	<Procedure to get all the connecting flights for the given search conditions>
-- =============================================
CREATE PROCEDURE [dbo].[GetFlightSchedules] 
	-- Add the parameters for the stored procedure here
	@FromCityId int, 
	@ToCityId int,
	@ClassId int	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Select
		f.FlightId, f.FlightName,
		a.AirlineId, a.AirlineName, a.AirlineCode, a.AirlineLogo,
		s.ScheduleId, s.DepartureTime, s.ArrivalTime, s.DurationInMins,
		s.IsActive, 
		r.DistanceInKms,
		fc.ClassId, fc.CostPerTicket,
		fromC.CityId as FromCityId, fromC.CityName as FromCityName,
		toC.CityId as ToCityId, toC.CityName as ToCityName,
		fcl.NoOfSeats
	From
		Schedules s, Flights f, Airlines a, [Routes] r, FlightCosts fc,
		Cities fromC, Cities toC, FlightClasses fcl
	Where
		s.RouteId = r.RouteId
		and r.FromCityId = @FromCityId
		and s.IsActive = 1
		and r.FromCityId = fromC.CityId
		and r.ToCityId = toC.CityId
		and s.FlightId = f.FlightId
		and f.AirlineId = a.AirlineId
		and s.ScheduleId = fc.ScheduleId
		and fc.ClassId = @ClassId
		and f.FlightId = fcl.FlightId
		and fcl.ClassId = @ClassId
		and DATEDIFF(hour,getdate(),s.departuretime) < 0 
		
	UNION
	
	Select
		f.FlightId, f.FlightName,
		a.AirlineId, a.AirlineName, a.AirlineCode, a.AirlineLogo,
		s.ScheduleId, s.DepartureTime, s.ArrivalTime, s.DurationInMins,
		s.IsActive, 
		r.DistanceInKms,
		fc.ClassId, fc.CostPerTicket,
		fromC.CityId as FromCityId, fromC.CityName as FromCityName,
		toC.CityId as ToCityId, toC.CityName as ToCityName,
		fcl.NoOfSeats
	From
		Schedules s, Flights f, Airlines a, [Routes] r, FlightCosts fc,
		Cities fromC, Cities toC, FlightClasses fcl
	Where
		s.RouteId = r.RouteId
		and r.ToCityId = @ToCityId
		and s.IsActive = 1
		and r.FromCityId = fromC.CityId
		and r.ToCityId = toC.CityId
		and s.FlightId = f.FlightId
		and f.AirlineId = a.AirlineId
		and s.ScheduleId = fc.ScheduleId
		and fc.ClassId = @ClassId	
		and f.FlightId = fcl.FlightId
		and fcl.ClassId = @ClassId
		and DATEDIFF(hour,getdate(),s.departuretime) < 0
	Order By
		fc.CostPerTicket Desc
END
GO
/****** Object:  StoredProcedure [dbo].[CheckAvailabilityOfSchedule]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <Jan 25th, 2013>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CheckAvailabilityOfSchedule] 
	-- Add the parameters for the stored procedure here
	@ScheduleId bigint,
	@NoOfSeats int,
	@DateOfJourney datetime,
	@ClassId int,
	@IsAvailable bit out
AS
BEGIN
	Declare @TotalSeatsBooked INT
	Declare @TotalSeatsCapacity INT
	
	-- To get total number of seats booked
	Select
		@TotalSeatsBooked = (isnull(SUM(fb.NoOfSeats), 0))
	From
		Bookings b, FlightBookings fb, FlightBookingSchedules fbs, Schedules s, Flights f, 
		FlightClasses fc
	Where
		b.BookingId = fb.BookingId
		and fb.BookingId = fbs.BookingId
		and fbs.ScheduleId = s.ScheduleId 
		and s.FlightId = f.FlightId
		and f.FlightId = fc.FlightId	
		and fc.ClassId = @ClassId
		and s.ScheduleId = @ScheduleId
		and fb.DateOfJourney = @DateofJourney
		and b.IsCanceled = 0
	
	-- To get total number of seats for a given schedule
	Select
		@TotalSeatsCapacity = fc.NoOfSeats
	From
		Schedules s, Flights f, 
		FlightClasses fc
	Where
		s.ScheduleId = @ScheduleId
		and s.FlightId = f.FlightId
		and f.FlightId = fc.FlightId
		and fc.ClassId = @ClassId
		
	-- To check if seats are available	
	If((@TotalSeatsCapacity - @TotalSeatsBooked) >= @NoOfSeats)
		Set @IsAvailable = 1
	else 
		Set @IsAvailable = 0
	
		
END
GO
/****** Object:  StoredProcedure [dbo].[BookFlightTicket]    Script Date: 07/08/2013 12:22:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Krishna Kumar S>
-- Create date: <26th Jan, 2013>
-- Description:	<Procedure to add flight booking>
-- =============================================
CREATE PROCEDURE [dbo].[BookFlightTicket]
	-- Add the parameters for the stored procedure here
	@TypeID INT,
	@DateOfJourney DATETIME,
	@NoOfSeats INT,
	@ClassID INT,
	@ContactName NVARCHAR(200),
	@Address NVARCHAR(500),
	@City NVARCHAR(100),
	@State NVARCHAR(100),
	@PinCode NVARCHAR(20),
	@Email NVARCHAR(100),
	@PhoneNo NVARCHAR(50),
	@MobileNo NVARCHAR(20),
	@PaymentRefernceNo NVARCHAR(50),
	@TotalCost DECIMAL,
	@PassengerDetails NVARCHAR(max),
	@BookingReferenceNumber nvarchar(100) out,
	@LastBookingID BIGINT out
	
AS
BEGIN
	DECLARE @Remarks NVARCHAR(200)
	DECLARE @IsCanceled BIT
	SET @Remarks='Booking Air Ticket'
	SET @IsCanceled= 0

	--Insert Into the Bookings Table
	INSERT INTO Bookings(TypeId,BookingDate,Remarks,TotalCost,IsCanceled)
	VALUES(@TypeID,GETDATE(),@Remarks,@TotalCost,@IsCanceled)
	SET @LastBookingID = SCOPE_IDENTITY();

	--Updating the Bookings Table
	SET @BookingReferenceNumber = 'HTRP' + convert(nvarchar(100), @LastBookingID)
	UPDATE Bookings SET BookingReferenceNo = @BookingReferenceNumber WHERE BookingId=@LastBookingID

	--Insert Into FlightBookings Table
	INSERT INTO FlightBookings(BookingId,DateOfJourney,NoOfSeats,ClassId)
	VALUES(@LastBookingID,@DateOfJourney,@NoOFSeats,@ClassID)

	--Insert Into Booking Contacts Table
	INSERT INTO BookingContacts (BookingId,ContactName,[Address],City,[State],PinCode,Email,PhoneNo,MobileNo)
	VALUES(@LastBookingID,@ContactName,@Address,@City,@State,@PinCode,@Email,@PhoneNo,@MobileNo)

	--Insert Into Booking Payments Table
	INSERT INTO BookingPayments(BookingId,PaymentDate,PaymentAmount,ReferenceNo)
	VALUES(@LastBookingID,GETDATE(),@TotalCost,@PaymentRefernceNo)

	--Insert into Passengers Details
	EXEC InsertPassengerDetails @LastBookingID,@PassengerDetails
END
GO
/****** Object:  Default [DF__aspnet_Ap__Appli__08EA5793]    Script Date: 07/08/2013 12:22:34 ******/
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__08EA5793]  DEFAULT (newid()) FOR [ApplicationId]
GO
/****** Object:  Default [DF__aspnet_Us__UserI__0EA330E9]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0EA330E9]  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF__aspnet_Us__Mobil__0F975522]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__0F975522]  DEFAULT (NULL) FOR [MobileAlias]
GO
/****** Object:  Default [DF__aspnet_Us__IsAno__108B795B]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__108B795B]  DEFAULT ((0)) FOR [IsAnonymous]
GO
/****** Object:  Default [DF__Bookings__Bookin__1BC821DD]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[Bookings] ADD  CONSTRAINT [DF__Bookings__Bookin__1BC821DD]  DEFAULT (getdate()) FOR [BookingDate]
GO
/****** Object:  Default [DF__Bookings__IsCanc__1CBC4616]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[Bookings] ADD  CONSTRAINT [DF__Bookings__IsCanc__1CBC4616]  DEFAULT ((0)) FOR [IsCanceled]
GO
/****** Object:  Default [DF__aspnet_Pa__PathI__5BE2A6F2]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__5BE2A6F2]  DEFAULT (newid()) FOR [PathId]
GO
/****** Object:  Default [DF__aspnet_Ro__RoleI__44FF419A]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__44FF419A]  DEFAULT (newid()) FOR [RoleId]
GO
/****** Object:  Default [DF__aspnet_Me__Passw__239E4DCF]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Membership] ADD  CONSTRAINT [DF__aspnet_Me__Passw__239E4DCF]  DEFAULT ((0)) FOR [PasswordFormat]
GO
/****** Object:  Default [DF__aspnet_Perso__Id__6754599E]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__6754599E]  DEFAULT (newid()) FOR [Id]
GO
/****** Object:  Default [DF__BookingPa__Payme__4C6B5938]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[BookingPayments] ADD  CONSTRAINT [DF__BookingPa__Payme__4C6B5938]  DEFAULT (getdate()) FOR [PaymentDate]
GO
/****** Object:  Default [DF__BookingCa__Cance__498EEC8D]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[BookingCancelations] ADD  CONSTRAINT [DF__BookingCa__Cance__498EEC8D]  DEFAULT (getdate()) FOR [CancelationDate]
GO
/****** Object:  Default [DF_Routes_DistanceInKms]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Routes] ADD  CONSTRAINT [DF_Routes_DistanceInKms]  DEFAULT ((0.0)) FOR [DistanceInKms]
GO
/****** Object:  Default [DF_Routes_Status]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Routes] ADD  CONSTRAINT [DF_Routes_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF__UserBooki__UserI__41EDCAC5]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[UserBookings] ADD  CONSTRAINT [DF__UserBooki__UserI__41EDCAC5]  DEFAULT (newid()) FOR [UserId]
GO
/****** Object:  Default [DF_Schedules_IsActive]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Schedules] ADD  CONSTRAINT [DF_Schedules_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__Appli__0DAF0CB0]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0]
GO
/****** Object:  ForeignKey [Relationship67]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[Flights]  WITH CHECK ADD  CONSTRAINT [Relationship67] FOREIGN KEY([AirlineId])
REFERENCES [dbo].[Airlines] ([AirlineId])
GO
ALTER TABLE [dbo].[Flights] CHECK CONSTRAINT [Relationship67]
GO
/****** Object:  ForeignKey [Relationship77]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [Relationship77] FOREIGN KEY([StateId])
REFERENCES [dbo].[States] ([StateId])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [Relationship77]
GO
/****** Object:  ForeignKey [Relationship88]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [Relationship88] FOREIGN KEY([TypeId])
REFERENCES [dbo].[BookingTypes] ([TypeId])
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [Relationship88]
GO
/****** Object:  ForeignKey [FK__aspnet_Pa__Appli__5AEE82B9]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__5AEE82B9]
GO
/****** Object:  ForeignKey [FK__aspnet_Ro__Appli__440B1D61]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__440B1D61]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__Appli__21B6055D]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__Appli__21B6055D] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__Appli__21B6055D]
GO
/****** Object:  ForeignKey [FK__aspnet_Me__UserI__22AA2996]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__22AA2996] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__22AA2996]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__628FA481]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__628FA481] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__628FA481]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__PathI__68487DD7]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__68487DD7]
GO
/****** Object:  ForeignKey [FK__aspnet_Pe__UserI__693CA210]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__693CA210] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__693CA210]
GO
/****** Object:  ForeignKey [Relationship90]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[BookingPayments]  WITH CHECK ADD  CONSTRAINT [Relationship90] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[BookingPayments] CHECK CONSTRAINT [Relationship90]
GO
/****** Object:  ForeignKey [Relationship78]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[BookingContacts]  WITH CHECK ADD  CONSTRAINT [Relationship78] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[BookingContacts] CHECK CONSTRAINT [Relationship78]
GO
/****** Object:  ForeignKey [Relationship89]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[BookingCancelations]  WITH CHECK ADD  CONSTRAINT [Relationship89] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[BookingCancelations] CHECK CONSTRAINT [Relationship89]
GO
/****** Object:  ForeignKey [Relationship73]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[FlightBookings]  WITH CHECK ADD  CONSTRAINT [Relationship73] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[FlightBookings] CHECK CONSTRAINT [Relationship73]
GO
/****** Object:  ForeignKey [Relationship85]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[FlightBookings]  WITH CHECK ADD  CONSTRAINT [Relationship85] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[FlightBookings] CHECK CONSTRAINT [Relationship85]
GO
/****** Object:  ForeignKey [Relationship81]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[FlightClasses]  WITH CHECK ADD  CONSTRAINT [Relationship81] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights] ([FlightId])
GO
ALTER TABLE [dbo].[FlightClasses] CHECK CONSTRAINT [Relationship81]
GO
/****** Object:  ForeignKey [Relationship82]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[FlightClasses]  WITH CHECK ADD  CONSTRAINT [Relationship82] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[FlightClasses] CHECK CONSTRAINT [Relationship82]
GO
/****** Object:  ForeignKey [FK__aspnet_Pr__UserI__38996AB5]    Script Date: 07/08/2013 12:22:38 ******/
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__RoleI__4AB81AF0]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__4AB81AF0] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__4AB81AF0]
GO
/****** Object:  ForeignKey [FK__aspnet_Us__UserI__49C3F6B7]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7]
GO
/****** Object:  ForeignKey [Relationship68]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Routes]  WITH CHECK ADD  CONSTRAINT [Relationship68] FOREIGN KEY([FromCityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Routes] CHECK CONSTRAINT [Relationship68]
GO
/****** Object:  ForeignKey [Relationship69]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Routes]  WITH CHECK ADD  CONSTRAINT [Relationship69] FOREIGN KEY([ToCityId])
REFERENCES [dbo].[Cities] ([CityId])
GO
ALTER TABLE [dbo].[Routes] CHECK CONSTRAINT [Relationship69]
GO
/****** Object:  ForeignKey [Relationship86]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[UserBookings]  WITH CHECK ADD  CONSTRAINT [Relationship86] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
GO
ALTER TABLE [dbo].[UserBookings] CHECK CONSTRAINT [Relationship86]
GO
/****** Object:  ForeignKey [Relationship87]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[UserBookings]  WITH CHECK ADD  CONSTRAINT [Relationship87] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[UserBookings] CHECK CONSTRAINT [Relationship87]
GO
/****** Object:  ForeignKey [Relationship70]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Relationship70] FOREIGN KEY([FlightId])
REFERENCES [dbo].[Flights] ([FlightId])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Relationship70]
GO
/****** Object:  ForeignKey [Relationship71]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Schedules]  WITH CHECK ADD  CONSTRAINT [Relationship71] FOREIGN KEY([RouteId])
REFERENCES [dbo].[Routes] ([RouteId])
GO
ALTER TABLE [dbo].[Schedules] CHECK CONSTRAINT [Relationship71]
GO
/****** Object:  ForeignKey [Relationship79]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[Passengers]  WITH CHECK ADD  CONSTRAINT [Relationship79] FOREIGN KEY([BookingId])
REFERENCES [dbo].[FlightBookings] ([BookingId])
GO
ALTER TABLE [dbo].[Passengers] CHECK CONSTRAINT [Relationship79]
GO
/****** Object:  ForeignKey [Relationship83]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[FlightCosts]  WITH CHECK ADD  CONSTRAINT [Relationship83] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
GO
ALTER TABLE [dbo].[FlightCosts] CHECK CONSTRAINT [Relationship83]
GO
/****** Object:  ForeignKey [Relationship84]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[FlightCosts]  WITH CHECK ADD  CONSTRAINT [Relationship84] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
GO
ALTER TABLE [dbo].[FlightCosts] CHECK CONSTRAINT [Relationship84]
GO
/****** Object:  ForeignKey [FK_FlightBookingSchedules_FlightBookings]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[FlightBookingSchedules]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookingSchedules_FlightBookings] FOREIGN KEY([BookingId])
REFERENCES [dbo].[FlightBookings] ([BookingId])
GO
ALTER TABLE [dbo].[FlightBookingSchedules] CHECK CONSTRAINT [FK_FlightBookingSchedules_FlightBookings]
GO
/****** Object:  ForeignKey [FK_FlightBookingSchedules_Schedules]    Script Date: 07/08/2013 12:22:39 ******/
ALTER TABLE [dbo].[FlightBookingSchedules]  WITH CHECK ADD  CONSTRAINT [FK_FlightBookingSchedules_Schedules] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedules] ([ScheduleId])
GO
ALTER TABLE [dbo].[FlightBookingSchedules] CHECK CONSTRAINT [FK_FlightBookingSchedules_Schedules]
GO
