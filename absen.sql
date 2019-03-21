-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2019 at 06:29 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absen`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` char(10) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `kelas`, `tanggal`, `keterangan`) VALUES
(1, 'Singgih Aji Sasongko', '1202172192', 'SI4105', '10/20/2019', '  Izin'),
(2, 'Muhammad Zaqlul', '1202173142', 'SI4101', '10/20/2019', 'Sakit'),
(3, 'Erado Fata Sanjaya', '1202173424', 'SI4102', '10/20/2019', 'Hadir'),
(5, 'Ahmad Sambang Setya Tama', '1202174243', 'SI4105', '20/10/2019', 'Hadir'),
(6, 'Radita ', '1202173333', 'SI4103', '20/10/2019', 'Hadir'),
(7, 'Muhammad Arrasyidi', '1202172321', 'SI4105', '20/10/2019', 'Hadir'),
(8, 'Muhammad Zaki S', '1202173246', 'SI4105', '20/10/2019', 'Hadir'),
(9, 'Izha Mahendra', '1202174424', 'SI4105', '20/10/2019', 'Hadir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
