USE Master
GO
DROP Database GourmetShop
GO

CREATE DATABASE GourmetShop
GO

USE [GourmetShop]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](40) NOT NULL,
	[LastName] [nvarchar](40) NOT NULL,
	[City] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[Phone] [nvarchar](20) NULL,
	[Username] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[Salt] [nvarchar](30) NULL,
	[DateCreated] [smalldatetime] NULL,
	[Vists] [smallint] NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[OrderNumber] [nvarchar](10) NULL,
	[CustomerId] [int] NOT NULL,
	[TotalAmount] [decimal](12, 2) NULL,
 CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[UnitPrice] [decimal](12, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ORDERITEM] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[SupplierId] [int] NOT NULL,
	[UnitPrice] [decimal](12, 2) NULL,
	[Package] [nvarchar](30) NULL,
	[IsDiscontinued] [bit] NOT NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[ContactName] [nvarchar](50) NULL,
	[ContactTitle] [nvarchar](40) NULL,
	[City] [nvarchar](40) NULL,
	[Country] [nvarchar](40) NULL,
	[Phone] [nvarchar](30) NULL,
	[Fax] [nvarchar](30) NULL,
 CONSTRAINT [PK_SUPPLIER] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (1, N'MariaMania', N'Anders', N'Berliny', N'Germany', N'030-0074321', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (2, N'Ana', N'Trujillo', N'México D.F.', N'Mexico', N'5554545', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (3, N'Antonio', N'Moreno', N'Mexico City', N'Mexico', N'206 555-5555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (4, N'Thomas', N'Hardy', N'London', N'UK', N'(171) 555-7788', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (5, N'Christina', N'Berglund', N'Luleå', N'Sweden', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (6, N'Hanna', N'Moos', N'Mannheim', N'Germany', N'555-5555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (7, N'Frédérique', N'Citeaux', N'Strasbourg', N'France', N'88.60.15.31', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (8, N'Martín', N'Sommer', N'Madrid', N'Spain', N'(91) 555 22 82', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (9, N'Laurence', N'Lebihan', N'Marseille', N'France', N'555-5555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (10, N'Elizabeth', N'Lincoln', N'Tsawassen', N'Canada', N'(604) 555-4729', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (11, N'Victoria', N'Ashworth', N'London', N'UK', N'(171) 555-1212', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (12, N'Patricio', N'Simpson', N'Buenos Aires', N'Argentina', N'(1) 135-5555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (13, N'Francisco', N'Chang', N'México D.F.', N'Mexico', N'(5) 555-3392', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (14, N'Yang', N'Wang', N'Bern', N'Switzerland', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (15, N'Pedro', N'Afonso', N'Sao Paulo', N'Brazil', N'(11) 555-7647', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (16, N'Elizabeth', N'Brown', N'London', N'UK', N'(171) 555-2282', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (17, N'Sven', N'Ottlieb', N'Aachen', N'Germany', N'0241-039123', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (18, N'Janine', N'Labrune', N'Nantes', N'France', N'40.67.88.88', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (19, N'Ann', N'Devon', N'London', N'UK', N'(171) 555-0297', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (20, N'Roland', N'Hagen', N'Graz', N'Austria', N'7675-3425', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (21, N'Aria', N'Cruz', N'Sao Paulo', N'Brazil', N'(11) 555-9857', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (22, N'Diego', N'Roel', N'Madrid', N'Spain', N'(91) 555 94 44', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (23, N'Martine', N'Rancé', N'Lille', N'France', N'20.16.10.16', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (24, N'Maria', N'Larsson', N'Bräcke', N'Sweden', N'0695-34 67 21', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (25, N'Peter', N'Franken', N'München', N'Germany', N'089-0877310', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (26, N'Carine', N'Schmitt', N'Nantes', N'France', N'40.32.21.21', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (27, N'Paolo', N'Accorti', N'Torino', N'Italy', N'011-4988260', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (28, N'Lino', N'Rodriguez', N'Lisboa', N'Portugal', N'(1) 354-2534', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (29, N'Eduardo', N'Saavedra', N'Barcelona', N'Spain', N'(93) 203 4560', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (30, N'José', N'Pedro Freyre', N'Sevilla', N'Spain', N'(95) 555 82 82', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (31, N'Andréwefwefwefwefwefwefewfewfewf', N'Fonsecafwwefwefwefwefwefewfewfewf', N'Campinas', N'Brazil', N'(11) 555-9482', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (32, N'Howard', N'Snyder', N'Eugene', N'USA', N'(503) 555-7555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (33, N'Manuel', N'Pereira', N'Caracas', N'Venezuela', N'(2) 283-2951', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (34, N'Mario', N'Pontes', N'Rio de Janeiro', N'Brazil', N'(21) 555-0091', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (35, N'Carlos', N'Hernández', N'San Cristóbal', N'Venezuela', N'(5) 555-1340', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (36, N'Yoshi', N'Latimer', N'Elgin', N'USA', N'(503) 555-6874', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (37, N'Patricia', N'McKenna', N'Cork', N'Ireland', N'2967 542', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (38, N'Helen', N'Bennett', N'Cowes', N'UK', N'(198) 555-8888', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (39, N'Philip', N'Cramer', N'Brandenburg', N'Germany', N'0555-09876', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (40, N'Daniel', N'Tonini', N'Versailles', N'France', N'30.59.84.10', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (41, N'Annette', N'Roulet', N'Toulouse', N'France', N'61.77.61.10', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (42, N'Yoshi', N'Tannamuri', N'Vancouver', N'Canada', N'(604) 555-3392', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (43, N'John', N'Steel', N'Walla Walla', N'USA', N'(509) 555-7969', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (44, N'Renate', N'Messner', N'Frankfurt a.M.', N'Germany', N'069-0245984', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (45, N'Jaime', N'Yorres', N'San Francisco', N'USA', N'(415) 555-5938', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (46, N'Carlos', N'González', N'Barquisimeto', N'Venezuela', N'(9) 331-6954', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (47, N'Felipe', N'Izquierdo', N'I. de Margarita', N'Venezuela', N'(8) 34-56-12', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (48, N'Fran', N'Wilson', N'Portland', N'USA', N'(503) 555-9573', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (49, N'Giovanni', N'Rovelli', N'Bergamo', N'Italy', N'035-640230', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (50, N'Catherine', N'Dewey', N'Bruxelles', N'Belgium', N'(02) 201 24 67', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (51, N'Jean', N'Fresnière', N'Montréal', N'Canada', N'(514) 555-8054', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (52, N'Alexander', N'Feuer', N'Leipzig', N'Germany', N'0342-023176', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (53, N'Simon', N'Crowther', N'London', N'UK', N'(171) 555-7733', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (54, N'Yvonne', N'Moncada', N'Buenos Aires', N'Argentina', N'(1) 135-5333', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (55, N'Rene', N'Phillips', N'Anchorage', N'USA', N'(907) 555-7584', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (56, N'Henriette', N'Pfalzheim', N'Köln', N'Germany', N'0221-0644327', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (57, N'Marie', N'Bertrand', N'Paris', N'France', N'(1) 42.34.22.66', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (58, N'Guillermo', N'Fernández', N'México D.F.', N'Mexico', N'(5) 552-3745', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (59, N'Georg', N'Pipps', N'Salzburg', N'Austria', N'6562-9722', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (60, N'Isabel', N'de Castro', N'Lisboa', N'Portugal', N'(1) 356-5634', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (61, N'Bernardo', N'Batista', N'Rio de Janeiro', N'Brazil', N'(21) 555-4252', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (62, N'Lúcia', N'Carvalho', N'Sao Paulo', N'Brazil', N'(11) 555-1189', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (63, N'Horst', N'Kloss', N'Cunewalde', N'Germany', N'0372-035188', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (64, N'Sergio', N'Gutiérrez', N'Buenos Aires', N'Argentina', N'(1) 123-5555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (65, N'Paula', N'Wilson', N'Albuquerque', N'USA', N'(505) 555-5939', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (66, N'Maurizio', N'Moroni', N'Reggio Emilia', N'Italy', N'0522-556721', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (67, N'Janete', N'Limeira', N'Rio de Janeiro', N'Brazil', N'(21) 555-3412', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (68, N'Michael', N'Holz', N'Genève', N'Switzerland', N'0897-034214', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (69, N'Alejandra', N'Camino', N'Madrid', N'Spain', N'(91) 745 6200', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (70, N'Jonas', N'Bergulfsen', N'Stavern', N'Norway', N'07-98 92 35', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (71, N'Jose', N'Pavarotti', N'Boise', N'USA', N'(208) 555-8097', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (72, N'Hari', N'Kumar', N'London', N'UK', N'(171) 555-1717', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (73, N'Jytte', N'Petersen', N'Kobenhavn', N'Denmark', N'31 12 34 56', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (74, N'Dominique', N'Perrier', N'Paris', N'France', N'(1) 47.55.60.10', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (75, N'Art', N'Braunschweiger', N'Lander', N'USA', N'(307) 555-4680', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (76, N'Pascale', N'Cartrain', N'Charleroi', N'Belgium', N'(071) 23 67 22 20', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (77, N'Liz', N'Nixon', N'Portland', N'USA', N'(503) 555-3612', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (78, N'Liu', N'Wong', N'Butte', N'USA', N'(406) 555-5834', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (79, N'Karin', N'Josephs', N'Münster', N'Germany', N'0251-031259', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (80, N'Miguel', N'Angel Paolino', N'México D.F.', N'Mexico', N'(5) 555-2933', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (81, N'Anabela', N'Domingues', N'Sao Paulo', N'Brazil', N'(11) 555-2167', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (82, N'Helvetius', N'Nagy', N'Kirkland', N'USA', N'(206) 555-8257', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (83, N'Palle', N'Ibsen', N'Århus', N'Denmark', N'86 21 32 43', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (84, N'Mary', N'Saveley', N'Lyon', N'France', N'78.32.54.86', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (85, N'Paul', N'Henriot', N'Reims', N'France', N'26.47.15.10', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (86, N'Rita', N'Müller', N'Stuttgart', N'Germany', N'0711-020361', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (87, N'Pirkko', N'Koskitalo', N'Oulu', N'Finland', N'981-443655', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (88, N'Paula', N'Parente', N'Resende', N'Brazil', N'(14) 555-8122', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (89, N'Karl', N'Jablonski', N'Seattle', N'USA', N'(206) 555-4112', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (90, N'Matti', N'Karttunen', N'Helsinki', N'Finland', N'90-224 8858', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (91, N'Zbyszek', N'Piestrzeniewicz', N'Warszawa', N'Poland', N'(26) 642-7012', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (95, N'sdf', N'sdf', N'sdf', N'sdf', N'sdf', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (96, N'Bob', N'Jones', N'Seattle', N'USA', N'2065555555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (97, N'Fred', N'Flintstone', N'Decrock', N'USA', N'555555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (98, N'Jim', N'Smith', N'Tacoma', N'USA', N'5555555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (99, N'Bill', N'Gates', N'Redmond', N'USA', N'werwer', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (100, N'Larry', N'Elison', N'Palto Alto', N'USA', N'3104445555', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (101, N'asda', N'asd', N'asdas', N'asdas', N'asda', NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [City], [Country], [Phone], [Username], [Pass], [Salt], [DateCreated], [Vists]) VALUES (102, N'Bugs', N'Bunny', N'Warner Bros Tow', N'USA', N'4445556666', NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (1, CAST(N'2012-07-04T00:00:00.000' AS DateTime), N'542378', 85, CAST(440.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (2, CAST(N'2012-07-05T00:00:00.000' AS DateTime), N'542379', 79, CAST(1863.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (3, CAST(N'2012-07-08T00:00:00.000' AS DateTime), N'542380', 34, CAST(1813.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (4, CAST(N'2012-07-08T00:00:00.000' AS DateTime), N'542381', 84, CAST(670.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (5, CAST(N'2012-07-09T00:00:00.000' AS DateTime), N'542382', 76, CAST(3730.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (6, CAST(N'2012-07-10T00:00:00.000' AS DateTime), N'542383', 34, CAST(1444.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (7, CAST(N'2012-07-11T00:00:00.000' AS DateTime), N'542384', 14, CAST(625.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (8, CAST(N'2012-07-12T00:00:00.000' AS DateTime), N'542385', 68, CAST(2490.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (9, CAST(N'2012-07-15T00:00:00.000' AS DateTime), N'542386', 88, CAST(517.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (10, CAST(N'2012-07-16T00:00:00.000' AS DateTime), N'542387', 35, CAST(1119.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (11, CAST(N'2012-07-17T00:00:00.000' AS DateTime), N'542388', 20, CAST(2018.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (12, CAST(N'2012-07-18T00:00:00.000' AS DateTime), N'542389', 13, CAST(100.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (13, CAST(N'2012-07-19T00:00:00.000' AS DateTime), N'542390', 56, CAST(1746.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (14, CAST(N'2012-07-19T00:00:00.000' AS DateTime), N'542391', 61, CAST(448.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (15, CAST(N'2012-07-22T00:00:00.000' AS DateTime), N'542392', 65, CAST(624.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (16, CAST(N'2012-07-23T00:00:00.000' AS DateTime), N'542393', 20, CAST(2464.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (17, CAST(N'2012-07-24T00:00:00.000' AS DateTime), N'542394', 24, CAST(724.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (18, CAST(N'2012-07-25T00:00:00.000' AS DateTime), N'542395', 7, CAST(1176.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (19, CAST(N'2012-07-26T00:00:00.000' AS DateTime), N'542396', 87, CAST(364.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (20, CAST(N'2012-07-29T00:00:00.000' AS DateTime), N'542397', 25, CAST(4031.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (21, CAST(N'2012-07-30T00:00:00.000' AS DateTime), N'542398', 33, CAST(1101.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (22, CAST(N'2012-07-31T00:00:00.000' AS DateTime), N'542399', 89, CAST(676.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (23, CAST(N'2012-08-01T00:00:00.000' AS DateTime), N'542400', 87, CAST(1376.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (24, CAST(N'2012-08-01T00:00:00.000' AS DateTime), N'542401', 75, CAST(48.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (25, CAST(N'2012-08-02T00:00:00.000' AS DateTime), N'542402', 65, CAST(1456.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (26, CAST(N'2012-08-05T00:00:00.000' AS DateTime), N'542403', 63, CAST(2142.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (27, CAST(N'2012-08-06T00:00:00.000' AS DateTime), N'542404', 85, CAST(538.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (28, CAST(N'2012-08-07T00:00:00.000' AS DateTime), N'542405', 49, CAST(307.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (29, CAST(N'2012-08-08T00:00:00.000' AS DateTime), N'542406', 80, CAST(420.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (30, CAST(N'2012-08-09T00:00:00.000' AS DateTime), N'542407', 52, CAST(1200.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (31, CAST(N'2012-08-12T00:00:00.000' AS DateTime), N'542408', 5, CAST(1488.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (32, CAST(N'2012-08-13T00:00:00.000' AS DateTime), N'542409', 44, CAST(468.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (33, CAST(N'2012-08-14T00:00:00.000' AS DateTime), N'542410', 5, CAST(613.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (34, CAST(N'2012-08-14T00:00:00.000' AS DateTime), N'542411', 69, CAST(86.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (35, CAST(N'2012-08-15T00:00:00.000' AS DateTime), N'542412', 69, CAST(155.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (36, CAST(N'2012-08-16T00:00:00.000' AS DateTime), N'542413', 46, CAST(1414.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (37, CAST(N'2012-08-19T00:00:00.000' AS DateTime), N'542414', 44, CAST(1452.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (38, CAST(N'2012-08-20T00:00:00.000' AS DateTime), N'542415', 63, CAST(2179.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (39, CAST(N'2012-08-21T00:00:00.000' AS DateTime), N'542416', 63, CAST(3016.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (40, CAST(N'2012-08-22T00:00:00.000' AS DateTime), N'542417', 67, CAST(924.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (41, CAST(N'2012-08-23T00:00:00.000' AS DateTime), N'542418', 66, CAST(89.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (42, CAST(N'2012-08-26T00:00:00.000' AS DateTime), N'542419', 11, CAST(479.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (43, CAST(N'2012-08-27T00:00:00.000' AS DateTime), N'542420', 15, CAST(2169.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (44, CAST(N'2012-08-27T00:00:00.000' AS DateTime), N'542421', 61, CAST(552.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (45, CAST(N'2012-08-28T00:00:00.000' AS DateTime), N'542422', 81, CAST(1296.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (46, CAST(N'2012-08-29T00:00:00.000' AS DateTime), N'542423', 80, CAST(848.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (47, CAST(N'2012-08-30T00:00:00.000' AS DateTime), N'542424', 65, CAST(1887.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (48, CAST(N'2012-09-02T00:00:00.000' AS DateTime), N'542425', 85, CAST(121.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (49, CAST(N'2012-09-03T00:00:00.000' AS DateTime), N'542426', 46, CAST(1050.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (50, CAST(N'2012-09-04T00:00:00.000' AS DateTime), N'542427', 7, CAST(1420.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (51, CAST(N'2012-09-05T00:00:00.000' AS DateTime), N'542428', 37, CAST(3127.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (52, CAST(N'2012-09-06T00:00:00.000' AS DateTime), N'542429', 67, CAST(349.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (53, CAST(N'2012-09-09T00:00:00.000' AS DateTime), N'542430', 49, CAST(608.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (54, CAST(N'2012-09-09T00:00:00.000' AS DateTime), N'542431', 86, CAST(755.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (55, CAST(N'2012-09-10T00:00:00.000' AS DateTime), N'542432', 76, CAST(2708.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (56, CAST(N'2012-09-11T00:00:00.000' AS DateTime), N'542433', 30, CAST(1242.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (57, CAST(N'2012-09-12T00:00:00.000' AS DateTime), N'542434', 80, CAST(954.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (58, CAST(N'2012-09-13T00:00:00.000' AS DateTime), N'542435', 55, CAST(4157.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (59, CAST(N'2012-09-16T00:00:00.000' AS DateTime), N'542436', 69, CAST(498.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (60, CAST(N'2012-09-17T00:00:00.000' AS DateTime), N'542437', 48, CAST(424.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (61, CAST(N'2012-09-18T00:00:00.000' AS DateTime), N'542438', 2, CAST(88.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (62, CAST(N'2012-09-19T00:00:00.000' AS DateTime), N'542439', 37, CAST(1762.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (63, CAST(N'2012-09-20T00:00:00.000' AS DateTime), N'542440', 77, CAST(336.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (64, CAST(N'2012-09-20T00:00:00.000' AS DateTime), N'542441', 18, CAST(268.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (65, CAST(N'2012-09-23T00:00:00.000' AS DateTime), N'542442', 86, CAST(1614.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (66, CAST(N'2012-09-24T00:00:00.000' AS DateTime), N'542443', 63, CAST(182.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (67, CAST(N'2012-09-25T00:00:00.000' AS DateTime), N'542444', 65, CAST(2327.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (68, CAST(N'2012-09-26T00:00:00.000' AS DateTime), N'542445', 38, CAST(516.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (69, CAST(N'2012-09-27T00:00:00.000' AS DateTime), N'542446', 65, CAST(2835.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (70, CAST(N'2012-09-30T00:00:00.000' AS DateTime), N'542447', 48, CAST(288.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (71, CAST(N'2012-10-01T00:00:00.000' AS DateTime), N'542448', 38, CAST(240.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (72, CAST(N'2012-10-02T00:00:00.000' AS DateTime), N'542449', 80, CAST(1191.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (73, CAST(N'2012-10-03T00:00:00.000' AS DateTime), N'542450', 87, CAST(516.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (74, CAST(N'2012-10-03T00:00:00.000' AS DateTime), N'542451', 38, CAST(144.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (75, CAST(N'2012-10-04T00:00:00.000' AS DateTime), N'542452', 58, CAST(112.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (76, CAST(N'2012-10-07T00:00:00.000' AS DateTime), N'542453', 39, CAST(164.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (77, CAST(N'2012-10-08T00:00:00.000' AS DateTime), N'542454', 71, CAST(6155.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (78, CAST(N'2012-10-09T00:00:00.000' AS DateTime), N'542455', 39, CAST(1497.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (79, CAST(N'2012-10-10T00:00:00.000' AS DateTime), N'542456', 8, CAST(982.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (80, CAST(N'2012-10-11T00:00:00.000' AS DateTime), N'542457', 24, CAST(2262.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (81, CAST(N'2012-10-14T00:00:00.000' AS DateTime), N'542458', 28, CAST(1168.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (82, CAST(N'2012-10-15T00:00:00.000' AS DateTime), N'542459', 75, CAST(4819.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (83, CAST(N'2012-10-16T00:00:00.000' AS DateTime), N'542460', 46, CAST(1940.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (84, CAST(N'2012-10-16T00:00:00.000' AS DateTime), N'542461', 9, CAST(88.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (85, CAST(N'2012-10-17T00:00:00.000' AS DateTime), N'542462', 51, CAST(2233.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (86, CAST(N'2012-10-18T00:00:00.000' AS DateTime), N'542463', 87, CAST(954.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (87, CAST(N'2012-10-21T00:00:00.000' AS DateTime), N'542464', 84, CAST(144.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (88, CAST(N'2012-10-22T00:00:00.000' AS DateTime), N'542465', 37, CAST(2545.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (89, CAST(N'2012-10-23T00:00:00.000' AS DateTime), N'542466', 60, CAST(316.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (90, CAST(N'2012-10-24T00:00:00.000' AS DateTime), N'542467', 25, CAST(2467.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (91, CAST(N'2012-10-25T00:00:00.000' AS DateTime), N'542468', 55, CAST(934.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (92, CAST(N'2012-10-28T00:00:00.000' AS DateTime), N'542469', 51, CAST(3463.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (93, CAST(N'2012-10-29T00:00:00.000' AS DateTime), N'542470', 9, CAST(2564.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (94, CAST(N'2012-10-29T00:00:00.000' AS DateTime), N'542471', 73, CAST(412.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (95, CAST(N'2012-10-30T00:00:00.000' AS DateTime), N'542472', 25, CAST(2300.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (96, CAST(N'2012-10-31T00:00:00.000' AS DateTime), N'542473', 44, CAST(1586.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (97, CAST(N'2012-11-01T00:00:00.000' AS DateTime), N'542474', 89, CAST(2856.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (98, CAST(N'2012-11-04T00:00:00.000' AS DateTime), N'542475', 63, CAST(2924.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (99, CAST(N'2012-11-05T00:00:00.000' AS DateTime), N'542476', 65, CAST(1731.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (100, CAST(N'2012-11-06T00:00:00.000' AS DateTime), N'542477', 21, CAST(928.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (101, CAST(N'2012-11-07T00:00:00.000' AS DateTime), N'542478', 86, CAST(396.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (102, CAST(N'2012-11-08T00:00:00.000' AS DateTime), N'542479', 75, CAST(141.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (103, CAST(N'2012-11-11T00:00:00.000' AS DateTime), N'542480', 41, CAST(713.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (104, CAST(N'2012-11-11T00:00:00.000' AS DateTime), N'542481', 20, CAST(5677.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (105, CAST(N'2012-11-12T00:00:00.000' AS DateTime), N'542482', 28, CAST(154.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (106, CAST(N'2012-11-13T00:00:00.000' AS DateTime), N'542483', 59, CAST(10741.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (107, CAST(N'2012-11-14T00:00:00.000' AS DateTime), N'542484', 58, CAST(568.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (108, CAST(N'2012-11-15T00:00:00.000' AS DateTime), N'542485', 4, CAST(480.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (109, CAST(N'2012-11-18T00:00:00.000' AS DateTime), N'542486', 86, CAST(1106.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (110, CAST(N'2012-11-19T00:00:00.000' AS DateTime), N'542487', 46, CAST(1360.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (111, CAST(N'2012-11-20T00:00:00.000' AS DateTime), N'542488', 41, CAST(452.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (112, CAST(N'2012-11-21T00:00:00.000' AS DateTime), N'542489', 72, CAST(3654.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (113, CAST(N'2012-11-22T00:00:00.000' AS DateTime), N'542490', 7, CAST(7390.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (114, CAST(N'2012-11-22T00:00:00.000' AS DateTime), N'542491', 63, CAST(2273.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (115, CAST(N'2012-11-25T00:00:00.000' AS DateTime), N'542492', 9, CAST(1549.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (116, CAST(N'2012-11-26T00:00:00.000' AS DateTime), N'542493', 17, CAST(447.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (117, CAST(N'2012-11-26T00:00:00.000' AS DateTime), N'542494', 19, CAST(950.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (118, CAST(N'2012-11-27T00:00:00.000' AS DateTime), N'542495', 3, CAST(403.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (119, CAST(N'2012-11-28T00:00:00.000' AS DateTime), N'542496', 29, CAST(136.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (120, CAST(N'2012-11-28T00:00:00.000' AS DateTime), N'542497', 83, CAST(834.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (121, CAST(N'2012-11-29T00:00:00.000' AS DateTime), N'542498', 20, CAST(1834.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (122, CAST(N'2012-12-02T00:00:00.000' AS DateTime), N'542499', 75, CAST(2527.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (123, CAST(N'2012-12-03T00:00:00.000' AS DateTime), N'542500', 14, CAST(1174.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (124, CAST(N'2012-12-03T00:00:00.000' AS DateTime), N'542501', 41, CAST(91.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (125, CAST(N'2012-12-04T00:00:00.000' AS DateTime), N'542502', 62, CAST(12281.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (126, CAST(N'2012-12-05T00:00:00.000' AS DateTime), N'542503', 37, CAST(1708.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (127, CAST(N'2012-12-05T00:00:00.000' AS DateTime), N'542504', 91, CAST(459.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (128, CAST(N'2012-12-06T00:00:00.000' AS DateTime), N'542505', 36, CAST(338.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (129, CAST(N'2012-12-09T00:00:00.000' AS DateTime), N'542506', 51, CAST(420.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (130, CAST(N'2012-12-09T00:00:00.000' AS DateTime), N'542507', 72, CAST(1016.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (131, CAST(N'2012-12-10T00:00:00.000' AS DateTime), N'542508', 24, CAST(103.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (132, CAST(N'2012-12-11T00:00:00.000' AS DateTime), N'542509', 61, CAST(959.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (133, CAST(N'2012-12-12T00:00:00.000' AS DateTime), N'542510', 37, CAST(1419.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (134, CAST(N'2012-12-12T00:00:00.000' AS DateTime), N'542511', 46, CAST(112.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (135, CAST(N'2012-12-13T00:00:00.000' AS DateTime), N'542512', 20, CAST(2900.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (136, CAST(N'2012-12-16T00:00:00.000' AS DateTime), N'542513', 4, CAST(899.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (137, CAST(N'2012-12-16T00:00:00.000' AS DateTime), N'542514', 5, CAST(2222.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (138, CAST(N'2012-12-17T00:00:00.000' AS DateTime), N'542515', 75, CAST(864.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (139, CAST(N'2012-12-18T00:00:00.000' AS DateTime), N'542516', 21, CAST(166.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (140, CAST(N'2012-12-18T00:00:00.000' AS DateTime), N'542517', 70, CAST(1058.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (141, CAST(N'2012-12-19T00:00:00.000' AS DateTime), N'542518', 72, CAST(1274.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (142, CAST(N'2012-12-20T00:00:00.000' AS DateTime), N'542519', 10, CAST(1832.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (143, CAST(N'2012-12-23T00:00:00.000' AS DateTime), N'542520', 20, CAST(2275.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (144, CAST(N'2012-12-23T00:00:00.000' AS DateTime), N'542521', 17, CAST(86.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (145, CAST(N'2012-12-24T00:00:00.000' AS DateTime), N'542522', 59, CAST(1440.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (146, CAST(N'2012-12-25T00:00:00.000' AS DateTime), N'542523', 71, CAST(3302.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (147, CAST(N'2012-12-25T00:00:00.000' AS DateTime), N'542524', 36, CAST(442.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (148, CAST(N'2012-12-26T00:00:00.000' AS DateTime), N'542525', 35, CAST(2333.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (149, CAST(N'2012-12-27T00:00:00.000' AS DateTime), N'542526', 25, CAST(1903.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (150, CAST(N'2012-12-27T00:00:00.000' AS DateTime), N'542527', 60, CAST(843.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (151, CAST(N'2012-12-30T00:00:00.000' AS DateTime), N'542528', 71, CAST(2736.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (152, CAST(N'2012-12-31T00:00:00.000' AS DateTime), N'542529', 83, CAST(1765.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (153, CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'542530', 19, CAST(3063.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (154, CAST(N'2013-01-01T00:00:00.000' AS DateTime), N'542531', 65, CAST(3868.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (155, CAST(N'2013-01-02T00:00:00.000' AS DateTime), N'542532', 20, CAST(2713.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (156, CAST(N'2013-01-03T00:00:00.000' AS DateTime), N'542533', 20, CAST(1005.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (157, CAST(N'2013-01-03T00:00:00.000' AS DateTime), N'542534', 49, CAST(1675.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (158, CAST(N'2013-01-06T00:00:00.000' AS DateTime), N'542535', 47, CAST(400.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (159, CAST(N'2013-01-07T00:00:00.000' AS DateTime), N'542536', 62, CAST(2018.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (160, CAST(N'2013-01-07T00:00:00.000' AS DateTime), N'542537', 56, CAST(1194.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (161, CAST(N'2013-01-08T00:00:00.000' AS DateTime), N'542538', 23, CAST(1622.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (162, CAST(N'2013-01-09T00:00:00.000' AS DateTime), N'542539', 54, CAST(319.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (163, CAST(N'2013-01-10T00:00:00.000' AS DateTime), N'542540', 10, CAST(802.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (164, CAST(N'2013-01-10T00:00:00.000' AS DateTime), N'542541', 10, CAST(1208.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (165, CAST(N'2013-01-13T00:00:00.000' AS DateTime), N'542542', 87, CAST(372.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (166, CAST(N'2013-01-14T00:00:00.000' AS DateTime), N'542543', 41, CAST(2123.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (167, CAST(N'2013-01-14T00:00:00.000' AS DateTime), N'542544', 21, CAST(231.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (168, CAST(N'2013-01-15T00:00:00.000' AS DateTime), N'542545', 36, CAST(102.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (169, CAST(N'2013-01-16T00:00:00.000' AS DateTime), N'542546', 87, CAST(720.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (170, CAST(N'2013-01-16T00:00:00.000' AS DateTime), N'542547', 73, CAST(11283.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (171, CAST(N'2013-01-17T00:00:00.000' AS DateTime), N'542548', 63, CAST(1814.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (172, CAST(N'2013-01-20T00:00:00.000' AS DateTime), N'542549', 68, CAST(2208.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (173, CAST(N'2013-01-21T00:00:00.000' AS DateTime), N'542550', 88, CAST(1897.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (174, CAST(N'2013-01-21T00:00:00.000' AS DateTime), N'542551', 61, CAST(1273.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (175, CAST(N'2013-01-22T00:00:00.000' AS DateTime), N'542552', 27, CAST(49.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (176, CAST(N'2013-01-23T00:00:00.000' AS DateTime), N'542553', 31, CAST(1020.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (177, CAST(N'2013-01-23T00:00:00.000' AS DateTime), N'542554', 51, CAST(11493.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (178, CAST(N'2013-01-24T00:00:00.000' AS DateTime), N'542555', 41, CAST(480.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (179, CAST(N'2013-01-27T00:00:00.000' AS DateTime), N'542556', 29, CAST(338.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (180, CAST(N'2013-01-27T00:00:00.000' AS DateTime), N'542557', 59, CAST(651.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (181, CAST(N'2013-01-28T00:00:00.000' AS DateTime), N'542558', 66, CAST(192.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (182, CAST(N'2013-01-29T00:00:00.000' AS DateTime), N'542559', 37, CAST(1748.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (183, CAST(N'2013-01-30T00:00:00.000' AS DateTime), N'542560', 20, CAST(5796.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (184, CAST(N'2013-01-30T00:00:00.000' AS DateTime), N'542561', 10, CAST(2523.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (185, CAST(N'2013-01-31T00:00:00.000' AS DateTime), N'542562', 75, CAST(485.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (186, CAST(N'2013-02-03T00:00:00.000' AS DateTime), N'542563', 60, CAST(851.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (187, CAST(N'2013-02-03T00:00:00.000' AS DateTime), N'542564', 24, CAST(360.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (188, CAST(N'2013-02-04T00:00:00.000' AS DateTime), N'542565', 16, CAST(631.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (189, CAST(N'2013-02-05T00:00:00.000' AS DateTime), N'542566', 7, CAST(2210.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (190, CAST(N'2013-02-05T00:00:00.000' AS DateTime), N'542567', 87, CAST(393.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (191, CAST(N'2013-02-06T00:00:00.000' AS DateTime), N'542568', 79, CAST(567.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (192, CAST(N'2013-02-07T00:00:00.000' AS DateTime), N'542569', 51, CAST(1078.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (193, CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'542570', 71, CAST(5793.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (194, CAST(N'2013-02-10T00:00:00.000' AS DateTime), N'542571', 55, CAST(1755.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (195, CAST(N'2013-02-11T00:00:00.000' AS DateTime), N'542572', 20, CAST(1792.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (196, CAST(N'2013-02-12T00:00:00.000' AS DateTime), N'542573', 66, CAST(537.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (197, CAST(N'2013-02-12T00:00:00.000' AS DateTime), N'542574', 5, CAST(1031.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (198, CAST(N'2013-02-13T00:00:00.000' AS DateTime), N'542575', 5, CAST(174.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (199, CAST(N'2013-02-14T00:00:00.000' AS DateTime), N'542576', 79, CAST(273.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (200, CAST(N'2013-02-14T00:00:00.000' AS DateTime), N'542577', 67, CAST(914.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (201, CAST(N'2013-02-17T00:00:00.000' AS DateTime), N'542578', 64, CAST(443.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (202, CAST(N'2013-02-18T00:00:00.000' AS DateTime), N'542579', 7, CAST(1838.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (203, CAST(N'2013-02-19T00:00:00.000' AS DateTime), N'542580', 84, CAST(531.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (204, CAST(N'2013-02-19T00:00:00.000' AS DateTime), N'542581', 63, CAST(4277.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (205, CAST(N'2013-02-20T00:00:00.000' AS DateTime), N'542582', 71, CAST(2096.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (206, CAST(N'2013-02-21T00:00:00.000' AS DateTime), N'542583', 4, CAST(453.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (207, CAST(N'2013-02-21T00:00:00.000' AS DateTime), N'542584', 41, CAST(414.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (208, CAST(N'2013-02-24T00:00:00.000' AS DateTime), N'542585', 87, CAST(2684.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (209, CAST(N'2013-02-25T00:00:00.000' AS DateTime), N'542586', 39, CAST(656.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (210, CAST(N'2013-02-25T00:00:00.000' AS DateTime), N'542587', 39, CAST(1584.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (211, CAST(N'2013-02-26T00:00:00.000' AS DateTime), N'542588', 76, CAST(3891.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (212, CAST(N'2013-02-27T00:00:00.000' AS DateTime), N'542589', 84, CAST(1688.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (213, CAST(N'2013-02-28T00:00:00.000' AS DateTime), N'542590', 24, CAST(234.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (214, CAST(N'2013-02-28T00:00:00.000' AS DateTime), N'542591', 46, CAST(2051.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (215, CAST(N'2013-03-03T00:00:00.000' AS DateTime), N'542592', 16, CAST(156.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (216, CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'542593', 76, CAST(713.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (217, CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'542594', 28, CAST(1848.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (218, CAST(N'2013-03-05T00:00:00.000' AS DateTime), N'542595', 83, CAST(2719.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (219, CAST(N'2013-03-06T00:00:00.000' AS DateTime), N'542596', 15, CAST(216.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (220, CAST(N'2013-03-06T00:00:00.000' AS DateTime), N'542597', 49, CAST(235.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (221, CAST(N'2013-03-07T00:00:00.000' AS DateTime), N'542598', 39, CAST(717.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (222, CAST(N'2013-03-10T00:00:00.000' AS DateTime), N'542599', 89, CAST(1125.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (223, CAST(N'2013-03-11T00:00:00.000' AS DateTime), N'542600', 9, CAST(1820.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (224, CAST(N'2013-03-11T00:00:00.000' AS DateTime), N'542601', 11, CAST(1328.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (225, CAST(N'2013-03-12T00:00:00.000' AS DateTime), N'542602', 72, CAST(1051.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (226, CAST(N'2013-03-13T00:00:00.000' AS DateTime), N'542603', 38, CAST(230.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (227, CAST(N'2013-03-13T00:00:00.000' AS DateTime), N'542604', 58, CAST(1249.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (228, CAST(N'2013-03-14T00:00:00.000' AS DateTime), N'542605', 76, CAST(1770.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (229, CAST(N'2013-03-17T00:00:00.000' AS DateTime), N'542606', 35, CAST(182.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (230, CAST(N'2013-03-17T00:00:00.000' AS DateTime), N'542607', 60, CAST(672.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (231, CAST(N'2013-03-18T00:00:00.000' AS DateTime), N'542608', 84, CAST(496.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (232, CAST(N'2013-03-19T00:00:00.000' AS DateTime), N'542609', 65, CAST(10495.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (233, CAST(N'2013-03-20T00:00:00.000' AS DateTime), N'542610', 23, CAST(756.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (234, CAST(N'2013-03-20T00:00:00.000' AS DateTime), N'542611', 67, CAST(1472.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (235, CAST(N'2013-03-21T00:00:00.000' AS DateTime), N'542612', 43, CAST(147.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (236, CAST(N'2013-03-24T00:00:00.000' AS DateTime), N'542613', 89, CAST(704.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (237, CAST(N'2013-03-24T00:00:00.000' AS DateTime), N'542614', 11, CAST(386.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (238, CAST(N'2013-03-25T00:00:00.000' AS DateTime), N'542615', 47, CAST(1760.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (239, CAST(N'2013-03-26T00:00:00.000' AS DateTime), N'542616', 35, CAST(1272.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (240, CAST(N'2013-03-26T00:00:00.000' AS DateTime), N'542617', 62, CAST(925.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (241, CAST(N'2013-03-27T00:00:00.000' AS DateTime), N'542618', 25, CAST(1560.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (242, CAST(N'2013-03-28T00:00:00.000' AS DateTime), N'542619', 59, CAST(502.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (243, CAST(N'2013-03-31T00:00:00.000' AS DateTime), N'542620', 35, CAST(3163.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (244, CAST(N'2013-03-31T00:00:00.000' AS DateTime), N'542621', 28, CAST(305.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (245, CAST(N'2013-04-01T00:00:00.000' AS DateTime), N'542622', 10, CAST(896.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (246, CAST(N'2013-04-02T00:00:00.000' AS DateTime), N'542623', 41, CAST(676.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (247, CAST(N'2013-04-02T00:00:00.000' AS DateTime), N'542624', 15, CAST(912.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (248, CAST(N'2013-04-03T00:00:00.000' AS DateTime), N'542625', 42, CAST(278.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (249, CAST(N'2013-04-04T00:00:00.000' AS DateTime), N'542626', 81, CAST(200.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (250, CAST(N'2013-04-04T00:00:00.000' AS DateTime), N'542627', 44, CAST(1380.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (251, CAST(N'2013-04-07T00:00:00.000' AS DateTime), N'542628', 35, CAST(575.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (252, CAST(N'2013-04-08T00:00:00.000' AS DateTime), N'542629', 46, CAST(1412.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (253, CAST(N'2013-04-09T00:00:00.000' AS DateTime), N'542630', 41, CAST(550.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (254, CAST(N'2013-04-09T00:00:00.000' AS DateTime), N'542631', 6, CAST(149.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (255, CAST(N'2013-04-10T00:00:00.000' AS DateTime), N'542632', 58, CAST(816.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (256, CAST(N'2013-04-11T00:00:00.000' AS DateTime), N'542633', 37, CAST(2048.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (257, CAST(N'2013-04-11T00:00:00.000' AS DateTime), N'542634', 89, CAST(1388.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (258, CAST(N'2013-04-14T00:00:00.000' AS DateTime), N'542635', 51, CAST(147.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (259, CAST(N'2013-04-15T00:00:00.000' AS DateTime), N'542636', 39, CAST(462.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (260, CAST(N'2013-04-15T00:00:00.000' AS DateTime), N'542637', 3, CAST(881.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (261, CAST(N'2013-04-16T00:00:00.000' AS DateTime), N'542638', 56, CAST(240.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (262, CAST(N'2013-04-17T00:00:00.000' AS DateTime), N'542639', 6, CAST(136.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (263, CAST(N'2013-04-18T00:00:00.000' AS DateTime), N'542640', 71, CAST(4735.44 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (264, CAST(N'2013-04-18T00:00:00.000' AS DateTime), N'542641', 9, CAST(3000.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (265, CAST(N'2013-04-21T00:00:00.000' AS DateTime), N'542642', 21, CAST(618.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (266, CAST(N'2013-04-22T00:00:00.000' AS DateTime), N'542643', 86, CAST(2427.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (267, CAST(N'2013-04-22T00:00:00.000' AS DateTime), N'542644', 20, CAST(8623.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (268, CAST(N'2013-04-23T00:00:00.000' AS DateTime), N'542645', 63, CAST(10588.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (269, CAST(N'2013-04-24T00:00:00.000' AS DateTime), N'542646', 37, CAST(2614.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (270, CAST(N'2013-04-24T00:00:00.000' AS DateTime), N'542647', 53, CAST(352.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (271, CAST(N'2013-04-25T00:00:00.000' AS DateTime), N'542648', 80, CAST(4150.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (272, CAST(N'2013-04-28T00:00:00.000' AS DateTime), N'542649', 14, CAST(2356.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (273, CAST(N'2013-04-29T00:00:00.000' AS DateTime), N'542650', 70, CAST(200.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (274, CAST(N'2013-04-29T00:00:00.000' AS DateTime), N'542651', 12, CAST(225.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (275, CAST(N'2013-04-30T00:00:00.000' AS DateTime), N'542652', 44, CAST(2657.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (276, CAST(N'2013-05-01T00:00:00.000' AS DateTime), N'542653', 72, CAST(2715.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (277, CAST(N'2013-05-01T00:00:00.000' AS DateTime), N'542654', 5, CAST(3192.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (278, CAST(N'2013-05-02T00:00:00.000' AS DateTime), N'542655', 9, CAST(846.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (279, CAST(N'2013-05-05T00:00:00.000' AS DateTime), N'542656', 87, CAST(1344.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (280, CAST(N'2013-05-05T00:00:00.000' AS DateTime), N'542657', 63, CAST(1670.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (281, CAST(N'2013-05-06T00:00:00.000' AS DateTime), N'542658', 32, CAST(396.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (282, CAST(N'2013-05-07T00:00:00.000' AS DateTime), N'542659', 50, CAST(946.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (283, CAST(N'2013-05-08T00:00:00.000' AS DateTime), N'542660', 59, CAST(4180.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (284, CAST(N'2013-05-08T00:00:00.000' AS DateTime), N'542661', 54, CAST(110.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (285, CAST(N'2013-05-09T00:00:00.000' AS DateTime), N'542662', 19, CAST(796.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (286, CAST(N'2013-05-12T00:00:00.000' AS DateTime), N'542663', 24, CAST(2295.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (287, CAST(N'2013-05-12T00:00:00.000' AS DateTime), N'542664', 44, CAST(517.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (288, CAST(N'2013-05-13T00:00:00.000' AS DateTime), N'542665', 3, CAST(2156.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (289, CAST(N'2013-05-14T00:00:00.000' AS DateTime), N'542666', 44, CAST(2085.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (290, CAST(N'2013-05-14T00:00:00.000' AS DateTime), N'542667', 68, CAST(1823.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (291, CAST(N'2013-05-15T00:00:00.000' AS DateTime), N'542668', 11, CAST(139.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (292, CAST(N'2013-05-16T00:00:00.000' AS DateTime), N'542669', 11, CAST(355.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (293, CAST(N'2013-05-19T00:00:00.000' AS DateTime), N'542670', 63, CAST(10191.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (294, CAST(N'2013-05-19T00:00:00.000' AS DateTime), N'542671', 34, CAST(2162.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (295, CAST(N'2013-05-20T00:00:00.000' AS DateTime), N'542672', 39, CAST(493.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (296, CAST(N'2013-05-21T00:00:00.000' AS DateTime), N'542673', 46, CAST(1770.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (297, CAST(N'2013-05-21T00:00:00.000' AS DateTime), N'542674', 48, CAST(417.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (298, CAST(N'2013-05-22T00:00:00.000' AS DateTime), N'542675', 43, CAST(210.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (299, CAST(N'2013-05-23T00:00:00.000' AS DateTime), N'542676', 84, CAST(2812.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (300, CAST(N'2013-05-23T00:00:00.000' AS DateTime), N'542677', 72, CAST(1908.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (301, CAST(N'2013-05-26T00:00:00.000' AS DateTime), N'542678', 79, CAST(275.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (302, CAST(N'2013-05-27T00:00:00.000' AS DateTime), N'542679', 63, CAST(4181.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (303, CAST(N'2013-05-28T00:00:00.000' AS DateTime), N'542680', 30, CAST(749.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (304, CAST(N'2013-05-28T00:00:00.000' AS DateTime), N'542681', 28, CAST(1836.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (305, CAST(N'2013-05-29T00:00:00.000' AS DateTime), N'542682', 35, CAST(880.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (306, CAST(N'2013-05-30T00:00:00.000' AS DateTime), N'542683', 87, CAST(1546.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (307, CAST(N'2013-05-30T00:00:00.000' AS DateTime), N'542684', 56, CAST(1819.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (308, CAST(N'2013-06-02T00:00:00.000' AS DateTime), N'542685', 71, CAST(3680.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (309, CAST(N'2013-06-03T00:00:00.000' AS DateTime), N'542686', 73, CAST(835.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (310, CAST(N'2013-06-03T00:00:00.000' AS DateTime), N'542687', 44, CAST(1152.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (311, CAST(N'2013-06-04T00:00:00.000' AS DateTime), N'542688', 4, CAST(2142.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (312, CAST(N'2013-06-05T00:00:00.000' AS DateTime), N'542689', 7, CAST(547.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (313, CAST(N'2013-06-06T00:00:00.000' AS DateTime), N'542690', 25, CAST(1257.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (314, CAST(N'2013-06-06T00:00:00.000' AS DateTime), N'542691', 24, CAST(2844.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (315, CAST(N'2013-06-09T00:00:00.000' AS DateTime), N'542692', 66, CAST(543.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (316, CAST(N'2013-06-10T00:00:00.000' AS DateTime), N'542693', 67, CAST(965.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (317, CAST(N'2013-06-10T00:00:00.000' AS DateTime), N'542694', 65, CAST(1299.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (318, CAST(N'2013-06-11T00:00:00.000' AS DateTime), N'542695', 51, CAST(711.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (319, CAST(N'2013-06-12T00:00:00.000' AS DateTime), N'542696', 7, CAST(2040.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (320, CAST(N'2013-06-12T00:00:00.000' AS DateTime), N'542697', 37, CAST(3109.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (321, CAST(N'2013-06-13T00:00:00.000' AS DateTime), N'542698', 29, CAST(155.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (322, CAST(N'2013-06-16T00:00:00.000' AS DateTime), N'542699', 65, CAST(977.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (323, CAST(N'2013-06-17T00:00:00.000' AS DateTime), N'542700', 51, CAST(2595.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (324, CAST(N'2013-06-17T00:00:00.000' AS DateTime), N'542701', 20, CAST(647.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (325, CAST(N'2013-06-18T00:00:00.000' AS DateTime), N'542702', 5, CAST(1565.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (326, CAST(N'2013-06-19T00:00:00.000' AS DateTime), N'542703', 3, CAST(2082.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (327, CAST(N'2013-06-19T00:00:00.000' AS DateTime), N'542704', 82, CAST(764.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (328, CAST(N'2013-06-20T00:00:00.000' AS DateTime), N'542705', 52, CAST(2147.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (329, CAST(N'2013-06-23T00:00:00.000' AS DateTime), N'542706', 80, CAST(838.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (330, CAST(N'2013-06-23T00:00:00.000' AS DateTime), N'542707', 82, CAST(569.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (331, CAST(N'2013-06-24T00:00:00.000' AS DateTime), N'542708', 11, CAST(477.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (332, CAST(N'2013-06-25T00:00:00.000' AS DateTime), N'542709', 45, CAST(317.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (333, CAST(N'2013-06-26T00:00:00.000' AS DateTime), N'542710', 56, CAST(1067.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (334, CAST(N'2013-06-26T00:00:00.000' AS DateTime), N'542711', 21, CAST(387.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (335, CAST(N'2013-06-27T00:00:00.000' AS DateTime), N'542712', 6, CAST(330.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (336, CAST(N'2013-06-30T00:00:00.000' AS DateTime), N'542713', 87, CAST(2413.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (337, CAST(N'2013-06-30T00:00:00.000' AS DateTime), N'542714', 7, CAST(625.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (338, CAST(N'2013-07-01T00:00:00.000' AS DateTime), N'542715', 88, CAST(142.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (339, CAST(N'2013-07-02T00:00:00.000' AS DateTime), N'542716', 66, CAST(28.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (340, CAST(N'2013-07-02T00:00:00.000' AS DateTime), N'542717', 61, CAST(807.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (341, CAST(N'2013-07-03T00:00:00.000' AS DateTime), N'542718', 63, CAST(3900.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (342, CAST(N'2013-07-04T00:00:00.000' AS DateTime), N'542719', 32, CAST(72.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (343, CAST(N'2013-07-07T00:00:00.000' AS DateTime), N'542720', 51, CAST(1140.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (344, CAST(N'2013-07-07T00:00:00.000' AS DateTime), N'542721', 83, CAST(812.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (345, CAST(N'2013-07-08T00:00:00.000' AS DateTime), N'542722', 44, CAST(543.65 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (346, CAST(N'2013-07-09T00:00:00.000' AS DateTime), N'542723', 44, CAST(2493.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (347, CAST(N'2013-07-09T00:00:00.000' AS DateTime), N'542724', 55, CAST(565.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (348, CAST(N'2013-07-10T00:00:00.000' AS DateTime), N'542725', 20, CAST(6300.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (349, CAST(N'2013-07-11T00:00:00.000' AS DateTime), N'542726', 89, CAST(1476.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (350, CAST(N'2013-07-11T00:00:00.000' AS DateTime), N'542727', 59, CAST(800.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (351, CAST(N'2013-07-14T00:00:00.000' AS DateTime), N'542728', 65, CAST(2388.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (352, CAST(N'2013-07-15T00:00:00.000' AS DateTime), N'542729', 11, CAST(493.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (353, CAST(N'2013-07-16T00:00:00.000' AS DateTime), N'542730', 36, CAST(479.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (354, CAST(N'2013-07-16T00:00:00.000' AS DateTime), N'542731', 35, CAST(2285.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (355, CAST(N'2013-07-17T00:00:00.000' AS DateTime), N'542732', 83, CAST(65.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (356, CAST(N'2013-07-18T00:00:00.000' AS DateTime), N'542733', 71, CAST(1508.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (357, CAST(N'2013-07-18T00:00:00.000' AS DateTime), N'542734', 28, CAST(256.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (358, CAST(N'2013-07-21T00:00:00.000' AS DateTime), N'542735', 51, CAST(4326.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (359, CAST(N'2013-07-22T00:00:00.000' AS DateTime), N'542736', 81, CAST(1413.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (360, CAST(N'2013-07-22T00:00:00.000' AS DateTime), N'542737', 71, CAST(6475.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (361, CAST(N'2013-07-23T00:00:00.000' AS DateTime), N'542738', 79, CAST(1064.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (362, CAST(N'2013-07-24T00:00:00.000' AS DateTime), N'542739', 18, CAST(424.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (363, CAST(N'2013-07-25T00:00:00.000' AS DateTime), N'542740', 41, CAST(399.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (364, CAST(N'2013-07-25T00:00:00.000' AS DateTime), N'542741', 91, CAST(808.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (365, CAST(N'2013-07-28T00:00:00.000' AS DateTime), N'542742', 71, CAST(6375.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (366, CAST(N'2013-07-29T00:00:00.000' AS DateTime), N'542743', 35, CAST(358.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (367, CAST(N'2013-07-29T00:00:00.000' AS DateTime), N'542744', 6, CAST(464.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (368, CAST(N'2013-07-30T00:00:00.000' AS DateTime), N'542745', 90, CAST(120.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (369, CAST(N'2013-07-31T00:00:00.000' AS DateTime), N'542746', 32, CAST(5032.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (370, CAST(N'2013-07-31T00:00:00.000' AS DateTime), N'542747', 32, CAST(1650.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (371, CAST(N'2013-08-01T00:00:00.000' AS DateTime), N'542748', 51, CAST(2697.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (372, CAST(N'2013-08-04T00:00:00.000' AS DateTime), N'542749', 51, CAST(1260.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (373, CAST(N'2013-08-05T00:00:00.000' AS DateTime), N'542750', 42, CAST(57.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (374, CAST(N'2013-08-05T00:00:00.000' AS DateTime), N'542751', 38, CAST(758.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (375, CAST(N'2013-08-06T00:00:00.000' AS DateTime), N'542752', 67, CAST(605.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (376, CAST(N'2013-08-07T00:00:00.000' AS DateTime), N'542753', 25, CAST(1429.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (377, CAST(N'2013-08-07T00:00:00.000' AS DateTime), N'542754', 78, CAST(1393.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (378, CAST(N'2013-08-08T00:00:00.000' AS DateTime), N'542755', 2, CAST(479.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (379, CAST(N'2013-08-11T00:00:00.000' AS DateTime), N'542756', 5, CAST(1503.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (380, CAST(N'2013-08-11T00:00:00.000' AS DateTime), N'542757', 71, CAST(1264.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (381, CAST(N'2013-08-12T00:00:00.000' AS DateTime), N'542758', 7, CAST(450.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (382, CAST(N'2013-08-12T00:00:00.000' AS DateTime), N'542759', 30, CAST(2775.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (383, CAST(N'2013-08-13T00:00:00.000' AS DateTime), N'542760', 39, CAST(918.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (384, CAST(N'2013-08-14T00:00:00.000' AS DateTime), N'542761', 41, CAST(62.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (385, CAST(N'2013-08-14T00:00:00.000' AS DateTime), N'542762', 86, CAST(620.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (386, CAST(N'2013-08-15T00:00:00.000' AS DateTime), N'542763', 20, CAST(6483.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (387, CAST(N'2013-08-15T00:00:00.000' AS DateTime), N'542764', 23, CAST(4985.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (388, CAST(N'2013-08-18T00:00:00.000' AS DateTime), N'542765', 49, CAST(1380.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (389, CAST(N'2013-08-19T00:00:00.000' AS DateTime), N'542766', 87, CAST(629.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (390, CAST(N'2013-08-19T00:00:00.000' AS DateTime), N'542767', 62, CAST(2896.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (391, CAST(N'2013-08-20T00:00:00.000' AS DateTime), N'542768', 47, CAST(2720.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (392, CAST(N'2013-08-20T00:00:00.000' AS DateTime), N'542769', 70, CAST(500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (393, CAST(N'2013-08-21T00:00:00.000' AS DateTime), N'542770', 86, CAST(945.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (394, CAST(N'2013-08-22T00:00:00.000' AS DateTime), N'542771', 35, CAST(2054.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (395, CAST(N'2013-08-22T00:00:00.000' AS DateTime), N'542772', 73, CAST(870.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (396, CAST(N'2013-08-25T00:00:00.000' AS DateTime), N'542773', 1, CAST(1086.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (397, CAST(N'2013-08-25T00:00:00.000' AS DateTime), N'542774', 88, CAST(1422.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (398, CAST(N'2013-08-26T00:00:00.000' AS DateTime), N'542775', 34, CAST(1535.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (399, CAST(N'2013-08-27T00:00:00.000' AS DateTime), N'542776', 37, CAST(1928.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (400, CAST(N'2013-08-27T00:00:00.000' AS DateTime), N'542777', 61, CAST(636.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (401, CAST(N'2013-08-28T00:00:00.000' AS DateTime), N'542778', 67, CAST(382.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (402, CAST(N'2013-08-28T00:00:00.000' AS DateTime), N'542779', 50, CAST(1434.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (403, CAST(N'2013-08-29T00:00:00.000' AS DateTime), N'542780', 21, CAST(1820.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (404, CAST(N'2013-09-01T00:00:00.000' AS DateTime), N'542781', 86, CAST(530.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (405, CAST(N'2013-09-01T00:00:00.000' AS DateTime), N'542782', 31, CAST(331.78 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (406, CAST(N'2013-09-02T00:00:00.000' AS DateTime), N'542783', 25, CAST(1203.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (407, CAST(N'2013-09-02T00:00:00.000' AS DateTime), N'542784', 5, CAST(668.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (408, CAST(N'2013-09-03T00:00:00.000' AS DateTime), N'542785', 66, CAST(193.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (409, CAST(N'2013-09-04T00:00:00.000' AS DateTime), N'542786', 32, CAST(671.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (410, CAST(N'2013-09-04T00:00:00.000' AS DateTime), N'542787', 71, CAST(4371.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (411, CAST(N'2013-09-05T00:00:00.000' AS DateTime), N'542788', 63, CAST(4668.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (412, CAST(N'2013-09-05T00:00:00.000' AS DateTime), N'542789', 62, CAST(1291.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (413, CAST(N'2013-09-08T00:00:00.000' AS DateTime), N'542790', 36, CAST(1701.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (414, CAST(N'2013-09-09T00:00:00.000' AS DateTime), N'542791', 37, CAST(703.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (415, CAST(N'2013-09-09T00:00:00.000' AS DateTime), N'542792', 48, CAST(125.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (416, CAST(N'2013-09-10T00:00:00.000' AS DateTime), N'542793', 9, CAST(2032.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (417, CAST(N'2013-09-10T00:00:00.000' AS DateTime), N'542794', 28, CAST(1515.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (418, CAST(N'2013-09-11T00:00:00.000' AS DateTime), N'542795', 48, CAST(1295.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (419, CAST(N'2013-09-12T00:00:00.000' AS DateTime), N'542796', 68, CAST(4666.94 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (420, CAST(N'2013-09-12T00:00:00.000' AS DateTime), N'542797', 20, CAST(1921.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (421, CAST(N'2013-09-15T00:00:00.000' AS DateTime), N'542798', 86, CAST(694.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (422, CAST(N'2013-09-15T00:00:00.000' AS DateTime), N'542799', 73, CAST(570.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (423, CAST(N'2013-09-16T00:00:00.000' AS DateTime), N'542800', 25, CAST(2301.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (424, CAST(N'2013-09-17T00:00:00.000' AS DateTime), N'542801', 26, CAST(920.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (425, CAST(N'2013-09-17T00:00:00.000' AS DateTime), N'542802', 5, CAST(4210.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (426, CAST(N'2013-09-18T00:00:00.000' AS DateTime), N'542803', 90, CAST(412.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (427, CAST(N'2013-09-18T00:00:00.000' AS DateTime), N'542804', 38, CAST(45.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (428, CAST(N'2013-09-19T00:00:00.000' AS DateTime), N'542805', 25, CAST(1423.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (429, CAST(N'2013-09-22T00:00:00.000' AS DateTime), N'542806', 80, CAST(534.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (430, CAST(N'2013-09-22T00:00:00.000' AS DateTime), N'542807', 3, CAST(956.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (431, CAST(N'2013-09-23T00:00:00.000' AS DateTime), N'542808', 71, CAST(5256.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (432, CAST(N'2013-09-23T00:00:00.000' AS DateTime), N'542809', 7, CAST(660.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (433, CAST(N'2013-09-24T00:00:00.000' AS DateTime), N'542810', 55, CAST(1682.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (434, CAST(N'2013-09-25T00:00:00.000' AS DateTime), N'542811', 32, CAST(1327.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (435, CAST(N'2013-09-25T00:00:00.000' AS DateTime), N'542812', 3, CAST(375.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (436, CAST(N'2013-09-26T00:00:00.000' AS DateTime), N'542813', 18, CAST(63.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (437, CAST(N'2013-09-26T00:00:00.000' AS DateTime), N'542814', 56, CAST(1768.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (438, CAST(N'2013-09-29T00:00:00.000' AS DateTime), N'542815', 31, CAST(801.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (439, CAST(N'2013-09-30T00:00:00.000' AS DateTime), N'542816', 59, CAST(1638.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (440, CAST(N'2013-09-30T00:00:00.000' AS DateTime), N'542817', 37, CAST(6201.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (441, CAST(N'2013-10-01T00:00:00.000' AS DateTime), N'542818', 83, CAST(3490.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (442, CAST(N'2013-10-01T00:00:00.000' AS DateTime), N'542819', 5, CAST(630.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (443, CAST(N'2013-10-02T00:00:00.000' AS DateTime), N'542820', 34, CAST(1150.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (444, CAST(N'2013-10-03T00:00:00.000' AS DateTime), N'542821', 63, CAST(10164.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (445, CAST(N'2013-10-03T00:00:00.000' AS DateTime), N'542822', 1, CAST(878.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (446, CAST(N'2013-10-06T00:00:00.000' AS DateTime), N'542823', 89, CAST(2334.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (447, CAST(N'2013-10-06T00:00:00.000' AS DateTime), N'542824', 63, CAST(4825.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (448, CAST(N'2013-10-07T00:00:00.000' AS DateTime), N'542825', 90, CAST(642.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (449, CAST(N'2013-10-08T00:00:00.000' AS DateTime), N'542826', 89, CAST(996.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (450, CAST(N'2013-10-08T00:00:00.000' AS DateTime), N'542827', 47, CAST(1073.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (451, CAST(N'2013-10-09T00:00:00.000' AS DateTime), N'542828', 20, CAST(3600.73 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (452, CAST(N'2013-10-09T00:00:00.000' AS DateTime), N'542829', 52, CAST(114.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (453, CAST(N'2013-10-10T00:00:00.000' AS DateTime), N'542830', 71, CAST(2048.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (454, CAST(N'2013-10-13T00:00:00.000' AS DateTime), N'542831', 37, CAST(3370.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (455, CAST(N'2013-10-13T00:00:00.000' AS DateTime), N'542832', 1, CAST(330.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (456, CAST(N'2013-10-14T00:00:00.000' AS DateTime), N'542833', 24, CAST(2545.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (457, CAST(N'2013-10-14T00:00:00.000' AS DateTime), N'542834', 62, CAST(595.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (458, CAST(N'2013-10-15T00:00:00.000' AS DateTime), N'542835', 35, CAST(378.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (459, CAST(N'2013-10-16T00:00:00.000' AS DateTime), N'542836', 55, CAST(1893.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (460, CAST(N'2013-10-16T00:00:00.000' AS DateTime), N'542837', 4, CAST(1704.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (461, CAST(N'2013-10-17T00:00:00.000' AS DateTime), N'542838', 77, CAST(180.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (462, CAST(N'2013-10-17T00:00:00.000' AS DateTime), N'542839', 31, CAST(3424.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (463, CAST(N'2013-10-20T00:00:00.000' AS DateTime), N'542840', 27, CAST(93.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (464, CAST(N'2013-10-21T00:00:00.000' AS DateTime), N'542841', 71, CAST(4451.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (465, CAST(N'2013-10-21T00:00:00.000' AS DateTime), N'542842', 37, CAST(1238.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (466, CAST(N'2013-10-22T00:00:00.000' AS DateTime), N'542843', 71, CAST(2827.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (467, CAST(N'2013-10-22T00:00:00.000' AS DateTime), N'542844', 71, CAST(2941.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (468, CAST(N'2013-10-23T00:00:00.000' AS DateTime), N'542845', 9, CAST(1296.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (469, CAST(N'2013-10-24T00:00:00.000' AS DateTime), N'542846', 64, CAST(706.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (470, CAST(N'2013-10-24T00:00:00.000' AS DateTime), N'542847', 25, CAST(1331.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (471, CAST(N'2013-10-27T00:00:00.000' AS DateTime), N'542848', 39, CAST(3463.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (472, CAST(N'2013-10-27T00:00:00.000' AS DateTime), N'542849', 45, CAST(1125.67 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (473, CAST(N'2013-10-28T00:00:00.000' AS DateTime), N'542850', 61, CAST(550.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (474, CAST(N'2013-10-29T00:00:00.000' AS DateTime), N'542851', 63, CAST(972.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (475, CAST(N'2013-10-29T00:00:00.000' AS DateTime), N'542852', 71, CAST(1570.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (476, CAST(N'2013-10-30T00:00:00.000' AS DateTime), N'542853', 89, CAST(468.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (477, CAST(N'2013-10-30T00:00:00.000' AS DateTime), N'542854', 51, CAST(638.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (478, CAST(N'2013-10-31T00:00:00.000' AS DateTime), N'542855', 21, CAST(287.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (479, CAST(N'2013-11-03T00:00:00.000' AS DateTime), N'542856', 19, CAST(655.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (480, CAST(N'2013-11-03T00:00:00.000' AS DateTime), N'542857', 66, CAST(1710.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (481, CAST(N'2013-11-04T00:00:00.000' AS DateTime), N'542858', 62, CAST(1296.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (482, CAST(N'2013-11-04T00:00:00.000' AS DateTime), N'542859', 47, CAST(1850.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (483, CAST(N'2013-11-05T00:00:00.000' AS DateTime), N'542860', 9, CAST(509.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (484, CAST(N'2013-11-06T00:00:00.000' AS DateTime), N'542861', 14, CAST(1990.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (485, CAST(N'2013-11-06T00:00:00.000' AS DateTime), N'542862', 9, CAST(360.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (486, CAST(N'2013-11-07T00:00:00.000' AS DateTime), N'542863', 5, CAST(1459.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (487, CAST(N'2013-11-07T00:00:00.000' AS DateTime), N'542864', 31, CAST(1498.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (488, CAST(N'2013-11-10T00:00:00.000' AS DateTime), N'542865', 45, CAST(596.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (489, CAST(N'2013-11-11T00:00:00.000' AS DateTime), N'542866', 37, CAST(997.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (490, CAST(N'2013-11-11T00:00:00.000' AS DateTime), N'542867', 85, CAST(139.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (491, CAST(N'2013-11-12T00:00:00.000' AS DateTime), N'542868', 74, CAST(52.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (492, CAST(N'2013-11-12T00:00:00.000' AS DateTime), N'542869', 85, CAST(240.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (493, CAST(N'2013-11-13T00:00:00.000' AS DateTime), N'542870', 89, CAST(1770.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (494, CAST(N'2013-11-14T00:00:00.000' AS DateTime), N'542871', 4, CAST(285.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (495, CAST(N'2013-11-14T00:00:00.000' AS DateTime), N'542872', 10, CAST(3118.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (496, CAST(N'2013-11-17T00:00:00.000' AS DateTime), N'542873', 4, CAST(336.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (497, CAST(N'2013-11-17T00:00:00.000' AS DateTime), N'542874', 83, CAST(920.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (498, CAST(N'2013-11-18T00:00:00.000' AS DateTime), N'542875', 63, CAST(4529.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (499, CAST(N'2013-11-19T00:00:00.000' AS DateTime), N'542876', 14, CAST(2311.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (500, CAST(N'2013-11-19T00:00:00.000' AS DateTime), N'542877', 59, CAST(1912.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (501, CAST(N'2013-11-20T00:00:00.000' AS DateTime), N'542878', 71, CAST(2196.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (502, CAST(N'2013-11-20T00:00:00.000' AS DateTime), N'542879', 38, CAST(1080.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (503, CAST(N'2013-11-21T00:00:00.000' AS DateTime), N'542880', 87, CAST(1871.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (504, CAST(N'2013-11-24T00:00:00.000' AS DateTime), N'542881', 68, CAST(1701.46 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (505, CAST(N'2013-11-24T00:00:00.000' AS DateTime), N'542882', 53, CAST(252.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (506, CAST(N'2013-11-25T00:00:00.000' AS DateTime), N'542883', 27, CAST(88.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (507, CAST(N'2013-11-25T00:00:00.000' AS DateTime), N'542884', 49, CAST(55.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (508, CAST(N'2013-11-26T00:00:00.000' AS DateTime), N'542885', 9, CAST(2598.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (509, CAST(N'2013-11-27T00:00:00.000' AS DateTime), N'542886', 75, CAST(2487.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (510, CAST(N'2013-11-27T00:00:00.000' AS DateTime), N'542887', 71, CAST(3082.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (511, CAST(N'2013-11-28T00:00:00.000' AS DateTime), N'542888', 68, CAST(1644.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (512, CAST(N'2013-11-28T00:00:00.000' AS DateTime), N'542889', 2, CAST(320.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (513, CAST(N'2013-12-01T00:00:00.000' AS DateTime), N'542890', 50, CAST(3304.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (514, CAST(N'2013-12-02T00:00:00.000' AS DateTime), N'542891', 65, CAST(629.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (515, CAST(N'2013-12-02T00:00:00.000' AS DateTime), N'542892', 24, CAST(4337.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (516, CAST(N'2013-12-03T00:00:00.000' AS DateTime), N'542893', 23, CAST(616.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (517, CAST(N'2013-12-03T00:00:00.000' AS DateTime), N'542894', 20, CAST(2540.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (518, CAST(N'2013-12-04T00:00:00.000' AS DateTime), N'542895', 63, CAST(1684.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (519, CAST(N'2013-12-05T00:00:00.000' AS DateTime), N'542896', 56, CAST(2310.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (520, CAST(N'2013-12-05T00:00:00.000' AS DateTime), N'542897', 76, CAST(28.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (521, CAST(N'2013-12-08T00:00:00.000' AS DateTime), N'542898', 4, CAST(1477.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (522, CAST(N'2013-12-08T00:00:00.000' AS DateTime), N'542899', 83, CAST(1704.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (523, CAST(N'2013-12-09T00:00:00.000' AS DateTime), N'542900', 34, CAST(315.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (524, CAST(N'2013-12-10T00:00:00.000' AS DateTime), N'542901', 20, CAST(344.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (525, CAST(N'2013-12-10T00:00:00.000' AS DateTime), N'542902', 44, CAST(3603.22 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (526, CAST(N'2013-12-11T00:00:00.000' AS DateTime), N'542903', 20, CAST(2216.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (527, CAST(N'2013-12-11T00:00:00.000' AS DateTime), N'542904', 24, CAST(875.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (528, CAST(N'2013-12-12T00:00:00.000' AS DateTime), N'542905', 78, CAST(228.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (529, CAST(N'2013-12-15T00:00:00.000' AS DateTime), N'542906', 20, CAST(6984.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (530, CAST(N'2013-12-15T00:00:00.000' AS DateTime), N'542907', 31, CAST(280.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (531, CAST(N'2013-12-16T00:00:00.000' AS DateTime), N'542908', 5, CAST(96.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (532, CAST(N'2013-12-16T00:00:00.000' AS DateTime), N'542909', 52, CAST(1335.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (533, CAST(N'2013-12-16T00:00:00.000' AS DateTime), N'542910', 46, CAST(720.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (534, CAST(N'2013-12-17T00:00:00.000' AS DateTime), N'542911', 87, CAST(1132.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (535, CAST(N'2013-12-17T00:00:00.000' AS DateTime), N'542912', 12, CAST(12.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (536, CAST(N'2013-12-18T00:00:00.000' AS DateTime), N'542913', 34, CAST(1442.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (537, CAST(N'2013-12-18T00:00:00.000' AS DateTime), N'542914', 49, CAST(1650.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (538, CAST(N'2013-12-18T00:00:00.000' AS DateTime), N'542915', 33, CAST(387.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (539, CAST(N'2013-12-19T00:00:00.000' AS DateTime), N'542916', 62, CAST(1913.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (540, CAST(N'2013-12-19T00:00:00.000' AS DateTime), N'542917', 41, CAST(2760.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (541, CAST(N'2013-12-22T00:00:00.000' AS DateTime), N'542918', 63, CAST(770.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (542, CAST(N'2013-12-22T00:00:00.000' AS DateTime), N'542919', 23, CAST(3687.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (543, CAST(N'2013-12-22T00:00:00.000' AS DateTime), N'542920', 31, CAST(850.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (544, CAST(N'2013-12-23T00:00:00.000' AS DateTime), N'542921', 25, CAST(1926.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (545, CAST(N'2013-12-23T00:00:00.000' AS DateTime), N'542922', 91, CAST(399.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (546, CAST(N'2013-12-24T00:00:00.000' AS DateTime), N'542923', 4, CAST(191.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (547, CAST(N'2013-12-24T00:00:00.000' AS DateTime), N'542924', 61, CAST(393.45 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (548, CAST(N'2013-12-24T00:00:00.000' AS DateTime), N'542925', 20, CAST(2499.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (549, CAST(N'2013-12-25T00:00:00.000' AS DateTime), N'542926', 35, CAST(2878.08 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (550, CAST(N'2013-12-25T00:00:00.000' AS DateTime), N'542927', 17, CAST(420.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (551, CAST(N'2013-12-26T00:00:00.000' AS DateTime), N'542928', 38, CAST(446.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (552, CAST(N'2013-12-26T00:00:00.000' AS DateTime), N'542929', 39, CAST(1585.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (553, CAST(N'2013-12-26T00:00:00.000' AS DateTime), N'542930', 72, CAST(1632.15 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (554, CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'542931', 8, CAST(4035.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (555, CAST(N'2013-12-29T00:00:00.000' AS DateTime), N'542932', 73, CAST(3923.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (556, CAST(N'2013-12-30T00:00:00.000' AS DateTime), N'542933', 88, CAST(1255.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (557, CAST(N'2013-12-30T00:00:00.000' AS DateTime), N'542934', 72, CAST(2290.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (558, CAST(N'2013-12-30T00:00:00.000' AS DateTime), N'542935', 77, CAST(2775.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (559, CAST(N'2013-12-31T00:00:00.000' AS DateTime), N'542936', 84, CAST(572.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (560, CAST(N'2013-12-31T00:00:00.000' AS DateTime), N'542937', 27, CAST(18.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (561, CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'542938', 55, CAST(1660.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (562, CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'542939', 88, CAST(140.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (563, CAST(N'2014-01-01T00:00:00.000' AS DateTime), N'542940', 42, CAST(187.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (564, CAST(N'2014-01-02T00:00:00.000' AS DateTime), N'542941', 47, CAST(852.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (565, CAST(N'2014-01-02T00:00:00.000' AS DateTime), N'542942', 66, CAST(1852.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (566, CAST(N'2014-01-05T00:00:00.000' AS DateTime), N'542943', 67, CAST(648.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (567, CAST(N'2014-01-05T00:00:00.000' AS DateTime), N'542944', 84, CAST(2070.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (568, CAST(N'2014-01-05T00:00:00.000' AS DateTime), N'542945', 71, CAST(40.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (569, CAST(N'2014-01-06T00:00:00.000' AS DateTime), N'542946', 32, CAST(8891.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (570, CAST(N'2014-01-06T00:00:00.000' AS DateTime), N'542947', 39, CAST(11490.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (571, CAST(N'2014-01-07T00:00:00.000' AS DateTime), N'542948', 49, CAST(833.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (572, CAST(N'2014-01-07T00:00:00.000' AS DateTime), N'542949', 12, CAST(477.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (573, CAST(N'2014-01-07T00:00:00.000' AS DateTime), N'542950', 65, CAST(1140.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (574, CAST(N'2014-01-08T00:00:00.000' AS DateTime), N'542951', 75, CAST(678.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (575, CAST(N'2014-01-08T00:00:00.000' AS DateTime), N'542952', 82, CAST(237.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (576, CAST(N'2014-01-09T00:00:00.000' AS DateTime), N'542953', 46, CAST(3107.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (577, CAST(N'2014-01-09T00:00:00.000' AS DateTime), N'542954', 24, CAST(250.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (578, CAST(N'2014-01-09T00:00:00.000' AS DateTime), N'542955', 17, CAST(1030.76 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (579, CAST(N'2014-01-12T00:00:00.000' AS DateTime), N'542956', 7, CAST(730.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (580, CAST(N'2014-01-12T00:00:00.000' AS DateTime), N'542957', 9, CAST(843.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (581, CAST(N'2014-01-13T00:00:00.000' AS DateTime), N'542958', 64, CAST(932.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (582, CAST(N'2014-01-13T00:00:00.000' AS DateTime), N'542959', 38, CAST(1764.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (583, CAST(N'2014-01-13T00:00:00.000' AS DateTime), N'542960', 81, CAST(1974.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (584, CAST(N'2014-01-14T00:00:00.000' AS DateTime), N'542961', 70, CAST(2684.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (585, CAST(N'2014-01-14T00:00:00.000' AS DateTime), N'542962', 41, CAST(568.95 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (586, CAST(N'2014-01-15T00:00:00.000' AS DateTime), N'542963', 56, CAST(1007.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (587, CAST(N'2014-01-15T00:00:00.000' AS DateTime), N'542964', 81, CAST(1508.12 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (588, CAST(N'2014-01-15T00:00:00.000' AS DateTime), N'542965', 1, CAST(851.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (589, CAST(N'2014-01-16T00:00:00.000' AS DateTime), N'542966', 20, CAST(4705.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (590, CAST(N'2014-01-16T00:00:00.000' AS DateTime), N'542967', 5, CAST(1254.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (591, CAST(N'2014-01-19T00:00:00.000' AS DateTime), N'542968', 47, CAST(2584.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (592, CAST(N'2014-01-19T00:00:00.000' AS DateTime), N'542969', 81, CAST(919.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (593, CAST(N'2014-01-19T00:00:00.000' AS DateTime), N'542970', 47, CAST(264.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (594, CAST(N'2014-01-20T00:00:00.000' AS DateTime), N'542971', 76, CAST(4581.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (595, CAST(N'2014-01-20T00:00:00.000' AS DateTime), N'542972', 80, CAST(975.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (596, CAST(N'2014-01-21T00:00:00.000' AS DateTime), N'542973', 84, CAST(212.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (597, CAST(N'2014-01-21T00:00:00.000' AS DateTime), N'542974', 59, CAST(735.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (598, CAST(N'2014-01-21T00:00:00.000' AS DateTime), N'542975', 63, CAST(4059.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (599, CAST(N'2014-01-22T00:00:00.000' AS DateTime), N'542976', 76, CAST(1112.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (600, CAST(N'2014-01-22T00:00:00.000' AS DateTime), N'542977', 71, CAST(6164.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (601, CAST(N'2014-01-23T00:00:00.000' AS DateTime), N'542978', 16, CAST(931.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (602, CAST(N'2014-01-23T00:00:00.000' AS DateTime), N'542979', 39, CAST(1052.14 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (603, CAST(N'2014-01-23T00:00:00.000' AS DateTime), N'542980', 84, CAST(740.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (604, CAST(N'2014-01-26T00:00:00.000' AS DateTime), N'542981', 67, CAST(2740.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (605, CAST(N'2014-01-26T00:00:00.000' AS DateTime), N'542982', 65, CAST(2984.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (606, CAST(N'2014-01-27T00:00:00.000' AS DateTime), N'542983', 6, CAST(625.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (607, CAST(N'2014-01-27T00:00:00.000' AS DateTime), N'542984', 20, CAST(3490.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (608, CAST(N'2014-01-27T00:00:00.000' AS DateTime), N'542985', 55, CAST(2275.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (609, CAST(N'2014-01-28T00:00:00.000' AS DateTime), N'542986', 3, CAST(660.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (610, CAST(N'2014-01-28T00:00:00.000' AS DateTime), N'542987', 5, CAST(2630.95 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (611, CAST(N'2014-01-29T00:00:00.000' AS DateTime), N'542988', 40, CAST(649.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (612, CAST(N'2014-01-29T00:00:00.000' AS DateTime), N'542989', 25, CAST(1438.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (613, CAST(N'2014-01-29T00:00:00.000' AS DateTime), N'542990', 26, CAST(519.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (614, CAST(N'2014-01-30T00:00:00.000' AS DateTime), N'542991', 89, CAST(3523.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (615, CAST(N'2014-01-30T00:00:00.000' AS DateTime), N'542992', 44, CAST(581.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (616, CAST(N'2014-02-02T00:00:00.000' AS DateTime), N'542993', 35, CAST(519.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (617, CAST(N'2014-02-02T00:00:00.000' AS DateTime), N'542994', 4, CAST(282.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (618, CAST(N'2014-02-02T00:00:00.000' AS DateTime), N'542995', 63, CAST(17250.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (619, CAST(N'2014-02-03T00:00:00.000' AS DateTime), N'542996', 5, CAST(1461.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (620, CAST(N'2014-02-03T00:00:00.000' AS DateTime), N'542997', 48, CAST(98.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (621, CAST(N'2014-02-04T00:00:00.000' AS DateTime), N'542998', 62, CAST(2004.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (622, CAST(N'2014-02-04T00:00:00.000' AS DateTime), N'542999', 72, CAST(1630.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (623, CAST(N'2014-02-04T00:00:00.000' AS DateTime), N'543000', 91, CAST(160.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (624, CAST(N'2014-02-05T00:00:00.000' AS DateTime), N'543001', 9, CAST(2083.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (625, CAST(N'2014-02-05T00:00:00.000' AS DateTime), N'543002', 30, CAST(2166.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (626, CAST(N'2014-02-06T00:00:00.000' AS DateTime), N'543003', 90, CAST(336.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (627, CAST(N'2014-02-06T00:00:00.000' AS DateTime), N'543004', 30, CAST(310.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (628, CAST(N'2014-02-06T00:00:00.000' AS DateTime), N'543005', 5, CAST(729.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (629, CAST(N'2014-02-09T00:00:00.000' AS DateTime), N'543006', 9, CAST(917.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (630, CAST(N'2014-02-09T00:00:00.000' AS DateTime), N'543007', 67, CAST(2086.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (631, CAST(N'2014-02-10T00:00:00.000' AS DateTime), N'543008', 63, CAST(1620.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (632, CAST(N'2014-02-10T00:00:00.000' AS DateTime), N'543009', 90, CAST(611.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (633, CAST(N'2014-02-10T00:00:00.000' AS DateTime), N'543010', 24, CAST(1875.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (634, CAST(N'2014-02-11T00:00:00.000' AS DateTime), N'543011', 12, CAST(150.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (635, CAST(N'2014-02-11T00:00:00.000' AS DateTime), N'543012', 71, CAST(988.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (636, CAST(N'2014-02-12T00:00:00.000' AS DateTime), N'543013', 48, CAST(36.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (637, CAST(N'2014-02-12T00:00:00.000' AS DateTime), N'543014', 45, CAST(1450.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (638, CAST(N'2014-02-12T00:00:00.000' AS DateTime), N'543015', 76, CAST(1209.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (639, CAST(N'2014-02-13T00:00:00.000' AS DateTime), N'543016', 34, CAST(3127.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (640, CAST(N'2014-02-13T00:00:00.000' AS DateTime), N'543017', 29, CAST(70.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (641, CAST(N'2014-02-16T00:00:00.000' AS DateTime), N'543018', 30, CAST(605.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (642, CAST(N'2014-02-16T00:00:00.000' AS DateTime), N'543019', 65, CAST(11380.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (643, CAST(N'2014-02-16T00:00:00.000' AS DateTime), N'543020', 18, CAST(860.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (644, CAST(N'2014-02-17T00:00:00.000' AS DateTime), N'543021', 44, CAST(388.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (645, CAST(N'2014-02-17T00:00:00.000' AS DateTime), N'543022', 50, CAST(2200.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (646, CAST(N'2014-02-18T00:00:00.000' AS DateTime), N'543023', 39, CAST(5502.11 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (647, CAST(N'2014-02-18T00:00:00.000' AS DateTime), N'543024', 71, CAST(2898.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (648, CAST(N'2014-02-18T00:00:00.000' AS DateTime), N'543025', 20, CAST(6379.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (649, CAST(N'2014-02-19T00:00:00.000' AS DateTime), N'543026', 50, CAST(750.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (650, CAST(N'2014-02-19T00:00:00.000' AS DateTime), N'543027', 37, CAST(10835.24 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (651, CAST(N'2014-02-20T00:00:00.000' AS DateTime), N'543028', 54, CAST(30.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (652, CAST(N'2014-02-20T00:00:00.000' AS DateTime), N'543029', 46, CAST(144.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (653, CAST(N'2014-02-20T00:00:00.000' AS DateTime), N'543030', 88, CAST(45.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (654, CAST(N'2014-02-23T00:00:00.000' AS DateTime), N'543031', 35, CAST(934.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (655, CAST(N'2014-02-23T00:00:00.000' AS DateTime), N'543032', 24, CAST(1015.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (656, CAST(N'2014-02-24T00:00:00.000' AS DateTime), N'543033', 34, CAST(932.05 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (657, CAST(N'2014-02-24T00:00:00.000' AS DateTime), N'543034', 89, CAST(1924.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (658, CAST(N'2014-02-24T00:00:00.000' AS DateTime), N'543035', 88, CAST(360.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (659, CAST(N'2014-02-25T00:00:00.000' AS DateTime), N'543036', 91, CAST(427.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (660, CAST(N'2014-02-25T00:00:00.000' AS DateTime), N'543037', 74, CAST(108.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (661, CAST(N'2014-02-26T00:00:00.000' AS DateTime), N'543038', 66, CAST(698.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (662, CAST(N'2014-02-26T00:00:00.000' AS DateTime), N'543039', 70, CAST(670.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (663, CAST(N'2014-02-26T00:00:00.000' AS DateTime), N'543040', 90, CAST(452.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (664, CAST(N'2014-02-26T00:00:00.000' AS DateTime), N'543041', 30, CAST(858.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (665, CAST(N'2014-02-26T00:00:00.000' AS DateTime), N'543042', 37, CAST(8267.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (666, CAST(N'2014-02-26T00:00:00.000' AS DateTime), N'543043', 62, CAST(958.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (667, CAST(N'2014-02-27T00:00:00.000' AS DateTime), N'543044', 62, CAST(537.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (668, CAST(N'2014-02-27T00:00:00.000' AS DateTime), N'543045', 80, CAST(539.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (669, CAST(N'2014-02-27T00:00:00.000' AS DateTime), N'543046', 64, CAST(686.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (670, CAST(N'2014-03-02T00:00:00.000' AS DateTime), N'543047', 69, CAST(365.89 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (671, CAST(N'2014-03-02T00:00:00.000' AS DateTime), N'543048', 10, CAST(1930.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (672, CAST(N'2014-03-02T00:00:00.000' AS DateTime), N'543049', 47, CAST(1122.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (673, CAST(N'2014-03-03T00:00:00.000' AS DateTime), N'543050', 4, CAST(390.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (674, CAST(N'2014-03-03T00:00:00.000' AS DateTime), N'543051', 83, CAST(1936.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (675, CAST(N'2014-03-03T00:00:00.000' AS DateTime), N'543052', 34, CAST(742.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (676, CAST(N'2014-03-03T00:00:00.000' AS DateTime), N'543053', 41, CAST(936.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (677, CAST(N'2014-03-04T00:00:00.000' AS DateTime), N'543054', 5, CAST(2034.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (678, CAST(N'2014-03-04T00:00:00.000' AS DateTime), N'543055', 34, CAST(559.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (679, CAST(N'2014-03-04T00:00:00.000' AS DateTime), N'543056', 2, CAST(514.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (680, CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'543057', 40, CAST(800.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (681, CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'543058', 29, CAST(137.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (682, CAST(N'2014-03-05T00:00:00.000' AS DateTime), N'543059', 25, CAST(1174.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (683, CAST(N'2014-03-06T00:00:00.000' AS DateTime), N'543060', 76, CAST(2455.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (684, CAST(N'2014-03-06T00:00:00.000' AS DateTime), N'543061', 68, CAST(837.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (685, CAST(N'2014-03-06T00:00:00.000' AS DateTime), N'543062', 9, CAST(1925.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (686, CAST(N'2014-03-06T00:00:00.000' AS DateTime), N'543063', 38, CAST(920.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (687, CAST(N'2014-03-09T00:00:00.000' AS DateTime), N'543064', 44, CAST(500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (688, CAST(N'2014-03-09T00:00:00.000' AS DateTime), N'543065', 88, CAST(700.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (689, CAST(N'2014-03-09T00:00:00.000' AS DateTime), N'543066', 32, CAST(570.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (690, CAST(N'2014-03-10T00:00:00.000' AS DateTime), N'543067', 12, CAST(644.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (691, CAST(N'2014-03-10T00:00:00.000' AS DateTime), N'543068', 63, CAST(3642.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (692, CAST(N'2014-03-10T00:00:00.000' AS DateTime), N'543069', 49, CAST(750.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (693, CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'543070', 9, CAST(360.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (694, CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'543071', 71, CAST(4769.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (695, CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'543072', 66, CAST(560.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (696, CAST(N'2014-03-11T00:00:00.000' AS DateTime), N'543073', 11, CAST(711.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (697, CAST(N'2014-03-12T00:00:00.000' AS DateTime), N'543074', 10, CAST(1139.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (698, CAST(N'2014-03-12T00:00:00.000' AS DateTime), N'543075', 52, CAST(245.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (699, CAST(N'2014-03-12T00:00:00.000' AS DateTime), N'543076', 83, CAST(1407.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (700, CAST(N'2014-03-13T00:00:00.000' AS DateTime), N'543077', 11, CAST(220.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (701, CAST(N'2014-03-13T00:00:00.000' AS DateTime), N'543078', 30, CAST(2362.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (702, CAST(N'2014-03-13T00:00:00.000' AS DateTime), N'543079', 10, CAST(4422.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (703, CAST(N'2014-03-16T00:00:00.000' AS DateTime), N'543080', 49, CAST(110.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (704, CAST(N'2014-03-16T00:00:00.000' AS DateTime), N'543081', 68, CAST(482.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (705, CAST(N'2014-03-16T00:00:00.000' AS DateTime), N'543082', 1, CAST(491.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (706, CAST(N'2014-03-16T00:00:00.000' AS DateTime), N'543083', 4, CAST(4675.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (707, CAST(N'2014-03-17T00:00:00.000' AS DateTime), N'543084', 47, CAST(1902.10 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (708, CAST(N'2014-03-17T00:00:00.000' AS DateTime), N'543085', 24, CAST(93.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (709, CAST(N'2014-03-17T00:00:00.000' AS DateTime), N'543086', 6, CAST(677.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (710, CAST(N'2014-03-18T00:00:00.000' AS DateTime), N'543087', 35, CAST(1762.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (711, CAST(N'2014-03-18T00:00:00.000' AS DateTime), N'543088', 54, CAST(781.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (712, CAST(N'2014-03-18T00:00:00.000' AS DateTime), N'543089', 31, CAST(155.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (713, CAST(N'2014-03-19T00:00:00.000' AS DateTime), N'543090', 35, CAST(276.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (714, CAST(N'2014-03-19T00:00:00.000' AS DateTime), N'543091', 62, CAST(1122.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (715, CAST(N'2014-03-19T00:00:00.000' AS DateTime), N'543092', 63, CAST(3584.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (716, CAST(N'2014-03-19T00:00:00.000' AS DateTime), N'543093', 28, CAST(68.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (717, CAST(N'2014-03-20T00:00:00.000' AS DateTime), N'543094', 74, CAST(2052.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (718, CAST(N'2014-03-20T00:00:00.000' AS DateTime), N'543095', 55, CAST(848.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (719, CAST(N'2014-03-20T00:00:00.000' AS DateTime), N'543096', 14, CAST(1255.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (720, CAST(N'2014-03-23T00:00:00.000' AS DateTime), N'543097', 79, CAST(910.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (721, CAST(N'2014-03-23T00:00:00.000' AS DateTime), N'543098', 20, CAST(1408.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (722, CAST(N'2014-03-23T00:00:00.000' AS DateTime), N'543099', 15, CAST(108.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (723, CAST(N'2014-03-24T00:00:00.000' AS DateTime), N'543100', 8, CAST(280.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (724, CAST(N'2014-03-24T00:00:00.000' AS DateTime), N'543101', 26, CAST(1733.06 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (725, CAST(N'2014-03-24T00:00:00.000' AS DateTime), N'543102', 40, CAST(251.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (726, CAST(N'2014-03-24T00:00:00.000' AS DateTime), N'543103', 40, CAST(291.55 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (727, CAST(N'2014-03-25T00:00:00.000' AS DateTime), N'543104', 75, CAST(439.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (728, CAST(N'2014-03-25T00:00:00.000' AS DateTime), N'543105', 10, CAST(717.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (729, CAST(N'2014-03-25T00:00:00.000' AS DateTime), N'543106', 35, CAST(912.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (730, CAST(N'2014-03-26T00:00:00.000' AS DateTime), N'543107', 24, CAST(2233.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (731, CAST(N'2014-03-26T00:00:00.000' AS DateTime), N'543108', 50, CAST(1500.70 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (732, CAST(N'2014-03-26T00:00:00.000' AS DateTime), N'543109', 20, CAST(4813.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (733, CAST(N'2014-03-27T00:00:00.000' AS DateTime), N'543110', 24, CAST(310.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (734, CAST(N'2014-03-27T00:00:00.000' AS DateTime), N'543111', 34, CAST(15810.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (735, CAST(N'2014-03-27T00:00:00.000' AS DateTime), N'543112', 10, CAST(1014.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (736, CAST(N'2014-03-27T00:00:00.000' AS DateTime), N'543113', 71, CAST(796.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (737, CAST(N'2014-03-30T00:00:00.000' AS DateTime), N'543114', 71, CAST(1809.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (738, CAST(N'2014-03-30T00:00:00.000' AS DateTime), N'543115', 37, CAST(2248.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (739, CAST(N'2014-03-30T00:00:00.000' AS DateTime), N'543116', 54, CAST(2220.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (740, CAST(N'2014-03-31T00:00:00.000' AS DateTime), N'543117', 19, CAST(2772.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (741, CAST(N'2014-03-31T00:00:00.000' AS DateTime), N'543118', 65, CAST(3772.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (742, CAST(N'2014-03-31T00:00:00.000' AS DateTime), N'543119', 61, CAST(1353.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (743, CAST(N'2014-04-01T00:00:00.000' AS DateTime), N'543120', 20, CAST(4931.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (744, CAST(N'2014-04-01T00:00:00.000' AS DateTime), N'543121', 63, CAST(2870.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (745, CAST(N'2014-04-01T00:00:00.000' AS DateTime), N'543122', 77, CAST(69.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (746, CAST(N'2014-04-01T00:00:00.000' AS DateTime), N'543123', 24, CAST(6527.25 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (747, CAST(N'2014-04-02T00:00:00.000' AS DateTime), N'543124', 83, CAST(990.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (748, CAST(N'2014-04-02T00:00:00.000' AS DateTime), N'543125', 58, CAST(1196.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (749, CAST(N'2014-04-02T00:00:00.000' AS DateTime), N'543126', 63, CAST(560.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (750, CAST(N'2014-04-03T00:00:00.000' AS DateTime), N'543127', 46, CAST(1980.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (751, CAST(N'2014-04-03T00:00:00.000' AS DateTime), N'543128', 91, CAST(686.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (752, CAST(N'2014-04-03T00:00:00.000' AS DateTime), N'543129', 56, CAST(1261.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (753, CAST(N'2014-04-06T00:00:00.000' AS DateTime), N'543130', 65, CAST(1075.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (754, CAST(N'2014-04-06T00:00:00.000' AS DateTime), N'543131', 24, CAST(2769.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (755, CAST(N'2014-04-06T00:00:00.000' AS DateTime), N'543132', 71, CAST(1902.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (756, CAST(N'2014-04-06T00:00:00.000' AS DateTime), N'543133', 78, CAST(326.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (757, CAST(N'2014-04-07T00:00:00.000' AS DateTime), N'543134', 50, CAST(295.38 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (758, CAST(N'2014-04-07T00:00:00.000' AS DateTime), N'543135', 90, CAST(586.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (759, CAST(N'2014-04-07T00:00:00.000' AS DateTime), N'543136', 32, CAST(391.58 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (760, CAST(N'2014-04-08T00:00:00.000' AS DateTime), N'543137', 60, CAST(2633.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (761, CAST(N'2014-04-08T00:00:00.000' AS DateTime), N'543138', 20, CAST(4903.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (762, CAST(N'2014-04-08T00:00:00.000' AS DateTime), N'543139', 30, CAST(702.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (763, CAST(N'2014-04-09T00:00:00.000' AS DateTime), N'543140', 66, CAST(645.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (764, CAST(N'2014-04-09T00:00:00.000' AS DateTime), N'543141', 1, CAST(960.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (765, CAST(N'2014-04-09T00:00:00.000' AS DateTime), N'543142', 25, CAST(2974.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (766, CAST(N'2014-04-09T00:00:00.000' AS DateTime), N'543143', 69, CAST(361.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (767, CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'543144', 47, CAST(270.20 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (768, CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'543145', 70, CAST(622.35 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (769, CAST(N'2014-04-10T00:00:00.000' AS DateTime), N'543146', 4, CAST(491.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (770, CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'543147', 20, CAST(6750.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (771, CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'543148', 48, CAST(1575.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (772, CAST(N'2014-04-13T00:00:00.000' AS DateTime), N'543149', 64, CAST(76.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (773, CAST(N'2014-04-14T00:00:00.000' AS DateTime), N'543150', 56, CAST(744.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (774, CAST(N'2014-04-14T00:00:00.000' AS DateTime), N'543151', 63, CAST(6941.49 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (775, CAST(N'2014-04-14T00:00:00.000' AS DateTime), N'543152', 34, CAST(1402.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (776, CAST(N'2014-04-14T00:00:00.000' AS DateTime), N'543153', 11, CAST(1500.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (777, CAST(N'2014-04-15T00:00:00.000' AS DateTime), N'543154', 19, CAST(1966.81 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (778, CAST(N'2014-04-15T00:00:00.000' AS DateTime), N'543155', 87, CAST(300.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (779, CAST(N'2014-04-15T00:00:00.000' AS DateTime), N'543156', 27, CAST(1030.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (780, CAST(N'2014-04-16T00:00:00.000' AS DateTime), N'543157', 10, CAST(1170.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (781, CAST(N'2014-04-16T00:00:00.000' AS DateTime), N'543158', 39, CAST(2160.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (782, CAST(N'2014-04-16T00:00:00.000' AS DateTime), N'543159', 14, CAST(1286.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (783, CAST(N'2014-04-17T00:00:00.000' AS DateTime), N'543160', 71, CAST(16321.90 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (784, CAST(N'2014-04-17T00:00:00.000' AS DateTime), N'543161', 71, CAST(2393.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (785, CAST(N'2014-04-17T00:00:00.000' AS DateTime), N'543162', 89, CAST(8902.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (786, CAST(N'2014-04-17T00:00:00.000' AS DateTime), N'543163', 68, CAST(3592.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (787, CAST(N'2014-04-20T00:00:00.000' AS DateTime), N'543164', 55, CAST(554.40 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (788, CAST(N'2014-04-20T00:00:00.000' AS DateTime), N'543165', 76, CAST(1754.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (789, CAST(N'2014-04-20T00:00:00.000' AS DateTime), N'543166', 17, CAST(1692.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (790, CAST(N'2014-04-21T00:00:00.000' AS DateTime), N'543167', 30, CAST(60.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (791, CAST(N'2014-04-21T00:00:00.000' AS DateTime), N'543168', 76, CAST(751.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (792, CAST(N'2014-04-21T00:00:00.000' AS DateTime), N'543169', 47, CAST(3090.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (793, CAST(N'2014-04-22T00:00:00.000' AS DateTime), N'543170', 32, CAST(200.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (794, CAST(N'2014-04-22T00:00:00.000' AS DateTime), N'543171', 14, CAST(1887.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (795, CAST(N'2014-04-22T00:00:00.000' AS DateTime), N'543172', 15, CAST(405.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (796, CAST(N'2014-04-22T00:00:00.000' AS DateTime), N'543173', 74, CAST(210.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (797, CAST(N'2014-04-23T00:00:00.000' AS DateTime), N'543174', 91, CAST(591.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (798, CAST(N'2014-04-23T00:00:00.000' AS DateTime), N'543175', 10, CAST(1309.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (799, CAST(N'2014-04-23T00:00:00.000' AS DateTime), N'543176', 86, CAST(1564.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (800, CAST(N'2014-04-24T00:00:00.000' AS DateTime), N'543177', 19, CAST(1090.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (801, CAST(N'2014-04-24T00:00:00.000' AS DateTime), N'543178', 10, CAST(525.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (802, CAST(N'2014-04-24T00:00:00.000' AS DateTime), N'543179', 31, CAST(342.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (803, CAST(N'2014-04-27T00:00:00.000' AS DateTime), N'543180', 24, CAST(900.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (804, CAST(N'2014-04-27T00:00:00.000' AS DateTime), N'543181', 41, CAST(45.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (805, CAST(N'2014-04-27T00:00:00.000' AS DateTime), N'543182', 34, CAST(1665.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (806, CAST(N'2014-04-27T00:00:00.000' AS DateTime), N'543183', 59, CAST(3658.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (807, CAST(N'2014-04-28T00:00:00.000' AS DateTime), N'543184', 12, CAST(305.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (808, CAST(N'2014-04-28T00:00:00.000' AS DateTime), N'543185', 35, CAST(1727.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (809, CAST(N'2014-04-28T00:00:00.000' AS DateTime), N'543186', 19, CAST(3740.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (810, CAST(N'2014-04-29T00:00:00.000' AS DateTime), N'543187', 53, CAST(45.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (811, CAST(N'2014-04-29T00:00:00.000' AS DateTime), N'543188', 6, CAST(858.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (812, CAST(N'2014-04-29T00:00:00.000' AS DateTime), N'543189', 67, CAST(1838.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (813, CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'543190', 27, CAST(266.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (814, CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'543191', 32, CAST(510.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (815, CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'543192', 66, CAST(508.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (816, CAST(N'2014-04-30T00:00:00.000' AS DateTime), N'543193', 37, CAST(1445.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (817, CAST(N'2014-05-01T00:00:00.000' AS DateTime), N'543194', 71, CAST(4722.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (818, CAST(N'2014-05-01T00:00:00.000' AS DateTime), N'543195', 46, CAST(252.56 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (819, CAST(N'2014-05-01T00:00:00.000' AS DateTime), N'543196', 89, CAST(928.75 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (820, CAST(N'2014-05-04T00:00:00.000' AS DateTime), N'543197', 17, CAST(86.85 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (821, CAST(N'2014-05-04T00:00:00.000' AS DateTime), N'543198', 62, CAST(2384.80 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (822, CAST(N'2014-05-04T00:00:00.000' AS DateTime), N'543199', 80, CAST(360.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (823, CAST(N'2014-05-05T00:00:00.000' AS DateTime), N'543200', 44, CAST(1873.50 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (824, CAST(N'2014-05-05T00:00:00.000' AS DateTime), N'543201', 46, CAST(510.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (825, CAST(N'2014-05-05T00:00:00.000' AS DateTime), N'543202', 20, CAST(5218.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (826, CAST(N'2014-05-05T00:00:00.000' AS DateTime), N'543203', 58, CAST(300.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (827, CAST(N'2014-05-06T00:00:00.000' AS DateTime), N'543204', 73, CAST(244.30 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (828, CAST(N'2014-05-06T00:00:00.000' AS DateTime), N'543205', 68, CAST(586.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (829, CAST(N'2014-05-06T00:00:00.000' AS DateTime), N'543206', 9, CAST(1057.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (830, CAST(N'2014-05-06T00:00:00.000' AS DateTime), N'543207', 65, CAST(1374.60 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (832, CAST(N'2022-01-24T13:29:45.890' AS DateTime), N'24BWZ1', 97, CAST(432.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (833, CAST(N'2022-01-24T13:30:27.620' AS DateTime), N'24BWZ1', 98, CAST(432.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (834, CAST(N'2022-01-24T13:49:20.173' AS DateTime), N'GBC345', 99, CAST(246.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (835, CAST(N'2022-01-25T13:29:23.530' AS DateTime), N'GBC345', 100, CAST(246.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (836, CAST(N'2022-01-25T13:33:43.293' AS DateTime), N'GBC345', 101, CAST(246.00 AS Decimal(12, 2)))
GO
INSERT [dbo].[Order] ([Id], [OrderDate], [OrderNumber], [CustomerId], [TotalAmount]) VALUES (837, CAST(N'2022-01-25T13:42:24.980' AS DateTime), N'GBC345', 102, CAST(246.00 AS Decimal(12, 2)))
GO
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItem] ON 
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1, 1, 11, CAST(14.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2, 1, 42, CAST(9.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (3, 1, 72, CAST(34.80 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (4, 2, 14, CAST(18.60 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (5, 2, 51, CAST(42.40 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (6, 3, 41, CAST(7.70 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (7, 3, 51, CAST(42.40 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (8, 3, 65, CAST(16.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (9, 4, 22, CAST(16.80 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (10, 4, 57, CAST(15.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (11, 4, 65, CAST(16.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (12, 5, 20, CAST(64.80 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (13, 5, 33, CAST(2.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (14, 5, 60, CAST(27.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (15, 6, 31, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (16, 6, 39, CAST(14.40 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (17, 6, 49, CAST(16.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (18, 7, 24, CAST(3.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (19, 7, 55, CAST(19.20 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (20, 7, 74, CAST(8.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (21, 8, 2, CAST(15.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (22, 8, 16, CAST(13.90 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (23, 8, 36, CAST(15.20 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (24, 8, 59, CAST(44.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (25, 9, 53, CAST(26.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (26, 9, 77, CAST(10.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (27, 10, 27, CAST(35.10 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (28, 10, 39, CAST(14.40 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (29, 10, 77, CAST(10.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (30, 11, 2, CAST(15.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (31, 11, 5, CAST(17.00 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (32, 11, 32, CAST(25.60 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (33, 12, 21, CAST(8.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (34, 12, 37, CAST(20.80 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (35, 13, 41, CAST(7.70 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (36, 13, 57, CAST(15.60 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (37, 13, 62, CAST(39.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (38, 13, 70, CAST(12.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (39, 14, 21, CAST(8.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (40, 14, 35, CAST(14.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (41, 15, 5, CAST(17.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (42, 15, 7, CAST(24.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (43, 15, 56, CAST(30.40 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (44, 16, 16, CAST(13.90 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (45, 16, 24, CAST(3.60 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (46, 16, 30, CAST(20.70 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (47, 16, 74, CAST(8.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (48, 17, 2, CAST(15.20 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (49, 17, 41, CAST(7.70 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (50, 18, 17, CAST(31.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (51, 18, 70, CAST(12.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (52, 19, 12, CAST(30.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (53, 20, 40, CAST(14.70 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (54, 20, 59, CAST(44.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (55, 20, 76, CAST(14.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (56, 21, 29, CAST(99.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (57, 21, 72, CAST(27.80 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (58, 22, 33, CAST(2.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (59, 22, 72, CAST(27.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (60, 23, 36, CAST(15.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (61, 23, 43, CAST(36.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (62, 24, 33, CAST(2.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (63, 25, 20, CAST(64.80 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (64, 25, 31, CAST(10.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (65, 25, 72, CAST(27.80 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (66, 26, 10, CAST(24.80 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (67, 26, 31, CAST(10.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (68, 26, 33, CAST(2.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (69, 26, 40, CAST(14.70 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (70, 26, 76, CAST(14.40 AS Decimal(12, 2)), 33)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (71, 27, 71, CAST(17.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (72, 27, 72, CAST(27.80 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (73, 28, 24, CAST(3.60 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (74, 28, 59, CAST(44.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (75, 29, 10, CAST(24.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (76, 29, 13, CAST(4.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (77, 30, 28, CAST(36.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (78, 30, 62, CAST(39.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (79, 31, 44, CAST(15.50 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (80, 31, 59, CAST(44.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (81, 31, 63, CAST(35.10 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (82, 31, 73, CAST(12.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (83, 32, 17, CAST(31.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (84, 33, 24, CAST(3.60 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (85, 33, 55, CAST(19.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (86, 33, 75, CAST(6.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (87, 34, 19, CAST(7.30 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (88, 34, 24, CAST(3.60 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (89, 34, 35, CAST(14.40 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (90, 35, 30, CAST(20.70 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (91, 35, 57, CAST(15.60 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (92, 36, 15, CAST(12.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (93, 36, 19, CAST(7.30 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (94, 36, 60, CAST(27.20 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (95, 36, 72, CAST(27.80 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (96, 37, 27, CAST(35.10 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (97, 37, 44, CAST(15.50 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (98, 37, 60, CAST(27.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (99, 37, 67, CAST(11.20 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (100, 38, 1, CAST(14.40 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (101, 38, 40, CAST(14.70 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (102, 38, 53, CAST(26.20 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (103, 39, 35, CAST(14.40 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (104, 39, 62, CAST(39.40 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (105, 40, 16, CAST(13.90 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (106, 40, 34, CAST(11.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (107, 40, 46, CAST(9.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (108, 41, 54, CAST(5.90 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (109, 41, 68, CAST(10.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (110, 42, 3, CAST(8.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (111, 42, 64, CAST(26.60 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (112, 43, 5, CAST(17.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (113, 43, 29, CAST(99.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (114, 43, 49, CAST(16.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (115, 43, 77, CAST(10.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (116, 44, 13, CAST(4.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (117, 44, 44, CAST(15.50 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (118, 44, 51, CAST(42.40 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (119, 45, 20, CAST(64.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (120, 46, 18, CAST(50.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (121, 46, 24, CAST(3.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (122, 46, 63, CAST(35.10 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (123, 46, 75, CAST(6.20 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (124, 47, 1, CAST(14.40 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (125, 47, 17, CAST(31.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (126, 47, 43, CAST(36.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (127, 47, 60, CAST(27.20 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (128, 47, 75, CAST(6.20 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (129, 48, 56, CAST(30.40 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (130, 49, 11, CAST(16.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (131, 49, 16, CAST(13.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (132, 49, 69, CAST(28.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (133, 50, 39, CAST(14.40 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (134, 50, 72, CAST(27.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (135, 51, 2, CAST(15.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (136, 51, 36, CAST(15.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (137, 51, 59, CAST(44.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (138, 51, 62, CAST(39.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (139, 52, 19, CAST(7.30 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (140, 52, 70, CAST(12.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (141, 53, 66, CAST(13.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (142, 53, 68, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (143, 54, 40, CAST(14.70 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (144, 54, 56, CAST(30.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (145, 55, 17, CAST(31.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (146, 55, 28, CAST(36.40 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (147, 55, 43, CAST(36.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (148, 56, 40, CAST(14.70 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (149, 56, 65, CAST(16.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (150, 56, 68, CAST(10.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (151, 57, 49, CAST(16.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (152, 57, 59, CAST(44.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (153, 57, 71, CAST(17.20 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (154, 58, 18, CAST(50.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (155, 58, 29, CAST(99.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (156, 58, 39, CAST(14.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (157, 59, 30, CAST(20.70 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (158, 59, 53, CAST(26.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (159, 59, 54, CAST(5.90 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (160, 60, 62, CAST(39.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (161, 60, 68, CAST(10.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (162, 61, 69, CAST(28.80 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (163, 61, 70, CAST(12.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (164, 62, 4, CAST(17.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (165, 62, 6, CAST(20.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (166, 62, 42, CAST(11.20 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (167, 62, 43, CAST(36.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (168, 62, 71, CAST(17.20 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (169, 63, 16, CAST(13.90 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (170, 63, 62, CAST(39.40 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (171, 64, 42, CAST(11.20 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (172, 64, 69, CAST(28.80 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (173, 65, 28, CAST(36.40 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (174, 65, 43, CAST(36.80 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (175, 65, 53, CAST(26.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (176, 65, 75, CAST(6.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (177, 66, 36, CAST(15.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (178, 67, 32, CAST(25.60 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (179, 67, 58, CAST(10.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (180, 67, 62, CAST(39.40 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (181, 68, 34, CAST(11.20 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (182, 68, 70, CAST(12.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (183, 69, 41, CAST(7.70 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (184, 69, 62, CAST(39.40 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (185, 70, 1, CAST(14.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (186, 71, 41, CAST(7.70 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (187, 71, 76, CAST(14.40 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (188, 72, 17, CAST(31.20 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (189, 72, 28, CAST(36.40 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (190, 72, 76, CAST(14.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (191, 73, 71, CAST(17.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (192, 74, 35, CAST(14.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (193, 75, 52, CAST(5.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (194, 76, 15, CAST(12.40 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (195, 76, 25, CAST(11.20 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (196, 76, 39, CAST(14.40 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (197, 77, 16, CAST(13.90 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (198, 77, 35, CAST(14.40 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (199, 77, 46, CAST(9.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (200, 77, 59, CAST(44.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (201, 77, 63, CAST(35.10 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (202, 78, 6, CAST(20.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (203, 78, 13, CAST(4.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (204, 78, 14, CAST(18.60 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (205, 78, 31, CAST(10.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (206, 78, 72, CAST(27.80 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (207, 79, 4, CAST(17.60 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (208, 79, 57, CAST(15.60 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (209, 79, 75, CAST(6.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (210, 80, 2, CAST(15.20 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (211, 80, 11, CAST(16.80 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (212, 80, 30, CAST(20.70 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (213, 80, 58, CAST(10.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (214, 81, 59, CAST(44.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (215, 81, 65, CAST(16.80 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (216, 81, 68, CAST(10.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (217, 82, 19, CAST(7.30 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (218, 82, 30, CAST(20.70 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (219, 82, 38, CAST(210.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (220, 82, 56, CAST(30.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (221, 83, 26, CAST(24.90 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (222, 83, 72, CAST(27.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (223, 84, 54, CAST(5.90 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (224, 85, 18, CAST(50.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (225, 85, 42, CAST(11.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (226, 85, 47, CAST(7.60 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (227, 86, 14, CAST(18.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (228, 86, 21, CAST(8.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (229, 86, 71, CAST(17.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (230, 87, 52, CAST(5.60 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (231, 87, 68, CAST(10.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (232, 88, 2, CAST(15.20 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (233, 88, 31, CAST(10.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (234, 88, 32, CAST(25.60 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (235, 88, 51, CAST(42.40 AS Decimal(12, 2)), 48)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (236, 89, 4, CAST(17.60 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (237, 90, 23, CAST(7.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (238, 90, 26, CAST(24.90 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (239, 90, 36, CAST(15.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (240, 90, 37, CAST(20.80 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (241, 90, 72, CAST(27.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (242, 91, 17, CAST(31.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (243, 91, 30, CAST(20.70 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (244, 92, 4, CAST(17.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (245, 92, 17, CAST(31.20 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (246, 92, 62, CAST(39.40 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (247, 93, 18, CAST(50.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (248, 93, 41, CAST(7.70 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (249, 93, 43, CAST(36.80 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (250, 94, 33, CAST(2.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (251, 94, 59, CAST(44.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (252, 95, 2, CAST(15.20 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (253, 95, 31, CAST(10.00 AS Decimal(12, 2)), 56)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (254, 95, 36, CAST(15.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (255, 95, 55, CAST(19.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (256, 96, 64, CAST(26.60 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (257, 96, 68, CAST(10.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (258, 96, 76, CAST(14.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (259, 97, 4, CAST(17.60 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (260, 97, 8, CAST(32.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (261, 98, 8, CAST(32.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (262, 98, 19, CAST(7.30 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (263, 98, 42, CAST(11.20 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (264, 99, 17, CAST(31.20 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (265, 99, 56, CAST(30.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (266, 100, 25, CAST(11.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (267, 100, 39, CAST(14.40 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (268, 100, 40, CAST(14.70 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (269, 100, 75, CAST(6.20 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (270, 101, 1, CAST(14.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (271, 101, 23, CAST(7.20 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (272, 102, 54, CAST(5.90 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (273, 103, 50, CAST(13.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (274, 103, 69, CAST(28.80 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (275, 104, 38, CAST(210.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (276, 104, 41, CAST(7.70 AS Decimal(12, 2)), 13)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (277, 104, 44, CAST(15.50 AS Decimal(12, 2)), 77)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (278, 104, 65, CAST(16.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (279, 105, 24, CAST(3.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (280, 105, 54, CAST(5.90 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (281, 106, 11, CAST(16.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (282, 106, 38, CAST(210.80 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (283, 107, 1, CAST(14.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (284, 107, 29, CAST(99.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (285, 108, 24, CAST(3.60 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (286, 108, 57, CAST(15.60 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (287, 109, 31, CAST(10.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (288, 109, 55, CAST(19.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (289, 109, 69, CAST(28.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (290, 110, 10, CAST(24.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (291, 110, 26, CAST(24.90 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (292, 110, 60, CAST(27.20 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (293, 111, 24, CAST(3.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (294, 111, 34, CAST(11.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (295, 111, 36, CAST(15.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (296, 112, 16, CAST(13.90 AS Decimal(12, 2)), 56)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (297, 112, 31, CAST(10.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (298, 112, 60, CAST(27.20 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (299, 113, 28, CAST(36.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (300, 113, 29, CAST(99.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (301, 113, 38, CAST(210.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (302, 113, 49, CAST(16.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (303, 113, 54, CAST(5.90 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (304, 114, 39, CAST(14.40 AS Decimal(12, 2)), 54)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (305, 114, 60, CAST(27.20 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (306, 115, 25, CAST(11.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (307, 115, 51, CAST(42.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (308, 115, 54, CAST(5.90 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (309, 116, 31, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (310, 116, 75, CAST(6.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (311, 116, 76, CAST(14.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (312, 117, 69, CAST(28.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (313, 117, 71, CAST(17.20 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (314, 118, 11, CAST(16.80 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (315, 119, 65, CAST(16.80 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (316, 119, 77, CAST(10.40 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (317, 120, 34, CAST(11.20 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (318, 120, 54, CAST(5.90 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (319, 120, 65, CAST(16.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (320, 120, 77, CAST(10.40 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (321, 121, 21, CAST(8.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (322, 121, 28, CAST(36.40 AS Decimal(12, 2)), 13)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (323, 121, 57, CAST(15.60 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (324, 121, 64, CAST(26.60 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (325, 122, 29, CAST(99.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (326, 122, 56, CAST(30.40 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (327, 123, 1, CAST(14.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (328, 123, 64, CAST(26.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (329, 123, 74, CAST(8.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (330, 124, 36, CAST(15.20 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (331, 125, 20, CAST(64.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (332, 125, 38, CAST(210.80 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (333, 125, 60, CAST(27.20 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (334, 125, 72, CAST(27.80 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (335, 126, 58, CAST(10.60 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (336, 126, 71, CAST(17.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (337, 127, 31, CAST(10.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (338, 127, 58, CAST(10.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (339, 128, 14, CAST(18.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (340, 128, 54, CAST(5.90 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (341, 129, 31, CAST(10.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (342, 130, 28, CAST(36.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (343, 130, 39, CAST(14.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (344, 131, 71, CAST(17.20 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (345, 132, 41, CAST(7.70 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (346, 132, 63, CAST(35.10 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (347, 132, 65, CAST(16.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (348, 133, 30, CAST(20.70 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (349, 133, 53, CAST(26.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (350, 133, 60, CAST(27.20 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (351, 133, 70, CAST(12.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (352, 134, 74, CAST(8.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (353, 135, 5, CAST(17.00 AS Decimal(12, 2)), 32)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (354, 135, 18, CAST(50.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (355, 135, 29, CAST(99.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (356, 135, 33, CAST(2.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (357, 135, 74, CAST(8.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (358, 136, 13, CAST(4.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (359, 136, 50, CAST(13.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (360, 136, 56, CAST(30.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (361, 137, 20, CAST(64.80 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (362, 137, 60, CAST(27.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (363, 138, 7, CAST(24.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (364, 138, 60, CAST(27.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (365, 138, 68, CAST(10.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (366, 139, 24, CAST(3.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (367, 139, 34, CAST(11.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (368, 140, 24, CAST(3.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (369, 140, 28, CAST(36.40 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (370, 140, 59, CAST(44.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (371, 140, 71, CAST(17.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (372, 141, 45, CAST(7.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (373, 141, 52, CAST(5.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (374, 141, 53, CAST(26.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (375, 142, 10, CAST(24.80 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (376, 142, 55, CAST(19.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (377, 142, 62, CAST(39.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (378, 142, 70, CAST(12.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (379, 143, 31, CAST(10.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (380, 143, 35, CAST(14.40 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (381, 143, 46, CAST(9.60 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (382, 143, 72, CAST(27.80 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (383, 144, 13, CAST(4.80 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (384, 145, 69, CAST(28.80 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (385, 146, 2, CAST(15.20 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (386, 146, 14, CAST(18.60 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (387, 146, 25, CAST(11.20 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (388, 146, 26, CAST(24.90 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (389, 146, 31, CAST(10.00 AS Decimal(12, 2)), 32)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (390, 147, 13, CAST(4.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (391, 147, 62, CAST(39.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (392, 148, 46, CAST(9.60 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (393, 148, 53, CAST(26.20 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (394, 148, 69, CAST(28.80 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (395, 149, 23, CAST(7.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (396, 149, 71, CAST(17.20 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (397, 149, 72, CAST(27.80 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (398, 150, 21, CAST(8.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (399, 150, 51, CAST(42.40 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (400, 151, 35, CAST(14.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (401, 151, 55, CAST(19.20 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (402, 152, 68, CAST(10.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (403, 152, 71, CAST(17.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (404, 152, 76, CAST(14.40 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (405, 152, 77, CAST(10.40 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (406, 153, 29, CAST(99.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (407, 153, 35, CAST(14.40 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (408, 153, 49, CAST(16.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (409, 154, 30, CAST(20.70 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (410, 154, 56, CAST(30.40 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (411, 154, 65, CAST(16.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (412, 154, 71, CAST(17.20 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (413, 155, 23, CAST(7.20 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (414, 155, 63, CAST(35.10 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (415, 156, 16, CAST(13.90 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (416, 156, 48, CAST(10.20 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (417, 157, 26, CAST(24.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (418, 157, 42, CAST(11.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (419, 157, 49, CAST(16.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (420, 158, 3, CAST(8.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (421, 159, 1, CAST(14.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (422, 159, 21, CAST(8.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (423, 159, 28, CAST(36.40 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (424, 159, 36, CAST(15.20 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (425, 159, 40, CAST(14.70 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (426, 160, 11, CAST(16.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (427, 160, 69, CAST(28.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (428, 160, 71, CAST(17.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (429, 161, 37, CAST(20.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (430, 161, 54, CAST(5.90 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (431, 161, 62, CAST(39.40 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (432, 162, 14, CAST(18.60 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (433, 162, 21, CAST(8.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (434, 163, 33, CAST(2.00 AS Decimal(12, 2)), 49)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (435, 163, 59, CAST(44.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (436, 164, 41, CAST(7.70 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (437, 164, 44, CAST(15.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (438, 164, 59, CAST(44.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (439, 165, 14, CAST(18.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (440, 166, 1, CAST(14.40 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (441, 166, 62, CAST(39.40 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (442, 166, 76, CAST(14.40 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (443, 167, 19, CAST(7.30 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (444, 167, 33, CAST(2.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (445, 168, 17, CAST(31.20 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (446, 168, 33, CAST(2.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (447, 169, 19, CAST(7.30 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (448, 169, 53, CAST(26.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (449, 169, 57, CAST(15.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (450, 170, 38, CAST(210.80 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (451, 170, 46, CAST(9.60 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (452, 170, 68, CAST(10.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (453, 170, 77, CAST(10.40 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (454, 171, 2, CAST(15.20 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (455, 171, 47, CAST(7.60 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (456, 171, 61, CAST(22.80 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (457, 171, 74, CAST(8.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (458, 172, 60, CAST(27.20 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (459, 172, 69, CAST(28.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (460, 173, 9, CAST(77.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (461, 173, 13, CAST(4.80 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (462, 173, 70, CAST(12.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (463, 173, 73, CAST(12.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (464, 174, 19, CAST(7.30 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (465, 174, 26, CAST(24.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (466, 174, 53, CAST(26.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (467, 174, 77, CAST(10.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (468, 175, 26, CAST(24.90 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (469, 176, 31, CAST(10.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (470, 176, 59, CAST(44.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (471, 177, 35, CAST(14.40 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (472, 177, 38, CAST(210.80 AS Decimal(12, 2)), 49)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (473, 177, 68, CAST(10.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (474, 178, 55, CAST(19.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (475, 178, 76, CAST(14.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (476, 179, 56, CAST(30.40 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (477, 179, 64, CAST(26.60 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (478, 180, 14, CAST(18.60 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (479, 181, 46, CAST(9.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (480, 182, 50, CAST(13.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (481, 182, 63, CAST(35.10 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (482, 183, 17, CAST(31.20 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (483, 183, 21, CAST(8.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (484, 183, 56, CAST(30.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (485, 183, 59, CAST(44.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (486, 184, 17, CAST(31.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (487, 184, 40, CAST(14.70 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (488, 184, 47, CAST(7.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (489, 185, 26, CAST(24.90 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (490, 185, 54, CAST(5.90 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (491, 186, 56, CAST(30.40 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (492, 187, 11, CAST(16.80 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (493, 187, 76, CAST(14.40 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (494, 188, 2, CAST(15.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (495, 188, 22, CAST(16.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (496, 188, 72, CAST(27.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (497, 189, 46, CAST(9.60 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (498, 189, 56, CAST(30.40 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (499, 189, 64, CAST(26.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (500, 189, 75, CAST(6.20 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (501, 190, 53, CAST(26.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (502, 191, 19, CAST(7.30 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (503, 191, 34, CAST(11.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (504, 191, 57, CAST(15.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (505, 192, 12, CAST(30.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (506, 192, 16, CAST(13.90 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (507, 192, 64, CAST(26.60 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (508, 192, 74, CAST(8.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (509, 193, 2, CAST(15.20 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (510, 193, 16, CAST(13.90 AS Decimal(12, 2)), 49)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (511, 193, 29, CAST(99.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (512, 193, 61, CAST(22.80 AS Decimal(12, 2)), 90)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (513, 194, 27, CAST(35.10 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (514, 195, 11, CAST(16.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (515, 195, 54, CAST(5.90 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (516, 195, 66, CAST(13.60 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (517, 196, 11, CAST(16.80 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (518, 196, 28, CAST(36.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (519, 197, 17, CAST(31.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (520, 197, 26, CAST(24.90 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (521, 197, 35, CAST(14.40 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (522, 197, 41, CAST(7.70 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (523, 198, 39, CAST(14.40 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (524, 198, 54, CAST(5.90 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (525, 199, 19, CAST(7.30 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (526, 199, 24, CAST(3.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (527, 199, 31, CAST(10.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (528, 199, 52, CAST(5.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (529, 200, 19, CAST(7.30 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (530, 200, 65, CAST(16.80 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (531, 200, 71, CAST(17.20 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (532, 201, 26, CAST(24.90 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (533, 201, 40, CAST(14.70 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (534, 202, 10, CAST(24.80 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (535, 202, 52, CAST(5.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (536, 202, 62, CAST(39.40 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (537, 203, 10, CAST(24.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (538, 203, 54, CAST(5.90 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (539, 204, 55, CAST(19.20 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (540, 204, 64, CAST(26.60 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (541, 204, 65, CAST(16.80 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (542, 204, 77, CAST(10.40 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (543, 205, 28, CAST(36.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (544, 205, 44, CAST(15.50 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (545, 206, 48, CAST(10.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (546, 206, 70, CAST(12.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (547, 207, 16, CAST(13.90 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (548, 207, 33, CAST(2.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (549, 207, 46, CAST(9.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (550, 208, 39, CAST(14.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (551, 208, 53, CAST(26.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (552, 208, 61, CAST(22.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (553, 208, 71, CAST(17.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (554, 209, 21, CAST(8.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (555, 209, 49, CAST(16.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (556, 210, 59, CAST(44.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (557, 211, 26, CAST(24.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (558, 211, 28, CAST(36.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (559, 211, 43, CAST(36.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (560, 211, 56, CAST(30.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (561, 211, 71, CAST(17.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (562, 212, 7, CAST(24.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (563, 212, 46, CAST(9.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (564, 212, 72, CAST(27.80 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (565, 213, 68, CAST(10.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (566, 213, 75, CAST(6.20 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (567, 214, 21, CAST(8.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (568, 214, 30, CAST(20.70 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (569, 214, 55, CAST(19.20 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (570, 215, 13, CAST(4.80 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (571, 215, 23, CAST(7.20 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (572, 216, 19, CAST(7.30 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (573, 216, 42, CAST(11.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (574, 217, 4, CAST(17.60 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (575, 217, 43, CAST(36.80 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (576, 217, 56, CAST(30.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (577, 217, 60, CAST(27.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (578, 218, 24, CAST(3.60 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (579, 218, 29, CAST(99.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (580, 218, 40, CAST(14.70 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (581, 218, 45, CAST(7.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (582, 218, 50, CAST(13.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (583, 219, 11, CAST(16.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (584, 219, 46, CAST(9.60 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (585, 220, 24, CAST(3.60 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (586, 220, 25, CAST(11.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (587, 221, 30, CAST(20.70 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (588, 221, 43, CAST(36.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (589, 222, 2, CAST(15.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (590, 222, 16, CAST(13.90 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (591, 222, 44, CAST(15.50 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (592, 223, 18, CAST(50.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (593, 223, 23, CAST(7.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (594, 223, 64, CAST(26.60 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (595, 224, 7, CAST(24.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (596, 224, 56, CAST(30.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (597, 225, 24, CAST(3.60 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (598, 225, 51, CAST(42.40 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (599, 226, 33, CAST(2.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (600, 226, 71, CAST(17.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (601, 227, 14, CAST(18.60 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (602, 227, 28, CAST(36.40 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (603, 227, 40, CAST(14.70 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (604, 227, 75, CAST(6.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (605, 228, 31, CAST(10.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (606, 228, 66, CAST(13.60 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (607, 228, 76, CAST(14.40 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (608, 229, 55, CAST(19.20 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (609, 229, 70, CAST(12.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (610, 230, 1, CAST(14.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (611, 230, 21, CAST(8.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (612, 230, 39, CAST(14.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (613, 231, 10, CAST(24.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (614, 232, 38, CAST(210.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (615, 232, 53, CAST(26.20 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (616, 232, 59, CAST(44.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (617, 232, 64, CAST(26.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (618, 233, 47, CAST(7.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (619, 233, 59, CAST(44.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (620, 234, 49, CAST(16.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (621, 234, 60, CAST(27.20 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (622, 235, 40, CAST(14.70 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (623, 236, 34, CAST(11.20 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (624, 236, 77, CAST(10.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (625, 237, 21, CAST(8.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (626, 237, 40, CAST(14.70 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (627, 237, 51, CAST(42.40 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (628, 238, 2, CAST(15.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (629, 238, 3, CAST(8.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (630, 238, 55, CAST(19.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (631, 238, 70, CAST(12.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (632, 239, 11, CAST(16.80 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (633, 239, 51, CAST(42.40 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (634, 239, 74, CAST(8.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (635, 240, 19, CAST(7.30 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (636, 240, 26, CAST(24.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (637, 240, 54, CAST(5.90 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (638, 241, 59, CAST(44.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (639, 241, 73, CAST(12.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (640, 242, 11, CAST(16.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (641, 242, 16, CAST(13.90 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (642, 243, 59, CAST(44.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (643, 243, 68, CAST(10.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (644, 243, 75, CAST(6.20 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (645, 244, 44, CAST(15.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (646, 244, 77, CAST(10.40 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (647, 245, 25, CAST(11.20 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (648, 245, 42, CAST(11.20 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (649, 246, 65, CAST(16.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (650, 246, 66, CAST(13.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (651, 246, 69, CAST(28.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (652, 247, 56, CAST(30.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (653, 248, 23, CAST(7.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (654, 248, 41, CAST(7.70 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (655, 248, 77, CAST(10.40 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (656, 249, 31, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (657, 250, 56, CAST(30.40 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (658, 250, 72, CAST(27.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (659, 250, 77, CAST(10.40 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (660, 251, 24, CAST(4.50 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (661, 251, 40, CAST(18.40 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (662, 251, 42, CAST(14.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (663, 252, 28, CAST(45.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (664, 252, 49, CAST(20.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (665, 253, 15, CAST(15.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (666, 253, 28, CAST(45.60 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (667, 254, 54, CAST(7.45 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (668, 255, 45, CAST(9.50 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (669, 255, 53, CAST(32.80 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (670, 255, 67, CAST(14.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (671, 256, 14, CAST(23.25 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (672, 256, 65, CAST(21.05 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (673, 257, 2, CAST(19.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (674, 257, 21, CAST(10.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (675, 257, 53, CAST(32.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (676, 257, 61, CAST(28.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (677, 258, 62, CAST(49.30 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (678, 259, 25, CAST(14.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (679, 259, 70, CAST(15.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (680, 260, 43, CAST(46.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (681, 260, 48, CAST(12.75 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (682, 261, 13, CAST(6.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (683, 261, 39, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (684, 262, 28, CAST(45.60 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (685, 263, 29, CAST(123.79 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (686, 263, 75, CAST(7.75 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (687, 264, 4, CAST(22.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (688, 264, 7, CAST(30.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (689, 264, 8, CAST(40.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (690, 265, 24, CAST(4.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (691, 265, 46, CAST(12.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (692, 265, 47, CAST(9.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (693, 265, 60, CAST(34.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (694, 266, 21, CAST(10.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (695, 266, 32, CAST(32.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (696, 266, 61, CAST(28.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (697, 267, 20, CAST(81.00 AS Decimal(12, 2)), 39)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (698, 267, 28, CAST(45.60 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (699, 267, 56, CAST(38.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (700, 267, 65, CAST(21.05 AS Decimal(12, 2)), 39)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (701, 267, 75, CAST(7.75 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (702, 268, 9, CAST(97.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (703, 268, 16, CAST(17.45 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (704, 268, 27, CAST(43.90 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (705, 268, 33, CAST(2.50 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (706, 268, 60, CAST(34.00 AS Decimal(12, 2)), 84)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (707, 269, 18, CAST(62.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (708, 269, 41, CAST(9.65 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (709, 269, 42, CAST(14.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (710, 270, 52, CAST(7.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (711, 270, 59, CAST(55.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (712, 270, 70, CAST(15.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (713, 271, 24, CAST(4.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (714, 271, 38, CAST(263.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (715, 271, 44, CAST(19.45 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (716, 272, 10, CAST(31.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (717, 272, 56, CAST(38.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (718, 272, 60, CAST(34.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (719, 273, 24, CAST(4.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (720, 273, 53, CAST(32.80 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (721, 274, 35, CAST(18.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (722, 274, 41, CAST(9.65 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (723, 274, 68, CAST(12.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (724, 275, 1, CAST(18.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (725, 275, 8, CAST(40.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (726, 275, 30, CAST(25.89 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (727, 275, 40, CAST(18.40 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (728, 276, 17, CAST(39.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (729, 276, 20, CAST(81.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (730, 276, 37, CAST(26.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (731, 276, 41, CAST(9.65 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (732, 277, 10, CAST(31.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (733, 277, 30, CAST(25.89 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (734, 277, 43, CAST(46.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (735, 277, 54, CAST(7.45 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (736, 278, 36, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (737, 278, 40, CAST(18.40 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (738, 279, 1, CAST(18.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (739, 279, 13, CAST(6.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (740, 279, 56, CAST(38.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (741, 280, 4, CAST(22.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (742, 280, 36, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (743, 281, 11, CAST(21.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (744, 281, 33, CAST(2.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (745, 281, 72, CAST(34.80 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (746, 282, 55, CAST(24.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (747, 282, 68, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (748, 282, 69, CAST(36.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (749, 283, 17, CAST(39.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (750, 283, 43, CAST(46.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (751, 283, 61, CAST(28.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (752, 283, 76, CAST(18.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (753, 284, 59, CAST(55.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (754, 285, 30, CAST(25.89 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (755, 285, 66, CAST(17.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (756, 286, 4, CAST(22.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (757, 286, 72, CAST(34.80 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (758, 286, 73, CAST(15.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (759, 287, 30, CAST(25.89 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (760, 287, 40, CAST(18.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (761, 287, 54, CAST(7.45 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (762, 288, 11, CAST(21.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (763, 288, 40, CAST(18.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (764, 288, 57, CAST(19.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (765, 288, 59, CAST(55.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (766, 289, 12, CAST(38.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (767, 289, 31, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (768, 289, 33, CAST(2.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (769, 289, 60, CAST(34.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (770, 290, 31, CAST(12.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (771, 290, 51, CAST(53.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (772, 290, 58, CAST(13.25 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (773, 290, 72, CAST(34.80 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (774, 290, 73, CAST(15.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (775, 291, 70, CAST(15.00 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (776, 291, 72, CAST(34.80 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (777, 292, 13, CAST(6.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (778, 292, 21, CAST(10.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (779, 292, 33, CAST(2.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (780, 292, 49, CAST(20.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (781, 293, 3, CAST(10.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (782, 293, 26, CAST(31.23 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (783, 293, 38, CAST(263.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (784, 293, 68, CAST(12.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (785, 294, 24, CAST(4.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (786, 294, 38, CAST(263.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (787, 294, 65, CAST(21.05 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (788, 294, 71, CAST(21.50 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (789, 295, 11, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (790, 295, 54, CAST(7.45 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (791, 296, 12, CAST(38.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (792, 296, 23, CAST(9.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (793, 297, 28, CAST(45.60 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (794, 297, 67, CAST(14.00 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (795, 298, 11, CAST(21.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (796, 299, 7, CAST(30.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (797, 299, 35, CAST(18.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (798, 299, 62, CAST(49.30 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (799, 300, 32, CAST(32.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (800, 300, 36, CAST(19.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (801, 301, 34, CAST(14.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (802, 301, 41, CAST(9.65 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (803, 302, 31, CAST(12.50 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (804, 302, 45, CAST(9.50 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (805, 302, 51, CAST(53.00 AS Decimal(12, 2)), 48)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (806, 303, 17, CAST(39.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (807, 303, 19, CAST(9.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (808, 303, 21, CAST(10.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (809, 303, 61, CAST(28.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (810, 304, 16, CAST(17.45 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (811, 304, 35, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (812, 304, 44, CAST(19.45 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (813, 305, 69, CAST(36.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (814, 305, 75, CAST(7.75 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (815, 306, 11, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (816, 306, 16, CAST(17.45 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (817, 306, 22, CAST(21.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (818, 306, 31, CAST(12.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (819, 306, 35, CAST(18.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (820, 307, 16, CAST(17.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (821, 307, 23, CAST(9.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (822, 307, 62, CAST(49.30 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (823, 307, 77, CAST(13.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (824, 308, 14, CAST(23.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (825, 308, 19, CAST(9.20 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (826, 308, 24, CAST(4.50 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (827, 308, 51, CAST(53.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (828, 308, 56, CAST(38.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (829, 309, 72, CAST(34.80 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (830, 310, 64, CAST(33.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (831, 310, 75, CAST(7.75 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (832, 311, 47, CAST(9.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (833, 311, 51, CAST(53.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (834, 311, 52, CAST(7.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (835, 311, 53, CAST(32.80 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (836, 311, 73, CAST(15.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (837, 312, 41, CAST(9.65 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (838, 312, 55, CAST(24.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (839, 313, 30, CAST(25.89 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (840, 313, 62, CAST(49.30 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (841, 314, 44, CAST(19.45 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (842, 314, 51, CAST(53.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (843, 315, 33, CAST(2.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (844, 315, 62, CAST(49.30 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (845, 316, 36, CAST(19.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (846, 316, 52, CAST(7.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (847, 317, 17, CAST(39.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (848, 317, 31, CAST(12.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (849, 317, 55, CAST(24.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (850, 318, 24, CAST(4.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (851, 318, 64, CAST(33.25 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (852, 319, 11, CAST(21.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (853, 319, 18, CAST(62.50 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (854, 319, 76, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (855, 320, 31, CAST(12.50 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (856, 320, 51, CAST(53.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (857, 320, 59, CAST(55.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (858, 321, 10, CAST(31.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (859, 322, 31, CAST(12.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (860, 322, 76, CAST(18.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (861, 323, 11, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (862, 323, 56, CAST(38.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (863, 324, 14, CAST(23.25 AS Decimal(12, 2)), 11)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (864, 324, 42, CAST(14.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (865, 325, 16, CAST(17.45 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (866, 325, 32, CAST(32.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (867, 325, 40, CAST(18.40 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (868, 325, 75, CAST(7.75 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (869, 326, 17, CAST(39.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (870, 326, 34, CAST(14.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (871, 326, 53, CAST(32.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (872, 327, 33, CAST(2.50 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (873, 327, 40, CAST(18.40 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (874, 327, 62, CAST(49.30 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (875, 327, 64, CAST(33.25 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (876, 328, 59, CAST(55.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (877, 328, 63, CAST(43.90 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (878, 328, 72, CAST(34.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (879, 328, 76, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (880, 329, 1, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (881, 329, 31, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (882, 329, 44, CAST(19.45 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (883, 330, 39, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (884, 330, 75, CAST(7.75 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (885, 330, 77, CAST(13.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (886, 331, 35, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (887, 331, 57, CAST(19.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (888, 332, 15, CAST(15.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (889, 332, 75, CAST(7.75 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (890, 333, 14, CAST(23.25 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (891, 333, 41, CAST(9.65 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (892, 333, 65, CAST(21.05 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (893, 334, 75, CAST(7.75 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (894, 335, 57, CAST(19.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (895, 335, 76, CAST(18.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (896, 336, 29, CAST(123.79 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (897, 336, 60, CAST(34.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (898, 336, 69, CAST(36.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (899, 337, 31, CAST(12.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (900, 338, 47, CAST(9.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (901, 339, 52, CAST(7.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (902, 340, 26, CAST(31.23 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (903, 340, 35, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (904, 340, 77, CAST(13.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (905, 341, 18, CAST(62.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (906, 341, 42, CAST(14.00 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (907, 342, 35, CAST(18.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (908, 343, 1, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (909, 343, 77, CAST(13.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (910, 344, 3, CAST(10.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (911, 344, 7, CAST(30.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (912, 344, 54, CAST(7.45 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (913, 345, 15, CAST(15.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (914, 345, 26, CAST(31.23 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (915, 346, 20, CAST(81.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (916, 346, 69, CAST(36.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (917, 346, 76, CAST(18.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (918, 347, 52, CAST(7.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (919, 347, 58, CAST(13.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (920, 348, 35, CAST(18.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (921, 348, 61, CAST(28.50 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (922, 348, 69, CAST(36.00 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (923, 349, 56, CAST(38.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (924, 349, 63, CAST(43.90 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (925, 349, 75, CAST(7.75 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (926, 350, 24, CAST(4.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (927, 350, 57, CAST(19.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (928, 350, 65, CAST(21.05 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (929, 351, 27, CAST(43.90 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (930, 351, 71, CAST(21.50 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (931, 352, 62, CAST(49.30 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (932, 353, 54, CAST(7.45 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (933, 353, 73, CAST(15.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (934, 354, 13, CAST(6.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (935, 354, 59, CAST(55.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (936, 355, 77, CAST(13.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (937, 356, 22, CAST(21.00 AS Decimal(12, 2)), 48)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (938, 356, 49, CAST(20.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (939, 357, 48, CAST(12.75 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (940, 357, 76, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (941, 358, 16, CAST(17.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (942, 358, 59, CAST(55.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (943, 358, 60, CAST(34.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (944, 358, 71, CAST(21.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (945, 359, 4, CAST(22.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (946, 359, 55, CAST(24.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (947, 359, 62, CAST(49.30 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (948, 360, 7, CAST(30.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (949, 360, 17, CAST(39.00 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (950, 360, 33, CAST(2.50 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (951, 360, 40, CAST(18.40 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (952, 360, 72, CAST(34.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (953, 361, 56, CAST(38.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (954, 362, 1, CAST(18.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (955, 362, 10, CAST(31.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (956, 362, 21, CAST(10.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (957, 363, 36, CAST(19.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (958, 364, 1, CAST(18.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (959, 364, 2, CAST(19.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (960, 364, 60, CAST(34.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (961, 365, 10, CAST(31.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (962, 365, 36, CAST(19.00 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (963, 365, 49, CAST(20.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (964, 365, 60, CAST(34.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (965, 365, 76, CAST(18.00 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (966, 366, 13, CAST(6.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (967, 366, 75, CAST(7.75 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (968, 367, 11, CAST(21.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (969, 367, 21, CAST(10.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (970, 367, 39, CAST(18.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (971, 368, 55, CAST(24.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (972, 369, 38, CAST(263.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (973, 369, 56, CAST(38.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (974, 369, 70, CAST(15.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (975, 369, 71, CAST(21.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (976, 370, 59, CAST(55.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (977, 371, 6, CAST(25.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (978, 371, 56, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (979, 371, 68, CAST(12.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (980, 372, 21, CAST(10.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (981, 372, 22, CAST(21.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (982, 373, 24, CAST(4.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (983, 373, 52, CAST(7.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (984, 374, 19, CAST(9.20 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (985, 374, 23, CAST(9.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (986, 374, 70, CAST(15.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (987, 374, 71, CAST(21.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (988, 375, 2, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (989, 375, 68, CAST(12.50 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (990, 376, 14, CAST(23.25 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (991, 376, 19, CAST(9.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (992, 376, 21, CAST(10.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (993, 376, 24, CAST(4.50 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (994, 376, 35, CAST(18.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (995, 377, 28, CAST(45.60 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (996, 377, 29, CAST(123.79 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (997, 377, 44, CAST(19.45 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (998, 378, 14, CAST(23.25 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (999, 378, 42, CAST(14.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1000, 378, 60, CAST(34.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1001, 379, 53, CAST(32.80 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1002, 379, 60, CAST(34.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1003, 379, 71, CAST(21.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1004, 380, 62, CAST(49.30 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1005, 380, 73, CAST(15.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1006, 381, 1, CAST(18.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1007, 382, 29, CAST(123.79 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1008, 382, 64, CAST(33.25 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1009, 383, 55, CAST(24.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1010, 383, 76, CAST(18.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1011, 384, 75, CAST(7.75 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1012, 385, 2, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1013, 385, 33, CAST(2.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1014, 386, 12, CAST(38.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1015, 386, 13, CAST(6.00 AS Decimal(12, 2)), 13)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1016, 386, 26, CAST(31.23 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1017, 386, 62, CAST(49.30 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1018, 387, 7, CAST(30.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1019, 387, 18, CAST(62.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1020, 387, 51, CAST(53.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1021, 387, 75, CAST(7.75 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1022, 388, 4, CAST(22.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1023, 388, 5, CAST(21.35 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1024, 388, 22, CAST(21.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1025, 389, 4, CAST(22.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1026, 389, 58, CAST(13.25 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1027, 390, 11, CAST(21.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1028, 390, 50, CAST(16.25 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1029, 390, 56, CAST(38.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1030, 391, 45, CAST(9.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1031, 391, 65, CAST(21.05 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1032, 391, 72, CAST(34.80 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1033, 392, 18, CAST(62.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1034, 393, 69, CAST(36.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1035, 393, 70, CAST(15.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1036, 394, 2, CAST(19.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1037, 394, 40, CAST(18.40 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1038, 395, 21, CAST(10.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1039, 395, 61, CAST(28.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1040, 396, 28, CAST(45.60 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1041, 396, 39, CAST(18.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1042, 396, 46, CAST(12.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1043, 397, 18, CAST(62.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1044, 397, 43, CAST(46.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1045, 397, 46, CAST(12.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1046, 398, 18, CAST(62.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1047, 398, 36, CAST(19.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1048, 399, 1, CAST(18.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1049, 399, 10, CAST(31.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1050, 399, 71, CAST(21.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1051, 399, 77, CAST(13.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1052, 400, 19, CAST(9.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1053, 400, 39, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1054, 401, 22, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1055, 401, 24, CAST(4.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1056, 402, 28, CAST(45.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1057, 402, 72, CAST(34.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1058, 403, 30, CAST(25.89 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1059, 403, 53, CAST(32.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1060, 403, 54, CAST(7.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1061, 404, 19, CAST(9.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1062, 404, 22, CAST(21.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1063, 405, 30, CAST(25.89 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1064, 405, 42, CAST(14.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1065, 406, 16, CAST(17.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1066, 406, 60, CAST(34.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1067, 407, 4, CAST(22.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1068, 407, 39, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1069, 407, 54, CAST(7.45 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1070, 408, 41, CAST(9.65 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1071, 409, 14, CAST(23.25 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1072, 409, 44, CAST(19.45 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1073, 409, 47, CAST(9.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1074, 410, 15, CAST(15.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1075, 410, 41, CAST(9.65 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1076, 410, 46, CAST(12.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1077, 410, 47, CAST(9.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1078, 410, 56, CAST(38.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1079, 410, 60, CAST(34.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1080, 411, 21, CAST(10.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1081, 411, 40, CAST(18.40 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1082, 411, 60, CAST(34.00 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1083, 411, 77, CAST(13.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1084, 412, 31, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1085, 412, 40, CAST(18.40 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1086, 412, 70, CAST(15.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1087, 413, 20, CAST(81.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1088, 414, 39, CAST(18.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1089, 414, 58, CAST(13.25 AS Decimal(12, 2)), 49)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1090, 415, 68, CAST(12.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1091, 416, 40, CAST(18.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1092, 416, 42, CAST(14.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1093, 416, 51, CAST(53.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1094, 417, 10, CAST(31.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1095, 417, 56, CAST(38.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1096, 417, 65, CAST(21.05 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1097, 418, 51, CAST(53.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1098, 418, 59, CAST(55.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1099, 418, 76, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1100, 419, 29, CAST(123.79 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1101, 419, 65, CAST(21.05 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1102, 420, 69, CAST(36.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1103, 420, 71, CAST(21.50 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1104, 421, 31, CAST(12.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1105, 421, 55, CAST(24.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1106, 421, 64, CAST(33.25 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1107, 422, 36, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1108, 423, 23, CAST(9.00 AS Decimal(12, 2)), 32)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1109, 423, 46, CAST(12.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1110, 423, 67, CAST(14.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1111, 423, 73, CAST(15.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1112, 423, 75, CAST(7.75 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1113, 424, 16, CAST(17.45 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1114, 424, 62, CAST(49.30 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1115, 424, 65, CAST(21.05 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1116, 425, 38, CAST(263.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1117, 425, 71, CAST(21.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1118, 426, 16, CAST(17.45 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1119, 426, 42, CAST(14.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1120, 426, 43, CAST(46.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1121, 427, 23, CAST(9.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1122, 428, 14, CAST(23.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1123, 428, 53, CAST(32.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1124, 428, 58, CAST(13.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1125, 429, 10, CAST(31.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1126, 429, 19, CAST(9.20 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1127, 429, 44, CAST(19.45 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1128, 430, 26, CAST(31.23 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1129, 430, 33, CAST(2.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1130, 431, 12, CAST(38.00 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1131, 431, 33, CAST(2.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1132, 431, 41, CAST(9.65 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1133, 431, 54, CAST(7.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1134, 432, 59, CAST(55.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1135, 433, 16, CAST(17.45 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1136, 433, 31, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1137, 433, 42, CAST(14.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1138, 434, 19, CAST(9.20 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1139, 434, 21, CAST(10.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1140, 434, 64, CAST(33.25 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1141, 435, 33, CAST(2.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1142, 435, 66, CAST(17.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1143, 435, 75, CAST(7.75 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1144, 436, 52, CAST(7.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1145, 437, 40, CAST(18.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1146, 437, 47, CAST(9.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1147, 437, 60, CAST(34.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1148, 438, 10, CAST(31.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1149, 438, 41, CAST(9.65 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1150, 438, 47, CAST(9.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1151, 439, 17, CAST(39.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1152, 439, 26, CAST(31.23 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1153, 440, 9, CAST(97.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1154, 440, 29, CAST(123.79 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1155, 440, 36, CAST(19.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1156, 441, 10, CAST(31.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1157, 441, 28, CAST(45.60 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1158, 441, 34, CAST(14.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1159, 442, 1, CAST(18.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1160, 443, 56, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1161, 443, 77, CAST(13.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1162, 444, 1, CAST(18.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1163, 444, 29, CAST(123.79 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1164, 444, 43, CAST(46.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1165, 444, 44, CAST(19.45 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1166, 444, 62, CAST(49.30 AS Decimal(12, 2)), 48)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1167, 445, 63, CAST(43.90 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1168, 446, 9, CAST(97.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1169, 446, 54, CAST(7.45 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1170, 446, 69, CAST(36.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1171, 446, 73, CAST(15.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1172, 447, 7, CAST(30.00 AS Decimal(12, 2)), 90)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1173, 447, 59, CAST(55.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1174, 447, 70, CAST(15.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1175, 448, 8, CAST(40.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1176, 448, 12, CAST(38.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1177, 448, 24, CAST(4.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1178, 449, 17, CAST(39.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1179, 449, 46, CAST(12.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1180, 450, 19, CAST(9.20 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1181, 450, 35, CAST(18.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1182, 450, 58, CAST(13.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1183, 450, 70, CAST(15.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1184, 451, 11, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1185, 451, 17, CAST(39.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1186, 451, 29, CAST(123.79 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1187, 451, 65, CAST(21.05 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1188, 451, 70, CAST(15.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1189, 452, 47, CAST(9.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1190, 453, 1, CAST(18.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1191, 453, 34, CAST(14.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1192, 453, 68, CAST(12.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1193, 453, 71, CAST(21.50 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1194, 454, 59, CAST(55.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1195, 454, 71, CAST(21.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1196, 454, 76, CAST(18.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1197, 455, 3, CAST(10.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1198, 455, 76, CAST(18.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1199, 456, 2, CAST(19.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1200, 456, 59, CAST(55.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1201, 456, 73, CAST(15.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1202, 457, 4, CAST(22.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1203, 457, 24, CAST(4.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1204, 457, 48, CAST(12.75 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1205, 458, 31, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1206, 458, 32, CAST(32.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1207, 459, 16, CAST(17.45 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1208, 459, 43, CAST(46.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1209, 459, 59, CAST(55.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1210, 460, 55, CAST(24.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1211, 460, 57, CAST(19.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1212, 460, 70, CAST(15.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1213, 461, 5, CAST(21.35 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1214, 461, 36, CAST(19.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1215, 462, 8, CAST(40.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1216, 462, 51, CAST(53.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1217, 462, 60, CAST(34.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1218, 463, 19, CAST(9.20 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1219, 463, 47, CAST(9.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1220, 464, 19, CAST(9.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1221, 464, 41, CAST(9.65 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1222, 464, 53, CAST(32.80 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1223, 465, 53, CAST(32.80 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1224, 465, 56, CAST(38.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1225, 466, 10, CAST(31.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1226, 466, 26, CAST(31.23 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1227, 466, 45, CAST(9.50 AS Decimal(12, 2)), 110)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1228, 466, 46, CAST(12.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1229, 467, 2, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1230, 467, 17, CAST(39.00 AS Decimal(12, 2)), 27)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1231, 467, 47, CAST(9.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1232, 467, 56, CAST(38.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1233, 467, 58, CAST(13.25 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1234, 468, 10, CAST(31.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1235, 468, 71, CAST(21.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1236, 469, 21, CAST(10.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1237, 469, 51, CAST(53.00 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1238, 469, 61, CAST(28.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1239, 470, 21, CAST(10.00 AS Decimal(12, 2)), 32)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1240, 470, 54, CAST(7.45 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1241, 470, 69, CAST(36.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1242, 471, 12, CAST(38.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1243, 471, 16, CAST(17.45 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1244, 471, 36, CAST(19.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1245, 471, 62, CAST(49.30 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1246, 472, 18, CAST(62.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1247, 472, 30, CAST(25.89 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1248, 472, 54, CAST(7.45 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1249, 473, 35, CAST(18.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1250, 473, 71, CAST(21.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1251, 474, 44, CAST(19.45 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1252, 475, 2, CAST(19.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1253, 475, 31, CAST(12.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1254, 475, 68, CAST(12.50 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1255, 475, 75, CAST(7.75 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1256, 476, 26, CAST(31.23 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1257, 477, 10, CAST(31.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1258, 477, 61, CAST(28.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1259, 478, 41, CAST(9.65 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1260, 478, 52, CAST(7.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1261, 478, 55, CAST(24.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1262, 479, 4, CAST(22.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1263, 479, 11, CAST(21.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1264, 480, 17, CAST(39.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1265, 480, 56, CAST(38.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1266, 480, 59, CAST(55.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1267, 481, 30, CAST(25.89 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1268, 481, 40, CAST(18.40 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1269, 481, 55, CAST(24.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1270, 481, 60, CAST(34.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1271, 482, 1, CAST(18.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1272, 482, 21, CAST(10.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1273, 482, 50, CAST(16.25 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1274, 483, 16, CAST(17.45 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1275, 483, 31, CAST(12.50 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1276, 483, 65, CAST(21.05 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1277, 484, 21, CAST(10.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1278, 484, 51, CAST(53.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1279, 485, 76, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1280, 486, 14, CAST(23.25 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1281, 486, 28, CAST(45.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1282, 486, 52, CAST(7.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1283, 487, 6, CAST(25.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1284, 487, 30, CAST(25.89 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1285, 487, 76, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1286, 488, 61, CAST(28.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1287, 488, 77, CAST(13.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1288, 489, 65, CAST(21.05 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1289, 489, 75, CAST(7.75 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1290, 490, 13, CAST(6.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1291, 490, 41, CAST(9.65 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1292, 491, 16, CAST(17.45 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1293, 492, 36, CAST(19.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1294, 492, 52, CAST(7.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1295, 493, 28, CAST(45.60 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1296, 493, 35, CAST(18.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1297, 493, 45, CAST(9.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1298, 493, 56, CAST(38.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1299, 494, 2, CAST(19.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1300, 495, 3, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1301, 495, 60, CAST(34.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1302, 495, 72, CAST(34.80 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1303, 496, 46, CAST(12.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1304, 497, 40, CAST(18.40 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1305, 498, 18, CAST(62.50 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1306, 498, 44, CAST(19.45 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1307, 498, 59, CAST(55.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1308, 498, 72, CAST(34.80 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1309, 499, 13, CAST(6.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1310, 499, 42, CAST(14.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1311, 499, 62, CAST(49.30 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1312, 499, 69, CAST(36.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1313, 500, 31, CAST(12.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1314, 500, 41, CAST(9.65 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1315, 500, 63, CAST(43.90 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1316, 500, 69, CAST(36.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1317, 501, 23, CAST(9.00 AS Decimal(12, 2)), 44)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1318, 501, 40, CAST(18.40 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1319, 501, 56, CAST(38.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1320, 502, 56, CAST(38.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1321, 502, 59, CAST(55.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1322, 502, 76, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1323, 503, 14, CAST(23.25 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1324, 503, 45, CAST(9.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1325, 503, 59, CAST(55.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1326, 504, 26, CAST(31.23 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1327, 504, 30, CAST(25.89 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1328, 504, 50, CAST(16.25 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1329, 504, 73, CAST(15.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1330, 505, 1, CAST(18.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1331, 505, 69, CAST(36.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1332, 506, 45, CAST(9.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1333, 506, 74, CAST(10.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1334, 507, 40, CAST(18.40 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1335, 508, 47, CAST(9.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1336, 508, 56, CAST(38.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1337, 508, 57, CAST(19.50 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1338, 508, 69, CAST(36.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1339, 509, 18, CAST(62.50 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1340, 509, 36, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1341, 509, 68, CAST(12.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1342, 509, 69, CAST(36.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1343, 510, 34, CAST(14.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1344, 510, 59, CAST(55.00 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1345, 510, 62, CAST(49.30 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1346, 510, 64, CAST(33.25 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1347, 511, 26, CAST(31.23 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1348, 511, 52, CAST(7.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1349, 511, 70, CAST(15.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1350, 512, 32, CAST(32.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1351, 513, 25, CAST(14.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1352, 513, 27, CAST(43.90 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1353, 513, 43, CAST(46.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1354, 514, 25, CAST(14.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1355, 514, 75, CAST(7.75 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1356, 515, 39, CAST(18.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1357, 515, 47, CAST(9.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1358, 515, 51, CAST(53.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1359, 515, 56, CAST(38.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1360, 516, 21, CAST(10.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1361, 516, 22, CAST(21.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1362, 516, 24, CAST(4.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1363, 517, 3, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1364, 517, 39, CAST(18.00 AS Decimal(12, 2)), 130)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1365, 518, 65, CAST(21.05 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1366, 519, 2, CAST(19.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1367, 519, 7, CAST(30.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1368, 519, 68, CAST(12.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1369, 520, 42, CAST(14.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1370, 521, 22, CAST(21.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1371, 521, 31, CAST(12.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1372, 521, 60, CAST(34.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1373, 521, 71, CAST(21.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1374, 522, 41, CAST(9.65 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1375, 522, 52, CAST(7.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1376, 522, 61, CAST(28.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1377, 522, 62, CAST(49.30 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1378, 523, 11, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1379, 524, 71, CAST(21.50 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1380, 525, 29, CAST(123.79 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1381, 525, 59, CAST(55.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1382, 526, 17, CAST(39.00 AS Decimal(12, 2)), 33)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1383, 526, 31, CAST(12.50 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1384, 526, 75, CAST(7.75 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1385, 527, 31, CAST(12.50 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1386, 527, 66, CAST(17.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1387, 528, 10, CAST(31.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1388, 528, 67, CAST(14.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1389, 529, 31, CAST(12.50 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1390, 529, 42, CAST(14.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1391, 529, 45, CAST(9.50 AS Decimal(12, 2)), 27)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1392, 529, 51, CAST(53.00 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1393, 530, 42, CAST(14.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1394, 531, 41, CAST(9.65 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1395, 532, 16, CAST(17.45 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1396, 532, 62, CAST(49.30 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1397, 533, 70, CAST(15.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1398, 533, 77, CAST(13.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1399, 534, 54, CAST(7.45 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1400, 534, 56, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1401, 534, 74, CAST(10.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1402, 535, 31, CAST(12.50 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1403, 536, 31, CAST(12.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1404, 536, 38, CAST(263.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1405, 537, 36, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1406, 537, 39, CAST(18.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1407, 537, 72, CAST(34.80 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1408, 538, 10, CAST(31.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1409, 538, 75, CAST(7.75 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1410, 539, 8, CAST(40.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1411, 539, 30, CAST(25.89 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1412, 539, 75, CAST(7.75 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1413, 540, 2, CAST(19.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1414, 540, 29, CAST(123.79 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1415, 541, 19, CAST(9.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1416, 541, 75, CAST(7.75 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1417, 542, 18, CAST(62.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1418, 542, 35, CAST(18.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1419, 542, 63, CAST(43.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1420, 542, 68, CAST(12.50 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1421, 543, 7, CAST(30.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1422, 543, 56, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1423, 544, 29, CAST(123.79 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1424, 544, 41, CAST(9.65 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1425, 545, 2, CAST(19.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1426, 545, 54, CAST(7.45 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1427, 545, 68, CAST(12.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1428, 546, 41, CAST(9.65 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1429, 546, 52, CAST(7.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1430, 547, 14, CAST(23.25 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1431, 547, 54, CAST(7.45 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1432, 548, 16, CAST(17.45 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1433, 548, 17, CAST(39.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1434, 549, 26, CAST(31.23 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1435, 549, 44, CAST(19.45 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1436, 549, 64, CAST(33.25 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1437, 549, 69, CAST(36.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1438, 550, 11, CAST(21.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1439, 551, 62, CAST(49.30 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1440, 551, 72, CAST(34.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1441, 552, 13, CAST(6.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1442, 552, 24, CAST(4.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1443, 552, 59, CAST(55.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1444, 553, 11, CAST(21.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1445, 553, 51, CAST(53.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1446, 553, 54, CAST(7.45 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1447, 554, 17, CAST(39.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1448, 554, 29, CAST(123.79 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1449, 555, 30, CAST(25.89 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1450, 555, 51, CAST(53.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1451, 555, 55, CAST(24.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1452, 555, 62, CAST(49.30 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1453, 556, 19, CAST(9.20 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1454, 556, 25, CAST(14.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1455, 556, 59, CAST(55.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1456, 557, 10, CAST(31.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1457, 557, 28, CAST(45.60 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1458, 557, 49, CAST(20.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1459, 558, 34, CAST(14.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1460, 558, 38, CAST(263.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1461, 559, 2, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1462, 559, 65, CAST(21.05 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1463, 559, 74, CAST(10.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1464, 560, 40, CAST(18.40 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1465, 561, 56, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1466, 561, 76, CAST(18.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1467, 562, 52, CAST(7.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1468, 563, 13, CAST(6.00 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1469, 563, 25, CAST(14.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1470, 563, 70, CAST(15.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1471, 564, 19, CAST(9.20 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1472, 564, 23, CAST(9.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1473, 564, 40, CAST(18.40 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1474, 565, 31, CAST(12.50 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1475, 565, 72, CAST(34.80 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1476, 565, 77, CAST(13.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1477, 566, 2, CAST(19.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1478, 566, 46, CAST(12.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1479, 567, 41, CAST(9.65 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1480, 567, 43, CAST(46.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1481, 567, 48, CAST(12.75 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1482, 567, 61, CAST(28.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1483, 568, 33, CAST(2.50 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1484, 569, 38, CAST(263.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1485, 569, 62, CAST(49.30 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1486, 570, 26, CAST(31.23 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1487, 570, 38, CAST(263.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1488, 570, 40, CAST(18.40 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1489, 570, 62, CAST(49.30 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1490, 571, 32, CAST(32.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1491, 571, 41, CAST(9.65 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1492, 572, 43, CAST(46.00 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1493, 572, 75, CAST(7.75 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1494, 573, 56, CAST(38.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1495, 574, 35, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1496, 574, 51, CAST(53.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1497, 575, 62, CAST(49.30 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1498, 575, 70, CAST(15.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1499, 576, 11, CAST(21.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1500, 576, 57, CAST(19.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1501, 576, 59, CAST(55.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1502, 576, 77, CAST(13.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1503, 577, 41, CAST(9.65 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1504, 577, 70, CAST(15.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1505, 578, 26, CAST(31.23 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1506, 578, 53, CAST(32.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1507, 579, 31, CAST(12.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1508, 579, 57, CAST(19.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1509, 580, 10, CAST(31.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1510, 580, 39, CAST(18.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1511, 581, 20, CAST(81.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1512, 581, 38, CAST(263.50 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1513, 582, 2, CAST(19.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1514, 582, 8, CAST(40.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1515, 582, 13, CAST(6.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1516, 582, 60, CAST(34.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1517, 583, 6, CAST(25.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1518, 583, 39, CAST(18.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1519, 583, 60, CAST(34.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1520, 583, 68, CAST(12.50 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1521, 584, 19, CAST(9.20 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1522, 584, 35, CAST(18.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1523, 584, 38, CAST(263.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1524, 584, 43, CAST(46.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1525, 585, 13, CAST(6.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1526, 585, 25, CAST(14.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1527, 585, 44, CAST(19.45 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1528, 585, 64, CAST(33.25 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1529, 586, 7, CAST(30.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1530, 586, 31, CAST(12.50 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1531, 586, 53, CAST(32.80 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1532, 587, 29, CAST(123.79 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1533, 587, 30, CAST(25.89 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1534, 588, 59, CAST(55.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1535, 588, 77, CAST(13.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1536, 589, 22, CAST(21.00 AS Decimal(12, 2)), 52)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1537, 589, 35, CAST(18.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1538, 589, 57, CAST(19.50 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1539, 589, 60, CAST(34.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1540, 589, 64, CAST(33.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1541, 590, 13, CAST(6.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1542, 590, 40, CAST(18.40 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1543, 590, 47, CAST(9.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1544, 590, 76, CAST(18.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1545, 591, 1, CAST(18.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1546, 591, 18, CAST(62.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1547, 591, 36, CAST(19.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1548, 592, 58, CAST(13.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1549, 592, 72, CAST(34.80 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1550, 593, 25, CAST(14.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1551, 593, 39, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1552, 594, 10, CAST(31.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1553, 594, 56, CAST(38.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1554, 594, 59, CAST(55.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1555, 594, 77, CAST(13.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1556, 595, 11, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1557, 595, 43, CAST(46.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1558, 595, 68, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1559, 595, 70, CAST(15.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1560, 596, 51, CAST(53.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1561, 597, 22, CAST(21.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1562, 598, 23, CAST(9.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1563, 598, 35, CAST(18.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1564, 598, 42, CAST(14.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1565, 598, 58, CAST(13.25 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1566, 598, 64, CAST(33.25 AS Decimal(12, 2)), 48)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1567, 599, 4, CAST(22.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1568, 599, 70, CAST(15.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1569, 599, 74, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1570, 600, 1, CAST(18.00 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1571, 600, 19, CAST(9.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1572, 600, 37, CAST(26.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1573, 600, 45, CAST(9.50 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1574, 600, 60, CAST(34.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1575, 600, 71, CAST(21.50 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1576, 601, 5, CAST(21.35 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1577, 601, 9, CAST(97.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1578, 602, 3, CAST(10.00 AS Decimal(12, 2)), 49)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1579, 602, 26, CAST(31.23 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1580, 603, 25, CAST(14.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1581, 603, 33, CAST(2.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1582, 603, 70, CAST(15.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1583, 604, 2, CAST(19.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1584, 604, 25, CAST(14.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1585, 604, 57, CAST(19.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1586, 604, 59, CAST(55.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1587, 605, 2, CAST(19.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1588, 605, 17, CAST(39.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1589, 605, 62, CAST(49.30 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1590, 606, 18, CAST(62.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1591, 607, 10, CAST(31.00 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1592, 607, 13, CAST(6.00 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1593, 608, 16, CAST(17.45 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1594, 608, 31, CAST(12.50 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1595, 608, 56, CAST(38.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1596, 608, 65, CAST(21.05 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1597, 609, 2, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1598, 609, 42, CAST(14.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1599, 610, 3, CAST(10.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1600, 610, 26, CAST(31.23 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1601, 610, 29, CAST(123.79 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1602, 611, 7, CAST(30.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1603, 611, 27, CAST(43.90 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1604, 611, 70, CAST(15.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1605, 612, 24, CAST(4.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1606, 612, 54, CAST(7.45 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1607, 612, 64, CAST(33.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1608, 613, 51, CAST(53.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1609, 613, 76, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1610, 614, 17, CAST(39.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1611, 614, 18, CAST(62.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1612, 614, 21, CAST(10.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1613, 614, 33, CAST(2.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1614, 614, 62, CAST(49.30 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1615, 615, 11, CAST(21.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1616, 615, 52, CAST(7.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1617, 616, 1, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1618, 616, 58, CAST(13.25 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1619, 617, 35, CAST(18.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1620, 617, 67, CAST(14.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1621, 618, 38, CAST(263.50 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1622, 618, 39, CAST(18.00 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1623, 619, 2, CAST(19.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1624, 619, 24, CAST(4.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1625, 619, 30, CAST(25.89 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1626, 620, 53, CAST(32.80 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1627, 621, 26, CAST(31.23 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1628, 621, 35, CAST(18.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1629, 621, 49, CAST(20.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1630, 622, 1, CAST(18.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1631, 622, 11, CAST(21.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1632, 622, 23, CAST(9.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1633, 622, 68, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1634, 623, 35, CAST(18.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1635, 623, 51, CAST(53.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1636, 624, 6, CAST(25.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1637, 624, 16, CAST(17.45 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1638, 624, 17, CAST(39.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1639, 625, 55, CAST(24.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1640, 625, 62, CAST(49.30 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1641, 625, 64, CAST(33.25 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1642, 625, 65, CAST(21.05 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1643, 626, 21, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1644, 626, 28, CAST(45.60 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1645, 627, 10, CAST(31.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1646, 628, 19, CAST(9.20 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1647, 628, 47, CAST(9.50 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1648, 628, 49, CAST(20.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1649, 629, 46, CAST(12.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1650, 629, 64, CAST(33.25 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1651, 630, 16, CAST(17.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1652, 630, 18, CAST(62.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1653, 631, 20, CAST(81.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1654, 632, 40, CAST(18.40 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1655, 632, 65, CAST(21.05 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1656, 632, 76, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1657, 633, 23, CAST(9.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1658, 633, 61, CAST(28.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1659, 633, 70, CAST(15.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1660, 634, 73, CAST(15.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1661, 635, 42, CAST(14.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1662, 635, 49, CAST(20.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1663, 635, 54, CAST(7.45 AS Decimal(12, 2)), 32)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1664, 636, 24, CAST(4.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1665, 637, 21, CAST(10.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1666, 637, 56, CAST(38.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1667, 637, 65, CAST(21.05 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1668, 638, 2, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1669, 638, 24, CAST(4.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1670, 638, 70, CAST(15.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1671, 638, 77, CAST(13.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1672, 639, 10, CAST(31.00 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1673, 639, 31, CAST(12.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1674, 639, 77, CAST(13.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1675, 640, 25, CAST(14.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1676, 641, 2, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1677, 641, 68, CAST(12.50 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1678, 642, 11, CAST(21.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1679, 642, 38, CAST(263.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1680, 643, 17, CAST(39.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1681, 643, 34, CAST(14.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1682, 643, 41, CAST(9.65 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1683, 644, 30, CAST(25.89 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1684, 645, 59, CAST(55.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1685, 646, 8, CAST(40.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1686, 646, 24, CAST(4.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1687, 646, 29, CAST(123.79 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1688, 646, 30, CAST(25.89 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1689, 646, 36, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1690, 647, 13, CAST(6.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1691, 647, 69, CAST(36.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1692, 647, 75, CAST(7.75 AS Decimal(12, 2)), 120)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1693, 648, 24, CAST(4.50 AS Decimal(12, 2)), 110)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1694, 648, 39, CAST(18.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1695, 648, 40, CAST(18.40 AS Decimal(12, 2)), 91)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1696, 648, 60, CAST(34.00 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1697, 649, 45, CAST(9.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1698, 649, 56, CAST(38.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1699, 650, 29, CAST(123.79 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1700, 650, 30, CAST(25.89 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1701, 651, 13, CAST(6.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1702, 652, 39, CAST(18.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1703, 653, 70, CAST(15.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1704, 654, 41, CAST(9.65 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1705, 654, 71, CAST(21.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1706, 655, 55, CAST(24.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1707, 655, 62, CAST(49.30 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1708, 656, 13, CAST(6.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1709, 656, 65, CAST(21.05 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1710, 656, 68, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1711, 657, 58, CAST(13.25 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1712, 657, 62, CAST(49.30 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1713, 658, 1, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1714, 659, 61, CAST(28.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1715, 660, 75, CAST(7.75 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1716, 661, 7, CAST(30.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1717, 661, 52, CAST(7.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1718, 662, 7, CAST(30.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1719, 662, 16, CAST(17.45 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1720, 662, 41, CAST(9.65 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1721, 663, 19, CAST(9.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1722, 663, 49, CAST(20.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1723, 663, 61, CAST(28.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1724, 664, 1, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1725, 664, 17, CAST(39.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1726, 664, 67, CAST(14.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1727, 665, 11, CAST(21.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1728, 665, 29, CAST(123.79 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1729, 666, 4, CAST(22.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1730, 666, 33, CAST(2.50 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1731, 666, 58, CAST(13.25 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1732, 667, 71, CAST(21.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1733, 668, 17, CAST(39.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1734, 668, 33, CAST(2.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1735, 668, 54, CAST(7.45 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1736, 669, 16, CAST(17.45 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1737, 669, 32, CAST(32.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1738, 669, 57, CAST(19.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1739, 670, 30, CAST(25.89 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1740, 670, 60, CAST(34.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1741, 671, 1, CAST(18.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1742, 671, 60, CAST(34.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1743, 672, 16, CAST(17.45 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1744, 672, 25, CAST(14.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1745, 672, 40, CAST(18.40 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1746, 673, 50, CAST(16.25 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1747, 674, 35, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1748, 674, 63, CAST(43.90 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1749, 675, 17, CAST(39.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1750, 675, 24, CAST(4.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1751, 676, 42, CAST(14.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1752, 676, 43, CAST(46.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1753, 676, 67, CAST(14.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1754, 677, 10, CAST(31.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1755, 677, 28, CAST(45.60 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1756, 677, 75, CAST(7.75 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1757, 678, 36, CAST(19.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1758, 678, 52, CAST(7.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1759, 679, 11, CAST(21.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1760, 679, 13, CAST(6.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1761, 679, 19, CAST(9.20 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1762, 679, 72, CAST(34.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1763, 680, 20, CAST(81.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1764, 680, 52, CAST(7.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1765, 680, 76, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1766, 681, 47, CAST(9.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1767, 681, 76, CAST(18.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1768, 682, 21, CAST(10.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1769, 682, 75, CAST(7.75 AS Decimal(12, 2)), 49)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1770, 682, 77, CAST(13.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1771, 683, 21, CAST(10.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1772, 683, 27, CAST(43.90 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1773, 683, 55, CAST(24.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1774, 683, 58, CAST(13.25 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1775, 684, 13, CAST(6.00 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1776, 684, 57, CAST(19.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1777, 685, 16, CAST(17.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1778, 685, 62, CAST(49.30 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1779, 685, 72, CAST(34.80 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1780, 685, 75, CAST(7.75 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1781, 686, 53, CAST(32.80 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1782, 686, 61, CAST(28.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1783, 687, 6, CAST(25.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1784, 688, 1, CAST(18.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1785, 688, 18, CAST(62.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1786, 688, 23, CAST(9.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1787, 689, 36, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1788, 690, 28, CAST(45.60 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1789, 690, 34, CAST(14.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1790, 691, 13, CAST(6.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1791, 691, 43, CAST(46.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1792, 691, 60, CAST(34.00 AS Decimal(12, 2)), 49)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1793, 691, 71, CAST(21.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1794, 692, 2, CAST(19.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1795, 692, 67, CAST(14.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1796, 693, 7, CAST(30.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1797, 693, 13, CAST(6.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1798, 694, 31, CAST(12.50 AS Decimal(12, 2)), 44)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1799, 694, 62, CAST(49.30 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1800, 694, 68, CAST(12.50 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1801, 694, 72, CAST(34.80 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1802, 695, 49, CAST(20.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1803, 696, 13, CAST(6.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1804, 696, 22, CAST(21.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1805, 696, 46, CAST(12.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1806, 697, 11, CAST(21.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1807, 697, 44, CAST(19.45 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1808, 697, 56, CAST(38.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1809, 698, 13, CAST(6.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1810, 698, 31, CAST(12.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1811, 699, 10, CAST(31.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1812, 699, 24, CAST(4.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1813, 699, 77, CAST(13.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1814, 700, 59, CAST(55.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1815, 701, 50, CAST(16.25 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1816, 701, 51, CAST(53.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1817, 701, 55, CAST(24.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1818, 702, 6, CAST(25.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1819, 702, 10, CAST(31.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1820, 702, 17, CAST(39.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1821, 702, 62, CAST(49.30 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1822, 703, 4, CAST(22.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1823, 704, 33, CAST(2.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1824, 704, 41, CAST(9.65 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1825, 704, 75, CAST(7.75 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1826, 705, 6, CAST(25.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1827, 705, 28, CAST(45.60 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1828, 706, 20, CAST(81.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1829, 706, 31, CAST(12.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1830, 707, 16, CAST(17.45 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1831, 707, 31, CAST(12.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1832, 707, 45, CAST(9.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1833, 707, 60, CAST(34.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1834, 708, 75, CAST(7.75 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1835, 709, 21, CAST(10.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1836, 709, 47, CAST(9.50 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1837, 709, 51, CAST(53.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1838, 710, 30, CAST(25.89 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1839, 710, 35, CAST(18.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1840, 710, 64, CAST(33.25 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1841, 711, 5, CAST(21.35 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1842, 711, 7, CAST(30.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1843, 711, 72, CAST(34.80 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1844, 712, 75, CAST(7.75 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1845, 713, 24, CAST(4.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1846, 713, 41, CAST(9.65 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1847, 714, 52, CAST(7.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1848, 714, 76, CAST(18.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1849, 715, 7, CAST(30.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1850, 715, 13, CAST(6.00 AS Decimal(12, 2)), 77)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1851, 715, 53, CAST(32.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1852, 715, 69, CAST(36.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1853, 715, 76, CAST(18.00 AS Decimal(12, 2)), 44)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1854, 716, 60, CAST(34.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1855, 717, 18, CAST(62.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1856, 717, 38, CAST(263.50 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1857, 717, 69, CAST(36.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1858, 718, 51, CAST(53.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1859, 719, 37, CAST(26.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1860, 719, 56, CAST(38.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1861, 719, 62, CAST(49.30 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1862, 720, 19, CAST(9.20 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1863, 720, 49, CAST(20.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1864, 721, 12, CAST(38.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1865, 721, 24, CAST(4.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1866, 721, 64, CAST(33.25 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1867, 722, 46, CAST(12.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1868, 723, 52, CAST(7.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1869, 724, 29, CAST(123.79 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1870, 725, 17, CAST(39.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1871, 725, 33, CAST(2.50 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1872, 726, 26, CAST(31.23 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1873, 726, 41, CAST(9.65 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1874, 726, 75, CAST(7.75 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1875, 727, 63, CAST(43.90 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1876, 728, 8, CAST(40.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1877, 728, 75, CAST(7.75 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1878, 729, 28, CAST(45.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1879, 730, 39, CAST(18.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1880, 730, 47, CAST(9.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1881, 730, 51, CAST(53.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1882, 730, 63, CAST(43.90 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1883, 731, 8, CAST(40.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1884, 731, 21, CAST(10.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1885, 731, 40, CAST(18.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1886, 731, 44, CAST(19.45 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1887, 732, 7, CAST(30.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1888, 732, 12, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1889, 732, 24, CAST(4.50 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1890, 732, 27, CAST(43.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1891, 732, 31, CAST(12.50 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1892, 732, 63, CAST(43.90 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1893, 733, 75, CAST(7.75 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1894, 734, 38, CAST(263.50 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1895, 735, 7, CAST(30.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1896, 735, 43, CAST(46.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1897, 736, 13, CAST(6.00 AS Decimal(12, 2)), 84)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1898, 736, 57, CAST(19.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1899, 737, 16, CAST(17.45 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1900, 737, 24, CAST(4.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1901, 737, 36, CAST(19.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1902, 738, 16, CAST(17.45 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1903, 738, 18, CAST(62.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1904, 738, 32, CAST(32.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1905, 739, 11, CAST(21.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1906, 739, 20, CAST(81.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1907, 739, 76, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1908, 739, 77, CAST(13.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1909, 740, 7, CAST(30.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1910, 740, 43, CAST(46.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1911, 740, 72, CAST(34.80 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1912, 741, 7, CAST(30.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1913, 741, 62, CAST(49.30 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1914, 742, 6, CAST(25.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1915, 742, 11, CAST(21.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1916, 742, 41, CAST(9.65 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1917, 743, 21, CAST(10.00 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1918, 743, 34, CAST(14.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1919, 743, 55, CAST(24.00 AS Decimal(12, 2)), 65)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1920, 743, 61, CAST(28.50 AS Decimal(12, 2)), 66)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1921, 744, 2, CAST(19.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1922, 744, 70, CAST(15.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1923, 744, 76, CAST(18.00 AS Decimal(12, 2)), 90)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1924, 745, 72, CAST(34.80 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1925, 746, 29, CAST(123.79 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1926, 746, 41, CAST(9.65 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1927, 747, 59, CAST(55.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1928, 748, 51, CAST(53.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1929, 748, 60, CAST(34.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1930, 749, 42, CAST(14.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1931, 750, 32, CAST(32.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1932, 750, 46, CAST(12.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1933, 750, 52, CAST(7.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1934, 751, 24, CAST(4.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1935, 751, 61, CAST(28.50 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1936, 751, 74, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1937, 751, 75, CAST(7.75 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1938, 752, 41, CAST(9.65 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1939, 752, 51, CAST(53.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1940, 752, 77, CAST(13.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1941, 753, 4, CAST(22.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1942, 753, 24, CAST(4.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1943, 753, 77, CAST(13.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1944, 754, 7, CAST(30.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1945, 754, 22, CAST(21.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1946, 754, 46, CAST(12.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1947, 754, 55, CAST(24.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1948, 755, 13, CAST(6.00 AS Decimal(12, 2)), 56)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1949, 755, 35, CAST(18.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1950, 755, 42, CAST(14.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1951, 755, 55, CAST(24.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1952, 756, 1, CAST(18.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1953, 756, 40, CAST(18.40 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1954, 756, 52, CAST(7.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1955, 757, 26, CAST(31.23 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1956, 757, 76, CAST(18.00 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1957, 758, 1, CAST(18.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1958, 758, 59, CAST(55.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1959, 759, 1, CAST(18.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1960, 759, 29, CAST(123.79 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1961, 760, 8, CAST(40.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1962, 760, 29, CAST(123.79 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1963, 760, 42, CAST(14.00 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1964, 761, 28, CAST(45.60 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1965, 761, 34, CAST(14.00 AS Decimal(12, 2)), 90)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1966, 761, 71, CAST(21.50 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1967, 762, 24, CAST(4.50 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1968, 762, 36, CAST(19.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1969, 762, 60, CAST(34.00 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1970, 763, 7, CAST(30.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1971, 763, 24, CAST(4.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1972, 764, 58, CAST(13.25 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1973, 764, 71, CAST(21.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1974, 765, 19, CAST(9.20 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1975, 765, 60, CAST(34.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1976, 765, 71, CAST(21.50 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1977, 766, 23, CAST(9.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1978, 766, 42, CAST(14.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1979, 766, 45, CAST(9.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1980, 766, 68, CAST(12.50 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1981, 767, 41, CAST(9.65 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1982, 768, 30, CAST(25.89 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1983, 768, 77, CAST(13.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1984, 769, 31, CAST(12.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1985, 769, 36, CAST(19.00 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1986, 770, 3, CAST(10.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1987, 770, 59, CAST(55.00 AS Decimal(12, 2)), 110)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1988, 770, 70, CAST(15.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1989, 771, 12, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1990, 771, 18, CAST(62.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1991, 771, 56, CAST(38.00 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1992, 772, 46, CAST(12.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1993, 772, 49, CAST(20.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1994, 773, 10, CAST(31.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1995, 774, 2, CAST(19.00 AS Decimal(12, 2)), 11)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1996, 774, 20, CAST(81.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1997, 774, 26, CAST(31.23 AS Decimal(12, 2)), 63)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1998, 774, 51, CAST(53.00 AS Decimal(12, 2)), 44)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1999, 774, 72, CAST(34.80 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2000, 775, 19, CAST(9.20 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2001, 775, 69, CAST(36.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2002, 776, 7, CAST(30.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2003, 776, 43, CAST(46.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2004, 777, 26, CAST(31.23 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2005, 777, 33, CAST(2.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2006, 777, 65, CAST(21.05 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2007, 777, 71, CAST(21.50 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2008, 778, 1, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2009, 778, 13, CAST(6.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2010, 779, 18, CAST(62.50 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2011, 779, 51, CAST(53.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2012, 780, 24, CAST(4.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2013, 780, 62, CAST(49.30 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2014, 781, 55, CAST(24.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2015, 781, 59, CAST(55.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2016, 782, 56, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2017, 782, 63, CAST(43.90 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2018, 783, 2, CAST(19.00 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2019, 783, 5, CAST(21.35 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2020, 783, 29, CAST(123.79 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2021, 783, 59, CAST(55.00 AS Decimal(12, 2)), 100)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2022, 784, 1, CAST(18.00 AS Decimal(12, 2)), 45)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2023, 784, 13, CAST(6.00 AS Decimal(12, 2)), 80)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2024, 784, 24, CAST(4.50 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2025, 784, 64, CAST(33.25 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2026, 784, 71, CAST(21.50 AS Decimal(12, 2)), 16)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2027, 785, 36, CAST(19.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2028, 785, 38, CAST(263.50 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2029, 785, 59, CAST(55.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2030, 786, 53, CAST(32.80 AS Decimal(12, 2)), 70)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2031, 786, 69, CAST(36.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2032, 787, 21, CAST(10.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2033, 787, 44, CAST(19.45 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2034, 787, 61, CAST(28.50 AS Decimal(12, 2)), 6)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2035, 788, 1, CAST(18.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2036, 788, 35, CAST(18.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2037, 788, 42, CAST(14.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2038, 788, 54, CAST(7.45 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2039, 789, 13, CAST(6.00 AS Decimal(12, 2)), 7)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2040, 789, 59, CAST(55.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2041, 790, 70, CAST(15.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2042, 791, 40, CAST(18.40 AS Decimal(12, 2)), 5)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2043, 791, 52, CAST(7.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2044, 791, 71, CAST(21.50 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2045, 792, 28, CAST(45.60 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2046, 792, 35, CAST(18.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2047, 792, 49, CAST(20.00 AS Decimal(12, 2)), 60)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2048, 792, 57, CAST(19.50 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2049, 793, 21, CAST(10.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2050, 794, 2, CAST(19.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2051, 794, 63, CAST(43.90 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2052, 795, 44, CAST(19.45 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2053, 795, 61, CAST(28.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2054, 796, 11, CAST(21.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2055, 797, 62, CAST(49.30 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2056, 798, 33, CAST(2.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2057, 798, 51, CAST(53.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2058, 799, 12, CAST(38.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2059, 799, 32, CAST(32.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2060, 799, 35, CAST(18.00 AS Decimal(12, 2)), 18)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2061, 800, 1, CAST(18.00 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2062, 800, 5, CAST(21.35 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2063, 801, 68, CAST(12.50 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2064, 802, 2, CAST(19.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2065, 802, 12, CAST(38.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2066, 803, 76, CAST(18.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2067, 804, 24, CAST(4.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2068, 805, 43, CAST(46.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2069, 805, 61, CAST(28.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2070, 806, 18, CAST(62.50 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2071, 806, 32, CAST(32.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2072, 806, 64, CAST(33.25 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2073, 807, 33, CAST(2.50 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2074, 807, 67, CAST(14.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2075, 808, 24, CAST(4.50 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2076, 808, 25, CAST(14.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2077, 808, 51, CAST(53.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2078, 808, 57, CAST(19.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2079, 809, 7, CAST(30.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2080, 809, 55, CAST(24.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2081, 809, 60, CAST(34.00 AS Decimal(12, 2)), 50)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2082, 810, 70, CAST(15.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2083, 811, 21, CAST(10.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2084, 811, 60, CAST(34.00 AS Decimal(12, 2)), 21)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2085, 811, 61, CAST(28.50 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2086, 812, 13, CAST(6.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2087, 812, 17, CAST(39.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2088, 812, 60, CAST(34.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2089, 813, 60, CAST(34.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2090, 813, 77, CAST(13.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2091, 814, 60, CAST(34.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2092, 815, 53, CAST(32.80 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2093, 815, 70, CAST(15.00 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2094, 816, 34, CAST(14.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2095, 816, 40, CAST(18.40 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2096, 816, 41, CAST(9.65 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2097, 817, 17, CAST(39.00 AS Decimal(12, 2)), 77)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2098, 817, 41, CAST(9.65 AS Decimal(12, 2)), 12)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2099, 817, 53, CAST(32.80 AS Decimal(12, 2)), 25)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2100, 817, 55, CAST(24.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2101, 817, 68, CAST(12.50 AS Decimal(12, 2)), 55)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2102, 818, 30, CAST(25.89 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2103, 818, 54, CAST(7.45 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2104, 819, 16, CAST(17.45 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2105, 819, 19, CAST(9.20 AS Decimal(12, 2)), 42)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2106, 819, 34, CAST(14.00 AS Decimal(12, 2)), 35)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2107, 820, 41, CAST(9.65 AS Decimal(12, 2)), 9)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2108, 821, 28, CAST(45.60 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2109, 821, 43, CAST(46.00 AS Decimal(12, 2)), 36)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2110, 821, 77, CAST(13.00 AS Decimal(12, 2)), 28)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2111, 822, 39, CAST(18.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2112, 823, 1, CAST(18.00 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2113, 823, 2, CAST(19.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2114, 823, 16, CAST(17.45 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2115, 823, 31, CAST(12.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2116, 824, 7, CAST(30.00 AS Decimal(12, 2)), 15)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2117, 824, 13, CAST(6.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2118, 825, 2, CAST(19.00 AS Decimal(12, 2)), 8)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2119, 825, 41, CAST(9.65 AS Decimal(12, 2)), 40)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2120, 825, 50, CAST(16.25 AS Decimal(12, 2)), 22)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2121, 825, 64, CAST(33.25 AS Decimal(12, 2)), 130)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2122, 826, 11, CAST(21.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2123, 826, 24, CAST(4.50 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2124, 827, 16, CAST(17.45 AS Decimal(12, 2)), 14)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2125, 828, 2, CAST(19.00 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2126, 828, 46, CAST(12.00 AS Decimal(12, 2)), 30)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2127, 828, 76, CAST(18.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2128, 829, 6, CAST(25.00 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2129, 829, 14, CAST(23.25 AS Decimal(12, 2)), 20)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2130, 829, 19, CAST(9.20 AS Decimal(12, 2)), 10)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2131, 830, 2, CAST(19.00 AS Decimal(12, 2)), 24)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2132, 830, 3, CAST(10.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2133, 830, 4, CAST(22.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2134, 830, 6, CAST(25.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2135, 830, 7, CAST(30.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2136, 830, 8, CAST(40.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2137, 830, 10, CAST(31.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2138, 830, 12, CAST(38.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2139, 830, 13, CAST(6.00 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2140, 830, 14, CAST(23.25 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2141, 830, 16, CAST(17.45 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2142, 830, 20, CAST(81.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2143, 830, 23, CAST(9.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2144, 830, 32, CAST(32.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2145, 830, 39, CAST(18.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2146, 830, 41, CAST(9.65 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2147, 830, 46, CAST(12.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2148, 830, 52, CAST(7.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2149, 830, 55, CAST(24.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2150, 830, 60, CAST(34.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2151, 830, 64, CAST(33.25 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2152, 830, 66, CAST(17.00 AS Decimal(12, 2)), 1)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2153, 830, 73, CAST(15.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2154, 830, 75, CAST(7.75 AS Decimal(12, 2)), 4)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2155, 830, 77, CAST(13.00 AS Decimal(12, 2)), 2)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2156, 834, 2, CAST(45.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2157, 835, 2, CAST(45.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2158, 836, 2, CAST(45.00 AS Decimal(12, 2)), 3)
GO
INSERT [dbo].[OrderItem] ([Id], [OrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2159, 837, 2, CAST(45.00 AS Decimal(12, 2)), 3)
GO
SET IDENTITY_INSERT [dbo].[OrderItem] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (1, N'Chai', 1, CAST(18.00 AS Decimal(12, 2)), N'10 boxes x 20 bags', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (2, N'Chang', 1, CAST(19.00 AS Decimal(12, 2)), N'24 - 12 oz bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (3, N'Aniseed Syrup', 1, CAST(10.00 AS Decimal(12, 2)), N'12 - 550 ml bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, CAST(22.00 AS Decimal(12, 2)), N'48 - 6 oz jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2, CAST(21.35 AS Decimal(12, 2)), N'36 boxes', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (6, N'Grandma''s Boysenberry Spread', 3, CAST(25.00 AS Decimal(12, 2)), N'12 - 8 oz jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 3, CAST(30.00 AS Decimal(12, 2)), N'12 - 1 lb pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (8, N'Northwoods Cranberry Sauce', 3, CAST(40.00 AS Decimal(12, 2)), N'12 - 12 oz jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (9, N'Mishi Kobe Niku', 4, CAST(97.00 AS Decimal(12, 2)), N'18 - 500 g pkgs.', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (10, N'Ikura', 4, CAST(31.00 AS Decimal(12, 2)), N'12 - 200 ml jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (11, N'Queso Cabrales', 5, CAST(21.00 AS Decimal(12, 2)), N'1 kg pkg.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (12, N'Queso Manchego La Pastora', 5, CAST(38.00 AS Decimal(12, 2)), N'10 - 500 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (13, N'Konbu', 6, CAST(6.00 AS Decimal(12, 2)), N'2 kg box', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (14, N'Tofu', 6, CAST(23.25 AS Decimal(12, 2)), N'40 - 100 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (15, N'Genen Shouyu', 6, CAST(15.50 AS Decimal(12, 2)), N'24 - 250 ml bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (16, N'Pavlova', 7, CAST(17.45 AS Decimal(12, 2)), N'32 - 500 g boxes', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (17, N'Alice Mutton', 7, CAST(39.00 AS Decimal(12, 2)), N'20 - 1 kg tins', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (18, N'Carnarvon Tigers', 7, CAST(62.50 AS Decimal(12, 2)), N'16 kg pkg.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (19, N'Teatime Chocolate Biscuits', 8, CAST(9.20 AS Decimal(12, 2)), N'10 boxes x 12 pieces', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (20, N'Sir Rodney''s Marmalade', 8, CAST(81.00 AS Decimal(12, 2)), N'30 gift boxes', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (21, N'Sir Rodney''s Scones', 8, CAST(10.00 AS Decimal(12, 2)), N'24 pkgs. x 4 pieces', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (22, N'Gustaf''s Knäckebröd', 9, CAST(21.00 AS Decimal(12, 2)), N'24 - 500 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (23, N'Tunnbröd', 9, CAST(9.00 AS Decimal(12, 2)), N'12 - 250 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (24, N'Guaraná Fantástica', 10, CAST(4.50 AS Decimal(12, 2)), N'12 - 355 ml cans', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 11, CAST(14.00 AS Decimal(12, 2)), N'20 - 450 g glasses', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (26, N'Gumbär Gummibärchen', 11, CAST(31.23 AS Decimal(12, 2)), N'100 - 250 g bags', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (27, N'Schoggi Schokolade', 11, CAST(43.90 AS Decimal(12, 2)), N'100 - 100 g pieces', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (28, N'Rössle Sauerkraut', 12, CAST(45.60 AS Decimal(12, 2)), N'25 - 825 g cans', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (29, N'Thüringer Rostbratwurst', 12, CAST(123.79 AS Decimal(12, 2)), N'50 bags x 30 sausgs.', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (30, N'Nord-Ost Matjeshering', 13, CAST(25.89 AS Decimal(12, 2)), N'10 - 200 g glasses', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (31, N'Gorgonzola Telino', 14, CAST(12.50 AS Decimal(12, 2)), N'12 - 100 g pkgs', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (32, N'Mascarpone Fabioli', 14, CAST(32.00 AS Decimal(12, 2)), N'24 - 200 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (33, N'Geitost', 15, CAST(2.50 AS Decimal(12, 2)), N'500 g', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (34, N'Sasquatch Ale', 16, CAST(14.00 AS Decimal(12, 2)), N'24 - 12 oz bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (35, N'Steeleye Stout', 16, CAST(18.00 AS Decimal(12, 2)), N'24 - 12 oz bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (36, N'Inlagd Sill', 17, CAST(19.00 AS Decimal(12, 2)), N'24 - 250 g  jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (37, N'Gravad lax', 17, CAST(26.00 AS Decimal(12, 2)), N'12 - 500 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (38, N'Côte de Blaye', 18, CAST(263.50 AS Decimal(12, 2)), N'12 - 75 cl bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (39, N'Chartreuse verte', 18, CAST(18.00 AS Decimal(12, 2)), N'750 cc per bottle', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (40, N'Boston Crab Meat', 19, CAST(18.40 AS Decimal(12, 2)), N'24 - 4 oz tins', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (41, N'Jack''s New England Clam Chowder', 19, CAST(9.65 AS Decimal(12, 2)), N'12 - 12 oz cans', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (42, N'Singaporean Hokkien Fried Mee', 20, CAST(14.00 AS Decimal(12, 2)), N'32 - 1 kg pkgs.', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (43, N'Ipoh Coffee', 20, CAST(46.00 AS Decimal(12, 2)), N'16 - 500 g tins', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (44, N'Gula Malacca', 20, CAST(19.45 AS Decimal(12, 2)), N'20 - 2 kg bags', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (45, N'Rogede sild', 21, CAST(9.50 AS Decimal(12, 2)), N'1k pkg.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (46, N'Spegesild', 21, CAST(12.00 AS Decimal(12, 2)), N'4 - 450 g glasses', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (47, N'Zaanse koeken', 22, CAST(9.50 AS Decimal(12, 2)), N'10 - 4 oz boxes', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (48, N'Chocolade', 22, CAST(12.75 AS Decimal(12, 2)), N'10 pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (49, N'Maxilaku', 23, CAST(20.00 AS Decimal(12, 2)), N'24 - 50 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (50, N'Valkoinen suklaa', 23, CAST(16.25 AS Decimal(12, 2)), N'12 - 100 g bars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (51, N'Manjimup Dried Apples', 24, CAST(53.00 AS Decimal(12, 2)), N'50 - 300 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (52, N'Filo Mix', 24, CAST(7.00 AS Decimal(12, 2)), N'16 - 2 kg boxes', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (53, N'Perth Pasties', 24, CAST(32.80 AS Decimal(12, 2)), N'48 pieces', 1)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (54, N'Tourtière', 25, CAST(7.45 AS Decimal(12, 2)), N'16 pies', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (55, N'Pâté chinois', 25, CAST(24.00 AS Decimal(12, 2)), N'24 boxes x 2 pies', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (56, N'Gnocchi di nonna Alice', 26, CAST(38.00 AS Decimal(12, 2)), N'24 - 250 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (57, N'Ravioli Angelo', 26, CAST(19.50 AS Decimal(12, 2)), N'24 - 250 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (58, N'Escargots de Bourgogne', 27, CAST(13.25 AS Decimal(12, 2)), N'24 pieces', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (59, N'Raclette Courdavault', 28, CAST(55.00 AS Decimal(12, 2)), N'5 kg pkg.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (60, N'Camembert Pierrot', 28, CAST(34.00 AS Decimal(12, 2)), N'15 - 300 g rounds', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (61, N'Sirop d''érable', 29, CAST(28.50 AS Decimal(12, 2)), N'24 - 500 ml bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (62, N'Tarte au sucre', 29, CAST(49.30 AS Decimal(12, 2)), N'48 pies', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (63, N'Vegie-spread', 7, CAST(43.90 AS Decimal(12, 2)), N'15 - 625 g jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (64, N'Wimmers gute Semmelknödel', 12, CAST(33.25 AS Decimal(12, 2)), N'20 bags x 4 pieces', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, CAST(21.05 AS Decimal(12, 2)), N'32 - 8 oz bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, CAST(17.00 AS Decimal(12, 2)), N'24 - 8 oz jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (67, N'Laughing Lumberjack Lager', 16, CAST(14.00 AS Decimal(12, 2)), N'24 - 12 oz bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (68, N'Scottish Longbreads', 8, CAST(12.50 AS Decimal(12, 2)), N'10 boxes x 8 pieces', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (69, N'Gudbrandsdalsost', 15, CAST(36.00 AS Decimal(12, 2)), N'10 kg pkg.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (70, N'Outback Lager', 7, CAST(15.00 AS Decimal(12, 2)), N'24 - 355 ml bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (71, N'Flotemysost', 15, CAST(21.50 AS Decimal(12, 2)), N'10 - 500 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (72, N'Mozzarella di Giovanni', 14, CAST(34.80 AS Decimal(12, 2)), N'24 - 200 g pkgs.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (73, N'Röd Kaviar', 17, CAST(15.00 AS Decimal(12, 2)), N'24 - 150 g jars', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (74, N'Longlife Tofu', 4, CAST(10.00 AS Decimal(12, 2)), N'5 kg pkg.', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (75, N'Rhönbräu Klosterbier', 12, CAST(7.75 AS Decimal(12, 2)), N'24 - 0.5 l bottles', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (76, N'Lakkalikööri', 23, CAST(18.00 AS Decimal(12, 2)), N'500 ml', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (77, N'Original Frankfurter grüne Soße', 12, CAST(13.00 AS Decimal(12, 2)), N'12 boxes', 0)
GO
INSERT [dbo].[Product] ([Id], [ProductName], [SupplierId], [UnitPrice], [Package], [IsDiscontinued]) VALUES (78, N'Stroopwafels', 22, CAST(9.75 AS Decimal(12, 2)), N'24 pieces', 0)
GO
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (1, N'Exotic Liquids', N'Charlotte Cooper', NULL, N'London', N'UK', N'(171) 555-2222', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (2, N'New Orleans Cajun Delights', N'Shelley Burke', NULL, N'New Orleans', N'USA', N'(100) 555-4822', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (3, N'Grandma Kelly''s Homestead', N'Regina Murphy', NULL, N'Ann Arbor', N'USA', N'(313) 555-5735', N'(313) 555-3349')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (4, N'Tokyo Traders', N'Yoshi Nagase', NULL, N'Tokyo', N'Japan', N'(03) 3555-5011', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (5, N'Cooperativa de Quesos ''Las Cabras''', N'Antonio del Valle Saavedra', NULL, N'Oviedo', N'Spain', N'(98) 598 76 54', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (6, N'Mayumi''s', N'Mayumi Ohno', NULL, N'Osaka', N'Japan', N'(06) 431-7877', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (7, N'Pavlova, Ltd.', N'Ian Devling', NULL, N'Melbourne', N'Australia', N'(03) 444-2343', N'(03) 444-6588')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (8, N'Specialty Biscuits, Ltd.', N'Peter Wilson', NULL, N'Manchester', N'UK', N'(161) 555-4448', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (9, N'PB Knäckebröd AB', N'Lars Peterson', NULL, N'Göteborg', N'Sweden', N'031-987 65 43', N'031-987 65 91')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (10, N'Refrescos Americanas LTDA', N'Carlos Diaz', NULL, N'Sao Paulo', N'Brazil', N'(11) 555 4640', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (11, N'Heli Süßwaren GmbH & Co. KG', N'Petra Winkler', NULL, N'Berlin', N'Germany', N'(010) 9984510', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (12, N'Plutzer Lebensmittelgroßmärkte AG', N'Martin Bein', NULL, N'Frankfurt', N'Germany', N'(069) 992755', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (13, N'Nord-Ost-Fisch Handelsgesellschaft mbH', N'Sven Petersen', NULL, N'Cuxhaven', N'Germany', N'(04721) 8713', N'(04721) 8714')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (14, N'Formaggi Fortini s.r.l.', N'Elio Rossi', NULL, N'Ravenna', N'Italy', N'(0544) 60323', N'(0544) 60603')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (15, N'Norske Meierier', N'Beate Vileid', NULL, N'Sandvika', N'Norway', N'(0)2-953010', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (16, N'Bigfoot Breweries', N'Cheryl Saylor', NULL, N'Bend', N'USA', N'(503) 555-9931', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (17, N'Svensk Sjöföda AB', N'Michael Björn', NULL, N'Stockholm', N'Sweden', N'08-123 45 67', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (18, N'Aux joyeux ecclésiastiques', N'Guylène Nodier', NULL, N'Paris', N'France', N'(1) 03.83.00.68', N'(1) 03.83.00.62')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (19, N'New England Seafood Cannery', N'Robb Merchant', NULL, N'Boston', N'USA', N'(617) 555-3267', N'(617) 555-3389')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (20, N'Leka Trading', N'Chandra Leka', NULL, N'Singapore', N'Singapore', N'555-8787', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (21, N'Lyngbysild', N'Niels Petersen', NULL, N'Lyngby', N'Denmark', N'43844108', N'43844115')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (22, N'Zaanse Snoepfabriek', N'Dirk Luchte', NULL, N'Zaandam', N'Netherlands', N'(12345) 1212', N'(12345) 1210')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (23, N'Karkki Oy', N'Anne Heikkonen', NULL, N'Lappeenranta', N'Finland', N'(953) 10956', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (24, N'G''day, Mate', N'Wendy Mackenzie', NULL, N'Sydney', N'Australia', N'(02) 555-5914', N'(02) 555-4873')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (25, N'Ma Maison', N'Jean-Guy Lauzon', NULL, N'Montréal', N'Canada', N'(514) 555-9022', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (26, N'Pasta Buttini s.r.l.', N'Giovanni Giudici', NULL, N'Salerno', N'Italy', N'(089) 6547665', N'(089) 6547667')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (27, N'Escargots Nouveaux', N'Marie Delamare', NULL, N'Montceau', N'France', N'85.57.00.07', NULL)
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (28, N'Gai pâturage', N'Eliane Noz', NULL, N'Annecy', N'France', N'38.76.98.06', N'38.76.98.58')
GO
INSERT [dbo].[Supplier] ([Id], [CompanyName], [ContactName], [ContactTitle], [City], [Country], [Phone], [Fax]) VALUES (29, N'Forêts d''érables', N'Chantal Goulet', NULL, N'Ste-Hyacinthe', N'Canada', N'(514) 555-2955', N'(514) 555-2921')
GO
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [Default_Date]  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [Default_Visit]  DEFAULT ((0)) FOR [Vists]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [TotalAmount]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[OrderItem] ADD  DEFAULT ((1)) FOR [Quantity]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [UnitPrice]
GO
ALTER TABLE [dbo].[Product] ADD  DEFAULT ((0)) FOR [IsDiscontinued]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_REFERENCE_CUSTOMER] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_ORDER_REFERENCE_CUSTOMER]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_REFERENCE_ORDER] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_ORDERITE_REFERENCE_ORDER]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_ORDERITE_REFERENCE_PRODUCT] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_ORDERITE_REFERENCE_PRODUCT]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_REFERENCE_SUPPLIER] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_PRODUCT_REFERENCE_SUPPLIER]
GO
