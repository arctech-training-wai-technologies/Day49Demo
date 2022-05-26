USE [UserManagement]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 25-05-2022 15:28:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25-05-2022 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Pan] [char](10) NOT NULL,
	[Address] [varchar](250) NULL,
	[Gender] [char](1) NULL,
	[MobileNumber] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Comments] [text] NULL,
	[DepartmentRefId] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (1, N'Sales', N'Sales Mumbai')
GO
INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (2, N'Marketing', N'Delhi South West')
GO
INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (3, N'HR', N'Ahmadnagar HO for all India')
GO
INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (10, N'House Keeping', N'Responsible for all cleaning and refurbishments
All users in this department report to HO.
')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DateOfBirth], [Pan], [Address], [Gender], [MobileNumber], [Email], [Comments], [DepartmentRefId]) VALUES (1, N'Akshay', N'Kumar', CAST(N'1975-05-10' AS Date), N'ABCDE0000M', NULL, N'M', NULL, NULL, NULL, 1)
GO
INSERT [dbo].[Users] ([Id], [FirstName], [LastName], [DateOfBirth], [Pan], [Address], [Gender], [MobileNumber], [Email], [Comments], [DepartmentRefId]) VALUES (3, N'Raveena', N'Tandon', CAST(N'1978-04-10' AS Date), N'UVWXY1234O', NULL, N'F', NULL, NULL, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Department] FOREIGN KEY([DepartmentRefId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Department]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK_Users] CHECK  (([Gender]='O' OR [Gender]='F' OR [Gender]='M'))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [CK_Users_Pan_10] CHECK  ((len([Pan])=(10)))
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [CK_Users_Pan_10]
GO
/****** Object:  StoredProcedure [dbo].[Department_Add]    Script Date: 25-05-2022 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Department_Add]
(
	@Name varchar(50),
	@Description varchar(500)
)
as
begin
	insert into Department (Name, Description) values (@Name, @Description)
end
GO
/****** Object:  StoredProcedure [dbo].[Department_Delete]    Script Date: 25-05-2022 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Department_Delete]
(
	@Id int
)
as
begin
	delete Department
	where
		Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[Department_GetAll]    Script Date: 25-05-2022 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Department_GetAll]
as
begin
	select * from Department
end
GO
/****** Object:  StoredProcedure [dbo].[Department_GetById]    Script Date: 25-05-2022 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Department_GetById]
(
	@Id int
)
as
begin
	select * from Department
	where id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[Department_Update]    Script Date: 25-05-2022 15:28:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Department_Update]
(
	@Id int,
	@Name varchar(50),
	@Description varchar(500)
)
as
begin
	update Department set 
		Name = @Name, 
		Description = @Description
	from 
		Department
	where
		Id = @Id
end
GO
