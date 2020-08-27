USE [CRUDTimeOffRequests]
GO
/****** Object:  Table [dbo].[TimeOffRequests]    Script Date: 8/26/2020 8:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeOffRequests](
	[TimeOffRequestId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](100) NOT NULL,
	[EmployeeLastname] [varchar](100) NOT NULL,
	[TimeOffTypeId] [int] NOT NULL,
	[RequestDate] [datetime] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TimeOffRequests] PRIMARY KEY CLUSTERED 
(
	[TimeOffRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeOffTypes]    Script Date: 8/26/2020 8:54:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeOffTypes](
	[TimeOffTypeId] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](50) NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_TimeOffTypes] PRIMARY KEY CLUSTERED 
(
	[TimeOffTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TimeOffRequests] ON 
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (1, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T11:44:12.757' AS DateTime), 0)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (2, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T14:27:03.733' AS DateTime), 0)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (3, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T17:06:17.557' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (4, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T17:10:02.797' AS DateTime), 0)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (5, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T17:51:11.447' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (6, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T17:59:17.153' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (7, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T18:00:03.553' AS DateTime), 0)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (8, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T18:12:20.603' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (9, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (10, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (11, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (12, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (13, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (14, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (15, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (16, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:29.840' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (17, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (18, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (19, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (20, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (21, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (22, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (23, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (24, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (25, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (26, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (27, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (28, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (29, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (30, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (31, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (32, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:33.710' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (33, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (34, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (35, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (36, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (37, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (38, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (39, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (40, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (41, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (42, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (43, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (44, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (45, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (46, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (47, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (48, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (49, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (50, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (51, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (52, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (53, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (54, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (55, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (56, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (57, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (58, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (59, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (60, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (61, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (62, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (63, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (64, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:34.813' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (65, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (66, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (67, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (68, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (69, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (70, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (71, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (72, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (73, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (74, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (75, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (76, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (77, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (78, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (79, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (80, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (81, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (82, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (83, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (84, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (85, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (86, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (87, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (88, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (89, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (90, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (91, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (92, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (93, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (94, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (95, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (96, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (97, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (98, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (99, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (100, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (101, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (102, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (103, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (104, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (105, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (106, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (107, N'Jose Manuel', N'Castillo', 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (108, N'sdsd', N'sdsd', 1, CAST(N'2020-08-20T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (109, N'Carlos migue', N'Pepe', 1, CAST(N'2020-08-27T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (110, N'Jose Alvis', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (111, N'wewe', N'wewe', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (112, N'Jose Alvisxxx', N'Bonnet', 1, CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (113, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (114, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (115, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (116, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (117, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (118, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (119, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (120, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (121, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (122, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (123, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (124, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (125, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (126, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (127, N'Jose Gabriela', N'Pena', 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffRequests] ([TimeOffRequestId], [EmployeeName], [EmployeeLastname], [TimeOffTypeId], [RequestDate], [CreationDate], [Active]) VALUES (128, N'aloja', N'jose', 2, CAST(N'2020-08-21T00:00:00.000' AS DateTime), CAST(N'2020-08-26T20:26:38.277' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[TimeOffRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[TimeOffTypes] ON 
GO
INSERT [dbo].[TimeOffTypes] ([TimeOffTypeId], [TypeName], [Description], [CreationDate], [Active]) VALUES (1, N'Personal Time', N'This is personal activities', CAST(N'2020-08-26T08:32:35.517' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffTypes] ([TimeOffTypeId], [TypeName], [Description], [CreationDate], [Active]) VALUES (2, N'Medical Waiver', N'This requiere medical support.', CAST(N'2020-08-26T08:33:25.750' AS DateTime), 1)
GO
INSERT [dbo].[TimeOffTypes] ([TimeOffTypeId], [TypeName], [Description], [CreationDate], [Active]) VALUES (3, N'Others', N'Other types of time off', CAST(N'2020-08-26T08:34:02.547' AS DateTime), 0)
GO
SET IDENTITY_INSERT [dbo].[TimeOffTypes] OFF
GO
ALTER TABLE [dbo].[TimeOffRequests] ADD  CONSTRAINT [DF_TimeOffRequests_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[TimeOffRequests] ADD  CONSTRAINT [DF_TimeOffRequests_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[TimeOffTypes] ADD  CONSTRAINT [DF_TimeOffTypes_CreationDate]  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[TimeOffTypes] ADD  CONSTRAINT [DF_TimeOffTypes_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[TimeOffRequests]  WITH CHECK ADD  CONSTRAINT [FK_TimeOffRequests_TimeOffTypes] FOREIGN KEY([TimeOffTypeId])
REFERENCES [dbo].[TimeOffTypes] ([TimeOffTypeId])
GO
ALTER TABLE [dbo].[TimeOffRequests] CHECK CONSTRAINT [FK_TimeOffRequests_TimeOffTypes]
GO
