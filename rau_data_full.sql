USE [Rau]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[food]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[food_type]    Script Date: 12/4/2019 10:22:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[food_type](
	[type_id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](50) NULL,
	[type_pos] [int] NULL,
	[type_img] [varchar](255) NULL,
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
/****** Object:  Table [dbo].[log_activity]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[member]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[order]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[post]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[relative_food]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[setting]    Script Date: 12/4/2019 10:22:48 PM ******/
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
/****** Object:  Table [dbo].[slider]    Script Date: 12/4/2019 10:22:48 PM ******/
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
SET IDENTITY_INSERT [dbo].[food] ON 

INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (1, N'cá1', N'', CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Thùng', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 1, 1, N'ca', CAST(0x0000AB13011E9EFC AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (2, N'thịt', N'Ðây là rau 2', CAST(9.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.99 AS Decimal(2, 2)), 6, 5, CAST(0.10 AS Decimal(2, 2)), 1, 0, N'ca', CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (4, N'Cơm', N'Ðây là rau 3', CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Con', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.10 AS Decimal(2, 2)), 1, 0, N'ca', CAST(0x0000AA7E00000000 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (5, N'hehee', N'', CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 1, 0, N'ca', CAST(0x0000AB1301173105 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (16, N'heheee', N'', CAST(10000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150006A8DF AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (17, N'khuong', N'', CAST(10000.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150007062A AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (18, N'khuong1', N'', CAST(10000.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB1500070E40 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (19, N'khuong11', N'', CAST(10000.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB1500072E46 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (20, N'khuong115', N'', CAST(10000.00 AS Decimal(10, 2)), CAST(0.99 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150007434B AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (21, N'heheeeê', N'', CAST(123.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150007CB93 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (22, N'hehe12', N'', CAST(123.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150007DD79 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (23, N'23', N'', CAST(23.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 1, N'ca', CAST(0x0000AB1500091F3E AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (24, N'2323', N'', CAST(23.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 1, N'ca', CAST(0x0000AB1500092830 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (25, N'23233', N'', CAST(23.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 1, N'ca', CAST(0x0000AB1500093361 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (26, N'hehee2323', N'', CAST(23.00 AS Decimal(10, 2)), CAST(0.23 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả2', CAST(0.23 AS Decimal(2, 2)), 1, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150009AB98 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (27, N'hehee23231', N'', CAST(23.00 AS Decimal(10, 2)), CAST(0.23 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả2', CAST(0.23 AS Decimal(2, 2)), 1, 1, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150009B2F0 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (42, N'hehee121', N'', CAST(2.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB15000EE79E AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (46, N'sds', N'', CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB15000FB2C4 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (47, N'sdss', N'', CAST(1.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.10 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB15000FBD66 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (48, N'heheedfdfd', N'', CAST(132.00 AS Decimal(10, 2)), CAST(1.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.90 AS Decimal(2, 2)), 1, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB1500102CEA AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (49, N'heheedfdfdf', N'', CAST(1.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'c.jpg', N'c.jpg', N'Quả', CAST(0.00 AS Decimal(2, 2)), 0, 0, CAST(0.00 AS Decimal(2, 2)), 7, 0, N'ca', CAST(0x0000AB150010B57C AS DateTime))
SET IDENTITY_INSERT [dbo].[food] OFF
SET IDENTITY_INSERT [dbo].[food_type] ON 

INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (1, N'cá', 20, N'c.jpg', 1, N'khuong', CAST(0x0000AA2600000000 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (7, N'k', 1, N'c.jpg', 0, N'ca', CAST(0x0000AA3900000000 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (8, N'hehee', 123, N'c.jpg', 0, N'ca', CAST(0x0000AB1201602402 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (9, N'heheee', 1, N'c.jpg', 0, N'ca', CAST(0x0000AB1201607262 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (10, N'1', 2, N'c.jpg', 0, N'ca', CAST(0x0000AB120168E95A AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (11, N'1234', 1234567, N'c.jpg', 0, N'ca', CAST(0x0000AB12016A0755 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (12, N'123', 1234567334, N'c.jpg', 0, N'ca', CAST(0x0000AB12016CED81 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (13, N'khuong', 2, N'c.jpg', 1, N'ca', CAST(0x0000AB12016D2DF6 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (14, N'', 657, N'c.jpg', 0, N'ca', CAST(0x0000AB13010B99CE AS DateTime))
SET IDENTITY_INSERT [dbo].[food_type] OFF
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'ca', N'202cb962ac59075b964b07152d234b70', N'khuong', N'khuong123@gmail.com', N'0356241963', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'haha', NULL, N'khuong1Sua', NULL, NULL, 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'haha1', N'aef5a7530aaa272bbaec34e49251b25a', N'khuong1', NULL, N'03648383', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'haha12', N'aef5a7530aaa272bbaec34e49251b25a', N'khuong1', NULL, N'03648383', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'hau212', NULL, NULL, NULL, NULL, 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khu', N'202cb962ac59075b964b07152d234b70', N'hehee', N'1234@gmail.com', N'0356241963', 0, 0)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong', N'202cb962ac59075b964b07152d234b70', N'khuong', N'1234@gmail.com', N'0356141963', 0, 0)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong1', N'202cb962ac59075b964b07152d234b70', N'khuong1', NULL, N'0356241963', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong1234', N'123', N'khuong', N'khuong123@gmail.com', N'0356241963', 0, 0)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong12345', N'123', N'khuong', N'khuong123@gmail.com', N'0356241963', 1, 0)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong123456678', N'123', N'123', N'123@gmail.com', N'0356241963', 0, 0)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong212', N'123', N'khuong123', N'khuong123@gmail.com', N'0356241963', 0, 0)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuongabc', N'202cb962ac59075b964b07152d234b70', N'hehee', N'1234@gmail.com', N'', 1, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuongha', N'202cb962ac59075b964b07152d234b70', N'hehee1', N'1234@gmail.com', N'0356241963', 1, 0)
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
