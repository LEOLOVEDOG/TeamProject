USE [master]
GO
/****** Object:  Database [goodbyepotato]    Script Date: 2024/11/4 上午 09:44:43 ******/
CREATE DATABASE [goodbyepotato]
GO
ALTER DATABASE [goodbyepotato] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [goodbyepotato].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [goodbyepotato] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [goodbyepotato] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [goodbyepotato] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [goodbyepotato] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [goodbyepotato] SET ARITHABORT OFF 
GO
ALTER DATABASE [goodbyepotato] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [goodbyepotato] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [goodbyepotato] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [goodbyepotato] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [goodbyepotato] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [goodbyepotato] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [goodbyepotato] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [goodbyepotato] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [goodbyepotato] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [goodbyepotato] SET  DISABLE_BROKER 
GO
ALTER DATABASE [goodbyepotato] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [goodbyepotato] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [goodbyepotato] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [goodbyepotato] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [goodbyepotato] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [goodbyepotato] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [goodbyepotato] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [goodbyepotato] SET RECOVERY FULL 
GO
ALTER DATABASE [goodbyepotato] SET  MULTI_USER 
GO
ALTER DATABASE [goodbyepotato] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [goodbyepotato] SET DB_CHAINING OFF 
GO
ALTER DATABASE [goodbyepotato] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [goodbyepotato] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [goodbyepotato] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [goodbyepotato] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'goodbyepotato', N'ON'
GO
ALTER DATABASE [goodbyepotato] SET QUERY_STORE = ON
GO
ALTER DATABASE [goodbyepotato] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200)
GO
USE [goodbyepotato]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccessoriesList]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessoriesList](
	[P_Code] [int] IDENTITY(1000,1) NOT NULL,
	[P_Class] [nvarchar](10) NOT NULL,
	[P_Name] [nvarchar](30) NOT NULL,
	[P_Price] [int] NULL,
	[P_Level] [int] NULL,
	[P_ImageShop] [nvarchar](50) NULL,
	[P_ImageAll] [nvarchar](50) NULL,
	[P_Active] [bit] NOT NULL,
	[P_ReviewStatus] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK__Accessor__F54C4371D7490299] PRIMARY KEY CLUSTERED 
(
	[P_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Administrator]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrator](
	[A_Account] [nvarchar](30) NOT NULL,
	[A_Password] [nvarchar](30) NOT NULL,
	[M_DailyTask] [bit] NOT NULL,
	[M_Product] [bit] NOT NULL,
	[M_Administrator] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[A_Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Character]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Character](
	[C_ID] [int] IDENTITY(10000,1) NOT NULL,
	[Account] [nvarchar](30) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Level] [int] NOT NULL,
	[Experience] [int] NOT NULL,
	[Weight] [decimal](4, 1) NULL,
	[Height] [decimal](4, 1) NULL,
	[Environment] [int] NULL,
	[LivingStatus] [nvarchar](10) NULL,
	[MoveInDate] [datetime] NULL,
	[MoveOutDate] [datetime] NULL,
	[StandardWater] [int] NULL,
	[StandardStep] [int] NULL,
	[Coins] [int] NULL,
	[TargetWater] [int] NULL,
	[TargetStep] [int] NULL,
	[GetEnvironment] [int] NULL,
	[GetExperience] [int] NULL,
	[GetCoins] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterAccessorie]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterAccessorie](
	[C_ID] [int] NOT NULL,
	[Head] [int] NULL,
	[Upper] [int] NULL,
	[Lower] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterItem]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterItem](
	[Account] [nvarchar](30) NOT NULL,
	[P_Code] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC,
	[P_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyHealthRecord]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyHealthRecord](
	[C_ID] [int] NOT NULL,
	[HRecordDate] [date] NOT NULL,
	[Water] [int] NULL,
	[Steps] [int] NULL,
	[Sleep] [datetime] NULL,
	[Mood] [nvarchar](10) NULL,
	[Vegetables] [int] NULL,
	[Snacks] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC,
	[HRecordDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyTask]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyTask](
	[TaskID] [int] IDENTITY(1,1) NOT NULL,
	[TaskName] [nvarchar](50) NOT NULL,
	[Reward] [int] NOT NULL,
	[TaskActive] [bit] NOT NULL,
	[T_ReviewStatus] [nvarchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TaskID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DailyTaskRecord]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DailyTaskRecord](
	[C_ID] [int] NOT NULL,
	[TRecordDate] [date] NOT NULL,
	[T1Name] [nvarchar](50) NULL,
	[T1Completed] [bit] NULL,
	[T2Name] [nvarchar](50) NULL,
	[T2Completed] [bit] NULL,
	[T3Name] [nvarchar](50) NULL,
	[T3Completed] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC,
	[TRecordDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackNO] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](80) NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
	[Submitted] [datetime] NOT NULL,
	[Pro_Active] [bit] NOT NULL,
	[Pro_Date] [datetime] NULL,
	[Pro_Content] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PasswordResetRequests]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PasswordResetRequests](
	[Id] [nvarchar](450) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[Token] [nvarchar](512) NULL,
	[CreatedAt] [datetime] NULL,
 CONSTRAINT [PK_PasswordResetRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Player]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player](
	[Account] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](80) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[Playerstatus] [bit] NOT NULL,
	[token] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomAccessories]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoomAccessories](
	[C_ID] [int] NOT NULL,
	[Bookcase] [int] NULL,
	[Bed] [int] NULL,
	[Desk] [int] NULL,
	[Chair] [int] NULL,
	[Plant] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeeklyHealthRecord]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeeklyHealthRecord](
	[C_ID] [int] NOT NULL,
	[WRecordDate] [date] NOT NULL,
	[Exercise] [bit] NOT NULL,
	[Cleaning] [bit] NOT NULL,
 CONSTRAINT [PK__WeeklyHe__8BF6176FC3B7D468] PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC,
	[WRecordDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeightRecord]    Script Date: 2024/11/4 上午 09:44:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeightRecord](
	[C_ID] [int] NOT NULL,
	[W_RecordDate] [date] NOT NULL,
	[Weight] [decimal](4, 1) NOT NULL,
 CONSTRAINT [PK__WeightRe__2CF18179E87F755E] PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC,
	[W_RecordDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.8')
GO
SET IDENTITY_INSERT [dbo].[AccessoriesList] ON 

INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1044, N'飾品', N'飾品6', 700, 6, N'accessoryShop06-1.png', N'accessory06-1.png', 0, N'未通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1045, N'飾品', N'飾品7', 1000, 11, N'accessoryShop07-1.png', N'accessory07-1.png', 0, N'未通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1046, N'飾品', N'飾品8', 900, 10, N'accessoryShop08-1.png', N'accessory08-1.png', 0, N'未通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1047, N'飾品', N'飾品9', 1800, 18, N'accessoryShop09-1.png', N'accessory09-1.png', 0, N'未通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1048, N'飾品', N'飾品10', 1500, 15, N'accessoryShop10-1.png', N'accessory10-1.png', 0, N'未通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1049, N'飾品', N'飾品11', 1700, 9, N'accessoryShop11-1.png', N'accessory11-1.png', 0, N'未通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1051, N'衣服', N'學生服', 2800, 34, N'outfitShop_28_01.png', N'outfit_28_01.png', 0, N'未通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1052, N'衣服', N'間諜裝', 4000, 29, N'outfitShop_30_01.png', N'outfit_30_01.png', 0, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1053, N'髮型', N'褐色短髮', 500, 1, N'ShopHairstyle_01_01.png', N'Hairstyle_01_01.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1054, N'髮型', N'咖啡色短髮', 500, 5, N'ShopHairstyle_01_02.png', N'Hairstyle_01_02.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1055, N'髮型', N'黑色短髮', 500, 3, N'ShopHairstyle_01_03.png', N'Hairstyle_01_03.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1056, N'飾品', N'紅色瓢蟲套裝', 700, 1, N'ShopAccessory_01_Ladybug_01.png', N'Accessory_01_Ladybug_01.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1057, N'飾品', N'黃色瓢蟲套裝', 700, 5, N'ShopAccessory_01_Ladybug_02.png', N'Accessory_01_Ladybug_02.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1058, N'飾品', N'綠色瓢蟲套裝', 700, 7, N'ShopAccessory_01_Ladybug_03.png', N'Accessory_01_Ladybug_03.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1059, N'衣服', N'跩酷套裝', 380, 1, N'ShopOutfit_01_01.png', N'Outfit_01_01.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1060, N'衣服', N'藍色條紋套裝', 520, 5, N'ShopOutfit_01_02.png', N'Outfit_01_02.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1061, N'衣服', N'工作裝', 380, 1, N'ShopOutfit_01_03.png', N'Outfit_01_03.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1062, N'飾品', N'綠色恐龍帽', 1000, 15, N'accessoryShop_05_Dino_Snapback_01.png', N'accessory_05_Dino_Snapback_01.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1063, N'飾品', N'藍色恐龍帽', 1200, 10, N'accessoryShop_05_Dino_Snapback_02.png', N'accessory_05_Dino_Snapback_02.png', 1, N'通過')
INSERT [dbo].[AccessoriesList] ([P_Code], [P_Class], [P_Name], [P_Price], [P_Level], [P_ImageShop], [P_ImageAll], [P_Active], [P_ReviewStatus]) VALUES (1064, N'飾品', N'紅色恐龍帽', 500, 1, N'accessoryShop_05_Dino_Snapback_03.png', N'accessory_05_Dino_Snapback_03.png', 1, N'通過')
SET IDENTITY_INSERT [dbo].[AccessoriesList] OFF
GO
INSERT [dbo].[Administrator] ([A_Account], [A_Password], [M_DailyTask], [M_Product], [M_Administrator]) VALUES (N'adam', N'pass789', 0, 1, 0)
INSERT [dbo].[Administrator] ([A_Account], [A_Password], [M_DailyTask], [M_Product], [M_Administrator]) VALUES (N'admin1', N'password123', 1, 1, 1)
INSERT [dbo].[Administrator] ([A_Account], [A_Password], [M_DailyTask], [M_Product], [M_Administrator]) VALUES (N'Alice', N'admin456', 1, 0, 0)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'48daf0b3-d934-46dc-91f1-bf37a18cea04', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7f76a963-e347-4f20-adf0-51a67d8e08e3', N'PermiGuard', N'PERMIGUARD', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b01743dd-a743-4987-8ae1-3977f4e14021', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0078bcae-5783-462e-959d-6078c87d898e', N'b01743dd-a743-4987-8ae1-3977f4e14021')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0e363060-ed4e-4ba4-869f-bcde984979ca', N'7f76a963-e347-4f20-adf0-51a67d8e08e3')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1f0b6ae5-71d8-48f5-bcb3-e48aac9e1564', N'b01743dd-a743-4987-8ae1-3977f4e14021')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b68fb98b-c658-4844-bded-021979c9d313', N'48daf0b3-d934-46dc-91f1-bf37a18cea04')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0078bcae-5783-462e-959d-6078c87d898e', N'oez666oez@gmail.com', N'OEZ666OEZ@GMAIL.COM', N'oez666oez@gmail.com', N'OEZ666OEZ@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBNuVw3KcJ1yv4lcnTTuRLEjXMWlc/3riuriuYC2ccc50XY874lqnYOHOQLtZoolUw==', N'CAOJHACTVJLY36BU44NZXRAIBG3HSHW3', N'37609e92-c7d8-4e86-bca4-4a5748ba6ae3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0e363060-ed4e-4ba4-869f-bcde984979ca', N'Crythics@gmail.com', N'CRYTHICS@GMAIL.COM', N'Crythics@gmail.com', N'CRYTHICS@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIC3F4TzK3BqOSEYG+bPjx2Z4abNjX248JF6OoGo2fYeSY622ZLDHYp/dtjpwp+Q7w==', N'XL5XBVZXV72ZRSAQ7KCIWMTSPFPDORKG', N'0343943c-8e2e-425f-9c7f-2f81dd1868b9', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1f0b6ae5-71d8-48f5-bcb3-e48aac9e1564', N'uo12354@gmail.com', N'UO12354@GMAIL.COM', N'uo12354@gmail.com', N'UO12354@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEB+bCxvDFYCAexwGhj1knJ3dQB7UzvQz9P510duXMWoad60qYg7ZSff1QEs8Li6Jxw==', N'U3QIOGBGU4IL6PVKONTCJJXMBPBVXCWL', N'fbb66624-99d6-42fc-919d-c25de3c283eb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b68fb98b-c658-4844-bded-021979c9d313', N'leo555555@gmail.com', N'LEO555555@GMAIL.COM', N'leo555555@gmail.com', N'LEO555555@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEF5zJykC82JxBAPY3Ie4MM1nqJ7/hDqV/l4Jz9ED2pN4uloguR4PTNqL7LlN/gl7MA==', N'FQVDYBCPHRTDKJR456ZD46KLGVGINUON', N'ca3f60d4-4e78-4b7a-8edf-304a47e5a9be', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Character] ON 

INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10000, N'tiger123', N'Tiger King', 15, 75, CAST(70.5 AS Decimal(4, 1)), CAST(175.2 AS Decimal(4, 1)), 0, N'搬離', CAST(N'2024-08-01T00:00:00.000' AS DateTime), CAST(N'2024-08-05T00:00:00.000' AS DateTime), 1700, 3000, 700, 2100, 5000, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10001, N'sunny234', N'Sunny Shine', 8, 60, CAST(60.2 AS Decimal(4, 1)), CAST(165.0 AS Decimal(4, 1)), 23, N'居住', CAST(N'2024-08-02T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1200, 6000, 365, 1800, 7500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10002, N'mystic789', N'Mystic Sage', 12, 90, CAST(65.0 AS Decimal(4, 1)), CAST(170.3 AS Decimal(4, 1)), 8, N'居住', CAST(N'2024-08-02T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1200, 6000, 225, 2000, 7500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10003, N'dragon567', N'Dragon Slayer', 18, 85, CAST(85.1 AS Decimal(4, 1)), CAST(180.0 AS Decimal(4, 1)), 68, N'居住', CAST(N'2024-08-03T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 2200, 8000, 350, 2600, 10000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10004, N'shadow999', N'Shadow Ninja', 4, 50, CAST(55.5 AS Decimal(4, 1)), CAST(160.4 AS Decimal(4, 1)), 0, N'居住', CAST(N'2024-08-05T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1200, 3000, 780, 1700, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10005, N'hunter432', N'Hunter Wolf', 10, 95, CAST(78.0 AS Decimal(4, 1)), CAST(172.5 AS Decimal(4, 1)), 53, N'居住', CAST(N'2024-08-05T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 6000, 1505, 2300, 7500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10006, N'hero891', N'英雄', 20, 99, CAST(88.9 AS Decimal(4, 1)), CAST(182.7 AS Decimal(4, 1)), 83, N'居住', CAST(N'2024-08-05T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 2200, 3000, 380, 2700, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10007, N'joker321', N'Joker Fool', 6, 45, CAST(72.3 AS Decimal(4, 1)), CAST(169.8 AS Decimal(4, 1)), 18, N'居住', CAST(N'2024-08-07T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 10000, 650, 2200, 12500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10008, N'wizard007', N'Wizard Master', 14, 70, CAST(68.0 AS Decimal(4, 1)), CAST(178.1 AS Decimal(4, 1)), 48, N'居住', CAST(N'2024-08-08T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 8000, 750, 2000, 10000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10009, N'storm456', N'龍捲風', 25, 55, CAST(75.0 AS Decimal(4, 1)), CAST(179.2 AS Decimal(4, 1)), 0, N'搬離', CAST(N'2024-08-15T00:00:00.000' AS DateTime), CAST(N'2024-08-20T00:00:00.000' AS DateTime), 1700, 10000, 5, 2300, 6000, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10010, N'knight245', N'Knight Champion', 11, 80, CAST(82.0 AS Decimal(4, 1)), CAST(176.5 AS Decimal(4, 1)), 73, N'居住', CAST(N'2024-08-18T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 3000, 550, 2500, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10011, N'rogue654', N'今天很愉快', 7, 65, CAST(60.5 AS Decimal(4, 1)), CAST(166.9 AS Decimal(4, 1)), 13, N'居住', CAST(N'2024-08-18T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1200, 6000, 50, 1800, 7500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10012, N'prince357', N'Prince Noble', 5, 40, CAST(70.0 AS Decimal(4, 1)), CAST(168.0 AS Decimal(4, 1)), 3, N'居住', CAST(N'2024-08-18T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 3000, 15, 2100, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10013, N'phoenix763', N'Phoenix Flame', 13, 85, CAST(68.2 AS Decimal(4, 1)), CAST(174.3 AS Decimal(4, 1)), 38, N'居住', CAST(N'2024-08-19T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 8000, 65, 2000, 10000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10014, N'warrior123', N'Warrior Brave', 3, 30, CAST(85.3 AS Decimal(4, 1)), CAST(183.0 AS Decimal(4, 1)), 0, N'搬離', CAST(N'2024-08-20T00:00:00.000' AS DateTime), CAST(N'2024-08-31T00:00:00.000' AS DateTime), 2200, 8000, 780, 2600, 10000, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10015, N'samurai678', N'夏天好熱！', 19, 98, CAST(77.7 AS Decimal(4, 1)), CAST(181.0 AS Decimal(4, 1)), 78, N'居住', CAST(N'2024-08-21T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 3000, 175, 2300, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10016, N'ranger987', N'!!!!', 16, 89, CAST(73.4 AS Decimal(4, 1)), CAST(177.8 AS Decimal(4, 1)), 58, N'居住', CAST(N'2024-08-21T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 8000, 655, 2200, 10000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10017, N'pirate876', N'Pirate Captain', 17, 95, CAST(80.5 AS Decimal(4, 1)), CAST(179.9 AS Decimal(4, 1)), 73, N'居住', CAST(N'2024-08-22T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 3000, 725, 2400, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10018, N'ninja321', N'小豬', 2, 20, CAST(65.0 AS Decimal(4, 1)), CAST(167.2 AS Decimal(4, 1)), 0, N'居住', CAST(N'2024-08-24T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1200, 3000, 655, 2000, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10019, N'warrior123', N'Warrior Brave', 3, 30, CAST(85.3 AS Decimal(4, 1)), CAST(183.0 AS Decimal(4, 1)), 0, N'搬離', CAST(N'2024-08-31T00:00:00.000' AS DateTime), CAST(N'2024-09-05T00:00:00.000' AS DateTime), 2200, 3000, 350, 2600, 5000, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10020, N'guardian555', N'Guardian Shield', 1, 10, CAST(90.1 AS Decimal(4, 1)), CAST(185.4 AS Decimal(4, 1)), 3, N'居住', CAST(N'2024-09-02T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 2200, 6000, 355, 2700, 7500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10021, N'tiger123', N'Tiger King', 15, 75, CAST(70.5 AS Decimal(4, 1)), CAST(175.2 AS Decimal(4, 1)), 13, N'居住', CAST(N'2024-09-02T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1200, 6000, 635, 1500, 7500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10022, N'storm456', N'颶風', 9, 55, CAST(75.4 AS Decimal(4, 1)), CAST(179.2 AS Decimal(4, 1)), 0, N'搬離', CAST(N'2024-09-02T00:00:00.000' AS DateTime), CAST(N'2024-09-09T00:00:00.000' AS DateTime), 1700, 6000, 275, 2300, 7500, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10023, N'warrior123', N'Warrior Brave', 3, 30, CAST(85.3 AS Decimal(4, 1)), CAST(183.0 AS Decimal(4, 1)), 3, N'居住', CAST(N'2024-09-05T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 2200, 3000, 150, 2600, 5000, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10024, N'storm456', N'颱風', 9, 55, CAST(75.7 AS Decimal(4, 1)), CAST(179.2 AS Decimal(4, 1)), 0, N'居住', CAST(N'2024-09-09T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 6000, 625, 2300, 7500, -12, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10026, N'leo555555', N'我是老大', 1, 0, CAST(55.0 AS Decimal(4, 1)), CAST(180.0 AS Decimal(4, 1)), 80, N'搬離', CAST(N'2024-10-19T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1700, 6000, 9000, 2300, 7500, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10027, N'leo555555', N'Character_10027', 20, 76, CAST(83.5 AS Decimal(4, 1)), CAST(166.7 AS Decimal(4, 1)), 41, N'搬離', CAST(N'2023-08-17T03:01:30.000' AS DateTime), CAST(N'2025-08-07T03:04:37.000' AS DateTime), 1834, 6046, 31787, 2324, 9209, 91, 416, 624)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10028, N'leo555555', N'Character_10028', 5, 1026, CAST(71.0 AS Decimal(4, 1)), CAST(159.0 AS Decimal(4, 1)), 2, N'搬離', CAST(N'2024-09-13T03:01:30.000' AS DateTime), CAST(N'2025-07-16T03:04:37.000' AS DateTime), 2078, 7710, 88455, 1312, 12002, 100, 700, 335)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10029, N'leo555555', N'Character_10029', 37, 5034, CAST(68.8 AS Decimal(4, 1)), CAST(182.0 AS Decimal(4, 1)), 81, N'搬離', CAST(N'2022-11-25T03:01:30.000' AS DateTime), CAST(N'2025-10-04T03:04:37.000' AS DateTime), 1917, 5317, 94614, 1730, 12127, 17, 698, 643)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10030, N'leo555555', N'Character_10030', 25, 7542, CAST(83.9 AS Decimal(4, 1)), CAST(171.6 AS Decimal(4, 1)), 42, N'搬離', CAST(N'2024-05-25T03:01:30.000' AS DateTime), CAST(N'2026-04-27T03:01:30.000' AS DateTime), 1902, 8633, 24698, 1693, 14893, 65, 648, 813)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10031, N'leo555555', N'Character_10031', 21, 3766, CAST(65.5 AS Decimal(4, 1)), CAST(175.2 AS Decimal(4, 1)), 42, N'搬離', CAST(N'2022-03-01T03:01:30.000' AS DateTime), CAST(N'2023-01-08T03:01:30.000' AS DateTime), 2444, 8613, 83221, 1931, 14659, 87, 836, 793)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10032, N'leo555555', N'Character_10032', 15, 4892, CAST(75.2 AS Decimal(4, 1)), CAST(178.3 AS Decimal(4, 1)), 33, N'搬離', CAST(N'2021-06-15T03:01:30.000' AS DateTime), CAST(N'2023-08-19T03:04:37.000' AS DateTime), 2010, 9294, 43561, 1720, 10540, 44, 523, 445)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10033, N'leo555555', N'Character_10033', 30, 9234, CAST(70.1 AS Decimal(4, 1)), CAST(169.8 AS Decimal(4, 1)), 60, N'搬離', CAST(N'2020-12-24T03:01:30.000' AS DateTime), CAST(N'2024-03-29T03:04:37.000' AS DateTime), 2273, 5002, 50938, 2154, 12876, 72, 815, 917)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10034, N'leo555555', N'Character_10034', 19, 5821, CAST(78.4 AS Decimal(4, 1)), CAST(181.5 AS Decimal(4, 1)), 50, N'搬離', CAST(N'2023-04-09T03:01:30.000' AS DateTime), CAST(N'2025-09-18T03:04:37.000' AS DateTime), 2002, 6870, 65982, 2387, 14095, 51, 687, 804)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10035, N'leo555555', N'Character_10035', 8, 1284, CAST(84.3 AS Decimal(4, 1)), CAST(162.2 AS Decimal(4, 1)), 28, N'搬離', CAST(N'2022-10-05T03:01:30.000' AS DateTime), CAST(N'2023-07-14T03:04:37.000' AS DateTime), 1802, 8589, 28871, 2009, 11672, 30, 422, 312)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (10036, N'leo555555', N'Character_10036', 99, 3549, CAST(68.9 AS Decimal(4, 1)), CAST(176.4 AS Decimal(4, 1)), 45, N'居住', CAST(N'2023-02-17T03:01:30.000' AS DateTime), CAST(N'1900-07-14T03:04:37.000' AS DateTime), 2318, 5472, 9999, 2568, 13520, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (11030, N'leo555555', N'Character_10037', 40, 80, NULL, NULL, 0, N'搬離', CAST(N'2024-10-22T22:23:41.660' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1204, 4000, 400, NULL, NULL, 0, 0, 0)
INSERT [dbo].[Character] ([C_ID], [Account], [Name], [Level], [Experience], [Weight], [Height], [Environment], [LivingStatus], [MoveInDate], [MoveOutDate], [StandardWater], [StandardStep], [Coins], [TargetWater], [TargetStep], [GetEnvironment], [GetExperience], [GetCoins]) VALUES (11031, N'oez660oez', N'牢師', 50, 0, CAST(56.0 AS Decimal(4, 1)), CAST(166.0 AS Decimal(4, 1)), 80, N'居住', CAST(N'2024-11-03T21:19:13.563' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1200, 3000, 8000, 1700, 5000, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Character] OFF
GO
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10001, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10002, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10003, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10004, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10005, 0, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10006, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10007, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10008, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10009, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10010, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10011, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10012, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10013, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10014, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10015, 0, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10016, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10017, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10018, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10019, 1000, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10020, 0, 0, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10021, 0, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10022, 1000, 0, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10023, 1000, 0, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10024, 0, 0, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10025, 0, 1001, 0)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (10026, 1000, 1001, 1003)
INSERT [dbo].[CharacterAccessorie] ([C_ID], [Head], [Upper], [Lower]) VALUES (11031, 1064, 1054, 0)
GO
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'dragon567', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'dragon567', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'dragon567', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'guardian555', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'guardian555', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'guardian555', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'hero891', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'hero891', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'hero891', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'hunter432', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'hunter432', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'hunter432', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'joker321', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'joker321', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'joker321', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'knight245', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'knight245', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'knight245', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'mystic789', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'mystic789', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'mystic789', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'ninja321', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'ninja321', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'ninja321', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'oez660oez', 1054)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'oez660oez', 1064)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'phoenix763', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'phoenix763', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'phoenix763', 1004)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'pirate876', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'pirate876', 1002)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'pirate876', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'prince357', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'prince357', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'prince357', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'ranger987', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'ranger987', 1004)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'ranger987', 1005)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'rogue654', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'rogue654', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'rogue654', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'samurai678', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'samurai678', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'samurai678', 1007)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'shadow999', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'shadow999', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'shadow999', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'storm456', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'storm456', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'storm456', 1004)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'storm456', 1008)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'storm456', 1009)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'sunny234', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'sunny234', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'sunny234', 1008)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'tiger123', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'tiger123', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'tiger123', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'warrior123', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'warrior123', 1001)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'warrior123', 1004)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'wizard007', 1000)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'wizard007', 1003)
INSERT [dbo].[CharacterItem] ([Account], [P_Code]) VALUES (N'wizard007', 1004)
GO
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (199, CAST(N'2024-10-17' AS Date), 85145, 48, CAST(N'2024-10-18T14:21:00.000' AS DateTime), N'普通', 10, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (199, CAST(N'2024-10-20' AS Date), 0, 0, CAST(N'2024-10-20T11:58:00.000' AS DateTime), N'不開心', 1, 10)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10001, CAST(N'2024-10-01' AS Date), 2500, 4987, CAST(N'2024-10-05T00:00:00.000' AS DateTime), N'非常開心', 1, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10001, CAST(N'2024-10-02' AS Date), 2500, 7350, CAST(N'2024-10-01T00:00:00.000' AS DateTime), N'普通', 4, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10001, CAST(N'2024-10-03' AS Date), 2600, 7400, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'非常開心', 4, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10001, CAST(N'2024-10-04' AS Date), 2700, 7500, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 4, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10001, CAST(N'2024-10-05' AS Date), 2700, 7500, CAST(N'2024-10-05T08:15:00.000' AS DateTime), N'普通', 4, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10002, CAST(N'2024-10-02' AS Date), 8000, 6350, CAST(N'2024-10-01T00:00:00.000' AS DateTime), N'開心', 5, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10002, CAST(N'2024-10-03' AS Date), 8100, 6450, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'普通', 5, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10002, CAST(N'2024-10-04' AS Date), 8200, 6550, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'非常開心', 5, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10002, CAST(N'2024-10-05' AS Date), 8200, 6550, CAST(N'2024-10-05T09:30:00.000' AS DateTime), N'開心', 5, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10003, CAST(N'2024-10-02' AS Date), 3000, 7500, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'普通', 3, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10003, CAST(N'2024-10-03' AS Date), 3100, 7600, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'普通', 3, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10003, CAST(N'2024-10-04' AS Date), 3200, 7700, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 3, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10003, CAST(N'2024-10-05' AS Date), 3200, 7700, CAST(N'2024-10-05T10:45:00.000' AS DateTime), N'普通', 3, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10004, CAST(N'2024-10-02' AS Date), 500, 1530, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'不透露', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10004, CAST(N'2024-10-03' AS Date), 600, 1600, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不透露', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10004, CAST(N'2024-10-04' AS Date), 700, 1700, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10004, CAST(N'2024-10-05' AS Date), 700, 1700, CAST(N'2024-10-05T12:00:00.000' AS DateTime), N'不透露', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10005, CAST(N'2024-10-02' AS Date), 3000, 5786, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'普通', 1, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10005, CAST(N'2024-10-03' AS Date), 3100, 5886, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'非常開心', 1, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10005, CAST(N'2024-10-04' AS Date), 3200, 5986, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'非常開心', 1, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10005, CAST(N'2024-10-05' AS Date), 3200, 5986, CAST(N'2024-10-05T13:15:00.000' AS DateTime), N'非常開心', 1, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10006, CAST(N'2024-10-02' AS Date), 3500, 7580, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'普通', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10006, CAST(N'2024-10-03' AS Date), 3600, 7680, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'非常開心', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10006, CAST(N'2024-10-04' AS Date), 3700, 7780, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10006, CAST(N'2024-10-05' AS Date), 3700, 7780, CAST(N'2024-10-05T14:30:00.000' AS DateTime), N'普通', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10007, CAST(N'2024-10-02' AS Date), 1500, 3700, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'開心', 3, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10007, CAST(N'2024-10-03' AS Date), 1600, 3800, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'非常開心', 3, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10007, CAST(N'2024-10-04' AS Date), 1700, 3900, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'開心', 3, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10007, CAST(N'2024-10-05' AS Date), 1700, 3900, CAST(N'2024-10-05T15:45:00.000' AS DateTime), N'開心', 3, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10008, CAST(N'2024-10-02' AS Date), 300, 3777, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'不透露', 3, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10008, CAST(N'2024-10-03' AS Date), 400, 3877, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不透露', 3, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10008, CAST(N'2024-10-04' AS Date), 500, 3977, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 3, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10008, CAST(N'2024-10-05' AS Date), 500, 3977, CAST(N'2024-10-05T16:00:00.000' AS DateTime), N'不透露', 3, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10009, CAST(N'2024-08-15' AS Date), 1100, 7200, CAST(N'2024-08-15T23:42:10.000' AS DateTime), N'不開心', 0, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10009, CAST(N'2024-08-16' AS Date), 1500, 5032, CAST(N'2024-08-16T22:52:10.000' AS DateTime), N'非常不開心', 1, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10009, CAST(N'2024-08-17' AS Date), 2300, 1532, CAST(N'2024-08-17T20:52:10.000' AS DateTime), N'普通', 3, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10009, CAST(N'2024-08-18' AS Date), 1500, 3628, CAST(N'2024-08-18T21:35:39.000' AS DateTime), N'不開心', 4, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10009, CAST(N'2024-08-19' AS Date), 2700, 3457, CAST(N'2024-08-19T23:40:34.000' AS DateTime), N'不開心', 1, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10009, CAST(N'2024-08-20' AS Date), 500, 3329, CAST(N'2024-08-20T23:01:05.000' AS DateTime), N'開心', 2, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10009, CAST(N'2024-10-05' AS Date), 800, 8077, CAST(N'2024-10-05T17:15:00.000' AS DateTime), N'不開心', 1, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10010, CAST(N'2024-10-02' AS Date), 500, 7777, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'普通', 1, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10010, CAST(N'2024-10-03' AS Date), 600, 7877, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不開心', 1, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10010, CAST(N'2024-10-04' AS Date), 700, 7977, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'不開心', 1, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10010, CAST(N'2024-10-05' AS Date), 600, 755, CAST(N'2024-10-05T18:30:00.000' AS DateTime), N'普通', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10011, CAST(N'2024-10-02' AS Date), 300, 555, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'非常不開心', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10011, CAST(N'2024-10-03' AS Date), 400, 655, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'非常開心', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10011, CAST(N'2024-10-04' AS Date), 500, 755, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'非常不開心', 2, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10011, CAST(N'2024-10-05' AS Date), 500, 300, CAST(N'2024-10-05T19:45:00.000' AS DateTime), N'普通', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10012, CAST(N'2024-10-02' AS Date), 200, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'非常開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10012, CAST(N'2024-10-03' AS Date), 300, 100, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'普通', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10012, CAST(N'2024-10-04' AS Date), 400, 200, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'非常開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10012, CAST(N'2024-10-05' AS Date), 2200, 5200, CAST(N'2024-10-05T20:00:00.000' AS DateTime), N'普通', 2, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10013, CAST(N'2024-10-02' AS Date), 2000, 5000, CAST(N'1900-01-01T00:00:00.000' AS DateTime), N'不開心', 2, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10013, CAST(N'2024-10-03' AS Date), 2100, 5100, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不開心', 2, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10013, CAST(N'2024-10-04' AS Date), 2200, 5200, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'不開心', 2, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10013, CAST(N'2024-10-05' AS Date), 3300, 5300, CAST(N'2024-10-05T21:15:00.000' AS DateTime), N'普通', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10014, CAST(N'2024-10-05' AS Date), 2300, 1950, CAST(N'2024-10-05T22:30:00.000' AS DateTime), N'不開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10015, CAST(N'2024-10-02' AS Date), 3000, 5000, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'普通', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10015, CAST(N'2024-10-03' AS Date), 3100, 5100, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'普通', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10015, CAST(N'2024-10-04' AS Date), 3200, 5200, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10015, CAST(N'2024-10-05' AS Date), 5300, 1923, CAST(N'2024-10-05T23:45:00.000' AS DateTime), N'非常不開心', 1, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10016, CAST(N'2024-10-02' AS Date), 2000, 1750, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'不開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10016, CAST(N'2024-10-03' AS Date), 2100, 1850, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10016, CAST(N'2024-10-04' AS Date), 2200, 1950, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'不開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10016, CAST(N'2024-10-05' AS Date), 1700, 2935, CAST(N'2024-10-05T07:30:00.000' AS DateTime), N'普通', 0, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10017, CAST(N'2024-10-02' AS Date), 5000, 1723, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'不開心', 1, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10017, CAST(N'2024-10-03' AS Date), 5100, 1823, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'非常不開心', 1, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10017, CAST(N'2024-10-04' AS Date), 5200, 1923, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'不開心', 1, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10017, CAST(N'2024-10-05' AS Date), 2000, 8951, CAST(N'2024-10-05T06:15:00.000' AS DateTime), N'非常不開心', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10018, CAST(N'2024-10-02' AS Date), 1500, 2735, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'普通', 0, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10018, CAST(N'2024-10-03' AS Date), 1600, 2835, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'普通', 0, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10018, CAST(N'2024-10-04' AS Date), 1700, 2935, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 0, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10018, CAST(N'2024-10-05' AS Date), 3100, 2963, CAST(N'2024-10-05T05:00:00.000' AS DateTime), N'普通', 8, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10019, CAST(N'2024-10-05' AS Date), 3400, 5200, CAST(N'2024-10-05T04:45:00.000' AS DateTime), N'不透露', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10020, CAST(N'2024-10-02' AS Date), 1700, 8751, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'非常開心', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10020, CAST(N'2024-10-03' AS Date), 1800, 8851, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'非常不開心', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10020, CAST(N'2024-10-04' AS Date), 1900, 8951, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'非常不開心', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10020, CAST(N'2024-10-05' AS Date), 2800, 3985, CAST(N'2024-10-05T03:30:00.000' AS DateTime), N'不透露', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10021, CAST(N'2024-10-02' AS Date), 2800, 2763, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'非常開心', 8, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10021, CAST(N'2024-10-03' AS Date), 2900, 2863, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不開心', 8, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10021, CAST(N'2024-10-04' AS Date), 3000, 2963, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'普通', 8, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-02' AS Date), 1350, 5800, CAST(N'2024-09-02T21:30:00.000' AS DateTime), N'非常開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-03' AS Date), 1550, 6100, CAST(N'2024-09-03T22:00:00.000' AS DateTime), N'普通', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-04' AS Date), 1800, 6200, CAST(N'2024-09-04T21:45:00.000' AS DateTime), N'開心', 4, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-05' AS Date), 1650, 6400, CAST(N'2024-09-05T22:30:00.000' AS DateTime), N'開心', 5, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-06' AS Date), 2000, 6550, CAST(N'2024-09-06T23:15:00.000' AS DateTime), N'非常開心', 6, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-07' AS Date), 1850, 6700, CAST(N'2024-09-07T23:45:00.000' AS DateTime), N'普通', 7, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-08' AS Date), 2100, 6800, CAST(N'2024-09-08T23:30:00.000' AS DateTime), N'開心', 2, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10022, CAST(N'2024-09-09' AS Date), 1950, 6900, CAST(N'2024-09-09T23:50:00.000' AS DateTime), N'開心', 9, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10023, CAST(N'2024-10-02' AS Date), 3200, 5000, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'不透露', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10023, CAST(N'2024-10-03' AS Date), 3300, 5100, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不透露', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10023, CAST(N'2024-10-04' AS Date), 3400, 5200, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'不透露', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10024, CAST(N'2024-09-09' AS Date), 2100, 7000, CAST(N'2024-09-09T23:55:00.000' AS DateTime), N'普通', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10024, CAST(N'2024-09-10' AS Date), 1950, 6850, CAST(N'2024-09-10T22:10:00.000' AS DateTime), N'開心', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10024, CAST(N'2024-10-02' AS Date), 2500, 3785, CAST(N'2024-10-02T00:00:00.000' AS DateTime), N'不透露', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10024, CAST(N'2024-10-03' AS Date), 2600, 3885, CAST(N'2024-10-03T00:00:00.000' AS DateTime), N'不透露', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10024, CAST(N'2024-10-04' AS Date), 2700, 3985, CAST(N'2024-10-04T00:00:00.000' AS DateTime), N'不透露', 3, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-22' AS Date), 1630, 4209, CAST(N'2024-10-22T18:54:00.000' AS DateTime), N'不開心', 4, 3)
GO
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-23' AS Date), 5652, 3900, CAST(N'2024-10-23T13:36:00.000' AS DateTime), N'普通', 2, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-24' AS Date), 4692, 4877, CAST(N'2024-10-24T03:40:00.000' AS DateTime), N'開心', 5, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-25' AS Date), 923, 5426, CAST(N'2024-10-25T21:02:00.000' AS DateTime), N'不開心', 3, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-26' AS Date), 5030, 1969, CAST(N'2024-10-26T15:51:00.000' AS DateTime), N'開心', 2, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-27' AS Date), 5029, 7005, CAST(N'2024-10-27T03:30:00.000' AS DateTime), N'普通', 6, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-28' AS Date), 2146, 6864, CAST(N'2024-10-28T07:13:00.000' AS DateTime), N'不透露', 5, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-29' AS Date), 4573, 4456, CAST(N'2024-10-29T03:00:00.000' AS DateTime), N'開心', 2, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-30' AS Date), 5877, 5388, CAST(N'2024-10-30T04:55:00.000' AS DateTime), N'非常開心', 9, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-10-31' AS Date), 7234, 2032, CAST(N'2024-10-31T05:30:00.000' AS DateTime), N'開心', 6, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-01' AS Date), 1067, 3597, CAST(N'2024-11-01T23:38:00.000' AS DateTime), N'不開心', 10, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-02' AS Date), 2680, 4177, CAST(N'2024-11-02T08:35:00.000' AS DateTime), N'開心', 2, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-03' AS Date), 3368, 1372, CAST(N'2024-11-03T23:08:00.000' AS DateTime), N'普通', 6, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-04' AS Date), 1020, 6129, CAST(N'2024-11-04T18:52:00.000' AS DateTime), N'普通', 10, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-05' AS Date), 6417, 5749, CAST(N'2024-11-05T09:38:00.000' AS DateTime), N'不透露', 3, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-06' AS Date), 237, 2127, CAST(N'2024-11-06T02:40:00.000' AS DateTime), N'開心', 7, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-07' AS Date), 1092, 8850, CAST(N'2024-11-07T21:41:00.000' AS DateTime), N'開心', 4, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-08' AS Date), 5008, 3857, CAST(N'2024-11-08T12:53:00.000' AS DateTime), N'非常開心', 5, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-09' AS Date), 4260, 4549, CAST(N'2024-11-09T18:47:00.000' AS DateTime), N'開心', 6, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-10' AS Date), 963, 7998, CAST(N'2024-11-10T20:42:00.000' AS DateTime), N'普通', 1, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-11' AS Date), 3949, 7421, CAST(N'2024-11-11T14:21:00.000' AS DateTime), N'不透露', 9, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-12' AS Date), 1095, 6527, CAST(N'2024-11-12T17:16:00.000' AS DateTime), N'不透露', 7, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-13' AS Date), 2709, 1658, CAST(N'2024-11-13T09:14:00.000' AS DateTime), N'不開心', 9, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-14' AS Date), 4567, 1152, CAST(N'2024-11-14T05:55:00.000' AS DateTime), N'不透露', 5, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-15' AS Date), 6587, 8549, CAST(N'2024-11-15T09:44:00.000' AS DateTime), N'非常開心', 7, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-16' AS Date), 6520, 2855, CAST(N'2024-11-16T09:37:00.000' AS DateTime), N'不開心', 2, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-17' AS Date), 3630, 8918, CAST(N'2024-11-17T21:22:00.000' AS DateTime), N'非常開心', 7, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-18' AS Date), 3819, 5992, CAST(N'2024-11-18T01:44:00.000' AS DateTime), N'普通', 5, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-19' AS Date), 3788, 3336, CAST(N'2024-11-19T05:11:00.000' AS DateTime), N'開心', 2, 10)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-20' AS Date), 3208, 3944, CAST(N'2024-11-20T04:39:00.000' AS DateTime), N'非常開心', 9, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-21' AS Date), 3303, 6180, CAST(N'2024-11-21T16:03:00.000' AS DateTime), N'開心', 2, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-22' AS Date), 6616, 824, CAST(N'2024-11-22T17:52:00.000' AS DateTime), N'不透露', 3, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-23' AS Date), 1884, 4370, CAST(N'2024-11-23T15:55:00.000' AS DateTime), N'開心', 8, 10)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-24' AS Date), 234, 7541, CAST(N'2024-11-24T14:25:00.000' AS DateTime), N'普通', 4, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-25' AS Date), 3532, 8576, CAST(N'2024-11-25T21:13:00.000' AS DateTime), N'開心', 1, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-26' AS Date), 3269, 7043, CAST(N'2024-11-26T14:34:00.000' AS DateTime), N'開心', 8, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-27' AS Date), 6102, 5556, CAST(N'2024-11-27T11:56:00.000' AS DateTime), N'開心', 5, 10)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-28' AS Date), 4477, 5228, CAST(N'2024-11-28T01:44:00.000' AS DateTime), N'有點不開心', 5, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-29' AS Date), 3685, 4639, CAST(N'2024-11-29T16:26:00.000' AS DateTime), N'不開心', 9, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10026, CAST(N'2024-11-30' AS Date), 5992, 5031, CAST(N'2024-11-30T14:12:00.000' AS DateTime), N'普通', 1, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-17' AS Date), 5039, 7025, CAST(N'2023-08-17T03:01:30.000' AS DateTime), N'普通', 7, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-18' AS Date), 5049, 7045, CAST(N'2023-08-18T03:31:30.000' AS DateTime), N'不透露', 8, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-19' AS Date), 5059, 7065, CAST(N'2023-08-19T04:01:30.000' AS DateTime), N'開心', 9, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-20' AS Date), 5069, 7085, CAST(N'2023-08-20T04:31:30.000' AS DateTime), N'非常開心', 0, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-21' AS Date), 5079, 7105, CAST(N'2023-08-21T05:01:30.000' AS DateTime), N'開心', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-22' AS Date), 5089, 7125, CAST(N'2023-08-22T05:31:30.000' AS DateTime), N'不開心', 2, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-23' AS Date), 5099, 7145, CAST(N'2023-08-23T06:01:30.000' AS DateTime), N'開心', 3, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-24' AS Date), 5109, 7165, CAST(N'2023-08-24T06:31:30.000' AS DateTime), N'普通', 4, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-25' AS Date), 5119, 7185, CAST(N'2023-08-25T07:01:30.000' AS DateTime), N'普通', 5, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10027, CAST(N'2023-08-26' AS Date), 5129, 7205, CAST(N'2023-08-26T07:31:30.000' AS DateTime), N'不透露', 6, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-13' AS Date), 5039, 7025, CAST(N'2024-09-13T03:01:30.000' AS DateTime), N'普通', 7, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-14' AS Date), 5049, 7045, CAST(N'2024-09-14T03:31:30.000' AS DateTime), N'不透露', 8, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-15' AS Date), 5059, 7065, CAST(N'2024-09-15T04:01:30.000' AS DateTime), N'開心', 9, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-16' AS Date), 5069, 7085, CAST(N'2024-09-16T04:31:30.000' AS DateTime), N'非常開心', 0, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-17' AS Date), 5079, 7105, CAST(N'2024-09-17T05:01:30.000' AS DateTime), N'開心', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-18' AS Date), 5089, 7125, CAST(N'2024-09-18T05:31:30.000' AS DateTime), N'不開心', 2, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-19' AS Date), 5099, 7145, CAST(N'2024-09-19T06:01:30.000' AS DateTime), N'開心', 3, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-20' AS Date), 5109, 7165, CAST(N'2024-09-20T06:31:30.000' AS DateTime), N'普通', 4, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-21' AS Date), 5119, 7185, CAST(N'2024-09-21T07:01:30.000' AS DateTime), N'普通', 5, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10028, CAST(N'2024-09-22' AS Date), 5129, 7205, CAST(N'2024-09-22T07:31:30.000' AS DateTime), N'不透露', 6, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-11-25' AS Date), 5039, 7025, CAST(N'2022-11-25T01:16:30.000' AS DateTime), N'開心', 8, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-11-26' AS Date), 5049, 7045, CAST(N'2022-11-26T04:09:30.000' AS DateTime), N'不透露', 9, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-11-27' AS Date), 5059, 7065, CAST(N'2022-11-27T03:36:30.000' AS DateTime), N'不透露', 0, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-11-28' AS Date), 5069, 7085, CAST(N'2022-11-28T04:56:30.000' AS DateTime), N'普通', 0, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-11-29' AS Date), 5079, 7105, CAST(N'2022-11-29T03:08:30.000' AS DateTime), N'不開心', 1, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-11-30' AS Date), 5089, 7125, CAST(N'2022-11-30T05:09:30.000' AS DateTime), N'普通', 3, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-12-01' AS Date), 5099, 7145, CAST(N'2022-12-01T04:13:30.000' AS DateTime), N'普通', 4, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-12-02' AS Date), 5109, 7165, CAST(N'2022-12-02T06:55:30.000' AS DateTime), N'開心', 4, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-12-03' AS Date), 5119, 7185, CAST(N'2022-12-03T08:20:30.000' AS DateTime), N'開心', 4, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10029, CAST(N'2022-12-04' AS Date), 5129, 7205, CAST(N'2022-12-04T09:19:30.000' AS DateTime), N'不透露', 7, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-11-25' AS Date), 5039, 7025, CAST(N'2022-11-25T03:20:30.000' AS DateTime), N'開心', 7, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-11-26' AS Date), 5049, 7045, CAST(N'2022-11-26T01:47:30.000' AS DateTime), N'不開心', 9, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-11-27' AS Date), 5059, 7065, CAST(N'2022-11-27T02:34:30.000' AS DateTime), N'非常開心', 0, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-11-28' AS Date), 5069, 7085, CAST(N'2022-11-28T06:09:30.000' AS DateTime), N'不開心', 0, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-11-29' AS Date), 5079, 7105, CAST(N'2022-11-29T04:28:30.000' AS DateTime), N'開心', 0, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-11-30' AS Date), 5089, 7125, CAST(N'2022-11-30T05:56:30.000' AS DateTime), N'普通', 2, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-12-01' AS Date), 5099, 7145, CAST(N'2022-12-01T05:56:30.000' AS DateTime), N'不開心', 5, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-12-02' AS Date), 5109, 7165, CAST(N'2022-12-02T05:31:30.000' AS DateTime), N'不透露', 4, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-12-03' AS Date), 5119, 7185, CAST(N'2022-12-03T07:27:30.000' AS DateTime), N'普通', 5, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10030, CAST(N'2022-12-04' AS Date), 5129, 7205, CAST(N'2022-12-04T06:15:30.000' AS DateTime), N'非常開心', 7, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-01' AS Date), 5002, 6943, CAST(N'2022-03-01T02:23:30.000' AS DateTime), N'不開心', 8, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-02' AS Date), 4720, 6391, CAST(N'2022-03-02T03:11:30.000' AS DateTime), N'普通', 7, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-03' AS Date), 5163, 6169, CAST(N'2022-03-03T05:21:30.000' AS DateTime), N'不開心', 8, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-04' AS Date), 4867, 7506, CAST(N'2022-03-04T06:23:30.000' AS DateTime), N'普通', 2, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-05' AS Date), 5089, 6803, CAST(N'2022-03-05T04:39:30.000' AS DateTime), N'不透露', 1, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-06' AS Date), 5367, 7008, CAST(N'2022-03-06T04:41:30.000' AS DateTime), N'普通', 8, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-07' AS Date), 5045, 7641, CAST(N'2022-03-07T05:59:30.000' AS DateTime), N'開心', 5, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-08' AS Date), 5095, 6734, CAST(N'2022-03-08T07:26:30.000' AS DateTime), N'開心', 4, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-09' AS Date), 5295, 7012, CAST(N'2022-03-09T08:18:30.000' AS DateTime), N'開心', 4, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10031, CAST(N'2022-03-10' AS Date), 4992, 6829, CAST(N'2022-03-10T06:22:30.000' AS DateTime), N'不透露', 7, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-15' AS Date), 4976, 6647, CAST(N'2021-06-15T04:00:30.000' AS DateTime), N'不透露', 7, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-16' AS Date), 4553, 6445, CAST(N'2021-06-16T03:26:30.000' AS DateTime), N'普通', 7, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-17' AS Date), 4994, 5888, CAST(N'2021-06-17T05:51:30.000' AS DateTime), N'開心', 8, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-18' AS Date), 4863, 7726, CAST(N'2021-06-18T06:10:30.000' AS DateTime), N'普通', 2, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-19' AS Date), 5012, 6804, CAST(N'2021-06-19T06:25:30.000' AS DateTime), N'不開心', 1, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-20' AS Date), 5288, 7183, CAST(N'2021-06-20T06:29:30.000' AS DateTime), N'普通', 6, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-21' AS Date), 5223, 7662, CAST(N'2021-06-21T04:49:30.000' AS DateTime), N'不透露', 4, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-22' AS Date), 4994, 7001, CAST(N'2021-06-22T06:56:30.000' AS DateTime), N'不透露', 3, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-23' AS Date), 5443, 6718, CAST(N'2021-06-23T08:01:30.000' AS DateTime), N'不開心', 6, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10032, CAST(N'2021-06-24' AS Date), 5118, 6786, CAST(N'2021-06-24T09:01:30.000' AS DateTime), N'非常開心', 8, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-24' AS Date), 4967, 7296, CAST(N'2020-12-24T02:37:30.000' AS DateTime), N'非常開心', 7, 6)
GO
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-25' AS Date), 4772, 6292, CAST(N'2020-12-25T04:13:30.000' AS DateTime), N'開心', 5, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-26' AS Date), 5080, 6485, CAST(N'2020-12-26T04:40:30.000' AS DateTime), N'不開心', 9, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-27' AS Date), 4890, 7712, CAST(N'2020-12-27T03:49:30.000' AS DateTime), N'不開心', 2, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-28' AS Date), 5221, 7210, CAST(N'2020-12-28T06:48:30.000' AS DateTime), N'普通', 3, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-29' AS Date), 5342, 7188, CAST(N'2020-12-29T06:20:30.000' AS DateTime), N'開心', 7, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-30' AS Date), 5032, 8006, CAST(N'2020-12-30T06:29:30.000' AS DateTime), N'不開心', 7, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2020-12-31' AS Date), 5061, 7211, CAST(N'2020-12-31T06:54:30.000' AS DateTime), N'開心', 4, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2021-01-01' AS Date), 5273, 6842, CAST(N'2021-01-01T05:41:30.000' AS DateTime), N'開心', 4, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10033, CAST(N'2021-01-02' AS Date), 4793, 6694, CAST(N'2021-01-02T06:40:30.000' AS DateTime), N'開心', 9, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-09' AS Date), 4924, 6862, CAST(N'2023-04-09T03:32:30.000' AS DateTime), N'不開心', 9, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-10' AS Date), 4632, 6131, CAST(N'2023-04-10T02:49:30.000' AS DateTime), N'普通', 5, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-11' AS Date), 4964, 5912, CAST(N'2023-04-11T05:54:30.000' AS DateTime), N'不開心', 9, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-12' AS Date), 4966, 7418, CAST(N'2023-04-12T03:40:30.000' AS DateTime), N'開心', 3, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-13' AS Date), 4988, 7117, CAST(N'2023-04-13T04:27:30.000' AS DateTime), N'開心', 2, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-14' AS Date), 5230, 6961, CAST(N'2023-04-14T05:33:30.000' AS DateTime), N'普通', 6, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-15' AS Date), 5005, 7277, CAST(N'2023-04-15T07:36:30.000' AS DateTime), N'不開心', 7, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-16' AS Date), 5112, 6527, CAST(N'2023-04-16T05:13:30.000' AS DateTime), N'不透露', 4, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-17' AS Date), 5460, 7093, CAST(N'2023-04-17T08:49:30.000' AS DateTime), N'非常開心', 4, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10034, CAST(N'2023-04-18' AS Date), 5084, 7040, CAST(N'2023-04-18T08:31:30.000' AS DateTime), N'不開心', 9, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-05' AS Date), 5026, 7362, CAST(N'2022-10-05T03:36:30.000' AS DateTime), N'不透露', 6, 4)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-06' AS Date), 4713, 6631, CAST(N'2022-10-06T04:52:30.000' AS DateTime), N'普通', 8, 6)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-07' AS Date), 4980, 5982, CAST(N'2022-10-07T05:25:30.000' AS DateTime), N'普通', 0, 8)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-08' AS Date), 5019, 7270, CAST(N'2022-10-08T06:08:30.000' AS DateTime), N'不開心', 3, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-09' AS Date), 5118, 6730, CAST(N'2022-10-09T04:58:30.000' AS DateTime), N'不透露', 1, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-10' AS Date), 5185, 6912, CAST(N'2022-10-10T03:49:30.000' AS DateTime), N'普通', 0, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-11' AS Date), 4856, 7787, CAST(N'2022-10-11T07:05:30.000' AS DateTime), N'開心', 7, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-12' AS Date), 5249, 7012, CAST(N'2022-10-12T05:35:30.000' AS DateTime), N'開心', 4, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-13' AS Date), 5244, 6584, CAST(N'2022-10-13T05:57:30.000' AS DateTime), N'不開心', 3, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10035, CAST(N'2022-10-14' AS Date), 5041, 6492, CAST(N'2022-10-14T07:29:30.000' AS DateTime), N'開心', 0, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10036, CAST(N'2024-10-22' AS Date), 0, 11, CAST(N'2024-10-22T20:36:00.000' AS DateTime), N'不開心', 10, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10036, CAST(N'2024-10-25' AS Date), 4521, 8004, CAST(N'2024-10-25T09:17:00.000' AS DateTime), N'普通', 0, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10036, CAST(N'2024-10-29' AS Date), 13000, 0, CAST(N'2024-10-29T16:46:00.000' AS DateTime), N'不透露', 0, 10)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (10036, CAST(N'2024-11-02' AS Date), 0, 0, CAST(N'2001-08-13T00:00:00.000' AS DateTime), N'不透露', 0, 0)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-22' AS Date), 5082, 7242, CAST(N'2024-10-22T23:23:41.000' AS DateTime), N'開心', 6, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-23' AS Date), 4824, 6713, CAST(N'2024-10-23T22:35:41.000' AS DateTime), N'不開心', 7, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-24' AS Date), 5126, 5787, CAST(N'2024-10-25T00:23:41.000' AS DateTime), N'開心', 7, 5)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-25' AS Date), 4818, 7773, CAST(N'2024-10-26T01:53:41.000' AS DateTime), N'開心', 1, 9)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-26' AS Date), 5108, 6613, CAST(N'2024-10-27T00:23:41.000' AS DateTime), N'開心', 1, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-27' AS Date), 5262, 7435, CAST(N'2024-10-28T01:53:41.000' AS DateTime), N'非常開心', 6, 7)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-28' AS Date), 4945, 7761, CAST(N'2024-10-29T01:26:41.000' AS DateTime), N'不開心', 5, 2)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-29' AS Date), 5252, 6307, CAST(N'2024-10-30T02:47:41.000' AS DateTime), N'普通', 3, 1)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-30' AS Date), 5192, 7314, CAST(N'2024-10-31T03:18:41.000' AS DateTime), N'普通', 3, 3)
INSERT [dbo].[DailyHealthRecord] ([C_ID], [HRecordDate], [Water], [Steps], [Sleep], [Mood], [Vegetables], [Snacks]) VALUES (11030, CAST(N'2024-10-31' AS Date), 5158, 6541, CAST(N'2024-11-01T01:27:41.000' AS DateTime), N'普通', 5, 3)
GO
SET IDENTITY_INSERT [dbo].[DailyTask] ON 

INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (1, N'每天攝取30克膳食纖維', 15, 0, N'未通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (2, N'每周吃兩次魚', 5, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (3, N'限制糖分攝取', 15, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (4, N'進行10分鐘伸展運動', 30, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (5, N'每周進行兩次重量訓練', 25, 0, N'未通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (6, N'保持良好的坐姿', 10, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (7, N'早睡早起', 15, 0, N'未通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (8, N'保證7-8小時睡眠', 10, 0, N'未通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (9, N'學習一個新的知識點', 15, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (10, N'保持樂觀的心態', 15, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (11, N'與朋友家人互動', 5, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (12, N'培養一個新的興趣', 20, 0, N'未通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (13, N'記錄一件感恩的事情', 30, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (14, N'10分鐘不使用手機', 25, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (15, N'保持室內空氣流通', 15, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (16, N'開合跳15下', 5, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (17, N'喝一杯水', 15, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (18, N'空中腳踏車3分鐘', 5, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (19, N'抬腿5分鐘', 10, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (20, N'空氣椅1分鐘', 15, 1, N'通過')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (21, N'手機', 15, 0, N'待複核')
INSERT [dbo].[DailyTask] ([TaskID], [TaskName], [Reward], [TaskActive], [T_ReviewStatus]) VALUES (22, N'跳繩1分鐘', 20, 0, N'待複核')
SET IDENTITY_INSERT [dbo].[DailyTask] OFF
GO
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10009, CAST(N'2024-08-15' AS Date), N'限制糖分攝取', 0, N'進行10分鐘伸展運動', 1, N'保持良好的坐姿', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10009, CAST(N'2024-08-16' AS Date), N'空氣椅1分鐘', 1, N'10分鐘不使用手機', 0, N'空中腳踏車3分鐘', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10009, CAST(N'2024-08-17' AS Date), N'空中腳踏車3分鐘', 0, N'抬腿5分鐘', 0, N'學習一個新的知識點', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10009, CAST(N'2024-08-18' AS Date), N'記錄一件感恩的事情', 1, N'喝一杯水', 0, N'空氣椅1分鐘', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10009, CAST(N'2024-08-19' AS Date), N'抬腿5分鐘', 0, N'學習一個新的知識點', 1, N'10分鐘不使用手機', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10009, CAST(N'2024-08-20' AS Date), N'抬腿5分鐘', 0, N'開合跳15下', 1, N'喝一杯水', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-02' AS Date), N'10分鐘不使用手機', 1, N'空氣椅1分鐘', 1, N'抬腿5分鐘', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-03' AS Date), N'空氣椅1分鐘', 0, N'學習一個新的知識點', 1, N'10分鐘不使用手機', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-04' AS Date), N'記錄一件感恩的事情', 0, N'抬腿5分鐘', 0, N'喝一杯水', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-05' AS Date), N'喝一杯水', 0, N'空氣椅1分鐘', 0, N'10分鐘不使用手機', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-06' AS Date), N'學習一個新的知識點', 1, N'空中腳踏車3分鐘', 0, N'記錄一件感恩的事情', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-07' AS Date), N'開合跳15下', 1, N'10分鐘不使用手機', 1, N'喝一杯水', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-08' AS Date), N'開合跳15下', 1, N'抬腿5分鐘', 0, N'記錄一件感恩的事情', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10022, CAST(N'2024-09-09' AS Date), N'空中腳踏車3分鐘', 0, N'空氣椅1分鐘', 0, N'抬腿5分鐘', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10024, CAST(N'2024-09-09' AS Date), N'10分鐘不使用手機', 0, N'喝一杯水', 0, N'空氣椅1分鐘', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10024, CAST(N'2024-09-10' AS Date), N'喝一杯水', 0, N'抬腿5分鐘', 1, N'開合跳15下', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10028, CAST(N'2024-10-23' AS Date), N'限制糖分攝取', 0, N'空中腳踏車3分鐘', 0, N'保持樂觀的心態', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10029, CAST(N'2024-10-29' AS Date), N'學習一個新的知識點', 1, N'開合跳15下', 1, N'空中腳踏車3分鐘', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10029, CAST(N'2024-10-30' AS Date), N'學習一個新的知識點', 1, N'進行10分鐘伸展運動', 1, N'抬腿5分鐘', 1)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10029, CAST(N'2024-10-31' AS Date), N'學習一個新的知識點', 0, N'抬腿5分鐘', 0, N'限制糖分攝取', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10029, CAST(N'2024-11-01' AS Date), N'限制糖分攝取', 0, N'保持室內空氣流通', 0, N'與朋友家人互動', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10029, CAST(N'2024-11-02' AS Date), N'空中腳踏車3分鐘', 0, N'限制糖分攝取', 0, N'10分鐘不使用手機', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (10029, CAST(N'2024-11-03' AS Date), N'空中腳踏車3分鐘', 0, N'記錄一件感恩的事情', 0, N'與朋友家人互動', 0)
INSERT [dbo].[DailyTaskRecord] ([C_ID], [TRecordDate], [T1Name], [T1Completed], [T2Name], [T2Completed], [T3Name], [T3Completed]) VALUES (11031, CAST(N'2024-11-03' AS Date), N'保持樂觀的心態', 0, N'與朋友家人互動', 0, N'限制糖分攝取', 0)
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (1, N'uo12354@gmail.com', N'網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢', CAST(N'2024-09-06T16:50:29.000' AS DateTime), 1, CAST(N'2024-10-18T14:03:40.670' AS DateTime), N'48945')
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (2, N'user2@example.com', N'功能A有bug', CAST(N'2024-09-06T16:50:29.857' AS DateTime), 1, CAST(N'2024-09-13T16:50:29.857' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (3, N'user3@example.com', N'介面設計不直覺', CAST(N'2024-09-06T16:50:29.000' AS DateTime), 1, CAST(N'2024-10-18T14:05:05.197' AS DateTime), N'000')
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (4, N'user4@example.com', N'希望增加X功能', CAST(N'2024-09-06T16:50:29.857' AS DateTime), 1, CAST(N'2024-09-09T16:50:29.857' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (5, N'user5@example.com', N'系統常常當機', CAST(N'2024-09-06T16:50:29.000' AS DateTime), 1, CAST(N'2024-10-18T14:07:32.063' AS DateTime), N'9/6/')
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (6, N'user6@example.com', N'建議優化Y流程', CAST(N'2024-09-06T16:50:29.857' AS DateTime), 1, CAST(N'2024-09-11T16:50:29.857' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (7, N'user7@example.com', N'資料庫查詢速度慢', CAST(N'2024-09-06T16:50:29.857' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (8, N'user8@example.com', N'希望增加Z功能', CAST(N'2024-09-06T16:50:29.857' AS DateTime), 1, CAST(N'2024-09-08T16:50:29.857' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (9, N'user9@example.com', N'介面美觀度不足', CAST(N'2024-09-06T16:50:29.857' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (10, N'user10@example.com', N'系統穩定性有待加強', CAST(N'2024-09-06T16:50:29.857' AS DateTime), 1, CAST(N'2024-09-10T16:50:29.857' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (11, N'user1@example.com', N'網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢 網站速度很慢', CAST(N'2024-09-09T16:28:55.967' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (12, N'user2@example.com', N'功能A有bug', CAST(N'2024-08-02T00:00:00.000' AS DateTime), 1, CAST(N'2024-08-07T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (13, N'user3@example.com', N'介面設計不直覺', CAST(N'2024-08-05T00:00:00.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (14, N'user4@example.com', N'希望增加X功能', CAST(N'2024-08-10T00:00:00.000' AS DateTime), 1, CAST(N'2024-08-15T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (15, N'user5@example.com', N'系統常常當機', CAST(N'2024-08-17T00:00:00.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (16, N'user6@example.com', N'建議優化Y流程', CAST(N'2024-08-31T00:00:00.000' AS DateTime), 1, CAST(N'2024-09-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (17, N'user7@example.com', N'資料庫查詢速度慢', CAST(N'2024-09-01T00:00:00.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (18, N'user8@example.com', N'希望增加Z功能', CAST(N'2024-09-01T00:00:00.000' AS DateTime), 1, CAST(N'2024-09-05T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (19, N'user9@example.com', N'介面美觀度不足', CAST(N'2024-09-02T00:00:00.000' AS DateTime), 1, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (20, N'user10@example.com', N'系統穩定性有待加強', CAST(N'2024-09-03T00:00:00.000' AS DateTime), 1, CAST(N'2024-09-08T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (21, N'uo12354@gmail.com', N'5656', CAST(N'2024-10-18T14:34:29.000' AS DateTime), 1, CAST(N'2024-10-18T14:35:57.107' AS DateTime), N'5678')
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (22, N'uo12354@gmail.com', N'155482343', CAST(N'2024-10-18T14:36:28.087' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (23, N'uo12354@gmail.com', N'155482343', CAST(N'2024-10-18T14:36:31.523' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (24, N'uo12354@gmail.com', N'155482343', CAST(N'2024-10-18T14:36:33.207' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (25, N'uo12354@gmail.com', N'155482343', CAST(N'2024-10-18T14:37:01.133' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (26, N'uo12354@gmail.com', N'155482343', CAST(N'2024-10-18T14:37:02.787' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (27, N'uo12354@gmail.com', N'155482343', CAST(N'2024-10-18T14:37:04.037' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[Feedback] ([FeedbackNO], [Email], [Content], [Submitted], [Pro_Active], [Pro_Date], [Pro_Content]) VALUES (28, N'uo12354@gmail.com', N'155482343', CAST(N'2024-10-18T14:37:05.307' AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
INSERT [dbo].[PasswordResetRequests] ([Id], [Email], [Token], [CreatedAt]) VALUES (N'5c543546-e394-4155-9af8-fae81c20beea', N'oez666oez@gmail.com', N'Q2ZESjhHSWF0QmRQVGlSRWp0Y2w4bXBMcVFMTVRLSmFkTHpuc0xtNjhHdXFNN0xiaFJjaGFEanFsS3FVS0JtQ2hmcnNBR3FFNUg4czRLUDNIVWpJRlZNNWM4L1IyMVJkWTZlSGJGMnVtUThNYXgvcUlLbndPbVFVTlVsRFdQUXBmNjJkbWxKN1hDWUtMdjVhaUhBM3YzNXJDc0ZyMkdaSmpMZGFYaGF6Q1hWUTFSQTc3MTJWK0xzaW93alVoRUxxQ3JGaUZWc1NmYVRmZkt5d1JtWTVVaUpucWlaZktrVWtuK0kxTXVQbUFaSGtnNXJi', CAST(N'2024-10-05T02:23:27.107' AS DateTime))
INSERT [dbo].[PasswordResetRequests] ([Id], [Email], [Token], [CreatedAt]) VALUES (N'61dfd11d-f69a-4cf6-bed0-81c3470a9c1a', N'uo12354@gmail.com', N'Q2ZESjhNd2R2S3lHSnAxQnMvdHhrUENJeGcyQUJySjZpSG1sZVRjbVFQU2licEwyMDhrTEVHMTRNQWo3VlNjdmRVcG51N21nR1RHRDF2L2U0ZjdVMDMwSnFYblF3a2FoMDdXdVlaNmJRS0ZsdFM0SnB3NjZ3QkVhRTJjM2VkZEkzSW1xeldXdkNraVdtMHNIWWlrVW5HbzJ0NGthVU51amZnVGNGdWVab2wza2hQSitvaUViRkJBWFNKY29YNnRnaGdEdVRBVWNPVmNJOFVjWk1hemZiUXlETW4rSHE3YkxFT1Z6aGFYZnBjTW9HeWpB', CAST(N'2024-10-14T15:36:04.477' AS DateTime))
INSERT [dbo].[PasswordResetRequests] ([Id], [Email], [Token], [CreatedAt]) VALUES (N'8bae797d-1e17-4c13-a82f-425d52c27047', N'oez666oez@gmail.com', N'Q2ZESjhHSWF0QmRQVGlSRWp0Y2w4bXBMcVFLaTl1QmVxVlZmVk1JdnJDN1dxTjZoYzhZck1RSVpuYXd0TTNsc0pHMkZSeTNmUUxTTmI0UlA3M0g2MzUzZ25GWmlCTGt5aCtpK2hVd3dyN1ZndDBQOGh3dENqOVJDWHdrMDcrckMzWm14Qy9Wa1NZbmlXdEJ3Y3pSTHI4cTQzdTIrREhENEhzS0plSExJNTVNWU5JYkp3c2lGejVTRFVURVFBV0RjOWVvNVBxbFcwcXpkOEl0bHk0Y1JGNmk0em5FRlR4c01yZnRzeGQrTDNmb2lXNGdI', CAST(N'2024-10-05T15:55:28.410' AS DateTime))
INSERT [dbo].[PasswordResetRequests] ([Id], [Email], [Token], [CreatedAt]) VALUES (N'9934fe98-4162-48ae-acc8-eec04124c9b9', N'oez666oez@gmail.com', N'Q2ZESjhHSWF0QmRQVGlSRWp0Y2w4bXBMcVFJeDQ3NmhTT3lXcTZHT25NNDhoYVhrb3BHKzZ5c3dBTUJkaDVUT2IyNGZENmpEVWxBRkJtY2VJWFowYnA1dEtFUU4zaGJyTzlwaVVHZnh4LytReGZQdGFhOEhyUDhINmJ4VzkyZkF4a1VndVgxdHlCRldjZ0lSZTlkdEE4VXFKUEZEZ1l1TlBhUjRHSWtJMHJtOUV5VmM2M2pXcFM1SXpvVVZzdStFRGdnNHpRU3dIVlJsYzRZd0VEWXJsQXE5aVptQUhMQmZjNUlVSDdoaWJHY0hCTGY4', CAST(N'2024-09-30T02:55:03.850' AS DateTime))
INSERT [dbo].[PasswordResetRequests] ([Id], [Email], [Token], [CreatedAt]) VALUES (N'ba67ac03-f8ec-474f-a5f1-dfa0a8ec9dff', N'oez666oez@gmail.com', N'Q2ZESjhHSWF0QmRQVGlSRWp0Y2w4bXBMcVFKbHBkZXpBR3lHcHJpTGRKblJ1TzB3czk4S1U3YzM2ZnZGZW5NUExkNTNYVHpMNEZFUWZZM25JMEx6TjFDczlOTE5xQ2tycGp6TzdUckNzdHREaWRwZjVDRGRPOWJOSE9jTTZ5c2tnUC91bTEvZTNyS0F3Ylk3THI2U2JmRjJ4bVkvTjU4TnA0MDlSVllzWlF3WjNLOFQ2WmF3ajFCdmpzNVRScUdDenJhVnVXUFJyc2crVlNEa1BuM09rdkNBL1QxMkNybWNTSDVROUVYam1FK0cwSU04', CAST(N'2024-09-30T03:08:14.233' AS DateTime))
INSERT [dbo].[PasswordResetRequests] ([Id], [Email], [Token], [CreatedAt]) VALUES (N'e57cfe50-287c-46b9-923d-dad60aa3b3d6', N'oez666oez@gmail.com', N'Q2ZESjhHSWF0QmRQVGlSRWp0Y2w4bXBMcVFLakJJQXprenNISm8xVUN1c1hRTk4vZVZHZkl5ODJRTnQxeCtGVzJlbFpjblJacXFNVmNuRE9DRHVibVdhMUtzeWUwMFlZYWFqN2s1dzA4OGg1STdiZk03N2xKN3ZaU00yUE5sRGhmQ2w2Wm10TmFWanVYWE5wMEtaejFYakZhalBET2RUNFhoNEdqM0VPQmpWMll1VnZsUnNYWDlrNy9Pd1VsaDJwcE1OU1o0aXhwSG5GOHdpenplWDU0MzNmdlBqbmVoQ2ZYNXk1MFpWL3E0Y2RMUExO', CAST(N'2024-09-30T02:53:50.977' AS DateTime))
GO
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'dragon567', N'dragon567@gmail.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'guardian555', N'guardian555@yahoo.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'hero891', N'hero891@yahoo.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'hunter432', N'hunter432@gmail.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'joker321', N'joker321@outlook.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'knight245', N'knight245@yahoo.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'leo555555', N'uo12354@gmail.com', N'$2a$11$lzOWO0aAnK85bBpYz1Pbt.SDW6WO5775gHcFEIwk9QJnoyke7i29y', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'mystic789', N'mystic789@yahoo.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'ninja321', N'ninja321@gmail.com', N'$2a$11$P.pOthPBuqxxkiTqRaf0POljdpRRKQlR9dJaROcEAKGbyGgDWnAeO', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'oez660oez', N'oez600oez@gmail.com', N'$2a$11$.Lnhu5XCeq06Z3T/BIk9FOv14coZbCm9AqnkCGYVKvgweard2KPw2', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'phoenix763', N'phoenix763@hotmail.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'pirate876', N'pirate876@outlook.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'prince357', N'prince357@outlook.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'ranger987', N'ranger987@gmail.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'rogue654', N'rogue654@gmail.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'samurai678', N'samurai678@yahoo.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'shadow999', N'shadow999@hotmail.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'storm456', N'storm456@live.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'sunny234', N'sunny234@outlook.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'tiger123', N'tiger123@gmail.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'warrior123', N'warrior123@gmail.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
INSERT [dbo].[Player] ([Account], [Email], [Password], [Playerstatus], [token]) VALUES (N'wizard007', N'wizard007@gmail.com', N'$2a$11$TX9pwQkGxLSEkZ2UJtZV5ecJebz/luRA3SR1/3G6fY.4ZiSELw9QG', 1, NULL)
GO
INSERT [dbo].[RoomAccessories] ([C_ID], [Bookcase], [Bed], [Desk], [Chair], [Plant]) VALUES (10009, 1004, 0, 0, 0, 0)
INSERT [dbo].[RoomAccessories] ([C_ID], [Bookcase], [Bed], [Desk], [Chair], [Plant]) VALUES (10022, 1004, 0, 0, 0, 0)
INSERT [dbo].[RoomAccessories] ([C_ID], [Bookcase], [Bed], [Desk], [Chair], [Plant]) VALUES (10024, 1004, 0, 0, 0, 0)
GO
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10009, CAST(N'2024-08-15' AS Date), 1, 1)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10009, CAST(N'2024-08-16' AS Date), 1, 1)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10009, CAST(N'2024-08-17' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10009, CAST(N'2024-08-18' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10009, CAST(N'2024-08-19' AS Date), 0, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10009, CAST(N'2024-08-20' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-02' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-03' AS Date), 0, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-04' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-05' AS Date), 1, 1)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-06' AS Date), 0, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-07' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-08' AS Date), 0, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10022, CAST(N'2024-09-09' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10024, CAST(N'2024-09-09' AS Date), 0, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10024, CAST(N'2024-09-10' AS Date), 1, 0)
INSERT [dbo].[WeeklyHealthRecord] ([C_ID], [WRecordDate], [Exercise], [Cleaning]) VALUES (10029, CAST(N'2024-10-29' AS Date), 1, 0)
GO
INSERT [dbo].[WeightRecord] ([C_ID], [W_RecordDate], [Weight]) VALUES (10029, CAST(N'2024-09-15' AS Date), CAST(60.5 AS Decimal(4, 1)))
INSERT [dbo].[WeightRecord] ([C_ID], [W_RecordDate], [Weight]) VALUES (10029, CAST(N'2024-10-01' AS Date), CAST(50.0 AS Decimal(4, 1)))
GO
ALTER TABLE [dbo].[AccessoriesList] ADD  CONSTRAINT [DF__Accessori__P_Act__5DCAEF64]  DEFAULT ((0)) FOR [P_Active]
GO
ALTER TABLE [dbo].[AccessoriesList] ADD  CONSTRAINT [DF__Accessori__P_Rev__5EBF139D]  DEFAULT ('???') FOR [P_ReviewStatus]
GO
ALTER TABLE [dbo].[Administrator] ADD  DEFAULT ((0)) FOR [M_DailyTask]
GO
ALTER TABLE [dbo].[Administrator] ADD  DEFAULT ((0)) FOR [M_Product]
GO
ALTER TABLE [dbo].[Administrator] ADD  DEFAULT ((0)) FOR [M_Administrator]
GO
ALTER TABLE [dbo].[Character] ADD  DEFAULT ((1)) FOR [Level]
GO
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF__Character__Exper__2180FB33]  DEFAULT ((0)) FOR [Experience]
GO
ALTER TABLE [dbo].[Character] ADD  DEFAULT ('??') FOR [LivingStatus]
GO
ALTER TABLE [dbo].[Character] ADD  DEFAULT (getdate()) FOR [MoveInDate]
GO
ALTER TABLE [dbo].[Character] ADD  DEFAULT ('1900/01/01') FOR [MoveOutDate]
GO
ALTER TABLE [dbo].[CharacterAccessorie] ADD  DEFAULT ((0)) FOR [Head]
GO
ALTER TABLE [dbo].[CharacterAccessorie] ADD  DEFAULT ((0)) FOR [Upper]
GO
ALTER TABLE [dbo].[CharacterAccessorie] ADD  DEFAULT ((0)) FOR [Lower]
GO
ALTER TABLE [dbo].[DailyHealthRecord] ADD  DEFAULT (getdate()) FOR [HRecordDate]
GO
ALTER TABLE [dbo].[DailyTask] ADD  DEFAULT ((0)) FOR [TaskActive]
GO
ALTER TABLE [dbo].[DailyTask] ADD  DEFAULT ('???') FOR [T_ReviewStatus]
GO
ALTER TABLE [dbo].[DailyTaskRecord] ADD  DEFAULT (getdate()) FOR [TRecordDate]
GO
ALTER TABLE [dbo].[Feedback] ADD  DEFAULT (getdate()) FOR [Submitted]
GO
ALTER TABLE [dbo].[Feedback] ADD  DEFAULT ((0)) FOR [Pro_Active]
GO
ALTER TABLE [dbo].[Player] ADD  DEFAULT ((0)) FOR [Playerstatus]
GO
ALTER TABLE [dbo].[RoomAccessories] ADD  DEFAULT ((0)) FOR [Bookcase]
GO
ALTER TABLE [dbo].[RoomAccessories] ADD  DEFAULT ((0)) FOR [Bed]
GO
ALTER TABLE [dbo].[RoomAccessories] ADD  DEFAULT ((0)) FOR [Desk]
GO
ALTER TABLE [dbo].[RoomAccessories] ADD  DEFAULT ((0)) FOR [Chair]
GO
ALTER TABLE [dbo].[RoomAccessories] ADD  DEFAULT ((0)) FOR [Plant]
GO
ALTER TABLE [dbo].[WeeklyHealthRecord] ADD  CONSTRAINT [DF__WeeklyHea__WReco__787EE5A0]  DEFAULT (getdate()) FOR [WRecordDate]
GO
ALTER TABLE [dbo].[WeeklyHealthRecord] ADD  CONSTRAINT [DF__WeeklyHea__Exerc__797309D9]  DEFAULT ((0)) FOR [Exercise]
GO
ALTER TABLE [dbo].[WeeklyHealthRecord] ADD  CONSTRAINT [DF__WeeklyHea__Clean__7A672E12]  DEFAULT ((0)) FOR [Cleaning]
GO
ALTER TABLE [dbo].[WeightRecord] ADD  CONSTRAINT [DF__WeightRec__W_Rec__7B5B524B]  DEFAULT (getdate()) FOR [W_RecordDate]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [goodbyepotato] SET  READ_WRITE 
GO
