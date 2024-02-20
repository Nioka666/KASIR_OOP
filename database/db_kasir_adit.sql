-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2024 at 05:56 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kasir_adit`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_produk` int(10) UNSIGNED NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id`, `id_penjualan`, `id_produk`, `jumlah`, `sub_total`) VALUES
(1, 1, 1, 1, 20000),
(2, 1, 2, 1, 40000),
(3, 2, 1, 5, 100000),
(4, 3, 2, 1, 40000),
(5, 4, 3, 4, 20000),
(6, 4, 1, 1, 20000),
(7, 5, 2, 2, 80000),
(8, 5, 1, 1, 20000),
(9, 7, 2, 2, 80000),
(10, 9, 1, 5, 100000),
(11, 9, 3, 2, 10000),
(12, 10, 1, 5, 100000),
(13, 10, 2, 2, 80000),
(14, 11, 2, 3, 120000),
(15, 13, 2, 2, 80000),
(16, 13, 3, 2, 10000),
(17, 14, 3, 4, 20000),
(18, 15, 2, 1, 40000),
(19, 16, 1, 2, 40000),
(20, 17, 1, 2, 40000),
(21, 18, 3, 2, 10000),
(22, 19, 2, 5, 200000),
(23, 19, 3, 2, 10000),
(24, 20, 1, 5, 100000),
(29, 20, 2, 1, 40000),
(30, 21, 4, 2, 18000),
(31, 22, 1, 2, 40000),
(32, 23, 1, 1, 20000),
(33, 24, 1, 1, 20000),
(35, 25, 2, 1, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'jordi', 'konogakure', '081234567890'),
(2, 'Ika', 'kiri jalan', '0890898989'),
(3, 'jujn', 'koali', '0892226762676'),
(4, 'ropek begok', 'pulojero', '08576780945');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` datetime NOT NULL,
  `total_harga` int(11) NOT NULL,
  `id_pelanggan` int(10) UNSIGNED NOT NULL,
  `bayar` int(11) DEFAULT NULL,
  `kembalian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `tanggal`, `total_harga`, `id_pelanggan`, `bayar`, `kembalian`) VALUES
(1, '2024-02-13 07:33:11', 60000, 1, 0, 0),
(2, '2024-02-13 07:50:53', 100000, 1, 0, 0),
(3, '2024-02-14 07:56:06', 40000, 1, 0, 0),
(4, '2024-02-13 09:30:57', 40000, 2, 0, 0),
(5, '2024-02-13 13:36:26', 100000, 2, 0, 0),
(7, '2024-02-16 11:21:02', 80000, 1, 0, 0),
(8, '2024-02-16 12:42:55', 0, 2, 0, 0),
(9, '2024-02-16 12:46:21', 110000, 1, 0, 0),
(10, '2024-02-16 20:51:30', 180000, 1, 0, 0),
(11, '2024-02-16 21:33:05', 120000, 2, 0, 0),
(13, '2024-02-17 00:22:22', 90000, 1, 0, 0),
(14, '2024-02-17 21:39:53', 20000, 2, 50000, 0),
(15, '2024-02-17 22:21:05', 40000, 1, 50000, 0),
(16, '2024-02-18 03:05:57', 40000, 2, 200000, 0),
(17, '2024-02-18 09:18:11', 40000, 1, 45000, 0),
(18, '2024-02-18 10:21:50', 10000, 3, 20000, 0),
(19, '2024-02-19 00:56:29', 210000, 2, 200000, 0),
(20, '2024-02-19 08:34:42', 449000, 1, 3000000, 0),
(21, '2024-02-19 08:54:36', 18000, 3, 20000, 0),
(22, '2024-02-19 08:57:49', 40000, 3, 500000, 0),
(23, '2024-02-19 09:00:13', 20000, 2, 100000, 0),
(24, '2024-02-19 09:01:38', 20000, 1, 100000, 80000),
(25, '2024-02-20 11:05:29', 40000, 2, 50000, 32000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `stok`) VALUES
(1, 'gajah baru', 20000, 19),
(2, 'sorya', 40000, 24),
(3, 'mild', 5000, 0),
(4, 'Riko', 9000, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `alamat` text NOT NULL,
  `tipe_pengguna` enum('admin','petugas') DEFAULT 'petugas',
  `role` enum('admin','petugas') NOT NULL DEFAULT 'petugas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `email`, `password`, `alamat`, `tipe_pengguna`, `role`) VALUES
(6, 'LYLA', 'LYLA', 'LYLA@GMAIL.COM', '$2y$10$VoCspvkBaTn3czKYVOH4XuRBoix3q70GZ7R9aKUmJwUHJgbclLoFu', 'jati', 'petugas', 'petugas'),
(8, 'Deny', 'Dennn', 'Dennn@gmail.com', '$2y$10$Kdr7T.4oHybVNujZ7H1qnOcqQXk/dNRvlf9lBR9b6GdOtRyXFwnnq', 'jogya', 'admin', 'admin'),
(9, 'ABISYF', 'Ivenkzz', 'abi@yahoo.com', '$2y$10$0KHE7ZidrqjckUMgHakqpOdoVlTceVSUq61pgD6fHtksYALCHHNqG', 'surodinawan gang 28', 'admin', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
