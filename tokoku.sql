-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2024 at 01:20 PM
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
-- Database: `tokoku`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('02d1eba317a4d41192aad5f424f154ec', 'i:1;', 1724770814),
('02d1eba317a4d41192aad5f424f154ec:timer', 'i:1724770814;', 1724770814),
('3d18b5d23d03473ba485b31a3f8f2b98', 'i:2;', 1725423005),
('3d18b5d23d03473ba485b31a3f8f2b98:timer', 'i:1725423005;', 1725423005),
('d992674a19564d1b45195608ea6ec34a', 'i:1;', 1724817152),
('d992674a19564d1b45195608ea6ec34a:timer', 'i:1724817152;', 1724817152),
('edrick25112006@gmail.com|::1', 'i:1;', 1723878619),
('edrick25112006@gmail.com|::1:timer', 'i:1723878619;', 1723878619);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Minuman', '2024-08-19 08:10:39', '2024-08-19 08:45:10'),
(3, 'Makanan', '2024-08-19 08:34:19', '2024-08-19 08:45:00'),
(5, 'Cemilan', '2024-08-19 21:47:56', '2024-08-19 21:47:56'),
(6, 'Yoghurt', '2024-08-19 21:48:13', '2024-09-11 23:52:35'),
(8, 'Mainan', '2024-08-26 07:16:10', '2024-08-26 07:16:10'),
(9, 'Es Krim', '2024-09-11 23:53:12', '2024-09-11 23:53:12'),
(10, 'SkinCare', '2024-09-11 23:53:24', '2024-09-11 23:53:24'),
(11, 'Obat', '2024-09-11 23:53:30', '2024-09-11 23:53:30'),
(12, 'Cake', '2024-09-11 23:54:04', '2024-09-11 23:54:04'),
(13, 'Perangkat', '2024-09-11 23:55:35', '2024-09-11 23:55:35');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(191) NOT NULL,
  `nama` varchar(191) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `kode_member`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, '00001', 'Edrick', 'Perum', '08238976473', '2024-08-21 05:45:52', '2024-08-21 05:46:56'),
(2, '00002', 'Adin', 'Genteng', '08453672546', '2024-08-21 05:46:30', '2024-08-21 05:46:30'),
(3, '00003', 'Barok', 'Cimoyan', '08122334455', '2024-08-21 06:54:52', '2024-08-21 06:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(6, '2024_08_14_103854_tambah_kolom_baru_to_users_table', 2),
(7, '2024_08_14_105640_buat_kategori_table', 3),
(8, '2024_08_14_110116_buat_produk_table', 4),
(9, '2024_08_14_111929_buat_member_table', 4),
(10, '2024_08_14_112418_buat_supplier_table', 4),
(11, '2024_08_14_112757_buat_pembelian_detail_table', 4),
(12, '2024_08_14_112820_buat_pembelian_table', 4),
(13, '2024_08_14_112830_buat_penjualan_table', 4),
(14, '2024_08_14_112845_buat_penjualan_detail_table', 4),
(15, '2024_08_14_112903_buat_setting_table', 4),
(16, '2024_08_14_115832_buat_pengeluaran_table', 4),
(17, '2024_08_15_114743_add_two_factor_columns_to_users_table', 5),
(18, '2024_08_15_114835_create_personal_access_tokens_table', 5),
(19, '2024_08_20_045348_tambah_foreign_key_to_produk_table', 6),
(20, '2024_08_20_135757_tambah_kode_produk_to_produk_table', 7),
(21, '2024_08_25_154449_tambah_diskon_to_setting_table', 8),
(22, '2024_08_26_143052_edit_id_member_to_penjualan_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_supplier`, `total_item`, `total_harga`, `diskon`, `bayar`, `created_at`, `updated_at`) VALUES
(1, 1, 30, 90000, 0, 90000, '2024-08-25 07:30:17', '2024-08-25 08:31:21'),
(3, 2, 12, 34000, 10, 30600, '2024-08-25 18:00:47', '2024-08-25 18:01:11'),
(6, 2, 1, 7000, 10, 6300, '2024-09-02 00:05:48', '2024-09-02 00:06:03'),
(7, 2, 9, 63000, 0, 63000, '2024-09-03 21:09:27', '2024-09-03 21:09:53'),
(8, 2, 0, 0, 0, 0, '2024-09-19 08:13:28', '2024-09-19 08:13:28'),
(9, 2, 2, 160000, 0, 160000, '2024-09-19 08:15:20', '2024-09-19 08:16:46'),
(10, 2, 1, 7000, 0, 7000, '2024-10-04 01:36:50', '2024-10-04 01:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembelian_detail`
--

INSERT INTO `pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_beli`, `jumlah`, `subtotal`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 5000, 10, 50000, '2024-08-25 07:57:15', '2024-08-25 08:23:24'),
(3, 1, 6, 3000, 5, 15000, '2024-08-25 08:19:52', '2024-08-25 08:20:14'),
(4, 1, 3, 2000, 10, 20000, '2024-08-25 08:19:56', '2024-08-25 08:23:28'),
(5, 1, 1, 1000, 5, 5000, '2024-08-25 08:20:00', '2024-08-25 08:23:33'),
(7, 3, 6, 3000, 10, 30000, '2024-08-25 18:00:54', '2024-08-25 18:01:00'),
(8, 3, 8, 2000, 2, 4000, '2024-08-25 18:00:57', '2024-08-25 18:01:03'),
(9, 6, 22, 7000, 1, 7000, '2024-09-02 00:05:55', '2024-09-02 00:05:55'),
(10, 7, 22, 7000, 9, 63000, '2024-09-03 21:09:33', '2024-09-03 21:09:52'),
(11, 9, 30, 80000, 2, 160000, '2024-09-19 08:15:29', '2024-09-19 08:15:33'),
(12, 10, 22, 7000, 1, 7000, '2024-10-04 01:36:55', '2024-10-04 01:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `deskripsi`, `nominal`, `created_at`, `updated_at`) VALUES
(1, 'Gaji Karyawan-Agustus', 10000, '2024-08-21 07:06:32', '2024-08-27 17:22:27'),
(3, 'Pembelian Stok Camilan', 100000, '2024-08-21 07:07:47', '2024-08-27 17:22:19'),
(4, 'Gaji september', 100000, '2024-09-02 00:05:26', '2024-09-02 00:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(2, 1, 9, 245000, 5, 232750, 5, 1, '2024-08-27 06:53:37', '2024-08-27 06:55:49'),
(6, 2, 4, 130000, 5, 123500, 1, 1, '2024-08-27 08:36:20', '2024-08-27 08:41:10'),
(10, 2, 1, 3880, 5, 3686, 0, 1, '2024-08-27 17:20:01', '2024-08-27 17:20:31'),
(11, 2, 1, 38000, 5, 36100, 0, 4, '2024-08-27 19:10:55', '2024-08-27 19:14:55'),
(12, 3, 1, 10000, 5, 9500, 77, 1, '2024-08-27 19:16:03', '2024-08-27 19:16:21'),
(13, 1, 1, 7000, 5, 6650, 10000, 1, '2024-08-27 19:17:12', '2024-08-27 19:18:14'),
(14, 3, 1, 40000, 5, 38000, 100000, 1, '2024-08-27 19:24:28', '2024-08-27 19:31:48'),
(17, 2, 1, 40000, 5, 38000, 40000, 1, '2024-08-28 06:17:45', '2024-08-28 06:18:28'),
(18, 2, 2, 19500, 5, 18525, 0, 1, '2024-08-28 06:18:55', '2024-08-28 06:21:07'),
(19, 2, 1, 30000, 5, 28500, 100000, 1, '2024-08-28 07:46:24', '2024-08-28 07:46:40'),
(20, 2, 1, 10000, 5, 9500, 10000, 1, '2024-08-28 08:06:09', '2024-08-28 08:06:28'),
(21, 2, 5, 142500, 5, 135375, 150000, 1, '2024-08-31 07:43:59', '2024-08-31 07:45:41'),
(22, 2, 1, 10000, 5, 9500, 20000, 4, '2024-09-01 18:06:49', '2024-09-01 18:07:06'),
(23, 2, 1, 9500, 5, 9025, 10000, 1, '2024-09-02 00:06:44', '2024-09-02 00:07:32'),
(24, 2, 1, 10000, 5, 9500, 11000, 1, '2024-09-10 19:15:03', '2024-09-10 19:15:34'),
(27, NULL, 0, 0, 0, 0, 0, 1, '2024-09-19 08:20:47', '2024-09-19 08:20:47'),
(28, 2, 1, 21000000, 5, 19950000, 20000000, 1, '2024-09-19 08:21:40', '2024-09-19 08:22:04'),
(29, NULL, 0, 0, 0, 0, 0, 1, '2024-10-03 06:33:01', '2024-10-03 06:33:01'),
(30, 2, 1, 9500, 5, 9025, 10000, 1, '2024-10-03 06:33:08', '2024-10-03 06:38:57'),
(31, 3, 1, 100000, 5, 95000, 100000, 4, '2024-10-03 06:46:23', '2024-10-03 06:47:14'),
(32, NULL, 0, 0, 0, 0, 0, 1, '2024-10-04 00:48:01', '2024-10-04 00:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 26, 40000, 2, 5, 80000, '2024-08-27 06:53:48', '2024-08-27 06:55:49'),
(2, 2, 25, 30000, 4, 5, 120000, '2024-08-27 06:53:54', '2024-08-27 06:55:49'),
(4, 2, 21, 15000, 3, 5, 45000, '2024-08-27 06:54:08', '2024-08-27 06:55:49'),
(8, 6, 25, 30000, 3, 5, 90000, '2024-08-27 08:37:19', '2024-08-27 08:41:10'),
(9, 6, 26, 40000, 1, 5, 40000, '2024-08-27 08:37:26', '2024-08-27 08:41:10'),
(10, 10, 6, 4000, 1, 5, 3880, '2024-08-27 17:20:07', '2024-08-27 17:20:31'),
(11, 11, 26, 40000, 2, 5, 76000, '2024-08-27 19:11:02', '2024-08-27 19:14:53'),
(12, 12, 22, 10000, 1, 5, 10000, '2024-08-27 19:16:08', '2024-08-27 19:16:21'),
(13, 13, 23, 7000, 1, 5, 7000, '2024-08-27 19:17:16', '2024-08-27 19:18:14'),
(14, 14, 26, 40000, 1, 5, 40000, '2024-08-27 19:31:22', '2024-08-27 19:31:48'),
(15, 17, 26, 40000, 1, 5, 40000, '2024-08-28 06:17:52', '2024-08-28 06:18:28'),
(16, 18, 22, 10000, 1, 5, 10000, '2024-08-28 06:19:03', '2024-08-28 06:19:08'),
(17, 18, 22, 10000, 1, 5, 10000, '2024-08-28 06:21:04', '2024-08-28 06:21:07'),
(18, 19, 25, 30000, 1, 5, 30000, '2024-08-28 07:46:29', '2024-08-28 07:46:40'),
(19, 20, 22, 10000, 1, 5, 10000, '2024-08-28 08:06:14', '2024-08-28 08:06:28'),
(20, 21, 25, 30000, 5, 5, 150000, '2024-08-31 07:44:42', '2024-08-31 07:45:02'),
(21, 22, 22, 10000, 1, 5, 10000, '2024-09-01 18:06:55', '2024-09-01 18:07:06'),
(22, 23, 22, 10000, 1, 5, 10000, '2024-09-02 00:06:49', '2024-09-02 00:07:04'),
(23, 24, 22, 10000, 1, 5, 10000, '2024-09-10 19:15:08', '2024-09-10 19:15:34'),
(25, 28, 34, 21000000, 1, 5, 21000000, '2024-09-19 08:21:46', '2024-09-19 08:22:04'),
(28, 30, 22, 10000, 1, 5, 10000, '2024-10-03 06:37:54', '2024-10-03 06:38:05'),
(29, 31, 30, 100000, 1, 5, 100000, '2024-10-03 06:46:28', '2024-10-03 06:47:14'),
(30, 32, 30, 100000, 1, 0, 100000, '2024-10-04 00:49:48', '2024-10-04 00:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(191) NOT NULL,
  `nama_produk` varchar(191) NOT NULL,
  `merk` varchar(191) DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(22, 6, 'P000022', 'Cimori Yoghurt', 'Cimori', 7000, 0, 10000, 100, '2024-08-26 07:12:19', '2024-10-04 01:37:00'),
(23, 9, 'P000023', 'Es krim Walls', 'Walls', 5000, 0, 7000, 99, '2024-08-26 07:13:38', '2024-09-11 23:59:04'),
(27, 1, 'P000027', 'Fruit Tea', 'Tea', 5000, 0, 6000, 100, '2024-09-11 23:58:06', '2024-09-11 23:58:06'),
(28, 3, 'P000028', 'Pop Mie', 'Mie', 5000, 0, 8000, 100, '2024-09-11 23:59:39', '2024-09-11 23:59:39'),
(29, 5, 'P000029', 'Taro', 'Taro', 1000, 0, 2000, 100, '2024-09-12 00:00:21', '2024-09-12 00:00:21'),
(30, 12, 'P000030', 'Birthday Cake', NULL, 80000, 0, 100000, 99, '2024-09-12 00:01:16', '2024-10-03 06:47:14'),
(31, 10, 'P000031', 'Moisturizer', 'Skintific', 20000, 0, 30000, 100, '2024-09-12 00:02:09', '2024-09-12 00:02:09'),
(32, 11, 'P000032', 'Paracetamol Sakit Kepala', 'Paracetamol', 10000, 0, 20000, 100, '2024-09-12 00:03:19', '2024-09-12 00:03:19'),
(33, 8, 'P000033', 'Hot Whells', 'Hot Whells', 20000, 0, 30000, 100, '2024-09-12 00:10:00', '2024-09-12 00:10:00'),
(34, 13, 'P000034', 'Samsung S21', 'HP', 20000000, 0, 21000000, -1, '2024-09-12 00:10:52', '2024-09-19 08:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JPkSkjU9t9hnEXVzt0LTLdbcdGNODmcZR8CzC72l', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoicGFVNWJNY0dKeExrako4VnpucjVWZ29vWFpWb293NXJCOXZBS09TaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3QvdG9rb2JhcnUvc2V0dGluZyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRGMjM1RU1pWE11UXhJbUtpVXY0LlB1b1VyYTE3NC5YUXNxWnBVWUNNd2JnWnN0Rmw1M3RSYSI7fQ==', 1728702787);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(191) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(191) NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(191) NOT NULL,
  `path_kartu_member` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Toko Smart', 'SMKN 1 KADIPATEN', '08123477991', 2, 5, '/img/logo-20240911055826.png', '/img/Member.png', NULL, '2024-10-03 06:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `alamat`, `telepon`, `created_at`, `updated_at`) VALUES
(1, 'Edrick', 'Perum', '08238976473', '2024-08-21 06:44:31', '2024-08-21 06:44:31'),
(2, 'Adin', 'Genteng', '08453672546', '2024-08-21 06:44:42', '2024-08-21 06:44:42'),
(4, 'Barok', 'Cimoyan', '08122334455', '2024-08-21 06:55:12', '2024-08-21 06:55:12'),
(5, 'Galih', 'KarangSambung', '08978685755', '2024-08-26 07:07:16', '2024-08-26 07:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `foto`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Big Boss', 'administrator1@gmail.com', NULL, '$2y$12$F235EMiXMuQxImKiUv4.PuoUra174.XQsqZpUYCMwbgZstFl53tRa', NULL, NULL, NULL, '/img/logo-20240828145806.jpeg', 1, NULL, '2024-08-16 20:47:41', '2024-09-10 22:14:48'),
(4, 'Edrick', 'kyura@gmail.com', NULL, '$2y$12$n/C3xRZMk5wknmNz4l84UeBiK7egYjF4v.YV6vMOK/DwaXEVZ5yxm', NULL, NULL, NULL, '/img/logo-20240911053018.jpg', 2, NULL, '2024-08-27 07:43:10', '2024-09-10 22:30:18'),
(5, 'Sinta', 'sinta@gmail.com', NULL, '$2y$12$lAzOK8zcMHcLIeQwMsRjEOAwm5NWBMtUjedpR16jA7rwxoWetMw3m', NULL, NULL, NULL, '/img/logo-20240911052843.jpg', 2, NULL, '2024-09-10 22:12:33', '2024-09-10 22:28:43'),
(6, 'Alip', 'alip@gmail.com', NULL, '$2y$12$n1l9C4sF8n7qe2lZzXerkOmyk9B/oWcwAQJ7dw1v7KTUj2dVSiQ/6', NULL, NULL, NULL, '/img/logo-20240911052359.jpg', 2, NULL, '2024-09-10 22:13:01', '2024-09-10 22:23:59'),
(7, 'Adriano', 'adriano@gmail.com', NULL, '$2y$12$lrAs7W9lFIW8.MHQOl/1cOqxVXQxi9fWblvAM1/WUpkYted5jVore', NULL, NULL, NULL, '/img/logo-20240911052707.jpg', 2, NULL, '2024-09-10 22:13:51', '2024-10-11 19:25:25'),
(8, 'Firgi', 'firgi@gmail.com', NULL, '$2y$12$a5Uooz2o9FMCfqUaIxNcTO9oondqkP2MqIQdzmss1WPq9QnLfHH7C', NULL, NULL, NULL, '/img/logo-20240911052426.jpg', 2, NULL, '2024-09-10 22:14:16', '2024-09-10 22:24:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
