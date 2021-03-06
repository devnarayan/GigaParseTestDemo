USE [GigaParseTestDemoDB]
GO
/****** Object:  UserDefinedTableType [dbo].[TypeExcelData]    Script Date: 7/18/2016 11:55:17 PM ******/
CREATE TYPE [dbo].[TypeExcelData] AS TABLE(
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Address1] [nvarchar](256) NULL,
	[Address2] [nvarchar](256) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [nvarchar](5) NULL
)
GO
/****** Object:  Table [dbo].[ExcelData]    Script Date: 7/18/2016 11:55:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExcelData](
	[SN] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNo] [nvarchar](20) NULL,
	[Address1] [nvarchar](256) NULL,
	[Address2] [nvarchar](256) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [nvarchar](5) NULL,
 CONSTRAINT [PK_ExcelData] PRIMARY KEY CLUSTERED 
(
	[SN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 7/18/2016 11:55:17 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_InsertData]    Script Date: 7/18/2016 11:55:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_InsertData]
(
 @dt TypeExcelData readonly
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   INSERT dbo.ExcelData(FirstName,LastName,PhoneNo,Address1,Address2,City,State,Zip)
    SELECT FirstName,LastName,PhoneNo,Address1,Address2,City,State,Zip FROM @dt;
END

GO
