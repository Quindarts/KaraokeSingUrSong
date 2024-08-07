USE [master]
GO
/****** Object:  Database [SingUrSong_vnew]    Script Date: 12/13/2023 12:00:24 AM ******/
CREATE DATABASE [SingUrSong_vnew]
GO

USE [SingUrSong_vnew]
GO

CREATE TABLE [dbo].[ChiTietDichVu](
	[maHoaDon] [nchar](15) NOT NULL,
	[maDichVu] [nchar](15) NOT NULL,
	[soLuong] [int] NULL,
	[maPhong] [varchar](16) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[maHoaDon] [nchar](15) NOT NULL,
	[maPhong] [nchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DichVu]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DichVu](
	[maDichVu] [nchar](15) NOT NULL,
	[tenDichVu] [nvarchar](40) NULL,
	[donViTinh] [nvarchar](12) NULL,
	[donGia] [float] NULL,
	[trangThai] [bit] NULL,
	[maThongTinDichVu] [nchar](16) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [nchar](15) NOT NULL,
	[maKhachHang] [nchar](16) NULL,
	[maNhanVien] [nchar](16) NULL,
	[maPhieuDat] [nchar](15) NULL,
	[maKhuyenMai] [nchar](16) NULL,
	[ngayLap] [datetime] NULL,
	[trangThai] [nvarchar](40) NULL,
	[thoiGianKetThuc] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[maKhachHang] [nchar](16) NOT NULL,
	[hoTen] [nvarchar](40) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](40) NULL,
	[soDienThoai] [nvarchar](10) NULL,
	[diemThuong] [int] NULL,
	[ghiChu] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[maKhuyenMai] [nchar](16) NOT NULL,
	[tenKhuyenMai] [nvarchar](40) NULL,
	[maGiamGia] [nvarchar](16) NULL,
	[ngayBatDau] [datetime] NULL,
	[ngayKetThuc] [datetime] NULL,
	[tongSoLuong] [int] NULL,
	[chieuKhau] [float] NULL,
	[moTa] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[maKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiNhanVien]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiNhanVien](
	[maLoaiNhanVien] [nchar](16) NOT NULL,
	[tenLoaiNhanVien] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[maLoaiPhong] [nchar](16) NOT NULL,
	[tenLoaiPhong] [nvarchar](40) NULL,
	[soLuongKhachToiDa] [int] NULL,
	[giaTien] [float] NULL,
	[hinhAnh] [nchar](255) NULL,
	[moTa] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maLoaiPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [nchar](16) NOT NULL,
	[maLoaiNhanVien] [nchar](16) NULL,
	[hoTen] [nvarchar](40) NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[soDienThoai] [nvarchar](10) NULL,
	[CCCD] [nvarchar](12) NULL,
	[diaChi] [nvarchar](40) NULL,
	[trangThai] [nvarchar](40) NULL,
	[anhThe] [nchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatPhong]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatPhong](
	[maPhieuDat] [nchar](15) NOT NULL,
	[maPhong] [nchar](16) NULL,
	[maNhanVien] [nchar](16) NULL,
	[maKhachHang] [nchar](16) NULL,
	[thoiGianDatPhong] [datetime] NULL,
	[thoiGianNhanPhong] [datetime] NULL,
	[tienCoc] [float] NULL,
	[trangThai] [nvarchar](40) NULL,
	[moTa] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhieuDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[maPhong] [nchar](16) NOT NULL,
	[tenPhong] [nvarchar](40) NULL,
	[maLoaiPhong] [nchar](16) NULL,
	[maTrangThai] [nchar](16) NULL,
	[ngayTaoPhong] [date] NULL,
	[viTriPhong] [nchar](8) NULL,
	[ghiChu] [nvarchar](100) NULL,
	[tinhTrangPhong] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[maPhong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maNhanVien] [nchar](16) NOT NULL,
	[tenDangNhap] [nchar](16) NULL,
	[matKhau] [nchar](40) NOT NULL,
	[trangThai] [bit] NOT NULL,
	[email] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinDichVu]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinDichVu](
	[maThongTinDichVu] [nchar](16) NOT NULL,
	[soLuong] [int] NULL,
	[soLuongDaSuDung] [int] NULL,
	[ngayNhap] [datetime] NULL,
	[ngayHetHan] [datetime] NULL,
	[moTa] [nvarchar](40) NULL,
	[hinhAnh] [nchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maThongTinDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiPhong]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiPhong](
	[maTrangThai] [nchar](16) NOT NULL,
	[tenTrangThai] [nvarchar](40) NULL,
PRIMARY KEY CLUSTERED 
(
	[maTrangThai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD03122023C001 ', N'DV261020230001 ', 5, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD03122023C003 ', N'DV261020230009 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD03122023C003 ', N'DV271020230015 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD03122023C003 ', N'DV261020230001 ', 2, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D009 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D009 ', N'DV271020230015 ', 5, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D009 ', N'DV271020230016 ', 6, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D009 ', N'DV271020230017 ', 4, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D009 ', N'DV261020230010 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D009 ', N'DV271020230011 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D009 ', N'DV271020230020 ', 4, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D013 ', N'DV261020230009 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D013 ', N'DV261020230002 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D013 ', N'DV271020230015 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D035 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D035 ', N'DV271020230016 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D043 ', N'DV271020230012 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A003 ', N'DV261020230004 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A003 ', N'DV271020230013 ', 6, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A003 ', N'DV271020230014 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A003 ', N'DV271020230017 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A003 ', N'DV271020230018 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A003 ', N'DV271020230019 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A004 ', N'DV261020230004 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A004 ', N'DV271020230016 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A004 ', N'DV271020230018 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A005 ', N'DV261020230004 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A005 ', N'DV271020230017 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A005 ', N'DV271020230018 ', 3, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A006 ', N'DV261020230006 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A006 ', N'DV261020230008 ', 4, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A006 ', N'DV271020230011 ', 5, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A006 ', N'DV271020230012 ', 5, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A006 ', N'DV271020230015 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A006 ', N'DV271020230018 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A008 ', N'DV261020230008 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A008 ', N'DV261020230009 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023A008 ', N'DV261020230010 ', 4, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023B002 ', N'DV261020230003 ', 10, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023B002 ', N'DV261020230008 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023B002 ', N'DV271020230011 ', 20, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023B003 ', N'DV261020230008 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023B003 ', N'DV271020230018 ', 12, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023D001 ', N'DV261020230001 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD16112023D001 ', N'DV261020230003 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD20112023D001 ', N'DV261020230004 ', 3, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD21112023B001 ', N'DV271020230014 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD21112023B001 ', N'DV271020230017 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD21112023B001 ', N'DV271020230018 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD22112023A014 ', N'DV261020230008 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD22112023A014 ', N'DV261020230009 ', 3, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD22112023A014 ', N'DV271020230015 ', 2, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD22112023B001 ', N'DV261020230002 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD22112023B001 ', N'DV261020230008 ', 5, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD22112023B002 ', N'DV261020230001 ', 1, NULL)
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD23112023D002 ', N'DV261020230009 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023A002 ', N'DV261020230001 ', 6, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023A002 ', N'DV261020230006 ', 4, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023A002 ', N'DV261020230009 ', 5, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D001 ', N'DV261020230004 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D002 ', N'DV261020230008 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D002 ', N'DV271020230016 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D003 ', N'DV271020230013 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D004 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D004 ', N'DV261020230010 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D004 ', N'DV271020230012 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D004 ', N'DV271020230013 ', 10, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D004 ', N'DV271020230014 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D004 ', N'DV271020230016 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023D004 ', N'DV271020230017 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023A002 ', N'DV261020230001 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023A002 ', N'DV271020230011 ', 3, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD24112023A002 ', N'DV271020230017 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD26112023C001 ', N'DV261020230008 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD27112023B004 ', N'DV261020230009 ', 1, N'P302            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD27112023B003 ', N'DV261020230006 ', 1, N'P202            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD27112023B012 ', N'DV261020230006 ', 4, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D106 ', N'DV271020230014 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D105 ', N'DV271020230014 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D109 ', N'DV271020230016 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D109 ', N'DV271020230015 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D109 ', N'DV261020230003 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D111 ', N'DV271020230018 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D111 ', N'DV261020230010 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D111 ', N'DV271020230012 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D111 ', N'DV271020230015 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B006 ', N'DV261020230003 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B006 ', N'DV271020230017 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B008 ', N'DV271020230011 ', 1, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B005 ', N'DV261020230003 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B005 ', N'DV271020230017 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD27112023B011 ', N'DV271020230016 ', 1, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD27112023B011 ', N'DV261020230006 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD27112023B011 ', N'DV261020230001 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD27112023B011 ', N'DV261020230001 ', 3, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD06122023D001 ', N'DV261020230004 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD06122023D001 ', N'DV271020230011 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD06122023D001 ', N'DV261020230009 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD06122023D001 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D001 ', N'DV261020230004 ', 1, N'P101            ')
GO
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D001 ', N'DV271020230015 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D001 ', N'DV271020230017 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D001 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D001 ', N'DV261020230009 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D027 ', N'DV261020230004 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D027 ', N'DV261020230008 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D031 ', N'DV261020230006 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D031 ', N'DV271020230017 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D031 ', N'DV271020230014 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D031 ', N'DV271020230016 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D031 ', N'DV271020230017 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D031 ', N'DV271020230014 ', 1, N'P202            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D058 ', N'DV261020230009 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D058 ', N'DV261020230006 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D058 ', N'DV261020230010 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D087 ', N'DV261020230009 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D087 ', N'DV271020230016 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D087 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D087 ', N'DV261020230009 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D087 ', N'DV271020230017 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D089 ', N'DV261020230010 ', 1, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D091 ', N'DV271020230011 ', 1, N'P202            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D088 ', N'DV261020230010 ', 1, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D091 ', N'DV271020230018 ', 1, N'P202            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D091 ', N'DV271020230016 ', 1, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B008 ', N'DV271020230013 ', 5, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B009 ', N'DV271020230011 ', 1, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B009 ', N'DV271020230013 ', 5, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B011 ', N'DV261020230009 ', 1, N'P304            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B011 ', N'DV261020230010 ', 5, N'P403            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B010 ', N'DV261020230009 ', 1, N'P304            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B012 ', N'DV261020230010 ', 5, N'P403            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B014 ', N'DV271020230012 ', 1, N'P202            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B013 ', N'DV271020230012 ', 1, N'P202            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B015 ', N'DV261020230001 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B016 ', N'DV261020230001 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B036 ', N'DV261020230003 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B033 ', N'DV261020230009 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B033 ', N'DV261020230010 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B034 ', N'DV261020230009 ', 1, N'P104')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B001 ', N'DV261020230004 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B001 ', N'DV271020230014 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B001 ', N'DV271020230016 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B001 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B001 ', N'DV261020230009 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B001 ', N'DV271020230014 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B005 ', N'DV261020230010 ', 3, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B002 ', N'DV271020230020 ', 1, N'P104')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B005 ', N'DV271020230013 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B005 ', N'DV261020230002 ', 3, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B004 ', N'DV271020230016 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B004 ', N'DV271020230013 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B007 ', N'DV271020230012 ', 1, N'P103')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B009 ', N'DV271020230015 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B006 ', N'DV261020230003 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B006 ', N'DV261020230009 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B007 ', N'DV261020230004 ', 1, N'P103')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023B009 ', N'DV271020230013 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023C001 ', N'DV261020230003 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023C001 ', N'DV261020230009 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023C003 ', N'DV271020230013 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023C004 ', N'DV271020230015 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD08122023C004 ', N'DV271020230012 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D006 ', N'DV271020230011 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D006 ', N'DV271020230017 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D006 ', N'DV271020230012 ', 1, N'P302            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D006 ', N'DV261020230010 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D006 ', N'DV261020230009 ', 1, N'P302            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D007 ', N'DV261020230009 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD28112023C001 ', N'DV261020230002 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD28112023C001 ', N'DV261020230002 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D066 ', N'DV261020230009 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D066 ', N'DV271020230013 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D068 ', N'DV271020230014 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D068 ', N'DV271020230012 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D068 ', N'DV271020230014 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D007 ', N'DV271020230016 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D007 ', N'DV271020230013 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D008 ', N'DV271020230012 ', 1, N'P403            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D008 ', N'DV271020230017 ', 5, N'P403            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D008 ', N'DV261020230009 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D008 ', N'DV271020230015 ', 1, N'P202            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D009 ', N'DV261020230009 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D009 ', N'DV271020230017 ', 2, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D009 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D010 ', N'DV261020230009 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D010 ', N'DV271020230015 ', 3, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D011 ', N'DV261020230006 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D011 ', N'DV261020230010 ', 3, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D011 ', N'DV261020230009 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D012 ', N'DV271020230011 ', 1, N'P103            ')
GO
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D012 ', N'DV271020230014 ', 1, N'P204            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D013 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D013 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D013 ', N'DV271020230014 ', 1, N'P203            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D013 ', N'DV261020230009 ', 1, N'P201')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D013 ', N'DV271020230015 ', 1, N'P201')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D014 ', N'DV271020230015 ', 1, N'P303            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023D015 ', N'DV271020230013 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD09122023C001 ', N'DV261020230003 ', 1, N'P301')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A001 ', N'DV261020230008 ', 4, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A001 ', N'DV261020230006 ', 4, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A002 ', N'DV261020230004 ', 4, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A002 ', N'DV271020230017 ', 6, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A003 ', N'DV271020230016 ', 4, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A004 ', N'DV271020230019 ', 1, N'P101')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A004 ', N'DV271020230018 ', 1, N'P101')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A004 ', N'DV261020230008 ', 1, N'P101')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A005 ', N'DV261020230008 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A003 ', N'DV261020230008 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A003 ', N'DV271020230017 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A004 ', N'DV271020230016 ', 1, N'P101')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A004 ', N'DV271020230017 ', 1, N'P101')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A005 ', N'DV271020230018 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A005 ', N'DV261020230002 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A005 ', N'DV271020230017 ', 0, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A006 ', N'DV261020230004 ', 2, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A007 ', N'DV261020230001 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A009 ', N'DV271020230016 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A010 ', N'DV261020230008 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A010 ', N'DV271020230011 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A008 ', N'DV271020230012 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A008 ', N'DV271020230016 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A009 ', N'DV271020230015 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A010 ', N'DV271020230017 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A011 ', N'DV261020230001 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A011 ', N'DV271020230018 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B004 ', N'DV261020230003 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B004 ', N'DV271020230015 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B004 ', N'DV271020230014 ', 2, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B006 ', N'DV261020230006 ', 3, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B007 ', N'DV261020230008 ', 3, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B007 ', N'DV261020230010 ', 5, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B008 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B008 ', N'DV271020230020 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C001 ', N'DV261020230006 ', 4, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B010 ', N'DV261020230009 ', 4, N'P304')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B009 ', N'DV271020230018 ', 1, N'P104')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C006 ', N'DV261020230010 ', 10, N'P202')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C005 ', N'DV261020230001 ', 5, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C006 ', N'DV261020230001 ', 1, N'P202')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C007 ', N'DV261020230009 ', 1, N'P104')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C011 ', N'DV261020230010 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C011 ', N'DV271020230011 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C011 ', N'DV271020230012 ', 4, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C011 ', N'DV261020230008 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD03122023C002 ', N'DV271020230020 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D002 ', N'DV271020230015 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D002 ', N'DV271020230017 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D002 ', N'DV271020230018 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D002 ', N'DV261020230010 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D002 ', N'DV261020230001 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV261020230002 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV261020230009 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV271020230014 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV271020230017 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV271020230018 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV271020230011 ', 1, N'P304            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV271020230012 ', 1, N'P304            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D015 ', N'DV271020230016 ', 6, N'P304            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D021 ', N'DV261020230006 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D021 ', N'DV261020230003 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D021 ', N'DV271020230015 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D021 ', N'DV271020230018 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D021 ', N'DV271020230016 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D021 ', N'DV271020230019 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D033 ', N'DV271020230011 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D033 ', N'DV271020230013 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D033 ', N'DV271020230017 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D033 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D033 ', N'DV271020230017 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D061 ', N'DV271020230012 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D061 ', N'DV261020230006 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D061 ', N'DV271020230015 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D064 ', N'DV261020230010 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D064 ', N'DV261020230009 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D064 ', N'DV271020230015 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D074 ', N'DV261020230010 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D074 ', N'DV271020230013 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D074 ', N'DV271020230014 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D077 ', N'DV261020230010 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D077 ', N'DV271020230017 ', 1, N'P103            ')
GO
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D075 ', N'DV271020230013 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230016 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D083 ', N'DV261020230009 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D083 ', N'DV271020230012 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D093 ', N'DV271020230012 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D093 ', N'DV271020230017 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D093 ', N'DV271020230018 ', 1, N'P301            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D095 ', N'DV271020230011 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D095 ', N'DV271020230016 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D095 ', N'DV271020230015 ', 15, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D095 ', N'DV261020230002 ', 4, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D095 ', N'DV271020230019 ', 1, N'P302            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D129 ', N'DV261020230009 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B017 ', N'DV261020230002 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B017 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B017 ', N'DV271020230013 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B018 ', N'DV261020230002 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B019 ', N'DV261020230006 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B021 ', N'DV261020230008 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B021 ', N'DV271020230011 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B021 ', N'DV261020230009 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B021 ', N'DV261020230004 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B022 ', N'DV261020230009 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B022 ', N'DV261020230006 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B022 ', N'DV271020230014 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B024 ', N'DV261020230004 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B024 ', N'DV271020230013 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B024 ', N'DV271020230012 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B024 ', N'DV271020230014 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B025 ', N'DV271020230012 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B025 ', N'DV271020230011 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B025 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B026 ', N'DV271020230011 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B026 ', N'DV271020230018 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B028 ', N'DV271020230015 ', 1, N'P101')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B035 ', N'DV261020230004 ', 1, N'P103')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B028 ', N'DV261020230009 ', 1, N'P101')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A012 ', N'DV261020230008 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV261020230010 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230012 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230016 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230017 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230018 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230019 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230020 ', 1, N'P104            ')
GO
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230020 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV261020230010 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023D080 ', N'DV271020230016 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B031 ', N'DV271020230016 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B031 ', N'DV271020230017 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B031 ', N'DV271020230019 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B031 ', N'DV271020230018 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B031 ', N'DV261020230004 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B030 ', N'DV261020230009 ', 1, N'P104')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B029 ', N'DV261020230010 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B029 ', N'DV271020230014 ', 1, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B031 ', N'DV271020230015 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B029 ', N'DV271020230014 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B031 ', N'DV271020230014 ', 1, N'P102')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD07122023B032 ', N'DV261020230008 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A005 ', N'DV271020230017 ', 0, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A012 ', N'DV271020230017 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A012 ', N'DV261020230009 ', 1, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A012 ', N'DV261020230004 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C002 ', N'DV261020230003 ', 3, N'P201')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023A012 ', N'DV261020230010 ', 2, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B001 ', N'DV271020230013 ', 3, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B001 ', N'DV271020230011 ', 1, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C014 ', N'DV261020230009 ', 8, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B003 ', N'DV261020230004 ', 4, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B003 ', N'DV261020230009 ', 1, N'P101            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023B003 ', N'DV261020230009 ', 8, N'P103            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C015 ', N'DV261020230009 ', 2, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C015 ', N'DV261020230010 ', 7, N'P201            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C016 ', N'DV261020230010 ', 2, N'P102            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C017 ', N'DV261020230009 ', 1, N'P104            ')
INSERT [dbo].[ChiTietDichVu] ([maHoaDon], [maDichVu], [soLuong], [maPhong]) VALUES (N'HD12122023C018 ', N'DV261020230009 ', 2, N'P201            ')
GO
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD03122023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD03122023C002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD03122023C003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD06122023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD06122023C001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD06122023C002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD06122023D001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD06122023D001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B001 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B001 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B003 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B003 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B004 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B005 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B006 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B006 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B007 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B008 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B008 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B008 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B009 ', N'P302            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B009 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B010 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B010 ', N'P402            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B011 ', N'P401            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B011 ', N'P403            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B012 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B013 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B013 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B013 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B014 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B015 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B016 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B016 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B016 ', N'P302            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B016 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B016 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B017 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B018 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B019 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B019 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B019 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B020 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B020 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B020 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B021 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B021 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B022 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B023 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B024 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B025 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B025 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B026 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B027 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B028 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B029 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B029 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B029 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B030 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B030 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B031 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B032 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B033 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B034 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B035 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B036 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B036 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023B036 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D102 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D103 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D105 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D106 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D109 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D109 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D111 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D111 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D114 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D115 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D117 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D118 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D120 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D120 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D120 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D122 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D122 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D123 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D123 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D123 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D124 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D124 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D125 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D125 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D125 ', N'P103            ')
GO
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D125 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D125 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D126 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D126 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D126 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D126 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D127 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D127 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D128 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D128 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD07122023D129 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B002 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B003 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B004 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B005 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B006 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B006 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B007 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B008 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023B009 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023C001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023C001 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023C002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023C003 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023C003 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD08122023C004 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023C001 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023C002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023C002 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023C003 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D003 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D003 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D004 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D005 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D005 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D005 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D006 ', N'P302            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D007 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D007 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D008 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D009 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D009 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D010 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D011 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D012 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D013 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D014 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D014 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D014 ', N'P401            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D015 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D015 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD09122023D015 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023B001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023B002 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D004 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D005 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D005 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD10122023D005 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A003 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A003 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A005 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A005 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A005 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A005 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A006 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A006 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A007 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A007 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A008 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A009 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A009 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A010 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A010 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A010 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A011 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A012 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023A012 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B002 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B003 ', N'P102            ')
GO
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B003 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B005 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B006 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B006 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B007 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B008 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B008 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B009 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B009 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B010 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023B011 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C002 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C003 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C004 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C005 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P302            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C006 ', N'P401            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C007 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C008 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C009 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C010 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C010 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C011 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C011 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C012 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C013 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C013 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C013 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C014 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C015 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C016 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C017 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C017 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C018 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023C019 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023D001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023D002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023D002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023D002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023D002 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023D003 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD12122023D004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A005 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A006 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A006 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A006 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A007 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A007 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A007 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A008 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A008 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A008 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A009 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A009 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A009 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A010 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A010 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A010 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A012 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A015 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A016 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A016 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A016 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A017 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023A018 ', N'P302            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B002 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B002 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B002 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023B003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023C001 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023C001 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023C001 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023C001 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023C001 ', N'P401            ')
GO
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023C001 ', N'P402            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD16112023D001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD20112023D001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD20112023D002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023A001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023A002 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023A003 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023A003 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023A003 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023A004 ', N'P303            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023B001 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023D001 ', N'P404            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023D002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD21112023D003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A003 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A005 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A006 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A007 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A008 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A008 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A008 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A009 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A010 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A011 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A012 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A013 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023A014 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023B001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023B001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023B001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023B002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C002 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C002 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C003 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C004 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C005 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C005 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD22112023C006 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023B001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023C001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023C001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023D001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023D001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023D002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD23112023D002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023A001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023A002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023A002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023A002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D002 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D002 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D002 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D003 ', N'P201            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D004 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D004 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD24112023D004 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD26112023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD26112023C001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD26112023C001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD26112023C001 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B001 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B003 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B004 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B006 ', N'P304            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B007 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B007 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B008 ', N'P202            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B008 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B008 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B009 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B009 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B009 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B010 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B011 ', N'P203            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B011 ', N'P204            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B011 ', N'P301            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B012 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B012 ', N'P103            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD27112023B012 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD28112023C001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD28112023C001 ', N'P103            ')
GO
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD28112023C001 ', N'P104            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD29112023C001 ', N'P101            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD29112023C001 ', N'P102            ')
INSERT [dbo].[ChiTietHoaDon] ([maHoaDon], [maPhong]) VALUES (N'HD29112023C002 ', N'P301            ')
GO
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230001 ', N'Bia', N'VND', 20000, 1, N'TTDV261020230001')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230002 ', N'Đậu phộng rang', N'VND', 10000, 1, N'TTDV261020230002')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230003 ', N'Bánh mì', N'VND', 15000, 1, N'TTDV261020230003')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230004 ', N'Snack', N'VND', 5000, 1, N'TTDV261020230004')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230006 ', N'Cơm rang', N'VND', 20000, 1, N'TTDV261020230006')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230008 ', N'Trái cây', N'VND', 60000, 1, N'TTDV261020230008')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230009 ', N'Khô mực', N'VND', 80000, 1, N'TTDV261020230009')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV261020230010 ', N'Thuốc lá', N'VND', 20000, 1, N'TTDV261020230010')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230011 ', N'7 UP', N'VND', 12000, 1, N'TTDV261020230011')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230012 ', N'Không độ', N'VND', 12000, 1, N'TTDV261020230012')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230013 ', N'Mirinda', N'VND', 12000, 1, N'TTDV261020230013')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230014 ', N'Nước C2 vị bạc hà', N'VND', 10000, 1, N'TTDV261020230014')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230015 ', N'Nước C2 vị chanh', N'VND', 10000, 1, N'TTDV261020230015')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230016 ', N'Nước suối', N'VND', 8000, 1, N'TTDV261020230016')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230017 ', N'Red bull', N'VND', 15000, 1, N'TTDV261020230017')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230018 ', N'Sting', N'VND', 12000, 1, N'TTDV261020230018')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230019 ', N'Twister', N'VND', 11000, 1, N'TTDV261020230019')
INSERT [dbo].[DichVu] ([maDichVu], [tenDichVu], [donViTinh], [donGia], [trangThai], [maThongTinDichVu]) VALUES (N'DV271020230020 ', N'Nuoc', N'VND', 20000, 0, N'TTDV261020230023')
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD03122023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-03T17:20:36.763' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-03T17:21:04.847' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD03122023C002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-03T18:13:38.053' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-03T18:13:57.007' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD03122023C003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-03T19:49:51.510' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD06122023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-06T22:41:08.687' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-06T22:41:17.290' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD06122023C002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-06T22:44:30.580' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-06T22:57:29.487' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD06122023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-06T23:04:19.200' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:37:27.657' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:37:40.520' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:37:27.657' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:38:30.877' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:38:45.053' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:38:54.883' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:38:45.053' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:39:08.113' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:40:36.797' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:41:32.020' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B006 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:40:36.797' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:42:12.323' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B007 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:40:36.797' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:42:26.947' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B008 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:43:55.667' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:44:15.977' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B009 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:43:55.667' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:44:48.990' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B010 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:45:01.993' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:45:27.313' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B011 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:45:01.993' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:45:58.223' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B012 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:45:01.993' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:46:29.543' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B013 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:48:30.877' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:50:40.377' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B014 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:48:30.877' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:50:52.870' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B015 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:51:05.923' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T13:52:45.447' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B016 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T13:51:05.923' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:06:22.977' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B017 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:06:33.877' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:07:26.767' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B018 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:06:33.877' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:08:08.377' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B019 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:06:33.877' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:08:41.037' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B020 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:10:08.947' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:10:16.783' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B021 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:10:50.640' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:11:47.530' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B022 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:10:50.640' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:13:01.797' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B023 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:10:50.640' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:14:28.513' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B024 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:14:39.617' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:15:08.277' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B025 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:14:39.617' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:28:35.657' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B026 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:14:39.617' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:37:10.553' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B027 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:37:22.350' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:37:58.743' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B028 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:37:22.350' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:38:10.417' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B029 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:38:23.123' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:39:18.117' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B030 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:38:23.123' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:39:39.413' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B031 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:38:23.123' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:39:55.790' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B032 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:41:16.590' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:46:07.113' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B033 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:44:32.563' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:45:10.193' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B034 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:44:32.563' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:45:36.753' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B035 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:44:32.563' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T14:45:55.727' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023B036 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T14:52:38.503' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T00:00:17.027' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T01:11:26.503' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T01:13:51.763' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T01:15:01.323' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T01:31:40.993' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T01:31:59.907' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T01:35:13.157' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T01:35:22.907' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T01:37:29.077' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T01:37:38.887' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D006 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T01:39:45.047' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T01:39:54.050' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D007 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T01:39:45.047' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T01:40:16.003' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D008 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:36:00.247' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:36:20.153' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D009 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:36:00.247' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:38:21.787' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D010 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:36:00.247' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D011 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:39:12.137' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:39:19.930' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D012 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:39:12.137' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:39:31.670' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D013 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:39:45.320' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:40:37.457' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D014 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:39:45.320' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D015 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:42:55.193' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:44:28.800' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D016 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:42:55.193' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D017 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:48:07.717' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:48:16.440' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D018 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:48:07.717' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:48:26.323' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D019 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:48:07.717' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:48:34.953' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D020 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:48:07.717' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D021 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:48:49.900' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:49:26.157' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D022 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:48:49.900' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D023 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:51:42.793' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:53:07.067' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D024 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:51:42.793' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D025 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:56:28.197' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:56:37.123' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D026 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T02:56:28.197' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T02:56:48.797' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D027 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:00:16.283' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:00:40.247' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D028 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:00:16.283' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D029 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:06:38.350' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:06:57.003' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D030 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:06:38.350' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D031 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:08:50.503' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:09:32.107' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D032 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:08:50.503' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D033 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:13:04.030' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:13:38.363' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D034 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:13:04.030' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D035 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:15:17.663' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:15:45.787' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D036 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:15:17.663' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D037 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:16:53.807' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:17:24.220' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D038 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:16:53.807' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D039 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:18:57.537' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:19:23.607' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D040 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:18:57.537' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D041 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:20:45.987' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:21:10.037' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D042 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:20:45.987' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D043 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:22:34.843' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:23:01.573' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D044 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:22:34.843' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D045 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:35:14.303' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:35:37.007' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D046 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:35:14.303' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D047 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:36:50.263' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:37:20.063' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D048 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:36:50.263' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D049 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:38:34.867' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:39:05.197' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D050 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:38:34.867' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D051 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:42:58.787' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:43:29.847' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D052 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:42:58.787' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D053 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:48:07.790' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:48:34.807' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D054 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:48:07.790' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D055 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:50:24.347' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:50:50.737' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D056 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:50:24.347' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D057 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:53:01.820' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:53:26.787' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D058 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:53:01.820' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:55:01.623' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D059 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:56:44.007' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:57:07.633' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D060 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:56:44.007' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T03:59:56.827' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D061 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T03:56:44.007' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D062 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:06:56.303' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:07:22.220' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D063 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:06:56.303' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:09:10.097' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D064 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:06:56.303' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D065 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:11:38.540' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:12:21.057' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D066 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:11:38.540' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D067 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:13:58.963' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:14:35.570' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D068 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:13:58.963' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D069 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:15:37.187' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:15:50.610' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D070 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:16:05.037' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:16:11.733' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D071 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:16:05.037' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D072 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:18:24.613' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:18:50.487' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D073 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:18:24.613' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:22:53.873' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D074 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:18:24.613' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D075 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:26:08.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:26:35.700' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D076 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:26:08.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:27:17.957' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D077 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:26:08.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:27:44.473' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D078 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:28:01.090' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:28:47.100' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D079 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:28:01.090' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:30:49.097' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D080 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:28:01.090' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:33:14.333' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D081 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:33:36.227' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:34:05.127' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D082 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:33:36.227' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:34:46.307' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D083 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:33:36.227' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:37:51.813' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D084 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:40:55.620' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:41:37.703' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D085 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:40:55.620' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:43:18.577' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D086 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:40:55.620' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:48:21.503' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D087 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:40:55.620' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:48:49.730' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D088 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:49:03.503' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:49:29.950' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D089 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:49:03.503' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:49:48.170' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D090 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:49:59.607' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:50:30.167' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D091 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:49:59.607' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:54:14.140' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D092 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:55:00.387' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:55:53.020' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D093 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:55:00.387' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:56:33.043' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D094 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:58:03.280' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T04:59:15.377' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D095 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T04:58:03.280' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:00:26.260' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D096 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:06:56.223' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:07:08.507' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D097 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:06:56.223' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:07:18.750' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D098 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:06:56.223' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:09:49.130' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D099 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:10:35.947' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:10:48.377' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D100 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:10:35.947' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:12:33.403' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D101 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:37:45.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:37:57.670' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D102 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:37:45.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:38:08.170' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D103 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:37:45.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:38:16.940' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D104 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:38:32.227' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:39:08.503' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D105 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:38:32.227' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:39:36.227' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D106 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:38:32.227' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:39:46.627' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D107 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:40:41.363' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:41:32.757' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D108 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:40:41.363' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:41:51.287' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D109 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:40:41.363' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:42:07.277' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D110 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:42:34.883' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:43:30.347' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D111 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:42:34.883' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:44:05.330' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D112 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:42:34.883' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D113 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:46:19.107' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:46:32.643' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D114 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:46:19.107' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:49:19.183' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D115 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:46:19.107' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:49:40.307' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D116 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:50:13.130' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:50:30.130' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D117 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:50:13.130' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:52:10.977' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D118 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:50:13.130' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:56:22.943' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D119 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:56:35.980' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:56:46.897' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D120 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:56:35.980' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T05:59:22.883' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D121 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:59:34.980' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:00:01.453' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D122 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T05:59:34.980' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:02:28.843' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D123 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T06:02:43.987' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:02:59.237' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D124 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T06:02:43.987' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:15:38.227' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D125 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T06:15:51.097' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:16:04.840' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D126 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T06:15:51.097' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:17:11.033' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D127 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T06:15:51.097' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:17:29.453' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D128 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T06:15:51.097' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:17:42.187' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD07122023D129 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-07T06:15:51.097' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-07T06:18:02.513' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T15:17:38.353' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T15:18:49.990' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T15:17:38.353' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T15:19:10.287' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T15:17:38.353' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T15:19:23.147' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B004 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T16:20:03.327' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T16:27:02.600' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B005 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T16:20:03.327' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T16:28:53.080' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B006 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T16:30:48.253' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T16:34:56.690' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B007 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T16:30:48.253' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T16:35:47.437' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B008 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T16:37:26.173' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T17:43:36.047' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023B009 ', N'KH61890001      ', N'NV56920002      ', N'PD08122023B002 ', NULL, CAST(N'2023-12-08T16:56:31.500' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T16:57:33.090' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T17:10:16.987' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T17:13:50.453' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023C002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T17:10:16.987' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T17:15:52.957' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023C003 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T17:17:41.093' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T17:18:53.833' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD08122023C004 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-08T17:17:41.093' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-08T17:20:29.127' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T19:30:32.507' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T19:31:22.207' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023C002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T19:30:32.507' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T19:31:32.110' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023C003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T19:34:16.410' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T19:34:23.227' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T01:02:03.110' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T01:03:09.247' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T01:15:39.890' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T01:16:05.547' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T01:40:27.630' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T01:40:37.607' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D004 ', N'KH56920001      ', N'NV56920002      ', N'PD09122023D002 ', NULL, CAST(N'2023-12-09T03:34:08.027' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T03:34:19.807' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T03:34:49.373' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T04:48:31.830' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D006 ', N'KH56920001      ', N'NV56920002      ', N'PD09122023D003 ', NULL, CAST(N'2023-12-09T04:43:22.750' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T04:48:49.720' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D007 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T04:49:00.837' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T04:49:52.187' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D008 ', N'KH56920001      ', N'NV56920002      ', N'PD09122023D004 ', NULL, CAST(N'2023-12-09T04:51:00.047' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T04:53:49.113' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D009 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T04:56:05.703' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T04:57:58.163' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D010 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T04:58:13.390' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T04:59:00.203' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D011 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T04:59:19.937' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T05:03:10.197' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D012 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T05:06:12.223' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T05:11:01.617' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D013 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T05:11:16.223' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T05:14:10.993' AS DateTime))
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D014 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T05:19:30.347' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T06:26:05.847' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD09122023D015 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-09T06:27:40.193' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-09T19:30:16.547' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T15:49:08.327' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-10T16:38:55.883' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T15:49:21.657' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B003 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:35:10.797' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B004 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:05.743' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B005 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:06.563' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B006 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:06.707' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B007 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:06.870' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B008 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:07.010' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B009 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:07.157' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B010 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:07.317' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B011 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:07.477' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B012 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:07.803' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B013 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:07.980' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B014 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:08.153' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B015 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:08.350' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B016 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:08.523' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B017 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:09.257' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B018 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:09.440' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B019 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:09.620' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B020 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:09.790' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B021 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:09.950' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B022 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:10.107' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B023 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:10.270' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B024 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:10.443' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B025 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:10.657' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B026 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:10.817' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B027 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:10.973' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B028 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:11.470' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B029 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:11.633' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B030 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:11.777' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B031 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:12.827' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B032 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:13.007' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B033 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:13.667' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023B034 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T16:36:13.807' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T00:10:43.247' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-10T00:10:54.697' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T00:11:09.087' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-10T00:11:16.557' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023D003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T00:11:53.960' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-10T00:12:19.880' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023D004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T00:11:59.820' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-10T00:12:06.997' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD10122023D005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-10T00:12:32.000' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-10T00:12:37.560' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T09:22:43.300' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T10:33:01.920' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T10:33:16.397' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:08:43.147' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:09:18.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:10:20.640' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:09:18.257' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:10:50.180' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:11:07.467' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:25:21.163' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A006 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:25:37.360' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:37:15.477' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A007 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:37:26.857' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:47:48.213' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A008 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:48:06.033' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:49:02.280' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A009 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:48:06.033' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:50:31.453' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A010 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:50:49.633' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:51:56.860' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A011 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:52:13.967' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T11:52:54.837' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023A012 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T11:52:13.967' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:06:20.860' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:06:59.447' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:09:18.553' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:09:28.210' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:26:13.593' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:26:25.540' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:29:38.340' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:29:57.490' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:46:42.667' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:46:53.597' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:49:12.720' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B006 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:46:53.597' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:49:22.967' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B007 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:51:07.503' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T12:59:09.970' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B008 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:59:22.310' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T13:09:25.630' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B009 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:59:22.310' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T13:09:44.037' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B010 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T12:59:22.310' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T13:10:05.747' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023B011 ', N'KH56970001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T13:13:20.310' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T13:13:28.307' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T17:23:32.303' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T17:26:22.590' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T17:46:51.153' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T17:49:34.077' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C003 ', N'KH56920001      ', N'NV56920002      ', N'PD12122023C001 ', NULL, CAST(N'2023-12-12T19:15:35.390' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T19:46:31.553' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T19:25:06.687' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T19:46:45.797' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C005 ', N'KH56960001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T19:40:26.007' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T19:44:54.710' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C006 ', N'KH56960001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T19:40:26.007' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T19:46:13.930' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C007 ', N'KH56920001      ', N'NV56920002      ', N'PD12122023C002 ', NULL, CAST(N'2023-12-12T19:52:00.387' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T19:52:25.517' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C008 ', N'KH56920001      ', N'NV56920002      ', N'PD12122023C005 ', NULL, CAST(N'2023-12-12T19:53:10.547' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T19:53:21.080' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C009 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T19:56:53.977' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T20:03:35.393' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C010 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T19:56:53.977' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T20:09:11.750' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C011 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T19:56:53.977' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T20:11:43.110' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C012 ', N'KH56920001      ', N'NV56920002      ', N'PD12122023C004 ', NULL, CAST(N'2023-12-12T20:11:52.487' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T20:12:01.237' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C013 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T20:48:22.170' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T20:49:31.153' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C014 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T20:48:48.960' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T22:17:37.403' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C015 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T20:54:31.613' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T22:16:34.207' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C016 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T21:38:39.573' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T22:17:10.190' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C017 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T22:17:47.980' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T22:18:08.427' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C018 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T22:18:20.683' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T22:23:10.587' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023C019 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T22:35:22.717' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T23:09:55.733' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T23:16:06.290' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T23:16:14.450' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T23:22:27.393' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T23:27:49.560' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023D003 ', N'KH61890001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T23:23:08.343' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T23:27:58.760' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD12122023D004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-12T23:49:10.483' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-12T23:49:17.123' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A001 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:04:10.687' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:04:55.140' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A002 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:06:50.087' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:07:05.780' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A003 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:09:46.400' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:14:37.263' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A004 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:17:12.713' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:17:42.483' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A005 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:18:01.797' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:19:00.883' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A006 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:21:39.287' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:46:48.040' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A007 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:22:19.497' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:22:42.077' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A008 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:23:08.957' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:23:54.197' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A009 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:24:31.973' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:24:57.453' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A010 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T10:28:35.577' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:28:49.277' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A012 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T11:04:48.933' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T11:04:57.353' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A013 ', N'KH56920001      ', N'NV56920001      ', N'PD16112023A003 ', NULL, CAST(N'2023-11-16T11:22:31.943' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T11:28:45.807' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A014 ', N'KH56920001      ', N'NV56920001      ', N'PD16112023A004 ', NULL, CAST(N'2023-11-16T11:30:55.823' AS DateTime), N'Đã hủy', NULL)
GO
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A015 ', N'KH56920001      ', N'NV56920001      ', N'PD16112023A005 ', NULL, CAST(N'2023-11-16T11:41:21.613' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T11:41:35.407' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A016 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T11:41:51.677' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T11:42:01.100' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A017 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T11:43:44.580' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T11:43:51.267' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023A018 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T11:46:14.590' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T11:46:26.493' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023B001 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T12:52:24.567' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T12:52:45.400' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023B002 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T12:53:08.653' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T12:54:14.940' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023B003 ', N'KH56920001      ', N'NV56920001      ', N'PD16112023B001 ', NULL, CAST(N'2023-11-16T12:55:30.713' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T12:56:10.580' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023C001 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T22:00:30.040' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T23:05:03.167' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD16112023D001 ', N'KH56920001      ', N'NV56920001      ', NULL, NULL, CAST(N'2023-11-16T01:28:34.280' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-16T10:03:30.640' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD20112023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-20T23:21:26.353' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-20T23:24:16.940' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD20112023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-20T23:24:46.637' AS DateTime), N'Đã thanh toán', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023A001 ', N'KH56920001      ', N'NV56920002      ', N'PD21112023A001 ', NULL, CAST(N'2023-11-21T10:33:53.357' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-21T10:34:15.327' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023A002 ', N'KH56920001      ', N'NV56920002      ', N'PD21112023A005 ', NULL, CAST(N'2023-11-21T10:37:21.217' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-21T10:37:39.577' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023A003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-21T10:38:37.943' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-21T10:38:48.330' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023A004 ', N'KH56920001      ', N'NV56920002      ', N'PD21112023A006 ', NULL, CAST(N'2023-11-21T10:52:47.493' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-21T10:53:00.087' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023B001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-21T16:52:50.533' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-21T16:53:35.977' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023D001 ', N'KH56920001      ', N'NV56920002      ', N'PD21112023D002 ', NULL, CAST(N'2023-11-21T00:25:34.597' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-21T00:25:48.290' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-21T00:37:27.930' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD21112023D003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-21T00:40:36.610' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-21T00:40:56.093' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD2122023C001  ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-12-02T22:29:51.557' AS DateTime), N'Đã thanh toán', CAST(N'2023-12-02T22:30:00.563' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T08:05:17.833' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T08:09:46.770' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T08:32:19.120' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:39:22.133' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T09:18:17.930' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:39:11.300' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A004 ', N'KH61890001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T09:19:15.330' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:39:00.457' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A005 ', N'KH61890001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T09:19:31.057' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:38:52.390' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A006 ', N'KH61890001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T09:19:38.320' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:38:45.943' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A007 ', N'KH61890001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T09:19:46.820' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:38:38.003' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A008 ', N'KH98430001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T09:20:06.877' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:38:27.860' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A009 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T09:39:36.180' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:40:27.137' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A010 ', N'KH56920001      ', N'NV56920002      ', N'PD22112023A002 ', NULL, CAST(N'2023-11-22T09:41:51.300' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T09:44:53.490' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A011 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T10:07:09.630' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T14:11:40.320' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A012 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T10:28:03.973' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T14:11:28.710' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A013 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T10:29:39.977' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T14:11:09.647' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023A014 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T10:29:55.590' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T14:10:36.173' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023B001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T14:12:11.393' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T14:12:22.317' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023B002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T14:12:48.703' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T14:19:02.900' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T22:36:22.390' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T22:37:39.063' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023C002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T22:41:48.443' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T22:53:12.723' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023C003 ', N'KH56920001      ', N'NV56920002      ', N'PD22112023C004 ', NULL, CAST(N'2023-11-22T22:46:23.037' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-22T22:53:01.203' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023C004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T22:53:35.533' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023C005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-22T22:57:20.957' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD22112023C006 ', N'KH56920001      ', N'NV56920002      ', N'PD22112023C009 ', NULL, CAST(N'2023-11-22T22:58:32.913' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD23112023B001 ', N'KH56920001      ', N'NV56920002      ', N'PD23112023B002 ', NULL, CAST(N'2023-11-23T14:09:30.823' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-23T14:09:39.277' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD23112023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-23T22:43:28.620' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-23T22:48:34.470' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD23112023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-23T23:29:21.803' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-23T23:32:18.740' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD23112023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-23T23:32:31.937' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD24112023A001 ', N'KH56920001      ', N'NV56920002      ', N'PD24112023A001 ', NULL, CAST(N'2023-11-24T11:00:49.167' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-24T11:00:58.487' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD24112023A002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-24T11:03:43.553' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD24112023D001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-24T00:07:58.757' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-24T00:31:37.047' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD24112023D002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-24T00:31:53.363' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-24T00:44:24.163' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD24112023D003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-24T00:33:19.150' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-24T10:40:08.070' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD24112023D004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-24T00:46:03.900' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-24T10:36:57.200' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD26112023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-26T20:07:59.173' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-26T20:08:23.860' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B001 ', N'KH56920001      ', N'NV56920002      ', N'PD27112023B001 ', NULL, CAST(N'2023-11-27T15:44:17.227' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T15:46:10.867' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:44:39.260' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B003 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:44:54.753' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T15:48:28.713' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B004 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:45:29.210' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T15:46:00.967' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B005 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:46:46.497' AS DateTime), N'Đã hủy', NULL)
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B006 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:46:56.330' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T15:47:15.943' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B007 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:49:43.847' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T15:51:17.263' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B008 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:50:07.160' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T15:51:57.577' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B009 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:53:16.407' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T15:54:07.077' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B010 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:54:28.763' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T16:01:35.073' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B011 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T15:57:52.707' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T16:04:38.920' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD27112023B012 ', N'KH61890001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-27T16:44:06.057' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-27T20:53:51.837' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD28112023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-28T22:14:04.967' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-28T22:30:59.463' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD29112023C001 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-29T17:09:44.280' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-29T19:08:10.143' AS DateTime))
INSERT [dbo].[HoaDon] ([maHoaDon], [maKhachHang], [maNhanVien], [maPhieuDat], [maKhuyenMai], [ngayLap], [trangThai], [thoiGianKetThuc]) VALUES (N'HD29112023C002 ', N'KH56920001      ', N'NV56920002      ', NULL, NULL, CAST(N'2023-11-29T19:11:54.497' AS DateTime), N'Đã thanh toán', CAST(N'2023-11-29T19:12:16.677' AS DateTime))
GO
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [diemThuong], [ghiChu]) VALUES (N'KH42560001      ', N'Nguyễn Thiên Tứ', 1, CAST(N'2003-01-02' AS Date), N'Gò Vấp, TP.HCM', N'0935014256', 0, N'SV IUH')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [diemThuong], [ghiChu]) VALUES (N'KH56920001      ', N'Lê Minh Quang', 1, CAST(N'2003-02-19' AS Date), N'Gò Vấp, TP.HCM', N'0364835692', 0, N'SV Ngoại Thương')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [diemThuong], [ghiChu]) VALUES (N'KH56960001      ', N'Nguyen Le', 1, CAST(N'2003-12-05' AS Date), N'Gò Vấp', N'0364835696', 0, N'Hay ghé thăm')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [diemThuong], [ghiChu]) VALUES (N'KH56970001      ', N'Nguyễn Minh', 1, CAST(N'2003-12-16' AS Date), N'Gò Vấp', N'0364835697', 0, N'SV, IUH')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [diemThuong], [ghiChu]) VALUES (N'KH61890001      ', N'Nguyễn Thị Nga', 0, CAST(N'2003-09-23' AS Date), N'Gò Vấp, TP.HCM', N'0776466189', 200, N'Không có ghi chú nào')
INSERT [dbo].[KhachHang] ([maKhachHang], [hoTen], [gioiTinh], [ngaySinh], [diaChi], [soDienThoai], [diemThuong], [ghiChu]) VALUES (N'KH98430001      ', N'Nguyễn Thành Cương', 1, CAST(N'2003-07-31' AS Date), N'Thủ Đức, TP.HCM', N'0935019843', 100, N'Không có ghi chú nào')
GO
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKhuyenMai], [maGiamGia], [ngayBatDau], [ngayKetThuc], [tongSoLuong], [chieuKhau], [moTa]) VALUES (N'10122023001     ', N'Giảm giá 20/10', N'GIAMGIA2010', CAST(N'2023-10-22T00:00:00.000' AS DateTime), CAST(N'2023-11-22T00:00:00.000' AS DateTime), 100, 10, N'Nothing')
INSERT [dbo].[KhuyenMai] ([maKhuyenMai], [tenKhuyenMai], [maGiamGia], [ngayBatDau], [ngayKetThuc], [tongSoLuong], [chieuKhau], [moTa]) VALUES (N'10122023002     ', N'Giảm giá 21/11', N'GIAMGIA2111', CAST(N'2023-11-20T00:00:00.000' AS DateTime), CAST(N'2023-11-22T00:00:00.000' AS DateTime), 50, 10, N'Nothing')
GO
INSERT [dbo].[LoaiNhanVien] ([maLoaiNhanVien], [tenLoaiNhanVien]) VALUES (N'LNV000          ', N'Quản lý')
INSERT [dbo].[LoaiNhanVien] ([maLoaiNhanVien], [tenLoaiNhanVien]) VALUES (N'LNV001          ', N'Nhân viên thu ngân')
INSERT [dbo].[LoaiNhanVien] ([maLoaiNhanVien], [tenLoaiNhanVien]) VALUES (N'LNV002          ', N'Nhân viên tiếp tân')
GO
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoaiPhong], [soLuongKhachToiDa], [giaTien], [hinhAnh], [moTa]) VALUES (N'ORD1            ', N'Loại phòng thường 5 người', 5, 70000, N'phongTHUONG1.jpg                                                                                                                                                                                                                                               ', N'Loại phòng giá rẻ, phù hợp cho sinh viên IUH
tuyệt vời')
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoaiPhong], [soLuongKhachToiDa], [giaTien], [hinhAnh], [moTa]) VALUES (N'ORD2            ', N'Loại phòng thường 12 người', 12, 100000, N'phongTHUONG2.jpg                                                                                                                                                                                                                                               ', N'Phòng cho 12 người sử dụng')
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoaiPhong], [soLuongKhachToiDa], [giaTien], [hinhAnh], [moTa]) VALUES (N'VIP1            ', N'Loại phòng vip 5 người', 5, 150000, N'phongVIP1.jpg                                                                                                                                                                                                                                                  ', N'Phòng cho 5 người sử dụng')
INSERT [dbo].[LoaiPhong] ([maLoaiPhong], [tenLoaiPhong], [soLuongKhachToiDa], [giaTien], [hinhAnh], [moTa]) VALUES (N'VIP2            ', N'Loại phòng vip 12 người', 12, 200000, N'phongVIP2.jpg                                                                                                                                                                                                                                                  ', N'Phòng cho 12 người sử dụng')
GO
INSERT [dbo].[NhanVien] ([maNhanVien], [maLoaiNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soDienThoai], [CCCD], [diaChi], [trangThai], [anhThe]) VALUES (N'NV42560001      ', N'LNV001          ', N'Nguyễn Thiên Tứ', 1, CAST(N'2003-11-12' AS Date), N'0935014256', N'054203126452', N'Thủ Đức, Hồ Chí Minh', N'Đang làm', N'tuzoro.jpg                                                                                          ')
INSERT [dbo].[NhanVien] ([maNhanVien], [maLoaiNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soDienThoai], [CCCD], [diaChi], [trangThai], [anhThe]) VALUES (N'NV56910001      ', N'LNV001          ', N'Lê Long', 1, CAST(N'2003-12-09' AS Date), N'0364835691', N'054203330981', N'đig', N'Đang làm', N'noImage.jpg                                                                                         ')
INSERT [dbo].[NhanVien] ([maNhanVien], [maLoaiNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soDienThoai], [CCCD], [diaChi], [trangThai], [anhThe]) VALUES (N'NV56920001      ', N'LNV001          ', N'Lê Minh Quang', 1, CAST(N'2003-01-01' AS Date), N'0364835692', N'054203030983', N'Gò Vấp, Hồ Chí Minh', N'Đang làm', N'quangnami.jfif                                                                                      ')
INSERT [dbo].[NhanVien] ([maNhanVien], [maLoaiNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soDienThoai], [CCCD], [diaChi], [trangThai], [anhThe]) VALUES (N'NV56920002      ', N'LNV000          ', N'Lê Nguyễn Thành Tứ', 1, CAST(N'2003-01-01' AS Date), N'0364835692', N'054203330983', N'Gò Vấp, Hồ Chí Minh', N'Đang làm', N'sunnyquanly.jpg                                                                                     ')
INSERT [dbo].[NhanVien] ([maNhanVien], [maLoaiNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soDienThoai], [CCCD], [diaChi], [trangThai], [anhThe]) VALUES (N'NV61890001      ', N'LNV001          ', N'Nguyễn Nga', 0, CAST(N'2003-01-01' AS Date), N'0776466189', N'012943666212', N'Gò Vấp, Hồ Chí Minh', N'Đang làm', N'ngaluffy.png                                                                                        ')
INSERT [dbo].[NhanVien] ([maNhanVien], [maLoaiNhanVien], [hoTen], [gioiTinh], [ngaySinh], [soDienThoai], [CCCD], [diaChi], [trangThai], [anhThe]) VALUES (N'NV98430001      ', N'LNV001          ', N'Nguyễn Thành Cương', 1, CAST(N'2003-01-01' AS Date), N'0935019843', N'054203000983', N'Gò Vấp, Hồ Chí Minh', N'Đang làm', N'cuongcavoi.jpg                                                                                      ')
GO
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD08122023B001 ', N'P202            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-08T16:43:05.577' AS DateTime), CAST(N'2023-12-24T00:00:00.000' AS DateTime), 40000, N'Đã hủy', N'')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD08122023B002 ', N'P201            ', N'NV56920002      ', N'KH61890001      ', CAST(N'2023-12-08T16:52:38.500' AS DateTime), CAST(N'2023-12-08T16:59:00.000' AS DateTime), 40000, N'Đã nhận phòng', N'')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD09122023D001 ', N'P201            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-09T01:49:08.887' AS DateTime), CAST(N'2023-12-09T02:00:00.000' AS DateTime), 40000, N'Hết hạn', N'abc')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD09122023D002 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-09T03:10:21.537' AS DateTime), CAST(N'2023-12-09T04:05:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'xxxx')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD09122023D003 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-09T04:43:10.513' AS DateTime), CAST(N'2023-12-09T05:31:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'abc')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD09122023D004 ', N'P403            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-09T04:50:40.407' AS DateTime), CAST(N'2023-12-09T05:40:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'abc')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD10122023A003 ', N'P103            ', N'NV61890001      ', N'KH56920001      ', CAST(N'2023-10-12T08:00:00.000' AS DateTime), CAST(N'2023-12-13T09:00:00.000' AS DateTime), 50000, N'Hết hạn', N'Nothing')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD10122023A004 ', N'P104            ', N'NV61890001      ', N'KH42560001      ', CAST(N'2023-10-12T08:00:00.000' AS DateTime), CAST(N'2023-12-13T09:13:00.000' AS DateTime), 100000, N'Hết hạn', N'Nothing')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD11122023A001 ', N'P101            ', N'NV61890001      ', N'KH56920001      ', CAST(N'2023-11-12T08:00:00.000' AS DateTime), CAST(N'2023-11-12T08:00:00.000' AS DateTime), 50000, N'Hết hạn', N'Nothing')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD11122023A002 ', N'P102            ', N'NV61890001      ', N'KH42560001      ', CAST(N'2023-11-12T08:00:00.000' AS DateTime), CAST(N'2023-11-12T08:00:00.000' AS DateTime), 100000, N'Hết hạn', N'Nothing')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD12122023C001 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-12T19:15:12.467' AS DateTime), CAST(N'2023-12-12T20:14:00.000' AS DateTime), 70000, N'Đã nhận phòng', N'Khách nhận phòng có thể sớm hơn')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD12122023C002 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-12T19:47:49.857' AS DateTime), CAST(N'2023-12-12T20:00:00.000' AS DateTime), 70000, N'Đã nhận phòng', N'test đặt phòng nè')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD12122023C003 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-12T19:48:25.780' AS DateTime), CAST(N'2023-12-13T17:00:00.000' AS DateTime), 70000, N'Đã hủy', N'test đặt phòng ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD12122023C004 ', N'P203            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-12T19:49:28.047' AS DateTime), CAST(N'2023-12-12T21:00:00.000' AS DateTime), 70000, N'Đã nhận phòng', N'test đặt phòng ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD12122023C005 ', N'P203            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-12T19:50:44.160' AS DateTime), CAST(N'2023-12-12T20:53:00.000' AS DateTime), 70000, N'Đã nhận phòng', N'test đặt phòng ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD12122023D001 ', N'P104            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-12-12T23:29:40.513' AS DateTime), CAST(N'2023-12-12T09:28:00.000' AS DateTime), 100000, N'Đã hủy', N'Test đặt phòng ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD13112023B001 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-13T16:55:00.000' AS DateTime), CAST(N'2023-11-13T17:55:00.000' AS DateTime), 20000, N'Hết hạn', N'Quang đặt phòng nè !!!')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD13112023C002 ', N'P403            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-13T17:21:00.000' AS DateTime), CAST(N'2023-11-14T17:21:00.000' AS DateTime), 20000, N'Hết hạn', N'Demo 01')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD13112023C003 ', N'P404            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-13T20:23:00.000' AS DateTime), CAST(N'2023-11-13T21:50:00.000' AS DateTime), 40000, N'Hết hạn', N'hi')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD14112023B003 ', N'P103            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-14T16:51:40.877' AS DateTime), CAST(N'2023-11-14T16:51:40.877' AS DateTime), 0, N'Hết hạn', N'NV56920001      ')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD14112023C001 ', N'P104            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-14T21:58:10.680' AS DateTime), CAST(N'2023-11-14T21:58:10.680' AS DateTime), 0, N'Hết hạn', N'NV56920001      ')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD14112023D001 ', N'P202            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-14T00:45:30.633' AS DateTime), CAST(N'2023-11-14T00:45:30.633' AS DateTime), 0, N'Hết hạn', N'NV56920001      ')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD14112023D002 ', N'P204            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-14T01:46:59.307' AS DateTime), CAST(N'2023-11-14T01:46:59.307' AS DateTime), 0, N'Hết hạn', N'NV56920001      ')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023B001 ', N'P101            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T12:20:59.917' AS DateTime), CAST(N'2023-11-15T12:20:59.917' AS DateTime), 0, N'Hết hạn', N'NV56920001      ')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023B003 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T14:03:00.000' AS DateTime), CAST(N'2023-11-15T15:20:00.000' AS DateTime), 20000, N'Hết hạn', N'Test phieu')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023B004 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T15:20:00.000' AS DateTime), CAST(N'2023-11-15T16:20:00.000' AS DateTime), 20000, N'Hết hạn', N'quanggggggggggggggggggg')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023B005 ', N'P303            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T15:46:00.000' AS DateTime), CAST(N'2023-11-15T16:46:00.000' AS DateTime), 20000, N'Hết hạn', N'p303 tst nhan Phong')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023B006 ', N'P403            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T15:57:00.000' AS DateTime), CAST(N'2023-11-15T16:57:00.000' AS DateTime), 20000, N'Hết hạn', N'Demo lan cuoi')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023C001 ', N'P501            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T22:14:00.000' AS DateTime), CAST(N'2023-11-15T23:14:00.000' AS DateTime), 20000, N'Hết hạn', N'quang tesst')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023D001 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T00:09:00.000' AS DateTime), CAST(N'2023-11-15T00:15:00.000' AS DateTime), 20000, N'Hết hạn', N'Demo p203 dang dat luc 0h dem')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023D002 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T00:14:00.000' AS DateTime), CAST(N'2023-11-15T01:14:00.000' AS DateTime), 20000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023D003 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T00:21:00.000' AS DateTime), CAST(N'2023-11-14T00:21:00.000' AS DateTime), 20000, N'Hết hạn', N'test cap nhat het han')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023D004 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T00:21:00.000' AS DateTime), CAST(N'2023-11-15T00:22:00.000' AS DateTime), 20000, N'Hết hạn', N'test cap nhat het han')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023D005 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T00:21:00.000' AS DateTime), CAST(N'2023-11-15T23:22:00.000' AS DateTime), 20000, N'Hết hạn', N'test cap nhat het han')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023D006 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T00:21:00.000' AS DateTime), CAST(N'2023-11-15T22:22:00.000' AS DateTime), 20000, N'Hết hạn', N'test cap nhat het han')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD15112023D007 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-15T00:21:00.000' AS DateTime), CAST(N'2023-11-15T01:10:00.000' AS DateTime), 20000, N'Hết hạn', N'test cap nhat het han')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD16112023A002 ', N'P504            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-16T10:46:00.000' AS DateTime), CAST(N'2023-11-16T11:46:00.000' AS DateTime), 20000, N'Hết hạn', N'Quang đặt phòng nèeeeeee')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD16112023A003 ', N'P203            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-16T11:18:00.000' AS DateTime), CAST(N'2023-11-16T12:18:00.000' AS DateTime), 20000, N'Hết hạn', N'test nhan phong')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD16112023A004 ', N'P103            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-16T11:28:00.000' AS DateTime), CAST(N'2023-11-16T12:28:00.000' AS DateTime), 20000, N'Hết hạn', N'ádasdsadsadas')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD16112023A005 ', N'P202            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-16T11:39:00.000' AS DateTime), CAST(N'2023-11-16T12:39:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqwessaa')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD16112023B001 ', N'P101            ', N'NV56920001      ', N'KH56920001      ', CAST(N'2023-11-16T12:52:00.000' AS DateTime), CAST(N'2023-11-16T13:52:00.000' AS DateTime), 40000, N'Hết hạn', N'TEST')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023B001 ', N'P101            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T13:38:00.000' AS DateTime), CAST(N'2023-11-20T14:38:00.000' AS DateTime), 40000, N'Hết hạn', N'Tét nhận phòng 1 tiếng')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023B002 ', N'P101            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T13:57:00.000' AS DateTime), CAST(N'2023-11-13T13:57:00.000' AS DateTime), 40000, N'Hết hạn', N'Téttttttttttttttttttttttt')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023B003 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T14:04:00.000' AS DateTime), CAST(N'2023-11-20T15:04:00.000' AS DateTime), 20000, N'Hết hạn', N'eeee')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023B004 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T14:14:00.000' AS DateTime), CAST(N'2023-11-20T14:14:00.000' AS DateTime), 20000, N'Hết hạn', N'11111111111')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023B005 ', N'P101            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T14:18:00.000' AS DateTime), CAST(N'2023-11-20T15:18:00.000' AS DateTime), 40000, N'Hết hạn', N'2222')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023B006 ', N'P101            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T14:18:00.000' AS DateTime), CAST(N'2023-11-20T15:18:00.000' AS DateTime), 40000, N'Hết hạn', N'2222333')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023C001 ', N'P102            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T21:43:48.343' AS DateTime), CAST(N'2023-11-20T22:43:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023C002 ', N'P102            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T21:44:11.443' AS DateTime), CAST(N'2023-11-20T22:43:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023C003 ', N'P102            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T21:44:14.250' AS DateTime), CAST(N'2023-11-20T22:43:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023C004 ', N'P102            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T21:44:16.380' AS DateTime), CAST(N'2023-11-20T22:43:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023C005 ', N'P102            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T21:44:18.497' AS DateTime), CAST(N'2023-11-20T22:43:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023C006 ', N'P102            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T21:44:21.250' AS DateTime), CAST(N'2023-11-20T22:43:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023C007 ', N'P104            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T22:38:36.857' AS DateTime), CAST(N'2023-11-21T22:00:00.000' AS DateTime), 40000, N'Hết hạn', N'tét ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023D001 ', N'P304            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T23:34:33.687' AS DateTime), CAST(N'2023-11-21T23:00:00.000' AS DateTime), 40000, N'Hết hạn', N'tét ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023D002 ', N'P304            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T23:34:39.963' AS DateTime), CAST(N'2023-11-21T23:00:00.000' AS DateTime), 40000, N'Hết hạn', N'tét ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023D003 ', N'P304            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T23:35:19.717' AS DateTime), CAST(N'2023-11-20T00:00:00.000' AS DateTime), 40000, N'Hết hạn', N'tét ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023D004 ', N'P404            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T23:35:24.317' AS DateTime), CAST(N'2023-11-20T00:00:00.000' AS DateTime), 40000, N'Hết hạn', N'tét ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD20112023D005 ', N'P104            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-20T23:47:56.130' AS DateTime), CAST(N'2023-11-20T02:00:00.000' AS DateTime), 40000, N'Hết hạn', N'tét ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A001 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:12:01.813' AS DateTime), CAST(N'2023-11-21T11:11:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'12333333')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A002 ', N'P104            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:12:56.493' AS DateTime), CAST(N'2023-11-21T13:11:00.000' AS DateTime), 40000, N'Hết hạn', N'12333333')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A003 ', N'P104            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:13:24.103' AS DateTime), CAST(N'2023-11-21T11:11:00.000' AS DateTime), 40000, N'Hết hạn', N'12333333')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A004 ', N'P102            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:13:47.473' AS DateTime), CAST(N'2023-11-21T11:11:00.000' AS DateTime), 40000, N'Hết hạn', N'12333333')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A005 ', N'P202            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:37:12.623' AS DateTime), CAST(N'2023-11-21T10:42:00.000' AS DateTime), 40000, N'Đã nhận phòng', N'111223')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A006 ', N'P303            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:40:16.673' AS DateTime), CAST(N'2023-11-21T11:42:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'111223')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A008 ', N'P302            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:43:50.390' AS DateTime), CAST(N'2023-11-21T10:45:00.000' AS DateTime), 40000, N'Hết hạn', N'111223')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023A009 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T10:54:20.743' AS DateTime), CAST(N'2023-11-21T10:56:00.000' AS DateTime), 20000, N'Hết hạn', N'122333')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023D001 ', N'P404            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T00:03:34.510' AS DateTime), CAST(N'2023-11-21T02:00:00.000' AS DateTime), 40000, N'Hết hạn', N'tét ngày mai')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023D002 ', N'P404            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T00:15:43.500' AS DateTime), CAST(N'2023-11-21T01:00:00.000' AS DateTime), 40000, N'Đã nhận phòng', N'trueee')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023D003 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T00:42:20.830' AS DateTime), CAST(N'2023-11-21T01:39:00.000' AS DateTime), 20000, N'Hết hạn', N'hihi')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD21112023D004 ', N'P203            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-21T00:42:50.970' AS DateTime), CAST(N'2023-11-21T01:22:00.000' AS DateTime), 20000, N'Hết hạn', N'hihi2222222')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023A001 ', N'P101            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T08:27:03.433' AS DateTime), CAST(N'2023-11-22T09:14:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023A002 ', N'P505            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T09:41:07.727' AS DateTime), CAST(N'2023-11-22T10:36:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'test')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C001 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T20:35:00.843' AS DateTime), CAST(N'2023-11-23T21:30:00.000' AS DateTime), 20000, N'Hết hạn', N'test ngay mai 23 - 11')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C003 ', N'P203            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T21:04:18.793' AS DateTime), CAST(N'2023-11-23T21:30:00.000' AS DateTime), 20000, N'Hết hạn', N'test ngay mai 23 - 11')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C004 ', N'P303            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T22:38:18.863' AS DateTime), CAST(N'2023-11-22T23:36:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'sss')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C005 ', N'P303            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T22:38:38.407' AS DateTime), CAST(N'2023-11-23T23:36:00.000' AS DateTime), 20000, N'Hết hạn', N'sss')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C006 ', N'P403            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T22:39:03.423' AS DateTime), CAST(N'2023-11-23T23:36:00.000' AS DateTime), 20000, N'Hết hạn', N'sss')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C007 ', N'P501            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T22:44:53.660' AS DateTime), CAST(N'2023-11-22T22:46:00.000' AS DateTime), 20000, N'Hết hạn', N'aaaa')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C008 ', N'P204            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T22:47:43.547' AS DateTime), CAST(N'2023-11-22T22:49:00.000' AS DateTime), 40000, N'Hết hạn', N'qqqq')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD22112023C009 ', N'P304            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-22T22:58:23.580' AS DateTime), CAST(N'2023-11-22T23:57:00.000' AS DateTime), 40000, N'Đã nhận phòng', N'ss')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD23112023B001 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-23T14:04:39.037' AS DateTime), CAST(N'2023-11-23T14:02:22.427' AS DateTime), 20000, N'Hết hạn', N'tests')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD23112023B002 ', N'P103            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-23T14:07:28.067' AS DateTime), CAST(N'2023-11-23T15:02:00.000' AS DateTime), 20000, N'Đã nhận phòng', N'tests')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD24112023A001 ', N'P101            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-24T11:00:32.453' AS DateTime), CAST(N'2023-11-24T11:41:00.000' AS DateTime), 40000, N'Đã nhận phòng', N'ok')
INSERT [dbo].[PhieuDatPhong] ([maPhieuDat], [maPhong], [maNhanVien], [maKhachHang], [thoiGianDatPhong], [thoiGianNhanPhong], [tienCoc], [trangThai], [moTa]) VALUES (N'PD27112023B001 ', N'P101            ', N'NV56920002      ', N'KH56920001      ', CAST(N'2023-11-27T15:44:10.280' AS DateTime), CAST(N'2023-11-27T16:39:00.000' AS DateTime), 40000, N'Đã nhận phòng', N'wwwww')
GO
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P101            ', N'P101', N'VIP1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 1   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P102            ', N'P102', N'VIP2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 1   ', N'Không có ghi chú', N'Không sử dụng')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P103            ', N'P103', N'ORD1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 1   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P104            ', N'P104', N'ORD2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 1   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P201            ', N'P201', N'VIP1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 2   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P202            ', N'P202', N'VIP2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 2   ', N'Không có ghi chú', N'Không sử dụng')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P203            ', N'P203', N'ORD1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 2   ', N'', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P204            ', N'P204', N'ORD2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 2   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P301            ', N'P301', N'VIP1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 3   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P302            ', N'P302', N'VIP2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 3   ', N'Không có ghi chú', N'Không sử dụng')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P303            ', N'P303', N'ORD1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 3   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P304            ', N'P304', N'ORD2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 3   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P401            ', N'P401', N'VIP1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 4   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P402            ', N'P402', N'VIP2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 4   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P403            ', N'P403', N'ORD1            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 4   ', N'Không có ghi chú', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P404            ', N'P404', N'ORD2            ', N'VC              ', CAST(N'2023-10-30' AS Date), N'Lầu 4   ', N'Không có ghi chú', N'Sửa chữa')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P501            ', N'P501', N'ORD1            ', N'VC              ', CAST(N'2023-11-14' AS Date), N'Lầu 5   ', N'', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P502            ', N'P502            ', N'ORD1            ', N'VC              ', CAST(N'2023-11-14' AS Date), N'Lầu 5   ', N'', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P503            ', N'P503', N'ORD1            ', N'VC              ', CAST(N'2023-11-14' AS Date), N'Lầu 5   ', N'', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P504            ', N'P504            ', N'ORD1            ', N'VC              ', CAST(N'2023-11-14' AS Date), N'Lầu 5   ', N'', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P505            ', N'P505            ', N'ORD1            ', N'VC              ', CAST(N'2023-11-14' AS Date), N'Lầu 5   ', N'', N'Đang hoạt động')
INSERT [dbo].[Phong] ([maPhong], [tenPhong], [maLoaiPhong], [maTrangThai], [ngayTaoPhong], [viTriPhong], [ghiChu], [tinhTrangPhong]) VALUES (N'P506            ', N'P506            ', N'ORD1            ', N'VC              ', CAST(N'2023-11-13' AS Date), N'Lầu 5   ', N'', N'Đang hoạt động')
GO
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThai], [email]) VALUES (N'NV42560001      ', N'NV42560001      ', N'12345678                                ', 1, N'nguyenthientu413@gmail.com')
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThai], [email]) VALUES (N'NV56910001      ', N'NV56910001      ', N'12345678                                ', 1, NULL)
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThai], [email]) VALUES (N'NV56920001      ', N'NV56920001      ', N'12345678                                ', 1, N'quang82thcspb@gmail.com')
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThai], [email]) VALUES (N'NV56920002      ', N'NV56920002      ', N'12345678                                ', 1, N'nguyenthientu413@gmail.com')
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThai], [email]) VALUES (N'NV61890001      ', N'NV61890001      ', N'12345678                                ', 1, N'nguyennga200x@gmail.com')
INSERT [dbo].[TaiKhoan] ([maNhanVien], [tenDangNhap], [matKhau], [trangThai], [email]) VALUES (N'NV98430001      ', N'NV98430001      ', N'12345678                                ', 1, N'nguyenthanh8a2@gmail.com')
GO
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230001', 232, 32, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Bia ngon lắm nha', N'21.jpg                                                                                                                                                                                                                                                         ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230002', 227, 27, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'dau-phong-ngam-nuoc-mam-toi-ot.jpg                                                                                                                                                                                                                             ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230003', 500, 16, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'6.jpg                                                                                                                                                                                                                                                          ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230004', 100, 22, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'bimbim.jpg                                                                                                                                                                                                                                                     ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230006', 100, 22, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-10-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'com-rang-thap-cam.jpg                                                                                                                                                                                                                                          ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230008', 234, 34, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-10-27T00:00:00.000' AS DateTime), N'Không có mô tả', N'trai-cay.jpg                                                                                                                                                                                                                                                   ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230009', 423, 323, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'KhoMuc.jpg                                                                                                                                                                                                                                                     ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230010', 400, 115, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-10-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'24.jpg                                                                                                                                                                                                                                                         ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230011', 116, 16, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'7Up.jpg                                                                                                                                                                                                                                                        ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230012', 150, 50, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'nuocC2ViBacHa.jpg                                                                                                                                                                                                                                              ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230013', 446, 46, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'20.jpg                                                                                                                                                                                                                                                         ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230014', 100, 24, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'nuocC2ViBacHa.jpg                                                                                                                                                                                                                                              ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230015', 500, 69, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-11-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'nuocC2viChanh.jpg                                                                                                                                                                                                                                              ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230016', 268, 68, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-10-26T00:00:00.000' AS DateTime), N'Không có mô tả', N'nuocSuoi.jpg                                                                                                                                                                                                                                                   ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230017', 252, 52, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-10-27T00:00:00.000' AS DateTime), N'Không có mô tả', N'redbull.png                                                                                                                                                                                                                                                    ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230018', 150, 43, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-10-27T00:00:00.000' AS DateTime), N'Không có mô t?', N'Sting.jpg                                                                                                                                                                                                                                                      ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230019', 150, 25, CAST(N'2023-10-26T00:00:00.000' AS DateTime), CAST(N'2024-10-27T00:00:00.000' AS DateTime), N'Không có mô t?', N'Twister.jpg                                                                                                                                                                                                                                                    ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230022', 222, 1, CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2023-12-29T00:00:00.000' AS DateTime), N'2', N'9.jpg                                                                                                                                                                                                                                                          ')
INSERT [dbo].[ThongTinDichVu] ([maThongTinDichVu], [soLuong], [soLuongDaSuDung], [ngayNhap], [ngayHetHan], [moTa], [hinhAnh]) VALUES (N'TTDV261020230023', 200, 17, CAST(N'2023-12-03T00:00:00.000' AS DateTime), CAST(N'2024-12-04T00:00:00.000' AS DateTime), N'Người cung cấp BHX', N'5.jpg                                                                                                                                                                                                                                                          ')
GO
INSERT [dbo].[TrangThaiPhong] ([maTrangThai], [tenTrangThai]) VALUES (N'OC              ', N'Đang sử dụng')
INSERT [dbo].[TrangThaiPhong] ([maTrangThai], [tenTrangThai]) VALUES (N'OCP             ', N'Đã đặt')
INSERT [dbo].[TrangThaiPhong] ([maTrangThai], [tenTrangThai]) VALUES (N'OOO             ', N'Không phục vụ')
INSERT [dbo].[TrangThaiPhong] ([maTrangThai], [tenTrangThai]) VALUES (N'VC              ', N'Trống')
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [F_ChiTietDichVu_DichVu] FOREIGN KEY([maDichVu])
REFERENCES [dbo].[DichVu] ([maDichVu])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [F_ChiTietDichVu_DichVu]
GO
ALTER TABLE [dbo].[ChiTietDichVu]  WITH CHECK ADD  CONSTRAINT [F_ChiTietDichVu_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietDichVu] CHECK CONSTRAINT [F_ChiTietDichVu_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [F_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [F_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [fk_CTHD_P] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [fk_CTHD_P]
GO
ALTER TABLE [dbo].[DichVu]  WITH CHECK ADD  CONSTRAINT [fk_maThongTinDichVu] FOREIGN KEY([maThongTinDichVu])
REFERENCES [dbo].[ThongTinDichVu] ([maThongTinDichVu])
GO
ALTER TABLE [dbo].[DichVu] CHECK CONSTRAINT [fk_maThongTinDichVu]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [F_HoaDon_KhachHang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [F_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [F_HoaDon_KhuyenMai] FOREIGN KEY([maKhuyenMai])
REFERENCES [dbo].[KhuyenMai] ([maKhuyenMai])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [F_HoaDon_KhuyenMai]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [F_HoaDon_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [F_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [F_HoaDon_PhieuDat] FOREIGN KEY([maPhieuDat])
REFERENCES [dbo].[PhieuDatPhong] ([maPhieuDat])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [F_HoaDon_PhieuDat]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [F_NhanVien_LoaiNhanVien] FOREIGN KEY([maLoaiNhanVien])
REFERENCES [dbo].[LoaiNhanVien] ([maLoaiNhanVien])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [F_NhanVien_LoaiNhanVien]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [F_PhieuDatPhong_KhachHang] FOREIGN KEY([maKhachHang])
REFERENCES [dbo].[KhachHang] ([maKhachHang])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [F_PhieuDatPhong_KhachHang]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [F_PhieuDatPhong_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [F_PhieuDatPhong_NhanVien]
GO
ALTER TABLE [dbo].[PhieuDatPhong]  WITH CHECK ADD  CONSTRAINT [F_PhieuDatPhong_Phong] FOREIGN KEY([maPhong])
REFERENCES [dbo].[Phong] ([maPhong])
GO
ALTER TABLE [dbo].[PhieuDatPhong] CHECK CONSTRAINT [F_PhieuDatPhong_Phong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [F_Phong_LoaiPhong] FOREIGN KEY([maLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([maLoaiPhong])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [F_Phong_LoaiPhong]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [F_Phong_TrangThaiPhong] FOREIGN KEY([maTrangThai])
REFERENCES [dbo].[TrangThaiPhong] ([maTrangThai])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [F_Phong_TrangThaiPhong]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [F_TaiKhoan_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [F_TaiKhoan_NhanVien]
GO
/****** Object:  StoredProcedure [dbo].[XoaHetDuLieu]    Script Date: 12/13/2023 12:00:24 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[XoaHetDuLieu]
AS
BEGIN
    -- Xóa dữ liệu từ bảng ThongTinDichVu
    DELETE FROM ThongTinDichVu;

    -- Xóa dữ liệu từ bảng DichVu
    DELETE FROM DichVu;
END;
GO
USE [master]
GO
ALTER DATABASE [SingUrSong_vnew] SET  READ_WRITE 
GO
