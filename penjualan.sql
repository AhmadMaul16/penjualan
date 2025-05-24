-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2025 pada 22.07
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kd_brg` varchar(6) NOT NULL,
  `nm_brg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `harga_beli` int(50) NOT NULL,
  `harga_jual` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kd_brg`, `nm_brg`, `jenis`, `harga_beli`, `harga_jual`) VALUES
('MA01', 'MIe Ayam', 'Makanan', 5000, 15000),
('MA02', 'Bakso', 'Makanan', 5000, 15000),
('PE01', 'Pelan Dragon', 'Perabotan', 12000, 25000),
('PE02', 'Sapu Nagoya', 'Perabotan', 10000, 20000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(6) NOT NULL,
  `kd_brg` varchar(6) NOT NULL,
  `harga_b` int(11) NOT NULL,
  `harga_j` bigint(20) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `isi`
--

INSERT INTO `isi` (`id_nota`, `kd_brg`, `harga_b`, `harga_j`, `qty`) VALUES
('IN0001', 'MA01', 5000, 15000, 3),
('IN0002', 'PE02', 10000, 20000, 3),
('IN0003', 'PE02', 10000, 20000, 3),
('IN0004', 'PE02', 10000, 20000, 3),
('IN0005', 'PE02', 10000, 20000, 3),
('IN0006', 'PE01', 12000, 25000, 5),
('IN0007', 'MA01', 5000, 15000, 10),
('IN0008', 'MA02', 5000, 15000, 3),
('IN0009', 'PE02', 10000, 20000, 3),
('IN0010', 'PE02', 10000, 20000, 3),
('IN0011', 'PE02', 10000, 20000, 3),
('IN0012', 'PE02', 10000, 20000, 3),
('IN0013', 'PE02', 10000, 20000, 3),
('IN0014', 'PE02', 10000, 20000, 3),
('IN0015', 'PE02', 10000, 20000, 3),
('IN0016', 'PE02', 10000, 20000, 3),
('IN0017', 'PE02', 10000, 20000, 3),
('IN0018', 'PE02', 10000, 20000, 3),
('IN0019', 'PE02', 10000, 20000, 3),
('IN0020', 'PE02', 10000, 20000, 3),
('IN0021', 'PE02', 10000, 20000, 3),
('IN0022', 'MA02', 5000, 15000, 3),
('IN0023', 'PE02', 10000, 20000, 3),
('IN0024', 'PE02', 10000, 20000, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id_kasir` varchar(6) NOT NULL,
  `nmksr` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id_kasir`, `nmksr`, `jenis`, `telepon`, `agama`, `alamat`, `password`) VALUES
('K01', 'Ahmad Maulana', 'Laki-Laki', '0895412930976', 'Islam', 'Depok', '161202'),
('K02', 'Shinta Dwi Syahrani', 'Perempuan', '089637098909', 'Islam', 'Depok', '170504');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(10) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id_plgn` varchar(6) NOT NULL,
  `id_kasir` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nota`
--

INSERT INTO `nota` (`id_nota`, `tgl_nota`, `id_plgn`, `id_kasir`) VALUES
('IN0001', '2025-05-21', 'P02', 'ID Pelanggan'),
('IN0002', '2025-05-21', 'P01', 'ID Pelanggan'),
('IN0003', '2025-05-21', 'P04', 'ID Pelanggan'),
('IN0004', '2025-05-21', 'P04', 'ID Pelanggan'),
('IN0005', '2025-05-21', 'P04', 'ID Pelanggan'),
('IN0006', '2025-05-21', 'P03', 'ID Pelanggan'),
('IN0007', '2025-05-21', 'P04', 'ID Pelanggan'),
('IN0008', '2025-05-21', 'P01', 'ID Pelanggan'),
('IN0009', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0010', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0011', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0012', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0013', '2025-05-22', 'P03', 'ID Pelanggan'),
('IN0014', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0015', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0016', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0017', '2025-05-22', 'P02', 'ID Pelanggan'),
('IN0018', '2025-05-22', 'P03', 'ID Pelanggan'),
('IN0019', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0020', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0021', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0022', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0023', '2025-05-22', 'P04', 'ID Pelanggan'),
('IN0024', '2025-05-22', 'P04', 'K01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_plgn` varchar(6) NOT NULL,
  `nmplg` varchar(25) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_plgn`, `nmplg`, `jenis`, `telepon`, `alamat`) VALUES
('P01', 'Aisyah', 'perempuan', '081584975577', 'Bogor'),
('P02', 'Mardani', 'Laki-Laki', '087770384441', 'Bogor'),
('P03', 'Sri Purwati', 'Perempuan', '085692082476', 'Bogor'),
('P04', 'Holil. S', 'Laki-Laki', '087870271191', 'Bogor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_plgn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
