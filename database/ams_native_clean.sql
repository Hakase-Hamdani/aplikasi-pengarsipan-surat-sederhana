-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 29, 2025 at 09:26 AM
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
-- Database: `ams_native`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) DEFAULT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_disposisi`
--

INSERT INTO `tbl_disposisi` (`id_disposisi`, `tujuan`, `isi_disposisi`, `sifat`, `batas_waktu`, `catatan`, `id_surat`, `id_user`) VALUES
(1, 'Finance Department', 'Approve the budget proposal', 'Urgent', '2025-01-10', 'Reviewed by manager', 1, 1),
(2, 'HR Department', 'Update employee records', 'Normal', '2025-01-20', 'Follow up needed', 2, 2),
(3, 'IT Department', 'Fix server issues', 'Critical', '2025-01-15', 'Escalated to team lead', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_divisi`
--

CREATE TABLE `tbl_divisi` (
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_divisi`
--

INSERT INTO `tbl_divisi` (`kode`, `nama`, `uraian`, `id_user`) VALUES
('CLS002', 'Employee Records', 'Classification for HR-related files', NULL),
('CLS003', 'Technical Issues', 'Classification for IT-related issues', NULL),
('DivK', 'Divisi Keuangan', '-', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepala` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepala`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(3, 'Transport Authority', 'Metro Rail Services', 'Operational', '789 Downtown Road', 'Ms. Davis', '654321987', 'www.metrail.com', 'support@metrail.com', 'logo.png', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`kode`, `nama`, `uraian`, `id_user`) VALUES
('CL004', 'UN-USED', 'UN-USED', 2),
('CLS0012', 'Budget Proposals', 'Classification for financial documents', 2),
('CLS002', 'Employee Records', 'Classification for HR-related files', NULL),
('CLS003', 'Technical Issues', 'Classification for IT-related issues', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `id_user` tinyint(2) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `id_user`, `surat_masuk`, `surat_keluar`, `referensi`) VALUES
(1, 1, 5, 5, 20),
(2, 2, 10, 4, 7),
(3, 3, 15, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `kode` varchar(30) DEFAULT NULL,
  `divisi` varchar(30) DEFAULT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `kode`, `divisi`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`, `id_user`) VALUES
(1, 'CLS0012', 'DivK', 101, 'Finance Department', 'OUT2025-001', 'Approval for Q1 budget', '2025-01-01', '2025-01-02', 'budget.pdf', 'Approved', 1),
(2, 'CLS002', '', 102, 'HR Department', 'OUT2025-002', 'Employee verification report', '2025-01-03', '2025-01-04', 'verification.docx', 'Pending review', 2),
(3, 'CLS003', '', 103, 'IT Department', 'OUT2025-003', 'Server maintenance report', '2025-01-05', '2025-01-06', 'server_report.xlsx', 'Completed', 3),
(5, 'CLS003', 'CLS002', 104, 'as', '123', 'as', '2025-01-03', '2025-01-08', '1121-Screenshot_2024-12-21_14-30-49.png', '123', 1),
(6, 'CLS002', 'CLS002', 105, 'as', 'as', 'as', '2025-01-09', '2025-01-09', '', 'as', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) DEFAULT NULL,
  `divisi` varchar(30) DEFAULT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_surat_masuk`
--

INSERT INTO `tbl_surat_masuk` (`id_surat`, `no_agenda`, `no_surat`, `asal_surat`, `isi`, `kode`, `divisi`, `indeks`, `tgl_surat`, `tgl_diterima`, `file`, `keterangan`, `id_user`) VALUES
(1, 201, 'IN2025-001', 'Vendor A', 'Proposal for software license', 'CLS001', 'DivK', 'PRO-01', '2025-01-01', '2025-01-02', 'proposal.pdf', 'Under review', 1),
(2, 202, 'IN2025-002', 'Employee B', 'Request for leave', 'CLS002', '', 'EMP-02', '2025-01-03', '2025-01-04', 'leave_request.docx', 'Approved', 4),
(3, 203, 'IN2025-003', 'Client XAZ', 'Report on server downtime', 'CLS003', '', 'REP-03', '2025-01-05', '2025-01-06', '4874-2025-01-1121.51.02347357144613034705.jpg', 'Resolved', 1),
(4, 204, 'user2', 'user2', 'user2', 'CLS0012', NULL, 'user2', '2025-01-31', '2025-01-13', '', 'user2', 4),
(5, 205, '12/12/123', 'Test Disposisi', 'Tes User Disposisi', 'CL004', NULL, 'AX112', '2025-01-10', '2025-01-28', '', 'xxx', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'user_one', 'a3f05c8283e5350106829f855c93c07d', 'user', '123456', 1),
(2, 'administrator', 'a3f05c8283e5350106829f855c93c07d', 'ADMINISTRATOR', '789012', 2),
(3, 'disposisi', 'a3f05c8283e5350106829f855c93c07d', 'IT Support', '345678', 3),
(4, 'user2', 'a3f05c8283e5350106829f855c93c07d', 'user 2', '123456', 1),
(5, 'disposisi2', 'a3f05c8283e5350106829f855c93c07d', 'disposisi2', '12333', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`),
  ADD KEY `tbl_disposisi_id_surat_IDX` (`id_surat`) USING BTREE,
  ADD KEY `tbl_disposisi_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `tbl_klasifikasi_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `tbl_klasifikasi_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`),
  ADD KEY `tbl_sett_id_user_IDX` (`id_user`) USING BTREE;

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `tbl_surat_keluar_kode_IDX` (`kode`) USING BTREE,
  ADD KEY `tbl_surat_keluar_id_user_IDX` (`id_user`) USING BTREE,
  ADD KEY `tbl_surat_keluar_divisi_IDX` (`divisi`) USING BTREE;

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `tbl_surat_masuk_id_user_IDX` (`id_user`) USING BTREE,
  ADD KEY `tbl_surat_masuk_divisi_IDX` (`divisi`) USING BTREE;

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD CONSTRAINT `tbl_disposisi_tbl_surat_masuk_FK` FOREIGN KEY (`id_surat`) REFERENCES `tbl_surat_masuk` (`id_surat`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_disposisi_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_divisi`
--
ALTER TABLE `tbl_divisi`
  ADD CONSTRAINT `tbl_divisi_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD CONSTRAINT `tbl_klasifikasi_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD CONSTRAINT `tbl_sett_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

--
-- Constraints for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_2` FOREIGN KEY (`kode`) REFERENCES `tbl_klasifikasi` (`kode`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_3` FOREIGN KEY (`divisi`) REFERENCES `tbl_divisi` (`kode`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD CONSTRAINT `tbl_surat_masuk_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_surat_masuk_ibfk_2` FOREIGN KEY (`divisi`) REFERENCES `tbl_divisi` (`kode`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
