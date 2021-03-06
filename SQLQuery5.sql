USE [GigaParseTestDemoDB]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 7/15/2016 4:29:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[CrDate] [datetime] NULL,
	[CrBy] [nvarchar](50) NULL,
	[PName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](256) NULL,
	[Location] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[ReceiptPrefix] [nvarchar](50) NULL,
	[RecordStatus] [int] NULL,
	[OfficeAddress] [nvarchar](256) NULL,
	[District] [nvarchar](50) NULL,
	[Village] [nvarchar](50) NULL,
	[Tehsil] [nvarchar](50) NULL,
	[Jurisdiction] [nvarchar](50) NULL,
	[PossessionDate] [datetime] NULL,
	[ReceiptNo] [nvarchar](50) NULL,
	[AuthoritySign] [nvarchar](100) NULL,
	[Contact] [nvarchar](30) NULL,
	[AuthEmail] [nvarchar](256) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Project] ON 

GO
INSERT [dbo].[Project] ([ProjectID], [CrDate], [CrBy], [PName], [CompanyName], [Location], [Address], [ReceiptPrefix], [RecordStatus], [OfficeAddress], [District], [Village], [Tehsil], [Jurisdiction], [PossessionDate], [ReceiptNo], [AuthoritySign], [Contact], [AuthEmail]) VALUES (1, CAST(N'2015-02-13 22:20:54.103' AS DateTime), N'admin', N'New Credo property', N'company name', N'Location of property', N'Property full address', N'SBP', 0, N'office full address which is registered.', NULL, NULL, NULL, N'judge', CAST(N'2015-02-13 00:00:00.000' AS DateTime), N'10', N'Auth Admin', NULL, NULL)
GO
INSERT [dbo].[Project] ([ProjectID], [CrDate], [CrBy], [PName], [CompanyName], [Location], [Address], [ReceiptPrefix], [RecordStatus], [OfficeAddress], [District], [Village], [Tehsil], [Jurisdiction], [PossessionDate], [ReceiptNo], [AuthoritySign], [Contact], [AuthEmail]) VALUES (2, CAST(N'2015-02-22 16:57:00.097' AS DateTime), N'admin', N'propetyname', N'company comax', N'delhi', N'full address', N'Credo2', 0, N'gurgaon sc 15', NULL, NULL, NULL, N'juridiction', CAST(N'2015-02-22 00:00:00.000' AS DateTime), N'0', N'admin', NULL, NULL)
GO
INSERT [dbo].[Project] ([ProjectID], [CrDate], [CrBy], [PName], [CompanyName], [Location], [Address], [ReceiptPrefix], [RecordStatus], [OfficeAddress], [District], [Village], [Tehsil], [Jurisdiction], [PossessionDate], [ReceiptNo], [AuthoritySign], [Contact], [AuthEmail]) VALUES (3, CAST(N'2015-10-17 16:13:37.000' AS DateTime), N'admin', N'property', N'companya me', N'indore', N'property full address', N'dev', 0, N'reg office full addres', NULL, NULL, NULL, N'juridiction', CAST(N'2015-10-17 00:00:00.000' AS DateTime), N'0', N'Admin', N'88989898989', N'devnagar@live.com')
GO
SET IDENTITY_INSERT [dbo].[Project] OFF
GO
