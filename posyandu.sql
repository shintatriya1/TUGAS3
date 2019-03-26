-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Mar 2019 pada 04.35
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak`
--

CREATE TABLE `anak` (
  `id` int(50) NOT NULL,
  `orangtua_id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anak`
--

INSERT INTO `anak` (`id`, `orangtua_id`, `nama`, `tempat_lahir`, `tanggal_lahir`) VALUES
(1, 1, 'ANDHIKA PRAMUDITA', 'BATANG', '2018-11-07'),
(2, 2, 'BINTANG RAHARJA', 'SEMARANG', '2018-04-18'),
(3, 3, 'MONITA FEBRIANI', 'PEKALONGAN', '2018-11-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kader`
--

CREATE TABLE `kader` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `posyandu_id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kader`
--

INSERT INTO `kader` (`id`, `user_id`, `posyandu_id`, `nama`, `tanggal_lahir`, `alamat`) VALUES
(1, 5, 1, 'BAGUS PRADANA', '1989-03-11', 'JL.WAHYU TEMURUN 12 SEMARANG JAWA TENGAH'),
(2, 6, 2, 'DWI ANGGREK', '1987-02-12', 'JL.ANGGREK NO. 5 SEMARANG JAWA TENGAH'),
(3, 7, 3, 'VANIA SHAFIRA', '1986-02-02', 'JL.FLAMBOYAN NO. 3 SEMARANG JAWA TENGAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang_tua`
--

CREATE TABLE `orang_tua` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `posyandu_id` int(50) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`id`, `user_id`, `posyandu_id`, `nama_ayah`, `nama_ibu`, `alamat`) VALUES
(1, 1, 1, 'MAHARDIKA PUTRA', 'ANISA FITRI', 'JL. WAHYU TEMURUN NO. 8 SEMARANG JAWA TENGAH'),
(2, 2, 2, 'NANDO ANUGERAH', 'KANIA PUTRI', 'JL.TERUNTUM NO. 10 SEMARANG JAWA TENGAH'),
(3, 3, 3, 'ANGGA PRADIPTA', 'RINI NUR SARI', 'JL.KASIH NO 12 SEMARANG JAWA TENGAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengukuran`
--

CREATE TABLE `pengukuran` (
  `id` int(11) NOT NULL,
  `anak_id` int(50) NOT NULL,
  `posyandu_id` int(100) NOT NULL,
  `lingkar_kepala` varchar(50) NOT NULL,
  `lingkar_lengan` varchar(50) NOT NULL,
  `berat_badan` varchar(50) NOT NULL,
  `tinggi_badan` varchar(50) NOT NULL,
  `tanggal_pengukuran` varchar(50) NOT NULL,
  `pemeriksa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengukuran`
--

INSERT INTO `pengukuran` (`id`, `anak_id`, `posyandu_id`, `lingkar_kepala`, `lingkar_lengan`, `berat_badan`, `tinggi_badan`, `tanggal_pengukuran`, `pemeriksa`) VALUES
(1, 1, 1, '25cm', '15cm', '20Kg', '80cm', '18 JULI 2018', 'PUSKESMAS'),
(2, 2, 2, '20cm', '16cm', '25Kg', '70cm', '19 SEPTEMBER 2018', 'PUSKEMAS'),
(3, 3, 3, '15cm', '20cm', '15kg', '120cm', '14 SEPTEMBER 2018', 'POSYANDU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posyandu`
--

CREATE TABLE `posyandu` (
  `id` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posyandu`
--

INSERT INTO `posyandu` (`id`, `nama`, `alamat`) VALUES
(1, 'WIWIN SETYONINGSIH', 'JL. LEMPONGSARI II NO 501 B SEMARANG JAWA TENGAH'),
(2, 'YAYUK NINGSIH', 'JL. VETERAN NO. 14 SEMARANG JAWA TENGAH'),
(3, 'FRANDA MUKTI', 'JL. PAHLAWAN NO. 12 SEMARANG JAWA TENGAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`) VALUES
(1, 'SHINTA TRIYA YULIANA', 'Webservice');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kader`
--
ALTER TABLE `kader`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengukuran`
--
ALTER TABLE `pengukuran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posyandu`
--
ALTER TABLE `posyandu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anak`
--
ALTER TABLE `anak`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kader`
--
ALTER TABLE `kader`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengukuran`
--
ALTER TABLE `pengukuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `posyandu`
--
ALTER TABLE `posyandu`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
