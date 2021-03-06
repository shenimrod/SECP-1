USE [master]
GO
/****** Object:  Database [SECP]    Script Date: 2016/12/18 14:05:45 ******/
CREATE DATABASE [SECP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SECP', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SECP.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SECP_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\SECP_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SECP] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SECP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SECP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SECP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SECP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SECP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SECP] SET ARITHABORT OFF 
GO
ALTER DATABASE [SECP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SECP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SECP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SECP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SECP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SECP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SECP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SECP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SECP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SECP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SECP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SECP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SECP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SECP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SECP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SECP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SECP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SECP] SET RECOVERY FULL 
GO
ALTER DATABASE [SECP] SET  MULTI_USER 
GO
ALTER DATABASE [SECP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SECP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SECP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SECP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SECP] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SECP', N'ON'
GO
USE [SECP]
GO
/****** Object:  Table [dbo].[Achievements]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievements](
	[Achievements_Id] [int] IDENTITY(1,1) NOT NULL,
	[Achievements_Type] [nvarchar](20) NOT NULL,
	[Achievements_Theme] [nvarchar](50) NOT NULL,
	[Achievements_Time] [datetime] NOT NULL,
	[Achievements_Thesis] [nvarchar](max) NULL,
	[Achievements_Publisher] [nvarchar](20) NOT NULL,
	[Achievements_Pro] [nvarchar](max) NULL,
	[Achievemetns_contact] [nvarchar](50) NOT NULL,
	[Achievements_Specialty] [nvarchar](200) NOT NULL,
	[Achievements_Checks] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Achievements] PRIMARY KEY CLUSTERED 
(
	[Achievements_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Admin]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[admin_Id] [int] NOT NULL,
	[admin_UserName] [nvarchar](20) NOT NULL,
	[admin_Password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[admin_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enterprise]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enterprise](
	[Enterprise_Id] [int] IDENTITY(1,1) NOT NULL,
	[Enterprise_UserName] [nvarchar](20) NOT NULL,
	[Enterprise_Password] [nvarchar](20) NOT NULL,
	[Enterprise_Name] [nvarchar](20) NOT NULL,
	[Enterprise_Type] [nvarchar](20) NOT NULL,
	[Enterprise_Scale] [nvarchar](20) NOT NULL,
	[Enterprise_Brief] [nvarchar](200) NOT NULL,
	[Enterprise_Place] [nvarchar](50) NOT NULL,
	[Enterprise_Industry] [nvarchar](20) NOT NULL,
	[Enterprise_Postcode] [nvarchar](20) NOT NULL,
	[Enterprise_Contact] [nvarchar](20) NOT NULL,
	[Enterprise_Business] [nvarchar](max) NOT NULL,
	[Enterprise_Culture] [nvarchar](max) NOT NULL,
	[Enterprise_Email] [nvarchar](50) NOT NULL,
	[Enterprise_Tel] [nvarchar](20) NOT NULL,
	[Enterprise_Checks] [nvarchar](20) NOT NULL,
	[Enterprise_QQ] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Enterprise] PRIMARY KEY CLUSTERED 
(
	[Enterprise_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JTrain]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JTrain](
	[Train_Id] [int] NOT NULL,
	[Train_Type] [nvarchar](20) NOT NULL,
	[Train_Name] [nvarchar](20) NOT NULL,
	[Train_OurName] [nvarchar](50) NOT NULL,
	[Leader_ID] [int] NOT NULL,
	[Join_Time] [date] NOT NULL,
	[Team_Num] [int] NOT NULL,
	[Leader_Name] [nvarchar](20) NOT NULL,
	[Member_Name] [nvarchar](200) NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Products_Id] [int] IDENTITY(1,1) NOT NULL,
	[Products_Type] [nvarchar](20) NOT NULL,
	[Products_Theme] [nvarchar](20) NOT NULL,
	[Products_Time] [datetime] NOT NULL,
	[Products_Money] [nvarchar](20) NOT NULL,
	[Products_Publisher] [nvarchar](20) NOT NULL,
	[Products_Number] [nvarchar](50) NOT NULL,
	[Products_contact] [nvarchar](200) NOT NULL,
	[Products_Checks] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Products_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Project_Id] [int] IDENTITY(1,1) NOT NULL,
	[Project_Type] [nvarchar](20) NOT NULL,
	[Project_Name] [nvarchar](50) NOT NULL,
	[Project_STime] [datetime] NOT NULL,
	[Project_State] [nvarchar](20) NOT NULL,
	[Project_Money] [int] NOT NULL,
	[Project_TimeLimeit] [int] NOT NULL,
	[Project_Requirement] [nvarchar](50) NULL,
	[Project_Content] [nvarchar](20) NOT NULL,
	[Project_Contact] [nvarchar](50) NOT NULL,
	[Project_Publisher] [nvarchar](20) NOT NULL,
	[Project_PubilsherType] [nvarchar](20) NOT NULL,
	[Project_Evaluation] [nvarchar](max) NULL,
	[Project_Checks] [nvarchar](20) NOT NULL,
	[Project_Sendee] [nvarchar](20) NOT NULL,
	[Project_SendeeType] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Project_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Resume]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resume](
	[Resume_Id] [int] IDENTITY(1,1) NOT NULL,
	[company_Id] [int] NOT NULL,
	[Talent_Id] [int] NOT NULL,
	[sudent_Id] [int] NOT NULL,
	[Resume_Time] [datetime] NOT NULL,
	[Resume_State] [nvarchar](20) NOT NULL,
	[Resume_reply] [nvarchar](200) NULL,
 CONSTRAINT [PK_Resume] PRIMARY KEY CLUSTERED 
(
	[Resume_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SimpleInfo]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SimpleInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[PublishDate] [date] NOT NULL,
	[ImageUrl] [varchar](200) NULL,
	[LinkUrl] [varchar](200) NOT NULL,
	[Category1] [int] NOT NULL,
	[BriefInfo] [nvarchar](300) NULL,
	[Category2] [int] NOT NULL,
 CONSTRAINT [PK_SimpleInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[student_Id] [int] IDENTITY(1,1) NOT NULL,
	[student_UserName] [nvarchar](20) NOT NULL,
	[student_Password] [nvarchar](20) NOT NULL,
	[student_RealName] [nvarchar](20) NOT NULL,
	[student_BornDate] [datetime] NOT NULL,
	[student_Sex] [nvarchar](5) NOT NULL,
	[student_Major] [nvarchar](50) NOT NULL,
	[student_GradSchool] [nvarchar](50) NOT NULL,
	[student_Edu] [nvarchar](20) NOT NULL,
	[student_Tel] [nvarchar](20) NOT NULL,
	[student_Email] [nvarchar](20) NOT NULL,
	[student_Address] [nvarchar](50) NOT NULL,
	[student_Photo] [nvarchar](50) NULL,
	[student_Glory] [nvarchar](max) NULL,
	[student_Practic] [nvarchar](max) NULL,
	[stduent_Introduce] [nvarchar](max) NULL,
	[student_Train] [nvarchar](max) NULL,
	[student_WorkPlace] [nvarchar](50) NULL,
	[student_Occupation] [nvarchar](20) NULL,
	[student_Wage] [nvarchar](50) NULL,
	[student_SKill] [nvarchar](50) NULL,
	[student_Hobby] [nvarchar](max) NULL,
	[student_QQ] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[student_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Talent]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Talent](
	[Talent_Id] [int] IDENTITY(1,1) NOT NULL,
	[Talent_Type] [nvarchar](20) NOT NULL,
	[Talent_Name] [nvarchar](20) NOT NULL,
	[Talent_Time] [datetime] NOT NULL,
	[Talent_State] [nvarchar](20) NOT NULL,
	[Talent_Publisher] [nvarchar](20) NOT NULL,
	[Talent_Num] [nvarchar](20) NOT NULL,
	[Talent_Money] [nvarchar](20) NOT NULL,
	[Talent_Place] [nvarchar](50) NOT NULL,
	[Talent_Welfare] [nvarchar](50) NOT NULL,
	[Talent_Content] [nvarchar](200) NOT NULL,
	[Talent_Checks] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Talent] PRIMARY KEY CLUSTERED 
(
	[Talent_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[teacher_Id] [int] IDENTITY(1,1) NOT NULL,
	[teacher_UserName] [nvarchar](20) NOT NULL,
	[teacher_Password] [nvarchar](20) NOT NULL,
	[teacher_RealName] [nvarchar](20) NOT NULL,
	[teacher_BornDate] [datetime] NULL,
	[teacher_Sex] [nvarchar](5) NOT NULL,
	[teacher_Edu] [nvarchar](10) NOT NULL,
	[teacher_GradSchool] [nvarchar](20) NOT NULL,
	[teacher_AtSchool] [nvarchar](20) NOT NULL,
	[teacher_Email] [nvarchar](20) NOT NULL,
	[teacher_Tel] [nvarchar](20) NOT NULL,
	[teacher_Address] [nvarchar](50) NOT NULL,
	[teacher_Introduce] [nvarchar](max) NULL,
	[teacher_Position] [nvarchar](20) NOT NULL,
	[teacher_Glory] [nvarchar](max) NULL,
	[teacher_RepThesis] [nvarchar](max) NULL,
	[teacher_RepPro] [nvarchar](max) NULL,
	[teacher_RepProject] [nvarchar](max) NULL,
	[teacher_TeachClass] [nvarchar](20) NOT NULL,
	[teacher_QQ] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[teacher_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Train]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Train](
	[Train_Id] [int] IDENTITY(1,1) NOT NULL,
	[Train_Type] [nvarchar](20) NOT NULL,
	[Train_Name] [nvarchar](20) NOT NULL,
	[Train_Time] [datetime] NOT NULL,
	[Train_State] [nvarchar](20) NOT NULL,
	[Train_Publisher] [nvarchar](20) NOT NULL,
	[Train_Place] [nvarchar](50) NOT NULL,
	[Train_Major] [nvarchar](20) NOT NULL,
	[Train_Content] [nvarchar](200) NOT NULL,
	[Train_Objective] [nvarchar](50) NOT NULL,
	[Train_Checks] [nvarchar](20) NOT NULL,
	[Train_Date] [nvarchar](50) NULL,
 CONSTRAINT [PK_Train] PRIMARY KEY CLUSTERED 
(
	[Train_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 2016/12/18 14:05:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[User_Id] [int] IDENTITY(1,1) NOT NULL,
	[User_UserName] [nvarchar](20) NOT NULL,
	[User_Password] [nvarchar](20) NOT NULL,
	[User_QQ] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Achievements] ON 

INSERT [dbo].[Achievements] ([Achievements_Id], [Achievements_Type], [Achievements_Theme], [Achievements_Time], [Achievements_Thesis], [Achievements_Publisher], [Achievements_Pro], [Achievemetns_contact], [Achievements_Specialty], [Achievements_Checks]) VALUES (1, N'论文', N'基于项目管理的软件产品研发管理研究', CAST(N'2009-03-10 00:00:00.000' AS DateTime), N'软件开发技术、方法不断更新换代，软件开发过程与软件工程方法也得到不断地改进，现代项目管理方法也开始进入到软件研发等高科技领域。最近几年“项目管理”,在国内软件研发领域非常火热，项目管理培训与认证（如PMP 认证）成为热门，网络上的软件项目管理论坛、讨论群组更是越来越多、越办越好，在许多软件企业中，也将项目管理作为他们的软件产品研发管理体系的一个重要组成部分。', N'胡红艳，刘咏梅', NULL, N'13790712561', N'管理研发', N'已通过')
INSERT [dbo].[Achievements] ([Achievements_Id], [Achievements_Type], [Achievements_Theme], [Achievements_Time], [Achievements_Thesis], [Achievements_Publisher], [Achievements_Pro], [Achievemetns_contact], [Achievements_Specialty], [Achievements_Checks]) VALUES (2, N'产品', N'基于spark的信贷平台', CAST(N'2014-06-05 00:00:00.000' AS DateTime), NULL, N'震星公司', NULL, N'13790715648', N'信息处理', N'已通过')
INSERT [dbo].[Achievements] ([Achievements_Id], [Achievements_Type], [Achievements_Theme], [Achievements_Time], [Achievements_Thesis], [Achievements_Publisher], [Achievements_Pro], [Achievemetns_contact], [Achievements_Specialty], [Achievements_Checks]) VALUES (9, N'论文', N'测试数据1', CAST(N'2016-04-05 21:55:51.790' AS DateTime), N'../Poper_File/job.txt', N'teacher111', NULL, N'测试数据1', N'测试数据1', N'已通过')
INSERT [dbo].[Achievements] ([Achievements_Id], [Achievements_Type], [Achievements_Theme], [Achievements_Time], [Achievements_Thesis], [Achievements_Publisher], [Achievements_Pro], [Achievemetns_contact], [Achievements_Specialty], [Achievements_Checks]) VALUES (10, N'论文', N'12', CAST(N'2016-04-08 23:52:44.227' AS DateTime), N'../Poper_File/job.txt', N'school', NULL, N'12', N'12', N'已通过')
INSERT [dbo].[Achievements] ([Achievements_Id], [Achievements_Type], [Achievements_Theme], [Achievements_Time], [Achievements_Thesis], [Achievements_Publisher], [Achievements_Pro], [Achievemetns_contact], [Achievements_Specialty], [Achievements_Checks]) VALUES (11, N'论文', N'13', CAST(N'2016-04-08 23:59:31.190' AS DateTime), N'../Poper_File/无标题.png', N'school', NULL, N'14', N'13', N'已通过')
INSERT [dbo].[Achievements] ([Achievements_Id], [Achievements_Type], [Achievements_Theme], [Achievements_Time], [Achievements_Thesis], [Achievements_Publisher], [Achievements_Pro], [Achievemetns_contact], [Achievements_Specialty], [Achievements_Checks]) VALUES (12, N'论文', N'13', CAST(N'2016-04-09 00:00:16.173' AS DateTime), N'../Poper_File/u=3028367018,475611518&fm=116&gp=0.jpg', N'teacher111', NULL, N'141', N'13', N'已通过')
INSERT [dbo].[Achievements] ([Achievements_Id], [Achievements_Type], [Achievements_Theme], [Achievements_Time], [Achievements_Thesis], [Achievements_Publisher], [Achievements_Pro], [Achievemetns_contact], [Achievements_Specialty], [Achievements_Checks]) VALUES (13, N'产品', N'30', CAST(N'2016-04-11 09:52:11.853' AS DateTime), NULL, N'school', N'../Project_File/ODS开发说明汇总_v1.5.doc', N'30', N'30', N'已通过')
SET IDENTITY_INSERT [dbo].[Achievements] OFF
INSERT [dbo].[Admin] ([admin_Id], [admin_UserName], [admin_Password]) VALUES (1, N'admin', N'ADMIN')
INSERT [dbo].[Admin] ([admin_Id], [admin_UserName], [admin_Password]) VALUES (2, N'Goverment', N'gover')
SET IDENTITY_INSERT [dbo].[Enterprise] ON 

INSERT [dbo].[Enterprise] ([Enterprise_Id], [Enterprise_UserName], [Enterprise_Password], [Enterprise_Name], [Enterprise_Type], [Enterprise_Scale], [Enterprise_Brief], [Enterprise_Place], [Enterprise_Industry], [Enterprise_Postcode], [Enterprise_Contact], [Enterprise_Business], [Enterprise_Culture], [Enterprise_Email], [Enterprise_Tel], [Enterprise_Checks], [Enterprise_QQ]) VALUES (1, N'school', N'123456', N'中山学院项目组', N'国企', N'20001', N'电子科技大学中山学院的介绍', N'中山', N'学校', N'110120', N'何老师', N'学院项目，合作项目', N'教书育人，培养人才!!', N'school1@edu.com', N'0760-6606101', N'已通过', N'423043047')
SET IDENTITY_INSERT [dbo].[Enterprise] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Products_Id], [Products_Type], [Products_Theme], [Products_Time], [Products_Money], [Products_Publisher], [Products_Number], [Products_contact], [Products_Checks]) VALUES (1, N'零件', N'测试数据2', CAST(N'2016-04-07 13:39:18.807' AS DateTime), N'2000', N'school', N'109829981', N'测试数据2', N'已通过')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Project] ON 

INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (2, N'企业', N'软件算法分析', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'待接', 5000, 30, N'2年及以上', N'分析一个软件加密算法，具体需求联系', N'13790712222', N'school', N'企业', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (4, N'师生', N'图书馆馆标Logo征集', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'已接', 1000, 15, N'无需经验', N'详情待联系', N'13790712223', N'teacher111', N'教师', NULL, N'已通过', N'seahailin', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (5, N'外包', N'.net开发一个发布图片的网站', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'已接', 2000, 15, N'无需经验', N'.net开发一个发布图片的网站', N'13790712224', N'teacher111', N'教师', NULL, N'已通过', N'seahailin', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (6, N'企业', N'OA二开发', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'已接', 80000, 360, N'1年', N'OA二开发', N'13790712225', N'school', N'企业', NULL, N'已通过', N'seahailin', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (8, N'企业', N'用ASP.NET开发一个密码找回功能', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'已接', 500, 7, N'半年', N'用ASP.NET开发一个密码找回功能', N'13790712226', N'school', N'企业', NULL, N'已通过', N'seahailin', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (16, N'外包', N'c#asp.net网站集成QQ登录功能', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'已接', 500, 15, N'2年及以上', N'c#asp.net网站集成QQ登录功能', N'13790712227', N'teacher111', N'教师', NULL, N'已通过', N'seahailin', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (17, N'企业', N'asp.net技术的信息平台维护后台', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'已接', 50000, 150, N'2年及以上', N'asp.net的信息平台维护后台', N'13790712219', N'school', N'企业', NULL, N'已通过', N'seahailin', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (19, N'外包', N'asp.net仿一个会员管理系统', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'已接', 5000, 60, N'1年', N'asp.net仿一个会员管理系统', N'13790712230', N'school', N'企业', NULL, N'已通过', N'test1', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (20, N'合作', N'用asp.net开发一个网上购物系统', CAST(N'2015-10-11 00:00:00.000' AS DateTime), N'已接', 5000, 360, N'2年及以上', N'用asp.net开发一个网上购物系统', N'13790712231', N'school', N'企业', NULL, N'已通过', N'test1', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (22, N'合作', N'用JAVA开发一个企业网站', CAST(N'2015-06-12 00:00:00.000' AS DateTime), N'已接', 4000, 120, N'1年', N'用JAVA开发一个企业网站', N'13790712232', N'school', N'企业', NULL, N'已通过', N'test1', N'学生')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (24, N'合作', N'用C++写一个游戏脚本', CAST(N'2013-11-23 00:00:00.000' AS DateTime), N'已接', 1000, 20, N'无需经验', N'用C++写一个游戏脚本', N'13790712234', N'school', N'企业', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (25, N'师生', N'测试项目1', CAST(N'2016-01-03 22:37:35.113' AS DateTime), N'待接', 2000, 30, N'无需经验', N'测试项目1', N'13790712292', N'teacher111', N'师生', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (26, N'师生', N'测试项目2', CAST(N'2016-01-03 22:43:07.093' AS DateTime), N'待接', 2000, 30, N'无需经验', N'测试数据2', N'13790712292', N'teacher111', N'师生', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (28, N'外包', N'测试项目5', CAST(N'2016-01-03 23:14:43.550' AS DateTime), N'待接', 2000, 30, N'无需经验', N'测试项目5', N'13790712294', N'Test01', N'外包', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (29, N'师生', N'测试项目6', CAST(N'2016-01-03 23:21:55.977' AS DateTime), N'待接', 2000, 30, N'无需经验', N'测试项目6', N'13790712295', N'teacher111', N'师生', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (30, N'合作', N'测试项目4', CAST(N'2016-01-03 23:24:13.913' AS DateTime), N'待接', 2000, 30, N'无需经验', N'测试项目4', N'13790712298', N'school', N'合作', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (31, N'师生', N'测试项目7', CAST(N'2016-01-04 22:40:25.827' AS DateTime), N'待接', 2000, 30, N'无需经验', N'测试项目7', N'13790712295', N'teacher111', N'师生', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (33, N'外包', N'测试项目7', CAST(N'2016-01-05 00:29:03.657' AS DateTime), N'待接', 2000, 30, N'无需经验', N'测试项目7', N'13790712292', N'Test01', N'外包', NULL, N'已通过', N'', N'')
INSERT [dbo].[Project] ([Project_Id], [Project_Type], [Project_Name], [Project_STime], [Project_State], [Project_Money], [Project_TimeLimeit], [Project_Requirement], [Project_Content], [Project_Contact], [Project_Publisher], [Project_PubilsherType], [Project_Evaluation], [Project_Checks], [Project_Sendee], [Project_SendeeType]) VALUES (34, N'企业', N'毕设答辩', CAST(N'2016-05-21 15:57:09.693' AS DateTime), N'已接', 3000, 5, N'半年', N'测试数据', N'10086', N'school', N'企业', NULL, N'已通过', N'seahailin', N'学生')
SET IDENTITY_INSERT [dbo].[Project] OFF
SET IDENTITY_INSERT [dbo].[Resume] ON 

INSERT [dbo].[Resume] ([Resume_Id], [company_Id], [Talent_Id], [sudent_Id], [Resume_Time], [Resume_State], [Resume_reply]) VALUES (1, 1, 3, 1, CAST(N'2016-04-04 13:31:16.427' AS DateTime), N'待审核', N'未回复')
INSERT [dbo].[Resume] ([Resume_Id], [company_Id], [Talent_Id], [sudent_Id], [Resume_Time], [Resume_State], [Resume_reply]) VALUES (2, 1, 4, 1, CAST(N'2016-04-04 13:32:12.067' AS DateTime), N'待审核', N'未回复')
SET IDENTITY_INSERT [dbo].[Resume] OFF
SET IDENTITY_INSERT [dbo].[SimpleInfo] ON 

INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (1, N'中国“神威·太湖之光”再次问鼎世界超算冠军', CAST(N'2016-11-18' AS Date), NULL, N'http://www.baidu.com', 0, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (2, N'中办国办印发文件让知识的红利充分释放', CAST(N'2016-11-11' AS Date), NULL, N'http://www.zhihu.com', 0, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (3, N'中共中央办公厅 国务院办公厅印发《关于实行以增加知识价值为导向分配政策的若干意见》', CAST(N'2016-11-08' AS Date), NULL, N'http://www.bilibili.com', 0, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (4, N'刘延东：落实二十国集团杭州峰会成果 共谋创新发展蓝图', CAST(N'2016-11-08' AS Date), NULL, N'http://www.most.gov.cn/yw/201611/t20161108_128743.htm', 0, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (5, N'全国人大常委会促进科技成果转化法执法检查组举行第二次全体会议', CAST(N'2016-10-10' AS Date), NULL, N'http://www.most.gov.cn/yw/201610/t20161010_128119.htm', 0, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (6, N'“创新引领 共享发展”2016年全国科技活动周开幕', CAST(N'2016-07-26' AS Date), NULL, N'http://www.most.cn/sytt/201605/t20160514_125586.htm', 0, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (7, N'回溯创新之历史，探索创新之规律，展望创新之未来', CAST(N'2016-06-03' AS Date), NULL, N'http://www.most.cn/sytt/201605/t20160527_125837.htm', 1, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (8, N'全国科技创新大会 两院院士大会 中国科协第九次全国代表大会在京召开', CAST(N'2016-05-30' AS Date), NULL, N'http://www.most.cn/sytt/201605/t20160530_125871.htm', 1, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (9, N'习近平：为建设世界科技强国而奋斗', CAST(N'2016-05-27' AS Date), NULL, N'http://www.most.gov.cn/ztzl/qgkejicxdh/', 1, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (10, N'调结构 转方式-国家高新区调研行', CAST(N'2016-05-14' AS Date), NULL, N'http://www.most.cn/xinwzx/mtjj/ztjj/2016zt/gjgxqdyx/', 1, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (11, N'国新办举行新闻发布会  李萌副部长介绍《关于实行以增加知识价值为导向分配政策的若干意见》有关情况', CAST(N'2016-11-10' AS Date), NULL, N'http://www.most.gov.cn/xinwzx/xwzx/twzb/sxyzjzsjzwdxfpzc/index.htm', 1, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (12, N'2016年二十国集团科技创新部长会议在北京举行  发布二十国集团科技创新部长会议声明', CAST(N'2016-11-04' AS Date), NULL, N'http://www.most.gov.cn/tpxw/201611/t20161104_128698.htm', 1, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (13, N'国务院新闻办举行国务院政策例行吹风会 科技部副部长李萌和北京市人民政府副市长隋振江介绍加强北京全国科技创新中心建设有关情况', CAST(N'2016-09-02' AS Date), NULL, N'http://www.most.gov.cn/xinwzx/xwzx/twzb/bjqgkjcxzx/index.htm', 2, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (14, N'习近平总书记：坚定信心坚韧不拔坚持不懈 加快推进世界科技强国建设', CAST(N'2016-07-04' AS Date), NULL, N'http://www.most.gov.cn/tpxw/201607/t20160704_126293.htm', 2, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (15, N'习近平：为建设世界科技强国而奋斗', CAST(N'2016-05-31' AS Date), NULL, N'http://www.most.gov.cn/tpxw/201606/t20160601_125893.htm', 2, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (16, N'科技部召开党组中心组学习（扩大）会议 深入学习贯彻党的十八届六中全会精神', CAST(N'2016-11-11' AS Date), NULL, N'http://www.most.gov.cn/xinwzx/xwzx/twzb/sxyzjzsjzwdxfpzc/index.htm', 2, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (17, N'阴和俊副部长会见土耳其科学、工业和技术部副部长', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/kjbgz/201611/t20161122_129042.htm', 2, NULL, 1)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (18, N'中国参加GEO工作部际协调小组第四次会议在京召开', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/kjbgz/201611/t20161121_129011.htm', 2, NULL, 2)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (19, N'“十二五”科技创新成果亮相深圳高交会', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/kjbgz/201611/t20161122_129041.htm', 2, NULL, 2)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (20, N'2016年中澳青年科学家交流计划暨中新科学家交流计划在京启动', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/kjbgz/201611/t20161121_129012.htm', 2, NULL, 2)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (21, N'北京市科委携手通州区举办“科技资源通州行” 科技支撑北京城市副中心', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/dfkj/bj/tpxw/201611/t20161121_129034.htm', 2, NULL, 2)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (22, N'内蒙古2016年三季度技术合同交易额增幅显著 合同金额增长超50%', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/dfkj/nmg/zxdt/201611/t20161121_129033.htm', 2, NULL, 2)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (23, N'“十三五”期间河北省将实施14个转型升级重大专项', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/dfkj/hb/zxdt/201611/t20161121_129032.htm', 2, NULL, 3)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (24, N'南京市高新技术企业培育工作迈上新台阶', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/dfkj/js/zxdt/201611/t20161121_129031.htm', 2, NULL, 3)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (25, N'安徽举办全省国际科技合作干部培训班', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/dfkj/ah/zxdt/201611/t20161121_129030.htm', 2, NULL, 3)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (26, N'纸基陶瓷可制成随机激光器', CAST(N'2016-11-22' AS Date), NULL, N'http://www.most.gov.cn/gnwkjdt/201611/t20161122_129039.htm', 2, NULL, 3)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (27, N'食物中亚精胺能保护心脏健康', CAST(N'2016-11-21' AS Date), NULL, N'http://www.most.gov.cn/gnwkjdt/201611/t20161121_129009.htm', 2, NULL, 3)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (28, N'一种肺结核菌在压力下会“休眠”相关机制有助开发新抗生素', CAST(N'2016-11-21' AS Date), NULL, N'http://www.most.gov.cn/gnwkjdt/201611/t20161121_129010.htm', 2, NULL, 4)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (29, N'合成生物学一大技术难题被攻克有助于揭开地球生命早期起源之谜', CAST(N'2016-11-18' AS Date), NULL, N'http://www.most.gov.cn/gnwkjdt/201611/t20161118_128989.htm', 2, NULL, 4)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (30, N'黑洞影响星系演化方式揭开高速喷气可分散和加热星际气体', CAST(N'2016-11-18' AS Date), NULL, N'http://www.most.gov.cn/gnwkjdt/201611/t20161118_128988.htm', 2, NULL, 4)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (31, N'国家长期科技发展规划纲要', CAST(N'2006-01-01' AS Date), NULL, N'http://www.most.gov.cn/kjgh/kjghzcq/', 2, NULL, 4)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (32, N'《规划纲要》配套政策实施细则', CAST(N'2006-01-01' AS Date), NULL, N'http://www.most.gov.cn/ztzl/gjzctx/', 2, NULL, 4)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (33, N'“十二五”科技发展规划', CAST(N'2006-01-01' AS Date), NULL, N'http://www.most.gov.cn/kjgh/sewkjfzgh/', 2, NULL, 5)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (34, N'国家“十一五”科学技术发展规划', CAST(N'2006-10-31' AS Date), NULL, N'http://www.most.gov.cn/kjgh/kjfzgh/200610/t20061031_55485.htm', 2, NULL, 5)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (35, N'历史上的科技发展规划', CAST(N'1956-01-02' AS Date), NULL, N'http://www.most.gov.cn/kjgh/lskjgh/', 2, NULL, 5)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (36, N'科学技术部2015年度部门决算', CAST(N'2016-07-22' AS Date), NULL, N'http://www.most.gov.cn/czgk/czyjs/201607/P020160722527586870555.pdf', 2, NULL, 5)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (37, N'科学技术部2016年度部门预算', CAST(N'2016-04-15' AS Date), NULL, N'http://www.most.gov.cn/czgk/czyjs/201604/P020160415554388289132.pdf', 1, NULL, 5)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (38, N'科学技术部2014年度部门决算', CAST(N'2015-07-17' AS Date), NULL, N'http://www.most.gov.cn/czgk/czyjs/201507/P020150717556160933178.pdf', 1, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (39, N'科学技术部2015年度部门预算', CAST(N'2015-04-17' AS Date), NULL, N'http://www.most.gov.cn/czgk/czyjs/201504/P020150420332171403134.pdf', 1, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (40, N'科学技术部2013年度部门决算', CAST(N'2014-07-18' AS Date), NULL, N'http://www.most.gov.cn/czgk/czyjs/201407/P020140718531771870968.pdf', 1, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (41, N'中华人民共和国科学技术普及法', CAST(N'2000-06-29' AS Date), NULL, N'http://www.most.gov.cn/kjzc/gjkjzc/kxjspj/201308/P020130823585111403761.pdf', 2, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (42, N'全民科学素质行动计划纲要（2006——2010——2020 年）', CAST(N'2006-06-02' AS Date), NULL, N'http://www.most.gov.cn/kjzc/gjkjzc/kxjspj/201308/P020130823585110787959.pdf', 2, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (43, N'关于加强专业技术人才队伍建设的若干意见', CAST(N'2001-06-19' AS Date), NULL, N'http://www.most.gov.cn/kjzc/gjkjzc/kjrc/201308/P020130823578478754013.pdf', 2, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (44, N'关于深化科研事业单位人事制度改革的实施意见', CAST(N'2000-03-30' AS Date), NULL, N'http://www.most.gov.cn/kjzc/gjkjzc/kjrc/201308/P020130823578478120087.pdf', 2, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (45, N'关于深化科技体制改革加快首都创新体系建设的意见', CAST(N'2012-09-29' AS Date), NULL, N'http://www.most.gov.cn/kjzc/dfzcjx/zcwj/201308/P020130827591257819713.pdf', 2, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (46, N'中共辽宁省委辽宁省人民政府关于加快推进科技创新的若干意见', CAST(N'2012-09-25' AS Date), NULL, N'http://www.most.gov.cn/kjzc/dfzcjx/zcwj/201308/P020130827591257345661.pdf', 2, NULL, 0)
INSERT [dbo].[SimpleInfo] ([ID], [Title], [PublishDate], [ImageUrl], [LinkUrl], [Category1], [BriefInfo], [Category2]) VALUES (47, N'中共江苏省委江苏省人民政府关于加快企业为主体市场为导向产学研相结合技术创新体系建设的意见', CAST(N'2012-10-10' AS Date), NULL, N'http://www.most.gov.cn/kjzc/dfzcjx/zcwj/201308/P020130827591256253155.pdf', 2, NULL, 0)
SET IDENTITY_INSERT [dbo].[SimpleInfo] OFF
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (1, N'seahailin', N'123456', N'黄雅聪', CAST(N'1993-04-24 00:00:00.000' AS DateTime), N'男', N'软件工程', N'电子科技大学中山学院', N'本科', N'13790712596', N'380595490@qq.com', N'中山学院10栋-714', N'../images/student/c.jpg', N'奖学金', N'MVC人事管理系统', N'突破天际的脑洞,就是这样', N'广州东软集团MVC培训', N'珠海', N'.net工程师', N'3000', N'MVC开发', N'听歌', N'380595490')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (2, N'test1', N'123456', N'龙傲天', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'男', N'软件工程', N'电子科技大学中山学院', N'本科', N'5572676', N'380595490@qq.com', N'10栋-718', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'.net', N'3000', N'测试数据', N'测试数据', N'3213124122')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (3, N'Sable', N'123456', N'吾王', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'女', N'骑士', N'电子科技大学中山学院', N'本科', N'13790716252', N'380595490@qq.com', N'711', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'java', N'3000', N'测试数据', N'测试数据', N'123124231')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (4, N'Archer', N'123456', N'红A', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'男', N'弓兵', N'电子科技大学中山学院', N'本科', N'13790712222', N'380595490@qq.com', N'710', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'java', N'3000', N'测试数据', N'测试数据', N'123421341')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (6, N'Lancer', N'123456', N'闪闪', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'男', N'弓兵', N'电子科技大学中山学院', N'本科', N'13790712221', N'380595490@qq.com', N'709', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'php', N'3000', N'测试数据', N'测试数据', N'142334123')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (7, N'Rider', N'123456', N'大帝', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'男', N'骑兵', N'电子科技大学中山学院', N'本科', N'13790712132', N'380595490@qq.com', N'703', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'.net', N'3000', N'测试数据', N'测试数据', N'131234213')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (8, N'Assassin', N'123456', N'哈桑', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'男', N'暗杀者', N'电子科技大学中山学院', N'本科', N'13790721321', N'380595490@qq.com', N'702', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'php', N'3000', N'测试数据', N'测试数据', N'123421322')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (9, N'Berserker', N'123456', N'兰斯洛特', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'男', N'狂战士', N'电子科技大学中山学院', N'本科', N'13907128371', N'380595490@qq.com', N'900', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'c', N'3000', N'测试数据', N'测试数据', N'123819283')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (10, N'Caster', N'123456', N'美狄亚', CAST(N'1993-01-01 00:00:00.000' AS DateTime), N'女', N'魔法师', N'电子科技大学中山学院', N'本科', N'13790712312', N'380595490@qq.com', N'700', NULL, N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'测试数据', N'c', N'3000', N'测试数据', N'测试数据', N'142324232')
INSERT [dbo].[Student] ([student_Id], [student_UserName], [student_Password], [student_RealName], [student_BornDate], [student_Sex], [student_Major], [student_GradSchool], [student_Edu], [student_Tel], [student_Email], [student_Address], [student_Photo], [student_Glory], [student_Practic], [stduent_Introduce], [student_Train], [student_WorkPlace], [student_Occupation], [student_Wage], [student_SKill], [student_Hobby], [student_QQ]) VALUES (11, N'HYC123', N'123456', N'sea', CAST(N'1994-04-03 00:00:00.000' AS DateTime), N'男', N'软件工程', N'电子科技大学中山学院', N'本科', N'10080013800', N'380595490@qq.com', N'珠海', NULL, N'ACM大奖', N'云计算项目', N'我是个天才', N'网上小视频', N'北上广', N'DBA', N'3000', N'sql', N'看书', N'380595490')
SET IDENTITY_INSERT [dbo].[Student] OFF
SET IDENTITY_INSERT [dbo].[Talent] ON 

INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (1, N'全职', N'.net程序员', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'正在招聘', N'school', N'10', N'5000', N'东区中山五路57号1座4楼3卡', N'五险一金，包住', N' 12345678', N'已通过')
INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (3, N'实习', N'java程序员', CAST(N'2016-01-01 00:00:00.000' AS DateTime), N'正在招聘', N'school', N'5', N'3000', N'电子科技大学中山学院', N'包吃住', N'1232131', N'已通过')
INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (4, N'全职', N'java程序员', CAST(N'2016-01-01 00:00:00.000' AS DateTime), N'正在招聘', N'school', N'5', N'3000', N'Fate本部', N'送作死', N'1232142', N'已通过')
INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (5, N'实习', N'.net程序员', CAST(N'2016-01-01 00:00:00.000' AS DateTime), N'正在招聘', N'school', N'5', N'3000', N'Fate支部', N'包作死', N'1232423', N'已通过')
INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (6, N'合作', N'php程序员', CAST(N'2016-01-01 00:00:00.000' AS DateTime), N'正在招聘', N'school', N'5', N'3000', N'Fate本部', N'有分红', N'1232422', N'已通过')
INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (8, N'合作', N'C程序员', CAST(N'2016-01-01 00:00:00.000' AS DateTime), N'正在招聘', N'school', N'6', N'3000', N'Fate支部', N'有股权', N'1412322', N'已通过')
INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (9, N'实习', N'测试数据1', CAST(N'2016-04-01 12:49:15.480' AS DateTime), N'正在招聘', N'school', N'10', N'2000', N'中山', N'没', N'测试数据', N'已通过')
INSERT [dbo].[Talent] ([Talent_Id], [Talent_Type], [Talent_Name], [Talent_Time], [Talent_State], [Talent_Publisher], [Talent_Num], [Talent_Money], [Talent_Place], [Talent_Welfare], [Talent_Content], [Talent_Checks]) VALUES (14, N'实习', N'测试数据10', CAST(N'2016-04-04 14:28:38.310' AS DateTime), N'正在招聘', N'school', N'10', N'2000', N'天朝', N'没', N'测试数据10', N'已通过')
SET IDENTITY_INSERT [dbo].[Talent] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([teacher_Id], [teacher_UserName], [teacher_Password], [teacher_RealName], [teacher_BornDate], [teacher_Sex], [teacher_Edu], [teacher_GradSchool], [teacher_AtSchool], [teacher_Email], [teacher_Tel], [teacher_Address], [teacher_Introduce], [teacher_Position], [teacher_Glory], [teacher_RepThesis], [teacher_RepPro], [teacher_RepProject], [teacher_TeachClass], [teacher_QQ]) VALUES (1, N'teacher111', N'123456', N'李老师', CAST(N'1984-04-02 00:00:00.000' AS DateTime), N'男', N'博士', N'中山大学', N'电子科技大学中山学院', N'teacher123@qq.com', N'13013213241', N'四川科技大学', N'测试数据1', N'副教授', N'优秀教师', N'测试数据2', N'测试数据3', N'测试数据5', N'软件开发', N'423043047')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET IDENTITY_INSERT [dbo].[Train] ON 

INSERT [dbo].[Train] ([Train_Id], [Train_Type], [Train_Name], [Train_Time], [Train_State], [Train_Publisher], [Train_Place], [Train_Major], [Train_Content], [Train_Objective], [Train_Checks], [Train_Date]) VALUES (1, N'学校', N'C#期末实训', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'未开始', N'李老师', N'厚德楼A502', N'软件工程', N'ASP.NET基础实训课程', N'学习基础asp.net知识', N'已通过', N'9月11号')
INSERT [dbo].[Train] ([Train_Id], [Train_Type], [Train_Name], [Train_Time], [Train_State], [Train_Publisher], [Train_Place], [Train_Major], [Train_Content], [Train_Objective], [Train_Checks], [Train_Date]) VALUES (2, N'企业', N'asp.net mvc培训', CAST(N'2016-04-05 20:32:34.727' AS DateTime), N'未开始', N'school', N'龙傲天软件公司', N'软件工程班', N' 本次实训中，需要同学们认真学习，脚踏实地！', N'学会mvc的架构', N'已通过', N'8月12号')
INSERT [dbo].[Train] ([Train_Id], [Train_Type], [Train_Name], [Train_Time], [Train_State], [Train_Publisher], [Train_Place], [Train_Major], [Train_Content], [Train_Objective], [Train_Checks], [Train_Date]) VALUES (3, N'学校', N'java实训', CAST(N'2016-04-05 20:56:04.340' AS DateTime), N'未开始', N'teacher111', N'厚德楼B-201', N'网络工程', N'本次实训有20天，要求学生做出一个小项目。', N'学会ssh架构', N'已通过', N'10月20号')
INSERT [dbo].[Train] ([Train_Id], [Train_Type], [Train_Name], [Train_Time], [Train_State], [Train_Publisher], [Train_Place], [Train_Major], [Train_Content], [Train_Objective], [Train_Checks], [Train_Date]) VALUES (4, N'培训', N'安卓协同开发实训', CAST(N'2016-04-05 21:06:21.240' AS DateTime), N'未开始', N'school', N'厚德楼A-101', N'软件工程', N'本次实训为8个人一个小队归项目经理管理，由项目经理协助学生完成本次实训。', N'做出安卓小游戏', N'已通过', N'11月6号')
SET IDENTITY_INSERT [dbo].[Train] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([User_Id], [User_UserName], [User_Password], [User_QQ]) VALUES (1, N'Test01', N'123456', N'123456789100')
SET IDENTITY_INSERT [dbo].[User] OFF
USE [master]
GO
ALTER DATABASE [SECP] SET  READ_WRITE 
GO
