USE [Test]
GO
/****** Object:  Table [dbo].[tbLoai]    Script Date: 12/8/2019 10:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLoai](
	[id] [int] NOT NULL,
	[ten] [nvarchar](50) NULL,
	[gia] [nvarchar](50) NULL,
	[hinh] [nvarchar](50) NULL,
	[ghichu] [nvarchar](50) NULL,
	[loai] [int] NULL,
 CONSTRAINT [PK_tbLoai] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbUser]    Script Date: 12/8/2019 10:29:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbUser](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](30) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_tbUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbUser] ON 

INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (1, N'admin', N'123', 1)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (2, N'user2', N'123', 0)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (3, N'user3', N'123', 1)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (4, N'123', N'123', 0)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (5, N'user5', N'123', 1)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (6, N'user5', N'123', 1)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (7, N'user5', N'123', 1)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (8, N'user5', N'123', 1)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (9, N'gjfrer', N'?irk', 0)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (10, N'gjfrer', N'?irk', 1)
INSERT [dbo].[tbUser] ([id], [username], [password], [status]) VALUES (11, N'ABCXYZ', NULL, 0)
SET IDENTITY_INSERT [dbo].[tbUser] OFF
ALTER TABLE [dbo].[tbUser] ADD  CONSTRAINT [DF_tbUser_status]  DEFAULT ((0)) FOR [status]
GO
