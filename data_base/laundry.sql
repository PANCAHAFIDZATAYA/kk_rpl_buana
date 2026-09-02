-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2026 at 02:41 AM
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
-- Database: `laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pasword` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `pasword`, `hak_akses`) VALUES
(1, 'admin', '123', 1),
(2, 'admin1', '202cb962ac59075b964b07152d234b70', 2),
(3, 'admin2', 'caf1a3dfb505ffed0d024130f58c5cfa', 3);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `harga_per_kilo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`harga_per_kilo`) VALUES
(35);

-- --------------------------------------------------------

--
-- Table structure for table `pakaian`
--

CREATE TABLE `pakaian` (
  `pakaian_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `pakaian_jenis` varchar(255) NOT NULL,
  `pakaian_jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pakaian`
--

INSERT INTO `pakaian` (`pakaian_id`, `transaksi_id`, `pakaian_jenis`, `pakaian_jumlah`) VALUES
(1, 9, 'jeans', 2),
(2, 7, 'baju', 4),
(3, 1, 'celana_panjang', 2),
(4, 8, 'celana_pendek', 6),
(5, 2, 'kemeja', 3),
(6, 6, 'kaos_lengan_panjang', 4),
(7, 10, 'baju_batik', 1),
(8, 4, 'seragam', 3),
(9, 3, 'jas', 1),
(10, 11, 'kaos_hitam', 7),
(11, 15, 'celana_biru', 2),
(12, 13, 'baju_putih', 3),
(13, 14, 'celana_biru', 7),
(14, 12, 'baju_kemeja', 3),
(15, 4, 'kaos_bola', 3),
(16, 11, 'kaos_biru', 1),
(17, 9, 'celana_cutbray', 3),
(18, 3, 'kemeja_putih', 2),
(19, 6, 'rok', 2),
(20, 7, 'celana_merah', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int(11) NOT NULL,
  `pelanggan_nama` varchar(255) NOT NULL,
  `pelanggan_hp` varchar(20) NOT NULL,
  `pelanggan_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `pelanggan_nama`, `pelanggan_hp`, `pelanggan_alamat`) VALUES
(1, 'rudi', '969231123', 'boja'),
(2, 'tuti', '34562812', 'tampingan'),
(3, 'siti', '28316392', 'meteseh'),
(4, 'kumar', '88769871', 'medini'),
(5, 'rei', '786542862', 'penaton'),
(6, 'yaya', '782732363', 'salamsari'),
(7, 'tono', '213443219', 'trisobo'),
(8, 'wahyu', '42353543', 'campurjo'),
(9, 'nafi', '542385484', 'jatisari'),
(10, 'alfi', '25345234', 'rowosari'),
(11, 'eko', '326482734', 'simbang'),
(12, 'marko', '32578423', 'bebengan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tgl` date NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_berat` int(11) NOT NULL,
  `transaksi_tgl_selesai` date NOT NULL,
  `transaksi_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tgl`, `pelanggan_id`, `transaksi_harga`, `transaksi_berat`, `transaksi_tgl_selesai`, `transaksi_status`) VALUES
(1, '2026-02-11', 1, 70, 2, '2026-02-14', 2),
(2, '2026-09-15', 2, 35, 1, '2026-09-16', 1),
(3, '2026-09-02', 3, 105, 3, '2026-09-05', 2),
(4, '2026-09-03', 4, 35, 1, '2026-09-06', 2),
(5, '2026-09-14', 2, 70, 2, '2026-09-15', 1),
(6, '2026-09-09', 6, 70, 2, '2026-09-13', 2),
(7, '2026-09-16', 4, 35, 1, '2026-09-19', 0),
(8, '2026-09-14', 1, 70, 2, '2026-09-17', 2),
(9, '2026-09-16', 7, 35, 1, '2026-09-17', 0),
(10, '2026-09-10', 10, 105, 3, '2026-09-17', 2),
(11, '2026-09-12', 8, 35, 1, '2026-09-14', 1),
(12, '2026-09-23', 9, 70, 2, '2026-09-25', 2),
(13, '2026-09-16', 7, 35, 1, '2026-09-19', 1),
(14, '2026-09-13', 8, 70, 2, '2026-09-15', 2),
(15, '2026-09-23', 10, 35, 1, '2026-09-25', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pakaian`
--
ALTER TABLE `pakaian`
  ADD PRIMARY KEY (`pakaian_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pakaian`
--
ALTER TABLE `pakaian`
  MODIFY `pakaian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
