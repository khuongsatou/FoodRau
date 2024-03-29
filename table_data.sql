USE [Rau]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[food]    Script Date: 12/26/2019 10:57:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[description] [text] NULL,
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
/****** Object:  Table [dbo].[food_type]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[log_activity]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[member]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[order]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[post]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[relative_food]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[setting]    Script Date: 12/26/2019 10:57:30 PM ******/
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
/****** Object:  Table [dbo].[slider]    Script Date: 12/26/2019 10:57:30 PM ******/
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
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong1', N'123', N'khuong 1', N'0356241963', N'yoshi@gmail.com', N'a12357', 5, 4, CAST(9.00 AS Decimal(10, 2)), 0, CAST(0x0000AB2F003AB8C3 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong10', N'123', N'khuong 10', N'0356241972', N'yoshi@gmail.com', N'a132', 3, 5, CAST(8.00 AS Decimal(10, 2)), 0, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong11', N'123', N'khuong 11', N'0356241973', N'yoshi@gmail.com', N'a133', 1, 2, CAST(3.00 AS Decimal(10, 2)), 0, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong12', N'123', N'khuong 12', N'0356241974', N'yoshi@gmail.com', N'a134', 1, 4, CAST(5.00 AS Decimal(10, 2)), 0, CAST(0x0000AB2F00B2E149 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong13', N'123', N'khuong 13', N'0356241975', N'yoshi@gmail.com', N'a135', 3, 2, CAST(5.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong14', N'123', N'khuong 14', N'0356241976', N'yoshi@gmail.com', N'a136', 5, 1, CAST(6.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong15', N'123', N'khuong 15', N'0356241977', N'yoshi@gmail.com', N'a137', 2, 1, CAST(3.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong16', N'123', N'khuong 16', N'0356241978', N'yoshi@gmail.com', N'a138', 3, 4, CAST(7.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong2', N'123', N'khuong 2', N'0356241964', N'yoshi@gmail.com', N'a124', 4, 1, CAST(5.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong3', N'123', N'khuong 3', N'0356241965', N'yoshi@gmail.com', N'a125', 3, 5, CAST(8.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong4', N'123', N'khuong 4', N'0356241966', N'yoshi@gmail.com', N'a126', 3, 3, CAST(6.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong5', N'123', N'khuong 5', N'0356241967', N'yoshi@gmail.com', N'a127', 2, 4, CAST(6.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong6', N'123', N'khuong 6', N'0356241968', N'yoshi@gmail.com', N'a128', 2, 4, CAST(6.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong7', N'123', N'khuong 7', N'0356241969', N'yoshi@gmail.com', N'a129', 3, 5, CAST(8.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong8', N'123', N'khuong 8', N'0356241970', N'yoshi@gmail.com', N'a130', 5, 1, CAST(6.00 AS Decimal(10, 2)), 1, CAST(0x0000AB2F002746B0 AS DateTime))
INSERT [dbo].[customer] ([username], [password], [name], [phone], [email], [address], [num_order], [num_successful_order], [sum], [status], [created]) VALUES (N'khuong9', N'123', N'khuong 9', N'0356241971', N'yoshi@gmail.com', N'a131', 2, 3, CAST(5.00 AS Decimal(10, 2)), 0, CAST(0x0000AB2F002746B0 AS DateTime))
SET IDENTITY_INSERT [dbo].[food] ON 

INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (1, N'Tomatoe', N'Description Tomatoe', CAST(365.00 AS Decimal(10, 2)), CAST(345.00 AS Decimal(10, 2)), N'product-1.jpg', N'product-1.jpg', N'gam', CAST(0.40 AS Decimal(2, 2)), 8, 5, CAST(0.30 AS Decimal(2, 2)), 4, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (2, N'Stawberry', N'Description Stawberry', CAST(716.00 AS Decimal(10, 2)), CAST(660.00 AS Decimal(10, 2)), N'product-2.jpg', N'product-2.jpg', N'gam', CAST(0.50 AS Decimal(2, 2)), 9, 5, CAST(0.30 AS Decimal(2, 2)), 2, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (3, N'Bell Perpper', N'Description Bell Perpper', CAST(657.00 AS Decimal(10, 2)), CAST(593.00 AS Decimal(10, 2)), N'product-3.jpg', N'product-3.jpg', N'gam', CAST(0.30 AS Decimal(2, 2)), 3, 8, CAST(0.40 AS Decimal(2, 2)), 2, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (4, N'Green Beans', N'Description Green Beans', CAST(810.00 AS Decimal(10, 2)), CAST(771.00 AS Decimal(10, 2)), N'product-4.jpg', N'product-4.jpg', N'gam', CAST(0.10 AS Decimal(2, 2)), 4, 3, CAST(0.30 AS Decimal(2, 2)), 4, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (5, N'Tomatoe', N'Description Tomatoe', CAST(408.00 AS Decimal(10, 2)), CAST(388.00 AS Decimal(10, 2)), N'product-5.jpg', N'product-5.jpg', N'gam', CAST(0.40 AS Decimal(2, 2)), 1, 10, CAST(0.00 AS Decimal(2, 2)), 4, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (6, N'Bell Perpper', N'Description Bell Perpper', CAST(282.00 AS Decimal(10, 2)), CAST(281.00 AS Decimal(10, 2)), N'product-6.jpg', N'product-6.jpg', N'gam', CAST(0.50 AS Decimal(2, 2)), 7, 7, CAST(0.90 AS Decimal(2, 2)), 2, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (7, N'Bell Perpper', N'Description Bell Perpper', CAST(252.00 AS Decimal(10, 2)), CAST(230.00 AS Decimal(10, 2)), N'product-7.jpg', N'product-7.jpg', N'gam', CAST(0.50 AS Decimal(2, 2)), 2, 10, CAST(0.50 AS Decimal(2, 2)), 2, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (8, N'Bell Perpper', N'Description Bell Perpper', CAST(16.00 AS Decimal(10, 2)), CAST(15.00 AS Decimal(10, 2)), N'product-8.jpg', N'product-8.jpg', N'gam', CAST(0.30 AS Decimal(2, 2)), 5, 3, CAST(0.50 AS Decimal(2, 2)), 3, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (9, N'Stawberry', N'Description Stawberry', CAST(30.00 AS Decimal(10, 2)), CAST(28.00 AS Decimal(10, 2)), N'product-9.jpg', N'product-9.jpg', N'gam', CAST(0.60 AS Decimal(2, 2)), 1, 5, CAST(0.50 AS Decimal(2, 2)), 3, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (10, N'Tomatoe', N'Description Tomatoe', CAST(492.00 AS Decimal(10, 2)), CAST(457.00 AS Decimal(10, 2)), N'product-10.jpg', N'product-10.jpg', N'gam', CAST(0.00 AS Decimal(2, 2)), 7, 8, CAST(0.40 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (11, N'Bell Perpper', N'Description Bell Perpper', CAST(412.00 AS Decimal(10, 2)), CAST(403.00 AS Decimal(10, 2)), N'product-11.jpg', N'product-11.jpg', N'gam', CAST(0.70 AS Decimal(2, 2)), 5, 10, CAST(0.10 AS Decimal(2, 2)), 3, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (12, N'Tomatoe', N'Description Tomatoe', CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'product-12.jpg', N'product-12.jpg', N'gam', CAST(0.30 AS Decimal(2, 2)), 6, 8, CAST(0.10 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (13, N'Tomatoe', N'Description Tomatoe', CAST(577.00 AS Decimal(10, 2)), CAST(524.00 AS Decimal(10, 2)), N'product-13.jpg', N'product-13.jpg', N'gam', CAST(0.30 AS Decimal(2, 2)), 8, 9, CAST(0.20 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (14, N'Stawberry', N'Description Stawberry', CAST(858.00 AS Decimal(10, 2)), CAST(854.00 AS Decimal(10, 2)), N'product-14.jpg', N'product-14.jpg', N'gam', CAST(0.50 AS Decimal(2, 2)), 4, 3, CAST(0.50 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (15, N'Tomatoe', N'Description Tomatoe', CAST(722.00 AS Decimal(10, 2)), CAST(672.00 AS Decimal(10, 2)), N'product-15.jpg', N'product-15.jpg', N'gam', CAST(0.20 AS Decimal(2, 2)), 10, 8, CAST(0.70 AS Decimal(2, 2)), 3, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (16, N'Bell Perpper', N'Description Bell Perpper', CAST(857.00 AS Decimal(10, 2)), CAST(777.00 AS Decimal(10, 2)), N'product-16.jpg', N'product-16.jpg', N'gam', CAST(0.10 AS Decimal(2, 2)), 2, 3, CAST(0.00 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (17, N'Green Beans', N'Description Green Beans', CAST(426.00 AS Decimal(10, 2)), CAST(425.00 AS Decimal(10, 2)), N'product-17.jpg', N'product-17.jpg', N'gam', CAST(0.20 AS Decimal(2, 2)), 6, 6, CAST(0.70 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (18, N'1', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(1.20 AS Decimal(10, 2)), N'17a4f276-847b-409f-815a-4a09c1a2ceaeCheckChacracter.png', N'0747cbec-2549-448a-a88b-98f698b09652g.png', N'1', CAST(0.20 AS Decimal(2, 2)), 1, 0, CAST(0.00 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2900BCD5C6 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (21, N'12323', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(99.00 AS Decimal(10, 2)), N'3854ec2d-b8db-4c12-8a6a-7b4e886a63e3g.png', N'aa01093b-8b3c-4770-8998-e0e7b48caa59abc.png', N'1', CAST(0.00 AS Decimal(2, 2)), 1, 0, CAST(0.00 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2900DD31A7 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (22, N'122', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'9510abab-d41b-4e60-8e27-f5825f0e89c2Fillter.png', N'9f32789b-e556-4f93-9161-b50cb0b711ecabc.png', N'1', CAST(0.00 AS Decimal(2, 2)), 1, 0, CAST(0.02 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2900E1C0B9 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (23, N'1223', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'98c3c377-db4f-421d-85e0-0ef9b75cb080CheckChacracter.png', N'9589a24b-71fa-4c4b-bc8b-5cc7278e8150abc.png', N'1', CAST(0.00 AS Decimal(2, 2)), 1, 0, CAST(0.00 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2900E34E7C AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (24, N'2232', N'2', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'90f0b2b7-a1af-42db-8304-a9e2428e85caLighthouse.jpg', N'eb3bbd61-7807-440d-a51c-b4957fbf36deblog.png', N'2', CAST(0.01 AS Decimal(2, 2)), 1, 0, CAST(0.00 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2900E3E84D AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (25, N'121212', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'92874724-cf77-4aca-b142-9750d1632884Lighthouse.jpg', N'61e1196c-c9d7-4dd0-a907-0b619ca8211eDesert.jpg', N'1', CAST(0.01 AS Decimal(2, 2)), 1, 0, CAST(0.01 AS Decimal(2, 2)), 1, 0, N'khuong', CAST(0x0000AB2900E4E67F AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (26, N'112212', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'a31ac194-b8f1-4f3c-bf32-863d4c314a64KiemTraLaSo.png', N'e1a11ce6-1520-4ed5-a44b-e444fd67e1b8abc.png', N'1', CAST(0.01 AS Decimal(2, 2)), 1, 0, CAST(0.01 AS Decimal(2, 2)), 1, 0, N'khuong', CAST(0x0000AB2900E5FB71 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (27, N'2323', N'232', CAST(23.00 AS Decimal(10, 2)), CAST(17.71 AS Decimal(10, 2)), N'667ae3a1-b099-4adf-9a3c-8cb18b47102aCheckChacracter.png', N'1fff6c4e-8f4b-4444-bb9c-8d0f247f34efg.png', N'23', CAST(0.23 AS Decimal(2, 2)), 2, 0, CAST(0.23 AS Decimal(2, 2)), 2, 0, N'khuong', CAST(0x0000AB2901019C48 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (28, N'21', N'12', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'cac3d3ca-5274-4c42-82dd-9c3aa38c9236CheckChacracter.png', N'263045ad-695f-40d1-b7d1-aae0d0711ac1Fillter.png', N'121', CAST(0.01 AS Decimal(2, 2)), 1, 0, CAST(0.01 AS Decimal(2, 2)), 1, 0, N'khuong', CAST(0x0000AB290101DF9D AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (29, N'121', N'1121', CAST(12.00 AS Decimal(10, 2)), CAST(10.56 AS Decimal(10, 2)), N'c48c22f9-d489-44ed-8a44-d9a8eb199085g.png', N'16a9204f-813b-47d9-97a6-fad7122716d3Fillter.png', N'1212', CAST(0.12 AS Decimal(2, 2)), 2, 0, CAST(0.12 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB2901060181 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (30, N'nguyễn Văn Khương', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'991e14c8-4b78-4841-8b92-9bb2118a7ecaCheckChacracter.png', N'cec8bc5d-08df-46b8-809b-2de6c78e6296Fillter.png', N'1', CAST(0.01 AS Decimal(2, 2)), 2, 0, CAST(0.01 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB290107257C AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (31, N'a', N'a22', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'cdf4bf4a-ab70-442d-84ee-4c96d6bc8693Ctsp.png', N'38484b23-0eb5-45ee-9cdc-51dff9ea030cg.png', N'q', CAST(0.01 AS Decimal(2, 2)), 1, 0, CAST(0.01 AS Decimal(2, 2)), 1, 1, N'khuong', CAST(0x0000AB29010E80DE AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (32, N'1233', N'1', CAST(1.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'6c35839c-2a76-4b73-b042-4b972907f37eCtsp.png', N'cb59f39c-d2dc-4d2e-8403-60da4f215c9cRegix.png', N'1', CAST(0.01 AS Decimal(2, 2)), 1, 0, CAST(0.01 AS Decimal(2, 2)), 1, 0, N'khuong', CAST(0x0000AB290108CA2E AS DateTime))
SET IDENTITY_INSERT [dbo].[food] OFF
SET IDENTITY_INSERT [dbo].[food_type] ON 

INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (1, N'Vegetables 1', N'product-1.jpg', 1, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (2, N'Fruits 2', N'product-2.jpg', 2, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (3, N'Juice 3', N'product-3.jpg', 3, 1, N'khuong', CAST(0x0000AB2400000000 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (4, N'Dried 4', N'product-4.jpg', 4, 1, N'khuong', CAST(0x0000AB2400F5219B AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (5, N'Dried5', N'product-5.jpg', 5, 1, N'khuong', CAST(0x0000AB2400EF647D AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (6, N'cá', N'282c2ec6-989a-4a8b-a4d7-ba9f8860dfa5Ctsp.png', 2, 1, N'khuong', CAST(0x0000AB28011D0F73 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (7, N'nguyễn Văn Khương', N'3e1be43a-1e79-449d-b5bd-8a04bb17bc51abc.png', 1, 1, N'khuong', CAST(0x0000AB28011DB434 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (8, N'23', N'', 2, 1, N'khuong', CAST(0x0000AB280179FBF0 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (9, N'JYui', N'203aa4b7-7cd7-43f8-8424-50dab396c28bg.png', 1, 1, N'khuong', CAST(0x0000AB280181A1C0 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (10, N'JYsui12343432', N'9dd63e3d-5daf-4f32-9294-14013cf4830eFillter.png', 1, 1, N'khuong', CAST(0x0000AB2801828745 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (11, N'dfdf', N'a4953167-6338-4902-ae79-be90e6c3f5bcabc.png', 3, 0, N'khuong', CAST(0x0000AB28018A0A57 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (12, N'nguyễn Văn Khươn', N'24ead416-b31d-47ab-9905-812288dba838Ctsp.png', 1, 0, N'khuong', CAST(0x0000AB28018AEF83 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_img], [type_pos], [status], [username], [modified]) VALUES (13, N'232323', N'79ffa6ef-ea78-480d-be3e-983a636f386a79704082_2421672331478003_2874315891145703424_o.jpg', 23, 1, N'khuong', CAST(0x0000AB2E0181DC87 AS DateTime))
SET IDENTITY_INSERT [dbo].[food_type] OFF
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'2323', N'202cb962ac59075b964b07152d234b70', N'nguyễn Văn Khương1', N'yo232@gmail.com', N'0356241965', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'23231', N'202cb962ac59075b964b07152d234b70', N'nguyễn Văn Khương', N'Jyui2@gmail.com', N'0356232322', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'23232', N'202cb962ac59075b964b07152d234b70', N'JYui', N'Jy3ui@gmail.com', N'0123456789', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'2323223sd', N'202cb962ac59075b964b07152d234b70', N'JYui', N'yo23@gmail.com', N'0356241233', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'admin', N'202cb962ac59075b964b07152d234b70', N'Nguyễn Văn Khương', N'yoshi@gmail.com', N'0356241966', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong', N'123', N'JYui', N'Jyui@gmail.com', N'0356241964', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong1', N'202cb962ac59075b964b07152d234b70', N'nguyễn Văn Khương', N'yo23@gmail.com', N'0356241963', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong10', N'131', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong11', N'132', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong12', N'133', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong123', N'202cb962ac59075b964b07152d234b70', N'nguyen', N'yoshi240499@gmail.com', N'0356241963', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong13', N'134', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong2', N'123', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong234', N'd41d8cd98f00b204e9800998ecf8427e', N'knam', N'yo232@gmail.com', N'0356241965', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong3', N'124', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong4', N'125', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong5', N'126', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong51234', N'202cb962ac59075b964b07152d234b70', N'JYui', N'yo2322@gmail.com', N'0234567899', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong6', N'127', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong7', N'128', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong8', N'129', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong9', N'130', N'JYui', N'Jyui@gmail.com', N'0356241964', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuongabc', N'202cb962ac59075b964b07152d234b70', N'nguyễn Văn Khương', N'Jyui2223@gmail.com', N'0356241973', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuongabc1', N'202cb962ac59075b964b07152d234b70', N'nguyễn Văn Khương', N'yo231@gmail.com', N'0234567892', 0, 1)
SET IDENTITY_INSERT [dbo].[order] ON 

INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (1, N'khuong 1', N'0306171362', N'123', 5, CAST(6480.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (2, N'khuong 2', N'0306171362', N'124', 5, CAST(5769.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (3, N'khuong 3', N'0306171362', N'125', 3, CAST(7314.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (4, N'khuong 4', N'0306171362', N'126', 5, CAST(2734.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (5, N'khuong 5', N'0306171362', N'127', 1, CAST(6838.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (6, N'khuong 6', N'0306171362', N'128', 2, CAST(6627.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (7, N'khuong 7', N'0306171362', N'129', 5, CAST(4756.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (8, N'khuong 8', N'0306171362', N'130', 0, CAST(1044.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (9, N'khuong 9', N'0306171362', N'131', 5, CAST(3424.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (10, N'khuong 10', N'0306171362', N'132', 0, CAST(3606.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (11, N'khuong 11', N'0306171362', N'133', 0, CAST(7322.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (12, N'khuong 12', N'0306171362', N'134', 1, CAST(1178.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (13, N'khuong 13', N'0306171362', N'135', 5, CAST(4926.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), N'khuong1')
INSERT [dbo].[order] ([order_id], [cus_name], [cus_phone], [cus_add], [quan], [sum], [status], [username], [modified], [created], [cus_username]) VALUES (14, N'khuong 14', N'0306171362', N'136', 4, CAST(7404.00 AS Decimal(10, 2)), 1, N'khuong', CAST(0x0000AB2F00B58C90 AS DateTime), CAST(0x0000AB2F00B58C90 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[order] OFF
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (1, 1, CAST(4.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (1, 2, CAST(232.00 AS Decimal(10, 2)), N'gam', CAST(2323.00 AS Decimal(10, 2)), CAST(2323.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (2, 2, CAST(700.00 AS Decimal(10, 2)), N'gam', CAST(10023.00 AS Decimal(10, 2)), CAST(2323.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (2, 3, CAST(1.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (3, 1, CAST(7.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(7000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (3, 2, CAST(8.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(8000.00 AS Decimal(10, 2)))
INSERT [dbo].[order_detail] ([order_id], [food_id], [quan], [unit], [price], [total]) VALUES (3, 3, CAST(3.00 AS Decimal(10, 2)), N'gam', CAST(1000.00 AS Decimal(10, 2)), CAST(3000.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (1, N'title 1', N'short_des 1', N'des 1', 2, N'image_1 (1).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2601617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (2, N'title 2', N'short_des 3', N'<p>
	des 3<img alt="" src="/Home/images/1593b4e6-67bb-4267-8741-5bb881af79fag.png" style="width: 300px; height: 169px;" />&nbsp;đ&acirc;y l&agrave; nội dung</p>
', 1, N'cbcecd85-7c92-4bb6-b855-d8e755fbc7f810.jpg', 1, N'khuong', CAST(0x0000AB2F000F1A7D AS DateTime), CAST(0x0000AB2F000F1A7D AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (3, N'title 3', N'short_des 3', N'des 3', 4, N'image_1 (3).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (4, N'title 4', N'short_des 4', N'des 4', 1, N'image_1 (4).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (5, N'title 5', N'short_des 5', N'des 5', 4, N'image_1 (5).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (6, N'title 6', N'short_des 6', N'des 6', 2, N'image_1 (6).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (7, N'title 7', N'short_des 7', N'des 7', 1, N'image_1 (7).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2801617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (8, N'title 8', N'short_des 8', N'des 8', 3, N'image_1 (8).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (9, N'title 9', N'short_des 9', N'des 9', 1, N'image_1 (9).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (10, N'title 10', N'short_des 10', N'des 10', 2, N'image_1 (10).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (11, N'title 11', N'short_des 11', N'des 11', 4, N'image_1 (11).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2101617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (12, N'title 12', N'short_des 12', N'des 12', 2, N'image_1 (12).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (13, N'title 13', N'short_des 13', N'des 13', 4, N'image_1 (13).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (14, N'title 14', N'short_des 14', N'des 14', 2, N'image_1 (14).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (15, N'title 15', N'short_des 15', N'des 15', 1, N'image_1 (15).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (16, N'title 16', N'short_des 16', N'des 16', 2, N'image_1 (16).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (17, N'title 17', N'short_des 17', N'des 17', 2, N'image_1 (17).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2C01617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (18, N'title 18', N'short_des 18', N'des 18', 4, N'image_1 (18).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB3201617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (19, N'title 19', N'short_des 19', N'des 19', 1, N'image_1 (19).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (20, N'title 20', N'short_des 20', N'des 20', 4, N'image_1 (20).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (21, N'title 21', N'short_des 21', N'des 21', 4, N'image_1 (21).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2801617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (22, N'title 22', N'short_des 22', N'des 22', 4, N'image_1 (22).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (23, N'title 23', N'short_des 23', N'des 23', 2, N'image_1 (23).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (24, N'title 24', N'short_des 24', N'des 24', 1, N'image_1 (24).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (25, N'title 25', N'short_des 25', N'des 25', 3, N'image_1 (25).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (26, N'title 26', N'short_des 26', N'des 26', 2, N'image_1 (26).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (27, N'title 27', N'short_des 27', N'des 27', 3, N'image_1 (27).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (28, N'title 28', N'short_des 28', N'des 28', 3, N'image_1 (28).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (29, N'title 29', N'short_des 29', N'des 29', 4, N'image_1 (29).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (30, N'title 30', N'short_des 30', N'des 30', 1, N'image_1 (30).jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (31, N'khương', N'BÀi 1', N'<p>
	<strong>123</strong></p>
', 3, N'10.jpg', 1, N'khuong', CAST(0x0000AB2E017F1394 AS DateTime), CAST(0x0000AB2E017F1394 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (32, N'1212', N'2323', N'<p>
	23232</p>
', 2, N'10.jpg', 1, N'khuong', CAST(0x0000AB2E017FC0A6 AS DateTime), CAST(0x0000AB2E017FC0A6 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (33, N'1212', N'2323', N'<p>
	23232</p>
', 2, N'10.jpg', 1, N'khuong', CAST(0x0000AB2E01804C90 AS DateTime), CAST(0x0000AB2E01804C90 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (34, N'23', N'23', N'<p>
	2323</p>
', 2, N'/0ca.jpg', 1, N'khuong', CAST(0x0000AB2E018714EE AS DateTime), CAST(0x0000AB2E018714EE AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (35, N'323', N'232', N'<p>
	232</p>
', 5, N'', 1, N'khuong', CAST(0x0000AB2E01876CFD AS DateTime), CAST(0x0000AB2E01876CFD AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (36, N'323', N'3434', N'<p>
	34343</p>
', 3, N'10.jpg', 1, N'khuong', CAST(0x0000AB2E0187EB7A AS DateTime), CAST(0x0000AB2E0187EB7A AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (37, N'dsds', N'sds', N'<p>
	sdsd</p>
', 1, N'1_CbaCCU7Su4oOe4bhfxuVuw.png', 1, N'khuong', CAST(0x0000AB2F00B6F298 AS DateTime), CAST(0x0000AB2F00B6F298 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (38, N'1212', N'2323334', N'<p>
	2323232343</p>
', 1, N'9c2e916b-43f0-4201-a070-843c6ad0028f1_CbaCCU7Su4oOe4bhfxuVuw.png', 0, N'khuong', CAST(0x0000AB2F0014C5E9 AS DateTime), CAST(0x0000AB2F0014C5E9 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [type], [img], [status], [username], [modified], [created]) VALUES (39, N'khuong', N'123', N'<p>
	234343</p>
', 1, N'2665d449-fc3b-430f-8ed0-ec47a412efd5Tulips.jpg', 0, N'khuong', CAST(0x0000AB2F00161122 AS DateTime), CAST(0x0000AB2F00161122 AS DateTime))
SET IDENTITY_INSERT [dbo].[post] OFF
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (1, 3, N'des 1')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (2, 4, N'des 2')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (3, 4, N'des 3')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (4, 5, N'des 4')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (5, 4, N'des 5')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (6, 4, N'des 6')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (7, 3, N'des 7')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (8, 4, N'des 8')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (9, 2, N'des 9')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (10, 5, N'des 10')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (11, 4, N'des 11')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (12, 2, N'des 12')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (13, 5, N'des 13')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (14, 4, N'des 14')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (15, 3, N'des 15')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (16, 4, N'des 16')
INSERT [dbo].[relative_food] ([food1_id], [food2_id], [des]) VALUES (17, 1, N'des 17')
SET IDENTITY_INSERT [dbo].[setting] ON 

INSERT [dbo].[setting] ([id_setting], [name], [des], [value], [username], [modified]) VALUES (1, N'LIMIT_ADMIN', N'Phân Trang (Admin)', N'5', N'khuong', CAST(0x0000AB2F01783B64 AS DateTime))
INSERT [dbo].[setting] ([id_setting], [name], [des], [value], [username], [modified]) VALUES (2, N'LIMIT_HOME', N'Phân Trang (Home)', N'6', N'khuong', CAST(0x0000AB2F016ECAAA AS DateTime))
SET IDENTITY_INSERT [dbo].[setting] OFF
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (1, 1, N'bg_1.jpg', N'We serve Fresh Vegestables & Fruits 1', 1, 1, 1, N'khuong', CAST(0x0000AB2501629570 AS DateTime))
INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (2, 2, N'bg_2.jpg', N'We serve Fresh Vegestables & Fruits 2', 2, 2, 1, N'khuong', CAST(0x0000AB2501629570 AS DateTime))
INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (3, 3, N'bg_3.jpg', N'We serve Fresh Vegestables & Fruits 3', 3, 1, 1, N'khuong', CAST(0x0000AB2501629570 AS DateTime))
INSERT [dbo].[slider] ([slide_id], [id_object], [img], [caption], [type], [rank], [status], [username], [modified]) VALUES (4, 4, N'bg_4.jpg', N'We serve Fresh Vegestables & Fruits 4', 4, 3, 1, N'khuong', CAST(0x0000AB2501629570 AS DateTime))
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
