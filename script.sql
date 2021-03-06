
/****** Object:  Database [Dashboard_db] ******/
CREATE DATABASE [Dashboard_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dashboard_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Dashboard_db.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Dashboard_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Dashboard_db_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dashboard_db] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dashboard_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dashboard_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dashboard_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dashboard_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dashboard_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dashboard_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dashboard_db] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Dashboard_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dashboard_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dashboard_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dashboard_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dashboard_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dashboard_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dashboard_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dashboard_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dashboard_db] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Dashboard_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dashboard_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dashboard_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dashboard_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dashboard_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dashboard_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dashboard_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dashboard_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dashboard_db] SET  MULTI_USER 
GO
ALTER DATABASE [Dashboard_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dashboard_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dashboard_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dashboard_db] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Dashboard_db] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Dashboard_db]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 4/3/2022 08:49:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categoria](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Compra] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Compra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [varchar](50) NULL,
	[Importe] [decimal](18, 0) NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CompraProducto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompraProducto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[idCompra] [int] NULL,
	[idProducto] [int] NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [PK_CompraProducto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Imagen]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Imagen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Url] [varchar](200) NULL,
	[idProducto] [int] NULL,
 CONSTRAINT [PK_Imagen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marca]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marca](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Img] [varchar](200) NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Producto] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Precio] [decimal](18, 0) NULL,
	[PrecioBase] [decimal](18, 0) NULL,
	[stock] [int] NULL,
	[idCategoria] [int] NULL,
	[idMarca] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]  ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (1, N'Celulares')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (2, N'Notebooks')
INSERT [dbo].[Categoria] ([Id], [Nombre]) VALUES (3, N'Electrodomesticos')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Compra] ON 

INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (1, N'01-01-2020', CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (2, N'01-01-2020', CAST(50000 AS Decimal(18, 0)), 3)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (3, N'01-02-2020', CAST(25000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (4, N'01-03-2020', CAST(6000 AS Decimal(18, 0)), 2)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (5, N'01-04-2020', CAST(105000 AS Decimal(18, 0)), 3)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (6, N'01-04-2020', CAST(105000 AS Decimal(18, 0)), 4)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (7, N'01-04-2020', CAST(105000 AS Decimal(18, 0)), 5)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (8, N'01-05-2020', CAST(20000 AS Decimal(18, 0)), 2)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (9, N'01-08-2020', CAST(50000 AS Decimal(18, 0)), 8)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (10, N'01-09-2020', CAST(25000 AS Decimal(18, 0)), 10)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (11, N'01-10-2020', CAST(6000 AS Decimal(18, 0)), 9)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (12, N'01-12-2020', CAST(105000 AS Decimal(18, 0)), 10)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (13, N'01-12-2020', CAST(20000 AS Decimal(18, 0)), 10)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (14, N'01-01-2021', CAST(90000 AS Decimal(18, 0)), 12)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (15, N'01-01-2021', CAST(30000 AS Decimal(18, 0)), 13)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (16, N'01-01-2021', CAST(6000 AS Decimal(18, 0)), 2)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (17, N'01-02-2021', CAST(105000 AS Decimal(18, 0)), 14)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (18, N'01-02-2021', CAST(210000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (19, N'01-03-2021', CAST(105000 AS Decimal(18, 0)), 10)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (20, N'01-03-2021', CAST(105000 AS Decimal(18, 0)), 8)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (21, N'01-04-2021', CAST(105000 AS Decimal(18, 0)), 11)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (22, N'01-04-2021', CAST(105000 AS Decimal(18, 0)), 6)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (23, N'01-04-2021', CAST(105000 AS Decimal(18, 0)), 7)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (24, N'01-05-2021', CAST(105000 AS Decimal(18, 0)), 7)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (25, N'01-05-2021', CAST(20000 AS Decimal(18, 0)), 2)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (26, N'01-08-2021', CAST(50000 AS Decimal(18, 0)), 8)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (27, N'01-09-2021', CAST(25000 AS Decimal(18, 0)), 10)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (28, N'01-10-2021', CAST(6000 AS Decimal(18, 0)), 9)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (29, N'01-12-2021', CAST(105000 AS Decimal(18, 0)), 10)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (30, N'01-12-2021', CAST(20000 AS Decimal(18, 0)), 10)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (31, N'01-01-2022', CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (32, N'01-02-2022', CAST(25000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (33, N'01-03-2022', CAST(6000 AS Decimal(18, 0)), 2)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (34, N'01-03-2022', CAST(105000 AS Decimal(18, 0)), 3)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (35, N'01-03-2022', CAST(105000 AS Decimal(18, 0)), 4)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (36, N'01-04-2022', CAST(105000 AS Decimal(18, 0)), 5)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (37, N'01-04-2022', CAST(105000 AS Decimal(18, 0)), 6)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (38, N'01-04-2022', CAST(105000 AS Decimal(18, 0)), 15)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (39, N'01-05-2022', CAST(105000 AS Decimal(18, 0)), 16)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (40, N'01-05-2022', CAST(20000 AS Decimal(18, 0)), 2)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (41, N'01-08-2022', CAST(50000 AS Decimal(18, 0)), 8)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (42, N'01-09-2022', CAST(25000 AS Decimal(18, 0)), 17)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (43, N'01-09-2022', CAST(25000 AS Decimal(18, 0)), 14)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (44, N'01-09-2022', CAST(25000 AS Decimal(18, 0)), 15)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (45, N'01-09-2022', CAST(25000 AS Decimal(18, 0)), 6)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (46, N'01-10-2022', CAST(6000 AS Decimal(18, 0)), 3)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (47, N'01-10-2022', CAST(6000 AS Decimal(18, 0)), 5)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (48, N'01-12-2022', CAST(105000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Compra] ([Id], [fecha], [Importe], [idUsuario]) VALUES (49, N'01-12-2022', CAST(20000 AS Decimal(18, 0)), 2)
SET IDENTITY_INSERT [dbo].[Compra] OFF
SET IDENTITY_INSERT [dbo].[CompraProducto] ON 

INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (1, 1, 1, 2)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (2, 2, 1, 2)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (3, 3, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (4, 4, 12, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (5, 5, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (6, 6, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (7, 7, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (8, 8, 14, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (9, 9, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (10, 10, 1, 2)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (11, 11, 12, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (12, 12, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (13, 13, 14, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (14, 14, 2, 3)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (15, 15, 2, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (16, 16, 12, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (17, 17, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (18, 18, 6, 2)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (19, 19, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (20, 20, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (21, 21, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (22, 22, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (23, 23, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (24, 24, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (25, 25, 14, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (26, 26, 1, 2)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (27, 27, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (28, 28, 12, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (29, 29, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (30, 30, 14, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (31, 31, 1, 2)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (32, 32, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (33, 33, 12, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (34, 34, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (35, 35, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (36, 36, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (37, 37, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (38, 38, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (39, 39, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (40, 40, 14, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (41, 41, 1, 2)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (42, 42, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (43, 43, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (44, 44, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (45, 45, 1, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (46, 46, 12, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (47, 47, 12, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (48, 48, 6, 1)
INSERT [dbo].[CompraProducto] ([Id], [idCompra], [idProducto], [Cantidad]) VALUES (49, 49, 14, 1)
SET IDENTITY_INSERT [dbo].[CompraProducto] OFF
SET IDENTITY_INSERT [dbo].[Imagen] ON 

INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (1, N'https://via.placeholder.com/600/92c952', 1)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (2, N'https://via.placeholder.com/600/771796', 1)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (3, N'https://via.placeholder.com/600/24f355', 2)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (4, N'https://via.placeholder.com/600/d32776', 2)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (5, N'https://via.placeholder.com/600/92c952', 3)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (6, N'https://via.placeholder.com/600/56a8c2', 3)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (7, N'https://via.placeholder.com/600/b0f7cc', 4)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (8, N'https://via.placeholder.com/600/54176f', 4)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (9, N'https://via.placeholder.com/600/92c952', 5)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (10, N'https://via.placeholder.com/600/771796', 5)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (11, N'https://via.placeholder.com/600/24f355', 6)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (12, N'https://via.placeholder.com/600/d32776', 6)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (13, N'https://via.placeholder.com/600/92c952', 7)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (14, N'https://via.placeholder.com/600/56a8c2', 7)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (15, N'https://via.placeholder.com/600/b0f7cc', 8)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (16, N'https://via.placeholder.com/600/54176f', 8)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (17, N'https://via.placeholder.com/600/92c952', 9)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (18, N'https://via.placeholder.com/600/771796', 9)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (19, N'https://via.placeholder.com/600/24f355', 10)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (20, N'https://via.placeholder.com/600/d32776', 10)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (21, N'https://via.placeholder.com/600/92c952', 11)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (22, N'https://via.placeholder.com/600/56a8c2', 11)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (23, N'https://via.placeholder.com/600/b0f7cc', 12)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (24, N'https://via.placeholder.com/600/54176f', 12)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (25, N'https://via.placeholder.com/600/92c952', 13)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (26, N'https://via.placeholder.com/600/771796', 13)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (27, N'https://via.placeholder.com/600/24f355', 14)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (28, N'https://via.placeholder.com/600/d32776', 14)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (29, N'https://via.placeholder.com/600/92c952', 15)
INSERT [dbo].[Imagen] ([Id], [Url], [idProducto]) VALUES (30, N'https://via.placeholder.com/600/56a8c2', 15)
SET IDENTITY_INSERT [dbo].[Imagen] OFF
SET IDENTITY_INSERT [dbo].[Marca] ON 

INSERT [dbo].[Marca] ([Id], [Nombre], [Img]) VALUES (1, N'LG', N'https://1000marcas.net/wp-content/uploads/2020/01/LG-Logo-2008.jpg')
INSERT [dbo].[Marca] ([Id], [Nombre], [Img]) VALUES (2, N'Samsung', N'https://images.samsung.com/is/image/samsung/assets/global/about-us/brand/logo/360_197_1.png?$FB_TYPE_B_PNG$')
INSERT [dbo].[Marca] ([Id], [Nombre], [Img]) VALUES (3, N'Motorola', N'https://w7.pngwing.com/pngs/533/826/png-transparent-motorola-logo-logo-motorola-moto-g-logo-motorola-blue-text-logo.png')
INSERT [dbo].[Marca] ([Id], [Nombre], [Img]) VALUES (4, N'Lenovo', N'https://www.beahero.gg/wp-content/uploads/2020/01/lenovo.jpg')
INSERT [dbo].[Marca] ([Id], [Nombre], [Img]) VALUES (5, N'Dell', N'https://e7.pngegg.com/pngimages/457/766/png-clipart-dell-15-4-wxga-d820-d830-0cd514-laptop-logo-brand-bell-icon-hd-blue-angle-thumbnail.png')
INSERT [dbo].[Marca] ([Id], [Nombre], [Img]) VALUES (6, N'Liliana', N'https://latamnoticias.com/wp-content/uploads/2019/09/LOGO2.jpg')
INSERT [dbo].[Marca] ([Id], [Nombre], [Img]) VALUES (7, N'Atma', N'https://servicedecocinas.com.ar/wp-content/uploads/2015/11/LOGO-atma.jpg')
SET IDENTITY_INSERT [dbo].[Marca] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (1, N'Celular Lg k40', CAST(25000 AS Decimal(18, 0)), CAST(23000 AS Decimal(18, 0)), 20, 1, 1)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (2, N'Celular Samsung A10', CAST(30000 AS Decimal(18, 0)), CAST(27000 AS Decimal(18, 0)), 30, 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (3, N'Celular Samsung A12', CAST(35000 AS Decimal(18, 0)), CAST(32000 AS Decimal(18, 0)), 30, 1, 2)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (4, N'Celular Motorola E7', CAST(22000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), 30, 1, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (5, N'Celular Motorola G20', CAST(35000 AS Decimal(18, 0)), CAST(32000 AS Decimal(18, 0)), 30, 1, 3)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (6, N'Notebook Lenovo 14"', CAST(105000 AS Decimal(18, 0)), CAST(90000 AS Decimal(18, 0)), 50, 2, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (7, N'Notebook Lenovo SSD', CAST(100000 AS Decimal(18, 0)), CAST(85000 AS Decimal(18, 0)), 30, 2, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (8, N'Notebook Lenovo Core', CAST(150000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), 30, 2, 4)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (9, N'Notebook Dell 14"', CAST(83000 AS Decimal(18, 0)), CAST(75000 AS Decimal(18, 0)), 20, 2, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (10, N'Notebook Dell 15"', CAST(22000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), 30, 2, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (11, N'Notebook Dell Inspiron', CAST(95000 AS Decimal(18, 0)), CAST(85000 AS Decimal(18, 0)), 40, 2, 5)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (12, N'Licuadora Liliana 600W', CAST(6000 AS Decimal(18, 0)), CAST(5000 AS Decimal(18, 0)), 20, 3, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (13, N'Ventilador Liliana 100W', CAST(15000 AS Decimal(18, 0)), CAST(10000 AS Decimal(18, 0)), 30, 3, 6)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (14, N'Microondas Atma', CAST(20000 AS Decimal(18, 0)), CAST(10000 AS Decimal(18, 0)), 25, 3, 7)
INSERT [dbo].[Producto] ([Id], [Nombre], [Precio], [PrecioBase], [stock], [idCategoria], [idMarca]) VALUES (15, N'Cafetera Atma', CAST(25000 AS Decimal(18, 0)), CAST(20000 AS Decimal(18, 0)), 40, 3, 7)
SET IDENTITY_INSERT [dbo].[Producto] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (1, N'Diana', N'diana.aguayog@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (2, N'Ivan', N'ivan01@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (3, N'Maria', N'mari02@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (4, N'Juana', N'juani03@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (5, N'Daniel', N'dani04@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (6, N'Bianca', N'bianca05@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (7, N'Joaquin', N'joaco06@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (8, N'Mayra', N'may07@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (9, N'Lucia', N'luci08@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (10, N'Benjamin', N'benja09@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (11, N'Rodrigo', N'rodri10@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (12, N'Noelia', N'noe11@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (13, N'Carlos', N'carlos12@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (14, N'Melisa', N'meli13@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (15, N'Lucas', N'lucas14@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (16, N'Kevin', N'kev15@gmail.com')
INSERT [dbo].[Usuario] ([Id], [Nombre], [Email]) VALUES (17, N'Eugenia', N'euge16@gmail.com')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Usuario]
GO
ALTER TABLE [dbo].[CompraProducto]  WITH CHECK ADD  CONSTRAINT [FK_CompraProducto_Compra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[Compra] ([Id])
GO
ALTER TABLE [dbo].[CompraProducto] CHECK CONSTRAINT [FK_CompraProducto_Compra]
GO
ALTER TABLE [dbo].[CompraProducto]  WITH CHECK ADD  CONSTRAINT [FK_CompraProducto_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[CompraProducto] CHECK CONSTRAINT [FK_CompraProducto_Producto]
GO
ALTER TABLE [dbo].[Imagen]  WITH CHECK ADD  CONSTRAINT [FK_Imagen_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[Imagen] CHECK CONSTRAINT [FK_Imagen_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Categoria] FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Categoria]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Marca] FOREIGN KEY([idMarca])
REFERENCES [dbo].[Marca] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Marca]
GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCantidadDeVentasPorAnio]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ObtenerCantidadDeVentasPorAnio]
AS 
BEGIN

SELECT DISTINCT year(fecha) as anio, sum(importe) as ventas
  FROM Compra
  group by year(fecha)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ObtenerCantidadDeVentasPorMes] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ObtenerCantidadDeVentasPorMes]
AS 
BEGIN

SELECT month(fecha) as Mes, sum(importe) as ventas
  FROM Compra
  WHERE year(fecha) = year(getdate())
  group by month(fecha), importe
END

GO
USE [Dashboard_db]
GO
ALTER DATABASE [Dashboard_db] SET  READ_WRITE 
GO
