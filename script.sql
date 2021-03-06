USE [master]
GO
/****** Object:  Database [ProjectSemII]    Script Date: 2/12/2020 11:52:08 AM ******/
CREATE DATABASE [ProjectSemII]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectSemII', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectSemII.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectSemII_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\ProjectSemII_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectSemII] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectSemII].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectSemII] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectSemII] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectSemII] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectSemII] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectSemII] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectSemII] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectSemII] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectSemII] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectSemII] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectSemII] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectSemII] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectSemII] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectSemII] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectSemII] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectSemII] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectSemII] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectSemII] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectSemII] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectSemII] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectSemII] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectSemII] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectSemII] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectSemII] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectSemII] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectSemII] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectSemII] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectSemII] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectSemII] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectSemII] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectSemII]
GO
/****** Object:  Table [dbo].[tblAccount]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblAccount](
	[maNV] [int] NULL,
	[Username] [varchar](20) NOT NULL,
	[password] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDanhMuc]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDanhMuc](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDon]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDon](
	[maHD] [int] NOT NULL,
	[maNV] [int] NULL,
	[maKH] [int] NULL,
	[ThoiGian] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHoaDonChiTiet]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHoaDonChiTiet](
	[maHD] [int] NULL,
	[maSP] [int] NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL,
	[ThanhTien] [float] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](40) NULL,
	[DiaChi] [nvarchar](120) NULL,
	[SDT] [varchar](12) NULL,
	[Email] [varchar](80) NULL,
	[DiemThuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblKho]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKho](
	[maSP] [int] NULL,
	[SoLuong] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhuyenMai]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKhuyenMai](
	[maSP] [int] NULL,
	[ThoiGian] [date] NULL,
	[PhanTram] [nvarchar](120) NULL,
	[SoTienGiam] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLuong]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLuong](
	[maNV] [int] NULL,
	[MucLuong] [float] NOT NULL,
	[Thuong] [float] NULL,
	[SoBuoiNghi] [int] NULL,
	[MucPhat] [float] NULL,
	[ThoiGian] [date] NOT NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNghiPhep]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNghiPhep](
	[maNV] [int] NOT NULL,
	[ThoiGian] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC,
	[ThoiGian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNhaCungCap]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](40) NULL,
	[DiaChi] [nvarchar](120) NULL,
	[SDT] [varchar](12) NULL,
	[LienHe] [varchar](120) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblNhanVien]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblNhanVien](
	[maNV] [int] IDENTITY(1,1) NOT NULL,
	[Pr_id] [int] NULL,
	[Loai] [bit] NULL,
	[Ten] [nvarchar](40) NULL,
	[GioiTinh] [tinyint] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](120) NULL,
	[SDT] [varchar](12) NULL,
	[email] [varchar](80) NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNhapHang]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhapHang](
	[maSP] [int] NULL,
	[maNCC] [int] NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [float] NULL,
	[NgayNhap] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSanPham]    Script Date: 2/12/2020 11:52:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSanPham](
	[maSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](120) NOT NULL,
	[NhaCungCap] [int] NULL,
	[NgayTao] [date] NULL,
	[Gia] [float] NOT NULL,
	[DanhMuc] [int] NULL,
	[TrangThai] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblAccount] ([maNV], [Username], [password]) VALUES (1, N'admin01', N'1234')
INSERT [dbo].[tblAccount] ([maNV], [Username], [password]) VALUES (2, N'nhanvien01', N'1234')
INSERT [dbo].[tblAccount] ([maNV], [Username], [password]) VALUES (5, N'nhanvien02', N'1234')
SET IDENTITY_INSERT [dbo].[tblDanhMuc] ON 

INSERT [dbo].[tblDanhMuc] ([MaDM], [TenDM]) VALUES (1, N'Áo phông nam')
INSERT [dbo].[tblDanhMuc] ([MaDM], [TenDM]) VALUES (2, N'Quần short')
INSERT [dbo].[tblDanhMuc] ([MaDM], [TenDM]) VALUES (3, N'Áo sơ mi nam')
SET IDENTITY_INSERT [dbo].[tblDanhMuc] OFF
SET IDENTITY_INSERT [dbo].[tblNhaCungCap] ON 

INSERT [dbo].[tblNhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [LienHe]) VALUES (1, N'Nhà cung cấp 1', N'Đống Đa', N'0972345678', N'nhacungcap1@gmail.com')
INSERT [dbo].[tblNhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [LienHe]) VALUES (2, N'Nhà cung cấp 2', N'Ba Đình', N'0965455556', N'nhacungcap2@gmail.com')
SET IDENTITY_INSERT [dbo].[tblNhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[TblNhanVien] ON 

INSERT [dbo].[TblNhanVien] ([maNV], [Pr_id], [Loai], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [email], [TrangThai]) VALUES (1, NULL, 0, N'Quản lý 1', 1, CAST(N'1995-03-12' AS Date), N'Hà Nội', N'0123445678', N'admin01@gmail.com', 1)
INSERT [dbo].[TblNhanVien] ([maNV], [Pr_id], [Loai], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [email], [TrangThai]) VALUES (2, 1, 1, N'Nhân viên 01', 1, CAST(N'1999-07-30' AS Date), N'Vũng Tàu', N'0974823185', N'nhanvien01@gmail.com', 1)
INSERT [dbo].[TblNhanVien] ([maNV], [Pr_id], [Loai], [Ten], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [email], [TrangThai]) VALUES (5, 1, 1, N'Nhân viên 02', 0, CAST(N'2000-08-07' AS Date), N'Nghệ An', N'0988912123', N'nhanvien02@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[TblNhanVien] OFF
ALTER TABLE [dbo].[tblLuong] ADD  DEFAULT ((0)) FOR [Thuong]
GO
ALTER TABLE [dbo].[tblLuong] ADD  DEFAULT ((0)) FOR [SoBuoiNghi]
GO
ALTER TABLE [dbo].[tblLuong] ADD  DEFAULT ((0)) FOR [MucPhat]
GO
ALTER TABLE [dbo].[tblAccount]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[TblNhanVien] ([maNV])
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([maKH])
REFERENCES [dbo].[tblKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tblHoaDon]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[TblNhanVien] ([maNV])
GO
ALTER TABLE [dbo].[tblHoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([maHD])
REFERENCES [dbo].[tblHoaDon] ([maHD])
GO
ALTER TABLE [dbo].[tblHoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[tblSanPham] ([maSP])
GO
ALTER TABLE [dbo].[tblKho]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[tblSanPham] ([maSP])
GO
ALTER TABLE [dbo].[tblKhuyenMai]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[tblSanPham] ([maSP])
GO
ALTER TABLE [dbo].[tblLuong]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[TblNhanVien] ([maNV])
GO
ALTER TABLE [dbo].[tblNghiPhep]  WITH CHECK ADD FOREIGN KEY([maNV])
REFERENCES [dbo].[TblNhanVien] ([maNV])
GO
ALTER TABLE [dbo].[tblNhapHang]  WITH CHECK ADD FOREIGN KEY([maSP])
REFERENCES [dbo].[tblSanPham] ([maSP])
GO
ALTER TABLE [dbo].[tblNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_tblNhapHang_NhaCC] FOREIGN KEY([maNCC])
REFERENCES [dbo].[tblNhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[tblNhapHang] CHECK CONSTRAINT [FK_tblNhapHang_NhaCC]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_DanhMuc] FOREIGN KEY([DanhMuc])
REFERENCES [dbo].[tblDanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_DanhMuc]
GO
ALTER TABLE [dbo].[tblSanPham]  WITH CHECK ADD  CONSTRAINT [FK_tblSanPham_NhaCC] FOREIGN KEY([NhaCungCap])
REFERENCES [dbo].[tblNhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[tblSanPham] CHECK CONSTRAINT [FK_tblSanPham_NhaCC]
GO
USE [master]
GO
ALTER DATABASE [ProjectSemII] SET  READ_WRITE 
GO
