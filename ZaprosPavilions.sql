USE [ArendaTC]
GO
CREATE TABLE [dbo].[ShoppingCenter] (
[Name] [nvarchar] (50) NOT NULL,
[Status] [nvarchar](50) NOT NULL,
[Pavilion] [int] NOT NULL,
[City] [nvarchar] (50) NOT NULL,
[Price] [money] NOT NULL,
[ADDED VALUE] [float] NOT NULL,
[Floors] [int] NOT NULL,
[Img] [image] NULL
Constraint PK_ShoppingCenter PRIMARY KEY CLUSTERED (
Name asc)
) on [PRIMARY]

GO
CREATE TABLE [dbo].[Employers](
[FIO] [nvarchar] (100) NOT NULL,
[Login] [nvarchar] (50) NOT NULL,
[Password] [nvarchar](50) NOT NULL,
[Role] [nvarchar] (20) NOT NULL,
[Phone] [nvarchar](40) NOT NULL,
[Gender] [nvarchar](50) NOT NULL,
[ID] [int] NOT NULL,
[Img] [image] NULL
Constraint PK_Employers PRIMARY KEY CLUSTERED (
ID asc)
) on [PRIMARY]

GO
CREATE TABLE [dbo].[Pavilions](
[NameCenter] [nvarchar](50) NOT NULL,
[PavilionNumber] [nvarchar] (15) NOT NULL,
[Floors] [int] NOT NULL,
[Status] [nvarchar](50) NOT NULL,
[Square] [float] NOT NULL,
[PriceArea] [Float] NOT NULL,
[KoeAddPrice] [float] NOT NULL
Constraint PK_Pavilions PRIMARY KEY CLUSTERED (
PavilionNumber asc)
) on [PRIMARY]
GO
CREATE TABLE [dbo]. [Arendator] (
[ArendatorID] [int] NOT NULL,
[Name] [nvarchar] (50) NOT NULL,
[Phone] [nvarchar] (30) NOT NULL,
[Address] [nvarchar](60) NOT NULL
CONSTRAINT  PK_Arendator PRIMARY KEY CLUSTERED (
ArendatorID asc)
) on [PRIMARY]
GO
CREATE TABLE [dbo].[Arenda](
[ArendID] [int] NOT NULL,
[ArendatorID] [int] NOT NULL,
[Name] [nvarchar] (50) NOT NULL,
[Center] [nvarchar](50) NULL,
[SecondName] [nvarchar](50) NULL,
[EmployersID] [int] NOT NULL,
[PavilionNumber] [nvarchar](15) NOT NULL,
[Status] [nvarchar](30) NOT NULL,
[StartArenda] [date] NOT NULL,
[EndArenda] [date] NOT NULL
Constraint PK_Arenda PRIMARY KEY CLUSTERED(
ArendID asc)
) on [PRIMARY]

