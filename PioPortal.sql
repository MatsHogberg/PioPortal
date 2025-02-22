USE [PIO]
GO
/****** Object:  Schema [m2ss]    Script Date: 03/10/2015 08:22:29 ******/
CREATE SCHEMA [m2ss] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customer_Id] [int] IDENTITY(21,1) NOT NULL,
	[name] [nvarchar](128) NULL,
 CONSTRAINT [PK_customer_customer_Id] PRIMARY KEY CLUSTERED 
(
	[customer_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [customer$customer_Id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[customer_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.customer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'customer'
GO
SET IDENTITY_INSERT [dbo].[customer] ON
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (1, N'Volvo Cars Corporation')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (2, N'Volvo AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (3, N'Höganäs')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (4, N'Volvo Information Technology')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (5, N'Socialstyrelsen')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (6, N'Bosch')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (7, N'Resurs Holding')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (8, N'Alingsås Energi AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (9, N'Vattenfall AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (10, N'Västtrafik AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (11, N'Allet AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (12, N'Seppala OY')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (13, N'Volvo Lastvagnar AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (14, N'CEVT')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (15, N'Volvo Personvagnar AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (16, N'Energimarknadsinspektionen')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (17, N'B&B Tools Business Infrastructure AB')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (18, N'Länsstyrelsen i Västra Götalands län')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (19, N'Volvo Parts AB:s Personalstift')
INSERT [dbo].[customer] ([customer_Id], [name]) VALUES (20, N'Swedish Match North Europe AB')
SET IDENTITY_INSERT [dbo].[customer] OFF
/****** Object:  Table [dbo].[comment]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[commnt_Id] [int] NOT NULL,
	[comment] [nvarchar](256) NOT NULL,
	[project_Id] [int] NOT NULL,
	[timestamp] [datetime2](0) NULL,
	[author_Id] [int] NOT NULL,
 CONSTRAINT [PK_comment_commnt_Id] PRIMARY KEY CLUSTERED 
(
	[commnt_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.comment' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'comment'
GO
INSERT [dbo].[comment] ([commnt_Id], [comment], [project_Id], [timestamp], [author_Id]) VALUES (1, N'Riskdokument saknas. Övriga dokument finns.', 2, CAST(0x0095C800AA390B0000 AS DateTime2), 1)
/****** Object:  Table [dbo].[carrerpath]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrerpath](
	[carrerpath_Id] [int] IDENTITY(3,1) NOT NULL,
	[caption] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_carrerpath_carrerpath_Id] PRIMARY KEY CLUSTERED 
(
	[carrerpath_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [carrerpath$carrerpath_Id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[carrerpath_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.carrerpath' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'carrerpath'
GO
SET IDENTITY_INSERT [dbo].[carrerpath] ON
INSERT [dbo].[carrerpath] ([carrerpath_Id], [caption]) VALUES (1, N'Project Manager')
INSERT [dbo].[carrerpath] ([carrerpath_Id], [caption]) VALUES (2, N'Consultant/Engineer')
SET IDENTITY_INSERT [dbo].[carrerpath] OFF
/****** Object:  Table [dbo].[meetingtype]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[meetingtype](
	[meetingtype_Id] [int] NOT NULL,
	[caption] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_meetingtype_meetingtype_Id] PRIMARY KEY CLUSTERED 
(
	[meetingtype_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.meetingtype' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'meetingtype'
GO
INSERT [dbo].[meetingtype] ([meetingtype_Id], [caption]) VALUES (1, N'Project Kick-Off')
INSERT [dbo].[meetingtype] ([meetingtype_Id], [caption]) VALUES (2, N'Phase Review')
/****** Object:  Table [dbo].[site]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site](
	[site_Id] [int] IDENTITY(7,1) NOT NULL,
	[caption] [nvarchar](45) NULL,
 CONSTRAINT [PK_site_site_Id] PRIMARY KEY CLUSTERED 
(
	[site_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [site$caption_UNIQUE] UNIQUE NONCLUSTERED 
(
	[caption] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [site$site_Id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[site_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.site' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'site'
GO
SET IDENTITY_INSERT [dbo].[site] ON
INSERT [dbo].[site] ([site_Id], [caption]) VALUES (1, N'Göteborg')
INSERT [dbo].[site] ([site_Id], [caption]) VALUES (2, N'Stockholm')
INSERT [dbo].[site] ([site_Id], [caption]) VALUES (3, N'Malmö')
INSERT [dbo].[site] ([site_Id], [caption]) VALUES (4, N'Borlänge')
INSERT [dbo].[site] ([site_Id], [caption]) VALUES (5, N'Karlstad')
INSERT [dbo].[site] ([site_Id], [caption]) VALUES (6, N'Oslo')
SET IDENTITY_INSERT [dbo].[site] OFF
/****** Object:  Table [dbo].[person]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[person_id] [int] IDENTITY(24,1) NOT NULL,
	[name_first] [nvarchar](45) NULL,
	[name_last] [nvarchar](45) NULL,
	[carrerpath_Id] [int] NOT NULL,
 CONSTRAINT [PK_person_person_id] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [person$person_id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.person' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person'
GO
SET IDENTITY_INSERT [dbo].[person] ON
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (1, N'Mikael', N'Sjökvist', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (2, N'Peter', N'Kovacs', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (3, N'Fredrik', N'Haase', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (4, N'Maria', N'Eidland', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (5, N'Björn', N'Lanneskog', 2)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (6, N'Patrik', N'Elverlind', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (7, N'Jonas', N'Möller', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (8, N'Johan', N'Kjellson', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (9, N'Carl', N'Wanngård', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (10, N'Sture', N'Ågren', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (11, N'Peter', N'Forsmark', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (12, N'Jan', N'Pålsson', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (13, N'Per', N'Ljungberg', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (14, N'Pär', N'Andreasson', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (15, N'Tomas', N'Ekengren', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (16, N'Niklas', N'Norlander', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (17, N'Mikael', N'Essle', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (18, N'Krisztina', N'Leban', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (19, N'Björn', N'Carlsson', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (20, N'Patrik', N'Elverlind', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (21, N'Roberto', N'Montes', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (22, N'Erik', N'Tägtström', 1)
INSERT [dbo].[person] ([person_id], [name_first], [name_last], [carrerpath_Id]) VALUES (23, N'Joachim', N'Östh', 1)
SET IDENTITY_INSERT [dbo].[person] OFF
/****** Object:  Table [dbo].[room]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[room_Id] [int] NOT NULL,
	[caption] [nvarchar](64) NOT NULL,
	[site_Id] [int] NOT NULL,
 CONSTRAINT [PK_room_room_Id] PRIMARY KEY CLUSTERED 
(
	[room_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.room' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'room'
GO
INSERT [dbo].[room] ([room_Id], [caption], [site_Id]) VALUES (1, N'Kållerado', 1)
INSERT [dbo].[room] ([room_Id], [caption], [site_Id]) VALUES (2, N'Farfars Bilar', 2)
INSERT [dbo].[room] ([room_Id], [caption], [site_Id]) VALUES (3, N'Balder', 3)
/****** Object:  Table [dbo].[project]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[project_Id] [int] IDENTITY(26,1) NOT NULL,
	[code] [nvarchar](45) NULL,
	[name] [nvarchar](128) NULL,
	[customer_Id] [int] NOT NULL,
	[start] [date] NULL,
	[end] [date] NULL,
	[buisness_manager] [int] NOT NULL,
	[project_manager] [int] NOT NULL,
	[site_Id] [int] NOT NULL,
	[adm_level] [int] NULL,
 CONSTRAINT [PK_project_project_Id] PRIMARY KEY CLUSTERED 
(
	[project_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [project$project_Id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[project_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.project' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'project'
GO
SET IDENTITY_INSERT [dbo].[project] ON
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (1, N'700696', N'VCC OTA Systems and integration test', 1, CAST(0xD5380B00 AS Date), CAST(0x223A0B00 AS Date), 7, 1, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (2, N'752747', N'SPIE/Nevis IE11 upgrade', 3, CAST(0x3A390B00 AS Date), CAST(0xE5390B00 AS Date), 8, 5, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (3, N'752763', N'ITPL SPIE/Nevis and IE - Lanneskog', 3, NULL, NULL, 8, 5, 1, 1)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (4, N'753053', N'Höganäs Eclino', 3, CAST(0x9D390B00 AS Date), CAST(0xC7390B00 AS Date), 9, 1, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (5, N'752722', N'Projektleden T&M', 1, CAST(0x25390B00 AS Date), CAST(0xC7390B00 AS Date), 8, 8, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (6, N'752794', N'A2M2 Socialstyrelsen SharePoint-support', 5, CAST(0x4F390B00 AS Date), CAST(0xBB3A0B00 AS Date), 22, 10, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (7, N'700735', N'COOP - Bosch Resident Engineer at CEVT Sweden', 6, CAST(0x31390B00 AS Date), CAST(0xDA3A0B00 AS Date), 9, 9, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (8, N'752778', N'Support to DC', 2, CAST(0x20390B00 AS Date), CAST(0x92390B00 AS Date), 2, 2, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (9, N'752646', N'ADW - Intranät SP2013', 7, CAST(0x41390B00 AS Date), CAST(0xC8390B00 AS Date), 13, 17, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (10, N'700655', N'Daniel Tidholm', 15, CAST(0x5A380B00 AS Date), CAST(0xE5390B00 AS Date), 9, 9, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (11, N'700698', N'VCC, SPA infotainment Expedition', 15, NULL, NULL, 7, 21, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (12, N'752642', N'SLA A2M2', 16, CAST(0x5B380B00 AS Date), CAST(0xC73C0B00 AS Date), 23, 10, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (13, N'752512', N'ADW - Intranät', 8, CAST(0x5B380B00 AS Date), CAST(0xA7390B00 AS Date), 13, 17, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (14, N'752564', N'A2M2 - Support', 17, CAST(0xCF370B00 AS Date), NULL, 17, 10, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (15, N'752687', N'PM QA', 4, NULL, NULL, 2, 2, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (16, N'752428', N'Agil utv. WS', 18, NULL, NULL, 13, 17, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (17, N'752480', N'EBH - Vidareutveckling', 18, CAST(0xD5380B00 AS Date), CAST(0x99390B00 AS Date), 13, 10, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (18, N'752408', N'Techtool Regression Test', 19, CAST(0x01380B00 AS Date), CAST(0x6D390B00 AS Date), 2, 6, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (19, N'752427', N'IT-stöd för deponering', 18, CAST(0x01380B00 AS Date), CAST(0xD4380B00 AS Date), 13, 13, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (20, N'752662', N'SPIE/Nevis MA aug-2014--', 4, CAST(0xD5380B00 AS Date), CAST(0x1C3D0B00 AS Date), 8, 15, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (21, N'752569', N'Externwebb', 18, CAST(0xD5380B00 AS Date), CAST(0x053A0B00 AS Date), 13, 17, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (22, N'752432', N'Darwin Funktionsåtagande, 2014', 9, CAST(0x8D390B00 AS Date), NULL, 11, 16, 1, 4)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (23, N'752641', N'SLA A2M2', 20, CAST(0xA0380B00 AS Date), NULL, 23, 10, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (24, N'752426', N'3:e linjens support', 18, CAST(0x01380B00 AS Date), CAST(0xC7390B00 AS Date), 13, 13, 1, 2)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (25, N'700681', N'Henrik Elofsson', 15, NULL, NULL, 7, 7, 1, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (27, N'6665666', N'TestProjekt', 18, CAST(0xAD390B00 AS Date), CAST(0xFD410B00 AS Date), 3, 4, 1, 1)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (28, N'6665666', N'TestProjekt', 18, CAST(0xAD390B00 AS Date), CAST(0xFD410B00 AS Date), 3, 4, 1, 1)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (33, N'999999', N'Nytt projekt', 1, CAST(0x01380B00 AS Date), CAST(0xDB3A0B00 AS Date), 1, 2, 5, 3)
INSERT [dbo].[project] ([project_Id], [code], [name], [customer_Id], [start], [end], [buisness_manager], [project_manager], [site_Id], [adm_level]) VALUES (34, N'111111', N'Uppdaterat projekt', 1, CAST(0x01380B00 AS Date), CAST(0xDB3A0B00 AS Date), 1, 2, 5, 3)
SET IDENTITY_INSERT [dbo].[project] OFF
/****** Object:  Table [dbo].[ontime]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ontime](
	[ontime_Id] [int] NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[value] [decimal](10, 0) NULL,
	[comment] [nvarchar](256) NULL,
	[project_Id] [int] NOT NULL,
 CONSTRAINT [PK_ontime_ontime_Id] PRIMARY KEY CLUSTERED 
(
	[ontime_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [ontime$ontime_Id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[ontime_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.ontime' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ontime'
GO
INSERT [dbo].[ontime] ([ontime_Id], [year], [month], [value], [comment], [project_Id]) VALUES (1, 2015, 1, CAST(100 AS Decimal(10, 0)), N'Avstämning på projektmöte med kunden enligt överenskommen tidplan.', 1)
INSERT [dbo].[ontime] ([ontime_Id], [year], [month], [value], [comment], [project_Id]) VALUES (2, 2015, 2, CAST(0 AS Decimal(10, 0)), NULL, 1)
/****** Object:  Table [dbo].[onquality]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onquality](
	[onquality_Id] [int] NOT NULL,
	[year] [int] NOT NULL,
	[month] [int] NOT NULL,
	[value] [decimal](10, 0) NULL,
	[comment] [nvarchar](256) NULL,
	[project_Id] [int] NOT NULL,
 CONSTRAINT [PK_onquality_onquality_Id] PRIMARY KEY CLUSTERED 
(
	[onquality_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [onquality$quality_Id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[onquality_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.onquality' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'onquality'
GO
INSERT [dbo].[onquality] ([onquality_Id], [year], [month], [value], [comment], [project_Id]) VALUES (1, 2015, 1, CAST(100 AS Decimal(10, 0)), NULL, 1)
INSERT [dbo].[onquality] ([onquality_Id], [year], [month], [value], [comment], [project_Id]) VALUES (2, 2015, 2, CAST(0 AS Decimal(10, 0)), NULL, 1)
/****** Object:  Table [dbo].[meeting]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[meeting](
	[meeting_Id] [int] IDENTITY(3,1) NOT NULL,
	[meetingtype_Id] [int] NULL,
	[starttime] [datetime2](0) NOT NULL,
	[location_Id] [int] NULL,
	[project_Id] [int] NULL,
 CONSTRAINT [PK_meeting_meeting_Id] PRIMARY KEY CLUSTERED 
(
	[meeting_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [meeting$meeting_Id_UNIQUE] UNIQUE NONCLUSTERED 
(
	[meeting_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.meeting' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'meeting'
GO
SET IDENTITY_INSERT [dbo].[meeting] ON
INSERT [dbo].[meeting] ([meeting_Id], [meetingtype_Id], [starttime], [location_Id], [project_Id]) VALUES (1, 1, CAST(0x00F8D900A4390B0000 AS DateTime2), 2, 1)
INSERT [dbo].[meeting] ([meeting_Id], [meetingtype_Id], [starttime], [location_Id], [project_Id]) VALUES (2, 1, CAST(0x00A08C00AA390B0000 AS DateTime2), 1, 1)
SET IDENTITY_INSERT [dbo].[meeting] OFF
/****** Object:  Table [dbo].[meetingparticipant]    Script Date: 03/10/2015 08:22:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[meetingparticipant](
	[meeting_Id] [int] NOT NULL,
	[person_Id] [int] NOT NULL,
 CONSTRAINT [PK_meetingparticipant_person_Id] PRIMARY KEY CLUSTERED 
(
	[person_Id] ASC,
	[meeting_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'pio.meetingparticipant' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'meetingparticipant'
GO
INSERT [dbo].[meetingparticipant] ([meeting_Id], [person_Id]) VALUES (1, 1)
INSERT [dbo].[meetingparticipant] ([meeting_Id], [person_Id]) VALUES (2, 1)
INSERT [dbo].[meetingparticipant] ([meeting_Id], [person_Id]) VALUES (1, 2)
INSERT [dbo].[meetingparticipant] ([meeting_Id], [person_Id]) VALUES (1, 4)
INSERT [dbo].[meetingparticipant] ([meeting_Id], [person_Id]) VALUES (2, 4)
INSERT [dbo].[meetingparticipant] ([meeting_Id], [person_Id]) VALUES (1, 6)
INSERT [dbo].[meetingparticipant] ([meeting_Id], [person_Id]) VALUES (2, 9)
/****** Object:  Default [DF__comment__timesta__1ED998B2]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[comment] ADD  DEFAULT (getdate()) FOR [timestamp]
GO
/****** Object:  Default [DF__customer__name__1FCDBCEB]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[customer] ADD  DEFAULT (NULL) FOR [name]
GO
/****** Object:  Default [DF__meeting__meeting__20C1E124]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[meeting] ADD  DEFAULT (NULL) FOR [meetingtype_Id]
GO
/****** Object:  Default [DF__meeting__locatio__21B6055D]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[meeting] ADD  DEFAULT (NULL) FOR [location_Id]
GO
/****** Object:  Default [DF__onquality__value__22AA2996]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[onquality] ADD  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__onquality__comme__239E4DCF]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[onquality] ADD  DEFAULT (NULL) FOR [comment]
GO
/****** Object:  Default [DF__ontime__value__24927208]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[ontime] ADD  DEFAULT ((0)) FOR [value]
GO
/****** Object:  Default [DF__ontime__comment__25869641]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[ontime] ADD  DEFAULT (NULL) FOR [comment]
GO
/****** Object:  Default [DF__person__name_fir__267ABA7A]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[person] ADD  DEFAULT (NULL) FOR [name_first]
GO
/****** Object:  Default [DF__person__name_las__276EDEB3]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[person] ADD  DEFAULT (NULL) FOR [name_last]
GO
/****** Object:  Default [DF__project__code__286302EC]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project] ADD  DEFAULT (NULL) FOR [code]
GO
/****** Object:  Default [DF__project__name__29572725]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project] ADD  DEFAULT (NULL) FOR [name]
GO
/****** Object:  Default [DF__project__start__2A4B4B5E]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project] ADD  DEFAULT (NULL) FOR [start]
GO
/****** Object:  Default [DF__project__end__2B3F6F97]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project] ADD  DEFAULT (NULL) FOR [end]
GO
/****** Object:  Default [DF__project__adm_lev__2C3393D0]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project] ADD  DEFAULT (NULL) FOR [adm_level]
GO
/****** Object:  Default [DF__site__caption__2D27B809]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[site] ADD  DEFAULT (NULL) FOR [caption]
GO
/****** Object:  ForeignKey [FK_meeting_meetingtype]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[meeting]  WITH CHECK ADD  CONSTRAINT [FK_meeting_meetingtype] FOREIGN KEY([meetingtype_Id])
REFERENCES [dbo].[meetingtype] ([meetingtype_Id])
GO
ALTER TABLE [dbo].[meeting] CHECK CONSTRAINT [FK_meeting_meetingtype]
GO
/****** Object:  ForeignKey [FK_meeting_project]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[meeting]  WITH CHECK ADD  CONSTRAINT [FK_meeting_project] FOREIGN KEY([project_Id])
REFERENCES [dbo].[project] ([project_Id])
GO
ALTER TABLE [dbo].[meeting] CHECK CONSTRAINT [FK_meeting_project]
GO
/****** Object:  ForeignKey [FK_meeting_room1]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[meeting]  WITH CHECK ADD  CONSTRAINT [FK_meeting_room1] FOREIGN KEY([location_Id])
REFERENCES [dbo].[room] ([room_Id])
GO
ALTER TABLE [dbo].[meeting] CHECK CONSTRAINT [FK_meeting_room1]
GO
/****** Object:  ForeignKey [FK_meetingparticipant_meeting]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[meetingparticipant]  WITH CHECK ADD  CONSTRAINT [FK_meetingparticipant_meeting] FOREIGN KEY([meeting_Id])
REFERENCES [dbo].[meeting] ([meeting_Id])
GO
ALTER TABLE [dbo].[meetingparticipant] CHECK CONSTRAINT [FK_meetingparticipant_meeting]
GO
/****** Object:  ForeignKey [FK_meetingparticipant_person]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[meetingparticipant]  WITH CHECK ADD  CONSTRAINT [FK_meetingparticipant_person] FOREIGN KEY([person_Id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[meetingparticipant] CHECK CONSTRAINT [FK_meetingparticipant_person]
GO
/****** Object:  ForeignKey [FK_onquality_project]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[onquality]  WITH CHECK ADD  CONSTRAINT [FK_onquality_project] FOREIGN KEY([project_Id])
REFERENCES [dbo].[project] ([project_Id])
GO
ALTER TABLE [dbo].[onquality] CHECK CONSTRAINT [FK_onquality_project]
GO
/****** Object:  ForeignKey [FK_ontime_project]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[ontime]  WITH CHECK ADD  CONSTRAINT [FK_ontime_project] FOREIGN KEY([project_Id])
REFERENCES [dbo].[project] ([project_Id])
GO
ALTER TABLE [dbo].[ontime] CHECK CONSTRAINT [FK_ontime_project]
GO
/****** Object:  ForeignKey [FK_person_carrerpath]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_person_carrerpath] FOREIGN KEY([carrerpath_Id])
REFERENCES [dbo].[carrerpath] ([carrerpath_Id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_person_carrerpath]
GO
/****** Object:  ForeignKey [FK_project_BusinessManager]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FK_project_BusinessManager] FOREIGN KEY([buisness_manager])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FK_project_BusinessManager]
GO
/****** Object:  ForeignKey [FK_project_customer]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FK_project_customer] FOREIGN KEY([customer_Id])
REFERENCES [dbo].[customer] ([customer_Id])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FK_project_customer]
GO
/****** Object:  ForeignKey [FK_Project_ProjectManager]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FK_Project_ProjectManager] FOREIGN KEY([project_manager])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FK_Project_ProjectManager]
GO
/****** Object:  ForeignKey [FK_project_site]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[project]  WITH CHECK ADD  CONSTRAINT [FK_project_site] FOREIGN KEY([site_Id])
REFERENCES [dbo].[site] ([site_Id])
GO
ALTER TABLE [dbo].[project] CHECK CONSTRAINT [FK_project_site]
GO
/****** Object:  ForeignKey [FK_room_site]    Script Date: 03/10/2015 08:22:29 ******/
ALTER TABLE [dbo].[room]  WITH CHECK ADD  CONSTRAINT [FK_room_site] FOREIGN KEY([site_Id])
REFERENCES [dbo].[site] ([site_Id])
GO
ALTER TABLE [dbo].[room] CHECK CONSTRAINT [FK_room_site]
GO
