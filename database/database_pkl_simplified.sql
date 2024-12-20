-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 06, 2024 at 04:49 PM
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
  `kode` varchar(50) NOT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `uraian` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_klasifikasi`
--

INSERT INTO `tbl_klasifikasi` (`kode`, `nama`, `uraian`) VALUES
('HK.00', 'Program Legislasi', ''),
('HK.01', 'Produk Hukum', ''),
('HK.01.00', 'Produk Hukum yang Bersifat Pengaturan', ''),
('HK.01.01', 'Produk Hukum yang Bersifat Penetapan', ''),
('HK.02', 'Perjanjian Kerjasama', ''),
('HK.02.00', 'Kerjasama Dalam Negeri', ''),
('HK.02.01', 'Kerjasama Luar Negeri', ''),
('HK.03', 'Advokasi Hukum', ''),
('HK.03.00', 'Advokasi Hukum Kasus Perdata', ''),
('HK.03.01', 'Advokasi Hukum Kasus Pidana', ''),
('HK.03.02', 'Advokasi Hukum Kasus Peradilan Tata Negara', ''),
('HK.03.03', 'Advokasi Hukum Perkara Perselisihan Hasil', ''),
('HK.03.04', 'Advokasi Hukum Perkara Kode Etik', ''),
('HK.03.05', 'Advokasi Hukum Perkara Uji Materiil', ''),
('HK.03.06', 'Advokasi Hukum dalam Pengaduan dan Konsultasi Hukum', ''),
('HK.03.07', 'Advokasi Hukum dalam Alternatif Penyelesaian Sengketa', ''),
('HK.04', 'Telaah Hukum', ''),
('HK.04.00', 'Telaah Hukum Internal', ''),
('HK.04.01', 'Telaah Hukum Eksternal', ''),
('HK.05', 'Sosialisasi Hukum', ''),
('HK.05.00', 'Sosialisasi Hukum Tingkat Pusat', ''),
('HK.05.01', 'Sosialisasi Hukum Tingkat Provinsi', ''),
('HK.05.02', 'Sosialisasi Hukum Tingkat Kabupaten/Kota', ''),
('HK.06', 'Dokumentasi Hukum', ''),
('HK.07', 'Hak Atas Kekayaan Intelektual', ''),
('HK.08', 'Kasus Hukum', ''),
('HM.00', 'Penerangan dan Publikasi', ''),
('HM.00.00', 'Penerangan dan Publikasi Tingkat Pusat', ''),
('HM.00.01', 'Penerangan dan Publikasi Tingkat Provinsi', ''),
('HM.00.02', 'Penerangan dan Publikasi Tingkat Kabupaten/Kota', ''),
('HM.01', 'Dengar Pendapat/Hearing DPR', ''),
('HM.02', 'Hubungan Antar Lembaga', ''),
('HM.02.00', 'Lembaga Negara', ''),
('HM.02.01', 'Organisasi Pemantau Pemilu Nasional dan Internasional Pengawasan Penyelenggaraan Pemilu Nasional dan Internasional', ''),
('HM.02.02', 'Perusahaan', ''),
('HM.02.03', 'Organisasi Kemasyarakatan', ''),
('HM.02.04', 'Perguruan Tinggi/Sekolah', ''),
('HM.02.05', 'Bakohumas', ''),
('HM.03', 'Keprotokolan', ''),
('HM.03.00', 'Upacara/Acara Kedinasan', ''),
('HM.03.01', 'Kunjungan', ''),
('HM.03.02', 'Agenda Pimpinan', ''),
('HM.04', 'Dokumentasi dan Penerbitan', ''),
('HM.05', 'Pengharagaan/Tanda kenang-Kenangan', ''),
('HM.06', 'Ucapan', ''),
('HM.07', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan', ''),
('HM.07.00', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan tingkat Pusat', ''),
('HM.07.01', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan tingkat Provinsi', ''),
('HM.07.02', 'Sosialisasi Humas, Hubungan Antar Lembaga, Keprotokolan tingkat Kabuoaten/Kota', ''),
('KA.00', 'Administrasi Persuratan', ''),
('KA.01', 'Kearsipan', ''),
('KA.01.00', 'Pembinaan Kearsipan', ''),
('KA.01.01', 'Penyususnan Sistem Kearsipan', ''),
('KA.01.02', 'Pemeliharaan dan Penyimpanan Arsip', ''),
('KA.01.03', 'Penggunaan Arsip', ''),
('KA.01.04', 'Penyusutan Arsip', ''),
('KA.02', 'Rapat/Rakor/Rakernis', ''),
('KP.00', 'Formasi', ''),
('KP.01', 'Pengadaan', ''),
('KP.01.00', 'Penerimaan', ''),
('KP.01.01', 'Pengangkatan CPNS dan PNS', ''),
('KP.01.02', 'Prajabatan', ''),
('KP.01.03', 'Penempatan', ''),
('KP.02', 'Ujian Kenaikan Pangkat/Jabatan', ''),
('KP.02.00', 'Ujian Penyesuaian Ijazah', ''),
('KP.02.01', 'Ujian Dinas', ''),
('KP.02.02', 'Ujian Kompetensi', ''),
('KP.03', 'Mutasi', ''),
('KP.03.00', 'Kenaikan Pangkat/Golongan', ''),
('KP.03.01', 'Kenaikan Gaji Berkala', ''),
('KP.03.02', 'Penyesuaian Masa Kerja', ''),
('KP.03.03', 'Penyesuaian Tunjangan Keluarga', ''),
('KP.03.04', 'Promosi', ''),
('KP.03.05', 'Rotasi Kerja', ''),
('KP.03.06', 'Alih Tugas', ''),
('KP.04', 'Pengakatan dan Pemberhatian Jabatan', ''),
('KP.04.00', 'Pengangkatan Jabatan', ''),
('KP.04.01', 'Pemberhentian Jabatan', ''),
('KP.05', 'Pendelegasian Wewenang', ''),
('KP.05.00', 'Pelaksana Tugas (Plt)', ''),
('KP.05.01', 'Pelaksana Harian (Plh)', ''),
('KP.06', 'Pendidikan dan Pelatihan Pegawai', ''),
('KP.06.00', 'Program Diploma', ''),
('KP.06.01', 'Program Sarjana', ''),
('KP.06.02', 'Program Pasca Sarjana', ''),
('KP.06.03', 'Pendidikan dan Pelatihan Penjenjangan', ''),
('KP.06.04', 'Kursus/Diklat Fungsional', ''),
('KP.06.06', 'Kursus/Diklat Teknis', ''),
('KP.07', 'Administrasi Pegawai', ''),
('KP.07.00', 'Data/Keterangan Pegawai', ''),
('KP.07.01', 'Kartu Pegawai', ''),
('KP.07.02', 'Karis/Karsu', ''),
('KP.07.03', 'Kartu Taspen', ''),
('KP.07.04', 'Kartu Akses', ''),
('KP.07.05', 'Tanda Jasa', ''),
('KU.00', 'Pelaksanaan Anggaran', ''),
('KU.00.00', 'DIPA/POK', ''),
('KU.00.01', 'Rencana Anggaran Belanja (RAB)', ''),
('KU.00.02', 'Penggajian', ''),
('KU.00.03', 'Pengeluaran Anggaran', ''),
('KU.01', 'Pengelolaan Perbendaharaan', ''),
('KU.01.00', 'Perbendaharaan', ''),
('KU.01.01', 'KP4 (Kartu Pengawasan Pembayaran Penghasilan Pegawai)', ''),
('KU.01.02', 'Kartu Pengawasan Kredit', ''),
('KU.01.03', 'Pajak', ''),
('KU.01.04', 'Penerimaan Non Pajak', ''),
('KU.01.05', 'Pengembalian Belanja', ''),
('KU.01.06', 'Berita Acara Pemeriksaan Kas', ''),
('KU.01.07', 'Tuntutan Ganti Rugi', ''),
('KU.01.08', 'Pinjaman/Bantuan Luar Negeri', ''),
('KU.01.09', 'Verifikasi Anggaran', ''),
('KU.01.10', 'Pembukuan Anggaran', ''),
('KU.02', 'Perhitungan Anggaran', ''),
('KU.03', 'Katataushaan Keuangan', ''),
('KU.03.00', 'Keterangan Penghasilan', ''),
('KU.03.01', 'SKPP(Surat Keterangan Pemberhentian Pembayaran)', ''),
('KU.03.02', 'Permohonan Pinjaman', ''),
('KU.03.03', 'Iuran Keanggotaan Organisasi', ''),
('OT.00', 'Organisasi/Struktur Organisasi Bawaslu', ''),
('OT.01', 'Uraian Tugas', ''),
('OT.02', 'Analisis Jabatan dan Beban Kerja', ''),
('OT.03', 'Mekanisme Kerja', ''),
('OT.04', 'Ketatalaksanaan', ''),
('OT.05', 'Reformasi Birokrasi', ''),
('OT.06', 'Standar Kompetensi', ''),
('OT.06.00', 'Standar Kompetensi Jabatam Struktural', ''),
('OT.06.01', 'Standar Kompetensi Jabatam Fungsional', ''),
('OT.07', 'Evaluasi Kelembagaan', ''),
('PL.00', 'Analisa Kebutuhan', ''),
('PL.01', 'Tata Ruang', ''),
('PL.02', 'Daftar Perkenalan Mampu', ''),
('PL.03', 'Pengadaan', ''),
('PL.03.00', 'Alat Tulis Kantor', ''),
('PL.03.01', 'Perlengakapan Kantor', ''),
('PL.03.02', 'Tanah dan Bangunan', ''),
('PL.03.03', 'Kendaraan', ''),
('PL.03.04', 'Instalasi/Jaringan', ''),
('PL.03.05', 'Peralatan Kearsipan', ''),
('PL.04', 'Pemanfaatan Barang', ''),
('PL.05', 'Penyimpanan dan Distribusi', ''),
('PL.06', 'Pemeliharaan', ''),
('PL.07', 'Inventarisasi', ''),
('PL.08', 'Penghapusan', ''),
('PM.00', 'Pengawasan Pemilu', ''),
('PM.00.00', 'Teknis Pengawasan Pemilu Tingkat Pusat', ''),
('PM.00.01', 'Teknis Pengawasan Pemilu Tingkat Provinsi', ''),
('PM.00.02', 'Teknis Pengawasan Pemilu Tingkat Kabupaten/Kota', ''),
('PM.01', 'Hasil Pengawasan Pemilu', ''),
('PM.01.00', 'Hasil Pengawasan Pemilu Tingkat Pusat', ''),
('PM.01.01', 'Hasil Pengawasan Pemilu Tingkat Provinsi', ''),
('PM.01.02', 'Hasil Pengawasan Pemilu Tingkat Kabupaten/Kota', ''),
('PM.02', 'Rekomendasi Hasil Pengawasan Pemilu', ''),
('PM.02.00', 'Rekomendasi Hasil Pengawasan Pemilu Tingkat Pusat', ''),
('PM.02.01', 'Rekomendasi Hasil Pengawasan Pemilu Tingkat Provinsi', ''),
('PM.02.02', 'Rekomendasi Hasil Pengawasan Pemilu Tingkat Kabupaten/Daerah', ''),
('PM.03', 'Sosialisasi Pengawasan Pemilu', ''),
('PM.03.00', 'Sosialisasi Pengawasan Pemilu Tingkat Pusat', ''),
('PM.03.01', 'Sosialisasi Pengawasan Pemilu Tingkat Provinsi', ''),
('PM.03.02', 'Sosialisasi Pengawasan Pemilu Tingkat Kabupaten/Daerah', ''),
('PM.04', 'Kerjasama Pengawasan Pemilu', ''),
('PM.05', 'Partisipasi Masyarakat', ''),
('PM.06', 'Analisis Teknis Pengawasan Pemilu dan Ptensi Pelanggaran', ''),
('PP.00', 'Penanganan Temuan Pelanggaran', ''),
('PP.00.00', 'Penanganan Temuan Pelanggaran Tingkat Pusat', ''),
('PP.00.01', 'Penanganan Temuan Pelanggaran Tingkat Provinsi', ''),
('PP.00.02', 'Penanganan Temuan Pelanggaran Tingkat Kabupaten/Kota', ''),
('PP.01', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu', ''),
('PP.01.00', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu Tingkat Pusat', ''),
('PP.01.01', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu Tingkat Provinsi', ''),
('PP.01.02', 'Penanganan Laporan/Pengaduan Pelanggaran Pemilu Tingkat Kabupaten/Kota', ''),
('PP.02', 'Laporan Pelanggaran Pemil Yang Tidak Diregistrasi', ''),
('PR.00', 'Pokok-Pokok Kebijakan dan Strategi Pembangunan', ''),
('PR.00.00', 'Rencana Pembangunan Jangka Panjang (RPJP)', ''),
('PR.00.01', 'Rencana Pembangunan Jangka Menengah (RPJM)', ''),
('PR.00.02', 'Rencana Strategis (Renstra)', ''),
('PR.01', 'Rencana Kerja Tahunan', ''),
('PR.01.00', 'Usulan Rencana Kegiatan', ''),
('PR.01.01', 'Rencana Kerja Tahunan', ''),
('PR.01.02', 'Rencana Kerja Tahunan Badan Pengawas Pemilihan Umum', ''),
('PR.02', 'Penetapan Kinerja', ''),
('PR.03', 'Penyusunan Kinerja', ''),
('PR.03.00', 'Penyususnan Rencana Anggaran Bawaslu', ''),
('PR.03.01', 'Revisi Dokumen Anggaran', ''),
('PR.04', 'Laporan', ''),
('PR.04.00', 'Laporan Berkala', ''),
('PR.04.01', 'Laporan Khusus', ''),
('PR.04.02', 'Laporan Perkembangan/Progress Report', ''),
('PR.04.03', 'Laporan Aluntabilitas Kinerja Instansi Pemerinah (LAKIP)', ''),
('PR.04.04', 'Evaluasi Program', ''),
('PS.00', 'Penyelesaian Sengketa Pemilu', ''),
('PS.00.00', 'Penyelesaian Sengketa Pemilu Tingkat Pusat', ''),
('PS.00.01', 'Penyelesaian Sengketa Pemilu Tingkat Provinsi', ''),
('PS.00.02', 'Penyelesaian Sengketa Pemilu Tingkat Kabupaten/Kota', ''),
('PS.00.03', 'Penyelesaian Sengketa Pemilu Tingkat Kecamatan', ''),
('PS.01', 'Penyelesaian Sengketa Pemilihan', ''),
('PS.01.00', 'Penyelesaian Sengketa Pemilihan Tingkat Pusat', ''),
('PS.01.01', 'Penyelesaian Sengketa Pemilihan Tingkat Provinsi', ''),
('PS.01.02', 'Penyelesaian Sengketa Pemilihan Tingkat Kabupaten/Kota', ''),
('PS.01.03', 'Penyelesaian Sengketa Pemilihan Tingkat Kecamatan', ''),
('PS.02', 'Sosialisasi Penyelesaian Sengketa', ''),
('PS.03', 'Pendampingan, Monitoring, dan Evaluasi', '');

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
  `kode` varchar(50) DEFAULT NULL,
  `no_agenda` int(10) DEFAULT NULL,
  `tujuan` varchar(250) DEFAULT NULL,
  `no_surat` varchar(250) DEFAULT NULL,
  `isi` mediumtext DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `tgl_catat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file` varchar(250) DEFAULT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_surat_keluar`
--

INSERT INTO `tbl_surat_keluar` (`id_surat`, `id_staf`, `kode`, `no_agenda`, `tujuan`, `no_surat`, `isi`, `tgl_surat`, `tgl_catat`, `file`, `keterangan`) VALUES
(1, 1, 'PM.00', 100, 'PT. Dirgantara Indonesia', 'SK-001/2024', 'Surat resmi ke PT. Dirgantara Indonesia', '2024-12-06', '2024-12-06 15:39:19', NULL, 'URGENT'),
(2, 2, 'PM.00.00', 101, 'PT. Teknologi Inovasi', 'SK-002/2024', 'Surat resmi ke PT. Teknologi Inovasi', NULL, '2024-12-06 15:36:19', NULL, 'URGENT'),
(3, 3, 'PM.00.00', 102, 'CV. SUS', 'SK-003/2024', 'Surat resmi ke CV. Super Usaha Selaras', NULL, '2024-12-06 15:36:19', NULL, 'SECRET');

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
  ADD PRIMARY KEY (`kode`);

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
  ADD KEY `id_staf` (`id_staf`),
  ADD KEY `id_kode` (`kode`);

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
  ADD CONSTRAINT `tbl_surat_keluar_ibfk_2` FOREIGN KEY (`id_staf`) REFERENCES `tbl_staf` (`id_staff`),
  ADD CONSTRAINT `tbl_surat_keluar_tbl_klasifikasi_3` FOREIGN KEY (`kode`) REFERENCES `tbl_klasifikasi` (`kode`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
