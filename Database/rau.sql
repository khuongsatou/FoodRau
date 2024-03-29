USE [Rau]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[cus_email] [varchar](255) NULL,
	[cus_name] [nvarchar](200) NULL,
	[des] [nvarchar](500) NULL,
	[status] [int] NULL,
	[created] [datetime] NULL,
	[post_id] [int] NULL,
	[rep_id] [int] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customer](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](255) NULL,
	[name] [nvarchar](200) NULL,
	[phone] [varchar](20) NULL,
	[email] [varchar](255) NULL,
	[address] [nvarchar](300) NULL,
	[num_order] [int] NULL,
	[num_successful_order] [int] NULL,
	[sum] [decimal](10, 2) NULL,
	[status] [int] NULL,
	[created] [datetime] NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[food]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](10, 2) NULL,
	[price_promo] [decimal](10, 2) NULL,
	[thumb] [varchar](255) NULL,
	[img] [varchar](255) NULL,
	[unit] [nvarchar](10) NULL,
	[percent_promo] [decimal](2, 2) NULL,
	[rating] [int] NULL,
	[sold] [int] NULL,
	[point] [decimal](2, 2) NULL,
	[type] [int] NULL,
	[status] [int] NULL,
	[username] [varchar](50) NULL,
	[modified] [datetime] NULL,
 CONSTRAINT [PK_food] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[food_type]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[food_type](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](50) NULL,
	[type_img] [varchar](255) NULL,
	[type_pos] [int] NULL,
	[status] [int] NULL,
	[username] [varchar](50) NULL,
	[modified] [datetime] NULL,
 CONSTRAINT [PK_food_type] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[log_activity]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[log_activity](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[description] [nvarchar](300) NULL,
	[time_log] [datetime] NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_log_activity] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[member]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[member](
	[username] [varchar](50) NOT NULL,
	[pass] [varchar](255) NULL,
	[name] [nvarchar](200) NULL,
	[email] [nvarchar](200) NULL,
	[phone] [varchar](20) NULL,
	[role] [int] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_member] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[cus_name] [nvarchar](100) NULL,
	[cus_phone] [varchar](50) NULL,
	[cus_add] [nvarchar](255) NULL,
	[quan] [int] NULL,
	[sum] [decimal](10, 2) NULL,
	[status] [int] NULL,
	[username] [varchar](50) NULL,
	[modified] [datetime] NULL,
	[created] [datetime] NULL,
	[cus_username] [varchar](50) NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_id] [int] NOT NULL,
	[food_id] [int] NOT NULL,
	[quan] [decimal](10, 2) NULL,
	[unit] [nvarchar](10) NULL,
	[price] [decimal](10, 2) NULL,
	[total] [decimal](10, 2) NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[food_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[post]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[post](
	[post_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](300) NULL,
	[short_des] [nvarchar](500) NULL,
	[des] [nvarchar](max) NULL,
	[type] [int] NULL,
	[img] [varchar](255) NULL,
	[status] [int] NULL,
	[username] [varchar](50) NULL,
	[modified] [datetime] NULL,
	[created] [datetime] NULL,
 CONSTRAINT [PK_post] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[relative_food]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[relative_food](
	[food1_id] [int] NOT NULL,
	[food2_id] [int] NOT NULL,
	[des] [nvarchar](200) NULL,
 CONSTRAINT [PK_relative_food] PRIMARY KEY CLUSTERED 
(
	[food1_id] ASC,
	[food2_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[setting]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[setting](
	[id_setting] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](500) NULL,
	[des] [nvarchar](max) NULL,
	[value] [nvarchar](50) NULL,
	[username] [varchar](50) NULL,
	[modified] [datetime] NULL,
 CONSTRAINT [PK_setting] PRIMARY KEY CLUSTERED 
(
	[id_setting] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[slider]    Script Date: 12/28/2019 1:12:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[slider](
	[slide_id] [int] IDENTITY(1,1) NOT NULL,
	[id_object] [int] NULL,
	[img] [varchar](255) NULL,
	[caption] [nvarchar](200) NULL,
	[type] [int] NULL,
	[rank] [int] NULL,
	[status] [int] NULL,
	[username] [varchar](50) NULL,
	[modified] [datetime] NULL,
 CONSTRAINT [PK_slider] PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'customer1', N'202cb962ac59075b964b07152d234b70', N'customname1', N'0356241963', N'customer1@gmail.com', N'290/112', 0, 0, CAST(0.00 AS Decimal(10, 2)), 1, CAST(0x0000AB3100084348 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'customer2', N'202cb962ac59075b964b07152d234b70', N'customname2', N'0356241963', N'customer2@gmail.com', N'201923/2323', 0, 0, CAST(0.00 AS Decimal(10, 2)), 1, CAST(0x0000AB31000929E4 AS DateTime))
SET IDENTITY_INSERT [dbo].[food] ON 

INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (1, N'Đu Đủ', N'Đu đủ là loại quả nhiều dinh dưỡng', CAST(65000.00 AS Decimal(10, 2)), CAST(45500.00 AS Decimal(10, 2)), N'product-13.jpg', N'trai-nghiem-sua-dua-huu-co-ecomil-loai-sua-organic-giup-chi-em-luon-tuoi-tre-dep-dang-va-tran-day-suc-song-12(1).jpg', N'KG', CAST(0.30 AS Decimal(2, 2)), 1, 0, CAST(0.01 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB3001645473 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (2, N'Xoài cát chu', N'Không có mô tả cho sản phẩm này', CAST(200000.00 AS Decimal(10, 2)), CAST(154000.00 AS Decimal(10, 2)), N'xoai-cat-chu-270x270.jpg', N'vu-sua-270x270.jpg', N'Quả', CAST(0.23 AS Decimal(2, 2)), 10, 0, CAST(0.10 AS Decimal(2, 2)), 2, 1, N'admin', CAST(0x0000AB300126D202 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (3, N'Vú Sữa', N'Tận 2 Quả', CAST(232300.00 AS Decimal(10, 2)), CAST(232300.00 AS Decimal(10, 2)), N'vu-sua-270x270.jpg', N'xoai-cat-chu-270x270.jpg', N'Quả', CAST(0.00 AS Decimal(2, 2)), 9, 0, CAST(0.05 AS Decimal(2, 2)), 1, 1, N'admin', CAST(0x0000AB3001275D3B AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (4, N'Xà lách Romaine', N'Xà lách Romaine Cây có màu xanh tương', CAST(13.00 AS Decimal(10, 2)), CAST(12.74 AS Decimal(10, 2)), N'orfarm-rau-muong-huu-co_1498320827.jpg', N'300px-Rau_th%C6%A1m.jpg', N'gam', CAST(0.02 AS Decimal(2, 2)), 7, 0, CAST(0.09 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB3001604053 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (5, N'Xà lách loxoxanh', N'Nó là 1 loại salack', CAST(123.00 AS Decimal(10, 2)), CAST(120.54 AS Decimal(10, 2)), N'5(1).png', N'category.jpg', N'1', CAST(0.02 AS Decimal(2, 2)), 2, 0, CAST(0.10 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB3001609C4C AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (6, N'Táo đỏ hữu cơ', N'Là 1 loại táo đỏ nó rất đỏ', CAST(34.00 AS Decimal(10, 2)), CAST(26.18 AS Decimal(10, 2)), N'product-10.jpg', N'product-1.jpg', N'trái', CAST(0.23 AS Decimal(2, 2)), 2, 0, CAST(0.10 AS Decimal(2, 2)), 2, 1, N'khuong', CAST(0x0000AB300160FE1E AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (7, N'Dẻ xường bò cobe', N'giá khá đắt những ăn khá ngon', CAST(12.00 AS Decimal(10, 2)), CAST(9.24 AS Decimal(10, 2)), N'de-suon-bo-obe-huu-co-300g-200x200.jpg', N'de-suon-bo-obe-huu-co-300g-200x200.jpg', N'lát', CAST(0.23 AS Decimal(2, 2)), 3, 0, CAST(0.10 AS Decimal(2, 2)), 3, 1, N'khuong', CAST(0x0000AB3001616565 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (8, N'Táo đỏ hữu cơ pháp', N'Phải nhớ rõ nó nhập từ pháp không phải việt nam', CAST(343.00 AS Decimal(10, 2)), CAST(264.11 AS Decimal(10, 2)), N'product-16.jpg', N'product-10.jpg', N'quả', CAST(0.23 AS Decimal(2, 2)), 2, 0, CAST(0.02 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB300161C39D AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (9, N'Chà là khô', N'khá mặn', CAST(243.00 AS Decimal(10, 2)), CAST(187.11 AS Decimal(10, 2)), N'cha-la-kho-huu-co-natural-delights-340g-320x320.jpg', N'cha-la-kho-huu-co-natural-delights-340g-320x320.jpg', N'cộng', CAST(0.23 AS Decimal(2, 2)), 2, 0, CAST(0.02 AS Decimal(2, 2)), 3, 1, N'khuong', CAST(0x0000AB3001622FAE AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (10, N'Táo nhật', N'jav', CAST(23.00 AS Decimal(10, 2)), CAST(17.71 AS Decimal(10, 2)), N'du-du-huu-co-270x270.jpg', N'category-3.jpg', N'quả', CAST(0.23 AS Decimal(2, 2)), 10, 0, CAST(0.10 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB300162758E AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (11, N'Lê hàn quốc', N'Nhưng được trồng ở việt nam', CAST(100.00 AS Decimal(10, 2)), CAST(60.00 AS Decimal(10, 2)), N'le-han-quoc-320x320.jpg', N'le-han-quoc-320x320(1).jpg', N'quả', CAST(0.40 AS Decimal(2, 2)), 10, 0, CAST(0.10 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB300162E09F AS DateTime))
SET IDENTITY_INSERT [dbo].[food] OFF
SET IDENTITY_INSERT [dbo].[food_type] ON 

INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (1, N'Trái Cây Hữu Cơ', N'image_1%20(6).jpg', 1, 1, N'khuong', CAST(0x0000AB30011AF4E8 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (2, N'Rau Củ Quả Hữu Cơ', N'about.jpg', 2, 1, N'khuong', CAST(0x0000AB30011B6458 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (3, N'Thịt Cá Hữu Cơ', N'image_1%20(6).jpg', 1, 1, N'khuong', CAST(0x0000AB30011CFEA2 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (4, N'Rau Củ Quả', N'category-1.jpg', 1, 1, N'khuong', CAST(0x0000AB30011E1CE2 AS DateTime))
SET IDENTITY_INSERT [dbo].[food_type] OFF
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'admin', N'202cb962ac59075b964b07152d234b70', N'admin', N'admin@gmail.com', N'0356241963', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong', N'202cb962ac59075b964b07152d234b70', N'khuong', N'yoshi1@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'user', N'202cb962ac59075b964b07152d234b70', N'user', N'user@gmail.com', N'0356241965', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'user1', N'202cb962ac59075b964b07152d234b70', N'user1', N'user1@gmail.com', N'0356241966', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'user2', N'202cb962ac59075b964b07152d234b70', N'Nguyễn Văn Khương', N'yoshi@gmail.com', N'0356241967', 0, 1)
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (1, N'customer1', N'0306171362', N'123', 5, CAST(4427.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (2, N'customer2', N'0306171362', N'124', 5, CAST(6694.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (3, N'customer3', N'0306171362', N'125', 5, CAST(3003.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (4, N'customer4', N'0306171362', N'126', 1, CAST(3842.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (5, N'customer5', N'0306171362', N'127', 5, CAST(4207.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (6, N'customer6', N'0306171362', N'128', 0, CAST(6772.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (7, N'customer7', N'0306171362', N'129', 0, CAST(7346.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (8, N'customer8', N'0306171362', N'130', 5, CAST(3779.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (9, N'customer9', N'0306171362', N'131', 3, CAST(6480.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (10, N'customer10', N'0306171362', N'132', 3, CAST(7026.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (11, N'customer11', N'0306171362', N'133', 2, CAST(7014.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (12, N'customer12', N'0306171362', N'134', 0, CAST(6806.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (13, N'customer13', N'0306171362', N'135', 3, CAST(4533.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (14, N'customer14', N'0306171362', N'136', 3, CAST(3260.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB31001266F0 AS DateTime), CAST(0x0000AB31001266F0 AS DateTime), N'customer1')
SET IDENTITY_INSERT [dbo].[order] OFF
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (1, 1, CAST(9.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(9000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (2, 2, CAST(3.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (2, 3, CAST(7.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(7000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (3, 1, CAST(6.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(6000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (3, 2, CAST(6.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(6000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (1, N'ƯU ĐÃI LỚN khi mua 1 sản phẩm Elee bất kỳ', N'Từ ngày 10/12 đến ngày 5/1, Organicfood diễn ra chương trình ưu đãi hấp dẫn:Khi mua 1 sản phẩm Elee bất kỳ, quý khách hàng sẽ được mua dung dịch vệ sinh hàng ngày.', N'<p style="text-align: justify;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><strong>Từ ng&agrave;y 10/12 đến ng&agrave;y 5/1, Organicfood diễn ra chương tr&igrave;nh ưu đ&atilde;i hấp dẫn</strong>: </span></p>
<p style="text-align: justify;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Khi&nbsp;mua 1 sản phẩm Elee bất kỳ, qu&yacute; kh&aacute;ch h&agrave;ng sẽ được mua dung dịch vệ sinh h&agrave;ng ng&agrave;y Elee Organic pH5 với gi&aacute;&nbsp;20.000VNĐ Elee l&agrave; thương hiệu Organic cho Mẹ v&agrave; B&eacute; được sản xuất từ những nguy&ecirc;n liệu hữu cơ đạt ti&ecirc;u chuẩn USDA, EU. </span></p>
<p style="text-align: justify;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Elee đặc biệt an to&agrave;n cho Mẹ v&agrave; B&eacute; dựa tr&ecirc;n nguy&ecirc;n tắc 6 KH&Ocirc;NG: -&nbsp;Kh&ocirc;ng Sulfate:&nbsp;</span></p>
<p style="text-align: justify;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Sulfate c&oacute; t&igrave;nh b&agrave;o m&ograve;n, sẽ g&acirc;y cảm gi&aacute;c kh&ocirc;, dễ rụng t&oacute;c, tổn thương nang l&ocirc;ng v&agrave; k&iacute;ch ứng da. -&nbsp;Kh&ocirc;ng Chất bảo quản: Chất bảo quản trong c&aacute;c sản phẩm c&oacute; thể g&acirc;y rối loạn nội tiết, ảnh hưởng đến sự ph&aacute;t triển của thai nhi, nguy cơ ung thư v&uacute; v&agrave; đẩy nhanh qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a. -&nbsp;Kh&ocirc;ng Silicone:&nbsp;Silicone tạo cảm gi&aacute;c bề mặt tạm thời. Sử dụng trong thời gian d&agrave;i sẽ tạo một lớp tr&ecirc;n da, g&acirc;y tắc lỗ ch&acirc;n l&ocirc;ng, ph&aacute;t ban, ngứa v&agrave; nấm. </span></p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" src="/Uploads/images/300px-Rau_th%C6%A1m.jpg" style="width: 500px; height: 367px;" /></span></p>
<p style="text-align: justify;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">-&nbsp;Kh&ocirc;ng Chất tạo bọt:&nbsp;Ch</span><span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">ất tạo bọt khiến ra trở n&ecirc;n nhạy cảm. Nguy cơ g&acirc;y ung thư khi kết hợp với c&aacute;c th&agrave;nh phần kh&aacute;c. -&nbsp;Kh&ocirc;ng hương thơm nh&acirc;n tạo: H&oacute;a chất tạo m&ugrave;i c&oacute; nguy cơ g&acirc;y dị ứng, vi&ecirc;m da, suy h&ocirc; hấp v&agrave; ảnh hưởng đến cơ quan sinh sản - Kh&ocirc;ng chất tạo mầu: H&oacute;a chất tạo mầu c&oacute; thể dẫn đến k&iacute;ch ứng da v&agrave; ph&aacute;t triển c&aacute;c tế b&agrave;o ung thư.</span></p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	&nbsp;</p>
<p style="text-align: justify;">
	<br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	&nbsp;</p>
<p>
	&nbsp;</p>
', 1, N'710721.png', 1, N'khuong', CAST(0x0000AB300120355A AS DateTime), CAST(0x0000AB300120355A AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (2, N'5 ĐIỂM KHÁC BIỆT CỦA ĐƯỜNG DỪA HỮU CƠ SO VỚI ĐƯỜNG THÔNG THƯỜNG', N'Những năm gần đây, khi người tiêu dùng quan tâm đến sức khỏe nhiều hơn. Đường tinh luyện dần được thay thế bởi những chất tạo ngọt khác - tự nhiên và an tòan hơn. Một trong số đó là đường dừa. Vậy đường dừa hữu cơ khác biệt gì so với đường thông thường?', N'<p>
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><strong>Những năm gần đ&acirc;y, khi người ti&ecirc;u d&ugrave;ng quan t&acirc;m đến sức khỏe nhiều hơn.</strong></span></p>
<p>
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Đường tinh luyện dần được thay thế bởi những chất tạo ngọt kh&aacute;c - tự nhi&ecirc;n v&agrave; an t&ograve;an hơn. </span></p>
<p>
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" src="/Uploads/images/300px-Rau_th%C6%A1m.jpg" style="width: 600px; height: 587px;" /></span></p>
<p>
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Một trong số đ&oacute; l&agrave; đường dừa. Vậy đường dừa hữu cơ kh&aacute;c biệt g&igrave; so với đường th&ocirc;ng thường? 1. Chỉ số đường huyết (GI) thấp: Đường th&ocirc;ng thường c&oacute; chỉ số đường huyết cao từ 60 - 65. Nhưng đường dừa chỉ c&oacute; chỉ số đường huyết l&agrave; 35.&nbsp; </span></p>
<p>
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">V&igrave; vậy, việc sử dụng đường dường sẽ hạn chế được c&aacute;c bệnh về tim mạch, tiểu đường,.. 2. H&agrave;m lượng chất dinh dưỡng cao hơn: Đường dừa chứa nhiều chất dinh dưỡng như: Kali, magie, kẽm, sắt, axit amin v&agrave; vitamin B1, B2, B3 v&agrave; B6 cũng như c&aacute;c chất chống oxy h&oacute;a. Trong khi c&aacute;c loại đường kh&aacute;c kh&ocirc;ng c&oacute; vitamin v&agrave; kho&aacute;ng chất đ&aacute;ng kể 3. Độ ẩm: Đường dừa hữu cơ c&oacute; độ ẩm thấp hơn 1,6 %: </span></p>
<p>
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" src="/Uploads/images/rau-rung-tay-ninh-e1551342709645.jpg" style="width: 500px; height: 310px;" /></span></p>
<p>
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Kh&ocirc;, chảy tự do như đường trắng, kh&ocirc;ng v&oacute;n cục. Đường th&ocirc;ng thường độ ẩm cao hơn 2%: ẩm, v&oacute;n cục, nấm mốc ph&aacute;t triển v&agrave; l&ecirc;n men 4. Th&acirc;n thiện với m&ocirc;i trường: Đường dừa hữu cơ thuần chay, non GMO, </span></p>
<p>
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">kh&ocirc;ng gluten, kh&ocirc;ng chất tẩy trắng. C&aacute;c loại đường kh&aacute;c sử dụng h&oacute;a chất tự nhi&ecirc;n hoặc nh&acirc;n tạo trong qu&aacute; tr&igrave;nh sản xuất. 5. Th&agrave;nh phần: Đường dừa hữu c&oacute; c&oacute; th&agrave;nh phần 100% từ thi&ecirc;n nhi&ecirc;n, chứa inulin &ndash; chất xơ l&agrave;nh mạnh gi&uacute;p l&agrave;m chậm qu&aacute; tr&igrave;nh hấp thu đường glucose.</span><br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	&nbsp;</p>
', 2, N'category-1.jpg', 1, N'khuong', CAST(0x0000AB30012128ED AS DateTime), CAST(0x0000AB30012128ED AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (3, N'SỮA DỪA HỮU CƠ ECOMIL GIÚP CHỊ EM LUÔN TƯƠI TRẺ VÀ TRÀN ĐẦY SỨC SỐNG', N'Trong thời gian gần đây, Sữa từ các loại Hạt đang được các chị em đặc biệt quan tâm nhờ thành phần dinh dưỡng cao, an toàn cho sức khỏe và đặc biệt không gây tăng cân khi sử dụng lâu dài. Trên thị trường đang có rất nhiều loại sữa hạt khác nhau như sữa hạnh nhân, óc chó, yến mạch, hazelnut..', N'<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">rong thời gian gần đ&acirc;y,&nbsp;Sữa từ c&aacute;c loại Hạt&nbsp;đang được c&aacute;c chị em đặc biệt quan t&acirc;m nhờ th&agrave;nh phần dinh dưỡng cao, an to&agrave;n cho sức khỏe v&agrave; đặc biệt kh&ocirc;ng g&acirc;y tăng c&acirc;n khi sử dụng l&acirc;u d&agrave;i. Tr&ecirc;n thị trường đang c&oacute; rất nhiều loại sữa hạt kh&aacute;c nhau như sữa hạnh nh&acirc;n, &oacute;c ch&oacute;, yến mạch, hazelnut...</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Thế nhưng bạn đ&atilde; từng nghe n&oacute;i đến&nbsp;sữa dừa (Coconut Milk)&nbsp;chưa? H&atilde;y c&ugrave;ng Organicfood.vn t&igrave;m hiểu về loại sữa n&agrave;y th&ocirc;ng qua sản phẩm&nbsp;sữa dừa hữu cơ Ecomil&nbsp;nh&eacute;! Sữa dừa hữu cơ Ecomil kh&ocirc;ng chứa những chất g&acirc;y dị ứng Sữa dừa hữu cơ Ecomil l&agrave; một trong những loại&nbsp;sữa thực vật organic&nbsp;ho&agrave;n to&agrave;n KH&Ocirc;NG chứa c&aacute;c chất dị ứng c&oacute; trong sữa động vật như: -&nbsp;Gluten:&nbsp;Một dạng Protein dễ g&acirc;y tổn thương đường ruột, dẫn đến t&igrave;nh trạng đau bụng, sụt c&acirc;n, ti&ecirc;u chảy, ch&oacute;ng mặt... -&nbsp;Lactose:&nbsp;Sữa v&agrave; c&aacute;c chế phẩm từ sữa chứa h&agrave;m lượng Lactose nhiều nhất.</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Người c&oacute; thể trạng k&eacute;m dung nạp Lactose sẽ thường bị c&aacute;c triệu chứng về đường ti&ecirc;u h&oacute;a như chướng bụng, đầy hơi, ti&ecirc;u chảy,...</span><br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	&nbsp;</p>
<p style="text-align: center;">
	<img alt="" src="/Uploads/images/5.png" style="width: 660px; height: 344px;" /></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Sữa dừa l&agrave; một loại sữa thực vật quen thuộc kh&ocirc;ng chứa những chất g&acirc;y dị ứng Ch&iacute;nh v&igrave; những đặc điểm n&agrave;y m&agrave; sữa dừa Ecomil đảm bảo an to&agrave;n cho người sử dụng ở mọi lứa tuổi, phụ nữ mang thai, trẻ em tr&ecirc;n 1 tuổi v&agrave; đặc biệt l&agrave; những người c&oacute; thể trạng dị ứng với sữa, k&eacute;m dung nạp Lactose.</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Th&agrave;nh phần thi&ecirc;n nhi&ecirc;n gi&agrave;u dinh dưỡng v&agrave; ứng dụng đa dạng c&ugrave;ng nhiều m&oacute;n ngon Sữa dừa hữu cơ Ecomil với&nbsp;th&agrave;nh phần 100% Organic v&agrave; sử dụng c&ocirc;ng nghệ tiệt tr&ugrave;ng UHT. Sản phẩm được xử l&yacute; ở nhiệt độ cao (135-140 độ C) trong khoảng 2 - 5 gi&acirc;y, sau đ&oacute; l&agrave;m lạnh ngay, </span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">gi&uacute;p giữ lại được tối đa hương vị v&agrave; gi&aacute; trị dinh dưỡng vốn c&oacute; trong sữa. Với th&agrave;nh phần ho&agrave;n to&agrave;n từ nguồn gốc thực vật, đạt ti&ecirc;u chuẩn hữu cơ Ch&acirc;u &Acirc;u, gi&agrave;u dinh dưỡng, vitamin &amp; chất b&eacute;o, sữa dừa Ecomil rất ph&ugrave; hợp để chế biến c&aacute;c m&oacute;n ăn healthy như sinh tố tr&aacute;i c&acirc;y (Smoothie), b&aacute;nh pudding, c&aacute;c loại sauce&hellip;</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Ngo&agrave;i ra loại sữa n&agrave;y c&ograve;n được &aacute;p dụng trong c&aacute;c chế độ ăn ki&ecirc;ng như eatclean, keto... nhằm gi&uacute;p giảm c&acirc;n, l&agrave;m đẹp da, duy tr&igrave; v&oacute;c d&aacute;ng v&agrave; thể lực bền bỉ.</span></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" src="/Uploads/images/ffff37e863d3e79b_47f9c0503c6209b7_19805915772050516185710.jpg" style="width: 580px; height: 858px;" /></span></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Sữa dừa Ecomil sẽ l&agrave; một sản phẩm v&ocirc; c&ugrave;ng th&iacute;ch hợp cho hội chị em quan t&acirc;m đến sức khỏe v&agrave; sắc đẹp. Với dung t&iacute;ch 1 l&iacute;t, dạng hộp giấy tiện lợi, thời gian sử dụng k&eacute;o d&agrave;i từ 5 - 7 ng&agrave;y sau khi mở hộp. Hương vị thơm ngon c&ugrave;ng độ b&eacute;o nhất định, tạo cảm gi&aacute;c dễ chịu uống trực tiếp hoặc pha chế thức uống, nấu những m&oacute;n ăn gia đ&igrave;nh quen thuộc thường ng&agrave;y thay thế cho nước cốt dừa như: t&ocirc;m rim sữa dừa, c&agrave; ri, ếch x&agrave;o nước cốt dừa, c&aacute;c m&oacute;n ch&egrave; ngọt b&eacute;o ngậy</span><br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	&nbsp;</p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" src="/Uploads/images/trai-nghiem-sua-dua-huu-co-ecomil-loai-sua-organic-giup-chi-em-luon-tuoi-tre-dep-dang-va-tran-day-suc-song-12.jpg" style="width: 900px; height: 551px;" /></span></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Biến tấu một ch&uacute;t với m&oacute;n&nbsp;Cơm Saffron C&agrave; Ri G&agrave;&nbsp;n&agrave;o! Sử dụng bao b&igrave; Tetrapak an to&agrave;n cho sức khỏe v&agrave; bảo vệ m&ocirc;i trường Sản phẩm Sữa Dừa Ecomil sử dụng&nbsp;bao b&igrave; Tetrapak&nbsp;với m&agrave;ng gh&eacute;p cản trở tối đa sự x&acirc;m nhập của vi khuẩn b&ecirc;n ngo&agrave;i, tiện lợi cho việc vận chuyển v&agrave; bảo quản ở nhiệt độ thường, kh&ocirc;ng chứa Phthalates v&agrave; BPA (chất cản trở sự ph&aacute;t triển của n&atilde;o bộ).</span><br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<img alt="" src="/Uploads/images/trai-nghiem-sua-dua-huu-co-ecomil-loai-sua-organic-giup-chi-em-luon-tuoi-tre-dep-dang-va-tran-day-suc-song-11.jpg" style="width: 900px; height: 529px;" /><br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Đặc biệt, bao b&igrave; sản phẩm của Ecomil được l&agrave;m từ chất liệu c&oacute; thể t&aacute;i sử dụng nhiều lần g&oacute;p phần bảo vệ m&ocirc;i trường.</span><br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	&nbsp;</p>
', 3, N'5.png', 1, N'khuong', CAST(0x0000AB3001225572 AS DateTime), CAST(0x0000AB3001225572 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (4, N'ĐƯỜNG DỪA HỮU CƠ  Link nguồn ', N'Ở các nước châu Á, đặc biệt là Indonesia, đường dừa đã được thu gom và sản xuất rộng rãi cách đây hàng ngàn năm, nhưng trong thời gian gần đây đường dừa mới trở lên phổ biến và được ưa chuộng nhờ tính lành mạnh, tốt cho sức khỏe mà những loại đường khác không có. Đường dừa, như tên gọi của nó, có nguồn gốc từ cây dừa.
', N'<p style="text-align: center;">
	<img alt="" src="/Uploads/images/5(1).png" style="width: 660px; height: 344px;" /></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Đường dừa hữu cơ c&oacute; nguồn gốc từ đ&acirc;u? Ở c&aacute;c nước ch&acirc;u &Aacute;, đặc biệt l&agrave; Indonesia,&nbsp;đường dừa&nbsp;đ&atilde; được thu gom v&agrave; sản xuất rộng r&atilde;i c&aacute;ch đ&acirc;y h&agrave;ng ng&agrave;n năm, nhưng trong thời gian gần đ&acirc;y đường dừa mới trở l&ecirc;n phổ biến v&agrave; được ưa chuộng nhờ t&iacute;nh l&agrave;nh mạnh, </span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" src="/Uploads/images/la-sao-1535348544-400.jpg" style="width: 400px; height: 563px;" /><img alt="" src="/Uploads/images/trai-nghiem-sua-dua-huu-co-ecomil-loai-sua-organic-giup-chi-em-luon-tuoi-tre-dep-dang-va-tran-day-suc-song-12(1).jpg" style="width: 900px; height: 551px;" /></span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">tốt cho sức khỏe m&agrave; những loại đường kh&aacute;c kh&ocirc;ng c&oacute;.&nbsp;Đường dừa, như t&ecirc;n gọi của n&oacute;, c&oacute; nguồn gốc từ c&acirc;y dừa. Được biết đến t&ecirc;n khoa học l&agrave; Cocos nucifera, loại c&acirc;y n&agrave;y mọc ở nhiều v&ugrave;ng kh&aacute;c nhau tr&ecirc;n thế giới, đặc biệt l&agrave; ở c&aacute;c quốc gia ch&acirc;u &Aacute; v&agrave; c&aacute;c v&ugrave;ng nhiệt đới.</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Loại đường tự nhi&ecirc;n n&agrave;y được lấy từ nhựa nụ hoa cắt của dừa v&agrave; sau đ&oacute; sử dụng n&oacute; theo c&aacute;ch tương tự như đường b&igrave;nh thường.</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Hiện nay để c&oacute; được nguồn thực phẩm&nbsp;đường dừa hữu cơ&nbsp;vừa an to&agrave;n vừa tốt cho sức khỏe của người d&ugrave;ng mọi kh&acirc;u kĩ thuật trồng trọt v&agrave; chăm s&oacute;c đều tu&acirc;n thủ theo những quy định nghi&ecirc;m ngặt v&agrave; được kiểm định chất lượng theo đ&uacute;ng quy định an to&agrave;n quốc gia v&igrave; thế&nbsp;đường dừa hữu cơ&nbsp;l&agrave; nguồn gia vị ho&agrave;n hảo nhất d&agrave;nh cho gia đ&igrave;nh bạn.&nbsp; </span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Đường dừa hữu cơ an to&agrave;n Hiện nay tại thị trường nước ta c&oacute; kh&aacute; nhiều loại&nbsp;Đường dừa hữu cơ&nbsp;được nhập khẩu từ nước ngo&agrave;i với chất lượng v&agrave; gi&aacute; th&agrave;nh kh&aacute;c nhau cho mọi nhu cầu ti&ecirc;u d&ugrave;ng của kh&aacute;ch h&agrave;ng, đường dừa kh&ocirc;ng phải l&agrave; an to&agrave;n tuyệt đối cho sức khỏe nhưng nếu biết c&aacute;ch sử dụng v&agrave; c&acirc;n bằng h&agrave;m lượng đường mỗi ng&agrave;y bạn sẽ nhận được những gi&aacute; trị ho&agrave;n hảo nhất cho ch&iacute;nh m&igrave;nh.&nbsp; </span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Cũng như c&aacute;c loại đường kh&aacute;c,&nbsp;đường dừa&nbsp;c&oacute; thể g&acirc;y ra vấn đề cho bệnh nh&acirc;n tiểu đường nếu d&ugrave;ng qu&aacute; nhiều do fructose được t&igrave;m thấy trong loại đường tự nhi&ecirc;n n&agrave;y. Mặc d&ugrave; nồng độ fructose trong đường dừa thấp hơn c&aacute;c loại đường kh&aacute;c, nhưng n&oacute; vẫn c&oacute; thể ph&acirc;n chia th&agrave;nh c&aacute;c loại đường đơn giản v&agrave; sẽ g&acirc;y ra những đột biến nguy hiểm về lượng đường trong m&aacute;u v&agrave; độ nhạy insulin thấp hơn. Qu&aacute; tr&igrave;nh n&agrave;y phần n&agrave;o được b&ugrave; đắp bởi sự hiện diện của inulin, một loại chất xơ cụ thể được t&igrave;m thấy trong đường dừa, nhưng bạn vẫn cần kiểm so&aacute;t chặt chẽ liều lượng sử dụng. Ăn qu&aacute; nhiều đường, cơ thể sẽ kh&ocirc;ng thể chuyển h&oacute;a hết th&agrave;nh năng lượng hữu &iacute;ch, dẫn đến một số carbohydrate [fructose] được lưu trữ dưới dạng chất b&eacute;o.</span></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<img alt="" src="/Uploads/images/rau-rung-tay-ninh-e1551342709645.jpg" style="width: 500px; height: 310px;" /></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Việc n&agrave;y diễn ra thường xuy&ecirc;n sẽ l&agrave;m cơ thể bạn bị lắng đọng mỡ thừa, dẫn đến tăng c&acirc;n. Đường dừa cũng c&oacute; h&agrave;m lượng calo kh&aacute; cao,&#39; đ&acirc;y kh&ocirc;ng phải l&agrave; điều tốt cho những người cố gắng giảm c&acirc;n v&agrave; duy tr&igrave; số lượng calo nghi&ecirc;m ngặt.</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">H&agrave;m lượng chất b&eacute;o lắng đọng v&agrave; nồng độ đường cao l&agrave;m chậm sự trao đổi chất. Với một lượng nhỏ, đường dừa ho&agrave;n to&agrave;n l&agrave;nh mạnh v&agrave; tốt cho khỏe mạnh, đồng thời c&oacute; lợi cho hoạt động trao đổi chất, nhưng với số lượng lớn, n&oacute; sẽ c&oacute; t&aacute;c dụng ngược lại.</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">Ăn qu&aacute; nhiều đường, cơ thể sẽ kh&ocirc;ng thể chuyển h&oacute;a hết th&agrave;nh năng lượng hữu &iacute;ch, dẫn đến một số carbohydrate [fructose] được lưu trữ dưới dạng chất b&eacute;o. Việc n&agrave;y diễn ra thường xuy&ecirc;n sẽ l&agrave;m cơ thể bạn bị lắng đọng mỡ thừa, dẫn đến tăng c&acirc;n</span></p>
<p style="text-align: center;">
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;"><img alt="" src="/Uploads/images/about.jpg" style="width: 300px; height: 200px;" /></span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">. Đường dừa cũng c&oacute; h&agrave;m lượng calo kh&aacute; cao, đ&acirc;y kh&ocirc;ng phải l&agrave; điều tốt cho những người cố gắng giảm c&acirc;n v&agrave; duy tr&igrave; số lượng calo nghi&ecirc;m ngặt. Bạn n&ecirc;n sử dụng đường hợp l&yacute; trong mọi bữa ăn để hạn chế những nguy hại đối với sức khỏe của ch&iacute;nh m&igrave;nh, h&atilde;y tin tưởng v&agrave; li&ecirc;n hệ với ch&uacute;ng t&ocirc;i để nhận tư vấn v&agrave; tham khảo những loại&nbsp;đường dừa hữu cơ&nbsp;hiện nay cho nhu cầu của m&igrave;nh, ch&uacute;ng t&ocirc;i sẽ giới thiệu chi tiết v&agrave; c&oacute; những hướng dẫn cụ thể nhất gi&uacute;p bạn thay đổi th&oacute;i quen ăn uống l&agrave;nh mạnh hơn cho gia đ&igrave;nh m&igrave;nh</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">. Sản phẩm hữu cơ bao giờ cũng c&oacute; gi&aacute; th&agrave;nh cao hơn thị trường ti&ecirc;u d&ugrave;ng th&ocirc;ng thường nhưng đổi lại chất lượng lu&ocirc;n</span></p>
<p style="text-align: center;">
	<span style="color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;">được kiểm chứng v&agrave; đảm bảo tuyệt đối cho sức khỏe người d&ugrave;ng, v&igrave; thế đừng đắn đo cho ch&iacute;nh sức khỏe của m&igrave;nh bạn nh&eacute;, h&atilde;y đồng h&agrave;nh c&ugrave;ng organic nhất định bạn sẽ thật h&agrave;i l&ograve;ng!</span><br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	<br style="box-sizing: border-box; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; outline: none !important;" />
	&nbsp;</p>
', 1, N'trai-nghiem-sua-dua-huu-co-ecomil-loai-sua-organic-giup-chi-em-luon-tuoi-tre-dep-dang-va-tran-day-suc-song-5.jpg', 1, N'khuong', CAST(0x0000AB3001238B3B AS DateTime), CAST(0x0000AB3001238B3B AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (5, N'Trái cây hữu cơ', N'Từ ngày 10/12 đến ngày 5/1, Organicfood diễn ra chương trình ưu đãi hấp dẫn:Khi mua 1 sản phẩm Elee bất kỳ, quý khách hàng sẽ được mua dung dịch vệ sinh hàng ngày.', N'<p style="text-align: center;">
	<img alt="" src="/Uploads/images/image_1%20(25).jpg" style="width: 232px; height: 351px;" /></p>
', 1, N'product-6.jpg', 1, N'khuong', CAST(0x0000AB30016BEF30 AS DateTime), CAST(0x0000AB30016BEF30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (6, N'Tổng hợp trái', N'Từ ngày 10/12 đến ngày 5/1, Organicfood diễn ra chương trình ưu đãi hấp dẫn:Khi mua 1 sản phẩm Elee bất kỳ, quý khách hàng sẽ được mua dung dịch vệ sinh hàng ngày.', N'<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Những năm gần đ&acirc;y, khi người ti&ecirc;u d&ugrave;ng quan t&acirc;m đến sức khỏe nhiều hơn.</span></p>
<p style="text-align: center;">
	<img alt="" src="/Uploads/images/image_1%20(45).jpg" style="width: 400px; height: 267px;" /></p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Đường tinh luyện dần được thay thế bởi những chất tạo ngọt kh&aacute;c - tự nhi&ecirc;n v&agrave; an t&ograve;an hơn. Một trong số đ&oacute; l&agrave; đường dừa. Vậy đường dừa hữu cơ kh&aacute;c biệt g&igrave; so với đường th&ocirc;ng thường?</span></p>
', 1, N'10.jpg', 1, N'khuong', CAST(0x0000AB30016B5D5B AS DateTime), CAST(0x0000AB30016B5D5B AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (7, N'Vài cái nữa', N'Từ ngày 10/12 đến ngày 5/1, Organicfood diễn ra chương trình ưu đãi hấp dẫn:Khi mua 1 sản phẩm Elee bất kỳ, quý khách hàng sẽ được mua dung dịch vệ sinh hàng ngày.', N'<p>
	And</p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Những năm gần đ&acirc;y, khi người ti&ecirc;u d&ugrave;ng quan t&acirc;m đến sức khỏe nhiều hơn</span></p>
<p>
	&nbsp;</p>
<p style="text-align: right;">
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;"><img alt="" src="/Uploads/images/xoai-cat-chu-270x270.jpg" style="width: 270px; height: 270px;" /></span></p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">. Đường tinh luyện dần được thay thế bởi những chất tạo ngọt kh&aacute;c </span></p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">- tự nhi&ecirc;n v&agrave; an t&ograve;an hơn. </span></p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Một trong số đ&oacute; l&agrave; đường dừa. Vậy đường dừa hữu cơ kh&aacute;c biệt g&igrave; so với đường th&ocirc;ng thường?</span></p>
', 1, N'image_1%20(27).jpg', 1, N'khuong', CAST(0x0000AB30016BE12C AS DateTime), CAST(0x0000AB30016BE12C AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (8, N'Từ ngày 10/12 đến ngày 5/1', N'Từ ngày 10/12 đến ngày 5/1, Organicfood diễn ra chương trình ưu đãi hấp dẫn:Khi mua 1 sản phẩm Elee bất kỳ, quý khách hàng sẽ được mua dung dịch vệ sinh hàng ngày.', N'<p>
	Yosshii</p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Từ ng&agrave;y 10/12 đến ng&agrave;y 5/1, Organicfood diễn ra chương tr&igrave;nh ưu đ&atilde;i hấp dẫn:</span></p>
<p>
	<img alt="" src="/Uploads/images/rau-rung-tay-ninh-e1551342709645.jpg" style="width: 500px; height: 310px;" /></p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Khi mua 1 sản phẩm Elee bất kỳ, qu&yacute; kh&aacute;ch h&agrave;ng sẽ được mua dung dịch vệ sinh h&agrave;ng ng&agrave;y.</span></p>
<p>
	&Aacute; &agrave; &agrave; &agrave; a</p>
', 1, N'image_1%20(28).jpg', 1, N'khuong', CAST(0x0000AB30016B877F AS DateTime), CAST(0x0000AB30016B877F AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (9, N'カヅキBIGWAVE - SHINYWAVE', N'SHINYWAVE', N'<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Ở c&aacute;c nước ch&acirc;u &Aacute;, đặc biệt l&agrave; Indonesia,</span></p>
<p>
	&nbsp;</p>
<p style="text-align: center;">
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;"><img alt="" src="/Uploads/images/trai-nghiem-sua-dua-huu-co-ecomil-loai-sua-organic-giup-chi-em-luon-tuoi-tre-dep-dang-va-tran-day-suc-song-12(1).jpg" style="width: 700px; height: 429px;" /></span></p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">đường dừa đ&atilde; được thu gom v&agrave; sản xuất rộng r&atilde;i c&aacute;ch đ&acirc;y h&agrave;ng ng&agrave;n năm, nhưng trong thời gian gần đ&acirc;y đường dừa mới trở l&ecirc;n phổ biến v&agrave; được ưa chuộng nhờ t&iacute;nh l&agrave;nh mạnh, tốt cho sức khỏe m&agrave; những loại đường kh&aacute;c kh&ocirc;ng c&oacute;. </span></p>
<p>
	<span style="color: rgb(133, 135, 150); font-family: Nunito, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Noto Color Emoji&quot;; font-size: 16px;">Đường dừa, như t&ecirc;n gọi của n&oacute;, c&oacute; nguồn gốc từ c&acirc;y dừa.</span></p>
', 2, N'partner-2.png', 1, N'khuong', CAST(0x0000AB30016AD865 AS DateTime), CAST(0x0000AB30016AD865 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (10, N'𝐹𝑙𝑎𝑡 𝐼𝑠 𝐽𝑢𝑠𝑡𝑖𝑐𝑒', N'𝐹𝑙𝑎𝑡 𝐼𝑠 𝐽𝑢𝑠𝑡𝑖𝑐𝑒 description', N'<p>
	Thịt&nbsp;</p>
<p>
	&nbsp;</p>
<p style="text-align: center;">
	<img alt="" src="/Uploads/images/product-17.jpg" style="width: 200px; height: 160px;" /></p>
', 1, N'5.png', 1, N'khuong', CAST(0x0000AB30016BC3E8 AS DateTime), CAST(0x0000AB30016BC3E8 AS DateTime))
SET IDENTITY_INSERT [dbo].[post] OFF
SET IDENTITY_INSERT [dbo].[setting] ON 

INSERT [dbo].[setting] ([id_setting], [name], [des], [value], [username], [modified]) VALUES (1, N'LIMIT_ADMIN', N'Phân Trang (Admin):', N'2', N'admin', CAST(0x0000AB300177CD87 AS DateTime))
INSERT [dbo].[setting] ([id_setting], [name], [des], [value], [username], [modified]) VALUES (2, N'LIMIT_HOME', N'Phân Trang (Home):', N'8', N'admin', CAST(0x0000AB30016814C0 AS DateTime))
SET IDENTITY_INSERT [dbo].[setting] OFF
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (1, 1, N'bg_1.jpg', N'We serve Fresh Vegestables & Fruits 1', 1, 1, 1, N'admin', CAST(0x0000AB30014E88A0 AS DateTime))
INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (2, 2, N'bg_2.jpg', N'We serve Fresh Vegestables & Fruits 2', 2, 2, 1, N'admin', CAST(0x0000AB30014E88A0 AS DateTime))
INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (3, 1, N'bg_3.jpg', N'We serve Fresh Vegestables & Fruits 3', 1, 1, 1, N'admin', CAST(0x0000AB30014E88A0 AS DateTime))
INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (4, 2, N'bg_4.jpg', N'We serve Fresh Vegestables & Fruits 4', 3, 3, 1, N'admin', CAST(0x0000AB30014E88A0 AS DateTime))
SET IDENTITY_INSERT [dbo].[slider] OFF
ALTER TABLE [dbo].[food] ADD  CONSTRAINT [DF_food_price]  DEFAULT ((0)) FOR [price]
GO
ALTER TABLE [dbo].[food] ADD  CONSTRAINT [DF_food_price_promo]  DEFAULT ((0)) FOR [price_promo]
GO
ALTER TABLE [dbo].[food] ADD  CONSTRAINT [DF_food_percent_promo]  DEFAULT ((0)) FOR [percent_promo]
GO
ALTER TABLE [dbo].[food] ADD  CONSTRAINT [DF_food_rating]  DEFAULT ((0)) FOR [rating]
GO
ALTER TABLE [dbo].[food] ADD  CONSTRAINT [DF_food_sold]  DEFAULT ((0)) FOR [sold]
GO
ALTER TABLE [dbo].[food] ADD  CONSTRAINT [DF_food_type]  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[food] ADD  CONSTRAINT [DF_food_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[food_type] ADD  CONSTRAINT [DF_food_type_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[comment]  WITH CHECK ADD  CONSTRAINT [FK_comment_post] FOREIGN KEY([post_id])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [FK_comment_post]
GO
ALTER TABLE [dbo].[food]  WITH CHECK ADD  CONSTRAINT [FK_food_food_type] FOREIGN KEY([type])
REFERENCES [dbo].[food_type] ([type_id])
GO
ALTER TABLE [dbo].[food] CHECK CONSTRAINT [FK_food_food_type]
GO
ALTER TABLE [dbo].[food]  WITH CHECK ADD  CONSTRAINT [FK_food_member] FOREIGN KEY([username])
REFERENCES [dbo].[member] ([username])
GO
ALTER TABLE [dbo].[food] CHECK CONSTRAINT [FK_food_member]
GO
ALTER TABLE [dbo].[food_type]  WITH CHECK ADD  CONSTRAINT [FK_food_type_member] FOREIGN KEY([username])
REFERENCES [dbo].[member] ([username])
GO
ALTER TABLE [dbo].[food_type] CHECK CONSTRAINT [FK_food_type_member]
GO
ALTER TABLE [dbo].[log_activity]  WITH CHECK ADD  CONSTRAINT [FK_log_activity_member] FOREIGN KEY([username])
REFERENCES [dbo].[member] ([username])
GO
ALTER TABLE [dbo].[log_activity] CHECK CONSTRAINT [FK_log_activity_member]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_customer] FOREIGN KEY([cus_username])
REFERENCES [dbo].[customer] ([username])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_customer]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_member] FOREIGN KEY([username])
REFERENCES [dbo].[member] ([username])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_member]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_food] FOREIGN KEY([food_id])
REFERENCES [dbo].[food] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_food]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_order]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_post_food_type] FOREIGN KEY([type])
REFERENCES [dbo].[food_type] ([type_id])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_post_food_type]
GO
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_post_member] FOREIGN KEY([username])
REFERENCES [dbo].[member] ([username])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_post_member]
GO
ALTER TABLE [dbo].[relative_food]  WITH CHECK ADD  CONSTRAINT [FK_relative_food_food] FOREIGN KEY([food1_id])
REFERENCES [dbo].[food] ([id])
GO
ALTER TABLE [dbo].[relative_food] CHECK CONSTRAINT [FK_relative_food_food]
GO
ALTER TABLE [dbo].[relative_food]  WITH CHECK ADD  CONSTRAINT [FK_relative_food_food1] FOREIGN KEY([food2_id])
REFERENCES [dbo].[food] ([id])
GO
ALTER TABLE [dbo].[relative_food] CHECK CONSTRAINT [FK_relative_food_food1]
GO
ALTER TABLE [dbo].[setting]  WITH CHECK ADD  CONSTRAINT [FK_setting_member] FOREIGN KEY([username])
REFERENCES [dbo].[member] ([username])
GO
ALTER TABLE [dbo].[setting] CHECK CONSTRAINT [FK_setting_member]
GO
ALTER TABLE [dbo].[slider]  WITH CHECK ADD  CONSTRAINT [FK_slider_food] FOREIGN KEY([id_object])
REFERENCES [dbo].[food] ([id])
GO
ALTER TABLE [dbo].[slider] CHECK CONSTRAINT [FK_slider_food]
GO
ALTER TABLE [dbo].[slider]  WITH CHECK ADD  CONSTRAINT [FK_slider_post] FOREIGN KEY([id_object])
REFERENCES [dbo].[post] ([post_id])
GO
ALTER TABLE [dbo].[slider] CHECK CONSTRAINT [FK_slider_post]
GO
