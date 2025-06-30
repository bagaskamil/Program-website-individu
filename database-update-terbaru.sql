-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2025 at 09:46 PM
-- Server version: 10.6.22-MariaDB
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `linkpaym_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `tipe` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_inputs`
--

CREATE TABLE `custom_inputs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_select_title` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_select` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `custom_inputs`
--

INSERT INTO `custom_inputs` (`id`, `kategori_id`, `field_1`, `field_2`, `field_select_title`, `field_select`) VALUES
(1, '1', 'ID,Ketikan ID,number', 'Server,Ketikan Server,number', NULL, NULL),
(2, '2', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(3, '3', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(4, '4', 'UID,Ketikan UID,number', 'Server,Pilih Server,select', 'Asia,America,Europe,TWK_HK_MO', 'os_asia,os_usa,os_euro,os_cht'),
(5, '5', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(6, '6', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(7, '7', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(8, '8', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(9, '9', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(10, '10', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(11, '11', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(12, '12', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(13, '13', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(14, '14', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(15, '15', 'No Handphone,08xxxxxx,number', NULL, NULL, NULL),
(16, '16', 'No Handphone,08xxx,number', NULL, NULL, NULL),
(17, '17', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(18, '18', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(19, '19', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(20, '20', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(21, '21', 'No Meter,123xxxx,number', NULL, NULL, NULL),
(22, '22', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(23, '23', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(24, '24', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(25, '25', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(26, '26', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(27, '27', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(28, '28', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(29, '29', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(30, '30', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(31, '31', 'Email,email@gmail.com,text', 'Request Profile,WeJizy,text', NULL, NULL),
(32, '32', 'No Handphone,08xxxx,number', NULL, NULL, NULL),
(33, '33', 'Email,email@gmail.com,text', NULL, NULL, NULL),
(34, '34', 'Email,email@gmail.com,text', NULL, NULL, NULL),
(35, '35', 'Email,email@gmail.com,text', NULL, NULL, NULL),
(36, '36', 'Email,email@gmail.com,text', NULL, NULL, NULL),
(37, '37', 'Email,email@gmail.com,text', NULL, NULL, NULL),
(38, '38', ',,Select Input Type', NULL, NULL, NULL),
(39, '39', ',,Select Input Type', NULL, NULL, NULL),
(41, '41', 'Id,Ketikan ID,number', 'Server,Ketikan Server,select', NULL, NULL),
(42, '42', 'ID,Ketikan ID,number', NULL, NULL, NULL),
(43, '43', ',,Select Input Type', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_joki`
--

CREATE TABLE `data_joki` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` text NOT NULL,
  `email_joki` text NOT NULL,
  `password_joki` text NOT NULL,
  `loginvia_joki` text NOT NULL,
  `nickname_joki` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_joki` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan_joki` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tglmain_joki` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jambooking_joki` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(30) DEFAULT NULL,
  `status_joki` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_vilog`
--

CREATE TABLE `data_vilog` (
  `userid` varchar(225) NOT NULL,
  `serverid` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pilihlogin` varchar(255) NOT NULL,
  `status_vilog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `metode` varchar(255) NOT NULL,
  `no_pembayaran` varchar(255) NOT NULL,
  `jumlah` bigint(20) NOT NULL,
  `status` enum('Success','Pending') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `sub_nama` varchar(225) NOT NULL,
  `code_cekid` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `brand` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `thumbnail` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL DEFAULT 'game',
  `server_id` tinyint(1) NOT NULL DEFAULT 0,
  `petunjuk` varchar(255) DEFAULT NULL,
  `deskripsi_game` text DEFAULT NULL,
  `deskripsi_field` text DEFAULT NULL,
  `keterangan_input_satu` varchar(255) DEFAULT NULL,
  `keterangan_input_dua` varchar(255) DEFAULT NULL,
  `placeholder_satu` varchar(255) DEFAULT NULL,
  `placeholder_dua` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `nama`, `sub_nama`, `code_cekid`, `kode`, `brand`, `status`, `thumbnail`, `banner`, `tipe`, `server_id`, `petunjuk`, `deskripsi_game`, `deskripsi_field`, `keterangan_input_satu`, `keterangan_input_dua`, `placeholder_satu`, `placeholder_dua`, `created_at`, `updated_at`) VALUES
(1, 'MOBILE LEGENDS', 'Moonton', '', 'mobile-legends', NULL, 'active', '/assets/thumbnail/a69df0c1494458c49007bdae594197f64e604145.webp', '/assets/banner_game/388794d6ba2f4407684a7f6bf2b132f2d0fc0811.webp', 'populer', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID &amp;amp; Server&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh: 123455789 (12345) maka ID = 123456789 dan Server = 12345', NULL, NULL, NULL, NULL, '2025-04-12 00:27:29', '2025-05-19 11:01:53'),
(2, 'Free Fire', 'Garena', '', 'free-fire', NULL, 'active', '/assets/thumbnail/c732d17b8805dfe1f899ad95781d60b9bfdf7b52.webp', '/assets/banner_game/39b74ba38a2d6e601ba68d918dd94d276bda659b.jpg', 'populer', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Masukkan ID Contoh : 72838383', NULL, NULL, NULL, NULL, '2025-04-12 00:55:08', '2025-05-15 13:49:29'),
(3, 'PUBG MOBILE', 'Tencent', '', 'pubg-mobile', NULL, 'active', '/assets/thumbnail/71e8b7b803ff7b54b582ed66fd50fe28fafc8bb6.webp', '', 'populer', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Masukan ID Dengan Benar', NULL, NULL, NULL, NULL, '2025-04-12 00:56:12', '2025-04-12 00:56:12'),
(4, 'Genshin Impact', 'HoyoVerse', '', 'genshin-impact', NULL, 'active', '/assets/thumbnail/3a87b3622e913a33cb27bf22f333523406df0fe8.webp', '', 'populer', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID &amp;amp; Server&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : UID = 123456789, Server = Asia', NULL, NULL, NULL, NULL, '2025-04-12 01:00:24', '2025-04-12 01:00:24'),
(5, 'Blood Strike', 'NetEase', '', 'blood-strike', NULL, 'active', '/assets/thumbnail/file-1717022442-hn2opk73-78-blood-strike-1-1.png', '', 'populer', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 72734783383', NULL, NULL, NULL, NULL, '2025-04-12 01:05:03', '2025-04-12 01:06:51'),
(6, 'Honor Of Kings', 'Tencent Games', '', 'honor-of-kings-tp', NULL, 'active', '/assets/thumbnail/c663f0b4e66b14e1ac02582c6e5938dc82074f3c.jpg', '', 'populer', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 82838383', NULL, NULL, NULL, NULL, '2025-04-12 01:07:50', '2025-04-12 01:07:50'),
(7, 'FC Mobile', 'EA Sports', '', 'fc-mobile', NULL, 'active', '/assets/thumbnail/980a5358bf1e9ccacb0cfaa460d63aa15bc0d541.webp', '', 'game', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 8273917373', NULL, NULL, NULL, NULL, '2025-04-12 01:08:57', '2025-04-12 01:08:57'),
(8, 'ARENA OF VALOR', 'Garena', '', 'arena-of-valor', NULL, 'active', '/assets/thumbnail/40466f2dae0d91d258a4b80cade0b4b75aa2e788.jpg', '', 'game', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 828384949', NULL, NULL, NULL, NULL, '2025-04-12 01:11:27', '2025-04-12 01:11:27'),
(9, 'Call Of Duty MOBILE', 'Garena', '', 'call-of-duty-mobile', NULL, 'active', '/assets/thumbnail/ebf2c22ade852b9b8e3ebb4198495c6afdb66ac4.webp', '', 'game', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 12627393938', NULL, NULL, NULL, NULL, '2025-04-12 01:12:39', '2025-04-12 01:12:39'),
(10, 'Sausage Man', 'X. D. Network', '', 'sausage-man', NULL, 'active', '/assets/thumbnail/074b6ef5f339c6c8ba74b9ec1d298cfc1efa4988.jpeg', '', 'game', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 283848483', NULL, NULL, NULL, NULL, '2025-04-12 01:14:28', '2025-04-12 01:14:28'),
(11, 'Royal Dream', 'Royal Play', '', 'royal-dream', NULL, 'active', '/assets/thumbnail/IMG_0291.webp', '', 'game', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&amp;nbsp;&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 82828833', NULL, NULL, NULL, NULL, '2025-04-12 01:16:55', '2025-04-12 01:16:55'),
(12, 'Undawn', 'Garena', '', 'undawn', NULL, 'active', '/assets/thumbnail/271f99f3e47720b04f627d024fe3e4b077695f04.jpg', '', 'game', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 82838383', NULL, NULL, NULL, NULL, '2025-04-12 10:05:58', '2025-04-12 10:05:58'),
(13, 'POINT BLANK', 'Zepetto', '', 'point-blank', NULL, 'active', '/assets/thumbnail/3ec472c36ef65d03da223ea11f9d64bdeb1cb5d7.webp', '', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan ID&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 0812xxxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:09:07', '2025-04-12 10:09:07'),
(14, 'TELKOMSEL', 'Pt Telekomunikasi Tbk.', '', 'telkomsel', NULL, 'active', '/assets/thumbnail/37c2b32e7a06f035fb329b9ebbda8cc84aad1847 (1).jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:16:47', '2025-04-12 10:16:47'),
(15, 'INDOSAT', 'Pt Indosat Tbk.', '', 'indosat', NULL, 'active', '/assets/thumbnail/d1e1d57cbd1ccbc18d16b525b2743d6dc21b0018.jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan NO&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:18:34', '2025-04-12 10:20:12'),
(16, 'by.U', 'Telkomsel Tbk', '', 'byu', NULL, 'active', '/assets/thumbnail/3f738ffc232f93430a5f2bfae10f1e1ebb01de4c.jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:21:19', '2025-04-12 10:21:19'),
(17, 'AXIS', 'Pt Axita Tbk', '', 'axis', NULL, 'active', '/assets/thumbnail/200b19cdf6b49d4f0c5ff0e9df75caa394ec3b83.jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:22:47', '2025-04-12 10:22:47'),
(18, 'THREE', 'Pt Indosat Tbk', '', 'three', NULL, 'active', '/assets/thumbnail/344a70d1065283387419cf33a6949ab0f3185673.jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:24:07', '2025-04-12 10:24:07'),
(19, 'XL', 'Pt XL Axita Tbk', '', 'xl', NULL, 'active', '/assets/thumbnail/0b51984690b4992b9d0142511a20a447f507cd96.jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:25:31', '2025-04-12 10:25:31'),
(20, 'SMARTFREN', 'Pt Smartfren Telecom Tbk', '', 'smartfren', NULL, 'active', '/assets/thumbnail/483bf75b510e4157cd6484702bd298ba4e679099.jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:26:58', '2025-04-12 10:26:58'),
(21, 'PLN', 'Pt PLN Tbk', '', 'pln', NULL, 'active', '/assets/thumbnail/d22e20761c6f8ef2268e3025052e302d9ee73d48.jpg', '', 'pulsa', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No Meter&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 1839492828328', NULL, NULL, NULL, NULL, '2025-04-12 10:28:17', '2025-04-12 10:28:17'),
(22, 'GOOGLE PLAY INDONESIA', 'Google Inc.', '', 'google-play-indonesia', NULL, 'active', '/assets/thumbnail/download.png', '', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:30:09', '2025-04-12 10:30:09'),
(23, 'Razer Gold', 'Razer Inc.', '', 'razer-gold', NULL, 'active', '/assets/thumbnail/18195dc6c3cb369e4e294a5e08cf8eaed3bca580.webp', '', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:32:33', '2025-04-12 10:32:33'),
(24, 'GARENA', 'Voucher Garena', '', 'garena-shell', NULL, 'active', '/assets/thumbnail/ff63c0410e93ea30f834e13ceff7041c06e7412a.webp', '', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:36:08', '2025-04-12 10:36:08'),
(25, 'Steam Wallet (IDR)', 'Valve', '', 'steam-wallet', NULL, 'active', '/assets/thumbnail/8c56def426feb3ab7d31bd0e773a51150557fc79.webp', '', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:37:24', '2025-04-12 10:37:24'),
(26, 'PLAY STATION', 'Sony Interactive Entertainment', '', 'play-station', NULL, 'active', '/assets/thumbnail/666bd5f6b023afcba6f755b2273e5c55bfd32c1f.webp', '/assets/banner_game/666bd5f6b023afcba6f755b2273e5c55bfd32c1f.webp', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:39:24', '2025-04-12 10:39:24'),
(27, 'Roblox', 'Roblox Corporation', '', 'roblox', NULL, 'active', '/assets/thumbnail/ecab37a1c76044d0bcdc3984077d9fb2bd86c59a.webp', '/assets/banner_game/ecab37a1c76044d0bcdc3984077d9fb2bd86c59a.webp', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:40:18', '2025-04-12 10:40:18'),
(28, 'Unipin Voucher', 'Unipin ID', '', 'unipin-voucher', NULL, 'active', '/assets/thumbnail/07c41d5d72174c75f5c25a6ed978a7acb26bbc2d.webp', '/assets/banner_game/07c41d5d72174c75f5c25a6ed978a7acb26bbc2d.webp', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:41:09', '2025-04-12 10:41:09'),
(29, 'Nintendo eShop', 'Nintendo Voucher', '', 'nintendo-eshop', NULL, 'active', '/assets/thumbnail/d3daed08797faf187e3b47c5df14f64ba6314929.webp', '/assets/banner_game/d3daed08797faf187e3b47c5df14f64ba6314929.webp', 'voucher', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:42:22', '2025-04-12 10:42:39'),
(30, 'Aligth Motion', 'Akun Premium', '', 'aligth-miton', NULL, 'active', '/assets/thumbnail/alight-motion.webp', '/assets/banner_game/alight-motion.webp', 'app', 0, NULL, '&lt;p&gt;Cara Topup :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 10:56:05', '2025-04-12 10:56:05'),
(31, 'Amazon Prime Video', 'Akun Premium', '', 'amazon-prime-video', NULL, 'active', '/assets/thumbnail/primevideo-icon.png', '/assets/banner_game/primevideo-icon.png', 'app', 0, NULL, '&lt;p&gt;Cara Pembelian :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : email@gmail.com &amp; profil @contoh', NULL, NULL, NULL, NULL, '2025-04-12 10:59:35', '2025-04-12 10:59:35'),
(32, 'Bstation Premium', 'Akun Premium', '', 'bstation-premium', NULL, 'active', '/assets/thumbnail/bstation.webp', '/assets/banner_game/bstation.webp', 'app', 0, NULL, '&lt;p&gt;Cara Pembelian :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan No&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : 08xxxx', NULL, NULL, NULL, NULL, '2025-04-12 11:00:42', '2025-04-12 11:00:42'),
(33, 'Canva Pro', 'Akun Premium', '', 'canva-pro', NULL, 'active', '/assets/thumbnail/eb6e9b42a3ee41f31451c7bc6d29e86e.jpg_720x720q80.jpg_.webp', '/assets/banner_game/eb6e9b42a3ee41f31451c7bc6d29e86e.jpg_720x720q80.jpg_.webp', 'app', 0, NULL, '&lt;p&gt;Cara Pembelian :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan Email&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : wejizy@gmail.com', NULL, NULL, NULL, NULL, '2025-04-12 11:01:54', '2025-04-12 11:01:54'),
(34, 'Youtube Premium', 'Akun Premium', '', 'youtube-premium', NULL, 'active', '/assets/thumbnail/youtube-new.jpg', '/assets/banner_game/youtube-new.jpg', 'app', 0, NULL, '&lt;p&gt;Cara Pembelian :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan Email&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : wejizy@gmail.com', NULL, NULL, NULL, NULL, '2025-04-12 11:04:23', '2025-04-12 11:04:23'),
(35, 'WeTV Premium', 'Akun Premium', '', 'wetv-premium', NULL, 'active', '/assets/thumbnail/bcc57869475b868a686844e4fb82e4ee.jpeg', '/assets/banner_game/bcc57869475b868a686844e4fb82e4ee.jpeg', 'app', 0, NULL, '&lt;p&gt;Cara Pembelian :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan Email&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : wejizy@gmail.com', NULL, NULL, NULL, NULL, '2025-04-12 11:06:10', '2025-04-12 11:06:10'),
(36, 'Vidio Premier', 'Akun Premium', '', 'vidio-premier', NULL, 'active', '/assets/thumbnail/vidio-premier.jpg', '/assets/banner_game/vidio-premier.jpg', 'app', 0, NULL, '&lt;p&gt;Cara Pembelian :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan Email&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : wejizy@gmail.com', NULL, NULL, NULL, NULL, '2025-04-12 11:07:22', '2025-04-12 11:07:22'),
(37, 'Capcut Pro', 'Akun Premium', '', 'capcut-pro', NULL, 'active', '/assets/thumbnail/capcut-logo.jpg', '/assets/banner_game/capcut-logo.jpg', 'app', 0, NULL, '&lt;p&gt;Cara Pembelian :&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Masukkan Email&lt;/li&gt;&lt;li&gt;Pilih nominal&lt;/li&gt;&lt;li&gt;Pilih metode pembayaran&lt;/li&gt;&lt;li&gt;Tulis kode promo (Jika ada)&lt;/li&gt;&lt;li&gt;Masukkan No. whatsapp&lt;/li&gt;&lt;li&gt;Klik pesan sekarang &amp;amp; lakukan pembayaran&lt;/li&gt;&lt;li&gt;Selesai&lt;/li&gt;&lt;/ol&gt;', 'Contoh : wejizy@gmail.com', NULL, NULL, NULL, NULL, '2025-04-12 11:11:11', '2025-04-12 11:11:11'),
(38, 'JOKI ECER RANK', 'WeJizy.JK', '', 'joki-ecer', NULL, 'active', '/assets/thumbnail/9dc8550f5626f4a669f1ce4b13168da4bacd5e94.webp', '/assets/banner_game/9dc8550f5626f4a669f1ce4b13168da4bacd5e94.webp', 'joki', 0, NULL, 'Cara Joki:<br><br>Masukkan Data Joki<br>Pilih Nominal<br>Pilih Pembayaran<br>Masukkan Kode Promo (jika ada)<br>Klik Pesan Sekarang dan lakukan Pembayaran<br>Rule Joki<br><br>- Minimal order untuk rank 5 star / bintang<br><br>- Matikan centang verifikasi ceklis perangkat baru, untuk mempermudah login<br><br>- Informasi lebih lanjut / order manual bisa langsung ke whatsapp dibawah', 'Harap Matikan Verifikasi 2 Langkah', NULL, NULL, NULL, NULL, '2025-04-12 11:23:54', '2025-04-12 11:25:17'),
(39, 'Mobile Legends Via Login', 'Manual Proses', '', 'mlbb-vilog', NULL, 'active', '/assets/thumbnail/e350bb2275777da25f912e020ed61a99956a30ca.webp', '/assets/banner_game/e350bb2275777da25f912e020ed61a99956a30ca.webp', 'vilogml', 0, NULL, '&lt;p&gt;Diproses Manual &amp;amp; Antri&lt;/p&gt;&lt;p&gt;Proses 1x24 Jam [ Max 2 Hari ]&lt;/p&gt;&lt;p&gt;Legal 100% ber Invoice Resmi!&lt;/p&gt;&lt;p&gt;Play Rank 2-3x W/L Rondom&amp;nbsp;&lt;/p&gt;', 'Selama Proses Akun Tidak Boleh Ditabrak &amp; V2L Harus Mati.', NULL, NULL, NULL, NULL, '2025-04-12 11:27:16', '2025-04-12 11:27:16'),
(43, 'Cishop Indo', 'Cishop Indo', 'mobile-legends', 'mobile-legendss', NULL, 'active', '/assets/thumbnail/5f67a939-49a8-486a-a3ba-2bf25b5e88bf.webp', '/assets/banner_game/What-is-Coding_compressed.jpg', 'populer', 0, NULL, '', 'Cishop Indo', NULL, NULL, NULL, NULL, '2025-05-20 07:31:42', '2025-05-20 07:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `provider_id` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `harga_member` bigint(20) NOT NULL,
  `harga_platinum` bigint(20) NOT NULL,
  `harga_gold` bigint(20) NOT NULL,
  `harga_flash_sale` bigint(20) DEFAULT 0,
  `profit` int(11) NOT NULL,
  `profit_member` int(11) NOT NULL,
  `profit_platinum` int(11) NOT NULL,
  `profit_gold` int(11) NOT NULL,
  `is_flash_sale` tinyint(4) NOT NULL DEFAULT 0,
  `judul_flash_sale` text DEFAULT NULL,
  `banner_flash_sale` text DEFAULT NULL,
  `stock_flash_sale` int(11) DEFAULT NULL,
  `expired_flash_sale` datetime DEFAULT NULL,
  `catatan` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `product_logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `layanans`
--

INSERT INTO `layanans` (`id`, `kategori_id`, `layanan`, `provider_id`, `harga`, `harga_member`, `harga_platinum`, `harga_gold`, `harga_flash_sale`, `profit`, `profit_member`, `profit_platinum`, `profit_gold`, `is_flash_sale`, `judul_flash_sale`, `banner_flash_sale`, `stock_flash_sale`, `expired_flash_sale`, `catatan`, `status`, `provider`, `product_logo`, `created_at`, `updated_at`) VALUES
(15, '2', '5 Diamonds', 'FF5-S13', 1437, 1437, 1437, 1437, 1200, 50, 50, 50, 50, 1, 'Flash Sale', NULL, 2, '2025-05-17 17:12:00', '', 'available', 'manual', NULL, NULL, NULL),
(16, '2', '10 Diamonds', 'FF10-S13', 2465, 2465, 2465, 2465, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(17, '2', '12 Diamonds', 'FF12-S13', 2876, 2876, 2876, 2876, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(18, '2', '15 Diamonds', 'FF15-S13', 3693, 3693, 3693, 3693, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(19, '2', '20 Diamonds', 'FF20-S13', 5112, 5112, 5112, 5112, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(20, '2', '25 Diamonds', 'FF25-S13', 6263, 6263, 6263, 6263, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(21, '2', '30 Diamonds', 'FF30-S13', 7665, 7665, 7665, 7665, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(22, '2', '50 Diamonds', 'FF50-S13', 11498, 11498, 11498, 11498, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(23, '2', '40 Diamonds', 'FF40-S13', 10647, 10647, 10647, 10647, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(24, '2', '55 Diamonds', 'FF55-S13', 12936, 12936, 12936, 12936, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(25, '2', '60 Diamonds', 'FF60-S13', 12294, 12294, 12294, 12294, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(26, '2', '70 Diamonds', 'FF70-S13', 14373, 14373, 14373, 14373, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(27, '2', '75 Diamonds', 'FF75-S13', 14310, 14310, 14310, 14310, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(28, '2', '80 Diamonds', 'FF80-S13', 17247, 17247, 17247, 17247, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(29, '2', '90 Diamonds', 'FF90-S13', 18218, 18218, 18218, 18218, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(30, '2', '100 Diamonds', 'FF100-S13', 22998, 22998, 22998, 22998, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(31, '2', '120 Diamonds', 'FF120-S13', 25872, 25872, 25872, 25872, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(32, '2', '130 Diamonds', 'FF130-S13', 25316, 25316, 25316, 25316, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(33, '2', '140 Diamonds', 'FF140-S13', 28746, 28746, 28746, 28746, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(34, '2', '145 Diamonds', 'FF145-S13', 30185, 30185, 30185, 30185, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(35, '2', '150 Diamonds', 'FF150-S13', 31620, 31620, 31620, 31620, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(36, '2', '160 Diamonds', 'FF160-S13', 31220, 31220, 31220, 31220, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(37, '2', '170 Diamonds', 'FF170-S13', 33819, 33819, 33819, 33819, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(38, '2', '180 Diamonds', 'FF180-S13', 36339, 36339, 36339, 36339, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(39, '2', '190 Diamonds', 'FF190-S13', 40245, 40245, 40245, 40245, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(40, '2', '200 Diamonds', 'FF200-S13', 38460, 38460, 38460, 38460, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(41, '2', '210 Diamonds', 'FF210-S13', 43121, 43121, 43121, 43121, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(42, '2', 'Membership Mingguan', 'FFMM-S13', 40014, 40014, 40014, 40014, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(43, '2', '260 Diamonds', 'FF260-S13', 49409, 49409, 49409, 49409, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(44, '2', '250 Diamonds', 'FF250-S13', 49421, 49421, 49421, 49421, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(45, '2', '280 Diamonds', 'FF280-S13', 57494, 57494, 57494, 57494, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(46, '2', '300 Diamonds', 'FF300-S13', 57450, 57450, 57450, 57450, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(47, '2', '355 Diamonds', 'FF355-S13', 71865, 71865, 71865, 71865, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(48, '2', '360 Diamonds', 'FF360-S13', 66944, 66944, 66944, 66944, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(49, '2', '375 Diamonds', 'FF375-S13', 70247, 70247, 70247, 70247, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(50, '2', '405 Diamonds', 'FF405-S13', 75447, 75447, 75447, 75447, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(51, '2', '400 Diamonds', 'FF400-S13', 75462, 75462, 75462, 75462, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(52, '2', '425 Diamonds', 'FF425-S13', 78048, 78048, 78048, 78048, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(53, '2', '420 Diamonds', 'FF420-S13', 87677, 87677, 87677, 87677, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(54, '2', '475 Diamonds', 'FF475-S13', 88449, 88449, 88449, 88449, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(55, '2', '495 Diamonds', 'FF495-S13', 91049, 91049, 91049, 91049, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(56, '2', '500 Diamonds', 'FF500-S13', 102050, 102050, 102050, 102050, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(57, '2', '510 Diamonds', 'FF510-S13', 104925, 104925, 104925, 104925, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(58, '2', '520 Diamonds', 'FF520-S13', 96543, 96543, 96543, 96543, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(59, '2', '515 Diamonds', 'FF515-S13', 96885, 96885, 96885, 96885, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(60, '2', '545 Diamonds', 'FF545-S13', 101451, 101451, 101451, 101451, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(61, '2', '565 Diamonds', 'FF565-S13', 114986, 114986, 114986, 114986, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(62, '2', '600 Diamonds', 'FF600-S13', 113681, 113681, 113681, 113681, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(63, '2', '635 Diamonds', 'FF635-S13', 129359, 129359, 129359, 129359, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(64, '2', '645 Diamonds', 'FF645-S13', 120105, 120105, 120105, 120105, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(65, '2', 'Membership Bulanan', 'FFMB-S13', 119825, 119825, 119825, 119825, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(66, '2', '655 Diamonds', 'FF655-S13', 122657, 122657, 122657, 122657, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(67, '2', '720 Diamonds', 'FF720-S13', 143732, 143732, 143732, 143732, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(68, '2', '740 Diamonds', 'FF740-S13', 135944, 135944, 135944, 135944, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(69, '2', '770 Diamonds', 'FF770-S13', 141189, 141189, 141189, 141189, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(70, '2', '790 Diamonds', 'FF790-S13', 143396, 143396, 143396, 143396, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(71, '2', '800 Diamonds', 'FF800-S13', 160979, 160979, 160979, 160979, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(72, '2', '860 Diamonds', 'FF860-S13', 172478, 172478, 172478, 172478, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(73, '2', '930 Diamonds', 'FF930-S13', 186852, 186852, 186852, 186852, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(74, '2', '925 Diamonds', 'FF925-S13', 169911, 169911, 169911, 169911, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(75, '2', '1000 Diamonds', 'FF1000-S13', 201224, 201224, 201224, 201224, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(76, '2', '1050 Diamonds', 'FF1050-S13', 193040, 193040, 193040, 193040, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(77, '2', '1075 Diamonds', 'FF1075-S13', 215597, 215597, 215597, 215597, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(78, '2', '1080 Diamonds', 'FF1080-S13', 217034, 217034, 217034, 217034, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(79, '2', '1200 Diamonds', 'FF1200-S13', 219323, 219323, 219323, 219323, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(80, '2', '1215 Diamonds', 'FF1215-S13', 222224, 222224, 222224, 222224, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(81, '2', '1300 Diamonds', 'FF1300-S13', 238217, 238217, 238217, 238217, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(82, '2', '1440 Diamonds', 'FF1440-S13', 260684, 260684, 260684, 260684, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(83, '2', '1450 Diamonds', 'FF1450-S13', 287463, 287463, 287463, 287463, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(84, '2', '1490 Diamonds', 'FF1490-S13', 271461, 271461, 271461, 271461, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(85, '2', '1510 Diamonds', 'FF1510-S13', 274482, 274482, 274482, 274482, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(86, '2', '1580 Diamonds', 'FF1580-S13', 286745, 286745, 286745, 286745, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(87, '2', '1800 Diamonds', 'FF1800-S13', 326708, 326708, 326708, 326708, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(88, '2', '1875 Diamonds', 'FF1875-S13', 342473, 342473, 342473, 342473, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(89, '2', '2000 Diamonds', 'FF2000-S13', 362780, 362780, 362780, 362780, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(90, '2', '1975 Diamonds', 'FF1975-S13', 362981, 362981, 362981, 362981, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(91, '2', '2100 Diamonds', 'FF2100-S13', 386121, 386121, 386121, 386121, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(92, '2', '2140 Diamonds', 'FF2140-S13', 390468, 390468, 390468, 390468, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(93, '2', '2200 Diamonds', 'FF2200-S13', 400133, 400133, 400133, 400133, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(94, '2', '2210 Diamonds', 'FF2210-S13', 400133, 400133, 400133, 400133, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(95, '2', '2190 Diamonds', 'FF2190-S13', 401718, 401718, 401718, 401718, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(96, '2', '2225 Diamonds', 'FF2225-S13', 405186, 405186, 405186, 405186, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(97, '2', '2280 Diamonds', 'FF2280-S13', 413580, 413580, 413580, 413580, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(98, '2', '2355 Diamonds', 'FF2355-S13', 428298, 428298, 428298, 428298, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(99, '2', '2400 Diamonds', 'FF2400-S13', 435867, 435867, 435867, 435867, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(100, '2', '2575 Diamonds', 'FF2575-S13', 470156, 470156, 470156, 470156, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(101, '2', '2720 Diamonds', 'FF2720-S13', 496722, 496722, 496722, 496722, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(102, '2', '2750 Diamonds', 'FF2750-S13', 504582, 504582, 504582, 504582, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(103, '2', '3000 Diamonds', 'FF3000-S13', 545943, 545943, 545943, 545943, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(104, '2', '3310 Diamonds', 'FF3310-S13', 600134, 600134, 600134, 600134, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(105, '2', '3640 Diamonds', 'FF3640-S13', 718656, 718656, 718656, 718656, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(106, '2', '3675 Diamonds', 'FF3675-S13', 665010, 665010, 665010, 665010, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(107, '2', '3800 Diamonds', 'FF3800-S13', 688886, 688886, 688886, 688886, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(108, '2', '4000 Diamonds', 'FF4000-S13', 716420, 716420, 716420, 716420, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(109, '2', '4050 Diamonds', 'FF4050-S13', 735258, 735258, 735258, 735258, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(110, '2', '4340 Diamonds', 'FF4340-S13', 785708, 785708, 785708, 785708, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(111, '2', '4450 Diamonds', 'FF4450-S13', 805974, 805974, 805974, 805974, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(112, '2', '4720 Diamonds', 'FF4720-S13', 855783, 855783, 855783, 855783, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(113, '2', '4800 Diamonds', 'FF4800-S13', 870039, 870039, 870039, 870039, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(114, '2', '4850 Diamonds', 'FF4850-S13', 881963, 881963, 881963, 881963, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(115, '2', '5500 Diamonds', 'FF5500-S13', 986517, 986517, 986517, 986517, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(116, '2', '5600 Diamonds', 'FF5600-S13', 1020510, 1020510, 1020510, 1020510, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(117, '2', '6000 Diamonds', 'FF6000-S13', 1091090, 1091090, 1091090, 1091090, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(118, '2', '6480 Diamonds', 'FF6480-S13', 1179540, 1179540, 1179540, 1179540, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(119, '2', '6550 Diamonds', 'FF6550-S13', 1190415, 1190415, 1190415, 1190415, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(120, '2', '6900 Diamonds', 'FF6900-S13', 1254389, 1254389, 1254389, 1254389, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(121, '2', '7290 Diamonds', 'FF7290-S13', 1437312, 1437312, 1437312, 1437312, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(122, '2', '7310 Diamonds', 'FF7310-S13', 1311897, 1311897, 1311897, 1311897, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(123, '2', '7340 Diamonds', 'FF7340-S13', 1316709, 1316709, 1316709, 1316709, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(124, '2', '7360 Diamonds', 'FF7360-S13', 1319730, 1319730, 1319730, 1319730, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(125, '2', '7430 Diamonds', 'FF7430-S13', 1332807, 1332807, 1332807, 1332807, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(126, '2', '7645 Diamonds', 'FF7645-S13', 1372026, 1372026, 1372026, 1372026, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(127, '2', '7650 Diamonds', 'FF7650-S13', 1373342, 1373342, 1373342, 1373342, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(128, '2', '8010 Diamonds', 'FF8010-S13', 1437362, 1437362, 1437362, 1437362, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(129, '2', '9290 Diamonds', 'FF9290-S13', 1672605, 1672605, 1672605, 1672605, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(130, '2', '9800 Diamonds', 'FF9800-S13', 1764140, 1764140, 1764140, 1764140, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(131, '2', '14580 Diamonds', 'FF14580-S13', 2613314, 2613314, 2613314, 2613314, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(132, '2', '36500 Diamonds', 'FF36500-S13', 7186563, 7186563, 7186563, 7186563, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(133, '2', '37050 Diamonds', 'FF37050-S13', 6636141, 6636141, 6636141, 6636141, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(134, '2', '73100 Diamonds', 'FF73100-S13', 14373126, 14373126, 14373126, 14373126, 0, 50, 50, 50, 50, 0, NULL, NULL, NULL, NULL, '', 'available', 'vip', NULL, NULL, NULL),
(135, '2', 'INQUIRY TOKOVOUCHER', 'INQ_TOKOVOUCHER', 5, 5, 5, 5, 0, 4, 4, 4, 4, 0, '', '', 0, '1970-01-01 07:00:00', '', 'available', 'apigames', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `images` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tipe` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee_percent` decimal(5,2) DEFAULT NULL,
  `fix_fee` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`id`, `name`, `images`, `code`, `keterangan`, `tipe`, `payment`, `fee_percent`, `fix_fee`, `created_at`, `updated_at`) VALUES
(68, 'OVO', '/assets/payment/OVO.webp', 'OVO', 'Dicek Otomatis', 'e-walet', 'tokopay', 2.50, 0.00, '2023-09-07 07:26:22', '2025-05-02 14:37:23'),
(84, 'BNI Virtual Account', '/assets/payment/BNI.webp', 'BNIVA', 'Dicek Otomatis', 'virtual-account', 'tokopay', 0.00, 3500.00, '2024-05-20 18:43:02', '2025-04-22 01:42:39'),
(45, 'ALFAMART', '/assets/payment/alfamart.webp', 'ALFAMART', 'Dicek Otomatis', 'convenience-store', 'tokopay', 0.00, 3500.00, '2023-02-07 09:21:07', '2025-05-02 14:36:33'),
(46, 'INDOMARET', '/assets/payment/indomaret.webp', 'INDOMARET', 'Dicek Otomatis', 'convenience-store', 'tokopay', 0.00, 3000.00, '2023-02-07 09:21:46', '2025-04-22 01:41:23'),
(51, 'QRIS TokoPay', '/assets/payment/qris.webp', 'QRISREALTIME', 'Dicek Otomatis', 'qris', 'tokopay', 0.70, 750.00, '2023-03-06 06:59:32', '2025-05-16 10:47:39'),
(104, 'DANA', '/assets/payment/DANAA.png', 'DANA_REALTIME', 'Dicek Otomatis', 'e-walet', 'tokopay', 3.20, 0.00, '2024-07-25 13:35:18', '2025-04-22 01:47:47'),
(85, 'BRI Virtual Account', '/assets/payment/BRIVAA.webp', 'BRIVA', 'Dicek Otomatis', 'virtual-account', 'tokopay', 0.00, 4250.00, '2024-05-20 18:46:36', '2025-04-22 01:47:34'),
(65, 'BCA Virtual Account', '/assets/payment/BCA.webp', 'BCAVA', 'Dicek Otomatis', 'virtual-account', 'tokopay', 0.00, 4200.00, '2023-03-30 18:57:37', '2025-04-22 01:42:12'),
(73, 'LINKAJA', '/assets/payment/Linkaja.webp', 'LINKAJA', 'Dicek Otomatis', 'e-walet', 'tokopay', 3.00, 0.00, '2023-12-05 19:15:42', '2025-04-22 01:40:37'),
(94, 'MANDIRI Virtual Account', '/assets/payment/MANDIRIVA.webp', 'MANDIRIVA', 'Dicek Otomatis', 'virtual-account', 'tokopay', 0.00, 3500.00, '2024-06-05 04:26:26', '2025-04-22 01:43:12'),
(118, 'CISHOP (Bebas Biaya Admin)', '/assets/payment/coin.webp', 'SALDO', 's', 'SALDO', 'saldo', 0.70, 750.00, '2025-05-17 06:57:02', '2025-05-18 12:58:20'),
(107, 'ShopeePay', '/assets/payment/Shopeepay.webp', 'SHOPEEPAY_REALTIME', 'Dicek Otomatis', 'e-walet', 'tokopay', 3.00, 0.00, '2024-12-29 09:35:50', '2025-04-22 01:47:07'),
(108, 'Gopay', '/assets/payment/Gopay.webp', 'GOPAY', 'Dicek Otomatis', 'e-walet', 'tokopay', 3.00, 0.00, '2025-02-06 14:08:33', '2025-04-22 01:48:00'),
(115, 'QRIS TriPay', '/assets/payment/qris.webp', 'QRIS', 'Otomatis', 'qris', 'tripay', 0.70, 750.00, '2025-04-22 01:45:33', '2025-05-17 02:37:58'),
(114, 'QRIS PayDisini', '/assets/payment/qris.webp', '11', 'Otomatis', 'qris', 'paydisini', 0.70, 750.00, '2025-04-21 06:50:26', '2025-05-17 06:01:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_26_082220_create_kategoris_table', 1),
(6, '2022_01_26_102949_create_layanans_table', 1),
(11, '2022_01_29_111105_create_pembelians_table', 2),
(12, '2022_01_29_111703_create_pembayarans_table', 2),
(13, '2022_02_01_152716_create_ovos_table', 3),
(14, '2022_02_01_152824_create_history__ovos_table', 3),
(15, '2022_02_01_155618_create_gojeks_table', 4),
(16, '2022_02_01_155927_create_history__gojeks_table', 4),
(17, '2022_02_02_081840_create_methode_pembayarans_table', 5),
(18, '2022_02_02_084003_create_beritas_table', 6),
(19, '2022_04_08_133307_create_layanan_ppobs_table', 7),
(20, '2022_04_27_141044_create_deposits_table', 8),
(21, '2024_04_30_002540_add_google2fa_secret_to_users_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `pakets`
--

CREATE TABLE `pakets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pakets`
--

INSERT INTO `pakets` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Diamond', '2025-04-17 12:34:34', '2025-04-17 12:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `paket_layanans`
--

CREATE TABLE `paket_layanans` (
  `id` int(10) UNSIGNED NOT NULL,
  `paket_id` int(10) UNSIGNED NOT NULL,
  `layanan_id` int(10) UNSIGNED NOT NULL,
  `product_logo` varchar(225) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `paket_layanans`
--

INSERT INTO `paket_layanans` (`id`, `paket_id`, `layanan_id`, `product_logo`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '/assets/product_logo/ZE4hwFRF9IabrIk.webp', '2025-04-17 12:34:51', '2025-04-17 12:34:51'),
(2, 1, 2, '/assets/product_logo/bJzgWAHVLGcmuS3.png', '2025-04-22 04:53:03', '2025-04-22 04:53:03'),
(3, 1, 3, '/assets/product_logo/lHrNBmrXWSpsxbS.png', '2025-04-22 05:10:01', '2025-04-22 05:10:01'),
(4, 1, 4, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(5, 1, 5, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(6, 1, 6, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(7, 1, 7, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(8, 1, 8, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(9, 1, 9, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(10, 1, 10, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(11, 1, 11, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(12, 1, 12, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(13, 1, 13, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(14, 1, 14, '/assets/product_logo/2gciia0CqEtB9g7.webp', '2025-05-15 13:48:13', '2025-05-15 13:48:13'),
(15, 1, 15, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(16, 1, 16, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(17, 1, 17, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(18, 1, 18, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(19, 1, 19, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(20, 1, 20, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(21, 1, 21, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(22, 1, 23, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(23, 1, 22, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(24, 1, 25, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(25, 1, 24, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(26, 1, 27, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(27, 1, 26, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(28, 1, 28, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(29, 1, 29, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(30, 1, 30, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(31, 1, 32, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(32, 1, 31, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(33, 1, 33, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(34, 1, 34, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(35, 1, 36, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(36, 1, 35, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(37, 1, 37, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(38, 1, 38, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(39, 1, 40, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(40, 1, 39, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(41, 1, 42, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(42, 1, 41, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(43, 1, 43, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(44, 1, 44, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(45, 1, 46, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(46, 1, 45, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(47, 1, 48, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(48, 1, 49, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(49, 1, 47, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(50, 1, 50, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(51, 1, 51, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(52, 1, 52, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(53, 1, 53, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(54, 1, 54, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(55, 1, 55, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(56, 1, 58, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(57, 1, 59, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(58, 1, 60, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(59, 1, 56, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(60, 1, 57, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(61, 1, 62, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(62, 1, 61, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(63, 1, 64, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(64, 1, 65, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(65, 1, 66, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(66, 1, 63, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(67, 1, 68, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(68, 1, 69, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(69, 1, 70, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(70, 1, 67, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(71, 1, 71, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(72, 1, 74, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(73, 1, 72, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(74, 1, 73, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(75, 1, 76, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(76, 1, 75, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(77, 1, 77, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(78, 1, 78, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(79, 1, 79, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(80, 1, 80, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(81, 1, 81, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(82, 1, 82, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(83, 1, 84, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(84, 1, 85, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(85, 1, 86, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(86, 1, 83, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(87, 1, 87, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(88, 1, 88, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(89, 1, 89, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(90, 1, 90, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(91, 1, 91, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(92, 1, 92, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(93, 1, 93, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(94, 1, 94, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(95, 1, 95, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(96, 1, 96, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(97, 1, 97, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(98, 1, 98, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(99, 1, 99, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(100, 1, 100, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(101, 1, 101, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(102, 1, 102, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(103, 1, 103, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(104, 1, 104, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(105, 1, 106, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(106, 1, 107, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(107, 1, 108, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(108, 1, 105, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(109, 1, 109, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(110, 1, 110, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(111, 1, 111, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(112, 1, 112, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(113, 1, 113, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(114, 1, 114, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(115, 1, 115, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(116, 1, 116, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(117, 1, 117, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(118, 1, 118, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(119, 1, 119, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(120, 1, 120, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(121, 1, 122, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(122, 1, 123, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(123, 1, 124, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(124, 1, 125, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(125, 1, 126, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(126, 1, 127, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(127, 1, 121, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(128, 1, 128, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(129, 1, 129, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(130, 1, 130, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(131, 1, 131, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(132, 1, 133, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(133, 1, 132, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(134, 1, 134, '/assets/product_logo/S8MuexgpQ6ibcTb.webp', '2025-05-15 13:51:50', '2025-05-15 13:51:50'),
(135, 1, 135, '/assets/product_logo/z7jcmFT3EOQOGJs.webp', '2025-05-19 03:28:17', '2025-05-19 03:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `pembayarans`
--

CREATE TABLE `pembayarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `no_pembayaran` text NOT NULL,
  `no_pembeli` varchar(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `metode` varchar(255) NOT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayarans`
--

INSERT INTO `pembayarans` (`id`, `order_id`, `harga`, `no_pembayaran`, `no_pembeli`, `status`, `metode`, `reference`, `created_at`, `updated_at`) VALUES
(38, 'CSH214488263919INV', '2202', 'Balance Payment', '08522356523', 'Lunas', 'SALDO', '', '2025-05-18 14:33:44', '2025-05-18 14:33:44'),
(39, 'CSH183796791551INV', '2202', 'Balance Payment', '08522356523', 'Lunas', 'SALDO', '', '2025-05-19 11:18:37', '2025-05-19 11:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `pembelians`
--

CREATE TABLE `pembelians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) NOT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `layanan` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `profit` int(11) NOT NULL,
  `provider_order_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `log` varchar(1000) DEFAULT NULL,
  `voucher` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `tipe_transaksi` varchar(255) NOT NULL DEFAULT 'game',
  `ip_address` varchar(2225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelians`
--

INSERT INTO `pembelians` (`id`, `order_id`, `username`, `user_id`, `zone`, `nickname`, `layanan`, `harga`, `profit`, `provider_order_id`, `status`, `log`, `voucher`, `message`, `tipe_transaksi`, `ip_address`, `created_at`, `updated_at`) VALUES
(38, 'CSH214488263919INV', 'admin123', '8110927617', NULL, 'PAKINTA☯️WEL', '5 Diamonds', 2202, 1101, '', 'Batal', '{\"status\":true}', NULL, NULL, 'game', 'HTTP/1.0 200 OK\r\nCache-Control: no-cache, private\r\nContent-Type:  application/json\r\nDate:          Sun, 18 May 2025 14:33:44 GMT\r\n\r\n{\"ip\":\"114.79.18.167\",\"city\":\"Surabaya\",\"region\":\"East Java\",\"country\":\"ID\",\"loc\":\"-7.2492,112.7508\",\"org\":\"AS18004 PT WIRELESS INDONESIA ( WIN )\",\"timezone\":\"Asia\\/Jakarta\"}', '2025-05-18 14:33:44', '2025-05-18 14:34:07'),
(39, 'CSH183796791551INV', 'admin123', '8110927617', NULL, 'PAKINTA☯️WEL', '5 Diamonds', 2202, 1101, '', 'Batal', '{\"status\":true}', NULL, NULL, 'game', 'HTTP/1.0 200 OK\r\nCache-Control: no-cache, private\r\nContent-Type:  application/json\r\nDate:          Mon, 19 May 2025 11:18:37 GMT\r\n\r\n{\"ip\":\"114.5.223.111\",\"city\":\"Surabaya\",\"region\":\"East Java\",\"country\":\"ID\",\"loc\":\"-7.2492,112.7508\",\"org\":\"AS4761 INDOSAT Internet Network Provider\",\"timezone\":\"Asia\\/Jakarta\"}', '2025-05-19 11:18:37', '2025-05-19 11:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bintang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `layanan` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_pembeli` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting_webs`
--

CREATE TABLE `setting_webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul_web` text NOT NULL,
  `keywords` text NOT NULL,
  `deskripsi_web` text NOT NULL,
  `logo_header` text DEFAULT NULL,
  `logo_footer` text DEFAULT NULL,
  `logo_favicon` text DEFAULT NULL,
  `url_wa` text NOT NULL,
  `url_ig` text NOT NULL,
  `url_tiktok` text NOT NULL,
  `url_youtube` text NOT NULL,
  `url_fb` text NOT NULL,
  `topupindo_api` text NOT NULL,
  `apikey_bangjeff` text DEFAULT NULL,
  `apikey_aoshi` text DEFAULT NULL,
  `api_mobilegamestore` text DEFAULT NULL,
  `warna1` text NOT NULL,
  `warna2` text NOT NULL,
  `warna3` text NOT NULL,
  `warna4` text NOT NULL,
  `ipaymu_va` text NOT NULL,
  `ipaymu_key` text NOT NULL,
  `paydisini_apikey` text NOT NULL,
  `tripay_api` text DEFAULT NULL,
  `tripay_merchant_code` text DEFAULT NULL,
  `tripay_private_key` text DEFAULT NULL,
  `tokopay_merchant_id` text DEFAULT NULL,
  `tokopay_secret_key` text DEFAULT NULL,
  `username_digi` text DEFAULT NULL,
  `api_key_digi` text DEFAULT NULL,
  `apigames_secret` text DEFAULT NULL,
  `apigames_merchant` text DEFAULT NULL,
  `vip_apiid` text DEFAULT NULL,
  `vip_apikey` text DEFAULT NULL,
  `wj_apiid` text DEFAULT NULL,
  `wj_apikey` text DEFAULT NULL,
  `nomor_admin` text DEFAULT NULL,
  `wa_key` text DEFAULT NULL,
  `wa_number` text DEFAULT NULL,
  `ovo_admin` text DEFAULT NULL,
  `ovo1_admin` text DEFAULT NULL,
  `gopay_admin` text DEFAULT NULL,
  `gopay1_admin` text DEFAULT NULL,
  `dana_admin` text DEFAULT NULL,
  `shopeepay_admin` text DEFAULT NULL,
  `bca_admin` text DEFAULT NULL,
  `profit_public` int(11) DEFAULT NULL,
  `profit_member` int(11) DEFAULT NULL,
  `profit_platinum` int(11) DEFAULT NULL,
  `profit_gold` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `setting_webs`
--

INSERT INTO `setting_webs` (`id`, `judul_web`, `keywords`, `deskripsi_web`, `logo_header`, `logo_footer`, `logo_favicon`, `url_wa`, `url_ig`, `url_tiktok`, `url_youtube`, `url_fb`, `topupindo_api`, `apikey_bangjeff`, `apikey_aoshi`, `api_mobilegamestore`, `warna1`, `warna2`, `warna3`, `warna4`, `ipaymu_va`, `ipaymu_key`, `paydisini_apikey`, `tripay_api`, `tripay_merchant_code`, `tripay_private_key`, `tokopay_merchant_id`, `tokopay_secret_key`, `username_digi`, `api_key_digi`, `apigames_secret`, `apigames_merchant`, `vip_apiid`, `vip_apikey`, `wj_apiid`, `wj_apikey`, `nomor_admin`, `wa_key`, `wa_number`, `ovo_admin`, `ovo1_admin`, `gopay_admin`, `gopay1_admin`, `dana_admin`, `shopeepay_admin`, `bca_admin`, `profit_public`, `profit_member`, `profit_platinum`, `profit_gold`, `created_at`, `updated_at`) VALUES
(1, 'Topupvip - Platform Top Up Game Termurah SEDUNIA', 'TopupVIP,topupml,topupff,ff,ml,topup murah, cishop indo,internasional', 'Penuhi Semua Kebutuhan Game Mu Di Cishop Indo, Tempat Top Up Game Termurah, Tercepat, Dan Terpercaya Di Indonesia, cepat dan mudah sejagat raya', '/assets/logo/Logo-Topupvip-New-removebg-preview.png', '/assets/logo/20250305_024344.png', '/assets/logo/Logo-Topupvip-New-removebg-preview.png', 'https://wa.me/#', 'https://www.instagram.com/#', 'https://www.tiktok.com/#', 'https://www.youtube.com/#', 'https://www.facebook.com/#', 'VMgecqm9yJIBbuLiTa714NYnCGK5DzxtsQdjrSk0O6RFAHwE832PvXZofUpW', 'GANTI API KEY', 'GANTI API KEY', '', '#333333', '#474747', '#5c5c5c', '#000000', 'Ewee', 'KENTOT', 'GANTI APIKEY', 'GANTI API KEY', 'GANTI MERCHANT ID', 'GANTI PRIVATE KEY', 'GANTI MERCHANT ID', 'GANTI SECRECT KEY', 'GANTI USERNAME', 'GANTI API KEY', 'GANTI SECRECT KEY', 'GANTI MERCHANT', 'GANTI API ID', 'GANTI API KEY', '9a9rSJskA', '8N9cOMgm4paDhPnMof3EAGDpIZR2cnsUKRoRoMTbYvXwEBi0FYEAQxQS7YsZxrRQ', 'GANTI NO ADMIN', 'GANTI WA KEY', 'GANTI WA NUMBER', 'GANTI', NULL, 'GANTI', NULL, 'GANTI', 'GANTI', 'GANTI', 4, 4, 3, 2, '2025-05-19 08:02:44', '2025-05-19 08:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `no_wa` varchar(255) NOT NULL,
  `balance` bigint(20) NOT NULL,
  `role` enum('Admin','Member','Gold','Platinum') NOT NULL,
  `idgame` varchar(225) DEFAULT NULL,
  `servergame` int(225) DEFAULT NULL,
  `idgame2` varchar(2225) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `google2fa_secret` varchar(2255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `api_key`, `no_wa`, `balance`, `role`, `idgame`, `servergame`, `idgame2`, `otp`, `google2fa_secret`, `created_at`, `updated_at`) VALUES
(1, 'Cishop Indo', 'admin123', 'cishop.indo@gmail.com', '$2y$10$I6YZd38ZqwFWm4fmm53JzeOfQ5u.D9xEqN6VpPAWwJR8CXdEI.z/u', 'CISHOP-4EJvH62UIgAsVAWf20bc', '6282113064552', 50000, 'Admin', NULL, NULL, NULL, NULL, NULL, '2025-04-13 00:25:29', '2025-05-19 11:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` int(11) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `promo` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `max_potongan` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `kode`, `promo`, `stock`, `max_potongan`, `created_at`, `updated_at`) VALUES
(10, 'Test', 5, 1, 2000, '2025-04-18 11:19:44', '2025-04-18 11:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `whitelisted_ips`
--

CREATE TABLE `whitelisted_ips` (
  `id` bigint(30) UNSIGNED NOT NULL,
  `ip_address` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `whitelisted_ips`
--

INSERT INTO `whitelisted_ips` (`id`, `ip_address`, `created_at`, `updated_at`) VALUES
(32, '114.4.78.217', '2025-05-19 02:19:06', '2025-05-19 02:19:06'),
(33, '114.10.70.180', '2025-05-19 05:51:51', '2025-05-19 05:51:51'),
(34, '114.10.72.143', '2025-05-19 06:07:58', '2025-05-19 06:07:58'),
(35, '140.213.9.61', '2025-05-19 10:59:19', '2025-05-19 10:59:19'),
(36, '140.213.35.98', '2025-05-19 10:59:58', '2025-05-19 10:59:58'),
(37, '114.5.223.111', '2025-05-19 11:01:01', '2025-05-19 11:01:01'),
(38, '182.3.101.47', '2025-05-19 11:06:52', '2025-05-19 11:06:52'),
(39, '114.10.69.73', '2025-05-19 16:23:31', '2025-05-19 16:23:31');

-- --------------------------------------------------------

--
-- Table structure for table `whitelist_ip_api`
--

CREATE TABLE `whitelist_ip_api` (
  `id` bigint(30) UNSIGNED NOT NULL,
  `ip_address` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(30) NOT NULL,
  `rekening` varchar(225) NOT NULL,
  `total_transfer` decimal(15,2) NOT NULL,
  `biaya_admin` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_inputs`
--
ALTER TABLE `custom_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_joki`
--
ALTER TABLE `data_joki`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakets`
--
ALTER TABLE `pakets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_layanans`
--
ALTER TABLE `paket_layanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paket_id` (`paket_id`),
  ADD KEY `layanan_id` (`layanan_id`);

--
-- Indexes for table `pembayarans`
--
ALTER TABLE `pembayarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelians`
--
ALTER TABLE `pembelians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_webs`
--
ALTER TABLE `setting_webs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelisted_ips`
--
ALTER TABLE `whitelisted_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelist_ip_api`
--
ALTER TABLE `whitelist_ip_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `custom_inputs`
--
ALTER TABLE `custom_inputs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `data_joki`
--
ALTER TABLE `data_joki`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pakets`
--
ALTER TABLE `pakets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paket_layanans`
--
ALTER TABLE `paket_layanans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `pembayarans`
--
ALTER TABLE `pembayarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pembelians`
--
ALTER TABLE `pembelians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_webs`
--
ALTER TABLE `setting_webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `whitelisted_ips`
--
ALTER TABLE `whitelisted_ips`
  MODIFY `id` bigint(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `whitelist_ip_api`
--
ALTER TABLE `whitelist_ip_api`
  MODIFY `id` bigint(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
