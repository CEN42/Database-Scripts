USE [master]
GO
/****** Object:  Database [EZ Snips]    Script Date: 4/21/2015 2:21:41 PM ******/
CREATE DATABASE [EZ Snips]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EZ Snips', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EZ Snips.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EZ Snips_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\EZ Snips_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EZ Snips] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EZ Snips].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EZ Snips] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EZ Snips] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EZ Snips] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EZ Snips] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EZ Snips] SET ARITHABORT OFF 
GO
ALTER DATABASE [EZ Snips] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EZ Snips] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EZ Snips] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EZ Snips] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EZ Snips] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EZ Snips] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EZ Snips] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EZ Snips] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EZ Snips] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EZ Snips] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EZ Snips] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EZ Snips] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EZ Snips] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EZ Snips] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EZ Snips] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EZ Snips] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EZ Snips] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EZ Snips] SET RECOVERY FULL 
GO
ALTER DATABASE [EZ Snips] SET  MULTI_USER 
GO
ALTER DATABASE [EZ Snips] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EZ Snips] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EZ Snips] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EZ Snips] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [EZ Snips] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EZ Snips', N'ON'
GO
USE [EZ Snips]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
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
	[StylistUsers_Id] [int] NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customers]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[userid] [int] IDENTITY(2,1) NOT NULL,
	[lastname] [varchar](50) NOT NULL,
	[firstname] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[rewards] [int] NULL,
	[phonenumber] [bigint] NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login.tbl]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login.tbl](
	[email] [varchar](50) NOT NULL,
	[password] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Login.tbl] PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[reser_id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NOT NULL,
	[tempid] [int] NOT NULL,
	[resStart] [smalldatetime] NOT NULL,
	[resEnd] [smalldatetime] NOT NULL,
	[serviceid] [int] NOT NULL,
	[stylistid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[reser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Services]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Services](
	[serviceid] [int] NOT NULL,
	[servicetitle] [varchar](30) NOT NULL,
	[servicedesc] [varchar](1000) NULL,
	[amount] [float] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[serviceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StylistProfileInfoes]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StylistProfileInfoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.StylistProfileInfoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tempCustomers]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tempCustomers](
	[firstname] [varchar](50) NOT NULL,
	[lastname] [varchar](50) NULL,
	[phonenumber] [bigint] NOT NULL,
	[tempid] [int] IDENTITY(2,1) NOT NULL,
 CONSTRAINT [PK_tempCustomers] PRIMARY KEY CLUSTERED 
(
	[tempid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.StylistProfileInfoes_StylistUsers_Id] FOREIGN KEY([StylistUsers_Id])
REFERENCES [dbo].[StylistProfileInfoes] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.StylistProfileInfoes_StylistUsers_Id]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Login.tbl] FOREIGN KEY([email])
REFERENCES [dbo].[Login.tbl] ([email])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Login.tbl]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Customers] FOREIGN KEY([userid])
REFERENCES [dbo].[Customers] ([userid])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Customers]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Services] FOREIGN KEY([serviceid])
REFERENCES [dbo].[Services] ([serviceid])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Services]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_StylistProfileInfoes] FOREIGN KEY([stylistid])
REFERENCES [dbo].[StylistProfileInfoes] ([Id])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_StylistProfileInfoes]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_tempCustomers] FOREIGN KEY([tempid])
REFERENCES [dbo].[tempCustomers] ([tempid])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_tempCustomers]
GO
/****** Object:  StoredProcedure [dbo].[cGetReservations_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[cGetReservations_sp]
 @Email varchar(50)
AS
BEGIN
 SET NOCOUNT ON;
 SELECT        dbo.StylistProfileInfoes.FirstName AS EmployeeFN
		, dbo.StylistProfileInfoes.LastName AS EmployeeLN
		, dbo.Customers.firstname AS CustomerFN
		, dbo.Customers.lastname AS CustomerLN 
		, dbo.Customers.email AS email
                ,dbo.Reservations.resStart AS reStart
		,dbo.Reservations.resEnd  AS resEnd
		,dbo.Services.servicetitle AS sTitle
		,dbo.Services.amount
FROM            dbo.Reservations INNER JOIN
                         dbo.Customers ON dbo.Reservations.userid = dbo.Customers.userid INNER JOIN
                         dbo.StylistProfileInfoes ON dbo.Reservations.stylistid = dbo.StylistProfileInfoes.Id INNER JOIN
                         dbo.Services ON dbo.Reservations.serviceid = dbo.Services.serviceid
WHERE		dbo.Customers.email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[get_customers_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Diana Salazar
-- Create date: 4/15/15
-- Description:	Gets customers
-- =============================================
CREATE PROCEDURE [dbo].[get_customers_sp]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT userid, lastname, firstname, phonenumber, concat(firstname,' ',lastname) AS fullName
	FROM dbo.Customers
	ORDER BY firstname
END



GO
/****** Object:  StoredProcedure [dbo].[get_services_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Diana Salazae
-- Create date: 4/15/15
-- Description:	gets all services
-- =============================================
CREATE PROCEDURE [dbo].[get_services_sp]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT serviceid, servicetitle, servicedesc, amount
	FROM [dbo].[Services]
	ORDER BY servicetitle ASC
END



GO
/****** Object:  StoredProcedure [dbo].[get_stylists_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Diana Salazae
-- Create date: 4/15/15
-- Description:	gets all services
-- =============================================
CREATE PROCEDURE [dbo].[get_stylists_sp]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Insert statements for procedure here
	SELECT Id, concat(FirstName, ' ',LastName) as name
	FROM [dbo].[StylistProfileInfoes]
	ORDER BY FirstName ASC
END




GO
/****** Object:  StoredProcedure [dbo].[get_suggestionCust_Names]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[get_suggestionCust_Names] 
	-- Add the parameters for the stored procedure here
	@searchTerm nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT firstname, lastname, phonenumber
	FROM [dbo].[Customers]
	WHERE firstname LIKE @searchTerm + '%'
END


GO
/****** Object:  StoredProcedure [dbo].[GetTempCustomer_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTempCustomer_sp] 
	-- Add the parameters for the stored procedure here
	@fname varchar(50),
	@lname varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT firstname, lastname, tempid
	FROM dbo.tempCustomers
	WHERE firstname = @fname AND lastname = @lname
	
END

GO
/****** Object:  StoredProcedure [dbo].[Insert_Reservation_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Insert_Reservation_sp] 
	-- Add the parameters for the stored procedure here
	@userid int
	,@tempid int
	,@serviceid int
	,@stylistid int
	,@rStart smalldatetime
	,@rEnd smalldatetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.Reservations
	(userid 
	,tempid 
	,serviceid 
	,stylistid 
	,resStart 
	,resEnd 
	)
	VALUES
	(@userid 
	,@tempid 
	,@serviceid
	,@stylistid 
	,@rStart
	,@rEnd
	)
END

GO
/****** Object:  StoredProcedure [dbo].[insert_TempCustomer_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insert_TempCustomer_sp] 
	-- Add the parameters for the stored procedure here
	@fname varchar(50),
	@lname varchar(50),
	@phonenumber bigint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.tempCustomers
	(firstname
	,lastname
	,phonenumber)
	VALUES
	(@fname
	,@lname
	,@phonenumber
	)
END

GO
/****** Object:  StoredProcedure [dbo].[login_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[login_sp]
	-- Add the parameters for the stored procedure here
	@email varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT email
	FROM dbo.[Login.tbl]
	where email = @email
END

GO
/****** Object:  StoredProcedure [dbo].[mngr_GetReservations_sp]    Script Date: 4/21/2015 2:21:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[mngr_GetReservations_sp]
	@startDate Date, 
	@endDate Date
AS
BEGIN
	SET NOCOUNT ON;
	SELECT EmployeeFN, EmployeeLN, concat(CustomerFN,' ',CustomerLN,'-', servicetitle) as details, resStart, resEnd
	FROM [dbo].[Reservations_vw]
	where resStart BETWEEN @startDate AND @endDate
END


GO
USE [master]
GO
ALTER DATABASE [EZ Snips] SET  READ_WRITE 
GO
