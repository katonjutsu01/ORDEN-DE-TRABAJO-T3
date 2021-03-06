USE [BDdiarsproyecto2]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Actividad](
	[idActividad] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[tiempoestimado] [int] NOT NULL,
 CONSTRAINT [PK__Activida__327F9BEDE54F6DC4] PRIMARY KEY CLUSTERED 
(
	[idActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacen](
	[idalmacen] [int] IDENTITY(1,1) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK__Almacen__DED171D28E9AA777] PRIMARY KEY CLUSTERED 
(
	[idalmacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle](
	[iddetalle] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NOT NULL,
	[idpedido] [int] NOT NULL,
	[idproducto] [int] NOT NULL,
	[idalmacen] [int] NULL,
	[idstock] [int] NULL,
 CONSTRAINT [PK__detalle__6FE8F71F04EE1FC8] PRIMARY KEY CLUSTERED 
(
	[iddetalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[material]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[material](
	[idmaterial] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[idtipomaterial] [int] NOT NULL,
 CONSTRAINT [PK__material__313E9B273CD00183] PRIMARY KEY CLUSTERED 
(
	[idmaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Obra]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Obra](
	[idobra] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[idpresupuesto] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[activo] [bit] NULL,
 CONSTRAINT [PK__Obra__5BC5C62A12659A1D] PRIMARY KEY CLUSTERED 
(
	[idobra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[orden]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orden](
	[idorden] [int] IDENTITY(1,1) NOT NULL,
	[idActividad] [int] NOT NULL,
	[idTrabajador] [int] NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[idobra] [int] NOT NULL,
	[fechaini] [date] NULL,
	[fechafin] [date] NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK__orden__44DCCDB6967948BE] PRIMARY KEY CLUSTERED 
(
	[idorden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[idpedido] [int] IDENTITY(1,1) NOT NULL,
	[fechapedido] [datetime] NOT NULL,
	[idorden] [int] NOT NULL,
 CONSTRAINT [PK__pedido__A9A8E0FA605F3C66] PRIMARY KEY CLUSTERED 
(
	[idpedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[presupuesto]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[presupuesto](
	[idpresupuesto] [int] IDENTITY(1,1) NOT NULL,
	[monto] [decimal](10, 3) NOT NULL,
	[sector] [varchar](50) NOT NULL,
	[tiempo_estimado] [int] NOT NULL,
 CONSTRAINT [PK__presupue__ABD6637A1CD7F698] PRIMARY KEY CLUSTERED 
(
	[idpresupuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockAlmacen]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockAlmacen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idmaterial] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[idalmacen] [int] NOT NULL,
 CONSTRAINT [PK_StockAlmacen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipomaterial]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipomaterial](
	[idtipomaterial] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[activo] [bit] NOT NULL,
 CONSTRAINT [PK_tipomaterial] PRIMARY KEY CLUSTERED 
(
	[idtipomaterial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Trabajador](
	[idTrabajador] [int] IDENTITY(1,1) NOT NULL,
	[nombres] [varchar](20) NOT NULL,
	[apellidos] [varchar](20) NOT NULL,
	[cargo] [varchar](50) NOT NULL,
	[area] [varchar](50) NOT NULL,
	[DNI] [varchar](8) NULL,
	[Sexo] [char](1) NULL,
	[estado] [bit] NULL,
 CONSTRAINT [PK__Trabajad__E617EE3BF6067918] PRIMARY KEY CLUSTERED 
(
	[idTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 30/11/2017 16:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[idTrabajador] [int] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FechaDeCaducidad] [date] NOT NULL,
	[Activo] [bit] NOT NULL,
	[imagen] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Actividad] ON 

INSERT [dbo].[Actividad] ([idActividad], [descripcion], [tiempoestimado]) VALUES (12, N'Ventana circular', 15)
INSERT [dbo].[Actividad] ([idActividad], [descripcion], [tiempoestimado]) VALUES (13, N'paredes color azul', 20)
INSERT [dbo].[Actividad] ([idActividad], [descripcion], [tiempoestimado]) VALUES (14, N'instalacion de florecentes', 15)
INSERT [dbo].[Actividad] ([idActividad], [descripcion], [tiempoestimado]) VALUES (15, N'Decoraciones interiores', 50)
INSERT [dbo].[Actividad] ([idActividad], [descripcion], [tiempoestimado]) VALUES (17, N'rererer|1|3rer1', 6)
INSERT [dbo].[Actividad] ([idActividad], [descripcion], [tiempoestimado]) VALUES (18, N'me ', 5)
INSERT [dbo].[Actividad] ([idActividad], [descripcion], [tiempoestimado]) VALUES (20, N'ME', 2)
SET IDENTITY_INSERT [dbo].[Actividad] OFF
SET IDENTITY_INSERT [dbo].[Almacen] ON 

INSERT [dbo].[Almacen] ([idalmacen], [direccion], [Nombre]) VALUES (3, N'UPN', N'UPN1')
INSERT [dbo].[Almacen] ([idalmacen], [direccion], [Nombre]) VALUES (4, N'Urb Primavera', N'Almacen 1')
SET IDENTITY_INSERT [dbo].[Almacen] OFF
SET IDENTITY_INSERT [dbo].[detalle] ON 

INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (43, 3, 26, 26, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (44, 8, 27, 27, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (45, 15, 28, 26, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1043, 30, 1026, 26, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1044, 10, 1027, 27, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1045, 10, 1027, 27, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1046, 10, 1027, 28, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1047, 5, 1028, 26, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1048, 15, 1029, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1049, 10, 1030, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1050, 10, 1031, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1051, 50, 1031, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1052, 10, 1032, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1053, 25, 1033, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1054, 1, 1033, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1055, 1, 1033, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1056, 2, 1034, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1057, 2, 1034, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1058, 2, 1034, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1059, 2, 1035, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1060, 20, 1035, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1061, 5, 1036, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1062, 5, 1036, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1063, 5, 1036, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1064, 5, 1036, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1065, 10, 1037, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1066, 15, 1038, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1067, 0, 1039, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1070, 3, 1042, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1071, 20, 1043, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1072, 5, 1043, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1073, 11, 1043, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1074, 2, 1044, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1075, 7, 1045, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1076, 16, 1046, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1077, 12, 1047, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1078, 70, 1048, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1079, 30, 1049, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1080, 50, 1050, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1081, 1, 1051, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1082, 50, 1052, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1090, 50, 1060, 26, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1091, 50, 1061, 26, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1092, 50, 1062, 26, NULL, NULL)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1093, 50, 1063, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1094, 50, 1064, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1095, 100, 1065, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1096, 100, 1065, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1097, 100, 1065, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1098, 20, 1066, 28, 4, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1099, 20, 1067, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1100, 50, 1068, 27, 3, 5)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1101, 20, 1069, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1102, 20, 1070, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1103, 20, 1071, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1104, 60, 1072, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1105, 60, 1073, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1106, 60, 1074, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1107, 60, 1075, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1108, 60, 1076, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1109, 60, 1077, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1110, 60, 1078, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1111, 60, 1079, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1112, 60, 1080, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1113, 60, 1081, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1114, 60, 1082, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1115, 60, 1083, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1116, 20, 1084, 1, 1, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1117, 20, 1085, 1, 1, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1118, 20, 1086, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1119, 5, 1087, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1120, 50, 1088, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1121, 40, 1089, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1122, 20, 1090, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1123, 20, 1091, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1124, 10, 1092, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1125, 10, 1093, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1126, 10, 1094, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1127, 15, 1095, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1128, 100, 1096, 28, 3, 4)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1129, 10, 1097, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1130, 15, 1098, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1131, 10, 1099, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1132, 15, 1100, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1133, 10, 1101, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1134, 15, 1102, 27, 4, 3)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1135, 10, 1103, 26, 3, 1)
INSERT [dbo].[detalle] ([iddetalle], [cantidad], [idpedido], [idproducto], [idalmacen], [idstock]) VALUES (1136, 15, 1104, 27, 4, 3)
SET IDENTITY_INSERT [dbo].[detalle] OFF
SET IDENTITY_INSERT [dbo].[material] ON 

INSERT [dbo].[material] ([idmaterial], [nombre], [idtipomaterial]) VALUES (26, N'Cemento Forte', 1)
INSERT [dbo].[material] ([idmaterial], [nombre], [idtipomaterial]) VALUES (27, N'Pintura Lavable', 2)
INSERT [dbo].[material] ([idmaterial], [nombre], [idtipomaterial]) VALUES (28, N'Chapa Forte', 5)
INSERT [dbo].[material] ([idmaterial], [nombre], [idtipomaterial]) VALUES (29, N'Alambre delgado', 3)
SET IDENTITY_INSERT [dbo].[material] OFF
SET IDENTITY_INSERT [dbo].[Obra] ON 

INSERT [dbo].[Obra] ([idobra], [descripcion], [idpresupuesto], [nombre], [activo]) VALUES (13, N'Edificio 5 pisos', 1, N'Residencial Ronaldo', 1)
INSERT [dbo].[Obra] ([idobra], [descripcion], [idpresupuesto], [nombre], [activo]) VALUES (14, N'Condominios dos pistas de 10 metros', 1, N'Condominio Carol', 1)
INSERT [dbo].[Obra] ([idobra], [descripcion], [idpresupuesto], [nombre], [activo]) VALUES (15, N'Puente 30 metros', 2, N'Puente Valentin', 1)
SET IDENTITY_INSERT [dbo].[Obra] OFF
SET IDENTITY_INSERT [dbo].[orden] ON 

INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1043, 15, 4, N'Cancelar', 13, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo01')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1044, 13, 2, N'Iniciado', 14, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo02')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1046, 13, 4, N'Iniciado', 12, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo03')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1047, 12, 4, N'Iniciado', 13, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo04')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1048, 13, 2, N'Iniciado', 14, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo05')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1060, 12, 2, N'Iniciado', 13, CAST(N'2017-06-05' AS Date), CAST(N'2017-06-05' AS Date), N'juan percy')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1061, 13, 1, N'Iniciado', 14, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1062, 12, 1, N'Iniciado', 13, CAST(N'2017-06-05' AS Date), CAST(N'2017-06-05' AS Date), N'prueba1')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1063, 12, 2, N'Iniciado', 13, CAST(N'2017-07-06' AS Date), CAST(N'2017-07-06' AS Date), N'ererwerwerwer')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1064, 14, 17, N'Iniciado', 17, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1065, 14, 17, N'Iniciado', 17, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1066, 14, 1, N'Iniciado', 17, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1067, 14, 2, N'Iniciado', 17, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1068, 14, 17, N'Iniciado', 17, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1069, 14, 2, N'Iniciado', 13, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1070, 14, 1, N'Iniciado', 13, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1071, 14, 3, N'Iniciado', 13, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'LIFO')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1072, 12, 4, N'Terminado', 13, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo01')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1073, 12, 4, N'Iniciado', 13, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo01')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1074, 13, 2, N'Iniciado', 14, CAST(N'2016-05-20' AS Date), CAST(N'2016-05-20' AS Date), N'Orden de Trabajo02')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1075, 15, 3, N'Iniciado', 14, CAST(N'2017-10-31' AS Date), CAST(N'2017-10-31' AS Date), N'Orden01')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1076, 13, 3, N'Iniciado', 13, CAST(N'2017-11-16' AS Date), CAST(N'2017-11-17' AS Date), N'nose')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1077, 12, 2, N'Iniciado', 14, CAST(N'2017-10-31' AS Date), CAST(N'2017-11-04' AS Date), N'fds')
INSERT [dbo].[orden] ([idorden], [idActividad], [idTrabajador], [estado], [idobra], [fechaini], [fechafin], [nombre]) VALUES (1078, 13, 4, N'Iniciado', 13, CAST(N'2017-10-31' AS Date), CAST(N'2017-11-10' AS Date), N'Pintar pared color crema')
SET IDENTITY_INSERT [dbo].[orden] OFF
SET IDENTITY_INSERT [dbo].[pedido] ON 

INSERT [dbo].[pedido] ([idpedido], [fechapedido], [idorden]) VALUES (1026, CAST(N'2017-05-06 16:18:06.853' AS DateTime), 18)
SET IDENTITY_INSERT [dbo].[pedido] OFF
SET IDENTITY_INSERT [dbo].[presupuesto] ON 

INSERT [dbo].[presupuesto] ([idpresupuesto], [monto], [sector], [tiempo_estimado]) VALUES (1, CAST(5000.000 AS Decimal(10, 3)), N'Construccion', 28)
INSERT [dbo].[presupuesto] ([idpresupuesto], [monto], [sector], [tiempo_estimado]) VALUES (2, CAST(3000.000 AS Decimal(10, 3)), N'Pistas', 34)
INSERT [dbo].[presupuesto] ([idpresupuesto], [monto], [sector], [tiempo_estimado]) VALUES (3, CAST(3500.000 AS Decimal(10, 3)), N'Paredes', 38)
SET IDENTITY_INSERT [dbo].[presupuesto] OFF
SET IDENTITY_INSERT [dbo].[StockAlmacen] ON 

INSERT [dbo].[StockAlmacen] ([id], [idmaterial], [cantidad], [idalmacen]) VALUES (1, 26, 60, 3)
INSERT [dbo].[StockAlmacen] ([id], [idmaterial], [cantidad], [idalmacen]) VALUES (3, 27, 40, 4)
INSERT [dbo].[StockAlmacen] ([id], [idmaterial], [cantidad], [idalmacen]) VALUES (4, 28, 50, 3)
INSERT [dbo].[StockAlmacen] ([id], [idmaterial], [cantidad], [idalmacen]) VALUES (5, 27, 100, 3)
SET IDENTITY_INSERT [dbo].[StockAlmacen] OFF
SET IDENTITY_INSERT [dbo].[tipomaterial] ON 

INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (1, N'Cemento k', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (2, N'Pintura', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (3, N'Alambre', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (4, N'Fierro', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (5, N'Chapas', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (6, N'Focos', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (8, N'Arena', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (10, N'Ladrillos', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (16, N'Adobe', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (18, N'Adobes Nivel 2', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (29, N'Cemento Pacasmayo', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (30, N'meme', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (31, N'jeje', 1)
INSERT [dbo].[tipomaterial] ([idtipomaterial], [descripcion], [activo]) VALUES (32, N'mara', 1)
SET IDENTITY_INSERT [dbo].[tipomaterial] OFF
SET IDENTITY_INSERT [dbo].[Trabajador] ON 

INSERT [dbo].[Trabajador] ([idTrabajador], [nombres], [apellidos], [cargo], [area], [DNI], [Sexo], [estado]) VALUES (1, N'Emelyn', N'Pacherres Loyaga', N'Ingeniera', N'Contruccion', N'18232323', N'F', 0)
INSERT [dbo].[Trabajador] ([idTrabajador], [nombres], [apellidos], [cargo], [area], [DNI], [Sexo], [estado]) VALUES (2, N'Gonzalo', N'Martinez Tirado', N'Ingeniero', N'Administracion', N'12342343', N'M', 0)
INSERT [dbo].[Trabajador] ([idTrabajador], [nombres], [apellidos], [cargo], [area], [DNI], [Sexo], [estado]) VALUES (3, N'Jean Pierre', N'Castillo Villanueva', N'Ingeniero', N'Contruccion', N'43234323', N'M', 0)
INSERT [dbo].[Trabajador] ([idTrabajador], [nombres], [apellidos], [cargo], [area], [DNI], [Sexo], [estado]) VALUES (4, N'Juan Percy', N'Lopez Mendoza', N'Almacenista', N'Almacen', N'53243242', N'M', 0)
SET IDENTITY_INSERT [dbo].[Trabajador] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [idTrabajador], [UserName], [Password], [FechaDeCaducidad], [Activo], [imagen]) VALUES (1, 1, N'pache123', N'me', CAST(N'2017-01-23' AS Date), 0, N'pache.jpg')
INSERT [dbo].[Usuario] ([idUsuario], [idTrabajador], [UserName], [Password], [FechaDeCaducidad], [Activo], [imagen]) VALUES (2, 3, N'Jpierre58', N'12345', CAST(N'2017-07-03' AS Date), 1, N'imagen3.jpg')
INSERT [dbo].[Usuario] ([idUsuario], [idTrabajador], [UserName], [Password], [FechaDeCaducidad], [Activo], [imagen]) VALUES (3, 2, N'gonzalitoxz', N'123', CAST(N'2017-05-07' AS Date), 1, N'imagen2.jpg')
INSERT [dbo].[Usuario] ([idUsuario], [idTrabajador], [UserName], [Password], [FechaDeCaducidad], [Activo], [imagen]) VALUES (4, 4, N'Juanpercyxd', N'32', CAST(N'2017-03-05' AS Date), 1, N'jper.jpg')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
ALTER TABLE [dbo].[material]  WITH CHECK ADD  CONSTRAINT [FK_material_tipomaterial] FOREIGN KEY([idtipomaterial])
REFERENCES [dbo].[tipomaterial] ([idtipomaterial])
GO
ALTER TABLE [dbo].[material] CHECK CONSTRAINT [FK_material_tipomaterial]
GO
ALTER TABLE [dbo].[Obra]  WITH CHECK ADD  CONSTRAINT [FK_Obra_presupuesto] FOREIGN KEY([idpresupuesto])
REFERENCES [dbo].[presupuesto] ([idpresupuesto])
GO
ALTER TABLE [dbo].[Obra] CHECK CONSTRAINT [FK_Obra_presupuesto]
GO
ALTER TABLE [dbo].[orden]  WITH CHECK ADD  CONSTRAINT [FK_orden_Actividad] FOREIGN KEY([idActividad])
REFERENCES [dbo].[Actividad] ([idActividad])
GO
ALTER TABLE [dbo].[orden] CHECK CONSTRAINT [FK_orden_Actividad]
GO
ALTER TABLE [dbo].[StockAlmacen]  WITH CHECK ADD  CONSTRAINT [FK_StockAlmacen_material] FOREIGN KEY([idmaterial])
REFERENCES [dbo].[material] ([idmaterial])
GO
ALTER TABLE [dbo].[StockAlmacen] CHECK CONSTRAINT [FK_StockAlmacen_material]
GO
/****** Object:  StoredProcedure [dbo].[spDevolverActividad]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDevolverActividad]
@prmintidActividad int
AS
SET NOCOUNT ON

	SELECT A.idActividad, A.descripcion, A.tiempoestimado
	from Actividad A
	where idActividad=@prmintidActividad
SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spDevolverCantidad]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[spDevolverCantidad]
@idstock int
AS
SET NOCOUNT ON

	Select cantidad from StockAlmacen
	where id = @idstock

SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[spDevolverMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDevolverMaterial]
@prmintidMaterial int
AS
SET NOCOUNT ON

	SELECT g.idmaterial,g.nombre,g.idtipomaterial,DTipoMaterial=k.descripcion
	FROM material g inner join tipomaterial k on g.idtipomaterial=k.idtipomaterial
	WHERE g.idmaterial=@prmintidMaterial

SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spDevolverObra]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDevolverObra]
@prmintidObra int
AS
SET NOCOUNT ON

	SELECT b.idobra, b.descripcion, b.idpresupuesto, b.nombre, DPresupuesto=t.monto , b.activo
	FROM Obra b inner join presupuesto t on b.idpresupuesto=t.idpresupuesto
	WHERE b.idobra=@prmintidObra

SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spDevolverOrden]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[spDevolverOrden]
@prmintidOrden int
AS
SET NOCOUNT ON

	SELECT idorden , nombre,estado, idTrabajador
	FROM Orden 
	WHERE idorden = @prmintidOrden

SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spDevolverTipoMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDevolverTipoMaterial]
@prmintidTipomaterial int
AS
SET NOCOUNT ON

	SELECT descripcion, idtipomaterial
	from tipomaterial
	where idtipomaterial=@prmintidTipomaterial
SET NOCOUNT OFF


GO
/****** Object:  StoredProcedure [dbo].[spDevolverTrabajador]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDevolverTrabajador]
@prmintidTrabajador int
AS
SET NOCOUNT ON

	SELECT T.idTrabajador, T.nombres, T.DNI,T.area,T.cargo,T.Sexo,T.estado
	from Trabajador T
	where idTrabajador=@prmintidTrabajador and estado != 0
SET NOCOUNT OFF



GO
/****** Object:  StoredProcedure [dbo].[spEditarActividad]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditarActividad] 
	@prmstrIdActividad int,
	@prmstrDescripcion varchar(50),
    @prmstrTiempoEstimado int
AS
BEGIN
	UPDATE Actividad SET descripcion=@prmstrDescripcion, tiempoestimado=@prmstrTiempoEstimado
	WHERE idActividad = @prmstrIdActividad

END







GO
/****** Object:  StoredProcedure [dbo].[spEditarMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spEditarMaterial]
@prmstridMaterial int,
@prmstrNombre varchar(50),
@prmstridTipoMaterial int
as
begin
update material set nombre=@prmstrNombre, idtipomaterial=@prmstridTipoMaterial
where idmaterial=@prmstridMaterial
end







GO
/****** Object:  StoredProcedure [dbo].[spEditarObra]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spEditarObra]
@prmstridObra int,
@prmstrNombre varchar(50),
@prmstrDescripcion varchar(50),
@prmstridPresupuesto int,
@prmactivo bit
as
begin
update Obra set nombre=@prmstrNombre, descripcion=@prmstrDescripcion, idpresupuesto=@prmstridPresupuesto, activo = @prmactivo
where idobra=@prmstridObra
end







GO
/****** Object:  StoredProcedure [dbo].[spEditarOrdenes]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spEditarOrdenes]
@prmintidObra int
as
begin
update orden set estado = 'Cancelado'
where idobra = @prmintidObra
end







GO
/****** Object:  StoredProcedure [dbo].[spEditarTipoMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spEditarTipoMaterial] 
@prmintidTipomaterial int,
@prmstrDescripcion varchar(50)
as
begin
update tipomaterial set descripcion=@prmstrDescripcion
where idtipomaterial= @prmintidTipomaterial
end


GO
/****** Object:  StoredProcedure [dbo].[spEditarTrabajador]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spEditarTrabajador]
@prmintidTrabajador int, 
@prmestado bit
as
begin
update Trabajador set estado = @prmestado
where idTrabajador =@prmintidTrabajador
end






GO
/****** Object:  StoredProcedure [dbo].[spEliminarActividad]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spEliminarActividad]
@prmintidActividad int
as
begin
delete from Actividad
where idActividad = @prmintidActividad
end





GO
/****** Object:  StoredProcedure [dbo].[spEliminarMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spEliminarMaterial]
@prmintidMaterial int
as
begin
delete from material
where material.idmaterial = @prmintidMaterial
end







GO
/****** Object:  StoredProcedure [dbo].[spEliminarObra]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spEliminarObra]
@prmintidObra int
as
begin
delete from Obra
where idobra = @prmintidObra
end





GO
/****** Object:  StoredProcedure [dbo].[spEliminarTipoMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEliminarTipoMaterial]
@prmintidTipomaterial int
as
begin
delete from tipomaterial
where idtipomaterial = @prmintidTipomaterial
end



GO
/****** Object:  StoredProcedure [dbo].[spInsertarActividad]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarActividad]
@prmstrDescripcion varchar(50),
@prmstrTiempoEstimado int
AS
BEGIN
	insert into Actividad(descripcion,tiempoestimado) values(@prmstrDescripcion, @prmstrTiempoEstimado)
	

END







GO
/****** Object:  StoredProcedure [dbo].[spInsertarMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarMaterial]
@prmstrNombre varchar(50),
@prmstridTipoMaterial int
AS
BEGIN
	
	INSERT INTO material(Nombre,  idtipomaterial)
	VALUES(@prmstrNombre, @prmstridTipoMaterial)

END







GO
/****** Object:  StoredProcedure [dbo].[spInsertarObra]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarObra]
@prmstrNombre varchar(50),
@prmstrDescripcion varchar(50),
@prmstridPresupuesto int
AS
BEGIN
	
	INSERT INTO Obra(descripcion, idpresupuesto, nombre, activo)
	VALUES(@prmstrDescripcion, @prmstridPresupuesto,@prmstrNombre, 1)

END







GO
/****** Object:  StoredProcedure [dbo].[spInsertarOrden]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spInsertarOrden]
@prmintidActividad int,
@prmintidobra int,
@prmintidTrabajador int,
@prmstrcomentario varchar(200),
@prmestado varchar(50),
@prmstrfechaini date,
@prmstrfechafin date
as
begin
insert into orden(idActividad, idobra, idTrabajador, nombre, fechaini, fechafin , estado)
values ( @prmintidActividad,@prmintidobra,@prmintidTrabajador,@prmstrcomentario, @prmstrfechaini , @prmstrfechafin ,@prmestado)
end






GO
/****** Object:  StoredProcedure [dbo].[spInsertarPedido]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[spInsertarPedido]
@prmstrXML varchar(max)
AS
	Declare @h int
	Declare @idPedido int
	Declare @iddetalle int
BEGIN TRANSACTION
	--operaciones
	EXEC sp_xml_preparedocument @h output, @prmstrXML

	--Insertar Compra
	INSERT INTO pedido(fechapedido, idorden)
	SELECT getdate(),  X.idorden
	FROM openXML(@h, 'root/pedido', 1) WITH(
	idorden int ) X

	SET @idPedido = @@IDENTITY

	--insertando detalle
	INSERT INTO detalle(cantidad, idpedido, idproducto, idalmacen, idstock)
	SELECT X.cantidad1, @idPedido, X.idproducto, X.idalmacen, X.idstock
	FROM openXML(@h, 'root/pedido/detalle', 1) WITH(
	idproducto int,
	cantidad1 int,
	idalmacen int,
	idstock int) X

	

	--Actualiza stock desde aqui
	UPDATE  StockAlmacen 
	set  cantidad = cantidad - X.cantidad1
	FROM openXML(@h, 'root/pedido/detalle', 1) WITH(
	cantidad1 int,
	idstock int) X
	WHERE X.idstock  = id 

	--UPDATE A SET A.Stock= A.Stock + X.Cantidad
	--FROM openXML(@h, 'root/compra/dcompra', 1) WITH(
	--idprod int, 
	--precio decimal(18,5), 
	--Cantidad int) X INNER JOIN Articulos A ON X.idprod = A.idArticulo


	EXEC sp_xml_removedocument @h

	IF @@ERROR<>0
	BEGIN
		ROLLBACK TRANSACTION
		return -1
	END
COMMIT TRANSACTION
return @idPedido





GO
/****** Object:  StoredProcedure [dbo].[spInsertarTipoMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertarTipoMaterial]
@prmstrDescripcion varchar(50)
AS
BEGIN
	
	INSERT INTO tipomaterial(descripcion, activo)
	VALUES(@prmstrDescripcion, 1)

END


GO
/****** Object:  StoredProcedure [dbo].[spListaActividad]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaActividad]
AS
SET NOCOUNT ON
	
	SELECT A.idActividad,A.descripcion,A.tiempoestimado 
	FROM Actividad A
SET NOCOUNT OFF

GO
/****** Object:  StoredProcedure [dbo].[spListaMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaMaterial]
AS
SET NOCOUNT ON
	
	SELECT A.idmaterial, A.nombre, A.idtipomaterial,  DTipoMaterial = T.descripcion 
	FROM material A		
		INNER JOIN tipomaterial T ON A.idtipomaterial = T.idtipomaterial 
		
SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spListaObra]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaObra]
AS
SET NOCOUNT ON
	
	SELECT b.idobra, b.descripcion, b.idpresupuesto, b.nombre, DPresupuesto=t.monto
	FROM Obra b		
		INNER JOIN presupuesto t ON b.idpresupuesto=t.idpresupuesto
		where b.activo = 1
SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spListaOrden]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaOrden]
AS
SET NOCOUNT ON
	
	SELECT r.idorden, r.idobra, r.idActividad, r.fechaini, r.fechafin, r.idTrabajador, r.estado, r.nombre
	FROM orden r
		where estado = 'Iniciado'
SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spListaOrdendetrabajo]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListaOrdendetrabajo]
AS
SET NOCOUNT ON
	
	SELECT r.idorden, r.idActividad, r.idobra, r.idTrabajador,  r.nombre, r.estado, DActividad = t.descripcion, DTrabajador=d.apellidos, DObra=b.nombre
	FROM orden r		
		INNER JOIN Actividad t  ON r.idActividad=t.idActividad inner join Trabajador d on r.idTrabajador=d.idTrabajador inner join Obra b on r.idobra=b.idobra
	
SET NOCOUNT OFF





GO
/****** Object:  StoredProcedure [dbo].[spListaPresupuesto]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spListaPresupuesto]
as
begin
select r.idpresupuesto,r.monto,r.sector, r.tiempo_estimado from presupuesto r
end







GO
/****** Object:  StoredProcedure [dbo].[spListarAlmacen]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarAlmacen]
AS
SET NOCOUNT ON
	
	SELECT * 
	FROM Almacen l
SET NOCOUNT OFF






GO
/****** Object:  StoredProcedure [dbo].[spListarStockAlmacen]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spListarStockAlmacen]
@prmintidAlmacen int
AS
SET NOCOUNT ON
	
Select a.idalmacen, a.direccion, a.Nombre as'NombreAlmacen',m.nombre as'NombreProducto', m.idmaterial, s.cantidad, s.id
from Almacen a inner join StockAlmacen s on a.idalmacen = s.idalmacen
inner join material m on m.idmaterial = s.idmaterial
where a.idalmacen = @prmintidAlmacen
order by a.idalmacen
SET NOCOUNT OFF





GO
/****** Object:  StoredProcedure [dbo].[spListarTrabajador]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spListarTrabajador]
as
set nocount on
select *
from trabajador
where estado = 1
set nocount off

GO
/****** Object:  StoredProcedure [dbo].[spListarTrabajadorMant]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spListarTrabajadorMant]
as
set nocount on
select *
from trabajador
set nocount off

GO
/****** Object:  StoredProcedure [dbo].[spListaTipoMaterial]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spListaTipoMaterial]
as
begin
select T.idtipomaterial,T.descripcion,T.activo from tipomaterial T
end







GO
/****** Object:  StoredProcedure [dbo].[spModificarOrden]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spModificarOrden]
@prmintidorden int,
@prmstrestado varchar(50)

as

begin
update orden set estado = @prmstrestado where idorden = @prmintidorden
end





GO
/****** Object:  StoredProcedure [dbo].[spObtener]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spObtener]
@prmintidobra int
AS
SET NOCOUNT ON
	
			select  t.idTrabajador
	from Trabajador t
	join orden ord
	on ord.idTrabajador = t.idTrabajador and ord.idobra = @prmintidobra
SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spPedidoOrden]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spPedidoOrden] 
@prmintidorden int
as
set nocount on
Select d.cantidad, d.idproducto,d.idpedido, DProducto = m.nombre, Dpedido=p.fechapedido
from detalle d
inner join material m
on m.idmaterial = d.idproducto
inner join  pedido p
on  d.idpedido = p.idpedido
inner join orden o
on p.idorden = o.idorden
where o.idorden = @prmintidorden
set nocount off





GO
/****** Object:  StoredProcedure [dbo].[spVerificarAcceso]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spVerificarAcceso]
@prmstrUsuario varchar(20), 
@prmstrPassword varchar(20)
AS
SET NOCOUNT ON

	SELECT T.idTrabajador, T.nombres, T.apellidos, T.area, T.cargo,T.DNI,T.Sexo, 
		U.idUsuario, U.idTrabajador, U.UserName, U.imagen,
		U.Activo, U.FechaDeCaducidad
	FROM Trabajador T
		INNER JOIN Usuario U ON T.idTrabajador = U.idTrabajador
	WHERE U.UserName = @prmstrUsuario AND 
		U.Password = @prmstrPassword

SET NOCOUNT OFF







GO
/****** Object:  StoredProcedure [dbo].[spVerificarEliminacion]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spVerificarEliminacion]
@prmintidMaterial int
as
set nocount on
  Select * 
  From  detalle
  where detalle.idproducto = @prmintidMaterial
set nocount off







GO
/****** Object:  StoredProcedure [dbo].[spVerificarEliminacionActividad]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spVerificarEliminacionActividad]
@prmintactividad int
as
set nocount on
  Select * 
  From orden
  where idActividad = @prmintactividad
set nocount off





GO
/****** Object:  StoredProcedure [dbo].[spVerificarEliminacionObra]    Script Date: 30/11/2017 16:04:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spVerificarEliminacionObra]
@prmintobra int
as
set nocount on
  Select * 
  From orden
  where idobra = @prmintobra
set nocount off





GO
