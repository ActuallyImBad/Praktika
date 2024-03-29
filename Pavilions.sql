USE [ArendaTC]
GO
/****** Object:  Table [dbo].[Arenda]    Script Date: 18.01.2022 13:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arenda](
	[ArendID] [int] NOT NULL,
	[ArendatorID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Center] [nvarchar](50) NULL,
	[SecondName] [nvarchar](50) NULL,
	[EmployersID] [int] NOT NULL,
	[PavilionNumber] [nvarchar](15) NOT NULL,
	[Status] [nvarchar](30) NOT NULL,
	[StartArenda] [date] NOT NULL,
	[EndArenda] [date] NOT NULL,
 CONSTRAINT [PK_Arenda] PRIMARY KEY CLUSTERED 
(
	[ArendID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Arendator]    Script Date: 18.01.2022 13:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Arendator](
	[ArendatorID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](30) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_Arendator] PRIMARY KEY CLUSTERED 
(
	[ArendatorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employers]    Script Date: 18.01.2022 13:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employers](
	[FIO] [nvarchar](100) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](20) NOT NULL,
	[Phone] [nvarchar](40) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[ID] [int] NOT NULL,
	[Img] [image] NULL,
 CONSTRAINT [PK_Employers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pavilions]    Script Date: 18.01.2022 13:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pavilions](
	[NameCenter] [nvarchar](50) NOT NULL,
	[PavilionNumber] [nvarchar](15) NOT NULL,
	[Floors] [int] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Square] [float] NOT NULL,
	[PriceArea] [float] NOT NULL,
	[KoeAddPrice] [float] NOT NULL,
 CONSTRAINT [PK_Pavilions] PRIMARY KEY CLUSTERED 
(
	[PavilionNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCenter]    Script Date: 18.01.2022 13:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCenter](
	[Name] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[Pavilion] [int] NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[ADDED VALUE] [float] NOT NULL,
	[Floors] [int] NOT NULL,
	[Img] [image] NULL,
 CONSTRAINT [PK_ShoppingCenter] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Arenda]  WITH CHECK ADD  CONSTRAINT [FK_Arenda_Arendator] FOREIGN KEY([ArendatorID])
REFERENCES [dbo].[Arendator] ([ArendatorID])
GO
ALTER TABLE [dbo].[Arenda] CHECK CONSTRAINT [FK_Arenda_Arendator]
GO
ALTER TABLE [dbo].[Arenda]  WITH CHECK ADD  CONSTRAINT [FK_Arenda_Employers] FOREIGN KEY([EmployersID])
REFERENCES [dbo].[Employers] ([ID])
GO
ALTER TABLE [dbo].[Arenda] CHECK CONSTRAINT [FK_Arenda_Employers]
GO
ALTER TABLE [dbo].[Arenda]  WITH CHECK ADD  CONSTRAINT [FK_Arenda_Pavilions] FOREIGN KEY([PavilionNumber])
REFERENCES [dbo].[Pavilions] ([PavilionNumber])
GO
ALTER TABLE [dbo].[Arenda] CHECK CONSTRAINT [FK_Arenda_Pavilions]
GO
ALTER TABLE [dbo].[Arenda]  WITH CHECK ADD  CONSTRAINT [FK_Arenda_ShoppingCenter] FOREIGN KEY([Name])
REFERENCES [dbo].[ShoppingCenter] ([Name])
GO
ALTER TABLE [dbo].[Arenda] CHECK CONSTRAINT [FK_Arenda_ShoppingCenter]
GO
