USE [ServicesExercise]
GO

ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF_Customer_CustomerSince]
GO

ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF_Customer_CreditLimit]
GO

ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF_Customer_Phone]
GO

ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF_Customer_Address]
GO

ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF_Customer_Name]
GO

ALTER TABLE [dbo].[Customer] DROP CONSTRAINT [DF_Customer_Id]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 4/17/2016 7:02:56 PM ******/
DROP TABLE [dbo].[Customer]
GO

/****** Object:  Table [dbo].[Customer]    Script Date: 4/17/2016 7:02:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Customer](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[Address] [varchar](max) NOT NULL,
	[Phone] [varchar](max) NOT NULL,
	[CreditLimit] [int] NOT NULL,
	[CustomerSince] [datetime] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Id]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Name]  DEFAULT ('') FOR [Name]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Address]  DEFAULT ('') FOR [Address]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Phone]  DEFAULT ('') FOR [Phone]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreditLimit]  DEFAULT ((0)) FOR [CreditLimit]
GO

ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CustomerSince]  DEFAULT (getdate()) FOR [CustomerSince]
GO


