USE [EZ Snips]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/13/2015 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[userid] [int] NULL,
	[lastname] [varchar](50) NULL,
	[firstname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[birthday] [date] NULL,
	[phonenumber] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 2/13/2015 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[userid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[starttime] [time](7) NOT NULL,
	[endtime] [time](7) NOT NULL,
	[serviceid] [int] NOT NULL,
	[stylistid] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Services]    Script Date: 2/13/2015 3:49:07 PM ******/
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
/****** Object:  Table [dbo].[Styists.tbl]    Script Date: 2/13/2015 3:49:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Styists.tbl](
	[stylistid] [int] NOT NULL,
	[lastname] [varchar](20) NOT NULL,
	[firstname] [varchar](20) NOT NULL,
	[middleinit] [char](1) NULL,
	[phone] [bigint] NULL,
 CONSTRAINT [PK_Styists.tbl] PRIMARY KEY CLUSTERED 
(
	[stylistid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
