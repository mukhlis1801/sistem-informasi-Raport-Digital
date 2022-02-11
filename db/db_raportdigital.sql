-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 05:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_raportdigital`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dataorangtua`
--

CREATE TABLE `tb_dataorangtua` (
  `nama_ayah` varchar(50) NOT NULL,
  `nik_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(25) NOT NULL,
  `nik_ibu` varchar(25) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `id` int(5) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `agama` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no.telpon` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dataorangtua`
--

INSERT INTO `tb_dataorangtua` (`nama_ayah`, `nik_ayah`, `nama_ibu`, `nik_ibu`, `pekerjaan`, `keterangan`, `id`, `jk`, `agama`, `alamat`, `no.telpon`) VALUES
('jomtu', '127401333010239', 'sitoya', '127401345551234', 'ibu rumah tangga', 'Menikah', 7, 'perempuan', 'islam', 'Singguan', 812721316),
('lacto', '1274019237147', 'lili', '1274019238123', 'kelaut', 'Menikah', 8, 'perempuan', 'islam', 'tipan', 71237612),
('sitohang', '1276318723871', 'lulap', '12738139812748', 'Supir', 'Menikah', 9, 'perempuan', 'islam', 'Batu 8', 812366166);

-- --------------------------------------------------------

--
-- Table structure for table `tb_datasiswa`
--

CREATE TABLE `tb_datasiswa` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nis` int(15) NOT NULL,
  `nisn` int(15) NOT NULL,
  `T.tgl-lahir` varchar(50) NOT NULL,
  `jk` enum('laki-laki','perempuan') NOT NULL,
  `anakke` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomortelp` varchar(50) NOT NULL,
  `asalmadrasah` varchar(25) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_datasiswa`
--

INSERT INTO `tb_datasiswa` (`id`, `nama`, `nis`, `nisn`, `T.tgl-lahir`, `jk`, `anakke`, `alamat`, `nomortelp`, `asalmadrasah`, `keterangan`, `agama`) VALUES
(11, 'sinta', 10011, 1110012345, 'Tanjungbalai, 18 januari 1877', 'laki-laki', '2', 'Arteri', '08231222889012', 'MIS JAMIYATUL INSAN', 'Aktif', 'islam'),
(16, 'lucky', 10012, 1110012234, 'Tanjungbalai, 18 januari 2012', 'laki-laki', '1', 'Sei Apung', '0822177736199', 'MIS AL FUQRON', 'Aktif', 'islam');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'devk@gmail.com', 'Developer Kampoeng', 1, 'Staff Kepaniteraan Hukum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dataorangtua`
--
ALTER TABLE `tb_dataorangtua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_datasiswa`
--
ALTER TABLE `tb_datasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_dataorangtua`
--
ALTER TABLE `tb_dataorangtua`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_datasiswa`
--
ALTER TABLE `tb_datasiswa`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
