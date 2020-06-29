USE [master]
GO
/****** Object:  Database [QL_Sinh_Vien]    Script Date: 04/05/2020 8:21:10 SA ******/
CREATE DATABASE [QL_Sinh_Vien] ON  PRIMARY 
( NAME = N'QL_Sinh_Vien', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QL_Sinh_Vien.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QL_Sinh_Vien_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\QL_Sinh_Vien_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QL_Sinh_Vien] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QL_Sinh_Vien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QL_Sinh_Vien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QL_Sinh_Vien] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QL_Sinh_Vien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QL_Sinh_Vien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QL_Sinh_Vien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QL_Sinh_Vien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QL_Sinh_Vien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QL_Sinh_Vien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QL_Sinh_Vien] SET  MULTI_USER 
GO
ALTER DATABASE [QL_Sinh_Vien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QL_Sinh_Vien] SET DB_CHAINING OFF 
GO
USE [QL_Sinh_Vien]
GO
/****** Object:  Table [dbo].[HocPhan]    Script Date: 04/05/2020 8:21:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HocPhan](
	[MaHP] [nchar](10) NOT NULL,
	[TenHP] [nvarchar](30) NULL,
	[SoTC] [int] NULL,
 CONSTRAINT [PK_HocPhan] PRIMARY KEY CLUSTERED 
(
	[MaHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KetQua]    Script Date: 04/05/2020 8:21:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQua](
	[MaSV] [varchar](10) NOT NULL,
	[MaHP] [nchar](10) NULL,
	[Diemlan1] [float] NULL,
	[Diemlan2] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 04/05/2020 8:21:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHOA](
	[MaKhoa] [char](4) NOT NULL,
	[TenKhoa] [nchar](30) NULL,
	[SiSo] [int] NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOP]    Script Date: 04/05/2020 8:21:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOP](
	[MaLop] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](30) NULL,
	[GVCN] [nvarchar](30) NULL,
	[MaKhoa] [char](4) NULL,
	[SiSo] [int] NULL,
 CONSTRAINT [PK_LOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 04/05/2020 8:21:10 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[HoDem] [nvarchar](30) NULL,
	[Ten] [nvarchar](20) NULL,
	[Phai] [bit] NULL,
	[NgaySinh] [date] NULL,
	[Diachi] [nvarchar](50) NULL,
	[DienThoai] [nvarchar](14) NULL,
	[MaLop] [varchar](10) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[KetQua] ADD  CONSTRAINT [DF_KetQua_Diemlan1]  DEFAULT ((0)) FOR [Diemlan1]
GO
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [DF_SinhVien_Diachi]  DEFAULT (N'Bình Dương') FOR [Diachi]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_HocPhan] FOREIGN KEY([MaHP])
REFERENCES [dbo].[HocPhan] ([MaHP])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_HocPhan]
GO
ALTER TABLE [dbo].[KetQua]  WITH CHECK ADD  CONSTRAINT [FK_KetQua_SinhVien] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[KetQua] CHECK CONSTRAINT [FK_KetQua_SinhVien]
GO
USE [master]
GO
ALTER DATABASE [QL_Sinh_Vien] SET  READ_WRITE 
GO
