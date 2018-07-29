-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 29, 2018 lúc 09:40 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `benhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbacsi`
--

CREATE TABLE `tblbacsi` (
  `maBacsi` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `tenBacsi` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `maKhoa` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `ngaySinh` date DEFAULT NULL,
  `gioiTinh` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Nữ',
  `diaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Quận 9, TPHCM',
  `CMND` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `trinhDo` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `soDT` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `idDangnhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbacsi`
--

INSERT INTO `tblbacsi` (`maBacsi`, `tenBacsi`, `maKhoa`, `ngaySinh`, `gioiTinh`, `diaChi`, `CMND`, `trinhDo`, `Email`, `soDT`, `idDangnhap`) VALUES
('BS001', 'Hoàng Thanh Duân', 'KH03', '0000-00-00', 'Nam', 'Quận 9, HCM', '205513136', 'DH', 'thanhduan@gmail.com', '16577736166', 1),
('BS002', ' Phùng Khắc Vũ', 'KH04', '0000-00-00', 'Nam', 'Quận 11, HCM', '205513137', 'CH', 'khacvu@gmail.com', '16577736167', 2),
('BS003', ' Phạm Văn Vĩnh', 'KH01', '0000-00-00', 'Nam', 'Quận 3, HCM', '205513135', 'CH', 'vanvinh@gmail.com', '16577736168', 3),
('BS004', 'Chu Văn Ninh', 'KH02', '0000-00-00', 'Nam', 'Bình Thạnh, HCM', '205513138', 'CH', 'vanninh@gmail.com', '16577736169', 4),
('BS005', 'Văn Minh Đức', 'KH07', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513567', 'DH', 'minhduc@gmail.com', '0165778000', 5),
('BS006', 'Thạch Hồng Vân', 'KH05', '0000-00-00', 'Nữ', 'Quận 10, HCM', '205513147', 'CH', 'nguyenthao@gmail.com', '16597736167', 6),
('BS007', ' Lê Thế Vinh', 'KH04', '0000-00-00', 'Nam', 'Quận 9, HCM', '205514123', 'DH', 'thevinh@gmail.com', '0123456756', 7),
('BS008', 'Quách Hải Long', 'KH04', '0000-00-00', 'Nam', 'Quận 9, HCM', '205513141', 'CH', 'quachhailong@gmail.com', '16577736145', 8),
('BS009', 'Ngô Thị Nhanh', 'KH03', '0000-00-00', 'Nam', 'Quận 1, HCM', '205513142', 'CH', 'phanbaoanh@gmail.com', '16577736154', 9),
('BS010', 'Đặng Giao Chiêu', 'KH07', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513222', 'DH', 'giaochieu@gmail.com', '0165778002', 10),
('BS011', 'Phạm Văn Tịnh', 'KH05', '1992-12-22', 'Nữ', 'Quận 10, HCM', '205513136', 'DH', 'vantinh@gmail.com', '01657773616', 11),
('BS012', 'Trần Thị Mỹ Hạnh', 'KH02', '2013-06-02', 'Nữ', 'Quận 9, HCM', '205513135', 'TH', 'myhanh@gmail.com', '01657773616', 12),
('BS013', ' Lương Thanh Hải', 'KH04', '0000-00-00', 'Nam', 'Quận 9, HCM', '205513138', 'DH', 'thanhhai@gmail.com', '165712345', 13),
('BS014', 'Nguyễn Thanh Toàn', 'KH04', '0000-00-00', 'Nam', 'Quận 9, HCM', '205513345', 'DH', 'thanhtoan@gmail.com', '165734567', 14),
('BS015', 'Phạm Hồng Quế', 'KH05', '1992-12-22', 'Nữ', 'Quận 10, HCM', '205513136', 'DH', 'hongque@gmail.com', '0165778767', 15),
('BS016', 'Nguyễn Tuấn', 'KH06', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513324', 'DH', 'nguyentuan@gmail.com', '0165778733', 16),
('BS017', 'Vũ Cửu Tùng', 'KH05', '1992-12-22', 'Nữ', 'Quận 10, HCM', '205513189', 'DH', 'cuutung@gmail.com', '0165778755', 17),
('BS018', 'Trà Văn Hiên', 'KH06', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513309', 'DH', 'vanhien@gmail.com', '0165778700', 18),
('BS019', 'Nguyễn Bảo Xuân Tài', 'KH07', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513222', 'DH', 'xuantai@gmail.com', '0165778722', 19),
('BS020', 'Nguyễn Mậu Đạt', 'KH06', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513300', 'DH', 'maudat@gmail.com', '0165778744', 20),
('BS021', 'Trần Thị Thúy Ngân', 'KH08', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513301', 'DH', 'thuyngan@gmail.com', '0165778745', 21),
('BS024', 'Nguyễn Thanh Sơn', 'KH08', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513221', 'DH', 'thanhson@gmail.com', '0165778003', 22),
('BS025', 'Huỳnh Ngọc Vân', 'KH09', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513229', 'DH', 'ngocvan@gmail.com', '0165778009', 23),
('BS026', 'Đinh Thị Thảnh', 'KH10', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513227', 'DH', 'thithanh@gmail.com', '0165778005', 24),
('BS027', 'Nguyễn Nhị Hương Tân', 'KH09', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513111', 'DH', 'huongtan@gmail.com', '0165777777', 25),
('BS028', 'Trịnh Hồng Tân', 'KH09', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513777', 'DH', 'hongtan@gmail.com', '0165777779', 29),
('BS029', 'Trần Văn Phước', 'KH10', '1992-12-22', 'Nam', 'Quận 9, HCM', '205513224', 'DH', 'vanphuoc@gmail.com', '0165778006', 32),
('BS030', 'Hà Thị Thiện', 'KH11', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513111', 'DH', 'thithien@gmail.com', '0165778111', 27),
('BS031', 'Nguyễn Nhất Phương', 'KH11', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513112', 'DH', 'nhatphuong@gmail.com', '0165778112', 26),
('BS032', 'Lê Thị Thúy', 'KH11', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513110', 'DH', 'thithuy@gmail.com', '0165778113', 28),
('BS033', 'Nay H\' Nga', 'KH11', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513100', 'DH', 'nga@gmail.com', '0165778114', 31),
('BS034', 'Hà Thị Thiện', 'KH12', '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513109', 'DH', 'thithien1@gmail.com', '0165778115', 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbenhan`
--

CREATE TABLE `tblbenhan` (
  `maBenhan` char(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BA000',
  `maBenhnhan` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `soDK` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `chuanDoan` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `maTT` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `ngayNhapvien` date NOT NULL,
  `ngayXuatvien` date DEFAULT NULL,
  `dienBienbenh` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lanThu` int(11) DEFAULT '1',
  `tinhTrang` char(2) COLLATE utf8_unicode_ci DEFAULT 'HT',
  `ngayThanhToan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbenhan`
--

INSERT INTO `tblbenhan` (`maBenhan`, `maBenhnhan`, `soDK`, `chuanDoan`, `maTT`, `ngayNhapvien`, `ngayXuatvien`, `dienBienbenh`, `lanThu`, `tinhTrang`, `ngayThanhToan`) VALUES
('BA001', 'BN005', '', 'Sốt', 'TT01', '2018-05-27', '2018-06-01', 'Tốt', 0, 'NV', '2018-06-01'),
('BA002', 'BN007', '', 'Viêm loét giác mạc', 'TT02', '2013-06-01', '0000-00-00', 'Đang điều trị', 0, 'NV', '2018-06-03'),
('BA003', 'BN001', '', 'Cận Thị', 'TT01', '2013-06-01', '0000-00-00', 'Bình thường', 0, 'TN', '2018-05-09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbenhnhan`
--

CREATE TABLE `tblbenhnhan` (
  `maBenhnhan` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `tenBenhnhan` varchar(30) CHARACTER SET utf8 NOT NULL,
  `gioiTinh` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Nam',
  `diaChi` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ngaySinh` date NOT NULL,
  `CMND` char(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danToc` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ngheNghiep` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `BHYT` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngoaiTuyen` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `tinhTrang` char(1) COLLATE utf8_unicode_ci DEFAULT '0',
  `maKhoa` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `idDangnhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbenhnhan`
--

INSERT INTO `tblbenhnhan` (`maBenhnhan`, `tenBenhnhan`, `gioiTinh`, `diaChi`, `ngaySinh`, `CMND`, `danToc`, `ngheNghiep`, `BHYT`, `ngoaiTuyen`, `tinhTrang`, `maKhoa`, `idDangnhap`) VALUES
('BN001', 'Nguyễn Văn Thiện', 'Nam', 'Quận 9, HCM', '1986-06-01', '205513136', 'Kinh', 'giáo Viên', '1234567890987', '1', '0', 'KH01', 31),
('BN002', 'Trịnh Minh Vương', 'Nam', 'Quận 10, HCM', '2000-02-02', '205513136', 'Kinh', NULL, '1234567890', '0', '0', 'KH02', 32),
('BN003', 'Huỳnh Bá Viên', 'Nam', 'Quận 5, HCM', '1996-02-02', '123456', 'Tày', NULL, '54343', '0', '0', 'KH03', 33),
('BN004', 'Trương Tấn Trọng', 'Nam', 'Quận 8, HCM', '1977-01-01', NULL, 'Nùng', NULL, '32438768564', '0', '0', 'KH07', 34),
('BN005', 'Trịnh Thị nhung', 'Nữ', 'Quận 9, HCM', '1992-05-20', '205513130', 'Kinh', 'sinh viên', '3254658798', '1', '0', 'KH04', 35),
('BN006', 'Trần Thụy Dung', 'Nữ', 'Quận 3, HCM', '1992-12-22', '205513137', 'Kinh', NULL, '85968486276', '0', '0', 'KH01', 36),
('BN007', 'Nguyễn Phương Linh', 'Nam', 'Quận 9, HCM', '2012-02-02', NULL, 'Kinh', NULL, '123456789', '0', '0', 'KH09', 37),
('BN008', 'Tố Nga', 'Nam', 'Quận 1, HCM', '1992-12-02', NULL, 'Kinh', NULL, '123456789123454', '0', '0', 'KH01', 38),
('BN009', 'Trinh Nữ', 'Nam', 'Quận 9, HCM', '2013-06-01', '121234567', 'Kinh', NULL, '1234567891', '0', '0', 'KH01', 39);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldangnhap`
--

CREATE TABLE `tbldangnhap` (
  `idDangnhap` int(11) NOT NULL,
  `tenDangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '123',
  `quyen` int(1) NOT NULL DEFAULT '1' COMMENT '0: Bác sĩ ; 1: Bệnh nhân',
  `tinhTrang` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldangnhap`
--

INSERT INTO `tbldangnhap` (`idDangnhap`, `tenDangnhap`, `matKhau`, `quyen`, `tinhTrang`) VALUES
(1, 'hi', '123', 0, 0),
(2, 'hihi', '123', 0, 0),
(3, 'ahihi', '123', 0, 0),
(4, '123', '123', 0, 0),
(5, '1', '123', 0, 0),
(6, '2', '123', 0, 0),
(7, '3', '123', 0, 0),
(8, '4', '123', 0, 0),
(9, '5', '123', 0, 0),
(10, '6', '123', 0, 0),
(11, '7', '123', 0, 0),
(12, '8', '123', 0, 0),
(13, '9', '123', 0, 0),
(14, '10', '123', 0, 0),
(15, '11', '123', 0, 0),
(16, '12', '123', 0, 0),
(17, '13', '123', 0, 0),
(18, '14', '123', 0, 0),
(19, '15', '123', 0, 0),
(20, '16', '123', 0, 0),
(21, '17', '123', 0, 0),
(22, '18', '123', 0, 0),
(23, '19', '123', 0, 0),
(24, '20', '123', 0, 0),
(25, '21', '123', 0, 0),
(26, '22', '123', 0, 0),
(27, '23', '123', 0, 0),
(28, '24', '123', 0, 0),
(29, '25', '123', 0, 0),
(30, '26', '123', 0, 0),
(31, '27', '123', 1, 0),
(32, '28', '123', 1, 0),
(33, '29', '123', 1, 0),
(34, '30', '123', 1, 0),
(35, '32', '123', 1, 0),
(36, '31', '123', 1, 0),
(37, '33', '123', 1, 0),
(38, '34', '123', 1, 0),
(39, '35', '123', 1, 0),
(40, '36', '123', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldatlichkham`
--

CREATE TABLE `tbldatlichkham` (
  `maLich` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `maBenhnhan` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `maBacsi` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `ngayDK` date NOT NULL,
  `gioDK` varchar(10) CHARACTER SET utf8 NOT NULL,
  `soDT` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tinhTrang` char(1) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldatlichkham`
--

INSERT INTO `tbldatlichkham` (`maLich`, `maBenhnhan`, `maBacsi`, `ngayDK`, `gioDK`, `soDT`, `Email`, `tinhTrang`) VALUES
('DL001', 'BN008', 'BS012', '2018-06-01', 'Sáng', '0909090909', 'ahihi@gmail.com', '0'),
('DL002', 'BN009', 'BS012', '2018-06-01', 'Sáng', '11111111', '111111@gmail.com', '0'),
('DL003', 'BN001', 'BS003', '2018-07-02', 'Sáng', '0938568110', 'diemnguyentt2@gmail.com', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhoa`
--

CREATE TABLE `tblkhoa` (
  `maKhoa` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `tenKhoa` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lePhiKHam` decimal(6,0) NOT NULL,
  `donGiaNgayDem` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhoa`
--

INSERT INTO `tblkhoa` (`maKhoa`, `tenKhoa`, `lePhiKHam`, `donGiaNgayDem`) VALUES
('KH01', 'PK NỘI 1 (TIM MẠCH - NỘI TIẾT - THẦN KINH)', '20000', '45000'),
('KH02', 'PK NỘI 2 (TIM MẠCH - TIÊU HÓA - HÔ HẤP - TRUYỀN NHIỄM - DA LIỄU) ', '20000', '45000'),
('KH03', 'PK NỘI 3 (NỘI CHUNG - DA LIỄU - KẾT LUẬN KHÁM SỨC KHỎE) ', '20000', '45000'),
('KH04', 'PK NGOẠI 1 (CHẤN THƯƠNG CHỈNH HÌNH - NGOẠI THẦN KINH - BỎNG) ', '20000', '45000'),
('KH05', 'PK NGOẠI 2 (NGOẠI GAN MẬT, NGOẠI TỔNG QUÁT - U BƯỚU - TIẾT NIỆU) ', '20000', '45000'),
('KH06', 'PK TAI MŨI HỌNG ', '20000', '45000'),
('KH07', 'PK RĂNG HÀM MẶT: CHỮA BỆNH RĂNG MIỆNG, CHỈNH HÌNH HÀM, MẶT, LÀM RĂNG GIẢ. ', '20000', '70000'),
('KH08', 'PK MẮT ', '20000', '45000'),
('KH09', 'PK ĐÔNG Y ', '20000', '45000'),
('KH10', 'PK SẢN PHỤ KHOA ', '20000', '45000'),
('KH11', 'PK NHI ', '20000', '45000'),
('KH12', 'PK TIÊM NGỪA', '20000', '45000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphieuxetnghiem`
--

CREATE TABLE `tblphieuxetnghiem` (
  `maPhieu` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `maXetnghiem` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `maBenhan` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `ngayXetnghiem` datetime NOT NULL,
  `lanThu` int(11) DEFAULT '1',
  `ketQua` varchar(50) CHARACTER SET utf8 NOT NULL,
  `thanhTien` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblphieuxetnghiem`
--

INSERT INTO `tblphieuxetnghiem` (`maPhieu`, `maXetnghiem`, `maBenhan`, `ngayXetnghiem`, `lanThu`, `ketQua`, `thanhTien`) VALUES
('P001', 'XN001', 'BA001', '2018-06-01 00:00:00', 1, 'Bình thường', '20000'),
('P002', 'XN002', 'BA001', '2018-06-13 00:00:00', 1, 'Bình thường', '50000'),
('P003', 'XN001', 'BA003', '0000-00-00 00:00:00', 2, 'Bình thường', '20000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthanhtoandot`
--

CREATE TABLE `tblthanhtoandot` (
  `hoaDonID` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `maBenhan` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `ngayTra` date DEFAULT NULL,
  `soTien` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthanhtoandot`
--

INSERT INTO `tblthanhtoandot` (`hoaDonID`, `maBenhan`, `ngayTra`, `soTien`) VALUES
('DOT001', 'BA001', '2018-06-01', '100000'),
('DOT002', 'BA001', '2018-06-10', '50000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthongtindk`
--

CREATE TABLE `tblthongtindk` (
  `soDK` char(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenBenhnhan` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL,
  `gioiTinh` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Nam',
  `CMND` char(9) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `BHYT` char(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soDT` char(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblthongtindk`
--

INSERT INTO `tblthongtindk` (`soDK`, `tenBenhnhan`, `ngaySinh`, `gioiTinh`, `CMND`, `BHYT`, `diaChi`, `soDT`, `email`) VALUES
('', 'Nguyễn Hồng Vân', '2000-07-02', 'Nữ', '222232321', '12132342432342', 'Quận 9, TPHCM', '0165778756', 'hongvan123@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthuoc`
--

CREATE TABLE `tblthuoc` (
  `maTT` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenThuoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soLuong` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cachDung` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblthuoc`
--

INSERT INTO `tblthuoc` (`maTT`, `tenThuoc`, `soLuong`, `cachDung`) VALUES
('TT01', 'paracetamol', '7 viên', 'mỗi sáng 1 viên'),
('TT02', 'HAGINAT 125mg', '21 viên', 'Mỗi ngày 3 viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblxetnghiem`
--

CREATE TABLE `tblxetnghiem` (
  `maXetnghiem` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `tenXetNghiem` varchar(20) CHARACTER SET utf8 NOT NULL,
  `DonGia` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblxetnghiem`
--

INSERT INTO `tblxetnghiem` (`maXetnghiem`, `tenXetNghiem`, `DonGia`) VALUES
('XN001', 'Chụp X-quang', '20000'),
('XN002', 'Xét nghiệm Máu', '50000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblbacsi`
--
ALTER TABLE `tblbacsi`
  ADD PRIMARY KEY (`maBacsi`),
  ADD KEY `tblbacsi_ibfk_1` (`maKhoa`),
  ADD KEY `tblbacsi_ibfk_2` (`idDangnhap`);

--
-- Chỉ mục cho bảng `tblbenhan`
--
ALTER TABLE `tblbenhan`
  ADD PRIMARY KEY (`maBenhan`),
  ADD KEY `mabenhnhan` (`maBenhnhan`),
  ADD KEY `maTT` (`maTT`) USING BTREE,
  ADD KEY `soDK` (`soDK`);

--
-- Chỉ mục cho bảng `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  ADD PRIMARY KEY (`maBenhnhan`),
  ADD KEY `tblbenhnhan_ibfk_2` (`idDangnhap`),
  ADD KEY `tblbenhnhan_ibfk_1` (`maKhoa`);

--
-- Chỉ mục cho bảng `tbldangnhap`
--
ALTER TABLE `tbldangnhap`
  ADD PRIMARY KEY (`idDangnhap`);

--
-- Chỉ mục cho bảng `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  ADD PRIMARY KEY (`maLich`),
  ADD KEY `mabenhnhan` (`maBenhnhan`) USING BTREE,
  ADD KEY `maBacsi` (`maBacsi`) USING BTREE;

--
-- Chỉ mục cho bảng `tblkhoa`
--
ALTER TABLE `tblkhoa`
  ADD PRIMARY KEY (`maKhoa`);

--
-- Chỉ mục cho bảng `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  ADD PRIMARY KEY (`maPhieu`),
  ADD KEY `maBenhan` (`maBenhan`) USING BTREE,
  ADD KEY `maXetnghiem` (`maXetnghiem`) USING BTREE;

--
-- Chỉ mục cho bảng `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  ADD PRIMARY KEY (`hoaDonID`),
  ADD KEY `maBenhan` (`maBenhan`) USING BTREE;

--
-- Chỉ mục cho bảng `tblthongtindk`
--
ALTER TABLE `tblthongtindk`
  ADD PRIMARY KEY (`soDK`);

--
-- Chỉ mục cho bảng `tblthuoc`
--
ALTER TABLE `tblthuoc`
  ADD PRIMARY KEY (`maTT`);

--
-- Chỉ mục cho bảng `tblxetnghiem`
--
ALTER TABLE `tblxetnghiem`
  ADD PRIMARY KEY (`maXetnghiem`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblbacsi`
--
ALTER TABLE `tblbacsi`
  ADD CONSTRAINT `tblbacsi_ibfk_1` FOREIGN KEY (`maKhoa`) REFERENCES `tblkhoa` (`maKhoa`),
  ADD CONSTRAINT `tblbacsi_ibfk_2` FOREIGN KEY (`idDangnhap`) REFERENCES `tbldangnhap` (`idDangnhap`);

--
-- Các ràng buộc cho bảng `tblbenhan`
--
ALTER TABLE `tblbenhan`
  ADD CONSTRAINT `tblbenhan_ibfk_1` FOREIGN KEY (`maBenhnhan`) REFERENCES `tblbenhnhan` (`maBenhnhan`),
  ADD CONSTRAINT `tblbenhan_ibfk_2` FOREIGN KEY (`maTT`) REFERENCES `tblthuoc` (`maTT`),
  ADD CONSTRAINT `tblbenhan_ibfk_3` FOREIGN KEY (`soDK`) REFERENCES `tblthongtindk` (`soDK`);

--
-- Các ràng buộc cho bảng `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  ADD CONSTRAINT `tblbenhnhan_ibfk_1` FOREIGN KEY (`maKhoa`) REFERENCES `tblkhoa` (`maKhoa`),
  ADD CONSTRAINT `tblbenhnhan_ibfk_2` FOREIGN KEY (`idDangnhap`) REFERENCES `tbldangnhap` (`idDangnhap`);

--
-- Các ràng buộc cho bảng `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  ADD CONSTRAINT `tbldatlichkham_ibfk_1` FOREIGN KEY (`maBenhnhan`) REFERENCES `tblbenhnhan` (`maBenhnhan`),
  ADD CONSTRAINT `tbldatlichkham_ibfk_2` FOREIGN KEY (`maBacsi`) REFERENCES `tblbacsi` (`maBacsi`);

--
-- Các ràng buộc cho bảng `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  ADD CONSTRAINT `tblphieuxetnghiem_ibfk_1` FOREIGN KEY (`maBenhan`) REFERENCES `tblbenhan` (`maBenhan`),
  ADD CONSTRAINT `tblphieuxetnghiem_ibfk_2` FOREIGN KEY (`maXetnghiem`) REFERENCES `tblxetnghiem` (`maXetnghiem`);

--
-- Các ràng buộc cho bảng `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  ADD CONSTRAINT `tblthanhtoandot_ibfk_1` FOREIGN KEY (`maBenhan`) REFERENCES `tblbenhan` (`maBenhan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
