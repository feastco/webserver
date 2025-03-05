-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2025 at 11:02 AM
-- Server version: 8.0.41-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `android`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `telp`, `email`) VALUES
('A22.2023.00001', 'John Doe', '081234567890', 'john.doe@example.com'),
('A22.2023.00002', 'Jane Smith', '081234567891', 'jane.smith@example.com'),
('A22.2023.00003', 'Alice Johnson', '081234567892', 'alice.johnson@example.com'),
('A22.2023.00004', 'Bob Brown', '081234567893', 'bob.brown@example.com'),
('A22.2023.00005', 'Charlie Davis', '081234567894', 'charlie.davis@example.com'),
('A22.2023.00006', 'Diana Evans', '081234567895', 'diana.evans@example.com'),
('A22.2023.00007', 'Ethan Green', '081234567896', 'ethan.green@example.com'),
('A22.2023.00008', 'Fiona Harris', '081234567897', 'fiona.harris@example.com'),
('A22.2023.00009', 'George Clark', '081234567898', 'george.clark@example.com'),
('A22.2023.00010', 'Hannah Lewis', '081234567899', 'hannah.lewis@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `kode` char(10) NOT NULL,
  `merk` varchar(200) NOT NULL,
  `kategori` char(30) NOT NULL,
  `satuan` char(20) NOT NULL,
  `hargabeli` double NOT NULL,
  `diskonbeli` double DEFAULT '0',
  `hargapokok` double NOT NULL,
  `hargajual` double NOT NULL,
  `diskonjual` double DEFAULT '0',
  `stok` int NOT NULL,
  `foto` varchar(255) NOT NULL,
  `deskripsi` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`kode`, `merk`, `kategori`, `satuan`, `hargabeli`, `diskonbeli`, `hargapokok`, `hargajual`, `diskonjual`, `stok`, `foto`, `deskripsi`) VALUES
('B001', 'Sony Alpha A3000 Kit 18-55mm OSS', 'Kamera', 'Unit', 4320000, 0, 4320000, 4500000, 0, 10, 'kamera.png', 'Kamera mirrorless dengan lensa kit 18-55mm OSS.'),
('B002', 'Sony HXR-MC 1500P', 'Kamera Video', 'Unit', 13000000, 0, 13000000, 13625000, 0, 5, 'kamera1.jpeg', 'Kamera video profesional dengan kualitas HD.'),
('B003', 'Panasonic AG-AF100 Camcorder', 'Kamera Video', 'Unit', 4670000, 10, 4203000, 4670000, 5, 8, 'panasonic_agaf100.jpg', 'Camcorder dengan desain stylish dan fitur lengkap.'),
('B004', 'Sony Handycam HDR-PJ660E', 'Kamera Video', 'Unit', 13200000, 0, 13200000, 13400000, 0, 3, 'sony_handycam_pj660e.jpg', 'Kamera video dengan built-in projector.'),
('B005', 'Panasonic AG-HMC152EN 3CCD', 'Kamera Video', 'Unit', 44500000, 0, 44500000, 46500000, 0, 2, 'panasonic_aghmc152en.jpg', 'Kamera video profesional 3CCD dengan kualitas tinggi.'),
('B006', 'Canon XF100 Professional Camcorder', 'Kamera Video', 'Unit', 10050000, 0, 10050000, 10250000, 0, 7, 'canon_xf100.jpg', 'Camcorder profesional dari Canon dengan fitur canggih.'),
('B007', 'Nikon D5200 Body Only', 'Kamera', 'Unit', 3550000, 0, 3550000, 3850000, 0, 12, 'nikon_d5200.jpg', 'Kamera DSLR dengan kualitas gambar yang tajam.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `status`, `email`) VALUES
('user1', '12345', 1, 'user1@gmail.com'),
('user2', '12345', 0, 'user2@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
