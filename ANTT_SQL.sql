USE [master]
GO
/****** Object:  Database [ANTT]    Script Date: 6/1/2018 04:36:31 AM ******/
CREATE DATABASE [ANTT]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ANTT', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ANTT.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ANTT_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ANTT_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ANTT] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ANTT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ANTT] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ANTT] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ANTT] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ANTT] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ANTT] SET ARITHABORT OFF 
GO
ALTER DATABASE [ANTT] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ANTT] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ANTT] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ANTT] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ANTT] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ANTT] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ANTT] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ANTT] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ANTT] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ANTT] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ANTT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ANTT] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ANTT] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ANTT] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ANTT] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ANTT] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ANTT] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ANTT] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ANTT] SET  MULTI_USER 
GO
ALTER DATABASE [ANTT] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ANTT] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ANTT] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ANTT] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ANTT] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ANTT]
GO
/****** Object:  Table [dbo].[BaiViet]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiViet](
	[baiVietID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[TomTat] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[NgayTao] [nvarchar](max) NULL,
	[NguoiTao] [nvarchar](max) NULL,
	[order] [int] NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_BaiViet] PRIMARY KEY CLUSTERED 
(
	[baiVietID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BanDieuHanh]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanDieuHanh](
	[BdhID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ChuVu] [nvarchar](max) NULL,
	[Ban] [nvarchar](max) NULL,
	[IDCatelogy] [int] NULL,
	[SDT] [nvarchar](50) NULL,
	[img] [nvarchar](50) NULL,
	[order] [int] NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_BanDieuHanh] PRIMARY KEY CLUSTERED 
(
	[BdhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BanNer]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BanNer](
	[BanNerID] [int] IDENTITY(1,1) NOT NULL,
	[Img] [nvarchar](max) NULL,
	[title1] [nvarchar](max) NULL,
	[title2] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[order] [int] NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_BanNer] PRIMARY KEY CLUSTERED 
(
	[BanNerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CatelogyID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[Meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CatelogyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhap]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhap](
	[UseName] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[QuyenHan] [tinyint] NULL,
	[HoVaTen] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[SDT] [nvarchar](max) NULL,
 CONSTRAINT [PK_DangNhap] PRIMARY KEY CLUSTERED 
(
	[UseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DangNhapBDH]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangNhapBDH](
	[UserID] [tinyint] IDENTITY(1,1) NOT NULL,
	[UserNameBDH] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
 CONSTRAINT [PK_DangNhapBDH] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioiThieu]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiThieu](
	[GioiThieuID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NoiDung1] [nvarchar](max) NULL,
	[NoiDung2] [nvarchar](max) NULL,
	[NoiDung3] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[order] [int] NULL,
	[hide] [bit] NULL,
	[img2] [nvarchar](max) NULL,
 CONSTRAINT [PK_GioiThieu] PRIMARY KEY CLUSTERED 
(
	[GioiThieuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LichTruc]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LichTruc](
	[idLich] [int] IDENTITY(1,1) NOT NULL,
	[NgayTruc] [datetime] NULL,
	[Tuan] [int] NULL,
	[Thu] [int] NULL,
	[Buoi] [bit] NULL,
	[GhiChu] [ntext] NULL,
	[MSSV] [varchar](15) NULL,
 CONSTRAINT [PK_LichTruc] PRIMARY KEY CLUSTERED 
(
	[idLich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LienHe]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LienHe](
	[LhID] [tinyint] IDENTITY(1,1) NOT NULL,
	[NameLH] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SDT] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[ngay] [nvarchar](50) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_LienHe] PRIMARY KEY CLUSTERED 
(
	[LhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuID] [tinyint] IDENTITY(1,1) NOT NULL,
	[MenuNane] [nvarchar](max) NULL,
	[ParenID] [tinyint] NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MeNuThanhVien]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MeNuThanhVien](
	[IDMnTV] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_MeNuThanhVien] PRIMARY KEY CLUSTERED 
(
	[IDMnTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MSSV] [varchar](15) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [ntext] NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [varchar](12) NULL,
	[Email] [ntext] NULL,
	[Lop] [ntext] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MSSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SuKien]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuKien](
	[SuKienID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[DiaDiem] [nvarchar](max) NULL,
	[Thu] [nvarchar](50) NULL,
	[Time] [nvarchar](50) NULL,
	[hide] [bit] NULL,
 CONSTRAINT [PK_SuKien] PRIMARY KEY CLUSTERED 
(
	[SuKienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](max) NULL,
	[Tomtat] [nvarchar](max) NULL,
	[Hinh] [nvarchar](max) NULL,
	[hinh2] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[NoiDung1] [nvarchar](max) NULL,
	[NoiDung2] [nvarchar](max) NULL,
	[NoiDung3] [nvarchar](max) NULL,
	[ChiTiet] [nvarchar](max) NULL,
	[Link] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
	[meta] [nvarchar](max) NULL,
	[NgayCapNhat] [smalldatetime] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTucNoiBat]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTucNoiBat](
	[TinTucID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Hinh] [nvarchar](max) NULL,
	[NoiDung] [nvarchar](max) NULL,
	[ChiTiet] [ntext] NULL,
	[meta] [nvarchar](max) NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_TinTucNoiBat] PRIMARY KEY CLUSTERED 
(
	[TinTucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VanBan]    Script Date: 6/1/2018 04:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VanBan](
	[IDvanBan] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[hinh] [nvarchar](max) NULL,
	[meta] [nvarchar](max) NULL,
	[Ngay] [smalldatetime] NULL,
	[hide] [bit] NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_VanBan] PRIMARY KEY CLUSTERED 
(
	[IDvanBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[LichTruc]  WITH CHECK ADD  CONSTRAINT [FK_LichTruc_SinhVien] FOREIGN KEY([MSSV])
REFERENCES [dbo].[SinhVien] ([MSSV])
GO
ALTER TABLE [dbo].[LichTruc] CHECK CONSTRAINT [FK_LichTruc_SinhVien]
GO
USE [master]
GO
ALTER DATABASE [ANTT] SET  READ_WRITE 
GO
