USE [Talyzenkov_GIBDD]
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 01.03.2024 9:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[id_car] [int] IDENTITY(1,1) NOT NULL,
	[Moshnost] [nvarchar](50) NOT NULL,
	[Obiom] [nvarchar](50) NOT NULL,
	[Marka] [nvarchar](50) NOT NULL,
	[Model] [nvarchar](50) NOT NULL,
	[God_Vipuska] [nvarchar](50) NOT NULL,
	[VIN] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Number_PTS] [nvarchar](50) NOT NULL,
	[Gos_Znak] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[id_Owner] [int] NOT NULL,
 CONSTRAINT [PK_Cars] PRIMARY KEY CLUSTERED 
(
	[id_car] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Num_Prav]    Script Date: 01.03.2024 9:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Num_Prav](
	[Number_Prav] [int] IDENTITY(1,1) NOT NULL,
	[Date_Vidatchi] [date] NOT NULL,
	[Kem_Vidan] [nvarchar](50) NOT NULL,
	[Kategoria] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Num_Prav] PRIMARY KEY CLUSTERED 
(
	[Number_Prav] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Owner]    Script Date: 01.03.2024 9:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Owner](
	[id_Owner] [int] IDENTITY(1,1) NOT NULL,
	[Familia] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Otshestvo] [nvarchar](50) NOT NULL,
	[Date_Rozdenia] [date] NOT NULL,
	[Gorod_Prozivania] [nvarchar](50) NOT NULL,
	[Ylitsa] [nvarchar](50) NOT NULL,
	[Number_Doma] [int] NULL,
	[login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[id_Role] [int] NOT NULL,
	[Foto] [nvarchar](50) NOT NULL,
	[Number_Prav] [int] NOT NULL,
	[Id_Strahovka] [int] NOT NULL,
 CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED 
(
	[id_Owner] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 01.03.2024 9:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id_Role] [int] IDENTITY(1,1) NOT NULL,
	[Naimenovanie] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shtraf_Protokol]    Script Date: 01.03.2024 9:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shtraf_Protokol](
	[id_Protokol] [int] IDENTITY(1,1) NOT NULL,
	[id_Owner] [int] NOT NULL,
	[Date_Narushenia] [date] NOT NULL,
	[Mesto_Narushenia] [nvarchar](50) NOT NULL,
	[Syshnost_Narushenia] [nvarchar](max) NOT NULL,
	[Summa_Shtrafa] [nvarchar](50) NOT NULL,
	[Lishenie] [nvarchar](50) NULL,
	[Date_Oplati] [date] NOT NULL,
 CONSTRAINT [PK_Shtraf_Protokol] PRIMARY KEY CLUSTERED 
(
	[id_Protokol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strahovka]    Script Date: 01.03.2024 9:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strahovka](
	[id_Strahovka] [int] NOT NULL,
	[id_strahovkaType] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Kem_Vidano] [nvarchar](100) NOT NULL,
	[Summa] [money] NOT NULL,
	[Id_Car] [int] NOT NULL,
 CONSTRAINT [PK_Strahovka_1] PRIMARY KEY CLUSTERED 
(
	[id_Strahovka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Strahovka_Type]    Script Date: 01.03.2024 9:18:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Strahovka_Type](
	[id_StrahovkaType] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Strahovka_Type] PRIMARY KEY CLUSTERED 
(
	[id_StrahovkaType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cars] ON 

INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (1, N'100 лс', N'1,5', N'Toyota', N'Mark II', N'2000', N'1', N'Mark_II.JPG', N'PTS012345', N'Р234ТЫ', N'Красный', 1)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (2, N'150 лс', N'2', N'Nissan', N'Skyline', N'1999', N'2', N'Skyline.jpg', N'PTS123456', N'А123ВС', N'Черный', 2)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (3, N'200 лс', N'2,5', N'BMW', N'e34', N'1995', N'3', N'e34.jpg', N'PTS234567', N'К678ЛД', N'Черный', 3)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (4, N'250 лс', N'3', N'Mercedes-Benz', N'E-Class', N'2021', N'4', N'E-Class.jpg', N'PTS345678', N'У567ИО', N'Белый', 4)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (5, N'300 лс', N'3,5', N'Mercedes-Benz', N'GLC-Class', N'2012', N'5', N'GLC-Class.jpg', N'PTS456789', N'М789ОП', N'Розовый', 5)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (6, N'350 лс', N'4', N'Porsche', N'Panamera', N'2019', N'6', N'Panamera.jpg', N'PTS567890', N'У345ЙЙ', N'Красный', 6)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (7, N'250 лс', N'4,5', N'Toyota', N'Land Cruiser', N'2012', N'7', N'Toyota_Land.jpg', N'PTS654321', N'О987УР', N'Черный', 7)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (8, N'477 лс', N'5', N'Lexus', N'LC500', N'2017', N'8', N'LC500.jpg', N'PTS890123', N'И901ПЙ', N'Белый', 8)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (9, N'500 лс', N'5,5', N'Mercedes-Benz', N'G-Class', N'2014', N'9', N'G-Class.jpg', N'PTS987654', N'В456КТ', N'Розовый', 9)
INSERT [dbo].[Cars] ([id_car], [Moshnost], [Obiom], [Marka], [Model], [God_Vipuska], [VIN], [Image], [Number_PTS], [Gos_Znak], [Color], [id_Owner]) VALUES (10, N'530 лс', N'6', N'Mercedes-Benz', N'S-Class', N'2015', N'10', N'S-Class.jpg', N'PTS636634', N'У554КК', N'Красный', 10)
SET IDENTITY_INSERT [dbo].[Cars] OFF
GO
SET IDENTITY_INSERT [dbo].[Num_Prav] ON 

INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (1, CAST(N'2022-01-01' AS Date), N'МВД', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (2, CAST(N'2022-02-15' AS Date), N'ГИБДД', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (3, CAST(N'2022-03-20' AS Date), N'Полиция', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (4, CAST(N'2022-04-10' AS Date), N'ГИБДД', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (5, CAST(N'2022-05-25' AS Date), N'МВД', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (6, CAST(N'2022-06-12' AS Date), N'Полиция', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (7, CAST(N'2022-07-02' AS Date), N'ГИБДД', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (8, CAST(N'2022-08-18' AS Date), N'МВД', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (9, CAST(N'2022-09-05' AS Date), N'Полиция', N'B         ')
INSERT [dbo].[Num_Prav] ([Number_Prav], [Date_Vidatchi], [Kem_Vidan], [Kategoria]) VALUES (10, CAST(N'2022-10-08' AS Date), N'ГИБДД', N'B         ')
SET IDENTITY_INSERT [dbo].[Num_Prav] OFF
GO
SET IDENTITY_INSERT [dbo].[Owner] ON 

INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (1, N'Иванов', N'Иван', N'Иванович', CAST(N'1990-01-01' AS Date), N'Москва', N'Процветания', 10, N'ivanov', N'password123', 1, N'10.jpg', 1, 1)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (2, N'Петров', N'Петр', N'Петрович', CAST(N'1985-05-15' AS Date), N'Санкт-Петербург', N'Цветочная', 5, N'petrov', N'qwerty456', 2, N'11.jpg', 2, 2)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (3, N'Сидорова', N'Мария', N'Александровна', CAST(N'1988-11-20' AS Date), N'Екатеринбург', N'Лесная', 15, N'sidorova', N'pass123', 1, N'12.jpg', 3, 3)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (4, N'Козлов', N'Андрей', N'Анатольевич', CAST(N'1995-03-10' AS Date), N'Нижний Новгород', N'Солнечная', 8, N'kozlov', N'abc456', 3, N'13.jpg', 4, 4)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (5, N'Павлова', N'Ольга', N'Викторовна', CAST(N'1982-08-25' AS Date), N'Казань', N'Промышленная', 20, N'pavlova', N'pass789', 2, N'14.jpg', 5, 5)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (6, N'Григорьев', N'Дмитрий', N'Сергеевич', CAST(N'1993-07-12' AS Date), N'Самара', N'Зеленая', 12, N'grigoriev', N'qwerty789', 1, N'15.jpg', 6, 6)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (7, N'Шевцов', N'Артем', N'Валерьевич', CAST(N'1980-04-02' AS Date), N'Ростов-на-Дону', N'Краснопресненская', 18, N'shevtsov', N'pass456', 3, N'16.jpeg', 7, 7)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (8, N'Кузнецова', N'Елена', N'Андреевна', CAST(N'1987-09-18' AS Date), N'Владивосток', N'Мира', 25, N'kuznetsova', N'abc789', 2, N'17.jpg', 8, 8)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (9, N'Андреев', N'Станислав', N'Игоревич', CAST(N'1998-06-05' AS Date), N'Краснодар', N'Центральная', 30, N'andreev', N'passabc', 1, N'18.png', 9, 9)
INSERT [dbo].[Owner] ([id_Owner], [Familia], [Name], [Otshestvo], [Date_Rozdenia], [Gorod_Prozivania], [Ylitsa], [Number_Doma], [login], [Password], [id_Role], [Foto], [Number_Prav], [Id_Strahovka]) VALUES (10, N'Морозов', N'Алексей', N'Владимирович', CAST(N'1984-12-08' AS Date), N'Уфа', N'Гагарина', 14, N'morozov', N'abc123', 3, N'19.jpg', 10, 10)
SET IDENTITY_INSERT [dbo].[Owner] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id_Role], [Naimenovanie]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([id_Role], [Naimenovanie]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([id_Role], [Naimenovanie]) VALUES (3, N'Диспетчер')
INSERT [dbo].[Role] ([id_Role], [Naimenovanie]) VALUES (4, N'Пользователь')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Shtraf_Protokol] ON 

INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (1, 1, CAST(N'2024-01-15' AS Date), N'Улица Первая', N'Превышение скорости', N'5000 руб.', NULL, CAST(N'2024-02-01' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (2, 2, CAST(N'2024-01-20' AS Date), N'Проспект Главный', N'Нарушение ПДД', N'3000 руб.', NULL, CAST(N'2024-02-05' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (3, 3, CAST(N'2024-02-05' AS Date), N'Перекресток Центральный', N'Проезд на красный свет', N'7000 руб.', NULL, CAST(N'2024-02-20' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (4, 4, CAST(N'2024-02-10' AS Date), N'Улица Солнечная', N'Парковка в неположенном месте', N'2000 руб.', NULL, CAST(N'2024-02-15' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (5, 5, CAST(N'2024-02-18' AS Date), N'Площадь Победы', N'Превышение скорости', N'5000 руб.', NULL, CAST(N'2024-02-25' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (6, 6, CAST(N'2024-03-02' AS Date), N'Улица Зеленая', N'Нарушение ПДД', N'3000 руб.', NULL, CAST(N'2024-03-10' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (7, 7, CAST(N'2024-03-12' AS Date), N'Перекресток Основной', N'Проезд на красный свет', N'7000 руб.', NULL, CAST(N'2024-03-20' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (8, 8, CAST(N'2024-03-18' AS Date), N'Улица Мира', N'Парковка в неположенном месте', N'2000 руб.', NULL, CAST(N'2024-03-25' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (9, 9, CAST(N'2024-04-05' AS Date), N'Проспект Гагарина', N'Превышение скорости', N'5000 руб.', NULL, CAST(N'2024-04-10' AS Date))
INSERT [dbo].[Shtraf_Protokol] ([id_Protokol], [id_Owner], [Date_Narushenia], [Mesto_Narushenia], [Syshnost_Narushenia], [Summa_Shtrafa], [Lishenie], [Date_Oplati]) VALUES (10, 10, CAST(N'2024-04-12' AS Date), N'Улица Центральная', N'Нарушение ПДД', N'3000 руб.', NULL, CAST(N'2024-04-20' AS Date))
SET IDENTITY_INSERT [dbo].[Shtraf_Protokol] OFF
GO
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (1, 1, CAST(N'2020-02-12' AS Date), N'	Тинькофф Страхование', 5000.0000, 1)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (2, 2, CAST(N'2020-05-13' AS Date), N'	Тинькофф Страхование', 7000.0000, 2)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (3, 3, CAST(N'2020-05-14' AS Date), N'	Тинькофф Страхование', 15000.0000, 3)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (4, 4, CAST(N'2020-05-15' AS Date), N'	Тинькофф Страхование', 20000.0000, 4)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (5, 1, CAST(N'2020-08-22' AS Date), N'	Тинькофф Страхование', 5000.0000, 5)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (6, 2, CAST(N'2020-07-23' AS Date), N'	Тинькофф Страхование', 7000.0000, 6)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (7, 3, CAST(N'2020-06-25' AS Date), N'	Тинькофф Страхование', 15000.0000, 7)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (8, 4, CAST(N'2020-08-26' AS Date), N'	Тинькофф Страхование', 20000.0000, 8)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (9, 1, CAST(N'2020-09-29' AS Date), N'	Тинькофф Страхование', 5000.0000, 9)
INSERT [dbo].[Strahovka] ([id_Strahovka], [id_strahovkaType], [Date], [Kem_Vidano], [Summa], [Id_Car]) VALUES (10, 2, CAST(N'2020-10-30' AS Date), N'	Тинькофф Страхование', 7000.0000, 10)
GO
SET IDENTITY_INSERT [dbo].[Strahovka_Type] ON 

INSERT [dbo].[Strahovka_Type] ([id_StrahovkaType], [Name]) VALUES (1, N'C')
INSERT [dbo].[Strahovka_Type] ([id_StrahovkaType], [Name]) VALUES (2, N'ПР')
INSERT [dbo].[Strahovka_Type] ([id_StrahovkaType], [Name]) VALUES (3, N'ОСАГО')
INSERT [dbo].[Strahovka_Type] ([id_StrahovkaType], [Name]) VALUES (4, N'КАСКО')
SET IDENTITY_INSERT [dbo].[Strahovka_Type] OFF
GO
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Owner] FOREIGN KEY([id_Owner])
REFERENCES [dbo].[Owner] ([id_Owner])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Cars_Owner]
GO
ALTER TABLE [dbo].[Owner]  WITH CHECK ADD  CONSTRAINT [FK_Owner_Num_Prav] FOREIGN KEY([Number_Prav])
REFERENCES [dbo].[Num_Prav] ([Number_Prav])
GO
ALTER TABLE [dbo].[Owner] CHECK CONSTRAINT [FK_Owner_Num_Prav]
GO
ALTER TABLE [dbo].[Owner]  WITH CHECK ADD  CONSTRAINT [FK_Owner_Role] FOREIGN KEY([id_Role])
REFERENCES [dbo].[Role] ([id_Role])
GO
ALTER TABLE [dbo].[Owner] CHECK CONSTRAINT [FK_Owner_Role]
GO
ALTER TABLE [dbo].[Shtraf_Protokol]  WITH CHECK ADD  CONSTRAINT [FK_Shtraf_Protokol_Owner] FOREIGN KEY([id_Owner])
REFERENCES [dbo].[Owner] ([id_Owner])
GO
ALTER TABLE [dbo].[Shtraf_Protokol] CHECK CONSTRAINT [FK_Shtraf_Protokol_Owner]
GO
ALTER TABLE [dbo].[Strahovka]  WITH CHECK ADD  CONSTRAINT [FK_Strahovka_Cars] FOREIGN KEY([Id_Car])
REFERENCES [dbo].[Cars] ([id_car])
GO
ALTER TABLE [dbo].[Strahovka] CHECK CONSTRAINT [FK_Strahovka_Cars]
GO
ALTER TABLE [dbo].[Strahovka]  WITH CHECK ADD  CONSTRAINT [FK_Strahovka_Owner] FOREIGN KEY([id_Strahovka])
REFERENCES [dbo].[Owner] ([id_Owner])
GO
ALTER TABLE [dbo].[Strahovka] CHECK CONSTRAINT [FK_Strahovka_Owner]
GO
ALTER TABLE [dbo].[Strahovka]  WITH CHECK ADD  CONSTRAINT [FK_Strahovka_Strahovka_Type1] FOREIGN KEY([id_strahovkaType])
REFERENCES [dbo].[Strahovka_Type] ([id_StrahovkaType])
GO
ALTER TABLE [dbo].[Strahovka] CHECK CONSTRAINT [FK_Strahovka_Strahovka_Type1]
GO
