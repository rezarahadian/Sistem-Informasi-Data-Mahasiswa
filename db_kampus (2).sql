-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2024 at 03:12 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `tb_datamahasiswa`
-- (See below for the actual view)
--
CREATE TABLE `tb_datamahasiswa` (
`program_studi` varchar(50)
,`jenjang` varchar(50)
,`jumlah_mahasiswa` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL,
  `jenjang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `nama_jurusan`, `jenjang`) VALUES
(1, 'Teknik Informatika', 'S1'),
(2, 'Sistem Informasi', 'S1'),
(3, 'Manajemen Informatika', 'D3'),
(4, 'Teknik Elektro', 'S1'),
(5, 'Teknik Mesin', 'S1'),
(6, 'rmik', 'DIII'),
(7, 'mesin', 'DIV');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `jenis_kelamin` varchar(25) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_telepon` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mahasiswa`, `nim`, `nama`, `id_jurusan`, `jenis_kelamin`, `tgl_lahir`, `alamat`, `no_telepon`, `email`) VALUES
(1, '2021001', 'Andi Wijaya', 1, 'L', '2002-01-15', 'Jl. Merdeka No.1', '081234567890', 'andi@gmail.com'),
(2, '2021002', 'Budi Santoso', 2, 'L', '2001-06-20', 'Jl. Sudirman No.2', '081234567891', 'budi@gmail.com'),
(3, '2021003', 'Citra Lestari', 3, 'P', '2003-08-05', 'Jl. Gatot Subroto No.3', '081234567892', 'citra@gmail.com'),
(4, '2021004', 'Dewi Kartika', 4, 'P', '2002-11-10', 'Jl. Ahmad Yani No.4', '081234567893', 'dewi@gmail.com'),
(6, 'D1124523', 'reza', 7, 'lakilaki', '2024-11-05', 'cimahi', '01918187117', 'rahdaian@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `level`) VALUES
(4, 'admin', 'admin', 'admin'),
(5, 'pimpinan', 'pimpinan', 'pimpinan'),
(11, 'pimpinan', 'c20ad4d76fe97759aa27a0c99bff6710', 'pimpinan'),
(13, 'pimpinan1', 'c4ca4238a0b923820dcc509a6f75849b', 'pimpinan'),
(16, 'reza1', 'c4ca4238a0b923820dcc509a6f75849b', 'admin'),
(17, 'renadli', 'c4ca4238a0b923820dcc509a6f75849b', 'admin'),
(18, 'pp12', 'c4ca4238a0b923820dcc509a6f75849b', 'admin');

-- --------------------------------------------------------

--
-- Structure for view `tb_datamahasiswa`
--
DROP TABLE IF EXISTS `tb_datamahasiswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `tb_datamahasiswa`  AS SELECT `tb_jurusan`.`nama_jurusan` AS `program_studi`, `tb_jurusan`.`jenjang` AS `jenjang`, count(`tb_mahasiswa`.`id_mahasiswa`) AS `jumlah_mahasiswa` FROM (`tb_jurusan` left join `tb_mahasiswa` on(`tb_jurusan`.`id_jurusan` = `tb_mahasiswa`.`id_jurusan`)) GROUP BY `tb_jurusan`.`id_jurusan` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD CONSTRAINT `tb_mahasiswa_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `tb_jurusan` (`id_jurusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
