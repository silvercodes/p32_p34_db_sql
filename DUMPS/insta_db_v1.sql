USE [p34_insta_db]
GO
/****** Object:  Table [dbo].[albums]    Script Date: 26.03.2025 20:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[albums](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](512) NULL,
	[creation_date] [smalldatetime] NOT NULL,
	[user_id] [int] NOT NULL,
	[deleted_at] [smalldatetime] NULL,
	[updated_at] [smalldatetime] NULL,
	[rate] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[images]    Script Date: 26.03.2025 20:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[publish_date] [smalldatetime] NOT NULL,
	[link] [varchar](200) NOT NULL,
	[deleted_at] [smalldatetime] NULL,
	[user_id] [int] NOT NULL,
	[album_id] [int] NOT NULL,
 CONSTRAINT [PK__images__3213E83F209992F8] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 26.03.2025 20:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[nickname] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[birthday] [date] NOT NULL,
	[deleted_at] [smalldatetime] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[albums] ON 
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (2, N'Thicket Sedge', N'Unspecified effects of lightning, initial encounter', CAST(N'2021-01-11T00:00:00' AS SmallDateTime), 193, CAST(N'2023-12-04T20:53:00' AS SmallDateTime), CAST(N'2022-01-25T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (3, N'Itchgrass', NULL, CAST(N'2022-03-21T00:00:00' AS SmallDateTime), 2, NULL, CAST(N'2021-07-09T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (4, N'Greenman''s Bluet', NULL, CAST(N'2021-07-06T00:00:00' AS SmallDateTime), 194, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (5, N'Guadeloupe Peperomia', NULL, CAST(N'2021-07-11T00:00:00' AS SmallDateTime), 20, NULL, CAST(N'2021-02-01T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (6, N'Woolly Princesplume', NULL, CAST(N'2021-12-12T00:00:00' AS SmallDateTime), 137, NULL, CAST(N'2022-01-18T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (7, N'Map Lichen', N'Pasngr in 3-whl mv inj in clsn w nonmtr veh in traf, init', CAST(N'2021-09-28T00:00:00' AS SmallDateTime), 19, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (8, N'Palamocladium Moss', NULL, CAST(N'2021-06-04T00:00:00' AS SmallDateTime), 105, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (9, N'Colorado Blue Columbine', N'Unsp traum displ spondylolysis of sixth cervcal vert, 7thD', CAST(N'2022-01-14T00:00:00' AS SmallDateTime), 44, NULL, CAST(N'2021-08-29T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (10, N'Bilimbi', N'test description', CAST(N'2021-03-25T00:00:00' AS SmallDateTime), 79, CAST(N'2021-07-14T00:00:00' AS SmallDateTime), CAST(N'2021-02-23T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (11, N'Rimmed Lichen', NULL, CAST(N'2021-03-23T00:00:00' AS SmallDateTime), 64, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (12, N'Largeflower Yellow False Foxglove', N'Monocular exotropia, left eye', CAST(N'2022-02-21T00:00:00' AS SmallDateTime), 16, NULL, CAST(N'2021-05-11T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (13, N'Irion County Buckwheat', N'Osteolysis, left hand', CAST(N'2022-02-24T00:00:00' AS SmallDateTime), 158, NULL, CAST(N'2021-01-30T00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (14, N'Sweet White Violet', NULL, CAST(N'2021-01-13T00:00:00' AS SmallDateTime), 177, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (15, N'Chinese Ash', N'Huntington''s disease', CAST(N'2021-06-18T00:00:00' AS SmallDateTime), 200, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (16, N'Carolina Fluffgrass', N'Pnctr w/o fb of left great toe w/o damage to nail, sequela', CAST(N'2021-08-23T00:00:00' AS SmallDateTime), 128, NULL, CAST(N'2021-08-22T00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (17, N'Alamovine', N'Toxic effect of cobra venom, accidental, init', CAST(N'2021-10-22T00:00:00' AS SmallDateTime), 121, NULL, CAST(N'2021-08-24T00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (18, N'Steyermark''s Milkwort', N'Poisoning by anthelminthics, intentional self-harm, subs', CAST(N'2021-09-21T00:00:00' AS SmallDateTime), 83, NULL, CAST(N'2021-03-16T00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (19, N'Doll''s Daisy', N'Disp fx of neck of scapula, unspecified shoulder, sequela', CAST(N'2021-09-10T00:00:00' AS SmallDateTime), 52, NULL, CAST(N'2021-12-25T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (20, N'Dot Lichen', N'Cerebral infarction due to thombos unsp cerebellar artery', CAST(N'2021-05-09T00:00:00' AS SmallDateTime), 56, NULL, CAST(N'2021-03-10T00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (21, N'Mountain Fly Honeysuckle', N'Pathological fracture, left toe(s), sequela', CAST(N'2021-06-09T00:00:00' AS SmallDateTime), 177, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (22, N'Guarana', N'Traum hemor cereb, w LOC >24 hr w/o ret consc w surv, subs', CAST(N'2021-11-10T00:00:00' AS SmallDateTime), 83, NULL, CAST(N'2021-07-05T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (23, N'Peacock Flower', NULL, CAST(N'2021-04-03T00:00:00' AS SmallDateTime), 145, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (24, N'Lemmon''s Lupine', NULL, CAST(N'2021-01-04T00:00:00' AS SmallDateTime), 33, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (25, N'Point Reyes Ceanothus', NULL, CAST(N'2021-08-07T00:00:00' AS SmallDateTime), 179, NULL, CAST(N'2021-09-12T00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (26, N'Florida Amaranth', N'Unsp fx lower end of l ulna, subs for clos fx w routn heal', CAST(N'2021-08-29T00:00:00' AS SmallDateTime), 97, NULL, CAST(N'2021-02-26T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (27, N'Jesup''s Hawthorn', N'Retinopathy of prematurity, stage 4, left eye', CAST(N'2021-02-11T00:00:00' AS SmallDateTime), 111, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (28, N'Sprague''s Eggyolk Lichen', NULL, CAST(N'2021-05-14T00:00:00' AS SmallDateTime), 60, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (29, N'Hepp''s Cracked Lichen', N'Injury of ulnar nerve at upper arm level, unsp arm, subs', CAST(N'2021-12-15T00:00:00' AS SmallDateTime), 67, NULL, CAST(N'2022-01-29T00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (30, N'Chalk Dudleya', N'Subluxation of metacarpal (bone), proximal end of right hand', CAST(N'2022-01-13T00:00:00' AS SmallDateTime), 188, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (31, N'Buttonsage', N'Other intervertebral disc displacement, thoracolumbar region', CAST(N'2022-02-01T00:00:00' AS SmallDateTime), 150, NULL, CAST(N'2021-06-03T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (32, N'Marbletree', N'Major laceration of pancreas', CAST(N'2021-09-04T00:00:00' AS SmallDateTime), 132, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (33, N'Kalealaha Beggarticks', N'Diffuse follicle center lymphoma, intrathoracic lymph nodes', CAST(N'2021-08-17T00:00:00' AS SmallDateTime), 101, NULL, CAST(N'2021-11-23T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (34, N'Gracilariopsis', N'Toxic effect of halogenated insecticides, accidental, init', CAST(N'2022-02-04T00:00:00' AS SmallDateTime), 34, NULL, CAST(N'2021-02-20T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (35, N'Rollins'' Clover', N'Newborn affected by hemorrhage into maternal circulation', CAST(N'2021-01-11T00:00:00' AS SmallDateTime), 11, NULL, CAST(N'2022-04-02T00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (36, N'Pistia', N'Osteonecrosis due to previous trauma, right finger(s)', CAST(N'2021-03-18T00:00:00' AS SmallDateTime), 76, NULL, CAST(N'2021-12-22T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (37, N'Lepanthopsis', N'Driver injured in collision w oth mv in traf, sequela', CAST(N'2021-02-09T00:00:00' AS SmallDateTime), 32, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (38, N'Allegheny-spurge', N'Acquired absence of other toe(s), unspecified side', CAST(N'2021-06-10T00:00:00' AS SmallDateTime), 169, NULL, CAST(N'2021-11-01T00:00:00' AS SmallDateTime), 6)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (39, N'Molokai Beggarticks', N'Adverse effect of other psychodysleptics, initial encounter', CAST(N'2021-07-30T00:00:00' AS SmallDateTime), 132, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (40, N'California Pinefoot', N'Torus fracture of upper end of right humerus, sequela', CAST(N'2021-11-27T00:00:00' AS SmallDateTime), 148, NULL, CAST(N'2021-02-28T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (41, N'Volcanic Gilia', NULL, CAST(N'2021-04-16T00:00:00' AS SmallDateTime), 121, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (42, N'Needle Lichen', NULL, CAST(N'2021-04-23T00:00:00' AS SmallDateTime), 70, NULL, CAST(N'2021-12-17T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (43, N'Melia', NULL, CAST(N'2022-05-15T00:00:00' AS SmallDateTime), 185, CAST(N'2021-08-19T00:00:00' AS SmallDateTime), NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (44, N'Southern Mountain Buckwheat', NULL, CAST(N'2021-03-28T00:00:00' AS SmallDateTime), 95, NULL, CAST(N'2022-05-19T00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (45, N'Goldencrest', N'Other streptococcal arthritis, unspecified hand', CAST(N'2021-01-24T00:00:00' AS SmallDateTime), 144, NULL, CAST(N'2021-09-16T00:00:00' AS SmallDateTime), 5)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (46, N'''ena''ena', NULL, CAST(N'2022-03-10T00:00:00' AS SmallDateTime), 23, NULL, CAST(N'2022-04-09T00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (47, N'Dutilly''s Barley', N'Complications of bone graft', CAST(N'2021-06-19T00:00:00' AS SmallDateTime), 98, NULL, CAST(N'2022-01-13T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (48, N'Yerba De Estrella', NULL, CAST(N'2022-05-10T00:00:00' AS SmallDateTime), 38, CAST(N'2022-03-25T00:00:00' AS SmallDateTime), NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (49, N'Fewseed Sedge', N'Burn of second degree of unspecified lower leg, subs encntr', CAST(N'2021-04-25T00:00:00' AS SmallDateTime), 131, NULL, CAST(N'2022-02-11T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (50, N'Parish''s California Fescue', N'Villonodular synovitis (pigmented), left hand', CAST(N'2021-07-26T00:00:00' AS SmallDateTime), 197, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (51, N'Deering''s Tree Cactus', NULL, CAST(N'2022-02-08T00:00:00' AS SmallDateTime), 48, NULL, CAST(N'2021-11-24T00:00:00' AS SmallDateTime), 4)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (52, N'Fox Sedge', NULL, CAST(N'2021-10-09T00:00:00' AS SmallDateTime), 116, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (53, N'Margarett''s Myrcia', NULL, CAST(N'2021-10-21T00:00:00' AS SmallDateTime), 184, NULL, CAST(N'2022-01-31T00:00:00' AS SmallDateTime), 12)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (54, N'Steiner''s Lecidea Lichen', N'Congenital laryngomalacia', CAST(N'2021-05-31T00:00:00' AS SmallDateTime), 194, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (55, N'Olney''s Hairy Sedge', N'Blister (nonthermal), left great toe, initial encounter', CAST(N'2021-04-15T00:00:00' AS SmallDateTime), 58, NULL, CAST(N'2021-07-08T00:00:00' AS SmallDateTime), 9)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (56, N'Wright''s Eryngo', N'Duodenitis without bleeding', CAST(N'2021-09-18T00:00:00' AS SmallDateTime), 20, NULL, CAST(N'2021-05-21T00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (57, N'Bahama Nightshade', NULL, CAST(N'2021-02-11T00:00:00' AS SmallDateTime), 191, NULL, CAST(N'2021-07-11T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (58, N'San Diego Mesamint', N'Herpes gestationis', CAST(N'2021-09-08T00:00:00' AS SmallDateTime), 172, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (59, N'Twinsorus Fern', N'Strain of musc/tend anterior muscle group at lower leg level', CAST(N'2022-04-27T00:00:00' AS SmallDateTime), 34, NULL, CAST(N'2021-04-28T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (60, N'Wyoming Townsend Daisy', NULL, CAST(N'2021-10-14T00:00:00' AS SmallDateTime), 86, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (61, N'Manilkara Zapota', N'Mix cndct/snrl hear loss,uni,l ear,w unrestr hear cntra side', CAST(N'2021-01-10T00:00:00' AS SmallDateTime), 154, NULL, CAST(N'2021-06-23T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (62, N'Plagiobryum Moss', NULL, CAST(N'2022-01-16T00:00:00' AS SmallDateTime), 195, NULL, CAST(N'2022-01-08T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (63, N'Thickleaf Water-willow', N'Poisoning by unsp drugs acting on muscles, undet, init', CAST(N'2021-02-07T00:00:00' AS SmallDateTime), 94, CAST(N'2021-01-27T00:00:00' AS SmallDateTime), CAST(N'2021-12-26T00:00:00' AS SmallDateTime), 3)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (64, N'Copper Moss', N'Blister (nonthermal), left lower leg, sequela', CAST(N'2021-03-27T00:00:00' AS SmallDateTime), 52, NULL, CAST(N'2021-03-20T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (65, N'Bayhops', N'Unsp focal TBI w LOC w death due to oth cause bf consc, subs', CAST(N'2021-08-01T00:00:00' AS SmallDateTime), 174, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (66, N'Chisos Oak', N'Barton''s fx left radius, subs for clos fx w routn heal', CAST(N'2022-03-02T00:00:00' AS SmallDateTime), 22, NULL, CAST(N'2022-03-19T00:00:00' AS SmallDateTime), 7)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (67, N'Cankerweed', N'Crushing injury of unspecified right toe(s), sequela', CAST(N'2021-02-19T00:00:00' AS SmallDateTime), 192, NULL, CAST(N'2021-10-13T00:00:00' AS SmallDateTime), 11)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (68, N'Spanish Lime', NULL, CAST(N'2022-01-22T00:00:00' AS SmallDateTime), 134, NULL, CAST(N'2021-03-30T00:00:00' AS SmallDateTime), 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (69, N'Spurred Gentian', NULL, CAST(N'2021-03-15T00:00:00' AS SmallDateTime), 32, NULL, CAST(N'2021-05-27T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (70, N'Bicolored Spleenwort', NULL, CAST(N'2021-07-01T00:00:00' AS SmallDateTime), 85, NULL, CAST(N'2021-06-12T00:00:00' AS SmallDateTime), 8)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (1073, N'temp', NULL, CAST(N'2023-12-05T21:55:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (1074, N'temp', NULL, CAST(N'2023-12-05T21:57:00' AS SmallDateTime), 2, NULL, NULL, 0)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (1075, N'temp', NULL, CAST(N'2023-12-05T21:57:00' AS SmallDateTime), 2, NULL, NULL, 7)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (1076, N'temp', NULL, CAST(N'2023-12-05T21:57:00' AS SmallDateTime), 2, NULL, NULL, 0)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (1077, N'temp', NULL, CAST(N'2023-12-05T21:57:00' AS SmallDateTime), 2, NULL, NULL, NULL)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (1500, N'temp', NULL, CAST(N'2023-12-07T19:48:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (2073, N'temp111', NULL, CAST(N'2023-12-07T19:49:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (2074, N'temp111', NULL, CAST(N'2023-12-07T19:49:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (3075, N'test999', NULL, CAST(N'2023-12-22T00:00:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (3076, N'test999', NULL, CAST(N'2023-12-22T00:00:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (3077, N'test999', NULL, CAST(N'2022-12-22T00:00:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (3078, N'test777', NULL, CAST(N'2023-12-22T00:00:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (3079, N'test777', NULL, CAST(N'2023-12-22T00:00:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
INSERT [dbo].[albums] ([id], [title], [description], [creation_date], [user_id], [deleted_at], [updated_at], [rate]) VALUES (3080, N'test777', NULL, CAST(N'2022-12-22T00:00:00' AS SmallDateTime), 2, NULL, NULL, 10)
GO
SET IDENTITY_INSERT [dbo].[albums] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (2, N'dkirman1@lycos.com', N'mcottle1', N'JyZqWJ9', CAST(N'1995-12-15' AS Date), CAST(N'2022-06-25T10:29:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (3, N'dmacro2@bing.com', N'mleving2', N'7ubdJZtkbbs', CAST(N'1993-10-12' AS Date), CAST(N'2022-06-25T10:29:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (4, N'cmacadam3@ed.gov', N'rwarn3', N'fu5ELjzjAvQL', CAST(N'1997-12-22' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (5, N'cprobart4@mozilla.org', N'cjope4', N'PNqJQeE2zKY7', CAST(N'2001-11-29' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (6, N'cclemente5@jalbum.net', N'clarmett5', N'GS5H4mC', CAST(N'1995-06-27' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (7, N'ccardnell6@issuu.com', N'scolcomb6', N'TgDCpByRK07', CAST(N'1999-03-30' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (8, N'sjohnston7@bbb.org', N'rlidgey7', N'YhBVmYC6X', CAST(N'1996-09-13' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (9, N'mportriss8@telegraph.co.uk', N'sstandering8', N'63Ra1a3AzLF', CAST(N'1998-01-28' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (10, N'seggers9@elegantthemes.com', N'tcoveley9', N'cCAe9AAAGx', CAST(N'1986-12-21' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (11, N'gventurolia@t.co', N'shudspetha', N'VlZUG0PWRRMR', CAST(N'2001-03-14' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (12, N'mgleweb@indiegogo.com', N'adhillonb', N'9kVvj9qH', CAST(N'1987-07-30' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (13, N'ccureec@google.nl', N'kheckneyc', N'BV1RqefUae3C', CAST(N'1994-12-18' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (14, N'cplanked@omniture.com', N'rbenezetd', N'Et26A8X', CAST(N'1986-03-28' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (15, N'blindstrome@spotify.com', N'htombse', N'pkXA4Owg87', CAST(N'2001-03-10' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (16, N'ikelwayf@sun.com', N'bmcraef', N'f9z4E2', CAST(N'2002-02-14' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (17, N'umaccig@tinyurl.com', N'cwillsmoreg', N'gj8btv', CAST(N'1996-12-18' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (18, N'caubrih@baidu.com', N'habberleyh', N'p8Az2iY9', CAST(N'1990-05-19' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (19, N'fhawtini@icq.com', N'tpierrii', N'WjAgn51jb', CAST(N'1995-04-26' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (20, N'mnorthingj@meetup.com', N'sdachj', N'Zk5ZhYu', CAST(N'1998-11-05' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (21, N'cfindlaterk@economist.com', N'yyellandk', N'vL8mCPRrNtj', CAST(N'1999-05-17' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (22, N'tkyteleyl@house.gov', N'gtwydelll', N'3q8V5FqHm7z', CAST(N'1992-11-11' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (23, N'lobraym@pcworld.com', N'cgrouenm', N'4XJS6sbZyW', CAST(N'1995-03-15' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (24, N'gchattertonn@free.fr', N'gtuxwelln', N'wEdYk8Q', CAST(N'1987-09-06' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (25, N'hlowatero@blogtalkradio.com', N'hkrystofo', N'ESpQWU7', CAST(N'2001-12-16' AS Date), CAST(N'2022-06-25T10:30:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (26, N'kbarabischp@acquirethisname.com', N'xxxxxxxxx', N'R1m4P7hwC', CAST(N'1995-11-05' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (27, N'fbraddockq@eepurl.com', N'fgrenvilleq', N'OvmlFRCsIe', CAST(N'1996-04-19' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (28, N'cetheridger@php.net', N'aanlayr', N'czCP4vy', CAST(N'1990-04-03' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (29, N'lcressars@purevolume.com', N'mcarnelleys', N'BjYrnSo', CAST(N'1988-12-24' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (30, N'cscarlint@imageshack.us', N'tmccuist', N'TId1zRCMM1J', CAST(N'2003-02-24' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (31, N'ewhappleu@uol.com.br', N'kkubalu', N'EIkzqK1wgKB', CAST(N'1989-11-25' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (32, N'gboytonv@jalbum.net', N'wlockhartv', N'hpZJS5', CAST(N'1987-05-15' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (33, N'dwillstropw@constantcontact.com', N'dminchindonw', N'omAvAYe', CAST(N'1999-10-18' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (34, N'aviantx@trellian.com', N'mbodimeadex', N'iX0ieSn', CAST(N'1986-07-27' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (35, N'ahaslegravey@furl.net', N'mbradeny', N'XuObBgVT', CAST(N'2001-01-23' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (36, N'gwychez@phpbb.com', N'lcrannellz', N'5RbiTrw2', CAST(N'2001-10-15' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (37, N'clegges10@canalblog.com', N'fgoggan10', N'0sRQp1gUgaus', CAST(N'1988-07-01' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (38, N'esynan11@plala.or.jp', N'mlongmaid11', N'Dh9fiyg', CAST(N'2001-08-26' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (39, N'dyekel12@gov.uk', N'cdamsell12', N'0fD2ZFPHZ', CAST(N'2000-04-08' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (40, N'csarfas13@bloomberg.com', N'dbuckam13', N'nESxyl', CAST(N'1996-08-26' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (41, N'bdevenport14@epa.gov', N'bgiroldi14', N'fAKH6f5u2', CAST(N'1991-01-21' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (42, N'eburrill15@noaa.gov', N'jbridson15', N'jNhY7Qa4XCt', CAST(N'1991-08-18' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (43, N'qbuckenhill16@google.co.jp', N'egilberthorpe16', N'udEqh0IQFT', CAST(N'2002-05-25' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (44, N'ccoggon17@newyorker.com', N'kruste17', N'VDdBE8K', CAST(N'1998-02-17' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (45, N'vearle18@newsvine.com', N'hmatschoss18', N'OEfOga5', CAST(N'1991-08-14' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (46, N'fsorey19@artisteer.com', N'fturfin19', N'OBW4FG', CAST(N'1986-06-29' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (47, N'jlatey1a@facebook.com', N'lsisnett1a', N'aNwYjt', CAST(N'1986-06-01' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (48, N'olittler1b@sbwire.com', N'rrentoll1b', N'rujTADUSF9', CAST(N'1995-11-20' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (49, N'mbelsey1c@mayoclinic.com', N'gbeadles1c', N'j3D2XaSXs6', CAST(N'1990-06-05' AS Date), CAST(N'2022-06-25T11:43:00' AS SmallDateTime))
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (50, N'vwildin1d@weebly.com', N'lodornan1d', N'ldK3QORu', CAST(N'1985-09-02' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (51, N'fcoram1e@shinystat.com', N'cknibley1e', N'ZaU9C6gz', CAST(N'1995-01-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (52, N'pshannahan1f@wired.com', N'mlandsbury1f', N'bAY3Y4oRNbT', CAST(N'2002-02-05' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (53, N'rwolsey1g@nydailynews.com', N'bheinsius1g', N'1YdaJw5D', CAST(N'2000-01-11' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (54, N'dlumsdale1h@bloglovin.com', N'rsedge1h', N'ADV0kj', CAST(N'2001-05-26' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (55, N'adungey1i@cdc.gov', N'hhammel1i', N'YG4pSArna', CAST(N'1994-02-28' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (56, N'cburgess1j@hc360.com', N'iaronovitz1j', N'WR5bcQG', CAST(N'1996-01-05' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (57, N'cashmole1k@npr.org', N'bjeaffreson1k', N'UbU2xY', CAST(N'1995-11-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (58, N'rburras1l@parallels.com', N'bgillaspy1l', N'nz0dYEHB66ah', CAST(N'1991-06-10' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (59, N'bsighard1m@cafepress.com', N'kdelgua1m', N'RuROCO9L5', CAST(N'2000-10-25' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (60, N'gsimmen1n@chicagotribune.com', N'csalway1n', N'JdjQ5z4ERUr', CAST(N'1990-02-13' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (61, N'hmcvee1o@economist.com', N'lgomby1o', N'syEmHN', CAST(N'2002-12-15' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (62, N'clindell1p@google.it', N'gthames1p', N's0cIPH', CAST(N'1986-11-21' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (63, N'jkrauze1q@opera.com', N'kjess1q', N'VejpLxz3NrW4', CAST(N'2000-11-13' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (64, N'irheam1r@cnn.com', N'mrepp1r', N'HNpsnQ98G2Rn', CAST(N'1993-06-27' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (65, N'mvaughten1s@wikipedia.org', N'atowns1s', N'4LVMdHSqP', CAST(N'2001-04-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (66, N'vscotchmore1t@sciencedirect.com', N'ameir1t', N'HWjUo8', CAST(N'1990-08-24' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (67, N'jpeskett1u@google.com', N'ctwaits1u', N'QkYAJNkAQ', CAST(N'2000-01-27' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (68, N'nbowditch1v@about.com', N'bcoytes1v', N'qqFjIJBgo', CAST(N'1989-12-02' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (69, N'owyvill1w@a8.net', N'jbonsul1w', N'qpBlWA', CAST(N'2003-01-19' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (70, N'mmcillrick1x@godaddy.com', N'wcapper1x', N'PUrxVilsSnwe', CAST(N'1986-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (71, N'kthaw1y@mapquest.com', N'tbusen1y', N'i3TXSlp', CAST(N'1993-12-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (72, N'zfoan1z@theguardian.com', N'ggrindell1z', N'W3vnaRlV3', CAST(N'1999-07-15' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (73, N'eguppie20@devhub.com', N'gfeast20', N'zANrpcxy', CAST(N'1989-07-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (74, N'jcaplen21@house.gov', N'kgadie21', N'2onNTJ73Jvj', CAST(N'1992-09-26' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (75, N'dbrackpool22@comsenz.com', N'rroos22', N'IGtfCwxQi', CAST(N'1993-12-29' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (76, N'mraistrick23@xinhuanet.com', N'lborles23', N'5fUneK6RS', CAST(N'1987-03-03' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (77, N'geyden24@phoca.cz', N'elehrahan24', N'cUbD3Gypq', CAST(N'1992-02-14' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (78, N'rmulles25@alibaba.com', N'dtruett25', N'tGizMF', CAST(N'1996-05-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (79, N'tbeedle26@dailymail.co.uk', N'agaitley26', N'6t275DzPvWZ0', CAST(N'1990-09-08' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (80, N'ikenwrick27@oracle.com', N'gocooney27', N'2xTmKtG', CAST(N'2000-05-23' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (81, N'pvann28@networkadvertising.org', N'hdeegan28', N'yWFtMHf', CAST(N'1999-07-25' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (82, N'ebartlosz29@sogou.com', N'sraysdale29', N'MBvqHEL', CAST(N'1995-07-30' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (83, N'srapo2a@artisteer.com', N'skieran2a', N'1VjGQPDv5', CAST(N'1988-11-19' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (84, N'slangton2b@technorati.com', N'owimlet2b', N'FzzCA4BVe', CAST(N'1987-06-25' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (85, N'hhordell2c@lycos.com', N'amattisssen2c', N'UNQXnFpCQ', CAST(N'1994-03-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (86, N'dsholl2d@homestead.com', N'cjosofovitz2d', N'U6m2EaGgRoE', CAST(N'1990-12-03' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (87, N'mplowes2e@devhub.com', N'apetters2e', N'ZzLRXEy6', CAST(N'1994-04-25' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (88, N'oranking2f@dropbox.com', N'csketcher2f', N'vb6CDs3y2', CAST(N'1993-09-27' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (89, N'oeckery2g@businessweek.com', N'rmasters2g', N'7O8aLozCM', CAST(N'1995-09-15' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (90, N'dchudleigh2h@usatoday.com', N'dcoppen2h', N'nLM0be', CAST(N'1999-01-04' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (91, N'fkilgour2i@sciencedaily.com', N'mbrittain2i', N'5DmU4KnlcUl', CAST(N'1990-03-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (92, N'mburwin2j@flickr.com', N'leveling2j', N'OAkAjBU', CAST(N'1988-02-05' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (93, N'bnorree2k@accuweather.com', N'bnellies2k', N'Ye6VbSkEtQB', CAST(N'1993-11-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (94, N'mshadrack2l@icq.com', N'sbernaert2l', N'uj2dfJD9nyW', CAST(N'1991-01-04' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (95, N'vkillingbeck2m@wp.com', N'ahowselee2m', N'Wrk3p9kzn', CAST(N'1998-05-04' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (96, N'ncalyton2n@mapy.cz', N'kreames2n', N'7JFNXs8N3TGe', CAST(N'1998-08-11' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (97, N'evalenti2o@japanpost.jp', N'mdewey2o', N'dVeSWplx', CAST(N'1987-08-29' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (98, N'vvandenhof2p@wikimedia.org', N'cmeldrum2p', N'rSSCvPr', CAST(N'1989-04-13' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (99, N'pprendergrass2q@ucla.edu', N'cvass2q', N'R3SlkZ3', CAST(N'2002-02-10' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (100, N'dlethbridge2r@hubpages.com', N'cprendeville2r', N'14bhigm', CAST(N'1989-11-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (101, N'msangwin2s@home.pl', N'zgoldhawk2s', N'4Z6bSdByn', CAST(N'1994-05-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (102, N'bheart2t@gmpg.org', N'vladel2t', N'EZSxKClGeVSQ', CAST(N'2001-10-18' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (103, N'mmacalroy2u@altervista.org', N'dmcgragh2u', N'eDUTK1Eg', CAST(N'1999-11-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (104, N'mdelacote2v@qq.com', N'phowlings2v', N'quScLbOTizI', CAST(N'1998-10-13' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (105, N'mmason2w@bbc.co.uk', N'hquig2w', N'rRDKVQVo', CAST(N'1998-01-28' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (106, N'dhartup2x@sogou.com', N'emaciejewski2x', N'2wbT53', CAST(N'2003-02-09' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (107, N'cdanilishin2y@un.org', N'tlabastida2y', N'p9lshHp7k', CAST(N'1987-04-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (108, N'blauret2z@cyberchimps.com', N'klilywhite2z', N'F5CUyoZ5LML', CAST(N'1990-04-10' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (109, N'sgent30@tripadvisor.com', N'bpurkis30', N'L0FIUjnjPgH', CAST(N'1992-02-26' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (110, N'fagates31@1688.com', N'mlydden31', N'OFWVK91HN', CAST(N'1996-12-20' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (111, N'dklain32@upenn.edu', N'togley32', N'u2BOmev8yBf', CAST(N'1990-03-26' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (112, N'smoston33@prnewswire.com', N'cmatushevitz33', N'irZzEdg', CAST(N'1994-03-24' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (113, N'llimbert34@wsj.com', N'rgould34', N'CncyUh6AzjvD', CAST(N'1998-11-29' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (114, N'cstainfield35@illinois.edu', N'daleksandrikin35', N'j5PZjmRXyap', CAST(N'1988-10-17' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (115, N'fbert36@ocn.ne.jp', N'wpagram36', N'3GWq0ByMBw', CAST(N'1998-07-17' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (116, N'ccoltan37@springer.com', N'jduckett37', N'lEXumQ', CAST(N'1987-10-08' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (117, N'lbungey38@cdbaby.com', N'bireland38', N'ermuQTk', CAST(N'2000-07-18' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (118, N'ccroasdale39@google.fr', N'utomkys39', N'SUTIPk5Xyl', CAST(N'1989-08-13' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (119, N'gllopis3a@earthlink.net', N'chyman3a', N'pZFukViiFAL', CAST(N'1991-06-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (120, N'mbuttress3b@japanpost.jp', N'kcollop3b', N'csW3i9cm0p5E', CAST(N'1988-02-21' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (121, N'efowden3c@reddit.com', N'iantoniat3c', N'3PILhNJi6VD', CAST(N'1988-02-29' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (122, N'aenos3d@devhub.com', N'saldam3d', N'zQ3HybtUG9g', CAST(N'1992-11-30' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (123, N'mmcmearty3e@hugedomains.com', N'mmaud3e', N'AfGtroh4', CAST(N'1995-12-04' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (124, N'ggolledge3f@npr.org', N'tlongman3f', N'IyJANiILec', CAST(N'1998-11-09' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (125, N'crushmer3g@blogspot.com', N'bcruttenden3g', N'4FDVt0ZYS', CAST(N'1993-05-10' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (126, N'epetrazzi3h@miibeian.gov.cn', N'tbatterton3h', N'VR8C1wEY', CAST(N'1994-02-05' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (127, N'lchellam3i@cam.ac.uk', N'hiacovides3i', N'uw1aw7kzjR2', CAST(N'1986-06-25' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (128, N'abiskupek3j@fastcompany.com', N'jbebbington3j', N'5iEj3vzc', CAST(N'1996-04-21' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (129, N'ssunderland3k@acquirethisname.com', N'udiggles3k', N'CzGxaQi', CAST(N'1999-09-05' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (130, N'sbeacon3l@yahoo.com', N'tpattington3l', N'WxefFn6', CAST(N'1991-07-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (131, N'mcoate3m@unicef.org', N'fletertre3m', N'kbZ0TE', CAST(N'2000-02-21' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (132, N'fsayse3n@liveinternet.ru', N'pcarsey3n', N'MNy9lYzOYE17', CAST(N'1990-04-29' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (133, N'ohamly3o@thetimes.co.uk', N'jgoulding3o', N'9ffe8wnm9u3', CAST(N'1985-06-29' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (134, N'eskokoe3p@livejournal.com', N'llincoln3p', N'ZKpABwZ', CAST(N'1989-05-26' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (135, N'fcourtney3q@ihg.com', N'dthebeau3q', N'eIPcgkATiD', CAST(N'1988-03-04' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (136, N'bfrankema3r@artisteer.com', N'jbudding3r', N'D1MDMIYZv', CAST(N'1993-10-15' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (137, N'hgerrietz3s@unblog.fr', N'emckinnon3s', N'zcGLyln4JoP', CAST(N'1989-04-03' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (138, N'tmckay3t@indiatimes.com', N'rshortin3t', N'dmJ3jJo', CAST(N'1997-06-19' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (139, N'drosenhaupt3u@omniture.com', N'hgarrique3u', N'tPfi989Fid', CAST(N'1987-11-30' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (140, N'mcanet3v@free.fr', N'oplaistowe3v', N'yNAJgACxXJWw', CAST(N'1988-12-17' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (141, N'flower3w@unesco.org', N'gwederell3w', N'ktGKEDPI1cRg', CAST(N'1997-05-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (142, N'pwelbelove3x@123-reg.co.uk', N'pgori3x', N'LPVrZ0UcyZn6', CAST(N'1990-01-14' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (143, N'mwrightim3y@liveinternet.ru', N'ochudleigh3y', N'KvTtx3ElQj', CAST(N'1997-11-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (144, N'msyce3z@admin.ch', N'afosdick3z', N'E6cVzy1FPR', CAST(N'1985-07-04' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (145, N'tgabbetis40@shop-pro.jp', N'awrightam40', N'BGs5c0KvcP', CAST(N'1990-07-01' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (146, N'nstarford41@livejournal.com', N'mchristofides41', N'zdSLE41AGqcN', CAST(N'2003-01-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (147, N'kdix42@list-manage.com', N'ksommerton42', N'GQdIkkN', CAST(N'1998-12-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (148, N'cbram43@usgs.gov', N'jburr43', N'KdWsg3pY', CAST(N'1999-02-18' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (149, N'sgraalman44@alexa.com', N'dbonds44', N'pGBWr05RhFT', CAST(N'1997-02-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (150, N'lbetchley45@oaic.gov.au', N'mvideneev45', N'MQK4B0Z', CAST(N'1988-05-22' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (151, N'phaggerston46@networksolutions.com', N'bithell46', N'nILJJG', CAST(N'1996-06-22' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (152, N'adutteridge47@usa.gov', N'pwhitlow47', N'Qx6YXO43', CAST(N'1994-02-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (153, N'mantonik48@amazonaws.com', N'fmoxsom48', N'ub79TEh48c', CAST(N'2000-06-02' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (154, N'ldiggens49@craigslist.org', N'mskiplorne49', N'y2f4IUjF', CAST(N'1997-02-28' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (155, N'kmastrantone4a@so-net.ne.jp', N'ahawkey4a', N'93cLJ8VEi6pR', CAST(N'2001-02-28' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (156, N'dklaesson4b@cdc.gov', N'rcaunter4b', N'hgYBLGf1', CAST(N'1989-06-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (157, N'obeccera4c@example.com', N'lburrell4c', N'Wfwk0i23wg', CAST(N'1987-01-30' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (158, N'jcoppen4d@parallels.com', N'shousecraft4d', N'CQj1FRVi9qbC', CAST(N'1996-07-23' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (159, N'amolloy4e@skype.com', N'glightwood4e', N'IEYxdLeG0', CAST(N'2002-10-17' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (160, N'jtattershall4f@engadget.com', N'afairest4f', N'Wh4wOxOZT', CAST(N'1996-10-15' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (161, N'ostansfield4g@gnu.org', N'cpascoe4g', N'JGSSm4', CAST(N'1994-08-09' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (162, N'dtapley4h@techcrunch.com', N'edavydenko4h', N'Top6Ffup', CAST(N'1986-01-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (163, N'liggulden4i@desdev.cn', N'cvasishchev4i', N'7lL1gV', CAST(N'2000-05-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (164, N'dwrigley4j@alexa.com', N'vtithecote4j', N'wTmKI1Q5bVDu', CAST(N'1987-06-11' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (165, N'fknibley4k@arstechnica.com', N'ggerriet4k', N'Iqwxtk', CAST(N'1986-07-08' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (166, N'jdando4l@ning.com', N'awilstead4l', N'quDRQau', CAST(N'2000-10-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (167, N'agriffin4m@webs.com', N'bcorgenvin4m', N'nwqOuc', CAST(N'1991-04-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (168, N'lstrongman4n@t.co', N'erichard4n', N'YSYq6mC', CAST(N'1999-07-09' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (169, N'bgogay4o@cnbc.com', N'kkunkel4o', N'3fKD9rU4S', CAST(N'1996-01-23' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (170, N'wliley4p@howstuffworks.com', N'ihuffadine4p', N'UFQlJY', CAST(N'2002-12-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (171, N'aelsip4q@dot.gov', N'bradoux4q', N'R281TkqOawu', CAST(N'1987-07-10' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (172, N'emccarlie4r@springer.com', N'agrinham4r', N'XmHwFP', CAST(N'1995-01-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (173, N'chaseldine4s@tiny.cc', N'amangeot4s', N'lK5sd99', CAST(N'1995-11-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (174, N'awharf4t@dyndns.org', N'mcamamill4t', N'XWU45owhr4', CAST(N'1996-07-25' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (175, N'cbalsdone4u@wiley.com', N'ckubala4u', N'I0QKTWi29', CAST(N'1990-01-06' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (176, N'rwycliff4v@fda.gov', N'kstetson4v', N'VIzEwo0XRw', CAST(N'1992-08-13' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (177, N'jbrede4w@bandcamp.com', N'mbradie4w', N'NK8T1Y', CAST(N'2001-05-31' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (178, N'blasham4x@homestead.com', N'pmustarde4x', N'9GCwfZm', CAST(N'1989-08-26' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (179, N'cfieldhouse4y@wikispaces.com', N'sgunbie4y', N'arnadzFvKf0Y', CAST(N'1993-05-15' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (180, N'ayaknov4z@booking.com', N'mjosskovitz4z', N'CrNYctc', CAST(N'1987-06-09' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (181, N'codoherty50@over-blog.com', N'bcuschieri50', N'e3qfk7bnmp', CAST(N'1992-11-19' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (182, N'prisdale51@dot.gov', N'jhowbrook51', N'Kqb4N2p5', CAST(N'1985-06-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (183, N'mgally52@archive.org', N'msimonou52', N'5ZmIEx9Yw1', CAST(N'2002-01-11' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (184, N'cligerton53@1688.com', N'vdudgeon53', N'VAQ5PYT', CAST(N'1990-08-11' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (185, N'chousecroft54@istockphoto.com', N'ginman54', N'9GvU38', CAST(N'2000-09-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (186, N'amundell55@hubpages.com', N'rfinley55', N'wTU2077brw', CAST(N'1989-06-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (187, N'mcordsen56@ezinearticles.com', N'dtunna56', N'zLrStyJa4AZ0', CAST(N'1991-10-01' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (188, N'lohear57@house.gov', N'nbirtley57', N'rxBzSWClXN', CAST(N'2002-04-22' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (189, N'tpietzner58@guardian.co.uk', N'jarndtsen58', N'rmDwQPTJSM', CAST(N'2000-12-26' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (190, N'hbamfield59@examiner.com', N'odrinkhall59', N'EnkxXSegS5', CAST(N'1988-03-23' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (191, N'csweetenham5a@amazon.de', N'cmeak5a', N'LF4D0NiQj9gk', CAST(N'1994-02-09' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (192, N'rarchdeacon5b@usnews.com', N'pchaplain5b', N'eJfvzQEQ', CAST(N'1987-05-16' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (193, N'cmolines5c@istockphoto.com', N'lfeldfisher5c', N'1vkonFMoc', CAST(N'2000-10-25' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (194, N'cferie5d@ebay.co.uk', N'hvickerman5d', N'ppVsgyaJhJ', CAST(N'1999-02-27' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (195, N'cthomassin5e@about.me', N'ctriggle5e', N'VAEF27c', CAST(N'1992-06-22' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (196, N'jgriffen5f@1688.com', N'lfurmonger5f', N'L0T6ilS', CAST(N'2000-03-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (197, N'ashillam5g@so-net.ne.jp', N'dfilipovic5g', N'FLHZKd5QmXJ', CAST(N'1996-09-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (198, N'cbeamand5h@delicious.com', N'kliley5h', N'Q9hCItc9W8', CAST(N'1990-01-07' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (199, N'cgrogona5i@earthlink.net', N'jmarklew5i', N'ZhBPqndbgg', CAST(N'1999-05-27' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (200, N'lbriance5j@xinhuanet.com', N'sjedrychowski5j', N'EvRrUuV0', CAST(N'2002-04-01' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (201, N'aaaa@aaa.aaa', N'aaaa', N'aaaaaaa', CAST(N'2010-03-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (206, N'www@www.www', N'www', N'wwwwww', CAST(N'2000-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (211, N'www3@www.www', N'www', N'wwwwww', CAST(N'2000-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (212, N'www4@www.www', N'www', N'wwwwww', CAST(N'2000-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (213, N'www5@www.www', N'www', N'wwwwww', CAST(N'2000-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (214, N'www6@www.www', N'www', N'wwwwww', CAST(N'2000-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (215, N'www7@www.www', N'www', N'wwwwww', CAST(N'2000-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (216, N'www8@www.www', N'www', N'wwwwww', CAST(N'2000-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (217, N'test_email@mail.com', N'test_nickname', N'test_pass', CAST(N'1990-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (219, N'test_email2@mail.com', N'test_nickname', N'test_pass', CAST(N'1990-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (220, N'test_email3@mail.com', N'test_nickname', N'test_pass', CAST(N'1990-12-12' AS Date), NULL)
GO
INSERT [dbo].[users] ([id], [email], [nickname], [password], [birthday], [deleted_at]) VALUES (221, N'test_email4@mail.com', N'test_nickname', N'test_pass', CAST(N'1990-12-12' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_users_email_unique]    Script Date: 26.03.2025 20:38:57 ******/
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [IX_users_email_unique] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[albums]  WITH NOCHECK ADD  CONSTRAINT [FK_albums_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[albums] CHECK CONSTRAINT [FK_albums_users]
GO
ALTER TABLE [dbo].[images]  WITH NOCHECK ADD  CONSTRAINT [FK_images_albums] FOREIGN KEY([album_id])
REFERENCES [dbo].[albums] ([id])
GO
ALTER TABLE [dbo].[images] CHECK CONSTRAINT [FK_images_albums]
GO
ALTER TABLE [dbo].[images]  WITH NOCHECK ADD  CONSTRAINT [FK_images_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[images] CHECK CONSTRAINT [FK_images_users]
GO
