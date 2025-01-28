-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2024 at 03:35 PM
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
  `dinas` varchar(50) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `no_telp` varchar(50) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `dinas`, `alamat`, `no_telp`, `email`, `website`, `logo`) VALUES
(2, 'Kantor Perpajakan', 'Jl. Pajak No. 2', '08315931212', 'admin@pajak.go.id', '-', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(10) NOT NULL,
  `kode` varchar(50) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `uraian` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`id_klasifikasi`, `kode`, `nama`, `uraian`) VALUES
(1, 'PM.00', 'Pengawasan Pemilu', ''),
(2, 'PM.00.00', 'Teknis Pengawasan Pemilu Tingkat Pusat', ''),
(3, 'PM.00.01', 'Teknis Pengawasan Pemilu Tingkat Provinsi', ''),
(4, 'PM.00.02', 'Teknis Pengawasan Pemilu Tingkat Kabupaten/Kota', ''),
(5, 'PM.01', 'Hasil Pengawasan Pemilu', ''),
(6, 'PM.01.00', 'Hasil Pengawasan Pemilu Tingkat Pusat', ''),
(7, 'PM.01.01', 'Hasil Pengawasan Pemilu Tingkat Provinsi', ''),
(8, 'PM.01.02', 'Hasil Pengawasan Pemilu Tingkat Kabupaten/Kota', ''),
(9, 'PM.02', 'Rekomendasi Hasil Pengawasan Pemilu', ''),
(10, 'PM.02.00', 'Rekomendasi Hasil Pengawasan Pemilu Tingkat Pusat', ''),
(11, 'PM.02.01', 'Rekomendasi Hasil Pengawasan Pemilu Tingkat Provinsi', ''),
(12, 'PM.02.02', 'Rekomendasi Hasil Pengawasan Pemilu Tingkat Kabupaten/Daerah', ''),
(13, 'PM.03', 'Sosialisasi Pengawasan Pemilu', ''),
(14, 'PM.03.00', 'Sosialisasi Pengawasan Pemilu Tingkat Pusat', ''),
(15, 'PM.03.01', 'Sosialisasi Pengawasan Pemilu Tingkat Provinsi', ''),
(16, 'PM.03.02', 'Sosialisasi Pengawasan Pemilu Tingkat Kabupaten/Daerah', ''),
(17, 'PM.04', 'Kerjasama Pengawasan Pemilu', ''),
(18, 'PM.05', 'Partisipasi Masyarakat', ''),
(19, 'PM.06', 'Analisis Teknis Pengawasan Pemilu dan Ptensi Pelanggaran', ''),
(20, 'PP.00', 'Penanganan Temuan Pelanggaran', ''),
(21, 'PP.00.00', 'Penanganan Temuan Pelanggaran Tingkat Pusat', ''),
(22, 'PP.00.01', 'Penanganan Temuan Pelanggaran Tingkat Provinsi', ''),
(23, 'PP.00.02', 'Penanganan Temuan Pelanggaran Tingkat Kabupaten/Kota', ''),
(24, 'PP.01', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu', ''),
(25, 'PP.01.00', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu Tingkat Pusat', ''),
(26, 'PP.01.01', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu Tingkat Provinsi', ''),
(27, 'PP.01.02', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu Tingkat Kabupaten/Kota', ''),
(28, 'PP.02', 'Laporan Pelanggaran Pemil Yang Tidak Diregistrasi', ''),
(29, 'PS.00', 'Penyelesaian Sengketa Pemilu', ''),
(30, 'PS.00.00', 'Penyelesaian Sengketa Pemilu Tingkat Pusat', ''),
(31, 'PS.00.01', 'Penyelesaian Sengketa Pemilu Tingkat Provinsi', ''),
(32, 'PS.00.02', 'Penyelesaian Sengketa Pemilu Tingkat Kabupaten/Kota', ''),
(33, 'PS.00.03', 'Penyelesaian Sengketa Pemilu Tingkat Kecamatan', ''),
(34, 'PS.01', 'Penyelesaian Sengketa Pemilihan', ''),
(35, 'PS.01.00', 'Penyelesaian Sengketa Pemilihan Tingkat Pusat', ''),
(36, 'PS.01.01', 'Penyelesaian Sengketa Pemilihan Tingkat Provinsi', ''),
(37, 'PS.01.02', 'Penyelesaian Sengketa Pemilihan Tingkat Kabupaten/Kota', ''),
(38, 'PS.01.03', 'Penyelesaian Sengketa Pemilihan Tingkat Kecamatan', ''),
(39, 'PS.02', 'Sosialisasi Penyelesaian Sengketa', ''),
(40, 'PS.03', 'Pendampingan, Monitoring, dan Evaluasi', ''),
(41, 'PR.00', 'Pokok-Pokok Kebijakan dan Strategi Pembangunan', ''),
(42, 'PR.00.00', 'Rencana Pembangunan Jangka Panjang (RPJP)', ''),
(43, 'PR.00.01', 'Rencana Pembangunan Jangka Menengah (RPJM)', ''),
(44, 'PR.00.02', 'Rencana Strategis (Renstra)', ''),
(45, 'PR.01', 'Rencana Kerja Tahunan', ''),
(46, 'PR.01.00', 'Usulan Rencana Kegiatan', ''),
(47, 'PR.01.01', 'Rencana Kerja Tahunan', ''),
(48, 'PR.01.02', 'Rencana Kerja Tahunan Badan Pengawas Pemilihan Umum', ''),
(49, 'PR.02', 'Penetapan Kinerja', ''),
(50, 'PR.03', 'Penyusunan Kinerja', ''),
(51, 'PR.03.00', 'Penyususnan Rencana Anggaran Bawaslu', ''),
(52, 'PR.03.01', 'Revisi Dokumen Anggaran', ''),
(53, 'PR.04', 'Laporan', ''),
(54, 'PR.04.00', 'Laporan Berkala', ''),
(55, 'PR.04.01', 'Laporan Khusus', ''),
(56, 'PR.04.02', 'Laporan Perkembangan/Progress Report', ''),
(57, 'PR.04.03', 'Laporan Aluntabilitas Kinerja Instansi Pemerinah (LAKIP)', ''),
(58, 'PR.04.04', 'Evaluasi Program', ''),
(59, 'OT.00', 'Organisasi/Struktur Organisasi Bawaslu', ''),
(60, 'OT.01', 'Uraian Tugas', ''),
(61, 'OT.02', 'Analisis Jabatan dan Beban Kerja', ''),
(62, 'OT.03', 'Mekanisme Kerja', ''),
(63, 'OT.04', 'Ketatalaksanaan', ''),
(64, 'OT.05', 'Reformasi Birokrasi', ''),
(65, 'OT.06', 'Standar Kompetensi', ''),
(66, 'OT.06.00', 'Standar Kompetensi Jabatam Struktural', ''),
(67, 'OT.06.01', 'Standar Kompetensi Jabatam Fungsional', ''),
(68, 'OT.07', 'Evaluasi Kelembagaan', ''),
(69, 'KA.00', 'Administrasi Persuratan', ''),
(70, 'KA.01', 'Kearsipan', ''),
(71, 'KA.01.00', 'Pembinaan Kearsipan', ''),
(72, 'KA.01.01', 'Penyususnan Sistem Kearsipan', ''),
(73, 'KA.01.02', 'Pemeliharaan dan Penyimpanan Arsip', ''),
(74, 'KA.01.03', 'Penggunaan Arsip', ''),
(75, 'KA.01', '04.Penyusutan Arsip', ''),
(76, 'KA.02', 'Rapat/Rakor/Rakernis', ''),
(77, 'KU.00', 'Pelaksanaan Anggaran', ''),
(78, 'KU.00.00', 'DIPA/POK', ''),
(79, 'KU.00.01', 'Rencana Anggaran Belanja (RAB)', ''),
(80, 'KU.00.02', 'Penggajian', ''),
(81, 'KU.00.03', 'Pengeluaran Anggaran', ''),
(82, 'KU.01', 'Pengelolaan Perbendaharaan', ''),
(83, 'KU.01.00', 'Perbendaharaan', ''),
(84, 'KU.01.01', 'KP4 (Kartu Pengawasan Pembayaran Penghasilan Pegawai)', ''),
(85, 'KU.01.02', 'Kartu Pengawasan Kredit', ''),
(86, 'KU.01.03', 'Pajak', ''),
(87, 'KU.01.04', 'Penerimaan Non Pajak', ''),
(88, 'KU.01.05', 'Pengembalian Belanja', ''),
(89, 'KU.01.06', 'Berita Acara Pemeriksaan Kas', ''),
(90, 'KU.01.07', 'Tuntutan Ganti Rugi', ''),
(91, 'KU.01.08', 'Pinjaman/Bantuan Luar Negeri', ''),
(92, 'KU.01.09', 'Verifikasi Anggaran', ''),
(93, 'KU.01.10', 'Pembukuan Anggaran', ''),
(94, 'KU.02', 'Perhitungan Anggaran', ''),
(95, 'KU.03', 'Katataushaan Keuangan', ''),
(96, 'KU.03.00', 'Keterangan Penghasilan', ''),
(97, 'KU.03.01', 'SKPP(Surat Keterangan Pemberhentian Pembayaran)', ''),
(98, 'KU.03.02', 'Permohonan Pinjaman', ''),
(99, 'KU.03.03', 'Iuran Keanggotaan Organisasi', ''),
(100, 'PL.00', 'Analisa Kebutuhan', ''),
(101, 'PL.01', 'Tata Ruang', ''),
(102, 'PL.02', 'Daftar Perkenalan Mampu', ''),
(103, 'PL.03', 'Pengadaan', ''),
(104, 'PL.03.00', 'Alat Tulis Kantor', ''),
(105, 'PL.03.01', 'Perlengakapan Kantor', ''),
(106, 'PL.03.02', 'Tanah dan Bangunan', ''),
(107, 'PL.03.03', 'Kendaraan', ''),
(108, 'PL.03.04', 'Instalasi/Jaringan', ''),
(109, 'PL.03.05', 'Peralatan Kearsipan', ''),
(110, 'PL.04', 'Pemanfaatan Barang', ''),
(111, 'PL.05', 'Penyimpanan dan Distribusi', ''),
(112, 'PL.06', 'Pemeliharaan', ''),
(113, 'PL.07', 'Inventarisasi', ''),
(114, 'PL.08', 'Penghapusan', ''),
(115, 'HK.00', 'Program Legislasi', ''),
(116, 'HK.01', 'Produk Hukum', ''),
(117, 'HK.01.00', 'Produk Hukum yang Bersifat Pengaturan', ''),
(118, 'HK.01.01', 'Produk Hukum yang Bersifat Penetapan', ''),
(119, 'HK.02', 'Perjanjian Kerjasama', ''),
(120, 'HK.02.00', 'Kerjasama Dalam Negeri', ''),
(121, 'HK.02.01', 'Kerjasama Luar Negeri', ''),
(122, 'HK.03', 'Advokasi Hukum', ''),
(123, 'HK.03.00', 'Advokasi Hukum Kasus Perdata', ''),
(124, 'HK.03.01', 'Advokasi Hukum Kasus Pidana', ''),
(125, 'HK.03.02', 'Advokasi Hukum Kasus Peradilan Tata Negara', ''),
(126, 'HK.03.03', 'Advokasi Hukum Perkara Perselisihan Hasil', ''),
(127, 'HK.03.04', 'Advokasi Hukum Perkara Kode Etik', ''),
(128, 'HK.03.05', 'Advokasi Hukum Perkara Uji Materiil', ''),
(129, 'HK.03.06', 'Advokasi Hukum dalam Pengaduan dan Konsultasi Hukum', ''),
(130, 'HK.03.07', 'Advokasi Hukum dalam Alternatif Penyelesaian Sengketa', ''),
(131, 'HK.04', 'Telaah Hukum', ''),
(132, 'HK.04.00', 'Telaah Hukum Internal', ''),
(133, 'HK.04.01', 'Telaah Hukum Eksternal', ''),
(134, 'HK.05', 'Sosialisasi Hukum', ''),
(135, 'HK.05.00', 'Sosialisasi Hukum Tingkat Pusat', ''),
(136, 'HK.05.01', 'Sosialisasi Hukum Tingkat Provinsi', ''),
(137, 'HK.05.02', 'Sosialisasi Hukum Tingkat Kabupaten/Kota', ''),
(138, 'HK.06', 'Dokumentasi Hukum', ''),
(139, 'HK.07', 'Hak Atas Kekayaan Intelektual', ''),
(140, 'HK.08', 'Kasus Hukum', ''),
(141, 'HM.00', 'Penerangan dan Publikasi', ''),
(142, 'HM.00.00', 'Penerangan dan Publikasi Tingkat Pusat', ''),
(143, 'HM.00.01', 'Penerangan dan Publikasi Tingkat Provinsi', ''),
(144, 'HM.00.02', 'Penerangan dan Publikasi Tingkat Kabupaten/Kota', ''),
(145, 'HM.01', 'Dengar Pendapat/Hearing DPR', ''),
(146, 'HM.02', 'Hubungan Antar Lembaga', ''),
(147, 'HM.02.00', 'Lembaga Negara', ''),
(148, 'HM.02.01', 'Organisasi Pemantau Pemilu Nasional dan Internasional Pengawasan Penyelenggaraan Pemilu Nasional dan Internasional', ''),
(149, 'HM.02.02', 'Perusahaan', ''),
(150, 'HM.02.03', 'Organisasi Kemasyarakatan', ''),
(151, 'HM.02.04', 'Perguruan Tinggi/Sekolah', ''),
(152, 'HM.02.05', 'Bakohumas', ''),
(153, 'HM.03', 'Keprotokolan', ''),
(154, 'HM.03.00', 'Upacara/Acara Kedinasan', ''),
(155, 'HM.03.01', 'Kunjungan', ''),
(156, 'HM.03.02', 'Agenda Pimpinan', ''),
(157, 'HM.04', 'Dokumentasi dan Penerbitan', ''),
(158, 'HM.05', 'Pengharagaan/Tanda kenang-Kenangan', ''),
(159, 'HM.06', 'Ucapan', ''),
(160, 'HM.07', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan', ''),
(161, 'HM.07.00', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan tingkat Pusat', ''),
(162, 'HM.07.01', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan tingkat Provinsi', ''),
(163, 'HM.07.02', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan tingkat Kabuoaten/Kota', ''),
(164, 'KP.00', 'Formasi', ''),
(165, 'KP.01', 'Pengadaan', ''),
(166, 'KP.01.00', 'Penerimaan', ''),
(167, 'KP.01.01', 'Pengangkatan CPNS dan PNS', ''),
(168, 'KP.01.02', 'Prajabatan', ''),
(169, 'KP.01.03', 'Penempatan', ''),
(170, 'KP.02', 'Ujian Kenaikan Pangkat/Jabatan', ''),
(171, 'KP.02.00', 'Ujian Penyesuaian Ijazah', ''),
(172, 'KP.02.01', 'Ujian Dinas', ''),
(173, 'KP.02.02', 'Ujian Kompetensi', ''),
(174, 'KP.03', 'Mutasi', ''),
(175, 'KP.03.00', 'Kenaikan Pangkat/Golongan', ''),
(176, 'KP.03.01', 'Kenaikan Gaji Berkala', ''),
(177, 'KP.03.02', 'Penyesuaian Masa Kerja', ''),
(178, 'KP.03.03', 'Penyesuaian Tunjangan Keluarga', ''),
(179, 'KP.03.04', 'Promosi', ''),
(180, 'KP.03.05', 'Rotasi Kerja', ''),
(181, 'KP.03.06', 'Alih Tugas', ''),
(182, 'KP.04', 'Pengakatan dan Pemberhatian Jabatan', ''),
(183, 'KP.04.00', 'Pengangkatan Jabatan', ''),
(184, 'KP.04.01', 'Pemberhentian Jabatan', ''),
(185, 'KP.05', 'Pendelegasian Wewenang', ''),
(186, 'KP.05.00', 'Pelaksana Tugas (Plt)', ''),
(187, 'KP.05.01', 'Pelaksana Harian (Plh)', ''),
(188, 'KP.06', 'Pendidikan dan Pelatihan Pegawai', ''),
(189, 'KP.06.00', 'Program Diploma', ''),
(190, 'KP.06.01', 'Program Sarjana', ''),
(191, 'KP.06.02', 'Program Pasca Sarjana', ''),
(192, 'KP.06.03', 'Pendidikan dan Pelatihan Penjenjangan', ''),
(193, 'KP.06.04', 'Kursus/Diklat Fungsional', ''),
(194, 'KP.06.06', 'Kursus/Diklat Teknis', ''),
(195, 'KP.07', 'Administrasi Pegawai', ''),
(196, 'KP.07.00', 'Data/Keterangan Pegawai', ''),
(197, 'KP.07.01', 'Kartu Pegawai', ''),
(198, 'KP.07.02', 'Karis/Karsu', ''),
(199, 'KP.07.03', 'Kartu Taspen', ''),
(200, 'KP.07.04', 'Kartu Akses', ''),
(201, 'KP.07.05', 'Tanda Jasa', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `id_user`, `surat_masuk`, `surat_keluar`, `referensi`) VALUES
(1, 1, 10, 5, 5),
(2, 2, 10, 10, 5),
(3, 3, 10, 10, 10),
(4, 4, 5, 5, 10),
(5, 5, 5, 5, 10),
(6, 6, 5, 5, 10);

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
(1, 1, 1, 1001, 'PT. Teknologi Inovasi', 'SK-001/2024', 'Surat resmi ke PT. Teknologi Inovasi', '2', '2024-11-18', '2024-12-06 14:26:31', 'surat1.pdf', 'Urgent'),
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
(5, 'guest', 'e99a18c428cb38d5f260853678922e03', 3),
(6, 'guest2', 'null', 3);

--
-- Triggers `tbl_user`
--
DELIMITER $$
CREATE TRIGGER `after_user_insert` AFTER INSERT ON `tbl_user` FOR EACH ROW BEGIN
    INSERT INTO tbl_sett (id_user, surat_masuk, surat_keluar, referensi)
    VALUES (NEW.id_user, 5, 5, 10);
END
$$
DELIMITER ;

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
  ADD PRIMARY KEY (`id_sett`),
  ADD KEY `tbl_sett_tbl_user_FK` (`id_user`);

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
  MODIFY `id_klasifikasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  MODIFY `id_sett` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD CONSTRAINT `tbl_sett_tbl_user_FK` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`);

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
