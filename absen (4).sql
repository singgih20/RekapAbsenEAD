-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2019 at 01:08 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'singgih', '1234'),
(2, 'aji', '1234'),
(3, 'admin', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `assistant`
--

CREATE TABLE `assistant` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` char(3) NOT NULL,
  `jam` time NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assistant`
--

INSERT INTO `assistant` (`id`, `nama`, `kode`, `jam`, `tanggal`) VALUES
(14, 'Lina', 'LNA', '14:00:00', '2019-10-20'),
(15, 'Muhammad Arrasyid Rakhmadzan', 'ALB', '23:12:00', '2019-12-20'),
(16, 'Muhammad Rafly', 'MRF', '23:10:00', '2019-10-20'),
(17, 'Muhammad Zaqlul', 'ZAQ', '11:20:00', '2019-10-20'),
(18, 'Habib Arrachman', 'HBB', '14:02:00', '2019-10-20'),
(19, 'Lala Arif', 'LAA', '14:30:00', '2019-10-20'),
(20, 'Muhammad Zaki', 'ZAK', '11:20:00', '2019-10-20'),
(21, 'Dimas Aggung', 'DAG', '14:02:00', '2019-10-20'),
(22, 'Nur Azizah Harun', 'CHA', '14:02:00', '2019-10-20'),
(23, 'Ahmad Sambang Setya Tama', 'SAM', '14:00:00', '2019-10-20'),
(24, 'Noufal Assidiq', 'NFL', '14:00:00', '2019-10-20'),
(25, 'Bambang Utomo', 'BBG', '14:01:00', '2019-10-20'),
(26, 'Ahmad Kurniawan', 'AKR', '14:00:00', '2019-10-20'),
(27, 'Widya Febriyani', 'WDY', '14:00:00', '2019-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` char(3) NOT NULL,
  `jam` time(6) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `nama`, `kode`, `jam`, `tanggal`, `gambar`) VALUES
(22, 'Muhammad Arrasyid ', 'RSD', '01:58:57.000000', ' 05/04/19 ', '5ca6fcb8add5f.jpg'),
(23, 'Muhammad Arrasyid ', 'RSD', '04:44:25.000000', ' 05/04/19 ', '5ca723936abe9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `kode`) VALUES
(16, 'rasyid', '$2y$10$fTWRX6nDf2MEQM7YT.Ejd.VtBhQS1fEZmrjf7j/ofkNNjms/e3UW6', 'Muhammad Arrasyid ', 'RSD'),
(17, 'suryono', '$2y$10$g6j9tj1RlYz4TM2.QcWt6.3JVgMeGmKQTD5rHBaKipFhLwA5m61DS', 'Suryono Cahyadi', ''),
(18, 'joko', '$2y$10$FNe/wy.wxdAflctw5WCOEe13n14.ZNKafOp3z8ONX46HyCGbfbnGu', 'Joko Siman', ''),
(19, 'singgih', '$2y$10$UVgs.qK1r91YXJInjNqJuOdb7XyZiz7oA0y96B3TaMU.RzZiVSXoG', 'Singgih Aji Sasongko', ''),
(20, 'jibon', '$2y$10$knAnWj3pWBpPniP.jpe1p.fpCjvJJelwxCpK96eZ6lw3uXo8feoiG', 'Singgih Aji S', 'SAS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assistant`
--
ALTER TABLE `assistant`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `assistant`
--
ALTER TABLE `assistant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
