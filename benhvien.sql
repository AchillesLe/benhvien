-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2018 at 07:43 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbacsi`
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
-- Dumping data for table `tblbacsi`
--

INSERT INTO `tblbacsi` (`id`, `ten`, `idKhoa`, `ngaySinh`, `gioiTinh`, `diaChi`, `CMND`, `danToc`, `trinhDo`, `BHYT`, `soDT`, `idDangnhap`) VALUES
(1, 'Hoàng Thanh Duân', 3, '1970-01-01', 'Nam', 'Quận 9, HCM', '205513136', 'Kinh', 'DH', '', '16577736166', 1),
(2, ' Phùng Khắc Vũ', 4, '0000-00-00', 'Nam', 'Quận 11, HCM', '205513137', NULL, 'CH', NULL, '16577736167', 2),
(3, ' Phạm Văn Vĩnh', 1, '0000-00-00', 'Nam', 'Quận 3, HCM', '205513135', NULL, 'CH', NULL, '16577736168', 3),
(4, 'Chu Văn Ninh', 2, '0000-00-00', 'Nam', 'Bình Thạnh, HCM', '205513138', NULL, 'CH', NULL, '16577736169', 4),
(5, 'Văn Minh Đức', 7, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513567', NULL, 'DH', NULL, '0165778000', 5),
(6, 'Thạch Hồng Vân', 5, '0000-00-00', 'Nữ', 'Quận 10, HCM', '205513147', NULL, 'CH', NULL, '16597736167', 6),
(7, ' Lê Thế Vinh', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '205514123', NULL, 'DH', NULL, '0123456756', 7),
(8, 'Quách Hải Long', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '205513141', NULL, 'CH', NULL, '16577736145', 8),
(9, 'Ngô Thị Nhanh', 3, '0000-00-00', 'Nam', 'Quận 1, HCM', '205513142', NULL, 'CH', NULL, '16577736154', 9),
(10, 'Đặng Giao Chiêu', 7, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513222', NULL, 'DH', NULL, '0165778002', 10),
(11, 'Phạm Văn Tịnh', 5, '1992-12-22', 'Nữ', 'Quận 10, HCM', '205513136', NULL, 'DH', NULL, '01657773616', 11),
(12, 'Trần Thị Mỹ Hạnh', 2, '2013-06-02', 'Nữ', 'Quận 9, HCM', '205513135', NULL, 'TH', NULL, '01657773616', 12),
(13, ' Lương Thanh Hải', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '205513138', NULL, 'DH', NULL, '165712345', 13),
(14, 'Nguyễn Thanh Toàn', 4, '0000-00-00', 'Nam', 'Quận 9, HCM', '205513345', NULL, 'DH', NULL, '165734567', 14),
(15, 'Phạm Hồng Quế', 5, '1992-12-22', 'Nữ', 'Quận 10, HCM', '205513136', NULL, 'DH', NULL, '0165778767', 15),
(16, 'Nguyễn Tuấn', 6, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513324', NULL, 'DH', NULL, '0165778733', 16),
(17, 'Vũ Cửu Tùng', 5, '1992-12-22', 'Nữ', 'Quận 10, HCM', '205513189', NULL, 'DH', NULL, '0165778755', 17),
(18, 'Trà Văn Hiên', 6, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513309', NULL, 'DH', NULL, '0165778700', 18),
(19, 'Nguyễn Bảo Xuân Tài', 7, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513222', NULL, 'DH', NULL, '0165778722', 19),
(20, 'Nguyễn Mậu Đạt', 6, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513300', NULL, 'DH', NULL, '0165778744', 20),
(21, 'Trần Thị Thúy Ngân', 8, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513301', NULL, 'DH', NULL, '0165778745', 21),
(22, 'Nguyễn Thanh Sơn', 8, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513221', NULL, 'DH', NULL, '0165778003', 22),
(23, 'Huỳnh Ngọc Vân', 9, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513229', NULL, 'DH', NULL, '0165778009', 23),
(24, 'Đinh Thị Thảnh', 10, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513227', NULL, 'DH', NULL, '0165778005', 24),
(25, 'Nguyễn Nhị Hương Tân', 9, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513111', NULL, 'DH', NULL, '0165777777', 25),
(26, 'Trịnh Hồng Tân', 9, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513777', NULL, 'DH', NULL, '0165777779', 26),
(27, 'Trần Văn Phước', 10, '1992-12-22', 'Nam', 'Quận 9, HCM', '205513224', NULL, 'DH', NULL, '0165778006', 27),
(28, 'Hà Thị Thiện', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513111', NULL, 'DH', NULL, '0165778111', 28),
(29, 'Nguyễn Nhất Phương', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513112', NULL, 'DH', NULL, '0165778112', 29),
(30, 'Lê Thị Thúy', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513110', NULL, 'DH', NULL, '0165778113', 30),
(31, 'Nay H\' Nga', 11, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513100', NULL, 'DH', NULL, '0165778114', 31),
(32, 'Hà Thị Thiện', 12, '1992-12-22', 'Nữ', 'Quận 9, HCM', '205513109', NULL, 'DH', NULL, '0165778115', 32);

-- --------------------------------------------------------

--
-- Table structure for table `tblbenhan`
--

CREATE TABLE `tblbenhan` (
  `id` int(11) NOT NULL,
  `idBenhnhan` int(11) NOT NULL,
  `idBacsi` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `chuanDoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chieuCao` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `canNang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `huyetAp` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idTT` int(11) DEFAULT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lanThu` int(11) NOT NULL DEFAULT '1',
  `tinhTrang` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0: Chưa hoàn tất; 1: Đã hoàn tất'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblbenhan`
--

INSERT INTO `tblbenhan` (`id`, `idBenhnhan`, `idBacsi`, `soTT`, `chuanDoan`, `chieuCao`, `canNang`, `huyetAp`, `idTT`, `ngayTao`, `lanThu`, `tinhTrang`) VALUES
(1, 1, 3, 13, 'Sốt', '1m75', '60kg', '110mmHg', 1, '2018-08-04 17:20:29', 1, '0'),
(2, 8, 6, 15, 'Viêm loét giác mạc', '1m55', '40kg', '112mmHg', 2, '2018-08-04 17:20:34', 1, '0'),
(3, 9, 4, 13, 'Cận Thị', '1m60', '45kg', '100mmHg', 1, '2018-08-04 17:20:39', 1, '0'),
(4, 6, 32, 19, 'Cận Thị', '1m62', '45kg', '100mmHg', 2, '2018-08-04 17:20:44', 1, '0'),
(5, 8, 20, 18, 'Viêm loét giác mạc', '1m55', '40kg', '112mmHg', 2, '2018-08-04 17:20:48', 2, '0'),
(6, 3, 10, 11, 'Sốt', '1m75', '60kg', '110mmHg', 2, '2018-08-04 17:20:51', 1, '0'),
(7, 1, 5, 10, 'Đau họng', '1m75', '60kg', '110mmHg', 1, '2018-08-04 17:20:54', 2, '0'),
(8, 25, 18, 7, 'Đau ruột thừa', '1m60', '45kg', '100mmHg', 1, '2018-08-04 17:37:49', 1, '0'),
(9, 4, 12, 1, 'Đau đầu', '1m60', '45kg', '100mmHg', 1, '2018-08-04 17:37:54', 1, '0'),
(10, 4, 27, 1, 'Đau chân', '1m60', '45kg', '100mmHg', 3, '2018-08-01 17:37:54', 2, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblbenhnhan`
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
-- Dumping data for table `tblbenhnhan`
--

INSERT INTO `tblbenhnhan` (`id`, `ten`, `gioiTinh`, `diaChi`, `ngaySinh`, `soDT`, `CMND`, `danToc`, `ngheNghiep`, `BHYT`, `ngoaiTuyen`, `idDangnhap`) VALUES
(1, 'Nguyễn Văn Thiện', 'Nam', 'Quận 9, HCM', '1986-06-01', '0911112222', '205513136', 'Kinh', 'giáo Viên', '1234567890987', '1', 33),
(2, 'Trịnh Minh Vương', 'Nam', 'Quận 10, HCM', '2000-02-02', '0922233333', '205513135', 'Kinh', NULL, '1234567890', '0', 34),
(3, 'Huỳnh Bá Viên', 'Nam', 'Quận 5, HCM', '1996-02-02', '0988899999', '123456', 'Tày', NULL, '54343', '0', 35),
(4, 'Trương Tấn Trọng', 'Nam', 'Quận 8, HCM', '1977-01-01', '0911112233', NULL, 'Nùng', NULL, '32438768564', '0', 36),
(5, 'Trịnh Thị nhung', 'Nữ', 'Quận 9, HCM', '1992-05-20', '0933344455', '205513130', 'Kinh', 'sinh viên', '3254658798', '1', 37),
(6, 'Trần Thụy Dung', 'Nữ', 'Quận 3, HCM', '1992-12-22', '0966655577', '205513137', 'Kinh', NULL, '85968486276', '0', 38),
(7, 'Nguyễn Phương Linh', 'Nam', 'Quận 9, HCM', '2012-02-02', '0999988899', NULL, 'Kinh', NULL, '123456789', '0', 39),
(8, 'Tố Nga', 'Nam', 'Quận 1, HCM', '1992-12-02', '0977766655', NULL, 'Kinh', NULL, '123456789123454', '0', 40),
(9, 'Trinh Nữ', 'Nam', 'Quận 9, HCM', '2013-06-01', '0966677777', '121234567', 'Kinh', NULL, '1234567891', '0', 41),
(24, 'Nguyễn Thị Thu Điểm', 'Nu', '97 Man Thiện, Hiệp Phú, Quận 9, HCM', '1996-10-28', '0938568110', '231089273', 'Kinh', 'Sinh viên', '123456789098765', '0', 62),
(25, 'Nguyễn Thị Thu Điểm', 'Nu', '97 Man Thiện, Hiệp Phú, Quận 9, HCM', '1996-10-28', '0938568110', '', '', 'Sinh viên', '', '0', 63);

-- --------------------------------------------------------

--
-- Table structure for table `tblcttoathuoc`
--

CREATE TABLE `tblcttoathuoc` (
  `id` int(11) NOT NULL,
  `idtoathuoc` int(11) NOT NULL,
  `idthuoc` int(11) NOT NULL,
  `soLuong` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tongTien` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblcttoathuoc`
--

INSERT INTO `tblcttoathuoc` (`id`, `idtoathuoc`, `idthuoc`, `soLuong`, `tongTien`) VALUES
(1, 1, 2, '10 viên', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `tbldangnhap`
--

CREATE TABLE `tbldangnhap` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '123',
  `quyen` int(1) NOT NULL DEFAULT '1' COMMENT '0: Bác sĩ ; 1: Bệnh nhân',
  `tinhTrang` int(1) NOT NULL DEFAULT '0' COMMENT '0: Còn tham gia hệ thống; 1: Hết tham gia hệ thống'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbldangnhap`
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
-- Table structure for table `tbldatlichkham`
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
-- Dumping data for table `tbldatlichkham`
--

INSERT INTO `tbldatlichkham` (`id`, `idBenhnhan`, `idBacsi`, `soTT`, `ngayHen`, `gioHen`, `soDT`, `lyDo`, `tinhTrang`, `chuDong`, `ngayTao`) VALUES
(1, 8, 12, 13, '2018-06-01', '07:00:00', '0909090909', 'Đau mắt', '0', '0', '2018-08-04 06:51:40'),
(2, 9, 12, 15, '2018-06-01', '07:10:00', '11111111', 'Cận', '0', '0', '2018-08-04 06:51:40'),
(3, 1, 3, 13, '2018-07-02', '07:00:00', '0938568110', 'Sốt', '0', '0', '2018-08-04 06:51:40'),
(4, 25, 3, 25, '2018-08-05', '14:00:00', '0938568110', 'cảm cúm', '1', '0', '2018-08-04 07:01:44'),
(5, 24, 7, 27, '2018-08-03', '14:30:00', '0938568110', 'sốt', '1', '0', '2018-08-04 06:51:40'),
(6, 24, 25, 25, '2018-08-05', '14:00:00', '0938568110', 'Đau mắt', '1', '0', '2018-08-04 07:09:08'),
(7, 24, 18, 33, '2018-08-03', '16:00:00', '0938568110', 'Đau họng', '1', '0', '2018-08-04 06:51:40'),
(8, 9, 24, 1, '2018-08-03', '08:00:00', '0938568110', 'Đau', '1', '0', '2018-08-04 06:51:40'),
(9, 9, 32, 35, '2018-08-03', '16:30:00', '0938568110', 'Tiêm ngừa', '1', '0', '2018-08-04 06:51:40'),
(10, 24, 3, 31, '2018-08-06', '15:30:00', '0938568110', 'Đau đầu', '1', '0', '2018-08-04 07:39:10'),
(15, 25, 10, 1, '2018-08-03', '08:00:00', '0938568110', 'Đau răng', '1', '0', '2018-08-04 06:51:40'),
(16, 3, 25, 30, '2018-08-03', '15:15:00', '0938568110', 'Đông y', '1', '0', '2018-08-04 06:51:40'),
(17, 3, 1, 17, '2018-08-03', '12:00:00', '0938568110', 'Nấm da', '1', '0', '2018-08-04 06:51:40'),
(18, 3, 18, 33, '2018-08-03', '16:00:00', '0938568110', 'Đau họng', '1', '0', '2018-08-04 06:51:40'),
(19, 7, 18, 33, '2018-08-03', '16:00:00', '0938568110', 'Đau họng', '1', '0', '2018-08-04 06:51:40'),
(20, 7, 7, 5, '2018-08-03', '09:00:00', '0938568110', 'Chấn thương', '1', '0', '2018-08-04 06:51:40'),
(21, 7, 11, 31, '2018-08-03', '15:30:00', '0938568110', 'Bứu', '1', '0', '2018-08-04 06:51:40'),
(22, 3, 21, 3, '2018-08-05', '08:30:00', '0938568110', 'Đau mắt', '1', '0', '2018-08-04 06:51:40'),
(23, 6, 5, 26, '2018-08-04', '14:15:00', '0938568111', 'Đau răng', '1', '0', '2018-08-04 06:51:40'),
(24, 6, 32, 5, '2018-08-04', '09:00:00', '0938568111', 'Tiêm ngừa', '1', '0', '2018-08-04 06:51:40'),
(28, 25, 3, 17, '2018-08-05', '12:00:00', '', 'Dau', '1', '0', '2018-08-04 06:52:14'),
(29, 25, 3, 25, '2018-08-04', '14:00:00', '', 'Tim', '1', '0', '2018-08-04 07:00:30'),
(30, 25, 18, 36, '2018-08-04', '16:45:00', '', 'Dau hong', '1', '0', '2018-08-04 07:10:01'),
(31, 25, 3, 29, '2018-08-05', '15:00:00', '', 'Suy tim', '1', '0', '2018-08-04 07:33:48'),
(32, 25, 21, 17, '2018-08-06', '12:00:00', '', 'Đau mắt', '1', '0', '2018-08-04 07:37:46'),
(35, 25, 10, 36, '2018-08-05', '16:45:00', '', 'Đau răng', '1', '0', '2018-08-04 08:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblkhoa`
--

CREATE TABLE `tblkhoa` (
  `id` int(11) NOT NULL,
  `tenKhoa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lePhiKHam` decimal(6,0) NOT NULL,
  `donGiaNgayDem` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblkhoa`
--

INSERT INTO `tblkhoa` (`id`, `tenKhoa`, `lePhiKHam`, `donGiaNgayDem`) VALUES
(1, 'PK NỘI 1 (TIM MẠCH - NỘI TIẾT - THẦN KINH)', '20000', '45000'),
(2, 'PK NỘI 2 (TIM MẠCH - TIÊU HÓA - HÔ HẤP - TRUYỀN NHIỄM - DA LIỄU) ', '20000', '45000'),
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
-- Table structure for table `tblphieuxetnghiem`
--

CREATE TABLE `tblphieuxetnghiem` (
  `id` int(11) NOT NULL,
  `idXetnghiem` int(11) NOT NULL,
  `idBenhan` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `ngayXetnghiem` date NOT NULL,
  `gioXetnghiem` time NOT NULL,
  `lanThu` int(11) DEFAULT '1',
  `ketQua` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thanhTien` decimal(6,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblphieuxetnghiem`
--

INSERT INTO `tblphieuxetnghiem` (`id`, `idXetnghiem`, `idBenhan`, `soTT`, `ngayXetnghiem`, `gioXetnghiem`, `lanThu`, `ketQua`, `thanhTien`) VALUES
(1, 1, 1, 35, '2018-06-01', '10:00:00', 1, 'Bình thường', '20000'),
(2, 2, 1, 35, '2018-06-13', '10:00:00', 2, 'Bình thường', '50000'),
(3, 1, 3, 22, '2018-07-07', '08:30:00', 1, 'Bình thường', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `tblthanhtoandot`
--

CREATE TABLE `tblthanhtoandot` (
  `id` int(11) NOT NULL,
  `idBenhan` int(11) NOT NULL,
  `soTT` int(11) NOT NULL,
  `ngayTra` date DEFAULT NULL,
  `soTien` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblthanhtoandot`
--

INSERT INTO `tblthanhtoandot` (`id`, `idBenhan`, `soTT`, `ngayTra`, `soTien`) VALUES
(1, 1, 17, '2018-06-01', '100000'),
(2, 1, 56, '2018-06-10', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `tblthuoc`
--

CREATE TABLE `tblthuoc` (
  `id` int(11) NOT NULL,
  `tenThuoc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `donVi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `xuatXu` varchar(255) DEFAULT NULL,
  `donGia` decimal(10,0) NOT NULL,
  `tinhTrang` char(1) NOT NULL DEFAULT '0' COMMENT '0 là dang sử dụng; 1 là không sử dụng'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblthuoc`
--

INSERT INTO `tblthuoc` (`id`, `tenThuoc`, `donVi`, `xuatXu`, `donGia`, `tinhTrang`) VALUES
(1, 'paracetamol', 'Mỗi sáng 1 viên', NULL, '0', '0'),
(2, 'HAGINAT 125mg', 'Mỗi ngày 3 viên', NULL, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbltoathuoc`
--

CREATE TABLE `tbltoathuoc` (
  `id` int(11) NOT NULL,
  `tongTien` decimal(10,0) NOT NULL,
  `ngayTao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbltoathuoc`
--

INSERT INTO `tbltoathuoc` (`id`, `tongTien`, `ngayTao`) VALUES
(1, '0', '2018-08-04 17:11:04'),
(2, '0', '2018-08-04 17:11:11'),
(3, '0', '2018-08-04 17:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblxetnghiem`
--

CREATE TABLE `tblxetnghiem` (
  `id` int(11) NOT NULL,
  `tenXetNghiem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phongXetNghiem` int(11) NOT NULL,
  `DonGia` decimal(6,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblxetnghiem`
--

INSERT INTO `tblxetnghiem` (`id`, `tenXetNghiem`, `phongXetNghiem`, `DonGia`) VALUES
(1, 'Chụp X-quang', 1, '20000'),
(2, 'Xét nghiệm Máu', 3, '50000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbacsi`
--
ALTER TABLE `tblbacsi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dangNhap` (`idDangnhap`) USING BTREE,
  ADD KEY `maKhoa` (`idKhoa`) USING BTREE;

--
-- Indexes for table `tblbenhan`
--
ALTER TABLE `tblbenhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mabenhnhan` (`idBenhnhan`),
  ADD KEY `maTT` (`idTT`) USING BTREE,
  ADD KEY `tblbenhan_ibfk_3` (`idBacsi`);

--
-- Indexes for table `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dangNhap` (`idDangnhap`) USING BTREE;

--
-- Indexes for table `tblcttoathuoc`
--
ALTER TABLE `tblcttoathuoc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tblcctoathuoc_ibfk_1` (`idthuoc`),
  ADD KEY `tblcctoathuoc_ibfk_2` (`idtoathuoc`);

--
-- Indexes for table `tbldangnhap`
--
ALTER TABLE `tbldangnhap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mabenhnhan` (`idBenhnhan`) USING BTREE,
  ADD KEY `maBacsi` (`idBacsi`) USING BTREE;

--
-- Indexes for table `tblkhoa`
--
ALTER TABLE `tblkhoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maBenhan` (`idBenhan`) USING BTREE,
  ADD KEY `maXetnghiem` (`idXetnghiem`) USING BTREE;

--
-- Indexes for table `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maBenhan` (`idBenhan`) USING BTREE;

--
-- Indexes for table `tblthuoc`
--
ALTER TABLE `tblthuoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltoathuoc`
--
ALTER TABLE `tbltoathuoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblxetnghiem`
--
ALTER TABLE `tblxetnghiem`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbacsi`
--
ALTER TABLE `tblbacsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblbenhan`
--
ALTER TABLE `tblbenhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblcttoathuoc`
--
ALTER TABLE `tblcttoathuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldangnhap`
--
ALTER TABLE `tbldangnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblkhoa`
--
ALTER TABLE `tblkhoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblthuoc`
--
ALTER TABLE `tblthuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltoathuoc`
--
ALTER TABLE `tbltoathuoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblxetnghiem`
--
ALTER TABLE `tblxetnghiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblbacsi`
--
ALTER TABLE `tblbacsi`
  ADD CONSTRAINT `tblbacsi_ibfk_1` FOREIGN KEY (`idKhoa`) REFERENCES `tblkhoa` (`id`),
  ADD CONSTRAINT `tblbacsi_ibfk_2` FOREIGN KEY (`idDangnhap`) REFERENCES `tbldangnhap` (`id`);

--
-- Constraints for table `tblbenhan`
--
ALTER TABLE `tblbenhan`
  ADD CONSTRAINT `tblbenhan_ibfk_1` FOREIGN KEY (`idBenhnhan`) REFERENCES `tblbenhnhan` (`id`),
  ADD CONSTRAINT `tblbenhan_ibfk_2` FOREIGN KEY (`idTT`) REFERENCES `tbltoathuoc` (`id`),
  ADD CONSTRAINT `tblbenhan_ibfk_3` FOREIGN KEY (`idBacsi`) REFERENCES `tblbacsi` (`id`);

--
-- Constraints for table `tblbenhnhan`
--
ALTER TABLE `tblbenhnhan`
  ADD CONSTRAINT `tblbenhnhan_ibfk_1` FOREIGN KEY (`idDangnhap`) REFERENCES `tbldangnhap` (`id`);

--
-- Constraints for table `tblcttoathuoc`
--
ALTER TABLE `tblcttoathuoc`
  ADD CONSTRAINT `tblcctoathuoc_ibfk_1` FOREIGN KEY (`idthuoc`) REFERENCES `tblthuoc` (`id`),
  ADD CONSTRAINT `tblcctoathuoc_ibfk_2` FOREIGN KEY (`idtoathuoc`) REFERENCES `tbltoathuoc` (`id`);

--
-- Constraints for table `tbldatlichkham`
--
ALTER TABLE `tbldatlichkham`
  ADD CONSTRAINT `tbldatlichkham_ibfk_1` FOREIGN KEY (`idBacsi`) REFERENCES `tblbacsi` (`id`),
  ADD CONSTRAINT `tbldatlichkham_ibfk_2` FOREIGN KEY (`idBenhnhan`) REFERENCES `tblbenhnhan` (`id`);

--
-- Constraints for table `tblphieuxetnghiem`
--
ALTER TABLE `tblphieuxetnghiem`
  ADD CONSTRAINT `blphieuxetnghiem_ibfk_1` FOREIGN KEY (`idBenhan`) REFERENCES `tblbenhan` (`id`),
  ADD CONSTRAINT `blphieuxetnghiem_ibfk_2` FOREIGN KEY (`idXetnghiem`) REFERENCES `tblxetnghiem` (`id`);

--
-- Constraints for table `tblthanhtoandot`
--
ALTER TABLE `tblthanhtoandot`
  ADD CONSTRAINT `tblthanhtoandot_ibfk_1` FOREIGN KEY (`idBenhan`) REFERENCES `tblbenhan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
