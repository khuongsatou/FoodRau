USE [Rau]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[food]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[food_type]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[log_activity]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[member]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[order]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[post]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[relative_food]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[setting]    Script Date: 12/13/2019 5:03:38 PM ******/
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
/****** Object:  Table [dbo].[slider]    Script Date: 12/13/2019 5:03:38 PM ******/
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

INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (2, N'123', N'2', CAST(1.00 AS Decimal(10, 2)), CAST(1.10 AS Decimal(10, 2)), N'40aa6cdc-416a-432a-acf1-bf81c8c1d6ec4.png', N'35c6be83-1500-4ad4-92e1-12afc72210c48.png', N'1', CAST(0.10 AS Decimal(2, 2)), 1, 0, CAST(0.10 AS Decimal(2, 2)), 2, 0, N'khuong', CAST(0x0000AB1A015FC8A5 AS DateTime))
INSERT [dbo].[food] ([id], [name], [description], [price], [price_promo], [thumb], [img], [unit], [percent_promo], [rating], [sold], [point], [type], [status], [username], [modified]) VALUES (3, N'2', N'2', CAST(2.00 AS Decimal(10, 2)), CAST(2.40 AS Decimal(10, 2)), N'70461874-e258-4dd7-af22-988b364533ae8.png', N'e1a2e9ac-edb5-4e25-ac65-392d35b4706877161224_487924741818087_3526715268719968256_n.jpg', N'2', CAST(0.20 AS Decimal(2, 2)), 2, 0, CAST(0.20 AS Decimal(2, 2)), 2, 0, N'khuong', CAST(0x0000AB1A016617F5 AS DateTime))
SET IDENTITY_INSERT [dbo].[food] OFF
SET IDENTITY_INSERT [dbo].[food_type] ON 

INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (2, N'123', 3, N'1.jpg', 1, N'khuong', CAST(0x0000AB1A00C58DE4 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (3, N'khuong1', 4, N'1.jpg', 1, N'khuong', CAST(0x0000AB1A0003CC1F AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (4, N'rau1', 1, N'1.jpg', 1, N'khuong', CAST(0x0000AB1A00AE9993 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (5, N'1234', 1, N'1.jpg', 1, N'khuong', CAST(0x0000AB1A00B21773 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (6, N'12356', 1, N'7f0e33b5-2ed2-41c0-9cdf-b912d676da3c2fbdc8835d8547c6_d91e5341ece5528b_21847115723621242185710.jpg', 1, N'khuong', CAST(0x0000AB1A00B23725 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (7, N'12345', 2, N'2b5ce029-b6d0-4d13-ac99-bca5d47e238920-1.jpg', 1, N'khuong', CAST(0x0000AB1A00B3B02D AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (8, N'1233434', 3, N'2b5ce029-b6d0-4d13-ac99-bca5d47e238920-1.jpg', 1, N'khuong', CAST(0x0000AB1A00B3C277 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (9, N'23', 1, N'1.jpg', 1, N'khuong', CAST(0x0000AB1A00B458C0 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (10, N'khuong123', 2, N'fc9f4ebf-2169-4e62-906f-9490be1c725a73115363_148332996410275_2828312250706243160_n.jpg', 1, N'khuong', CAST(0x0000AB1A00B5E0DA AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (11, N'khuong1233434', 1, N'76aab17e-e91f-4b56-8d93-547326f3a1bc5cb4fcbc06333d271f161c6a9f9603ec.jpg', 1, N'khuong', CAST(0x0000AB1A00B6CA29 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (12, N'12334', 2, N'3c13870d-84d0-47b0-a7e3-b9fdf07d19c5b18.png', 1, N'khuong', CAST(0x0000AB1A00C5DE69 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (13, N'12323', 1, N'83dbb841-23c7-4e09-8ca5-9d046c64f5755.png', 1, N'khuong', CAST(0x0000AB1A00C08313 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (14, N'123343434', 1, N'f2eeb5f3-5144-46da-924b-977c86a4c0633.png', 1, N'khuong', CAST(0x0000AB1A00C159A4 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (16, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0120170B AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (17, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B012060D7 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (18, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B01206713 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (19, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B01209545 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (20, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B01209E5D AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (21, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0120A601 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (22, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0120CAC4 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (23, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0120D30E AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (24, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0120DBDA AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (25, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0146D454 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (26, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B01496E66 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (27, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0149CECA AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (28, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0150B281 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (29, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0150BB76 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (30, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0150D815 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (31, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B0150FA2D AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (32, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B01512DBA AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (33, N'1343434', 3, N'21', 1, N'khuong', CAST(0x0000AB1B01520C36 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (34, N'hehee', 1, N'21', 1, N'khuong', CAST(0x0000AB1B01539826 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (35, N'hehee1', 1, N'21', 1, N'khuong', CAST(0x0000AB1B0153B144 AS DateTime))
INSERT [dbo].[food_type] ([type_id], [type_name], [type_pos], [type_img], [status], [username], [modified]) VALUES (36, N'khuong123', 1, N'21', 1, N'khuong', CAST(0x0000AB1B0158F1F7 AS DateTime))
SET IDENTITY_INSERT [dbo].[food_type] OFF
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuong', N'202cb962ac59075b964b07152d234b70', N'khuong1234', N'khuong@gmail.com', N'0356241963', 0, 1)
INSERT [dbo].[member] ([username], [pass], [name], [email], [phone], [role], [status]) VALUES (N'khuongs', N'202cb962ac59075b964b07152d234b70', N'123', N'1234@gmail.com', N'0356241963', 0, 1)
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
