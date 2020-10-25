-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2020 pada 21.28
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_blok`
--

CREATE TABLE `tbl_blok` (
  `id_blok` int(11) NOT NULL,
  `nama_blok` varchar(100) DEFAULT NULL,
  `pj_blok` varchar(100) DEFAULT NULL,
  `no_hp_pj` varchar(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_blok`
--

INSERT INTO `tbl_blok` (`id_blok`, `nama_blok`, `pj_blok`, `no_hp_pj`) VALUES
(1, 'Blok A', 'Mang oleh', '85'),
(2, 'Blok B', 'Agung', '123123'),
(3, 'Blok C', 'Wadaw', '087291209372'),
(4, 'Blok D', 'Beni', '0124124'),
(5, 'Blok E', 'Aji', '0125125'),
(6, 'Blok F', 'Asep', '0123123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jns`
--

CREATE TABLE `tbl_jns` (
  `id_jns` int(11) NOT NULL,
  `nama_jns` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jns`
--

INSERT INTO `tbl_jns` (`id_jns`, `nama_jns`) VALUES
(1, 'Makanan'),
(2, 'Pakaian'),
(3, 'Elektronik'),
(4, 'Minuman'),
(5, 'Aksesoris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pedagang`
--

CREATE TABLE `tbl_pedagang` (
  `id_pedagang` int(100) NOT NULL,
  `no_pendaftaran` varchar(20) NOT NULL,
  `password` text DEFAULT NULL,
  `nokk` int(30) DEFAULT NULL,
  `nik` int(30) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `jk` varchar(12) DEFAULT NULL,
  `tempat_lahir` text DEFAULT NULL,
  `tgl_lahir` varchar(10) DEFAULT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `status_keluarga` varchar(30) DEFAULT NULL,
  `alamat_pedagang` text DEFAULT NULL,
  `no_hp_pedagang` varchar(14) DEFAULT NULL,
  `nama_dagangan` varchar(100) DEFAULT NULL,
  `jns_dagangan` varchar(100) DEFAULT NULL,
  `no_hp_dagangan` varchar(14) DEFAULT NULL,
  `blokdagangan` varchar(100) DEFAULT NULL,
  `detail_lokasi_dagangan` text DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tgl_pedagang` datetime DEFAULT NULL,
  `status_verifikasi` varchar(30) DEFAULT NULL,
  `status_pendaftaran` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pedagang`
--

INSERT INTO `tbl_pedagang` (`id_pedagang`, `no_pendaftaran`, `password`, `nokk`, `nik`, `nama_lengkap`, `jk`, `tempat_lahir`, `tgl_lahir`, `agama`, `status_keluarga`, `alamat_pedagang`, `no_hp_pedagang`, `nama_dagangan`, `jns_dagangan`, `no_hp_dagangan`, `blokdagangan`, `detail_lokasi_dagangan`, `foto`, `tgl_pedagang`, `status_verifikasi`, `status_pendaftaran`) VALUES
(10, 'PGG18004003', 'PGG18004003', 123, 123, 'dd', 'Laki-Laki', '123', '01-01-1990', 'Islam', NULL, '123', '123', '123', 'Makanan', '123', '1', '123', NULL, '2020-10-02 15:32:00', 'ditolak', 'berhasil'),
(11, 'PGG18004004', 'PGG18004004', 123, 123, '123', 'Laki-Laki', '123', '01-01-1990', 'Islam', NULL, '123', '123', '123', 'Pakaian', '123', '1', '123', NULL, '2020-10-04 07:10:17', 'ditolak', 'berhasil'),
(9, 'PGG18004002', 'PGG18004002', 123, 123, '123', 'Laki-Laki', '123', '01-01-1990', 'Islam', NULL, '123', '123', 'odading mang oleh', 'Makanan', '123', 'Makanan', '123', NULL, '2020-10-02 00:03:44', 'ditolak', 'berhasil'),
(12, 'PGG18004005', 'PGG18004005', 123, 123, '123', 'Laki-Laki', '123', '01-01-1990', 'Kristen', NULL, '123', '123', 'odading mang oleh', 'Makanan', '123', '1', 'dekat pintu masuk', NULL, '2020-10-04 07:16:30', 'ditolak', 'berhasil'),
(13, 'PGG18004006', 'PGG18004006', 123, 123, '123', 'Laki-Laki', '123', '01-01-1990', 'Islam', NULL, '123', '123', '123', 'Makanan', '123', '1', '123', NULL, '2020-10-04 07:28:56', 'diterima', 'berhasil'),
(14, 'PGG18004007', 'PGG18004007', 123, 123, '123', 'Laki-Laki', '123', '01-01-1990', 'Islam', NULL, '123', '123', '123', 'Makanan', '123', '1', '123', '41155050160113_41155050160113_IMG_0003.png', '2020-10-04 07:37:31', 'ditolak', 'berhasil'),
(15, 'PGG18004008', 'PGG18004008', 123, 1234, 'Baba', 'Laki-Laki', '123', '01-01-1990', 'Islam', NULL, '123', '123', '123', 'Makanan', '123', '1', '123', '41155050160113_41155050160113_IMG_0003.png', '2020-10-04 07:38:16', 'diterima', 'berhasil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `tgl_daftar` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama_lengkap`, `level`, `tgl_daftar`) VALUES
(1, 'admin', 'admin', 'Admin PPG', 'admin', '2018-04-12 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_verifikasi`
--

CREATE TABLE `tbl_verifikasi` (
  `id_verifikasi` int(10) NOT NULL,
  `isi` text DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `tgl_verifikasi` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_verifikasi`
--

INSERT INTO `tbl_verifikasi` (`id_verifikasi`, `isi`, `ket`, `tgl_verifikasi`) VALUES
(1, '<html>\r\n<head>\r\n	<title></title>\r\n</head>\r\n<body>\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u>Materi Tes Potensi Akdemik :</u></strong></span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u> </u></strong></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp;1.&nbsp;Bahasa Indonesia&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 25 soal </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; 2.&nbsp;Bahasa Inggris&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 25 soal </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; 3.&nbsp;Matematika&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 25 soal&nbsp;&nbsp; </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; 4. IPA </span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fisika&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 12 soal</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Biologi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;: 13 soal </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u>Hari Tanggal tes : </u></strong></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;tanggal 3 s.d 5 Juli 2018</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><u>Waktu Tes potensi Akademik :</u></strong></span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Sesi 1&nbsp; : 07.00 - 09.00</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Sesi 2&nbsp; : 09.30 - 11.30<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">Sesi 3&nbsp; : 12.00 - 14.00</span></span><br />\r\n<span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">&nbsp; &nbsp; &nbsp; &nbsp; Sesi 4&nbsp; : 14.30 - 16.30</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">*<em>catatan : </em></span></span></strong><br />\r\n<strong><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><em>jadwal ujian bisa berubah sewaktu - waktu&nbsp; Update infomasi di web PPDB </em></span></span><em><span style=\"font-size:11.0pt\">peserta ujian datang 15&nbsp; menit sebelun tes dimulai.</span></em></strong></p>\r\n</body>\r\n</html>\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_web`
--

CREATE TABLE `tbl_web` (
  `id_web` int(10) NOT NULL,
  `status_ppg` varchar(30) DEFAULT NULL,
  `tgl_diubah` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_web`
--

INSERT INTO `tbl_web` (`id_web`, `status_ppg`, `tgl_diubah`) VALUES
(1, 'buka', '2020-10-10 02:26:54');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_blok`
--
ALTER TABLE `tbl_blok`
  ADD PRIMARY KEY (`id_blok`);

--
-- Indeks untuk tabel `tbl_jns`
--
ALTER TABLE `tbl_jns`
  ADD PRIMARY KEY (`id_jns`);

--
-- Indeks untuk tabel `tbl_pedagang`
--
ALTER TABLE `tbl_pedagang`
  ADD PRIMARY KEY (`id_pedagang`) USING BTREE;

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tbl_verifikasi`
--
ALTER TABLE `tbl_verifikasi`
  ADD PRIMARY KEY (`id_verifikasi`);

--
-- Indeks untuk tabel `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`id_web`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_blok`
--
ALTER TABLE `tbl_blok`
  MODIFY `id_blok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_jns`
--
ALTER TABLE `tbl_jns`
  MODIFY `id_jns` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pedagang`
--
ALTER TABLE `tbl_pedagang`
  MODIFY `id_pedagang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_verifikasi`
--
ALTER TABLE `tbl_verifikasi`
  MODIFY `id_verifikasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `id_web` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;