﻿USE [master]
GO
/****** Object:  Database [SMS]    Script Date: 1/26/2024 15:17:41 ******/
CREATE DATABASE [SMS]
GO
ALTER DATABASE [SMS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
    begin
        EXEC [SMS].[dbo].[sp_fulltext_database] @action = 'enable'
    end
GO
ALTER DATABASE [SMS] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SMS] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SMS] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SMS] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SMS] SET ARITHABORT OFF
GO
ALTER DATABASE [SMS] SET AUTO_CLOSE ON
GO
ALTER DATABASE [SMS] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SMS] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SMS] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SMS] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SMS] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SMS] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SMS] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SMS] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SMS] SET  ENABLE_BROKER
GO
ALTER DATABASE [SMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SMS] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SMS] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SMS] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SMS] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SMS] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SMS] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SMS] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SMS] SET  MULTI_USER
GO
ALTER DATABASE [SMS] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SMS] SET DB_CHAINING OFF
GO
ALTER DATABASE [SMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF )
GO
ALTER DATABASE [SMS] SET TARGET_RECOVERY_TIME = 60 SECONDS
GO
ALTER DATABASE [SMS] SET DELAYED_DURABILITY = DISABLED
GO
ALTER DATABASE [SMS] SET ACCELERATED_DATABASE_RECOVERY = OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'SMS', N'ON'
GO
ALTER DATABASE [SMS] SET QUERY_STORE = OFF
GO
USE [SMS]
GO
/****** Object:  Table [dbo].[AcademicLevel]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicLevel](
                                      [AcademicLevel_ID] [varchar](50) NOT NULL,
                                      [AcademicLevel_Name] [nvarchar](250) NOT NULL,
                                      [Minimum_Score] [float] NOT NULL,
                                      [Maximum_Score] [float] NOT NULL,
                                      [Unbounded_Score] [float] NOT NULL,
                                      PRIMARY KEY CLUSTERED
                                          (
                                           [AcademicLevel_ID] ASC
                                              )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AcademicResult]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicResult](
                                       [Result_ID] [varchar](50) NOT NULL,
                                       [Result_Name] [nvarchar](250) NOT NULL,
                                       PRIMARY KEY CLUSTERED
                                           (
                                            [Result_ID] ASC
                                               )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
                              [Class_ID] [varchar](50) NOT NULL,
                              [Class_Name] [nvarchar](250) NULL,
                              [Grade_ID] [varchar](50) NULL,
                              [Quantity] [int] NULL,
                              [SchoolYear_ID] [varchar](50) NULL,
                              [Teacher_ID] [varchar](50) NULL,
                              PRIMARY KEY CLUSTERED
                                  (
                                   [Class_ID] ASC
                                      )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conduct]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conduct](
                                [Conduc_tID] [varchar](50) NOT NULL,
                                [Conduct_Name] [nvarchar](250) NOT NULL,
                                PRIMARY KEY CLUSTERED
                                    (
                                     [Conduc_tID] ASC
                                        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
                                   [Dis_ID] [varchar](50) NULL,
                                   [Dis_Content] [nvarchar](255) NULL,
                                   [Dis_Score] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discliprorole]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discliprorole](
                                      [Role_ID] [nvarchar](50) NULL,
                                      [Role_Content] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Function]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Function](
                                 [Function_ID] [varchar](50) NOT NULL,
                                 [Function_Name] [nvarchar](250) NOT NULL,
                                 [Status] [int] NULL,
                                 PRIMARY KEY CLUSTERED
                                     (
                                      [Function_ID] ASC
                                         )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
                              [Grade_ID] [varchar](50) NOT NULL,
                              [Grade_Name] [nvarchar](250) NULL,
                              PRIMARY KEY CLUSTERED
                                  (
                                   [Grade_ID] ASC
                                      )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission_Detail]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission_Detail](
                                          [PermissionDetail_ID] [varchar](50) NOT NULL,
                                          [Role_ID] [varchar](50) NOT NULL,
                                          [Function_ID] [varchar](50) NOT NULL,
                                          [Action] [nvarchar](250) NULL,
                                          PRIMARY KEY CLUSTERED
                                              (
                                               [PermissionDetail_ID] ASC
                                                  )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
                               [Student_ID] [nvarchar](max) NOT NULL,
                               [Semeter_ID] [nvarchar](max) NOT NULL,
                               [Score] [float] NOT NULL,
                               [Dis] [nvarchar](max) NOT NULL,
                               [Result] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
                             [Role_ID] [varchar](50) NOT NULL,
                             [Role_Name] [nvarchar](250) NOT NULL,
                             [Status] [int] NULL,
                             PRIMARY KEY CLUSTERED
                                 (
                                  [Role_ID] ASC
                                     )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolYear]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolYear](
                                   [SchoolYear_ID] [varchar](50) NOT NULL,
                                   [SchoolYear_Name] [nvarchar](250) NULL,
                                   [Start_Date] [varchar](10) NULL,
                                   [End_Date] [varchar](10) NULL,
                                   PRIMARY KEY CLUSTERED
                                       (
                                        [SchoolYear_ID] ASC
                                           )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
                                 [Semester_ID] [varchar](50) NOT NULL,
                                 [Semester_Name] [nvarchar](250) NULL,
                                 [Start_Date] [varchar](10) NULL,
                                 [End_Date] [varchar](10) NULL,
                                 [SchoolYear_ID] [varchar](50) NULL,
                                 PRIMARY KEY CLUSTERED
                                     (
                                      [Semester_ID] ASC
                                         )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
                                [Student_ID] [varchar](50) NOT NULL,
                                [Student_Name] [nvarchar](250) NULL,
                                [Date_Of_Birth] [date] NULL,
                                [Gender] [nvarchar](10) NULL,
                                [Phone] [varchar](10) NULL,
                                [Email] [varchar](250) NULL,
                                [Address] [nvarchar](250) NULL,
                                [Status] [int] NULL,
                                [Image] [varchar](250) NULL,
                                [Class_ID] [varchar](50) NULL,
                                PRIMARY KEY CLUSTERED
                                    (
                                     [Student_ID] ASC
                                        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Dis_Result]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Dis_Result](
                                           [Student_ID] [nvarchar](max) NOT NULL,
                                           [Student_Name] [nvarchar](max) NOT NULL,
                                           [Score] [float] NOT NULL,
                                           [Result] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Mark_Subject]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Mark_Subject](
                                             [std_id] [nvarchar](max) NOT NULL,
                                             [std_name] [nvarchar](max) NOT NULL,
                                             [teacher_id] [nvarchar](max) NOT NULL,
                                             [Mark_1] [float] NOT NULL,
                                             [Mark_2] [float] NOT NULL,
                                             [Mark_15] [float] NOT NULL,
                                             [Mark_45] [float] NOT NULL,
                                             [Mark_end] [float] NOT NULL,
                                             [Mark_avg] [float] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
                                [Subject_ID] [varchar](50) NOT NULL,
                                [Subject_Name] [nvarchar](250) NULL,
                                [Coefficient] [int] NULL,
                                [Number_Of_Lesson] [int] NULL,
                                PRIMARY KEY CLUSTERED
                                    (
                                     [Subject_ID] ASC
                                        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
                                [Teacher_ID] [varchar](50) NOT NULL,
                                [Teacher_Name] [nvarchar](250) NULL,
                                [Date_Of_Birth] [date] NULL,
                                [Gender] [nvarchar](10) NULL,
                                [Phone] [varchar](10) NULL,
                                [Email] [varchar](250) NULL,
                                [Address] [nvarchar](250) NULL,
                                [Status] [int] NULL,
                                [Image] [varchar](250) NULL,
                                [Subject_ID] [varchar](50) NULL,
                                PRIMARY KEY CLUSTERED
                                    (
                                     [Teacher_ID] ASC
                                        )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeachingAssignment]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeachingAssignment](
                                           [Assignment_ID] [varchar](50) NOT NULL,
                                           [Teacher_ID] [varchar](50) NULL,
                                           [Class_ID] [varchar](50) NULL,
                                           [Subject_ID] [varchar](50) NULL,
                                           [SchoolYear_ID] [varchar](50) NULL,
                                           [Day_Of_Week] [nvarchar](250) NULL,
                                           [Period] [int] NULL,
                                           PRIMARY KEY CLUSTERED
                                               (
                                                [Assignment_ID] ASC
                                                   )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/26/2024 15:17:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
                             [User_ID] [varchar](50) NOT NULL,
                             [Username] [varchar](250) NOT NULL,
                             [Password] [varchar](250) NOT NULL,
                             [Role_ID] [varchar](50) NOT NULL,
                             PRIMARY KEY CLUSTERED
                                 (
                                  [User_ID] ASC
                                     )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP10A1_1920', N'Lớp 10A1', N'KHOI10', 0, N'NH1920', N'T001')
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP10A1_2021', N'Lớp 10A1', N'KHOI10', 2, N'NH2021', N'T004')
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP10A2_1920', N'Lớp 10A2', N'KHOI10', 0, N'NH1920', N'T011')
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP10A2_2021', N'Lớp 10A2', N'KHOI10', 0, N'NH2021', N'T005')
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP11A1_1920', N'Lớp 11A1', N'KHOI11', 0, N'NH1920', N'T002')
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP11A1_2021', N'Lớp 11A1', N'KHOI11', 0, N'NH2021', N'T009')
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP11A2', N'Lớp 11A2', N'KHOI11', 0, N'NH1920', N'T004')
INSERT [dbo].[Class] ([Class_ID], [Class_Name], [Grade_ID], [Quantity], [SchoolYear_ID], [Teacher_ID]) VALUES (N'LOP12A1_1920', N'Lớp 12A1', N'KHOI12', 0, N'NH1920', N'T003')
GO
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.2       ', N'ĐIểm trung bình chung trên 8 điểm', 12)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.3       ', N'Điểm trung bình chung trên 6.5 điểm', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.4       ', N'Điểm trung bình chung trên 5 điểm', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.5       ', N'Điểm trung bình chung dưới 5 điểm', 0)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.8       ', N'Ban chủ nhiệm câu lạc bộ', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'II.1      ', N'Chấp hành tốt nội quy, quy chế của nhà trường', 15)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.1      ', N'Chấp hành tốt các chủ trương, chính sách, pháp luật của nhà nước', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.5      ', N'Có tinh thần chia sẻ, giúp đỡ người khó khăn, hoạn nạn', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.1       ', N'Điểm trung bình chung trên 9 điểm', 14)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.10      ', N'Thành viên đội tuyển thi quốc gia', 6)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.11      ', N'Thành viên đội tuyển thi tỉnh', 3)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.12      ', N'Thành viên đội tuyển thi thành phố', 2)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.6       ', N'Kết quả học tập tăng 1 bậc so với kỳ trước', 3)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.7       ', N'Kết quả học tập tăng 2 bậc so với kỳ trước', 6)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'I.9       ', N'Thành viên câu lạc bộ', 2)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'II.2      ', N'Tham gia đầy đủ các buổi sự kiện do lớp, nhà trường tổ chức', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'II.3      ', N'Vi phạm quy chế, quy định của nhà trường( có biên bản xử lý)', -10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'II.4      ', N'Vắng 1 buổi do lớp, trường tổ chức không lý do', -5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'III.1     ', N'Tham gia các buổi sinh hoạt theo đúng quy định', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'III.2     ', N'Vắng mặt 1 buổi không có lý do', -5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'III.3     ', N'Tham gia các hoạt động văn hóa, văn nghệ, TDTT, phòng chống TNXH...', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'III.4     ', N'Tham gia văn nghệ, TDTT trong lớp', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'III.5     ', N'Tham gia văn nghệ, TDTT cấp tường', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'III.6     ', N'Tham gia được khen thưởng cấp toàn quốc', 15)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.2      ', N'Được biểu dương người tốt, việc tốt ở nhà trường hoặc ở địa phương có giấy chứng nhận', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.3      ', N'Tham gia các hoạt động tình nguyện trung hạn', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.4      ', N'Tham gia các hoạt động xã hội và các hôatj động tình nguyện ngắn ngày', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.6      ', N'Tham gia hiến máu tình nguyện', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.7      ', N'Tham gia hội tham GDQP-AN cấp Thành phố, Tỉnh', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'IV.8      ', N'Vi phạm ATGT, trật tự công cộng', -20)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'V.1       ', N'Lớp trưởng, BCH đoàn trường', 10)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'V.2       ', N'Lớp phó, Bí thư', 8)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'V.3       ', N'Phó bí thư, Tổ trưởng', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'V.4       ', N'Ủy viên, Tổ phó', 3)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'V.5       ', N'Đối tượng Đảng', 5)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'V.6       ', N'Đoàn viên TNCS Hồ Chí Minh', 3)
INSERT [dbo].[Discipline] ([Dis_ID], [Dis_Content], [Dis_Score]) VALUES (N'V.7       ', N'Thành viên đội tuyển thi thành phố abc', 10)
GO
INSERT [dbo].[Discliprorole] ([Role_ID], [Role_Content]) VALUES (N'I', N'Đánh giá về ý thức và kết quả học tập')
INSERT [dbo].[Discliprorole] ([Role_ID], [Role_Content]) VALUES (N'II', N'Đánh giá về ý thức và kết quả chấp hành quy chế, nội quy, quy định trong nhà trường')
INSERT [dbo].[Discliprorole] ([Role_ID], [Role_Content]) VALUES (N'III', N'Đáng giá về ý thức và kết quả tham gia các hoạt động văn hóa, văn nghệ, thể thao, phòng chống các tệ nạn xã hội')
INSERT [dbo].[Discliprorole] ([Role_ID], [Role_Content]) VALUES (N'IV', N'Đánh giá về ý thức công dân trong quan hệ cộng đồng')
INSERT [dbo].[Discliprorole] ([Role_ID], [Role_Content]) VALUES (N'V', N'Đánh giá về ý thức và kết quả tham gia phụ trách lớp, các đoàn thể trong nhà trường')
GO
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC001', N'Khối Lớp', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC002', N'Năm Học', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC003', N'Môn Học', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC004', N'Điểm Số', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC005', N'Giáo Viên', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC006', N'Học Sinh', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC007', N'Hoạt Động', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC008', N'Phân Quyền', 1)
INSERT [dbo].[Function] ([Function_ID], [Function_Name], [Status]) VALUES (N'FUNC009', N'Người Dùng', 1)
GO
INSERT [dbo].[Grade] ([Grade_ID], [Grade_Name]) VALUES (N'KHOI10', N'Khối 10')
INSERT [dbo].[Grade] ([Grade_ID], [Grade_Name]) VALUES (N'KHOI11', N'Khối 11')
INSERT [dbo].[Grade] ([Grade_ID], [Grade_Name]) VALUES (N'KHOI12', N'Khối 12')
GO
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS001', N'RL001', N'FUNC008', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS003', N'RL001', N'FUNC006', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS004', N'RL001', N'FUNC001', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS005', N'RL001', N'FUNC002', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS006', N'RL001', N'FUNC003', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS007', N'RL001', N'FUNC004', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS008', N'RL001', N'FUNC005', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS009', N'RL001', N'FUNC007', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS010', N'RL002', N'FUNC004', N'Xem')
INSERT [dbo].[Permission_Detail] ([PermissionDetail_ID], [Role_ID], [Function_ID], [Action]) VALUES (N'PMS02', N'RL001', N'FUNC009', N'Xem')
GO
INSERT [dbo].[Role] ([Role_ID], [Role_Name], [Status]) VALUES (N'RL001', N'Admin', 1)
INSERT [dbo].[Role] ([Role_ID], [Role_Name], [Status]) VALUES (N'RL002', N'Giáo viên', 1)
INSERT [dbo].[Role] ([Role_ID], [Role_Name], [Status]) VALUES (N'RL033', N'Giám thị', 1)
GO
INSERT [dbo].[SchoolYear] ([SchoolYear_ID], [SchoolYear_Name], [Start_Date], [End_Date]) VALUES (N'NH1920', N'Năm học 2019 - 2020', N'2019-08-05', N'2020-05-30')
INSERT [dbo].[SchoolYear] ([SchoolYear_ID], [SchoolYear_Name], [Start_Date], [End_Date]) VALUES (N'NH2021', N'Năm học 2020 - 2021', N'2020-08-31', N'2023-05-31')
INSERT [dbo].[SchoolYear] ([SchoolYear_ID], [SchoolYear_Name], [Start_Date], [End_Date]) VALUES (N'NH2122', N'Năm học 2021 - 2022', N'2023-09-04', N'2023-05-27')
GO
INSERT [dbo].[Semester] ([Semester_ID], [Semester_Name], [Start_Date], [End_Date], [SchoolYear_ID]) VALUES (N'HK1_1920', N'HK1_Năm học 2019 - 2020', N'2019-08-05', N'2019-12-30', N'NH1920')
INSERT [dbo].[Semester] ([Semester_ID], [Semester_Name], [Start_Date], [End_Date], [SchoolYear_ID]) VALUES (N'HK1_2021', N'HK1_Năm Học 2020 - 2021', N'2019-09-04', N'2020-12-31', N'NH2021')
INSERT [dbo].[Semester] ([Semester_ID], [Semester_Name], [Start_Date], [End_Date], [SchoolYear_ID]) VALUES (N'HK2_1920', N'HK2_Năm học 2019 - 2020', N'2019-01-05', N'2019-05-30', N'NH1920')
INSERT [dbo].[Semester] ([Semester_ID], [Semester_Name], [Start_Date], [End_Date], [SchoolYear_ID]) VALUES (N'HK2_2021', N'HK2_Năm Học 2020 - 2021', N'2020-01-01', N'2020-05-30', N'NH2021')
GO
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'aweawef', N'awefawef', CAST(N'2019-09-06' AS Date), N'Nam', N'0987654321', N'phuongThuy@gmail.com', N'awefawef', 0, N'Thêm nhân viên.jpg', N'LOP11A2')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS001', N'Quách Gia Quy', CAST(N'2019-09-22' AS Date), N'Nam', N'0907146115', N'quyquach@gmail.com', N'Quận 4', 0, N'Student Male.png', N'LOP11A1_1920')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS002', N'Nguyễn Phương Thùy', CAST(N'2019-09-08' AS Date), N'Nữ', N'0987654321', N'phuongThuy@gmail.com', N'Gò Vấp			', 0, N'Graduate.png', N'LOP11A1_1920')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS003', N'Nguyễn Tấn Đạt', CAST(N'2019-09-08' AS Date), N'Nam', N'0909552389', N'NguyenTanDat@gmail.com', N'Gò Vấp', 0, N'4123.png', N'LOP11A1_1920')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS004', N'Nguyễn Văn B', CAST(N'2019-09-26' AS Date), N'Nam', N'0987654321', N'NguyenVanB@gmail.com', N'fawoiefaw', 0, N'4123.png', N'LOP11A1_1920')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS005', N'Học Sinh 5', CAST(N'2023-11-15' AS Date), N'Nam', N'0987654321', N'hocSinh5@gmail.com', N'àwaefawf', 0, N'Screenshot 2023-07-25 170923.png', N'LOP10A1_2021')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS006', N'Hocj Sinh', CAST(N'2023-11-14' AS Date), N'Nam', N'0987654321', N'hocSinh7@gmail.com', N'Quaanj 5', 0, N'385533518_252893291109956_4134012270312336848_n (1).jpg', N'LOP10A1_2021')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS007', N'HOjc sinh 4', CAST(N'2003-11-20' AS Date), N'Nam', N'0987654321', N'Quy', N'Quaanj 4', 0, N'', N'LOP10A1_1920')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS008', N'QuachQuy', CAST(N'2023-11-09' AS Date), N'Nam', N'0987654321', N'quyquach@gmail.com', N'fawefawe', 0, N'Screenshot 2023-11-09 213423.png', N'LOP10A2_2021')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS009', N'Hojc sinh moiw', CAST(N'2023-11-30' AS Date), N'Nam', N'0987654321', N'hojcsinhmoi@gmail.com', N'QUaanj 5', 0, N'385533518_252893291109956_4134012270312336848_n (1).jpg', N'LOP10A1_2021')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS010', N'Hojc sinh 10', CAST(N'2023-11-30' AS Date), N'Nữ', N'0987654321', N'hoscinh@gmail.com', N'awefwaefaEWf', 0, N'Screenshot 2023-07-25 170923.png', N'LOP10A1_2021')
INSERT [dbo].[Student] ([Student_ID], [Student_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Class_ID]) VALUES (N'HS011', N'123', CAST(N'2023-11-30' AS Date), N'Nam', N'123123123', N'123123123123', N'123123eqweqwe', 0, N'addIcon.png', N'LOP10A1_2021')
GO
INSERT [dbo].[Student_Dis_Result] ([Student_ID], [Student_Name], [Score], [Result]) VALUES (N'HS007', N'HOjc sinh 4', 17, N'Yếu')
GO
INSERT [dbo].[Student_Mark_Subject] ([std_id], [std_name], [teacher_id], [Mark_1], [Mark_2], [Mark_15], [Mark_45], [Mark_end], [Mark_avg]) VALUES (N'HS006', N'Hocj Sinh', N'T001', 3, 3, 3, 3, 3, 3)
GO
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH001', N'Toán', 2, 45)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH002', N'Văn', 2, 45)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH003', N'Anh', 2, 45)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH004', N'Vật Lý', 1, 30)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH005', N'Hóa Học', 1, 30)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH006', N'Sinh Học', 1, 30)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH007', N'Lịch Sử', 1, 30)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH008', N'Địa Lý', 1, 30)
INSERT [dbo].[Subject] ([Subject_ID], [Subject_Name], [Coefficient], [Number_Of_Lesson]) VALUES (N'MH009', N'Giáo Dục Công Dân', 1, 30)
GO
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'123', N'123', CAST(N'2023-11-30' AS Date), N'Nam', N'13', N'123', N'123', 1, N'adminAvatar.png', N'MH001')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'GV001', N'Giaos vien 1', CAST(N'2023-11-15' AS Date), N'Nam', N'0987654321', N'giaovien1@gmail.com', N'quanja 1', 1, N'z4488669781477_edd00bb266a55f89a3f6efec29397072.jpg', N'MH002')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T001', N'Quách Gia Quy', CAST(N'2003-09-20' AS Date), N'Nam', N'1234567890', N'quyquach@gmail.com', N'Quận 5', 1, N'12.png', N'MH001')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T002', N'Lê Tấn Tài', CAST(N'1985-05-08' AS Date), N'Nam', N'9876543210', N'TanTai@example.com', N'Quận 5', 1, N'image8.png', N'MH002')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T003', N'Nguyễn Văn A', CAST(N'1985-05-08' AS Date), N'Nam', N'9876543210', N'A@example.com', N'Quận 2', 1, N'Graduate.png', N'MH003')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T004', N'Vũ Thị H', CAST(N'1986-06-28' AS Date), N'Nữ', N'6665554443', N'vuthih@example.com', N'999 Đường H', 1, N'122.png', N'MH004')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T005', N'Đặng Văn I', CAST(N'1994-09-10' AS Date), N'Nam', N'2223334445', N'dangvani@example.com', N'444 Đường I', 1, N'4123.png', N'MH005')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T006', N'Trần Trọng Q', CAST(N'1995-11-23' AS Date), N'Nam', N'0909552389', N'TrongQ@gmail.com', N'Gò Vấp', 1, N'image10.png', N'MH006')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T007', N'Trần Thị L', CAST(N'1993-01-06' AS Date), N'Nữ', N'4445556667', N'tranthil@example.com', N'666 Đường L', 1, N'Student Male.png', N'MH007')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T008', N'Nguyễn Văn M', CAST(N'1996-10-20' AS Date), N'Nam', N'8889990001', N'nguyenvanm@example.com', N'111 Đường M', 1, N'image12.png', N'MH008')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T009', N'Lê Văn N', CAST(N'1990-07-14' AS Date), N'Nam', N'9990001112', N'levann@example.com', N'333 Đường N', 1, N'image11.png', N'MH009')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T010', N'Phạm Thị P', CAST(N'1995-02-01' AS Date), N'Nữ', N'6667778883', N'phamthip@example.com', N'222 Đường P', 1, N'Student Male.png', N'MH001')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T011', N'Bùi Văn Q', CAST(N'1988-11-17' AS Date), N'Nam', N'5556667774', N'buivanq@example.com', N'555 Đường Q', 1, N'12.png', N'MH002')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T012', N'Giaos vien cu', CAST(N'2023-11-17' AS Date), N'Nam', N'0987654321', N'1234567890', N'thrygefsda', 1, N'385533518_252893291109956_4134012270312336848_n (1).jpg', N'MH004')
INSERT [dbo].[Teacher] ([Teacher_ID], [Teacher_Name], [Date_Of_Birth], [Gender], [Phone], [Email], [Address], [Status], [Image], [Subject_ID]) VALUES (N'T06', N'Lý Thị K', CAST(N'1989-04-23' AS Date), N'Nữ', N'3334445556', N'lythik@example.com', N'777 Đường K', 1, N'1.png', N'MH003')
GO
INSERT [dbo].[TeachingAssignment] ([Assignment_ID], [Teacher_ID], [Class_ID], [Subject_ID], [SchoolYear_ID], [Day_Of_Week], [Period]) VALUES (N'PC001', N'T001', N'LOP10A1_2021', N'MH001', N'NH1920', NULL, NULL)
INSERT [dbo].[TeachingAssignment] ([Assignment_ID], [Teacher_ID], [Class_ID], [Subject_ID], [SchoolYear_ID], [Day_Of_Week], [Period]) VALUES (N'PC002', N'T002', N'LOP10A1_2021', N'MH002', N'NH1920', NULL, NULL)
INSERT [dbo].[TeachingAssignment] ([Assignment_ID], [Teacher_ID], [Class_ID], [Subject_ID], [SchoolYear_ID], [Day_Of_Week], [Period]) VALUES (N'PC003', N'T003', N'LOP10A1_2021', N'MH003', N'NH1920', NULL, NULL)
INSERT [dbo].[TeachingAssignment] ([Assignment_ID], [Teacher_ID], [Class_ID], [Subject_ID], [SchoolYear_ID], [Day_Of_Week], [Period]) VALUES (N'PC004', N'T002', N'LOP11A2', N'MH002', N'NH1920', NULL, NULL)
INSERT [dbo].[TeachingAssignment] ([Assignment_ID], [Teacher_ID], [Class_ID], [Subject_ID], [SchoolYear_ID], [Day_Of_Week], [Period]) VALUES (N'PC005', N'T004', N'LOP11A2', N'MH004', N'NH1920', NULL, NULL)
GO
INSERT [dbo].[User] ([User_ID], [Username], [Password], [Role_ID]) VALUES (N'T001', N'QuachQuy', N'123456', N'RL001')
INSERT [dbo].[User] ([User_ID], [Username], [Password], [Role_ID]) VALUES (N'T002', N'TanTai', N'1232456', N'RL002')
INSERT [dbo].[User] ([User_ID], [Username], [Password], [Role_ID]) VALUES (N'T003', N'NguyenVanA', N'123456', N'RL002')
INSERT [dbo].[User] ([User_ID], [Username], [Password], [Role_ID]) VALUES (N'T004', N'ABC', N'123456', N'RL001')
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Grade_ID] FOREIGN KEY([Grade_ID])
    REFERENCES [dbo].[Grade] ([Grade_ID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Grade_ID]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_SchoolYearID] FOREIGN KEY([SchoolYear_ID])
    REFERENCES [dbo].[SchoolYear] ([SchoolYear_ID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_SchoolYearID]
GO
ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_TeacherID] FOREIGN KEY([Teacher_ID])
    REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_TeacherID]
GO
ALTER TABLE [dbo].[Permission_Detail]  WITH CHECK ADD  CONSTRAINT [PermissionDetail_Function_ID] FOREIGN KEY([Function_ID])
    REFERENCES [dbo].[Function] ([Function_ID])
GO
ALTER TABLE [dbo].[Permission_Detail] CHECK CONSTRAINT [PermissionDetail_Function_ID]
GO
ALTER TABLE [dbo].[Permission_Detail]  WITH CHECK ADD  CONSTRAINT [PermissionDetail_Role_ID] FOREIGN KEY([Role_ID])
    REFERENCES [dbo].[Role] ([Role_ID])
GO
ALTER TABLE [dbo].[Permission_Detail] CHECK CONSTRAINT [PermissionDetail_Role_ID]
GO
ALTER TABLE [dbo].[Semester]  WITH CHECK ADD  CONSTRAINT [FK_Semester_SchoolYearID] FOREIGN KEY([SchoolYear_ID])
    REFERENCES [dbo].[SchoolYear] ([SchoolYear_ID])
GO
ALTER TABLE [dbo].[Semester] CHECK CONSTRAINT [FK_Semester_SchoolYearID]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD FOREIGN KEY([Class_ID])
    REFERENCES [dbo].[Class] ([Class_ID])
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_SubjectID] FOREIGN KEY([Subject_ID])
    REFERENCES [dbo].[Subject] ([Subject_ID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_SubjectID]
GO
ALTER TABLE [dbo].[TeachingAssignment]  WITH CHECK ADD  CONSTRAINT [FK_TeachingAssignment_ClassID] FOREIGN KEY([Class_ID])
    REFERENCES [dbo].[Class] ([Class_ID])
GO
ALTER TABLE [dbo].[TeachingAssignment] CHECK CONSTRAINT [FK_TeachingAssignment_ClassID]
GO
ALTER TABLE [dbo].[TeachingAssignment]  WITH CHECK ADD  CONSTRAINT [FK_TeachingAssignment_SchoolYearID] FOREIGN KEY([SchoolYear_ID])
    REFERENCES [dbo].[SchoolYear] ([SchoolYear_ID])
GO
ALTER TABLE [dbo].[TeachingAssignment] CHECK CONSTRAINT [FK_TeachingAssignment_SchoolYearID]
GO
ALTER TABLE [dbo].[TeachingAssignment]  WITH CHECK ADD  CONSTRAINT [FK_TeachingAssignment_SubjectID] FOREIGN KEY([Subject_ID])
    REFERENCES [dbo].[Subject] ([Subject_ID])
GO
ALTER TABLE [dbo].[TeachingAssignment] CHECK CONSTRAINT [FK_TeachingAssignment_SubjectID]
GO
ALTER TABLE [dbo].[TeachingAssignment]  WITH CHECK ADD  CONSTRAINT [FK_TeachingAssignment_TeacherID] FOREIGN KEY([Teacher_ID])
    REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[TeachingAssignment] CHECK CONSTRAINT [FK_TeachingAssignment_TeacherID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_TeacherID] FOREIGN KEY([User_ID])
    REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_TeacherID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [User_RoleID] FOREIGN KEY([Role_ID])
    REFERENCES [dbo].[Role] ([Role_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [User_RoleID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [User_TeacherID] FOREIGN KEY([User_ID])
    REFERENCES [dbo].[Teacher] ([Teacher_ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [User_TeacherID]
GO
USE [master]
GO
ALTER DATABASE [SMS] SET  READ_WRITE
GO