-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2025 at 08:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diamond_db`
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
('BRG001', 'Pulpen Standard', 'Alat Tulis', 1500.00, 2500.00),
('BRG003', 'Penghapus Karet', 'Alat Tulis', 800.00, 1500.00),
('BRG004', 'Buku Tulis 38 Lembar', 'Kertas', 2500.00, 4000.00),
('BRG005', 'Pensil HB', 'Pensil', 500.00, 1500.00);

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
('003', 'BRG004', 'Buku Tulis 38 Lembar', 4000, 1, 4000);

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
('K03', 'Feri Andriyanto', 'Laki-laki', NULL, NULL, '081212121212', 'Jl. Pahlawan'),
('K04', 'Nihil', 'Laki-laki', NULL, NULL, '08111111111', 'Jl. Lembayung');

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
('feri', 'feri1234');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(20) NOT NULL,
  `id_pelanggan` varchar(20) DEFAULT NULL,
  `tgl_nota` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_pelanggan`, `tgl_nota`, `total`) VALUES
('001', 'P04', '2025-05-11', 9000),
('002', 'P02', '2025-05-11', 7000),
('003', '02', '2025-05-12', 7000);

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
('02', 'Nalusbae', 'Laki-laki', '0812111123', 'Jl. Dps'),
('03', 'Zero', 'Laki-laki', '08131111111', 'Jl. Haluan'),
('P02', 'Nihil', 'Laki-laki', '0813131313', 'Jl. Keributan'),
('P03', 'NalusBae', 'Laki-laki', '0811111111', 'Jl. Puting Beliung'),
('P04', 'Feri', 'Laki-laki', '081302312122', 'Jl. Merdeka');

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
