USE [Rau]
GO
/****** Object:  Table [dbo].[post]    Script Date: 12/16/2019 9:28:49 PM ******/
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
SET IDENTITY_INSERT [dbo].[post] ON 

INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (1, N'title 1', N'short_des 1', N'des 1', N'image_1.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (2, N'title 2', N'short_des 2', N'des 2', N'image_2.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (3, N'title 3', N'short_des 3', N'des 3', N'image_3.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (4, N'title 4', N'short_des 4', N'des 4', N'image_4.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (5, N'title 5', N'short_des 5', N'des 5', N'image_5.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (6, N'title 6', N'short_des 6', N'des 6', N'image_6.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (7, N'title 7', N'short_des 7', N'des 7', N'image_7.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (8, N'title 8', N'short_des 8', N'des 8', N'image_8.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (9, N'title 9', N'short_des 9', N'des 9', N'image_9.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (10, N'title 10', N'short_des 10', N'des 10', N'image_10.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (11, N'title 11', N'short_des 11', N'des 11', N'image_11.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (12, N'title 12', N'short_des 12', N'des 12', N'image_12.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (13, N'title 13', N'short_des 13', N'des 13', N'image_13.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (14, N'title 14', N'short_des 14', N'des 14', N'image_14.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (15, N'title 15', N'short_des 15', N'des 15', N'image_15.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (16, N'title 16', N'short_des 16', N'des 16', N'image_16.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (17, N'title 17', N'short_des 17', N'des 17', N'image_17.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (18, N'title 18', N'short_des 18', N'des 18', N'image_18.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (19, N'title 19', N'short_des 19', N'des 19', N'image_19.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (20, N'title 20', N'short_des 20', N'des 20', N'image_20.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (21, N'title 21', N'short_des 21', N'des 21', N'image_21.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (22, N'title 22', N'short_des 22', N'des 22', N'image_22.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (23, N'title 23', N'short_des 23', N'des 23', N'image_23.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (24, N'title 24', N'short_des 24', N'des 24', N'image_24.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (25, N'title 25', N'short_des 25', N'des 25', N'image_25.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (26, N'title 26', N'short_des 26', N'des 26', N'image_26.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (27, N'title 27', N'short_des 27', N'des 27', N'image_27.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (28, N'title 28', N'short_des 28', N'des 28', N'image_28.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (29, N'title 29', N'short_des 29', N'des 29', N'image_29.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
INSERT [dbo].[post] ([post_id], [title], [short_des], [des], [img], [status], [username], [modified], [created]) VALUES (30, N'title 30', N'short_des 30', N'des 30', N'image_30.jpg', 1, N'khuong', CAST(0x0000AB2501617C30 AS DateTime), CAST(0x0000AB2501617C30 AS DateTime))
SET IDENTITY_INSERT [dbo].[post] OFF
ALTER TABLE [dbo].[post]  WITH CHECK ADD  CONSTRAINT [FK_post_member] FOREIGN KEY([username])
REFERENCES [dbo].[member] ([username])
GO
ALTER TABLE [dbo].[post] CHECK CONSTRAINT [FK_post_member]
GO
