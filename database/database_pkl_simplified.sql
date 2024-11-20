-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 20, 2024 at 06:42 AM
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
-- Database: `database_pkl_simplified`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` int(10) NOT NULL,
  `institusi` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `alamat`, `email`, `logo`) VALUES
(1, 'Universitas Teknologi', 'Admin Teknologi', 'Jl. Teknologi No. 1', 'admin@teknologi.ac.id', 'logo1.png'),
(2, 'Kantor Perpajakan', 'Admin Pajak', 'Jl. Pajak No. 2', 'admin@pajak.go.id', 'logo2.png'),
(3, 'Rumah Sakit Umum', 'Admin RSU', 'Jl. Kesehatan No. 3', 'admin@rsu.com', 'logo3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(10) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `uraian` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `uraian`) VALUES
(1, 'K001', 'Keuangan', 'Urusan administrasi keuangan'),
(2, 'P001', 'Pendidikan', 'Urusan pendidikan sekolah'),
(3, 'K002', 'Kesehatan', 'Urusan rumah sakit dan pelayanan kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 10, 10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staf`
--

CREATE TABLE `tbl_staf` (
  `id_staff` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `NIP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_staf`
--

INSERT INTO `tbl_staf` (`id_staff`, `id_user`, `nama`, `NIP`) VALUES
(1, 1, 'Muhammad Hamdani', '2110010302'),
(2, 2, 'Ahmad Fauzi', '2110010401'),
(3, NULL, 'Nisa Amelia', '2110010501'),
(4, 1, 'Rahmat Aditya', '2110010601');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `id_staf` int(10) DEFAULT NULL,
  `id_klasifikasi` int(10) DEFAULT NULL,
  `no_agenda` int(10) DEFAULT NULL,
  `tujuan` varchar(250) DEFAULT NULL,
  `no_surat` varchar(250) DEFAULT NULL,
  `isi` mediumtext DEFAULT NULL,
  `kode` varchar(30) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `tgl_catat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file` varchar(250) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `id_staf`, `id_klasifikasi`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `kode`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`) VALUES
(1, 1, 1, 1001, 'PT. Teknologi Inovasi', 'SK-001/2024', 'Surat resmi ke PT. Teknologi Inovasi', 'K001', '2024-11-18', '2024-11-18 00:00:00', 'surat1.pdf', 'Urgent'),
(2, 2, 2, 1002, 'Dinas Pendidikan Kota', 'SK-002/2024', 'Surat kerjasama pendidikan', 'P001', '2024-11-18', '2024-11-18 00:30:00', 'surat2.pdf', 'High Priority'),
(3, 3, 3, 1003, 'Kementerian Kesehatan', 'SK-003/2024', 'Surat laporan kesehatan', 'K002', '2024-11-18', '2024-11-18 01:00:00', 'surat3.pdf', 'Routine');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2),
(3, 'superadmin', '5f4dcc3b5aa765d61d8327deb882cf99', 1),
(4, 'operator', '7c6a180b36896a0a8c02787eeafb0e4c', 2),
(5, 'guest', 'e99a18c428cb38d5f260853678922e03', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_staf`
--
ALTER TABLE `tbl_staf`
  ADD PRIMARY KEY (`id_staff`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `id_klasifikasi` (`id_klasifikasi`),
  ADD KEY `id_staf` (`id_staf`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  MODIFY `id_instansi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_staf`
--
ALTER TABLE `tbl_staf`
  MODIFY `id_staff` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_staf`
--
ALTER TABLE `tbl_staf`
  ADD CONSTRAINT `tbl_staf_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

--
-- Constraints for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_1` FOREIGN KEY (`id_klasifikasi`) REFERENCES `tbl_klasifikasi` (`id_klasifikasi`),
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_2` FOREIGN KEY (`id_staf`) REFERENCES `tbl_staf` (`id_staff`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
