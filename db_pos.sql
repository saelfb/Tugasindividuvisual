-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2025 at 09:05 AM
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
-- Database: `db_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `jenis_barang` varchar(50) DEFAULT NULL,
  `harga_beli` decimal(10,2) DEFAULT NULL,
  `harga_jual` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `harga_jual`) VALUES
('KD001', 'Buku masak', 'Buku', 15000.00, 25000.00),
('KD002', 'Buku coding', 'Buku', 100000.00, 125000.00),
('KD003', 'Faber castle 2B', 'Pensil', 10000.00, 15000.00),
('KD004', 'Fiber Optik', 'Buku', 25000.00, 100000.00),
('KD005', 'Buku MTCNA', 'Buku', 90000.00, 180000.00);

-- --------------------------------------------------------

--
-- Table structure for table `detail_nota`
--

CREATE TABLE `detail_nota` (
  `id_nota` varchar(20) DEFAULT NULL,
  `kd_barang` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_nota`
--

INSERT INTO `detail_nota` (`id_nota`, `kd_barang`, `nama_barang`, `harga_jual`, `qty`, `total`) VALUES
('001', 'BRG001', 'Pulpen Standard', 2500, 2, 5000),
('001', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('002', 'BRG005', 'Pensil HB', 1500, 2, 3000),
('002', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('003', 'BRG003', 'Penghapus Karet', 1500, 2, 3000),
('003', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000),
('01', 'KD001', 'Buku masak', 25000, 4, 100000),
('010', 'KD002', 'Buku coding', 125000, 50, 6250000),
('005', 'KD004', 'Fiber Optik', 100000, 5, 500000),
('005', 'KD002', 'Buku coding', 125000, 6, 750000),
('P015', 'KD004', 'Fiber Optik', 100000, 9, 900000),
('P111', 'KD005', 'Buku MTCNA', 180000, 5, 900000),
('P121', 'KD004', 'Fiber Optik', 100000, 6, 600000),
('P055', 'KD001', 'Buku masak', 25000, 2, 50000),
('P056', 'KD001', 'Buku masak', 25000, 2, 50000),
('P057', 'KD001', 'Buku masak', 25000, 2, 50000),
('P058', 'KD001', 'Buku masak', 25000, 2, 50000),
('P058', 'KD002', 'Buku coding', 125000, 3, 375000),
('P065', 'KD003', 'Faber castle 2B', 15000, 5, 75000),
('P066', 'KD002', 'Buku coding', 125000, 7, 875000),
('P123', 'KD001', 'Buku masak', 25000, 1, 25000),
('P999', 'KD003', 'Faber castle 2B', 15000, 2, 30000),
('P0501', 'KD003', 'Faber castle 2B', 15000, 20, 300000),
('P099', 'KD001', 'Buku masak', 25000, 1, 25000),
('P099', 'KD003', 'Faber castle 2B', 15000, 2, 30000),
('P100', 'KD003', 'Faber castle 2B', 15000, 1, 15000),
('P100', 'KD005', 'Buku MTCNA', 180000, 2, 360000),
('N1', 'KD001', 'Buku masak', 25000, 1, 25000),
('N1', 'KD003', 'Faber castle 2B', 15000, 2, 30000),
('N2', 'KD002', 'Buku coding', 125000, 2, 250000),
('P988', 'KD002', 'Buku coding', 125000, 1, 125000),
('P988', 'KD004', 'Fiber Optik', 100000, 2, 200000),
('N5', 'KD004', 'Fiber Optik', 100000, 10, 1000000),
('N10', 'KD002', 'Buku coding', 125000, 2, 250000),
('N11', 'KD003', 'Faber castle 2B', 15000, 5, 75000),
('N12', 'KD001', 'Buku masak', 25000, 2, 50000),
('N20', 'KD004', 'Fiber Optik', 100000, 2, 200000),
('N90', 'KD005', 'Buku MTCNA', 180000, 2, 360000);

-- --------------------------------------------------------

--
-- Table structure for table `kasirform`
--

CREATE TABLE `kasirform` (
  `id_kasir` varchar(10) NOT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `no_telpon` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kasirform`
--

INSERT INTO `kasirform` (`id_kasir`, `nama_kasir`, `jenis_kelamin`, `username`, `password`, `no_telpon`, `alamat`) VALUES
('K001', 'Saya', 'Perempuan', NULL, NULL, '081234567890', 'Depok'),
('U001', 'Bagus', 'Laki-laki', NULL, NULL, '081111111111', 'Depok'),
('U002', 'Sae', 'Laki-laki', NULL, NULL, '082222222222', 'Tapos');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin123'),
('sae', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(20) NOT NULL,
  `id_pelanggan` varchar(20) DEFAULT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `tgl_nota` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_pelanggan`, `nama_kasir`, `tgl_nota`, `total`) VALUES
('', 'P001', NULL, '2025-05-21 00:00:00', 0),
('001', 'P04', NULL, '2025-05-11 00:00:00', 9000),
('002', 'P02', NULL, '2025-05-11 00:00:00', 7000),
('003', '02', NULL, '2025-05-12 00:00:00', 7000),
('005', 'P004', NULL, '2025-05-21 00:00:00', 1250000),
('01', 'P002', NULL, '2025-05-21 00:00:00', 100000),
('010', 'P001', NULL, '2025-05-21 00:00:00', 6250000),
('N1', 'P001', NULL, '2025-05-22 00:00:00', 55000),
('N10', 'P002', 'Bagus', '2025-05-24 00:00:00', 250000),
('N11', 'P005', 'Bagus', '2025-05-24 00:00:00', 75000),
('N12', 'P005', 'Bagus', '2025-05-24 00:00:00', 50000),
('N2', 'P002', NULL, '2025-05-22 00:00:00', 250000),
('N20', 'P004', 'Bagus', '2025-05-24 00:00:00', 200000),
('N5', 'P005', NULL, '2025-05-24 00:00:00', 1000000),
('N90', 'P003', 'Bagus', '2025-05-24 00:00:00', 360000),
('P015', 'P003', NULL, '2025-05-21 00:00:00', 900000),
('P0501', 'P005', NULL, '2025-05-22 00:00:00', 300000),
('P055', 'P001', NULL, '2025-05-22 00:00:00', 50000),
('P056', 'P001', NULL, '2025-05-22 00:00:00', 50000),
('P057', 'P001', NULL, '2025-05-22 00:00:00', 50000),
('P058', 'P001', NULL, '2025-05-22 00:00:00', 425000),
('P065', 'P004', NULL, '2025-05-22 00:00:00', 75000),
('P066', 'P003', NULL, '2025-05-22 00:00:00', 875000),
('P099', 'P002', NULL, '2025-05-22 00:00:00', 55000),
('P100', 'P005', NULL, '2025-05-22 00:00:00', 375000),
('P111', 'P003', NULL, '2025-05-21 00:00:00', 900000),
('P121', 'P005', NULL, '2025-05-22 00:00:00', 600000),
('P123', 'P001', NULL, '2025-05-22 00:00:00', 25000),
('P988', 'P005', NULL, '2025-05-23 00:00:00', 325000),
('P999', 'P004', NULL, '2025-05-22 00:00:00', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `no_wa` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `no_wa`, `alamat`) VALUES
('P001', 'Fiaaaqt', 'Perempuan', '0832323232', 'Cilengsi'),
('P002', 'Torontosolo', 'Laki-laki', '081212121212', 'Depok'),
('P003', 'Bagus', 'Laki-laki', '098018019028', 'Depok'),
('P004', 'Saefulloh', 'Laki-laki', '103902184', 'Bogor'),
('P005', 'Amaririsu', 'Perempuan', '19329172918', 'Ciganjur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `detail_nota`
--
ALTER TABLE `detail_nota`
  ADD KEY `id_nota` (`id_nota`);

--
-- Indexes for table `kasirform`
--
ALTER TABLE `kasirform`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_nota`
--
ALTER TABLE `detail_nota`
  ADD CONSTRAINT `detail_nota_ibfk_1` FOREIGN KEY (`id_nota`) REFERENCES `nota` (`id_nota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
