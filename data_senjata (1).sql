-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2026 pada 03.30
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_senjata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ID_produk` int(11) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `kategori` varchar(25) DEFAULT NULL,
  `harga` bigint(20) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ID_produk`, `nama`, `kategori`, `harga`, `gambar`) VALUES
(1, 'Sniper Rifle', 'Senjata Api', 15000000, 'senjata1.jfif'),
(2, 'Pedang Katana', 'Senjata Tajam', 3500000, 'senjata2.jfif'),
(3, 'Pisau Hunter', 'Senjata Tajam', 850000, 'senjata3.jfif'),
(4, 'Pisau Karambit', 'Senjata Tajam', 650000, 'senjata4.jfif'),
(5, 'Pistol Beretta', 'Senjata Api', 8000000, 'senjata5.jfif'),
(6, 'Tongkat Bisbol Besi', 'Senjata Tumpul', 210000, 'senjata6.jfif'),
(7, 'Shotgun Remington', 'Senjata Api', 8500000, 'senjata7.jfif'),
(8, 'Jaket Taktis Softshell', 'Pakaian Taktis', 550000, 'perlengkapan9.jfif'),
(9, 'Kaos Taktis Combat Shirt', 'Pakaian Taktis', 350000, 'perlengkapan14.jfif'),
(10, 'Celana Cargo Taktis', 'Pakaian Taktis', 280000, 'perlengkapan13.jfif'),
(11, 'Sepatu Boots Taktis', 'Pakaian Taktis', 750000, 'perlengkapan15.jfif'),
(12, 'Topeng Gas Taktis', 'Perlengkapan Taktis', 320000, 'perlengkapan12.jfif'),
(13, 'Helm Taktis', 'Perlengkapan Taktis', 650000, 'perlengkapan11.jfif'),
(14, 'Plate Carrier Vest', 'Perlengkapan Taktis', 1250000, 'perlengkapan10.jfif'),
(15, 'Sarung Tangan Taktis', 'Perlengkapan Taktis', 250000, 'perlengkapan8.jfif'),
(16, 'Kompas Taktis Survival', 'Perlengkapan Taktis', 180000, 'perlengkapan17.jfif'),
(17, 'Kapak Tomahawk Taktis', 'Senjata Tajam', 450000, 'senjata19.jfif'),
(18, 'Kapak Multizonal Taktis', 'Senjata Tajam', 380000, 'senjata18.jfif'),
(19, 'Machete / Parang Taktis', 'Senjata Tajam', 320000, 'senjata16.jfif'),
(31, 'Pistol M911 Pink', 'Senjata Api', 8900000, 'pistol.jfif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ID_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `ID_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
