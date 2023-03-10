USE [Rp3Test]
GO
/****** Object:  Table [dbo].[tbCategory]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCategory](
	[CategoryId] [int] NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_tbCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTransaction]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTransaction](
	[TransactionId] [int] NOT NULL,
	[TransactionTypeId] [smallint] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
	[ShortDescription] [varchar](100) NOT NULL,
	[Amount] [numeric](18, 6) NOT NULL,
	[Notes] [varchar](max) NULL,
	[DateUpdate] [datetime] NULL,
	[IdUsuario] [int] NULL,
 CONSTRAINT [PK_tbTransaction] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTransactionType]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTransactionType](
	[TransactionTypeId] [smallint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbTransactionType] PRIMARY KEY CLUSTERED 
(
	[TransactionTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUsuario]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUsuario](
	[idUsuario] [int] NOT NULL,
	[nombreApellido] [varchar](100) NULL,
	[usuario] [varchar](100) NULL,
	[clave] [varchar](10) NULL,
 CONSTRAINT [PK_tbUsuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (1, N'Alimentación', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (2, N'Transporte', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (3, N'Educación', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (4, N'Salud', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (5, N'Vestuario', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (6, N'Remuneración', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (7, N'Vivienda', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (8, N'Servicios Básicos', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (9, N'Luz', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (10, N'Agua', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (11, N'Teléfono', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (12, N'Renta', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (13, N'Hipoteca', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (14, N'Alícuota', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (15, N'GASYTOS VARIOS', 1)
INSERT [dbo].[tbCategory] ([CategoryId], [Name], [Active]) VALUES (16, N'NUEVA CAT', 1)
GO
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (1, 2, 9, CAST(N'2019-06-29T03:32:31.347' AS DateTime), N'Luz del 03/07/2019', CAST(71.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (2, 2, 1, CAST(N'2019-06-16T00:50:18.347' AS DateTime), N'Alimentación del 03/07/2019', CAST(98.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (3, 2, 8, CAST(N'2019-06-12T21:36:53.347' AS DateTime), N'Servicios Básicos del 03/07/2019', CAST(6.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (4, 2, 4, CAST(N'2019-06-23T14:25:56.347' AS DateTime), N'Salud del 03/07/2019', CAST(59.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (5, 2, 9, CAST(N'2019-06-18T01:48:13.347' AS DateTime), N'Luz del 03/07/2019', CAST(73.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (6, 2, 1, CAST(N'2019-06-26T22:13:35.347' AS DateTime), N'Alimentación del 03/07/2019', CAST(35.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (7, 2, 5, CAST(N'2019-06-27T20:40:00.347' AS DateTime), N'Vestuario del 03/07/2019', CAST(45.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (8, 2, 5, CAST(N'2019-06-20T06:19:12.347' AS DateTime), N'Vestuario del 03/07/2019', CAST(39.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (9, 2, 8, CAST(N'2019-06-07T09:39:31.347' AS DateTime), N'Servicios Básicos del 03/07/2019', CAST(29.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (10, 2, 9, CAST(N'2019-06-09T13:13:13.347' AS DateTime), N'Luz del 03/07/2019', CAST(10.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (11, 2, 7, CAST(N'2019-06-15T17:04:59.347' AS DateTime), N'Vivienda del 03/07/2019', CAST(86.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (12, 2, 2, CAST(N'2023-01-17T00:00:00.000' AS DateTime), N'Vivienda del 03/07/2019 ', CAST(0.000000 AS Numeric(18, 6)), N'MIGUEL RODRIGUEZ', NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (13, 1, 6, CAST(N'2019-06-08T14:01:49.347' AS DateTime), N'Remuneración del 03/07/2019', CAST(235.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (14, 2, 1, CAST(N'2019-06-19T10:57:30.347' AS DateTime), N'Alimentación del 03/07/2019', CAST(18.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (15, 1, 6, CAST(N'2019-06-11T21:19:32.347' AS DateTime), N'Remuneración del 03/07/2019', CAST(470.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (16, 2, 4, CAST(N'2019-06-08T02:41:00.347' AS DateTime), N'Salud del 03/07/2019', CAST(98.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (17, 1, 6, CAST(N'2019-06-06T11:12:55.347' AS DateTime), N'Remuneración del 03/07/2019', CAST(365.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (18, 2, 2, CAST(N'2019-06-25T06:12:05.347' AS DateTime), N'Transporte del 03/07/2019', CAST(8.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (19, 2, 2, CAST(N'2019-06-16T15:08:15.347' AS DateTime), N'Transporte del 03/07/2019', CAST(37.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (20, 2, 8, CAST(N'2019-06-14T08:44:01.347' AS DateTime), N'Servicios Básicos del 03/07/2019', CAST(41.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (21, 2, 1, CAST(N'2019-06-28T19:40:10.347' AS DateTime), N'Alimentación del 03/07/2019', CAST(53.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (22, 2, 1, CAST(N'2019-06-07T22:36:57.347' AS DateTime), N'Alimentación del 03/07/2019', CAST(74.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (23, 2, 2, CAST(N'2019-06-10T12:32:54.347' AS DateTime), N'Transporte del 03/07/2019', CAST(3.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (24, 2, 3, CAST(N'2019-06-12T09:01:53.347' AS DateTime), N'Educación del 03/07/2019', CAST(72.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (25, 2, 5, CAST(N'2019-06-08T16:25:39.347' AS DateTime), N'Vestuario del 03/07/2019', CAST(83.000000 AS Numeric(18, 6)), NULL, NULL, 2)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (26, 1, 6, CAST(N'2019-06-25T15:16:22.347' AS DateTime), N'Remuneración del 03/07/2019', CAST(115.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (27, 2, 8, CAST(N'2019-06-17T09:14:30.347' AS DateTime), N'Servicios Básicos del 03/07/2019', CAST(83.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (28, 2, 3, CAST(N'2023-01-10T00:00:00.000' AS DateTime), N'Educación del 03/07/2019', CAST(12.000000 AS Numeric(18, 6)), N'angel miguel', NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (29, 2, 3, CAST(N'2019-06-29T15:04:55.347' AS DateTime), N'Educación del 03/07/2019', CAST(72.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (30, 2, 4, CAST(N'2019-06-17T16:57:57.347' AS DateTime), N'Salud del 03/07/2019', CAST(30.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (31, 2, 2, CAST(N'2023-01-10T00:00:00.000' AS DateTime), N'MIGUEL PRUEBA', CAST(150.000000 AS Numeric(18, 6)), N'asdasdasdas', NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (32, 1, 13, CAST(N'2023-01-09T00:00:00.000' AS DateTime), N'MIGUEL PRUEBA', CAST(150.000000 AS Numeric(18, 6)), N'ASasAS', NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (33, 1, 2, CAST(N'2023-01-12T00:00:00.000' AS DateTime), N'sadasd', CAST(1212.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (34, 2, 4, CAST(N'2023-01-12T00:00:00.000' AS DateTime), N'21312', CAST(150.000000 AS Numeric(18, 6)), N'123123', NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (35, 1, 5, CAST(N'2023-01-12T00:00:00.000' AS DateTime), N'asdasdas', CAST(120.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (36, 2, 13, CAST(N'2023-01-09T00:00:00.000' AS DateTime), N'asdas', CAST(120.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (37, 2, 5, CAST(N'2023-01-16T00:00:00.000' AS DateTime), N'asdasd', CAST(120.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (38, 2, 5, CAST(N'2023-01-11T00:00:00.000' AS DateTime), N'asdas', CAST(120.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (39, 1, 1, CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'ASDAS', CAST(0.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (40, 1, 1, CAST(N'2023-01-10T00:00:00.000' AS DateTime), N'asdsad', CAST(1.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (41, 2, 3, CAST(N'2022-12-28T00:00:00.000' AS DateTime), N'saadas', CAST(10.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (42, 1, 1, CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'MIGUEL PRUEBA', CAST(10.000000 AS Numeric(18, 6)), N'asdas', NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (43, 2, 1, CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'sadsada', CAST(-15000.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (44, 1, 2, CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'MIGUEL PRUEBA', CAST(18000.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (45, 2, 5, CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'MIGUEL PRUEBA', CAST(150.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (46, 1, 7, CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'MIGUEL PRUEBA', CAST(1890.000000 AS Numeric(18, 6)), NULL, NULL, 1)
INSERT [dbo].[tbTransaction] ([TransactionId], [TransactionTypeId], [CategoryId], [RegisterDate], [ShortDescription], [Amount], [Notes], [DateUpdate], [IdUsuario]) VALUES (47, 2, 16, CAST(N'2023-01-15T00:00:00.000' AS DateTime), N'MIGUEL PRUEBA', CAST(800.000000 AS Numeric(18, 6)), NULL, NULL, 1)
GO
INSERT [dbo].[tbTransactionType] ([TransactionTypeId], [Name]) VALUES (1, N'INGRESOS')
INSERT [dbo].[tbTransactionType] ([TransactionTypeId], [Name]) VALUES (2, N'GASTOS')
GO
INSERT [dbo].[tbUsuario] ([idUsuario], [nombreApellido], [usuario], [clave]) VALUES (1, N'Miguel Rodriguez', N'admin', N'123')
INSERT [dbo].[tbUsuario] ([idUsuario], [nombreApellido], [usuario], [clave]) VALUES (2, N'Ena Vera', N'evera', N'123')
GO
ALTER TABLE [dbo].[tbTransaction]  WITH CHECK ADD  CONSTRAINT [FK_tbTransaction_tbCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tbCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[tbTransaction] CHECK CONSTRAINT [FK_tbTransaction_tbCategory]
GO
ALTER TABLE [dbo].[tbTransaction]  WITH CHECK ADD  CONSTRAINT [FK_tbTransaction_tbTransactionType] FOREIGN KEY([TransactionTypeId])
REFERENCES [dbo].[tbTransactionType] ([TransactionTypeId])
GO
ALTER TABLE [dbo].[tbTransaction] CHECK CONSTRAINT [FK_tbTransaction_tbTransactionType]
GO
ALTER TABLE [dbo].[tbTransaction]  WITH CHECK ADD  CONSTRAINT [FK_tbTransaction_tbUsuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[tbUsuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tbTransaction] CHECK CONSTRAINT [FK_tbTransaction_tbUsuario]
GO
/****** Object:  StoredProcedure [dbo].[FillRandomData]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FillRandomData]
AS

TRUNCATE TABLE dbo.tbTransaction;

DECLARE @FechaInicial DATETIME;
DECLARE @FechaFinal DATETIME;

DECLARE @FechaProceso DATETIME;
DECLARE @CategoryId INT;
DECLARE @TypeId INT;
DECLARE @Description VARCHAR(500);

SET @FechaInicial = DATEADD(DAY, -30, GETDATE());
SET @FechaFinal = GETDATE() - 1;

SET @FechaProceso = @FechaInicial;

DECLARE @Amount MONEY;

DECLARE @Random INT;
DECLARE @Upper INT;
DECLARE @Lower INT;

DECLARE @Id INT;
SET @Id = 1;

DECLARE @Contador INT;
DECLARE @Limite INT;

SET @Contador = 0;
SET @Limite = 30;

WHILE (@Contador < @Limite)
BEGIN

    ---- This will create a random number between 1 and 999
    SET @Lower = 1; ---- The lowest random number
    SET @Upper = 10; ---- The highest random number
    SELECT @Random = ROUND(((@Upper - @Lower - 1) * RAND() + @Lower), 0);

    SET @CategoryId = @Random;

    SELECT @Description = Name + ' del ' + CONVERT(VARCHAR, GETDATE(), 103)
    FROM dbo.tbCategory
    WHERE CategoryId = @CategoryId;

    SET @Lower = 100; ---- The lowest random number
    SET @Upper = 200; ---- The highest random number
    SELECT @Random = ROUND(((@Upper - @Lower - 1) * RAND() + @Lower) / 100, 0);

    SET @TypeId = @Random;


    SET @Lower = 2; ---- The lowest random number
    SET @Upper = 100; ---- The highest random number
    SELECT @Random = ROUND(((@Upper - @Lower - 1) * RAND() + @Lower), 0);

    SET @Amount = @Random;

    DECLARE @Seconds INT = DATEDIFF(SECOND, @FechaInicial, @FechaFinal);
    SET @Random = ROUND(((@Seconds - 1) * RAND()), 0);

    SELECT @FechaProceso = DATEADD(SECOND, @Random, @FechaInicial);


	IF @CategoryId = 6
	BEGIN
		SET @TypeId = 1
		SET @Amount = @Amount * 5
	END
	ELSE
		SET @TypeId = 2


    INSERT INTO dbo.tbTransaction
    (
        TransactionId,
        TransactionTypeId,
        CategoryId,
        RegisterDate,
        ShortDescription,
        Amount,
        Notes
    )
    VALUES
    (   @Id,           -- TransactionId - int
        @TypeId,       -- TransactionTypeId - smallint
        @CategoryId,   -- CategoryId - int
        @FechaProceso, -- RegisterDate - datetime
        @Description,  -- ShortDescription - varchar(100)
        @Amount,       -- Amount - numeric(18, 6)
        NULL);

    SET @Id = @Id + 1;
    SET @Contador = @Contador + 1;

END;
GO
/****** Object:  StoredProcedure [dbo].[spBalanceTotal]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spBalanceTotal]
@infoXml XML
AS
BEGIN
DECLARE @Usuario int

SELECT  @Usuario=nref.value('@Usuario', 'int')
                   
    FROM @infoXml.nodes('/spBalanceTotal') AS R(nref)

	DECLARE @RETORNO TABLE(
	ID INT IDENTITY(1,1),
	Categoria VARCHAR(100),
	Saldo NUMERIC(18,2))

	INSERT INTO @RETORNO(Categoria,Saldo)
	select *
	from (select b.Name 'Categoria',SUM(a.Amount) 'Saldo'
	from tbTransaction a
	inner join tbCategory b
	on a.CategoryId=b.CategoryId
	where a.IdUsuario=@Usuario
	group by b.Name )as a
	order by a.Saldo desc,a.Categoria


	INSERT INTO @RETORNO(Categoria,Saldo)
	SELECT 'TOTAL',SUM(SALDO)
	FROM @RETORNO


	SELECT *
	FROM @RETORNO
	ORDER BY ID

	RETURN 0;

END
GO
/****** Object:  StoredProcedure [dbo].[spTransactionInsert]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTransactionInsert]
@infoXml XML
AS
BEGIN

	/*
	Complete the code for Insert to dbo.tbTransaction Table

	Code XML SELECT EXAMPLE:

	SELECT 
	TransactionId = T.info.value('@ TransactionId','int'),
	TransactionTypeId = T.info.value('@ TransactionTypeId','smallint'),
	CategoryId = T.info.value('@ CategoryId','int'),
	RegisterDate = T.info.value('@ RegisterDate','datetime'),
	ShortDescription = T.info.value('@ ShortDescription','varchar(100)'),
	Notes = T.info.value('@ Notes','varchar(max)')
    FROM    @infoXml.nodes('Transaction')
                        AS T ( info ); 
	*/

	RETURN 0;

END
GO
/****** Object:  StoredProcedure [dbo].[spTransactionUpdate]    Script Date: 15/1/2023 18:25:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spTransactionUpdate]
@infoXml XML
AS
BEGIN
	
	/*
	Complete the code for Update to dbo.tbTransaction Table

	Code XML SELECT EXAMPLE:

	SELECT 
	TransactionId = T.info.value('@ TransactionId','int'),
	TransactionTypeId = T.info.value('@ TransactionTypeId','smallint'),
	CategoryId = T.info.value('@ CategoryId','int'),
	RegisterDate = T.info.value('@ RegisterDate','datetime'),
	ShortDescription = T.info.value('@ ShortDescription','varchar(100)'),
	Notes = T.info.value('@ Notes','varchar(max)')
    FROM    @infoXml.nodes('Transaction')
                        AS T ( info ); 
	*/
	RETURN 0;
END
GO
