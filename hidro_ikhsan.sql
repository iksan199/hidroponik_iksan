-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 01, 2020 at 03:25 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hidro_ikhsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `bibit`
--

CREATE TABLE `bibit` (
  `id_bibit` int(11) NOT NULL,
  `plot_id` int(11) NOT NULL,
  `tanaman_id` int(11) NOT NULL,
  `tanggal_mulai_tanam` date NOT NULL,
  `tanggal_selesai_tanam` date NOT NULL,
  `status_tanaman` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bibit`
--

INSERT INTO `bibit` (`id_bibit`, `plot_id`, `tanaman_id`, `tanggal_mulai_tanam`, `tanggal_selesai_tanam`, `status_tanaman`) VALUES
(1, 1, 1, '2020-09-25', '2020-10-01', 'Hidup'),
(2, 2, 1, '2020-09-25', '0000-00-00', 'Hidup'),
(3, 3, 1, '2020-09-25', '0000-00-00', 'Hidup'),
(4, 5, 1, '2020-09-25', '0000-00-00', 'Hidup'),
(5, 6, 1, '2020-09-25', '0000-00-00', 'Mati'),
(9, 7, 3, '2020-09-26', '0000-00-00', 'Layu'),
(10, 8, 1, '2020-09-30', '0000-00-00', 'Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `monitoring`
--

CREATE TABLE `monitoring` (
  `id_monitoring` int(11) NOT NULL,
  `bibit_id` int(11) NOT NULL,
  `tanggal_monitoring` date NOT NULL,
  `tinggi_batang` varchar(255) NOT NULL,
  `diameter_batang` varchar(255) NOT NULL,
  `jumlah_daun` varchar(255) NOT NULL,
  `jumlah_batang` varchar(255) NOT NULL,
  `warna_batang` varchar(255) NOT NULL,
  `hasil_cek` varchar(255) NOT NULL,
  `penanganan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monitoring`
--

INSERT INTO `monitoring` (`id_monitoring`, `bibit_id`, `tanggal_monitoring`, `tinggi_batang`, `diameter_batang`, `jumlah_daun`, `jumlah_batang`, `warna_batang`, `hasil_cek`, `penanganan`) VALUES
(1, 1, '2020-09-25', '1', '1', '1', '1', 'Hijau', 'Baik', 'Tidak'),
(2, 1, '2020-09-26', '2', '2', '2', '2', 'Hijau', 'Baik', 'Tidak'),
(3, 9, '2020-09-26', '3', '3', '3', '3', 'Hijau', 'Layu', 'Pemberian Pupuk'),
(4, 1, '2020-09-27', '4', '4', '4', '4', 'Hijau', 'Baik', 'Tidak');

-- --------------------------------------------------------

--
-- Table structure for table `pipa`
--

CREATE TABLE `pipa` (
  `id_pipa` int(11) NOT NULL,
  `pipa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pipa`
--

INSERT INTO `pipa` (`id_pipa`, `pipa`) VALUES
(1, '1'),
(2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `plot_pipa`
--

CREATE TABLE `plot_pipa` (
  `id_plot` int(11) NOT NULL,
  `pipa_id` int(11) NOT NULL,
  `plot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plot_pipa`
--

INSERT INTO `plot_pipa` (`id_plot`, `pipa_id`, `plot`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 6),
(8, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tanaman`
--

CREATE TABLE `tanaman` (
  `id_tanaman` int(11) NOT NULL,
  `tanaman` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanaman`
--

INSERT INTO `tanaman` (`id_tanaman`, `tanaman`) VALUES
(1, 'Tomat'),
(2, 'Bayam'),
(3, 'Kangkung');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'admin', 'admin', 'admin'),
(2, 'User', 'user1', 'user1', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bibit`
--
ALTER TABLE `bibit`
  ADD PRIMARY KEY (`id_bibit`),
  ADD KEY `plot_id` (`plot_id`),
  ADD KEY `tanaman_id` (`tanaman_id`);

--
-- Indexes for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD PRIMARY KEY (`id_monitoring`),
  ADD KEY `bibit_id` (`bibit_id`);

--
-- Indexes for table `pipa`
--
ALTER TABLE `pipa`
  ADD PRIMARY KEY (`id_pipa`);

--
-- Indexes for table `plot_pipa`
--
ALTER TABLE `plot_pipa`
  ADD PRIMARY KEY (`id_plot`),
  ADD KEY `pipa_id` (`pipa_id`);

--
-- Indexes for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`id_tanaman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bibit`
--
ALTER TABLE `bibit`
  MODIFY `id_bibit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `monitoring`
--
ALTER TABLE `monitoring`
  MODIFY `id_monitoring` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pipa`
--
ALTER TABLE `pipa`
  MODIFY `id_pipa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plot_pipa`
--
ALTER TABLE `plot_pipa`
  MODIFY `id_plot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `id_tanaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bibit`
--
ALTER TABLE `bibit`
  ADD CONSTRAINT `bibit_ibfk_1` FOREIGN KEY (`plot_id`) REFERENCES `plot_pipa` (`id_plot`),
  ADD CONSTRAINT `bibit_ibfk_2` FOREIGN KEY (`tanaman_id`) REFERENCES `tanaman` (`id_tanaman`);

--
-- Constraints for table `monitoring`
--
ALTER TABLE `monitoring`
  ADD CONSTRAINT `monitoring_ibfk_1` FOREIGN KEY (`bibit_id`) REFERENCES `bibit` (`id_bibit`);

--
-- Constraints for table `plot_pipa`
--
ALTER TABLE `plot_pipa`
  ADD CONSTRAINT `plot_pipa_ibfk_1` FOREIGN KEY (`pipa_id`) REFERENCES `pipa` (`id_pipa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
