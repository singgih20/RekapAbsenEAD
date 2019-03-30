-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 04:02 AM
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
-- Table structure for table `assistant`
--

CREATE TABLE `assistant` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` char(3) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assistant`
--

INSERT INTO `assistant` (`id`, `nama`, `kode`, `shift`, `jam`, `tanggal`) VALUES
(3, 'Zaqlul', 'ZAQ', 'shift1', '15:20:30', '20/10/2019'),
(4, 'Nur Azizah ', 'CHA', 'shift1', '15:20:30', '20/10/2019'),
(5, 'Jeremiah', 'JMY', 'shift1', '15:30:38', '20/10/2019');

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
(9, 'Izha Mahendra', '1202174424', 'SI4105', '20/10/2019', 'Hadir'),
(10, 'Zaqlul', 'ZAQ', 'shift1', '15:30:38', '2019:Mar:2');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa1`
--

CREATE TABLE `mahasiswa1` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` char(3) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `jam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` char(3) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `nama`, `kode`, `shift`, `jam`, `tanggal`, `gambar`) VALUES
(1, 'Zaqlul', 'ZAQ', 'shift1', '15:20:30', '20/10/2019', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'singgih', '$2y$10$6apOBX4vTuBC7InJ.HNZgu.uoMIHez4vOGSn11gdYIMmdjSpAod/6'),
(2, 'zaqlul', '$2y$10$JRxA4qBuRV9kNY9aV9FvlejxbZjyb6KMZXNmT5TlcZcvSvWDmIEYC'),
(7, 'icha', '$2y$10$uX/8xZm9kzT96M3enQWIHuGuACjp5o5nE3xt0wJ2W6CYh9uzgG/7.'),
(8, 'bambang', '$2y$10$ObqQc6p.nslkCuDCqFBqOO9kyZOfsHB1OEBmju0h6dvdruJWmxd1e'),
(9, 'sambang', '$2y$10$q/YvqEgWrOTdWSdI31WElewYoiTKMMC2lH5Y9M5wmAzuCIiUFv80q'),
(10, 'samsa', '$2y$10$CKAL9CJxbBHKA5ix9VhEvOfv8a3FdO1EVGldpzTr7Cd1wlIErA7fm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistant`
--
ALTER TABLE `assistant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa1`
--
ALTER TABLE `mahasiswa1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assistant`
--
ALTER TABLE `assistant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mahasiswa1`
--
ALTER TABLE `mahasiswa1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
