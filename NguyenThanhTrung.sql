USE [Shoev]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 6/20/2021 9:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 6/20/2021 9:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UniCost] [int] NULL,
	[Quanity] [int] NULL,
	[Image] [nvarchar](500) NULL,
	[Discription] [nvarchar](100) NULL,
	[Status] [int] NULL,
	[IDLoai] [int] NULL,
 CONSTRAINT [PK__SanPham__3214EC2723BFBFD5] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 6/20/2021 9:44:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] NOT NULL,
	[UserName] [char](100) NULL,
	[Password] [char](100) NULL,
	[Status] [char](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSP] ([ID], [Name], [Description]) VALUES (1, N'Iphone', N'Mỹ')
INSERT [dbo].[LoaiSP] ([ID], [Name], [Description]) VALUES (2, N'Samsung', N'Hàn Quốc')
INSERT [dbo].[LoaiSP] ([ID], [Name], [Description]) VALUES (3, N'Oppo', N'Trung quốc')
INSERT [dbo].[LoaiSP] ([ID], [Name], [Description]) VALUES (4, N'Xiaomi', N'Trung quốc')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (1, N'Iphone 12 pro max', 15000000, 10, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/2/3/637479614485943996_ip-12-pro-max-dd-2nam.jpg', N'Vua của các điện thoại', 1, 1)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (2, N'Xiaomi mi 11 ultra', 100000, 50, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/4/16/637541698147579202_xiaomi-mi-11-xanh-dd-1.jpg', N'Sản phẩm toàn diện nhất của Xiaomi', 1, 4)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (3, N'Samsung S21 ultra 5G', 50000, 20, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/1/14/637462639794639518_ss-s21-ultra-128-dd.png', N'Sản phẩm mới nhất dong S sở hữu nhìu công nghệ mới', 1, 2)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (4, N'Oppo Find X3 pro', 50000, 20, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/5/14/637565961688766276_oppo-find-x3-pro-dd.jpg', N'Mới ra mắt tích hợp nhiều công nghê mới nhất của thế giới Adroi', 1, 3)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (5, N'Samsung note 20 ultra ', 200000, 20, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/8/5/637322682439532348_ss-note-20-ultra-5g-gold-dd.png', N'Sản phẩm mới nhất của dòng note', 1, 2)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (6, N'Iphone 11 pro max', 17000000, 20, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2019/9/11/637037687757921048_11-pro-max-chung.png', N'ra mắt cách 1 năm ', 0, 1)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (7, N'Xiaomi mi 11', 15000000, 30, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/4/16/637541698147579202_xiaomi-mi-11-xanh-dd-1.jpg', N'Ra mắt năm 2020 thiết kế của 1 flaship chạy chip snapragon 888 ', 1, 4)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (8, N'Oppo Reno 5 pro', 5000000, 20, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/12/25/637445128012092437_oppo-reno5-dd.png', N'điện thoại tầm trung hót nhatsas', 1, 3)
INSERT [dbo].[SanPham] ([ID], [Name], [UniCost], [Quanity], [Image], [Discription], [Status], [IDLoai]) VALUES (9, N'Samsung S21 plus', 18000000, 60, N'https://images.fpt.shop/unsafe/fit-in/214x214/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2021/1/14/637462639794669527_ss-s21-plus-dd.png', N'vô địch tầm giá', 1, 2)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (1, N'trung2000                                                                                           ', N'2000                                                                                                ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (2, N'trung1                                                                                              ', N'1                                                                                                   ', N'Block                                             ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (3, N'trung2                                                                                              ', N'2                                                                                                   ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (4, N'trung                                                                                               ', N'1                                                                                                   ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (5, N'trung1122                                                                                           ', N'122                                                                                                 ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (6, N'trunghhhh                                                                                           ', N'121                                                                                                 ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (7, N'trungvg                                                                                             ', N'123                                                                                                 ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (8, N'admin                                                                                               ', N'1                                                                                                   ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (9, N'trung123                                                                                            ', N'1                                                                                                   ', N'Active                                            ')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (10, N'1                                                                                                   ', N'1                                                                                                   ', N'Active                                            ')
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK__SanPham__IDLoai__3A81B327] FOREIGN KEY([IDLoai])
REFERENCES [dbo].[LoaiSP] ([ID])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK__SanPham__IDLoai__3A81B327]
GO
