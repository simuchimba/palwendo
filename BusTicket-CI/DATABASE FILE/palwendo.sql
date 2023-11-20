-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 11:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `palwendo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Administrator', 'admin', '$2y$10$nvmCaXC4Ohua5eW4fFAMauISafgwvPsoRXVNnToZpbF4vWfBw.xvu', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812'),
('ADM0002', 'Second Admin', 'admin2', '$2y$10$ADbNVZYgiDi8SqGl1bB2NOgCufT2sK5v/T3BSZcIpFPVljDSb2S2K', 'assets/backend/img/default.png', 'cbahyu@gmail.com', '1', 1, '1552819095'),
('ADM0003', 'BS Owner', 'owner', '$2y$10$nvmCaXC4Ohua5eW4fFAMauISafgwvPsoRXVNnToZpbF4vWfBw.xvu', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'Power Tools Logistics', 'Airtel Money', '0978325677', 'assets/frontend/img/bank/airtel.png'),
('BNK0002', 'Power Tools Logistics', 'MTN MoMo', '0965119800', 'assets/frontend/img/bank/mtn.jpeg'),
('BNK0003', 'Power Tools Logistics', 'Zam Kwacha', '0952121290', 'assets/frontend/img/bank/zamtel.png'),
('BNK0004', 'Power Tools Logistics', 'Bank Transfer', '300124589', 'assets/frontend/img/bank/wvbank.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'Power Tools', 'ACP 3324', 23, 1, NULL),
('B002', 'Power Tools', 'ABG 8100', 23, 1, NULL),
('B003', 'Power Tools', 'ACX 9001', 23, 1, NULL),
('B004', 'Power Tools', 'BAT 2333', 23, 1, NULL),
('B005', 'Power Tools', 'ADD 3321', 23, 1, NULL),
('B006', 'Power Tools', 'CAC 5555', 23, 1, NULL),
('B007', 'Power Tools', 'ABX 8446', 23, 1, NULL),
('B008', 'Power Tools', 'ACC', 3443, 1, NULL),
('B009', 'Power Tools', 'BAV 9', 23, 1, NULL),
('B010', 'Power Tools', 'KUU 1', 23, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B001', 'TJ001', 'TJ003', 'LUSAKA', '06:00:00', '12:30:00', '300'),
('J0002', 'B010', 'TJ003', 'TJ001', 'CHINGOLA', '05:30:00', '13:00:00', '300'),
('J0003', 'B009', 'TJ005', 'TJ002', 'LIVINGSTONE', '04:00:00', '14:30:00', '390'),
('J0004', 'B004', 'TJ001', 'TJ007', 'LUSAKA', '05:00:00', '12:30:00', '400'),
('J0005', 'B003', 'TJ006', 'TJ004', 'MUFULIRA', '07:00:00', '13:45:00', '120'),
('J0006', 'B002', 'TJ007', 'TJ005', 'SOLWEZI', '06:30:00', '12:00:00', '400'),
('J0007', 'B007', 'TJ003', 'TJ006', 'CHINGOLA', '06:30:00', '13:45:00', '280'),
('J0008', 'B008', 'TJ001', 'TJ006', 'LUSAKA', '06:30:00', '13:30:00', '350');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_konfirmasi`
--

INSERT INTO `tbl_konfirmasi` (`kd_konfirmasi`, `kd_order`, `nama_konfirmasi`, `nama_bank_konfirmasi`, `norek_konfirmasi`, `total_konfirmasi`, `photo_konfirmasi`) VALUES
('KF0001', 'ORD00001', 'Gift Malama', NULL, '0979709820', '300', '/assets/frontend/upload/payment/sample_screenshot_of_payment1.png'),
('KF0002', 'ORD00001', 'kuunda', 'New Leaf Bank', '123456', '300', '/assets/frontend/upload/payment/sample_screenshot_of_payment2.png'),
('KF0003', 'ORD00002', 'kuunda', 'New Leaf Bank', '1234567889', '1200', '/assets/frontend/upload/payment/sample_screenshot_of_payment3.png'),
('KF0004', 'ORD00004', 'martha', 'New Leaf Bank', '0966565432', '600', '/assets/frontend/upload/payment/sample_screenshot_of_payment4.png'),
('KF0005', 'ORD00003', 'martha', 'New Leaf Bank', '222344343443', '400', '/assets/frontend/upload/payment/sample_screenshot_of_payment5.png'),
('KF0006', 'ORD00005', 'Gift Malama', 'New Leaf Bank', '123456789', '300', '/assets/frontend/upload/payment/sample_screenshot_of_payment6.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(41, 'ORD00001', 'TORD00001J0001202311149', 'J0001', 'CA0001', 'BNK0006', 'TJ003', 'Kuunda Simuchimba', 'Monday, 13 November 2023, 06:20', '2023-11-14', 'Kuunda', '87', '9', '652489/81/1', '0960442429', 'Chingola', 'kuundas025@gmail.com', '14-11-2023 06:20:39', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(42, 'ORD00002', 'TORD00002J00012023111518', 'J0001', 'CA0001', 'BNK0001', 'TJ003', 'Kuunda Simuchimba', 'Monday, 13 November 2023, 06:50', '2023-11-15', 'John', '87', '18', '12345678', '0960442429', 'Chingola', 'kuundas025@gmail.com', '14-11-2023 06:50:32', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(43, 'ORD00002', 'TORD00002J00012023111519', 'J0001', 'CA0001', 'BNK0001', 'TJ003', 'Kuunda Simuchimba', 'Monday, 13 November 2023, 06:50', '2023-11-15', 'Mulenga', '87', '19', '12345678', '0960442429', 'Chingola', 'kuundas025@gmail.com', '14-11-2023 06:50:32', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(44, 'ORD00002', 'TORD00002J00012023111522', 'J0001', 'CA0001', 'BNK0001', 'TJ003', 'Kuunda Simuchimba', 'Monday, 13 November 2023, 06:50', '2023-11-15', 'Mwape', '87', '22', '12345678', '0960442429', 'Chingola', 'kuundas025@gmail.com', '14-11-2023 06:50:32', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(45, 'ORD00002', 'TORD00002J00012023111523', 'J0001', 'CA0001', 'BNK0001', 'TJ003', 'Kuunda Simuchimba', 'Monday, 13 November 2023, 06:50', '2023-11-15', 'Rich', '89', '23', '12345678', '0960442429', 'Chingola', 'kuundas025@gmail.com', '14-11-2023 06:50:32', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(46, 'ORD00003', 'TORD00003J0004202311148', 'J0004', 'CA0002', 'BNK0001', 'TJ007', 'Martha Namuchimba', 'Tuesday, 14 November 2023, 04:46', '2023-11-14', 'Martha', '12', '8', '324567/76/1', '0967652211', 'Kitwe', 'martha@gmail.com', '15-11-2023 04:46:41', 'assets/frontend/upload/qrcode/ORD00003.png', '2'),
(47, 'ORD00004', 'TORD00004J00012023111410', 'J0001', 'CA0002', 'BNK0003', 'TJ003', 'Martha Namuchimba', 'Tuesday, 14 November 2023, 04:49', '2023-11-14', 'Kuunda', '21', '10', '324567/76/1', '0967652211', 'Kitwe', 'martha@gmail.com', '15-11-2023 04:49:15', 'assets/frontend/upload/qrcode/ORD00004.png', '1'),
(48, 'ORD00004', 'TORD00004J00012023111411', 'J0001', 'CA0002', 'BNK0003', 'TJ003', 'Martha Namuchimba', 'Tuesday, 14 November 2023, 04:49', '2023-11-14', 'Mulenga', '25', '11', '324567/76/1', '0967652211', 'Kitwe', 'martha@gmail.com', '15-11-2023 04:49:15', 'assets/frontend/upload/qrcode/ORD00004.png', '1'),
(49, 'ORD00005', 'TORD00005J0001202311218', 'J0001', 'CA0004', 'BNK0002', 'TJ003', 'Test Test', 'Tuesday, 21 November 2023, 05:10', '2023-11-21', 'John', '12', '8', '12345678', '0978656543', 'chingola', 'Test@gmail.com', '22-11-2023 05:10:21', 'assets/frontend/upload/qrcode/ORD00005.png', '2'),
(50, 'ORD00006', 'TORD00006J0008202311228', 'J0008', 'CA0004', 'BNK0001', 'TJ006', 'Test Test', 'Tuesday, 21 November 2023, 05:40', '2023-11-22', 'kuunda', '87', '8', '35644335', '0978656543', 'chingola', 'Test@gmail.com', '22-11-2023 05:40:45', 'assets/frontend/upload/qrcode/ORD00006.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) NOT NULL,
  `username_pelanggan` varchar(50) NOT NULL,
  `password_pelanggan` varchar(200) NOT NULL,
  `no_ktp_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` varchar(200) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `telpon_pelanggan` varchar(20) NOT NULL,
  `img_pelanggan` varchar(200) NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('CA0003', 'johnjohn123', '$2y$10$C4y9KNB0/UmAoKb2e9voBeFkkxBuv.7xqXVTggsV83j.RXNkLxDp2', '', 'John Mbewe', 'Lusaka', 'john@gmail.com', '0967897765', 'assets/frontend/img/default.png', 1, '1699830607'),
('CA0002', 'martha123', '$2y$10$ulMnSnk.hN3g9orTh.2gZepvn8hw0gvAWxpqnR/W0SfbhWpOTrL1y', '', 'Martha Namuchimba', 'Kitwe', 'martha@gmail.com', '0967652211', 'assets/frontend/img/default.png', 1, '1699830496'),
('CA0001', 'kuunda123', '$2y$10$a7Rid0nMiGlG3Dl/EKgvh.xuNj3mwSAYrCm3q2PppAw6ZppQDrvHO', '', 'Kuunda Simuchimba', 'Chingola', 'kuundas025@gmail.com', '0960442429', 'assets/frontend/img/default.png', 1, '1699830327'),
('CA0004', 'test123456', '$2y$10$vwLKOIwlYZwG7dJiHsHcju3sehyZjzpa8z7P0S3u/434I3AI0I64S', '', 'Test Test', 'chingola', 'Test@gmail.com', '0978656543', 'assets/frontend/img/default.png', 1, '1700518117');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`kd_sub_menu`, `kd_menu`, `title_sub_menu`, `url_sub_menu`, `is_active_sub_menu`) VALUES
(0, 1, 'Dashboard', 'backend/home', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`kd_tiket`, `kd_order`, `nama_tiket`, `kursi_tiket`, `umur_tiket`, `asal_beli_tiket`, `harga_tiket`, `etiket_tiket`, `status_tiket`, `create_tgl_tiket`, `create_admin_tiket`) VALUES
('TORD00001J00012022122915', 'ORD00001', 'Ellen', '15', '31 Years', 'TJ019', '68', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2022-12-28', 'admin'),
('TORD00002J00012022123018', 'ORD00002', 'Andie Sand', '18', '30 Years', 'TJ019', '68', 'assets/backend/upload/etiket/ORD00002.pdf', '2', '2022-12-29', 'owner'),
('TORD00004J00052022123110', 'ORD00004', 'Delbert Rochelle', '10', '32 Years', 'TJ016', '40', 'assets/backend/upload/etiket/ORD00004.pdf', '2', '2022-12-30', 'admin'),
('TORD00005J0003202212318', 'ORD00005', 'Ruth Russo', '8', '32 Years', 'TJ011', '89', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2022-12-30', 'owner'),
('TORD00005J0003202212319', 'ORD00005', 'Jake Russo', '9', '35 Years', 'TJ011', '89', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2022-12-30', 'owner'),
('TORD00006J00012022123123', 'ORD00006', 'Carl J. Montoya', '23', '25 Years', 'TJ019', '68', 'assets/backend/upload/etiket/ORD00006.pdf', '2', '2022-12-30', 'owner'),
('TORD00007J0015202301023', 'ORD00007', 'Diana Kirk', '3', '39 Years', 'TJ013', '40', 'assets/backend/upload/etiket/ORD00007.pdf', '2', '2022-12-30', 'owner'),
('TORD00008J00172023010122', 'ORD00008', 'Agnes Wonka', '22', '41 Years', 'TJ009', '59', 'assets/backend/upload/etiket/ORD00008.pdf', '2', '2022-12-30', 'owner'),
('TORD00010J00132023010514', 'ORD00010', 'Thomas Ford', '14', '34 Years', 'TJ014', '82', 'assets/backend/upload/etiket/ORD00010.pdf', '2', '2022-12-30', 'owner'),
('TORD00013J00022022123114', 'ORD00013', 'Will Williams', '14', '31 Years', 'TJ010', '75', 'assets/backend/upload/etiket/ORD00013.pdf', '2', '2022-12-30', 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_pelanggan`
--

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_token_pelanggan`
--

INSERT INTO `tbl_token_pelanggan` (`kd_token`, `nama_token`, `email_token`, `date_create_token`) VALUES
(1, '65a01b40a0cc44076458f9d00ce94720', 'demo@mail.com', 1634359787),
(2, 'dd79d52fe9968f73fc66a1d481778655', 'john@mail.com', 1642506186),
(3, 'cd7b785a63c58898bfed23bab186ee1d', 'christine@mail.com', 1672227893),
(4, '616b4176a96b190073514fd3c154c2e0', 'ellen@mail.com', 1672229234),
(5, '87702b38ef9a5b80a98c077c43073182', 'andie@mail.com', 1672235116),
(6, '02a2fcb0be5250471a94142ed81d04df', 'robert@mail.com', 1672247531),
(7, '6f531b65df037f2f7ba0fb78231e577d', 'delbert@mail.com', 1672333316),
(8, '9d40b5ed83fc9cb3ce68f7050d69ee6a', 'ruth@mail.com', 1672336612),
(9, '0cb29395d911e02aba3a746691d7f5cf', 'carl@mail.com', 1672388181),
(10, '276466e9d4a5d8003fde3aa3990f46ae', 'demo@mail.com', 1672396084),
(11, '36c79fa8f57a423a794d8421be08e024', 'diana@mail.com', 1672401155),
(12, '51f91e83a25741a3626f99d0dbf0f5a0', 'agnes@mail.com', 1672401850),
(13, '2ec7e10ab13703d8817a2e74f712f45a', 'mary@mail.com', 1672402552),
(14, '3fed0f58dd880c8fa5f606e7a2b878bf', 'thomasf@mail.com', 1672402730),
(15, 'ca46de539fd1c62fa3614d0b18539233', 'shane@mail.com', 1672414382),
(16, 'a98db0cf72281841d03067c42ab953ac', 'basteven@mail.com', 1672414504),
(17, '6a05822bb349381f20ba0b464559879b', 'williams@mail.com', 1672417879),
(18, '8a6ed732ec661e4e697037f30c40e1cc', 'kuundas025@gmail.com', 1699830327),
(19, 'c93bf91ba3d8c0aeab20c9d97f2ddd0d', 'martha@gmail.com', 1699830496),
(20, 'ac7cdb29040443b1a86661dfae1a32ee', 'john@gmail.com', 1699830607),
(21, '4cf3f31ff9db68faf8b180d2848133f0', 'Test@gmail.com', 1700518117);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`) VALUES
('TJ001', 'LUSAKA', '', 'INTERCITY'),
('TJ002', 'KITWE', '', 'TOWN CENTER'),
('TJ003', 'CHINGOLA', '', 'MWAISENI'),
('TJ004', 'NDOLA', '', 'NDOLA STATION'),
('TJ005', 'LIVINGSTONE', '', 'PARK STATION'),
('TJ006', 'MUFULIRA', '', 'TOWN CENTER'),
('TJ007', 'SOLWEZI', '', 'KANSANSHI STATION');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`kd_sub_menu`),
  ADD KEY `kd_menu` (`kd_menu`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  ADD PRIMARY KEY (`kd_token`);

--
-- Indexes for table `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  MODIFY `kd_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
