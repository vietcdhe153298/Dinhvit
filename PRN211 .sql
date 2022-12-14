/** Delete DB***/
SET NOCOUNT ON
GO

USE [master]
GO

IF EXISTS (SELECT * FROM sysdatabases WHERE name='PRN211')
		DROP DATABASE PRN211
GO

/** Create DB***/

CREATE DATABASE PRN211
GO
USE [PRN211]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 11/13/2022 11:20:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[BillID] [int] IDENTITY(1,1) NOT NULL,
	[TableID] [int] NULL,
	[CheckOut] [smalldatetime] NULL,
	[TotalPrice] [nvarchar](50) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetail]    Script Date: 11/13/2022 11:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BillID] [int] NOT NULL,
	[FoodID] [int] NULL,
	[Size] [char](1) NULL,
	[Amount] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 11/13/2022 11:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 11/13/2022 11:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[FoodID] [int] IDENTITY(1,1) NOT NULL,
	[FoodName] [nvarchar](100) NULL,
	[CategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Option]    Script Date: 11/13/2022 11:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FoodID] [int] NOT NULL,
	[Size] [char](1) NULL,
	[Price] [int] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 11/13/2022 11:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[TableId] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](10) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 11/13/2022 11:20:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](30) NULL,
	[Password] [nvarchar](30) NULL,
	[FullName] [nvarchar](30) NULL,
	[Gender] [bit] NULL,
	[DOB] [smalldatetime] NULL,
	[Address] [nvarchar](100) NULL,
	[Mobile] [nvarchar](10) NULL,
	[Avatar] [nvarchar](max) NULL,
	[RoleID] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (1, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (2, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (3, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (4, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (5, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (6, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (7, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (8, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (9, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (10, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (11, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (12, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (13, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (14, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (15, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (16, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (17, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (18, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (19, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (20, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (21, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (22, NULL, CAST(N'2022-11-10T22:17:00' AS SmallDateTime), N'558000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (23, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (24, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (25, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (27, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (28, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (29, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (30, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (31, 43, CAST(N'2022-11-10T22:26:00' AS SmallDateTime), N'99000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (32, 44, CAST(N'2022-11-11T01:09:00' AS SmallDateTime), N'30000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (33, 43, CAST(N'2022-11-11T00:09:00' AS SmallDateTime), N'288000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (34, 45, CAST(N'2022-11-10T22:38:00' AS SmallDateTime), N'99000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (35, 46, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (36, 45, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (37, 47, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (38, 48, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (39, 49, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (40, 43, CAST(N'2022-11-11T00:09:00' AS SmallDateTime), N'297000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (41, NULL, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (42, 43, CAST(N'2022-11-11T00:12:00' AS SmallDateTime), N'99000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (43, 43, CAST(N'2022-11-11T00:23:00' AS SmallDateTime), N'40000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (44, 43, CAST(N'2022-11-11T00:36:00' AS SmallDateTime), N'60000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (45, 43, CAST(N'2022-11-11T01:08:00' AS SmallDateTime), N'408000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (46, 43, CAST(N'2022-11-11T09:34:00' AS SmallDateTime), N'161000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (47, 44, CAST(N'2022-11-11T10:30:00' AS SmallDateTime), N'208000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (48, 43, CAST(N'2022-11-11T09:35:00' AS SmallDateTime), N'0', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (49, 43, CAST(N'2022-11-11T10:30:00' AS SmallDateTime), N'627000', 1)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (50, 43, NULL, NULL, 0)
INSERT [dbo].[Bill] ([BillID], [TableID], [CheckOut], [TotalPrice], [Status]) VALUES (51, 44, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDetail] ON 

INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (3, 1, 1, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (4, 2, 1, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (5, 3, 6, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (6, 4, 4, N'S', 3)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (7, 5, 1, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (8, 9, 1, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (9, 10, 2, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (10, 1, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (13, 11, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (14, 12, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (15, 13, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (16, 8, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (17, 15, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (18, 17, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (19, 14, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (20, 19, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (21, 18, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (22, 16, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (23, 7, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (24, 21, 1, N'L', 5)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (25, 23, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (26, 22, 1, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (27, 27, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (28, 28, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (29, 29, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (30, 31, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (32, 32, 21, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (33, 32, 24, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (34, 34, 4, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (35, 34, 23, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (36, 33, 21, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (37, 35, 21, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (38, 35, 21, N'L', 2)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (39, 36, 21, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (49, 33, 22, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (54, 33, 21, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (55, 33, 21, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (56, 33, 21, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (62, 33, 2, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (63, 33, 2, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (64, 33, 2, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (65, 40, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (66, 40, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (67, 40, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (68, 42, 4, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (76, 43, 28, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (77, 43, 32, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (78, 44, 32, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (79, 44, 32, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (81, 45, 3, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (82, 45, 2, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (83, 45, 32, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (84, 32, 32, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (86, 46, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (87, 46, 45, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (88, 46, 48, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (89, 49, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (90, 49, 3, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (91, 49, 3, N'L', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (92, 49, 32, N'M', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (93, 47, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (94, 47, 3, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (96, 47, 28, N'S', 1)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (97, 49, 28, N'S', 3)
INSERT [dbo].[BillDetail] ([ID], [BillID], [FoodID], [Size], [Amount]) VALUES (98, 50, 3, N'S', 1)
SET IDENTITY_INSERT [dbo].[BillDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Burgers')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Piza')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (3, N'Sallad')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (4, N'Bánh Mì')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (5, N'Chicken')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (6, N'Đồ Ăn Vặt')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (7, N'Nước Ép Trái Cây')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (8, N'Cà Phê')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (9, N'Trà Sữa')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (10, N'Kem')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (11, N'Mỳ')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (1, N'BURGER GA', 1)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (2, N'TÔM NƯỚNG KIỂU MỸ - SURF & TURF', 6)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (3, N'PIZZA BÁNH XÈO NHẬT - OKONOMIYAKI', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (4, N'PIZZA THẬP CẨM THƯỢNG HẠNG - EXTRAVAGANZA', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (5, N'PIZZA HẢI SẢN XỐT MAYONNAISE - OCEAN MANIA', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (6, N'PIZZA HẢI SẢN NHIỆT ĐỚI XỐT TIÊU - PIZZAMIN SEA', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (7, N'HALF HALF', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (8, N'PIZZA 5 LOẠI THỊT THƯỢNG HẠNG - MEAT LOVERS', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (9, N'PIZZA XÚC XÍCH Ý TRUYỀN THỐNG - PEPPERONI FEAST', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (10, N'PIZZA HẢI SẢN XỐT CÀ CHUA - SEAFOOD DELIGHT', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (11, N'PIZZA TRỨNG CÚT XỐT PHÔ MAI - KID MANIA', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (12, N'PIZZA RAU CỦ THẬP CẨM - VEGGIE MANIA', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (13, N'PIZZA GÀ XỐT TƯƠNG KIỂU NHẬT - TERIYAKI CHICKEN', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (14, N'PIZZA DĂM BÔNG DỨA KIỂU HAWAII - HAWAIIAN', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (15, N'PIZZA PHÔ MAI HẢO HẠNG - CHEESE MANIA', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (16, N'PIZZA GÀ PHÔ MAI THỊT HEO XÔNG KHÓI - CHEESY CHICKEN BACON', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (17, N'PIZZA BÒ MÊ-HI-CÔ THƯỢNG HẠNG - PRIME BEEF', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (18, N'PIZZA HẢI SẢN KIỂU SINGAPORE - SINGAPORE STYLE SEAFOOD', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (19, N'PIZZA 4 VỊ - PIZZA BIG 4', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (20, N'Pizza cay', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (21, N'King Burger', 1)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (22, N'Pizza Vịt', 2)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (23, N'Trà Sữa Chân Châu', 9)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (24, N'TRÀ SỮA TRÂN CHÂU', 1)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (25, N'CAFE ĐEN', 8)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (26, N'CAFE ĐEN ĐÁ', 8)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (28, N'BÁNH MỲ TRỨNG', 4)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (29, N'BÁNH MỲ XÚC XÍCH', 4)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (30, N'BÁNH MỲ THỊT NƯỚNG', 4)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (31, N'BÁNH MỲ PATE', 4)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (32, N'NƯỚC ÉP TÁO', 7)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (33, N'NƯỚC ÉP LÊ', 7)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (34, N'NƯỚC ÉP ĐÀO', 7)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (35, N'NƯỚC ÉP DƯA HẤU', 7)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (36, N'NƯỚC ÉP CHANH LEO', 7)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (37, N'Mỳ Trộn', 11)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (38, N'Mỳ Cay', 11)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (39, N'Mỳ Lạnh HQ', 11)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (40, N'Mỳ Lạnh Tương Đen', 11)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (41, N'Mỳ Tương Đen', 11)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (42, N'Sallad majone', 3)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (43, N'Sallad Cà Chua', 3)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (44, N'Sallad Rau củ quả', 3)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (45, N'Cánh Gà KFC', 5)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (46, N'Đùi Gà KFC', 5)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (47, N'Ức Gà KFC', 5)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (48, N'Nâu Đá', 8)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (49, N'Đen Đá', 8)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (50, N'Cafe Phin', 8)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (51, N'Capuchino', 8)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (52, N'Americano', 8)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (53, N'Trân Châu Đường Đen', 9)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (54, N'Trân Châu ', 9)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (55, N'Truyền Thống', 9)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (56, N'Tràng tiền', 10)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (57, N'Ốc Quế', 10)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (58, N'Vani', 10)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (59, N'Tràng tiền', 10)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (60, N'Gà', 1)
INSERT [dbo].[Food] ([FoodID], [FoodName], [CategoryID]) VALUES (61, N'Mix', 1)
SET IDENTITY_INSERT [dbo].[Food] OFF
GO
SET IDENTITY_INSERT [dbo].[Option] ON 

INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (4, 2, N'S', 96000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (5, 2, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (6, 2, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (7, 3, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (8, 3, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (9, 3, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (10, 4, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (11, 4, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (12, 4, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (13, 5, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (14, 5, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (15, 5, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (16, 6, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (17, 6, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (18, 6, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (19, 7, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (20, 7, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (21, 7, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (22, 8, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (23, 8, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (24, 8, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (25, 9, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (26, 9, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (27, 9, N'L', 279000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (28, 10, N'S', 99000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (29, 10, N'M', 189000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (34, 28, N'S', 10000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (35, 29, N'M', 10000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (36, 30, N'M', 10000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (37, 31, N'L', 15000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (38, 32, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (39, 33, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (40, 34, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (41, 35, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (42, 36, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (43, 37, N'S', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (44, 38, N'S', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (45, 39, N'S', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (46, 40, N'M', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (47, 41, N'M', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (48, 39, N'L', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (49, 39, N'L', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (50, 42, N'M', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (51, 43, N'L', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (52, 44, N'L', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (53, 45, N'M', 32000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (54, 46, N'M', 32000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (55, 47, N'M', 32000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (56, 48, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (57, 49, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (58, 50, N'L', 35000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (59, 51, N'M', 40000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (60, 52, N'M', 40000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (61, 53, N'M', 35000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (62, 54, N'M', 30000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (63, 39, N'L', 35000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (65, 55, N'M', 25000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (69, 56, N'S', 10000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (70, 56, N'S', 20000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (71, 57, N'S', 10000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (72, 58, N'S', 15000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (73, 59, N'S', 10000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (74, 60, N'S', 10000, 1)
INSERT [dbo].[Option] ([ID], [FoodID], [Size], [Price], [Status]) VALUES (75, 61, N'M', 30000, 1)
SET IDENTITY_INSERT [dbo].[Option] OFF
GO
SET IDENTITY_INSERT [dbo].[Table] ON 

INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (43, N'1', 1)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (44, N'2', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (45, N'3', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (46, N'4', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (47, N'5', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (48, N'6', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (49, N'7', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (50, N'8', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (52, N'9', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (53, N'10', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (54, N'11', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (55, N'12', 0)
INSERT [dbo].[Table] ([TableId], [TableName], [Status]) VALUES (56, N'13', 0)
SET IDENTITY_INSERT [dbo].[Table] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Gender], [DOB], [Address], [Mobile], [Avatar], [RoleID]) VALUES (1, N'admin', N'123', N'Nguyen van B', 1, CAST(N'2001-11-05T00:00:00' AS SmallDateTime), N'Nghe An', N'0886135901', NULL, 1)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Gender], [DOB], [Address], [Mobile], [Avatar], [RoleID]) VALUES (2, N'admin1', N'123', N'Chu Đình Việt', 1, CAST(N'2001-11-05T00:00:00' AS SmallDateTime), N'Ha Noi', N'0886135901', NULL, 1)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Gender], [DOB], [Address], [Mobile], [Avatar], [RoleID]) VALUES (3, N'vitdz', N'123', N'Nguyễn văn a', 1, CAST(N'2001-03-02T00:00:00' AS SmallDateTime), N'Nghe AN', N'0977206978', N'C:\Users\Admin\Downloads\OIP.jpg', 0)
INSERT [dbo].[User] ([UserId], [UserName], [Password], [FullName], [Gender], [DOB], [Address], [Mobile], [Avatar], [RoleID]) VALUES (7, N'7ball', N'123', N'Messi', 1, CAST(N'2022-01-23T00:00:00' AS SmallDateTime), N'Arghentina', N'1234567892', NULL, 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_TABLE] FOREIGN KEY([TableID])
REFERENCES [dbo].[Table] ([TableId])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_TABLE]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK_BILL] FOREIGN KEY([BillID])
REFERENCES [dbo].[Bill] ([BillID])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK_BILL]
GO
ALTER TABLE [dbo].[BillDetail]  WITH CHECK ADD  CONSTRAINT [FK_FOOD_2] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([FoodID])
GO
ALTER TABLE [dbo].[BillDetail] CHECK CONSTRAINT [FK_FOOD_2]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORY] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [FK_CATEGORY]
GO
ALTER TABLE [dbo].[Option]  WITH CHECK ADD  CONSTRAINT [FK_FOOD_1] FOREIGN KEY([FoodID])
REFERENCES [dbo].[Food] ([FoodID])
GO
ALTER TABLE [dbo].[Option] CHECK CONSTRAINT [FK_FOOD_1]
GO
