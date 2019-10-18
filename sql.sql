USE [GiasuDHVinh]
GO
/****** Object:  Table [dbo].[danhgia]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhgia](
	[id_khachhang] [nchar](10) NULL,
	[id_giasu] [nchar](10) NULL,
	[comment] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[danhsachdanhanlop]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danhsachdanhanlop](
	[id_giasu] [nchar](10) NULL,
	[id_lop] [nchar](10) NULL,
	[diachi] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[giasu]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[giasu](
	[id_giasu] [nchar](10) NULL,
	[hoten] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[noilamviec] [nvarchar](50) NULL,
	[nghenghiep] [nvarchar](50) NULL,
	[thoigian] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[id_khachhang] [nchar](10) NULL,
	[hoten] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[gioitinh] [nvarchar](50) NULL,
	[sodienthoai] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[lop]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lop](
	[id_lop] [nchar](10) NULL,
	[id_monhoc] [nchar](10) NULL,
	[mota] [nvarchar](50) NULL,
	[diachi] [nvarchar](50) NULL,
	[trangthai] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[monhoc]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monhoc](
	[id_monhoc] [nchar](10) NULL,
	[id_nhom] [nchar](10) NULL,
	[tenmon] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nhommonhoc]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhommonhoc](
	[id_nhom] [nchar](10) NULL,
	[tennhom] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 10/18/2019 5:26:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[id_khachhang] [nchar](10) NULL,
	[id_giasu] [nchar](10) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[trangthai] [nvarchar](50) NULL,
	[loaitk] [nvarchar](50) NULL,
 CONSTRAINT [taikhoan_idgiasu] UNIQUE NONCLUSTERED 
(
	[id_giasu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [taikhoan_idkhachhang] UNIQUE NONCLUSTERED 
(
	[id_khachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
