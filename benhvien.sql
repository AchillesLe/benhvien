-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 10, 2018 lúc 10:29 PM
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
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idKhoa` int(11) NOT NULL,
  `ngaySinh` date DEFAULT NULL,
  `gioiTinh` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `diaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Quận 9, TPHCM',
  `CMND` char(9) COLLATE utf8_unicode_ci NOT NULL,
  `danToc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trinhDo` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `BHYT` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soDT` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `idDangnhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbacsi`
--

INSERT INTO `tblbacsi` (`id`, `ten`, `idKhoa`, `ngaySinh`, `gioiTinh`, `diaChi`, `CMND`, `danToc`, `trinhDo`, `BHYT`, `soDT`, `idDangnhap`) VALUES
(1, 'Hoàng Thanh Duân', 3, '1970-01-01', 'Nam', 'Quận 9, HCM', '205513136', 'Kinh', 'DH', '123456789111111', '16577736166', 1),
(2, ' Phùng Khắc Vũ', 4, '0000-00-00', 'Nam', 'Quận 11, HCM', '202513137', NULL, 'CH', '123456789111112', '16577736167', 2),
(3, ' Phạm Văn Vĩnh', 1, '1970-01-02', 'Nam', 'Quận 2, HCM', '215513135', 'Kinh', 'CH', '123456789111113', '16577736167', 3),
(4, 'Chu Văn Ninh', 2, '0000-00-00', 'Nam', 'Bình Thạnh, HCM', '225513138', NULL, 'CH', '123456789111114', '16577736169', 4),
(5, 'Văn Minh Đức', 7, '1992-12-22', 'Nam', 'Quận 9, HCM', '235513567', NULL, 'DH', '123456789111115', '0165778000', 5),
(6, 'Thạch Hồng Vân', 5, '0000-00-00', 'Nữ', 'Quận 10, HCM', '245513147', NULL, 'CH', '123456789111116', '16597736167', 6),
(7, ' Lê Thế Vinh', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '255514123', NULL, 'DH', '123456789111117', '0123456756', 7),
(8, 'Quách Hải Long', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '265513141', NULL, 'CH', '123456789111118', '16577736145', 8),
(9, 'Ngô Thị Nhanh', 3, '0000-00-00', 'Nam', 'Quận 1, HCM', '275513142', NULL, 'CH', '123456789111119', '16577736154', 9),
(10, 'Đặng Giao Chiêu', 7, '1992-12-22', 'Nam', 'Quận 9, HCM', '285513222', NULL, 'DH', '123456789111110', '0165778002', 10),
(11, 'Phạm Văn Tịnh', 5, '1992-12-22', 'Nữ', 'Quận 10, HCM', '295513133', NULL, 'DH', '123456789111120', '01657773616', 11),
(12, 'Trần Thị Mỹ Hạnh', 2, '2013-06-02', 'Nữ', 'Quận 9, HCM', '105513144', NULL, 'TH', '123456789111122', '01657773616', 12),
(13, ' Lương Thanh Hải', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '115513199', NULL, 'DH', '123456789111121', '165712345', 13),
(14, 'Nguyễn Thanh Toàn', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '125513345', NULL, 'DH', '123456789111123', '165734567', 14),
(15, 'Phạm Hồng Quế', 5, '1992-12-22', 'Nữ', 'Quận 10, HCM', '135513122', NULL, 'DH', '123456789111124', '0165778767', 15),
(16, 'Nguyễn Tuấn', 6, '1992-12-22', 'Nam', 'Quận 9, HCM', '145513324', NULL, 'DH', '123456789111125', '0165778733', 16),
(17, 'Vũ Cửu Tùng', 5, '1992-12-22', 'Nữ', 'Quận 10, HCM', '155513189', NULL, 'DH', '123456789111126', '0165778755', 17),
(18, 'Trà Văn Hiên', 6, '1992-12-22', 'Nam', 'Quận 9, HCM', '165513309', NULL, 'DH', '123456789111127', '0165778700', 18),
(19, 'Nguyễn Bảo Xuân Tài', 7, '1992-12-22', 'Nam', 'Quận 9, HCM', '175513000', NULL, 'DH', '123456789111128', '0165778722', 19),
(20, 'Nguyễn Mậu Đạt', 6, '1992-12-22', 'Nam', 'Quận 9, HCM', '185513300', NULL, 'DH', '123456789111129', '0165778744', 20),
(21, 'Trần Thị Thúy Ngân', 8, '1992-12-22', 'Nữ', 'Quận 9, HCM', '195513301', NULL, 'DH', '123456789111130', '0165778745', 21),
(22, 'Nguyễn Thanh Sơn', 8, '1992-12-22', 'Nam', 'Quận 9, HCM', '305513221', NULL, 'DH', '123456789111131', '0165778003', 22),
(23, 'Huỳnh Ngọc Vân', 9, '1992-12-22', 'Nữ', 'Quận 9, HCM', '315513229', NULL, 'DH', '123456789111132', '0165778009', 23),
(24, 'Đinh Thị Thảnh', 10, '1992-12-22', 'Nữ', 'Quận 9, HCM', '325513227', NULL, 'DH', '123456789111133', '0165778005', 24),
(25, 'Nguyễn Nhị Hương Tân', 9, '1992-12-22', 'Nữ', 'Quận 9, HCM', '335513111', NULL, 'DH', '123456789111134', '0165777777', 25),
(26, 'Trịnh Hồng Tân', 9, '1992-12-22', 'Nữ', 'Quận 9, HCM', '345513777', NULL, 'DH', '123456789111135', '0165777779', 26),
(27, 'Trần Văn Phước', 10, '1992-12-22', 'Nam', 'Quận 9, HCM', '355513224', NULL, 'DH', '123456789111136', '0165778006', 27),
(28, 'Hà Thị Thiện', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '365513100', NULL, 'DH', '123456789111137', '0165778111', 28),
(29, 'Nguyễn Nhất Phương', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '375513112', NULL, 'DH', '123456789111138', '0165778112', 29),
(30, 'Lê Thị Thúy', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '385513110', NULL, 'DH', '123456789111139', '0165778113', 30),
(31, 'Nay H\' Nga', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '395513100', NULL, 'DH', '123456789111140', '0165778114', 31),
(32, 'Hà Thị Thiện', 12, '1992-12-22', 'Nữ', 'Quận 9, HCM', '405513109', NULL, 'DH', '123456789111141', '0165778115', 32);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbenhan`
--

CREATE TABLE `tblbenhan` (
  `id` int(11) NOT NULL,
  `idBenhnhan` int(11) NOT NULL,
  `idBacsi` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `chuanDoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chieuCao` float DEFAULT '160' COMMENT 'cm',
  `canNang` float DEFAULT '50' COMMENT 'KG',
  `huyetAp` float DEFAULT '120' COMMENT 'mmHg',
  `idToaThuoc` int(11) DEFAULT NULL,
  `ghiChu` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Kháng thuốc nôn ói',
  `ngayTao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lanThu` int(11) NOT NULL DEFAULT '1',
  `tinhTrang` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: Chưa hoàn tất; 1: Đã hoàn tất'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbenhan`
--

INSERT INTO `tblbenhan` (`id`, `idBenhnhan`, `idBacsi`, `soTT`, `chuanDoan`, `chieuCao`, `canNang`, `huyetAp`, `idToaThuoc`, `ghiChu`, `ngayTao`, `lanThu`, `tinhTrang`) VALUES
(1, 1, 3, 13, 'Sốt', 160, 60, 110, 1, 'Kháng thuốc nôn ói', '2018-08-10 20:26:30', 1, '0'),
(2, 8, 6, 15, 'Cận Thị', 135, 40, 112, 2, 'Kháng thuốc nôn ói', '2018-08-10 20:27:23', 1, '0'),
(3, 9, 4, 13, 'Viêm loét giác mạc', 170, 45, 100, 1, 'Kháng thuốc nôn ói', '2018-08-10 20:26:54', 1, '0'),
(4, 6, 32, 19, 'Đau đầu', 120, 45, 100, 2, 'Kháng thuốc nôn ói', '2018-08-10 20:27:16', 1, '0'),
(5, 8, 20, 18, 'Đau ruột thừa', 140, 40, 112, 2, 'Kháng thuốc nôn ói', '2018-08-10 20:27:08', 2, '0'),
(6, 3, 10, 11, 'Viêm loét giác mạc', 180, 60, 110, 2, 'Kháng thuốc nôn ói', '2018-08-10 20:27:28', 1, '0'),
(7, 1, 5, 10, 'Cận Thị', 165, 60, 110, 1, 'Kháng thuốc nôn ói', '2018-08-10 20:26:58', 2, '0'),
(8, 25, 18, 7, 'Đau họng', 150, 45, 100, 1, 'Kháng thuốc nôn ói', '2018-08-10 20:27:05', 1, '0'),
(9, 4, 12, 1, 'Sốt', 155, 45, 100, 1, 'Kháng thuốc nôn ói', '2018-08-10 20:27:02', 1, '0'),
(10, 4, 27, 1, 'Đau đầu', 110, 45, 100, 3, 'Kháng thuốc nôn ói', '2018-08-10 20:27:11', 2, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblbenhnhan`
--

CREATE TABLE `tblbenhnhan` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gioiTinh` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `diaChi` varchar(100) CHARACTER SET utf8 NOT NULL,
  `ngaySinh` date NOT NULL,
  `soDT` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `CMND` char(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `danToc` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ngheNghiep` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BHYT` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngoaiTuyen` char(1) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '0: Ngoại tuyến; 1: Không ngoại tuyến',
  `idDangnhap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblbenhnhan`
--

INSERT INTO `tblbenhnhan` (`id`, `ten`, `gioiTinh`, `diaChi`, `ngaySinh`, `soDT`, `CMND`, `danToc`, `ngheNghiep`, `BHYT`, `ngoaiTuyen`, `idDangnhap`) VALUES
(1, 'Nguyễn Văn Thiện', 'Nam', 'Quận 9, HCM', '1986-06-01', '0911112222', '415513177', 'Kinh', 'giáo Viên', '123456789098722', '1', 33),
(2, 'Trịnh Minh Vương', 'Nam', 'Quận 10, HCM', '2000-02-02', '0922233333', '405513135', 'Kinh', NULL, '503456789098722', '0', 34),
(3, 'Huỳnh Bá Viên', 'Nam', 'Quận 5, HCM', '1996-02-02', '0988899999', '423123456', 'Tày', NULL, '513456789098722', '0', 35),
(4, 'Trương Tấn Trọng', 'Nam', 'Quận 8, HCM', '1977-01-01', '0911112233', '452513137', 'Nùng', NULL, '523456789098722', '0', 36),
(5, 'Trịnh Thị nhung', 'Nữ', 'Quận 9, HCM', '1992-05-20', '0933344455', '445513130', 'Kinh', 'sinh viên', '533456789098722', '1', 37),
(6, 'Trần Thụy Dung', 'Nữ', 'Quận 3, HCM', '1992-12-22', '0966655577', '465513137', 'Kinh', NULL, '543456789098722', '0', 38),
(7, 'Nguyễn Phương Linh', 'Nam', 'Quận 9, HCM', '2012-02-02', '0999988899', '472513137', 'Kinh', NULL, '553456789098722', '0', 39),
(8, 'Tố Nga', 'Nam', 'Quận 1, HCM', '1992-12-02', '0977766655', '482513137', 'Kinh', NULL, '563456789098722', '0', 40),
(9, 'Trinh Nữ', 'Nam', 'Quận 9, HCM', '2013-06-01', '0966677777', '491234567', 'Kinh', NULL, '571234567891222', '0', 41),
(24, 'Thu Điểm Nguyễn', 'Nu', '97 Man Thiện, Hiệp Phú, Quận 9, HCM', '1996-10-28', '0938568110', '501089273', 'Kinh', 'Sinh viên', '583456789098765', '0', 62),
(25, 'Nguyễn Thị Thu Điểm', 'Nu', '97 Man Thiện, Hiệp Phú, Quận 9, HCM', '1996-12-08', '0938568110', '512513130', 'Kinh', 'Sinh viên', '593456789111110', '0', 63);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblcttoathuoc`
--

CREATE TABLE `tblcttoathuoc` (
  `id` int(11) NOT NULL,
  `idtoathuoc` int(11) NOT NULL,
  `idthuoc` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `tongTien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblcttoathuoc`
--

INSERT INTO `tblcttoathuoc` (`id`, `idtoathuoc`, `idthuoc`, `soLuong`, `tongTien`) VALUES
(1, 1, 2, 10, '100000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldangkixetnghiem`
--

CREATE TABLE `tbldangkixetnghiem` (
  `id` int(11) NOT NULL,
  `idBenhnhan` int(11) NOT NULL,
  `idXetnghiem` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `ngay` date NOT NULL,
  `gio` time NOT NULL,
  `tinhTrang` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: chưa xét nghiệm; 1: Xét nghiệm rồi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldangkixetnghiem`
--

INSERT INTO `tbldangkixetnghiem` (`id`, `idBenhnhan`, `idXetnghiem`, `soTT`, `ngay`, `gio`, `tinhTrang`) VALUES
(1, 25, 1, 9, '2018-08-10', '10:00:00', '0'),
(2, 24, 1, 10, '2018-08-10', '10:15:00', '0'),
(3, 9, 1, 25, '2018-08-10', '14:00:00', '0'),
(4, 8, 3, 21, '2018-08-10', '13:00:00', '0'),
(5, 1, 3, 1, '2018-08-10', '08:00:00', '0'),
(6, 3, 6, 29, '2018-08-10', '15:00:00', '0'),
(7, 6, 6, 5, '2018-08-10', '09:00:00', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldangnhap`
--

CREATE TABLE `tbldangnhap` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '123',
  `quyen` int(1) NOT NULL DEFAULT '1' COMMENT '0: Bác sĩ ; 1: Bệnh nhân',
  `tinhTrang` int(1) NOT NULL DEFAULT '0' COMMENT '0: Còn tham gia hệ thống; 1: Hết tham gia hệ thống'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldangnhap`
--

INSERT INTO `tbldangnhap` (`id`, `Email`, `matKhau`, `quyen`, `tinhTrang`) VALUES
(1, 'thanhduan1@gmail.com', 'MTIzNDU2', 0, 0),
(2, 'khacvu2@gmail.com', 'MTIzNDU2', 0, 0),
(3, 'vavinh3@gmail.com', 'MTIzNDU2', 0, 0),
(4, 'vanninh4@gmail.com', 'MTIzNDU2', 0, 0),
(5, 'minhduc5@gmail.com', 'MTIzNDU2', 0, 0),
(6, 'hongvan6@gmail.com', 'MTIzNDU2', 0, 0),
(7, 'thevinh7@gmail.com', 'MTIzNDU2', 0, 0),
(8, 'hailong8@gmail.com', 'MTIzNDU2', 0, 0),
(9, 'thinhanh9@gmail.com', 'MTIzNDU2', 0, 0),
(10, 'giaochieu10@gmail.com', 'MTIzNDU2', 0, 0),
(11, 'vantinh11@gmail.com', 'MTIzNDU2', 0, 0),
(12, 'myhanh12@gmail.com', 'MTIzNDU2', 0, 0),
(13, 'thanhhai13@gmail.com', 'MTIzNDU2', 0, 0),
(14, 'thanhtoan14@gmail.com', 'MTIzNDU2', 0, 0),
(15, 'hongque15@gmail.com', 'MTIzNDU2', 0, 0),
(16, 'nguyentuan16@gmail.com', 'MTIzNDU2', 0, 0),
(17, 'cuutung17@gmail.com', 'MTIzNDU2', 0, 0),
(18, 'vanhien18@gmail.com', 'MTIzNDU2', 0, 0),
(19, 'xuantai19@gmail.com', 'MTIzNDU2', 0, 0),
(20, 'maudat20@gmail.com', 'MTIzNDU2', 0, 0),
(21, 'thuyngan21@gmail.com', 'MTIzNDU2', 0, 0),
(22, 'thanhson22@gmail.com', 'MTIzNDU2', 0, 0),
(23, 'ngocvan23@gmail.com', 'MTIzNDU2', 0, 0),
(24, 'thithanh24@gmail.com', 'MTIzNDU2', 0, 0),
(25, 'huongtan25@gmail.com', 'MTIzNDU2', 0, 0),
(26, 'hongtan26@gmail.com', 'MTIzNDU2', 0, 0),
(27, 'vanphuoc27@gmail.com', 'MTIzNDU2', 0, 0),
(28, 'thithien28@gmail.com', 'MTIzNDU2', 0, 0),
(29, 'nhatphuong29@gmail.com', 'MTIzNDU2', 0, 0),
(30, 'thithuy30@gmail.com', 'MTIzNDU2', 0, 0),
(31, 'nga31@gmail.com', 'MTIzNDU2', 0, 0),
(32, 'thithien32@gmail.com', 'MTIzNDU2', 0, 0),
(33, 'vanthien33@gmail.com', 'MTIzNDU2', 1, 0),
(34, 'minhvuong34@gmail.com', 'MTIzNDU2', 1, 0),
(35, 'bavien35@gmail.com', 'MTIzNDU2', 1, 0),
(36, 'tantrong36@gmail.com', 'MTIzNDU2', 1, 0),
(37, 'thinhung37@gmail.com', 'MTIzNDU2', 1, 0),
(38, 'thuydung38@gmail.com', 'MTIzNDU2', 1, 0),
(39, 'phuonglinh39@gmail.com', 'MTIzNDU2', 1, 0),
(40, 'tonga40@gmail.com', 'MTIzNDU2', 1, 0),
(41, 'trinhnu41@gmail.com', 'MTIzNDU2', 1, 0),
(62, 'diemnguyentt2810@gmail.com', 'MTIzNDU2', 1, 0),
(63, 'diemnguyentt2@gmail.com', 'MTIzNDU2', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbldatlichkham`
--

CREATE TABLE `tbldatlichkham` (
  `id` int(11) NOT NULL,
  `idBenhnhan` int(11) NOT NULL,
  `idBacsi` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `ngayHen` date NOT NULL,
  `gioHen` time NOT NULL,
  `soDT` char(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lyDo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tinhTrang` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '0: Đã khám; 1: Chưa khám',
  `chuDong` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '1: Bác sĩ ; 0: Bệnh nhân',
  `ngayTao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbldatlichkham`
--

INSERT INTO `tbldatlichkham` (`id`, `idBenhnhan`, `idBacsi`, `soTT`, `ngayHen`, `gioHen`, `soDT`, `lyDo`, `tinhTrang`, `chuDong`, `ngayTao`) VALUES
(1, 8, 12, 13, '2018-06-01', '07:00:00', '0909090909', 'Đau mắt', '1', '0', '2018-08-06 18:33:50'),
(2, 9, 12, 15, '2018-06-01', '07:10:00', '11111111', 'Cận', '1', '0', '2018-08-06 18:33:44'),
(3, 1, 3, 13, '2018-07-02', '07:00:00', '0938568110', 'Sốt', '1', '0', '2018-08-06 18:34:02'),
(4, 25, 3, 25, '2018-08-05', '14:00:00', '0938568110', 'cảm cúm', '0', '0', '2018-08-06 18:43:32'),
(5, 24, 7, 27, '2018-08-02', '14:30:00', '0938568110', 'sốt', '1', '0', '2018-08-09 17:01:52'),
(6, 24, 25, 25, '2018-08-05', '14:00:00', '0938568110', 'Đau mắt', '1', '0', '2018-08-04 07:09:08'),
(7, 24, 18, 33, '2018-08-03', '16:00:00', '0938568110', 'Đau họng', '1', '0', '2018-08-04 06:51:40'),
(8, 9, 24, 1, '2018-08-03', '08:00:00', '0938568110', 'Đau', '1', '0', '2018-08-04 06:51:40'),
(9, 9, 32, 35, '2018-08-03', '16:30:00', '0938568110', 'Tiêm ngừa', '1', '0', '2018-08-09 17:01:48'),
(10, 24, 3, 31, '2018-08-06', '15:30:00', '0938568110', 'Đau đầu', '1', '0', '2018-08-04 07:39:10'),
(15, 25, 10, 1, '2018-08-03', '08:00:00', '0938568110', 'Đau răng', '1', '0', '2018-08-04 06:51:40'),
(16, 3, 25, 30, '2018-08-03', '15:15:00', '0938568110', 'Đông y', '1', '0', '2018-08-04 06:51:40'),
(17, 3, 1, 17, '2018-08-04', '12:00:00', '0938568110', 'Nấm da', '0', '1', '2018-08-09 17:01:44'),
(18, 3, 18, 33, '2018-08-03', '16:00:00', '0938568110', 'Đau họng', '1', '0', '2018-08-04 06:51:40'),
(19, 7, 18, 33, '2018-08-03', '16:00:00', '0938568110', 'Đau họng', '1', '0', '2018-08-04 06:51:40'),
(20, 7, 7, 5, '2018-08-03', '09:00:00', '0938568110', 'Chấn thương', '1', '0', '2018-08-04 06:51:40'),
(21, 7, 11, 31, '2018-08-03', '15:30:00', '0938568110', 'Bứu', '1', '0', '2018-08-04 06:51:40'),
(22, 3, 21, 3, '2018-08-05', '08:30:00', '0938568110', 'Đau mắt', '1', '0', '2018-08-04 06:51:40'),
(23, 6, 5, 26, '2018-08-04', '14:15:00', '0938568111', 'Đau răng', '1', '0', '2018-08-04 06:51:40'),
(24, 6, 32, 5, '2018-08-04', '09:00:00', '0938568111', 'Tiêm ngừa', '1', '0', '2018-08-04 06:51:40'),
(28, 25, 3, 17, '2018-08-05', '12:00:00', '', 'Dau', '1', '0', '2018-08-04 06:52:14'),
(29, 25, 3, 25, '2018-08-09', '14:00:00', '', 'Tim', '1', '0', '2018-08-09 16:37:29'),
(30, 25, 18, 36, '2018-08-09', '16:45:00', '', 'Dau hong', '1', '1', '2018-08-09 16:37:43'),
(31, 25, 3, 29, '2018-08-06', '15:00:00', '', 'Suy tim', '1', '0', '2018-08-09 17:01:18'),
(32, 25, 21, 17, '2018-08-08', '12:00:00', '', 'Đau mắt', '0', '1', '2018-08-09 16:59:19'),
(35, 25, 10, 36, '2018-08-05', '16:45:00', '', 'Đau răng', '1', '1', '2018-08-09 17:01:40'),
(40, 4, 3, 1, '2018-08-10', '08:00:00', '', 'Đau tim', '1', '0', '2018-08-09 17:03:07'),
(41, 5, 3, 2, '2018-08-10', '08:15:00', '', 'Đau tim', '1', '0', '2018-08-09 17:03:51'),
(42, 6, 3, 3, '2018-08-10', '08:30:00', '', 'Đau tim', '1', '0', '2018-08-09 17:04:50'),
(43, 25, 3, 4, '2018-08-10', '08:45:00', '', 'Đau tim', '1', '0', '2018-08-09 17:05:33'),
(45, 3, 3, 9, '2018-08-10', '10:00:00', '', 'Đau tim', '1', '0', '2018-08-09 17:22:16'),
(46, 25, 21, 1, '2018-08-13', '08:00:00', '0938568110', 'Đau mắt', '0', '0', '2018-08-10 18:11:58'),
(47, 1, 21, 2, '2018-08-13', '08:15:00', '0938568110', 'Cận thị', '1', '1', '2018-08-10 18:08:38'),
(48, 24, 21, 7, '2018-08-13', '09:30:00', '0938568110', 'Mắt sưng đỏ', '1', '0', '2018-08-10 18:07:07'),
(49, 7, 21, 3, '2018-08-13', '08:30:00', '0938568110', 'Mắt đỏ', '1', '0', '2018-08-10 18:08:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblkhoa`
--

CREATE TABLE `tblkhoa` (
  `id` int(11) NOT NULL,
  `tenKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lePhiKHam` decimal(6,0) NOT NULL,
  `donGiaNgayDem` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblkhoa`
--

INSERT INTO `tblkhoa` (`id`, `tenKhoa`, `lePhiKHam`, `donGiaNgayDem`) VALUES
(1, 'PK NỘI 1 (TIM MẠCH - NỘI TIẾT - THẦN KINH)', '20000', '45000'),
(2, 'PK NỘI 2 (TIM MẠCH - TIÊU HÓA - HÔ HẤP - TRUYỀN NHIỄM - DA LIỄU)', '20000', '45000'),
(3, 'PK NỘI 3 (NỘI CHUNG - DA LIỄU - KẾT LUẬN KHÁM SỨC KHỎE) ', '20000', '45000'),
(4, 'PK NGOẠI 1 (CHẤN THƯƠNG CHỈNH HÌNH - NGOẠI THẦN KINH - BỎNG) ', '20000', '45000'),
(5, 'PK NGOẠI 2 (NGOẠI GAN MẬT, NGOẠI TỔNG QUÁT - U BƯỚU - TIẾT NIỆU) ', '20000', '45000'),
(6, 'PK TAI MŨI HỌNG ', '20000', '45000'),
(7, 'PK RĂNG HÀM MẶT: CHỮA BỆNH RĂNG MIỆNG, CHỈNH HÌNH HÀM, MẶT, LÀM RĂNG GIẢ. ', '20000', '70000'),
(8, 'PK MẮT ', '20000', '45000'),
(9, 'PK ĐÔNG Y ', '20000', '45000'),
(10, 'PK SẢN PHỤ KHOA ', '20000', '45000'),
(11, 'PK NHI ', '20000', '45000'),
(12, 'PK TIÊM NGỪA', '20000', '45000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblphieuxetnghiem`
--

CREATE TABLE `tblphieuxetnghiem` (
  `id` int(11) NOT NULL,
  `idXetnghiem` int(11) NOT NULL,
  `idBenhan` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `ngayXetnghiem` date NOT NULL,
  `gioXetnghiem` time NOT NULL,
  `lanThu` int(11) DEFAULT '1',
  `ketQua` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblphieuxetnghiem`
--

INSERT INTO `tblphieuxetnghiem` (`id`, `idXetnghiem`, `idBenhan`, `soTT`, `ngayXetnghiem`, `gioXetnghiem`, `lanThu`, `ketQua`) VALUES
(1, 1, 1, 35, '2018-06-01', '10:00:00', 1, 'Bình thường'),
(2, 2, 1, 35, '2018-06-13', '10:00:00', 2, 'Bình thường'),
(3, 1, 3, 22, '2018-07-07', '08:30:00', 1, 'Bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthanhtoandot`
--

CREATE TABLE `tblthanhtoandot` (
  `id` int(11) NOT NULL,
  `idBenhan` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `ngayTra` date DEFAULT NULL,
  `soTien` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblthanhtoandot`
--

INSERT INTO `tblthanhtoandot` (`id`, `idBenhan`, `soTT`, `ngayTra`, `soTien`) VALUES
(1, 1, 17, '2018-06-01', '100000'),
(2, 1, 56, '2018-06-10', '50000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblthuoc`
--

CREATE TABLE `tblthuoc` (
  `id` int(11) NOT NULL,
  `tenThuoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `donVi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `xuatXu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `donGia` decimal(10,0) NOT NULL,
  `tinhTrang` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 là dang sử dụng; 1 là không sử dụng'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tblthuoc`
--

INSERT INTO `tblthuoc` (`id`, `tenThuoc`, `donVi`, `xuatXu`, `donGia`, `tinhTrang`) VALUES
(1, 'paracetamol', 'viên', 'Việt Nam', '100000', '0'),
(2, 'HAGINAT 125mg', 'hộp', 'Việt Nam', '200000', '0'),
(3, '	Vitamin D', 'viên', 'Việt Nam', '300000', '0'),
(4, '	Phenytoin', 'hộp', 'Việt Nam', '300000', '0'),
(5, 'Meclizine', 'hộp', 'Việt Nam', '250000', '0'),
(6, 'Cetirizine', 'hộp', 'Đức', '250000', '0'),
(7, '	Irbesartan', 'hộp', 'Mỹ', '250000', '0'),
(8, '	Quinapril', 'viên', 'Ý', '100000', '0'),
(9, 'Valsartan', 'viên', 'Ba Lan', '100000', '0'),
(10, '	Fentanyl', 'viên', 'Pháp', '350000', '0'),
(11, '	Levonorgestrel', 'Hộp', 'Mỹ', '350000', '0'),
(12, '	Omega 3', 'Viên', 'Mỹ', '150000', '0'),
(13, '	Dutasteride', 'Hộp\r\n', 'Mỹ', '150000', '0'),
(14, 'Furosemide', 'Hộp\r\n', 'Mỹ', '100000', '0'),
(15, '	Amoxycillin + Clavulanate potassium', 'Viên', 'Đức\r\n', '400000', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbltoathuoc`
--

CREATE TABLE `tbltoathuoc` (
  `id` int(11) NOT NULL,
  `tongTien` decimal(10,0) NOT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbltoathuoc`
--

INSERT INTO `tbltoathuoc` (`id`, `tongTien`, `ngayTao`) VALUES
(1, '0', '2018-08-04 17:11:04'),
(2, '0', '2018-08-04 17:11:11'),
(3, '0', '2018-08-04 17:11:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tblxetnghiem`
--

CREATE TABLE `tblxetnghiem` (
  `id` int(11) NOT NULL,
  `tenXetNghiem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phongXetNghiem` int(11) NOT NULL,
  `DonGia` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tblxetnghiem`
--

INSERT INTO `tblxetnghiem` (`id`, `tenXetNghiem`, `phongXetNghiem`, `DonGia`) VALUES
(1, 'Chụp X-quang', 1, '20000'),
(2, 'Xét nghiệm Máu', 3, '50000'),
(3, 'Xét nghiệm Nước tiểu', 5, '25000'),
(4, 'Xét nghiệm chuẩn đoán hình ảnh', 2, '45000'),
(5, 'Xét nghiệm tủy', 4, '100000'),
(6, 'Xét nghiệm viêm gan', 6, '200000'),
(7, 'Xét nghiệm chuẩn đoán tâm thần', 2, '50000'),
(8, 'Xét nghiệm da\r\n', 2, '50000'),
(9, 'Nội soi\r\n', 7, '200000');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tblbacsi`
--
ALTER TABLE `tblbacsi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CMND` (`CMND`),
  ADD UNIQUE KEY `BHYT` (`BHYT`),
  ADD KEY `dangNhap` (`idDangnhap`) USING BTREE,
  ADD KEY `maKhoa` (`idKhoa`) USING BTREE;

--
-- Chỉ mục cho bảng `tblbenhan`
--
ALTER TABLE `tblbenhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mabenhnhan` (`idBenhnhan`),
  ADD KEY `maTT` (`idToaThuoc`) USING BTREE,
  ADD KEY `tblbenhan_ibfk_3` (`idBacsi`);

--
-- Chỉ mục cho bảng `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CMND` (`CMND`),
  ADD UNIQUE KEY `BHYT` (`BHYT`),
  ADD KEY `dangNhap` (`idDangnhap`) USING BTREE;

--
-- Chỉ mục cho bảng `tblcttoathuoc`
--
ALTER TABLE `tblcttoathuoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblcctoathuoc_ibfk_1` (`idthuoc`),
  ADD KEY `tblcctoathuoc_ibfk_2` (`idtoathuoc`);

--
-- Chỉ mục cho bảng `tbldangkixetnghiem`
--
ALTER TABLE `tbldangkixetnghiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbldangkikhambenh_ibfk_1` (`idBenhnhan`),
  ADD KEY `idXetnghiem` (`idXetnghiem`);

--
-- Chỉ mục cho bảng `tbldangnhap`
--
ALTER TABLE `tbldangnhap`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`Email`);

--
-- Chỉ mục cho bảng `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mabenhnhan` (`idBenhnhan`) USING BTREE,
  ADD KEY `maBacsi` (`idBacsi`) USING BTREE;

--
-- Chỉ mục cho bảng `tblkhoa`
--
ALTER TABLE `tblkhoa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenKhoa` (`tenKhoa`);

--
-- Chỉ mục cho bảng `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maBenhan` (`idBenhan`) USING BTREE,
  ADD KEY `maXetnghiem` (`idXetnghiem`) USING BTREE;

--
-- Chỉ mục cho bảng `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maBenhan` (`idBenhan`) USING BTREE;

--
-- Chỉ mục cho bảng `tblthuoc`
--
ALTER TABLE `tblthuoc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenThuoc` (`tenThuoc`);

--
-- Chỉ mục cho bảng `tbltoathuoc`
--
ALTER TABLE `tbltoathuoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tblxetnghiem`
--
ALTER TABLE `tblxetnghiem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenXetNghiem` (`tenXetNghiem`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tblbacsi`
--
ALTER TABLE `tblbacsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tblbenhan`
--
ALTER TABLE `tblbenhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `tblcttoathuoc`
--
ALTER TABLE `tblcttoathuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbldangkixetnghiem`
--
ALTER TABLE `tbldangkixetnghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbldangnhap`
--
ALTER TABLE `tbldangnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tblkhoa`
--
ALTER TABLE `tblkhoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tblthuoc`
--
ALTER TABLE `tblthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbltoathuoc`
--
ALTER TABLE `tbltoathuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tblxetnghiem`
--
ALTER TABLE `tblxetnghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tblbacsi`
--
ALTER TABLE `tblbacsi`
  ADD CONSTRAINT `tblbacsi_ibfk_1` FOREIGN KEY (`idKhoa`) REFERENCES `tblkhoa` (`id`),
  ADD CONSTRAINT `tblbacsi_ibfk_2` FOREIGN KEY (`idDangnhap`) REFERENCES `tbldangnhap` (`id`);

--
-- Các ràng buộc cho bảng `tblbenhan`
--
ALTER TABLE `tblbenhan`
  ADD CONSTRAINT `tblbenhan_ibfk_1` FOREIGN KEY (`idBenhnhan`) REFERENCES `tblbenhnhan` (`id`),
  ADD CONSTRAINT `tblbenhan_ibfk_2` FOREIGN KEY (`idToaThuoc`) REFERENCES `tbltoathuoc` (`id`),
  ADD CONSTRAINT `tblbenhan_ibfk_3` FOREIGN KEY (`idBacsi`) REFERENCES `tblbacsi` (`id`);

--
-- Các ràng buộc cho bảng `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  ADD CONSTRAINT `tblbenhnhan_ibfk_1` FOREIGN KEY (`idDangnhap`) REFERENCES `tbldangnhap` (`id`);

--
-- Các ràng buộc cho bảng `tblcttoathuoc`
--
ALTER TABLE `tblcttoathuoc`
  ADD CONSTRAINT `tblcctoathuoc_ibfk_1` FOREIGN KEY (`idthuoc`) REFERENCES `tblthuoc` (`id`),
  ADD CONSTRAINT `tblcctoathuoc_ibfk_2` FOREIGN KEY (`idtoathuoc`) REFERENCES `tbltoathuoc` (`id`);

--
-- Các ràng buộc cho bảng `tbldangkixetnghiem`
--
ALTER TABLE `tbldangkixetnghiem`
  ADD CONSTRAINT `tbldangkikhambenh_ibfk_1` FOREIGN KEY (`idBenhnhan`) REFERENCES `tblbenhnhan` (`id`),
  ADD CONSTRAINT `tbldangkixetnghiem_ibfk_1` FOREIGN KEY (`idXetnghiem`) REFERENCES `tblxetnghiem` (`id`);

--
-- Các ràng buộc cho bảng `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  ADD CONSTRAINT `tbldatlichkham_ibfk_1` FOREIGN KEY (`idBacsi`) REFERENCES `tblbacsi` (`id`),
  ADD CONSTRAINT `tbldatlichkham_ibfk_2` FOREIGN KEY (`idBenhnhan`) REFERENCES `tblbenhnhan` (`id`);

--
-- Các ràng buộc cho bảng `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  ADD CONSTRAINT `blphieuxetnghiem_ibfk_1` FOREIGN KEY (`idBenhan`) REFERENCES `tblbenhan` (`id`),
  ADD CONSTRAINT `blphieuxetnghiem_ibfk_2` FOREIGN KEY (`idXetnghiem`) REFERENCES `tblxetnghiem` (`id`);

--
-- Các ràng buộc cho bảng `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  ADD CONSTRAINT `tblthanhtoandot_ibfk_1` FOREIGN KEY (`idBenhan`) REFERENCES `tblbenhan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
