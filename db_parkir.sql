-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2026 at 08:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_parkir`
--

-- --------------------------------------------------------

--
-- Table structure for table `kartu`
--

CREATE TABLE `kartu` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `nama_pemilik` varchar(100) DEFAULT NULL,
  `plat_nomor` varchar(20) DEFAULT NULL,
  `status` enum('aktif','blokir') DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kartu`
--

INSERT INTO `kartu` (`id`, `uid`, `nama_pemilik`, `plat_nomor`, `status`) VALUES
(1, '12345678', 'Budi', 'B1234ABC', 'aktif'),
(5, '77Y', 'taman dimari', '767652', 'aktif'),
(6, '111', '232', '2', 'aktif'),
(8, 'D5526C', 'Yudi', 'Y6663', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `waktu_masuk` datetime DEFAULT NULL,
  `waktu_keluar` datetime DEFAULT NULL,
  `biaya` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id`, `uid`, `waktu_masuk`, `waktu_keluar`, `biaya`) VALUES
(22, 'RFID001', '2026-02-12 10:21:46', '2026-02-12 04:22:06', 5000),
(23, 'RFID002', '2026-02-11 10:41:31', '2026-02-12 04:43:16', 95000),
(24, 'RFID022', '2026-02-13 22:14:24', '2026-02-15 09:02:56', 175000),
(25, 'ABCD', '2026-02-15 14:57:39', '2026-02-21 08:38:42', 690000),
(26, '', '2026-02-15 14:59:47', '2026-02-24 04:42:29', 1030000),
(27, '87654321', '2026-02-24 11:05:14', '2026-02-24 05:07:52', 5000),
(28, '12345678', '2026-03-06 20:52:19', '2026-03-06 15:01:11', 5000),
(29, '12345678', '2026-03-06 21:01:45', '2026-03-06 15:01:57', 5000),
(30, '123456789', '2026-02-15 15:01:20', '2026-03-06 15:02:19', 2285000),
(31, '77Y', '2026-03-06 21:03:16', '0000-00-00 00:00:00', 0),
(32, 'ABC123', '2026-04-07 20:54:34', '2026-04-08 09:45:04', 16000),
(33, 'ABC17', '2026-04-08 10:57:07', '2026-04-09 13:09:28', 44000),
(34, 'EAE20207', '2026-04-09 14:39:59', '2026-04-09 14:40:12', 5000),
(35, 'EAE20207', '2026-04-09 14:35:56', '2026-04-09 14:36:08', 5000),
(36, 'EAE20207', '2026-04-09 14:40:23', '2026-04-09 14:44:41', 5000),
(37, 'EAE20207', '2026-04-09 14:35:30', '2026-04-09 14:35:48', 5000),
(38, 'EAE20207', '2026-04-09 14:31:37', '2026-04-09 14:31:59', 5000),
(39, 'EAE20207', '2026-04-09 14:44:52', '2026-04-09 14:50:03', 5000),
(40, 'EAE20207', '2026-04-09 14:50:59', '2026-04-09 14:51:04', 5000),
(41, '2B0A0007', '2026-04-10 10:06:16', '2026-04-10 10:06:27', 5000),
(42, '2B0A0007', '2026-04-10 10:14:00', '2026-04-10 10:14:11', 5000),
(43, '2B0A0007', '2026-04-10 10:16:55', '2026-04-10 10:17:00', 5000),
(44, '2B0A0007', '2026-04-10 10:21:14', '2026-04-10 10:21:24', 5000),
(45, '2B0A0007', '2026-04-10 10:27:01', '2026-04-10 10:27:08', 5000),
(46, '2B0A0007', '2026-04-10 10:27:43', '2026-04-10 10:27:50', 5000),
(47, '2B0A0007', '2026-04-10 10:33:43', '2026-04-10 10:33:50', 5000),
(48, '2B0A0007', '2026-04-10 10:37:07', '2026-04-10 10:37:15', 5000),
(49, '2B0A0007', '2026-04-10 10:40:51', '2026-04-10 10:40:58', 5000),
(50, '2B0A0007', '2026-04-10 10:42:53', '2026-04-10 10:42:59', 5000),
(51, '2B0A0007', '2026-04-10 10:45:22', '2026-04-10 10:45:30', 5000),
(52, '2B0A0007', '2026-04-10 10:49:31', '2026-04-10 10:49:39', 5000),
(53, '2B0A0007', '2026-04-10 10:41:51', '2026-04-10 10:41:56', 5000),
(54, '2B0A0007', '2026-04-10 10:37:45', '2026-04-10 10:37:51', 5000),
(55, '2B0A0007', '2026-04-10 10:08:55', '2026-04-10 10:09:03', 5000),
(56, '2B0A0007', '2026-04-10 10:05:45', '2026-04-10 10:05:54', 5000),
(57, '2B0A0007', '2026-04-10 10:57:43', '2026-04-10 10:57:51', 5000),
(58, '2B0A0007', '2026-04-10 11:01:18', '2026-04-10 11:01:25', 5000),
(59, '2B0A0007', '2026-04-10 11:01:43', '2026-04-10 11:01:58', 5000),
(60, '2B0A0007', '2026-04-10 11:03:43', '2026-04-10 11:03:52', 5000),
(61, '77EA1306', '2026-04-10 11:25:21', '2026-04-10 11:25:28', 5000),
(62, '77EA1306', '2026-04-10 11:25:58', '2026-04-10 11:26:19', 5000),
(63, '71EBF206', '2026-04-14 12:29:18', '2026-04-14 12:29:23', 5000),
(64, '71EBF206', '2026-04-14 12:33:04', '2026-04-14 12:33:12', 5000),
(65, '71EBF206', '2026-04-14 12:37:56', '2026-04-14 12:38:07', 5000),
(66, '5764F206', '2026-04-16 14:02:16', '2026-04-16 14:02:23', 5000),
(67, '71EBF206', '2026-04-14 12:34:07', '2026-04-14 12:34:13', 5000),
(68, 'BBDD6906', '2026-04-16 14:03:34', '2026-04-16 14:03:45', 5000),
(69, '5764F206', '2026-04-16 14:05:10', '2026-04-16 14:05:19', 5000),
(70, '5764F206', '2026-04-16 14:18:04', '2026-04-16 14:18:11', 5000),
(71, '5764F206', '2026-04-16 14:18:50', '2026-04-16 14:18:56', 5000),
(72, '5764F206', '2026-04-16 14:23:33', '2026-04-16 14:23:40', 5000),
(73, '5764F206', '2026-04-16 14:20:19', '2026-04-16 14:20:20', 5000),
(74, 'BBDD6906', '2026-04-16 14:04:23', '2026-04-16 14:40:40', 5000),
(75, 'BBDD6906', '2026-04-16 14:40:59', '2026-04-16 14:41:04', 5000),
(76, 'BBDD6906', '2026-04-16 14:45:09', '2026-04-16 14:45:38', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `parkir`
--

CREATE TABLE `parkir` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `waktu_masuk` datetime DEFAULT NULL,
  `waktu_keluar` datetime DEFAULT NULL,
  `biaya` int(11) DEFAULT 0,
  `status` enum('masuk','keluar','bayar') DEFAULT 'masuk'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkir`
--

INSERT INTO `parkir` (`id`, `uid`, `waktu_masuk`, `waktu_keluar`, `biaya`, `status`) VALUES
(74, '2628F306', '2026-04-10 11:20:32', NULL, 0, 'masuk'),
(75, '2B0A0007', '2026-04-10 11:24:15', NULL, 0, 'masuk');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','owner','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`) VALUES
(1, 'Petugas Parkir', 'petugas', '827ccb0eea8a706c4c34a16891f84e7b', 'petugas'),
(2, 'Admin Parkir', 'admin', '0192023a7bbd73250516f069df18b500', 'admin'),
(3, 'Owner Parkir', 'owner', '5be057accb25758101fa5eadbbd79503', 'owner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kartu`
--
ALTER TABLE `kartu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`);

--
-- Indexes for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parkir`
--
ALTER TABLE `parkir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kartu`
--
ALTER TABLE `kartu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `parkir`
--
ALTER TABLE `parkir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
