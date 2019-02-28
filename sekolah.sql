-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2018 at 11:08 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `indo` int(11) DEFAULT NULL,
  `bing` int(11) DEFAULT NULL,
  `mtk` int(11) DEFAULT NULL,
  `ipa` int(11) DEFAULT NULL,
  `id_siswa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`indo`, `bing`, `mtk`, `ipa`, `id_siswa`) VALUES
(90, 90, 95, 95, '1004'),
(70, 70, 70, 70, '1006'),
(75, 70, 70, 80, '1007');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) DEFAULT NULL,
  `umur_siswa` int(11) DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `umur_siswa`, `asal_sekolah`, `gender`) VALUES
('1004', 'Adlano', 15, 'SMPN 5 Bandung', 'L'),
('1006', 'Joni', 17, 'SMP Barbar', 'L'),
('1007', 'Akbariyah', 14, 'SMPN 50 Bandung', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `sma`
--

CREATE TABLE `sma` (
  `id_sekolah` varchar(255) NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `walikelas_id_guru` varchar(255) NOT NULL,
  `siswa_id_siswa` varchar(255) NOT NULL,
  `hasilseleksi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sma`
--

INSERT INTO `sma` (`id_sekolah`, `nama_sekolah`, `walikelas_id_guru`, `siswa_id_siswa`, `hasilseleksi`) VALUES
('SK01', 'SMA Akbariyah', 'WL1', '1001', 'Lulus'),
('SK02', 'SMA Akbariyah', 'WL2', '1002', 'Lulus'),
('SK03', 'SMA Akbariyah', 'WL3', '1003', 'Lulus');

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `id_guru` varchar(255) NOT NULL,
  `nama_wali` varchar(255) DEFAULT NULL,
  `umur_wali` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `kelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`id_guru`, `nama_wali`, `umur_wali`, `gender`, `kelas`) VALUES
('WL1', 'Anton SP.d', 25, 'L', 1),
('WL2', 'Yuli SP.d', 30, 'P', 2),
('WL3', 'Yusuf SP.d', 35, 'L', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `nilai_siswa_fk` (`id_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `sma`
--
ALTER TABLE `sma`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`id_guru`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_siswa_fk` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
