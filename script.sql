USE [CodingTest]
GO
/****** Object:  Table [dbo].[tblContents]    Script Date: 1/11/2024 11:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContents](
	[contentId] [int] IDENTITY(1,1) NOT NULL,
	[questionId] [int] NOT NULL,
	[questionText] [nvarchar](max) NOT NULL,
	[answerA] [nvarchar](255) NOT NULL,
	[answerB] [nvarchar](255) NOT NULL,
	[answerC] [nvarchar](255) NOT NULL,
	[answerD] [nvarchar](255) NOT NULL,
	[correctAnswer] [nvarchar](255) NOT NULL,
	[image] [varchar](255) NULL,
	[userName] [nvarchar](50) NOT NULL,
	[userId] [int] NOT NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[editDate] [datetime] NULL,
	[editBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblContent] PRIMARY KEY CLUSTERED 
(
	[contentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNetworkCodes]    Script Date: 1/11/2024 11:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNetworkCodes](
	[netCodeId] [int] IDENTITY(1,1) NOT NULL,
	[code] [nvarchar](4) NOT NULL,
	[networkName] [nvarchar](255) NOT NULL,
	[userId] [int] NOT NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[editDate] [datetime] NULL,
	[editBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__NetworkC__A25C5AA6A46371F4] PRIMARY KEY CLUSTERED 
(
	[netCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 1/11/2024 11:00:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](100) NOT NULL,
	[firstName] [nvarchar](50) NOT NULL,
	[lastName] [nvarchar](50) NOT NULL,
	[ThreeDigitNumber] [int] NOT NULL,
	[Wins] [int] NOT NULL,
	[Losses] [int] NOT NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[editDate] [datetime] NULL,
	[editBy] [int] NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblUsers] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblContents] ON 

INSERT [dbo].[tblContents] ([contentId], [questionId], [questionText], [answerA], [answerB], [answerC], [answerD], [correctAnswer], [image], [userName], [userId], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (1, 1, N'What is the color of the sky in the image?', N'Red', N'Blue', N'Green', N'Orange', N'B', N'~/Images/blog.jpeg', N'ahsan', 3, CAST(N'2024-01-11T22:30:00.967' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblContents] ([contentId], [questionId], [questionText], [answerA], [answerB], [answerC], [answerD], [correctAnswer], [image], [userName], [userId], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (2, 2, N'What is the color of the sky in the image?', N'Blue', N'Red', N'Green', N'Orange', N'A', N'~/Images/blog.jpeg', N'ahsan', 4, CAST(N'2024-01-11T22:31:30.213' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblContents] ([contentId], [questionId], [questionText], [answerA], [answerB], [answerC], [answerD], [correctAnswer], [image], [userName], [userId], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (3, 3, N'abc', N'a', N'b', N'c', N'd', N'a', N'~/Images/blog.jpeg', N'hassan', 5, CAST(N'2024-01-11T22:32:00.240' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblContents] ([contentId], [questionId], [questionText], [answerA], [answerB], [answerC], [answerD], [correctAnswer], [image], [userName], [userId], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (12, 4, N'xyz', N'a', N'b', N'c', N'd', N'a', N'~/Images/blog.jpeg', N'ahmad', 6, CAST(N'2024-01-11T22:35:44.520' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tblContents] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNetworkCodes] ON 

INSERT [dbo].[tblNetworkCodes] ([netCodeId], [code], [networkName], [userId], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (1, N'4F6I', N'Library_Network_4G', 3, CAST(N'2024-01-11T22:25:24.157' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblNetworkCodes] ([netCodeId], [code], [networkName], [userId], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (2, N'12e3', N'Library_Network_4G', 4, CAST(N'2024-01-11T22:27:02.263' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblNetworkCodes] ([netCodeId], [code], [networkName], [userId], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (4, N'109E', N'Library_Network_4G', 5, CAST(N'2024-01-11T22:27:42.480' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tblNetworkCodes] OFF
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON 

INSERT [dbo].[tblUsers] ([userId], [userName], [firstName], [lastName], [ThreeDigitNumber], [Wins], [Losses], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (3, N'ahsan', N'ahsan', N'ahsan', 1, 1, 1, CAST(N'2024-01-11T22:20:37.253' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblUsers] ([userId], [userName], [firstName], [lastName], [ThreeDigitNumber], [Wins], [Losses], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (4, N'ahsan', N'ahsan', N'shafique', 2, 2, 2, CAST(N'2024-01-11T22:22:49.187' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblUsers] ([userId], [userName], [firstName], [lastName], [ThreeDigitNumber], [Wins], [Losses], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (5, N'hassan', N'hassan', N'hassan', 1, 1, 1, CAST(N'2024-01-11T22:23:38.323' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblUsers] ([userId], [userName], [firstName], [lastName], [ThreeDigitNumber], [Wins], [Losses], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (6, N'ahmad', N'ahmad', N'ahmad', 1, 1, 1, CAST(N'2024-01-11T22:23:57.490' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[tblUsers] ([userId], [userName], [firstName], [lastName], [ThreeDigitNumber], [Wins], [Losses], [createdDate], [createdBy], [editDate], [editBy], [isDeleted]) VALUES (7, N'ali', N'ali', N'ali', 1, 1, 1, CAST(N'2024-01-11T22:24:09.943' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
GO
ALTER TABLE [dbo].[tblContents] ADD  CONSTRAINT [DF_tblContents_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[tblContents] ADD  CONSTRAINT [DF_tblContents_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tblNetworkCodes] ADD  CONSTRAINT [DF_tblNetworkCodes_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[tblNetworkCodes] ADD  CONSTRAINT [DF_tblNetworkCodes_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_createdDate]  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [dbo].[tblUsers] ADD  CONSTRAINT [DF_tblUsers_isDeleted]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[tblContents]  WITH CHECK ADD  CONSTRAINT [FK_tblContents_tblUsers] FOREIGN KEY([userId])
REFERENCES [dbo].[tblUsers] ([userId])
GO
ALTER TABLE [dbo].[tblContents] CHECK CONSTRAINT [FK_tblContents_tblUsers]
GO
ALTER TABLE [dbo].[tblNetworkCodes]  WITH CHECK ADD  CONSTRAINT [FK_tblNetworkCodes_tblUsers] FOREIGN KEY([userId])
REFERENCES [dbo].[tblUsers] ([userId])
GO
ALTER TABLE [dbo].[tblNetworkCodes] CHECK CONSTRAINT [FK_tblNetworkCodes_tblUsers]
GO
