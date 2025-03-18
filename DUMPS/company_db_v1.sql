USE [p31_company_db]
GO
/****** Object:  Table [dbo].[departments]    Script Date: 10.03.2025 21:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employees]    Script Date: 10.03.2025 21:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employees](
	[id] [int] IDENTITY(1000,1) NOT NULL,
	[name] [nvarchar](30) NULL,
	[birthday] [date] NULL,
	[email] [nvarchar](30) NULL,
	[position_id] [int] NULL,
	[department_id] [int] NULL,
	[hire_date] [date] NOT NULL,
	[manager_id] [int] NULL,
	[last_name] [nvarchar](50) NULL,
	[first_name] [nvarchar](50) NULL,
	[middle_name] [nvarchar](50) NULL,
	[salary] [float] NULL,
	[bonus_percent] [float] NULL,
	[extra_percent] [float] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[positions]    Script Date: 10.03.2025 21:58:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[positions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[departments] ON 
GO
INSERT [dbo].[departments] ([id], [title]) VALUES (1, N'administration')
GO
INSERT [dbo].[departments] ([id], [title]) VALUES (2, N'accounting')
GO
INSERT [dbo].[departments] ([id], [title]) VALUES (3, N'it')
GO
INSERT [dbo].[departments] ([id], [title]) VALUES (4, N'Реклама')
GO
INSERT [dbo].[departments] ([id], [title]) VALUES (5, N'Логистика')
GO
SET IDENTITY_INSERT [dbo].[departments] OFF
GO
SET IDENTITY_INSERT [dbo].[employees] ON 
GO
INSERT [dbo].[employees] ([id], [name], [birthday], [email], [position_id], [department_id], [hire_date], [manager_id], [last_name], [first_name], [middle_name], [salary], [bonus_percent], [extra_percent]) VALUES (1000, N'Иванов И.И.', CAST(N'1955-02-19' AS Date), N'i.ivanov@mail.com', 2, 1, CAST(N'2023-11-15' AS Date), NULL, N'Иванов', N'Иван', N'Иванович', 5000, 50, NULL)
GO
INSERT [dbo].[employees] ([id], [name], [birthday], [email], [position_id], [department_id], [hire_date], [manager_id], [last_name], [first_name], [middle_name], [salary], [bonus_percent], [extra_percent]) VALUES (1001, N'Петров П.П.', CAST(N'1983-12-03' AS Date), N'p.petrov@mail.com', 3, 3, CAST(N'2023-11-15' AS Date), 1003, N'Петров', N'Петр', N'Петрович', 1500, 15, NULL)
GO
INSERT [dbo].[employees] ([id], [name], [birthday], [email], [position_id], [department_id], [hire_date], [manager_id], [last_name], [first_name], [middle_name], [salary], [bonus_percent], [extra_percent]) VALUES (1002, N'Сидоров С.С.', CAST(N'1976-06-07' AS Date), N's.sidorov@mail.com', 1, 1, CAST(N'2023-11-15' AS Date), 1001, N'Сидоров', N'Сидор', NULL, 2500, NULL, 20)
GO
INSERT [dbo].[employees] ([id], [name], [birthday], [email], [position_id], [department_id], [hire_date], [manager_id], [last_name], [first_name], [middle_name], [salary], [bonus_percent], [extra_percent]) VALUES (1003, N'Андреев А.А.', CAST(N'1982-04-17' AS Date), N'a.andreev@mail.com', 4, 3, CAST(N'2023-11-15' AS Date), 1001, N'Андреев', N'Андрей', NULL, 2000, 30, NULL)
GO
INSERT [dbo].[employees] ([id], [name], [birthday], [email], [position_id], [department_id], [hire_date], [manager_id], [last_name], [first_name], [middle_name], [salary], [bonus_percent], [extra_percent]) VALUES (2004, N'Brus W', CAST(N'1982-10-10' AS Date), N'brus_w@mail.com', 4, 3, CAST(N'2023-11-21' AS Date), NULL, N'Willis', N'Brus', NULL, 2000, 10, NULL)
GO
SET IDENTITY_INSERT [dbo].[employees] OFF
GO
SET IDENTITY_INSERT [dbo].[positions] ON 
GO
INSERT [dbo].[positions] ([id], [title]) VALUES (1, N'booker')
GO
INSERT [dbo].[positions] ([id], [title]) VALUES (2, N'director')
GO
INSERT [dbo].[positions] ([id], [title]) VALUES (3, N'developer')
GO
INSERT [dbo].[positions] ([id], [title]) VALUES (4, N'teamlead')
GO
INSERT [dbo].[positions] ([id], [title]) VALUES (5, N'Маркетолог')
GO
INSERT [dbo].[positions] ([id], [title]) VALUES (6, N'Логист')
GO
INSERT [dbo].[positions] ([id], [title]) VALUES (7, N'Кладовщик')
GO
SET IDENTITY_INSERT [dbo].[positions] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Employees_Email]    Script Date: 10.03.2025 21:58:05 ******/
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [UQ_Employees_Email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employees] ADD  CONSTRAINT [DF_Employees_HireDate]  DEFAULT (sysdatetime()) FOR [hire_date]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_DepartmentID] FOREIGN KEY([department_id])
REFERENCES [dbo].[departments] ([id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_Employees_DepartmentID]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_ManagerID] FOREIGN KEY([manager_id])
REFERENCES [dbo].[employees] ([id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_Employees_ManagerID]
GO
ALTER TABLE [dbo].[employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_PositionID] FOREIGN KEY([position_id])
REFERENCES [dbo].[positions] ([id])
GO
ALTER TABLE [dbo].[employees] CHECK CONSTRAINT [FK_Employees_PositionID]
GO
