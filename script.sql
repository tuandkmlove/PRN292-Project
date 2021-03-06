USE [master]
GO
/****** Object:  Database [SieuThiDienMayMK]    Script Date: 3/14/2020 10:16:01 AM ******/
CREATE DATABASE [SieuThiDienMayMK]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SieuThiDienMayMK', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SieuThiDienMayMK.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SieuThiDienMayMK_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SieuThiDienMayMK_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [SieuThiDienMayMK] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SieuThiDienMayMK].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SieuThiDienMayMK] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET ARITHABORT OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SieuThiDienMayMK] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SieuThiDienMayMK] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SieuThiDienMayMK] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SieuThiDienMayMK] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET RECOVERY FULL 
GO
ALTER DATABASE [SieuThiDienMayMK] SET  MULTI_USER 
GO
ALTER DATABASE [SieuThiDienMayMK] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SieuThiDienMayMK] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SieuThiDienMayMK] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SieuThiDienMayMK] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SieuThiDienMayMK] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SieuThiDienMayMK', N'ON'
GO
ALTER DATABASE [SieuThiDienMayMK] SET QUERY_STORE = OFF
GO
USE [SieuThiDienMayMK]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonBanHang]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBanHang](
	[idHDBan] [nvarchar](50) NOT NULL,
	[idHangHoa] [nvarchar](50) NOT NULL,
	[soLuong] [int] NOT NULL,
	[thanhTien] [float] NOT NULL,
	[giamGia] [float] NOT NULL,
 CONSTRAINT [PK_HoaDonBanHang] PRIMARY KEY CLUSTERED 
(
	[idHDBan] ASC,
	[idHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhapHang]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhapHang](
	[idHDNhap] [nvarchar](50) NOT NULL,
	[idHangHoa] [nvarchar](50) NOT NULL,
	[soLuong] [float] NOT NULL,
	[donGia] [float] NOT NULL,
	[thanhTien] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDonBan] PRIMARY KEY CLUSTERED 
(
	[idHDNhap] ASC,
	[idHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HangHoa]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HangHoa](
	[maHang] [nvarchar](50) NOT NULL,
	[tenHang] [nvarchar](50) NOT NULL,
	[giaNhap] [float] NOT NULL,
	[giaBan] [float] NOT NULL,
	[soLuong] [int] NOT NULL,
 CONSTRAINT [PK_HangHoa] PRIMARY KEY CLUSTERED 
(
	[maHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBan]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBan](
	[idHDBan] [nvarchar](50) NOT NULL,
	[ngayBan] [date] NULL,
	[idNhanVien] [nvarchar](50) NULL,
	[idKhach] [nvarchar](50) NULL,
	[tongTien] [float] NULL,
 CONSTRAINT [PK_HoaDonBan] PRIMARY KEY CLUSTERED 
(
	[idHDBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhapHang]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhapHang](
	[idHDNhap] [nvarchar](50) NOT NULL,
	[ngayNhap] [date] NOT NULL,
	[idNhanVien] [nvarchar](50) NOT NULL,
	[idNCC] [nvarchar](50) NOT NULL,
	[totalMoney] [float] NOT NULL,
 CONSTRAINT [PK_HoaDonNhapHang] PRIMARY KEY CLUSTERED 
(
	[idHDNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[idKhach] [nvarchar](50) NOT NULL,
	[tenKhach] [nvarchar](50) NULL,
	[diaChi] [nvarchar](50) NULL,
	[soDienThoai] [char](10) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[idKhach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[idNCC] [nvarchar](50) NOT NULL,
	[tenNcc] [nvarchar](50) NOT NULL,
	[diaChi] [nvarchar](50) NOT NULL,
	[dienThoai] [char](13) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[idNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 3/14/2020 10:16:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idNhanVien] [nvarchar](50) NOT NULL,
	[TenNhanVien] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[gioiTinh] [nvarchar](3) NULL,
	[diaChi] [nvarchar](100) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[idNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password]) VALUES (N'admin', N'admin')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'dkmlove3', N'kiendaika9x')
INSERT [dbo].[ChiTietHoaDonBanHang] ([idHDBan], [idHangHoa], [soLuong], [thanhTien], [giamGia]) VALUES (N'1', N'2', 1, 8800000, 0)
INSERT [dbo].[ChiTietHoaDonBanHang] ([idHDBan], [idHangHoa], [soLuong], [thanhTien], [giamGia]) VALUES (N'2', N'8', 1, 5800000, 0)
INSERT [dbo].[ChiTietHoaDonBanHang] ([idHDBan], [idHangHoa], [soLuong], [thanhTien], [giamGia]) VALUES (N'2', N'9', 1, 5800000, 0)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'1', N'1', 3, 13050000, 39150000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'1', N'10', 3, 6115000, 18345000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'1', N'2', 3, 6800000, 20400000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'2', N'3', 3, 9630000, 18890000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'2', N'4', 3, 17500000, 52500000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'2', N'5', 3, 13150000, 39450000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'3', N'6', 3, 5900000, 17700000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'3', N'7', 3, 9000000, 27000000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'3', N'8', 3, 4800000, 14400000)
INSERT [dbo].[ChiTietHoaDonNhapHang] ([idHDNhap], [idHangHoa], [soLuong], [donGia], [thanhTien]) VALUES (N'3', N'9', 3, 4800000, 14400000)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'1', N'TV SAMSUNG 55RU7200', 13050000, 14100000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'10', N'MG AQUA U105ZT', 6115000, 7100000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'11', N'NC TOSIBA RC-18JFM2', 560000, 950000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'12', N'BT PANA 338 HỒNG NGOẠI', 890000, 1350000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'13', N'MÀN HÌNH TV PANASONICH 32', 1300000, 1800000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'14', N'MÀN HÌNH TV PANASONICH 49DX400V', 3500000, 4600000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'15', N'	NỒI ĐA NĂNG EMICH 4023517', 580000, 890000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'16', N'BÌNH THỦY LORENTE', 830000, 1350000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'17', N'BNL MELIA 20 LIT', 2150000, 2500000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'18', N'	ẤM SIÊU TÔC MELIA 18GD', 370000, 530000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'19', N'KỆ KÍNH ĐÁ 1.4M', 1200000, 2300000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'2', N'TV SAMSUNG 49J5250', 6800000, 8800000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'20', N'ĐẨY VINA KTV DK500 PRO', 4400000, 6200000, 0)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'3', N'TL SAMSUNG RT-32K5932S8', 9630000, 10630000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'4', N'TL SHARP SJ-FX631V', 17500000, 15400000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'5', N'TL MITSUBISHI CX46EJ-BRW', 13150000, 14150000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'6', N'	ĐH PANASONICH N9 VKH', 5900000, 7900000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'7', N'ĐH PANASONIC CS-N12VKH-8', 9000000, 10100000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'8', N'MG SAMSUNG WA85J5712SG', 4800000, 5800000, 3)
INSERT [dbo].[HangHoa] ([maHang], [tenHang], [giaNhap], [giaBan], [soLuong]) VALUES (N'9', N'MG SHARP - U95HV', 4800000, 5800000, 3)
INSERT [dbo].[HoaDonBan] ([idHDBan], [ngayBan], [idNhanVien], [idKhach], [tongTien]) VALUES (N'1', CAST(N'2019-10-29' AS Date), N'1', N'1', 8800000)
INSERT [dbo].[HoaDonBan] ([idHDBan], [ngayBan], [idNhanVien], [idKhach], [tongTien]) VALUES (N'2', CAST(N'2019-10-29' AS Date), N'2', N'2', 11600000)
INSERT [dbo].[HoaDonNhapHang] ([idHDNhap], [ngayNhap], [idNhanVien], [idNCC], [totalMoney]) VALUES (N'1', CAST(N'2019-10-13' AS Date), N'1', N'1', 77895000)
INSERT [dbo].[HoaDonNhapHang] ([idHDNhap], [ngayNhap], [idNhanVien], [idNCC], [totalMoney]) VALUES (N'2', CAST(N'2019-10-13' AS Date), N'2', N'2', 120840000)
INSERT [dbo].[HoaDonNhapHang] ([idHDNhap], [ngayNhap], [idNhanVien], [idNCC], [totalMoney]) VALUES (N'3', CAST(N'2019-10-13' AS Date), N'3', N'3', 73500000)
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'1', N'Anh Tuan1', N'HaNoi', N'01234455  ')
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'2', N'CongPhong', N'HungYen', N'12112133  ')
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'3', N'QuangVinh', N'HaNoi', N'12123331  ')
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'4', N'Noam', N'HaNoi', N'12123233  ')
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'5', N'DaoSkin', N'HaNoi', N'33132133  ')
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'6', N'Linh Thao', N'Dai Tap', N'16735104  ')
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'7', N'Nguyen Manh K', N'Dong Ket', N'977548801 ')
INSERT [dbo].[KhachHang] ([idKhach], [tenKhach], [diaChi], [soDienThoai]) VALUES (N'8', N'Nguyá»?n Máº¡nh KiÃªn', N'Dong Ket', N'977548801 ')
INSERT [dbo].[NhaCungCap] ([idNCC], [tenNcc], [diaChi], [dienThoai]) VALUES (N'1', N'Hoang Phong', N'
HÀ NỘI', N'
0989175926 ')
INSERT [dbo].[NhaCungCap] ([idNCC], [tenNcc], [diaChi], [dienThoai]) VALUES (N'2', N'Duc Thanh', N'THƯỜNG TÍN', N'0985409365   ')
INSERT [dbo].[NhaCungCap] ([idNCC], [tenNcc], [diaChi], [dienThoai]) VALUES (N'3', N'Quyet Thang', N'
BÁT TRÀNG-GIA LÂM', N'
0983518081 ')
INSERT [dbo].[NhanVien] ([idNhanVien], [TenNhanVien], [ngaySinh], [gioiTinh], [diaChi]) VALUES (N'1', N'Manh Kien', CAST(N'1999-09-25' AS Date), N'Nam', N'DongKet')
INSERT [dbo].[NhanVien] ([idNhanVien], [TenNhanVien], [ngaySinh], [gioiTinh], [diaChi]) VALUES (N'2', N'Nguyen Thi Hong', CAST(N'1977-10-01' AS Date), N'Nu', N'DongKet')
INSERT [dbo].[NhanVien] ([idNhanVien], [TenNhanVien], [ngaySinh], [gioiTinh], [diaChi]) VALUES (N'3', N'Nguyenx Xuan Cuong', CAST(N'1974-06-14' AS Date), N'Nam', N'DongKet')
INSERT [dbo].[NhanVien] ([idNhanVien], [TenNhanVien], [ngaySinh], [gioiTinh], [diaChi]) VALUES (N'4', N'Dang Quang Huan', CAST(N'1988-06-14' AS Date), N'Nam', N'An Canh')
ALTER TABLE [dbo].[ChiTietHoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanHang_HangHoa] FOREIGN KEY([idHangHoa])
REFERENCES [dbo].[HangHoa] ([maHang])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang] CHECK CONSTRAINT [FK_ChiTietHoaDonBanHang_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBanHang_HoaDonBan] FOREIGN KEY([idHDBan])
REFERENCES [dbo].[HoaDonBan] ([idHDBan])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBanHang] CHECK CONSTRAINT [FK_ChiTietHoaDonBanHang_HoaDonBan]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhapHang_HangHoa] FOREIGN KEY([idHangHoa])
REFERENCES [dbo].[HangHoa] ([maHang])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang] CHECK CONSTRAINT [FK_ChiTietHoaDonNhapHang_HangHoa]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhapHang_HoaDonNhapHang] FOREIGN KEY([idHDNhap])
REFERENCES [dbo].[HoaDonNhapHang] ([idHDNhap])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhapHang] CHECK CONSTRAINT [FK_ChiTietHoaDonNhapHang_HoaDonNhapHang]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_KhachHang] FOREIGN KEY([idKhach])
REFERENCES [dbo].[KhachHang] ([idKhach])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_KhachHang]
GO
ALTER TABLE [dbo].[HoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBan_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[HoaDonBan] CHECK CONSTRAINT [FK_HoaDonBan_NhanVien]
GO
ALTER TABLE [dbo].[HoaDonNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhapHang_NhaCungCap] FOREIGN KEY([idNCC])
REFERENCES [dbo].[NhaCungCap] ([idNCC])
GO
ALTER TABLE [dbo].[HoaDonNhapHang] CHECK CONSTRAINT [FK_HoaDonNhapHang_NhaCungCap]
GO
ALTER TABLE [dbo].[HoaDonNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhapHang_NhanVien] FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[HoaDonNhapHang] CHECK CONSTRAINT [FK_HoaDonNhapHang_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [SieuThiDienMayMK] SET  READ_WRITE 
GO
