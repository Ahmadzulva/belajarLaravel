-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2024 at 07:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_belajarlaravel`
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
(4, '2024_05_20_014224_create_t_siswa', 1),
(5, '2024_05_20_014855_create_t_percobaan', 2),
(7, '2024_05_20_020206_add_goldar_t_siswa', 3),
(8, '2024_05_20_021317_change_jk_t_siswa', 4),
(9, '2024_05_20_021909_create_t_kelas', 5),
(10, '2024_05_20_022600_add_lokasi_ruangan_t_kelas', 6),
(11, '2024_05_20_023243_change_lokasi_ruangan_t_kelas', 7),
(12, '2024_05_20_023902_add_nama_walkel_t_kelas', 8),
(13, '2024_05_20_024258_change_nama_wali_kelas_t_kelas', 9);

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
('1vwriZ5GKN2rHAXh6CAlNbentvQQmAlOCfwkyqDV', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmg5MlN5VEpmMzdxY0xHS05OakZEZzNGeVhQMm5XOUhPdzlYR1piVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHA6Ly9sb2NhbGhvc3QvTi9razMvbGFyYXZlbC9wcm9qZWtQZXJ0YW1hL3B1YmxpYy9rZWxhcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1716785687);

-- --------------------------------------------------------

--
-- Table structure for table `t_kelas`
--

CREATE TABLE `t_kelas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `lokasi_ruangan` varchar(50) NOT NULL,
  `nama_wali_kelas` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_kelas`
--

INSERT INTO `t_kelas` (`id`, `nama_kelas`, `jurusan`, `lokasi_ruangan`, `nama_wali_kelas`, `created_at`, `updated_at`) VALUES
(1, 'RPL 1', 'Rekayasa Perangkat Lunak', 'A1', 'Budi', NULL, NULL),
(2, 'RPL 2', 'Rekayasa Perangkat Lunak', 'A2', 'Iwan', NULL, NULL),
(3, 'RPL 3', 'Rekayasa Perangkat Lunak', 'A3', 'Bu Tuti', NULL, NULL),
(4, 'TKTL 1', 'Teknik Ketenagalistrikan', 'B1', 'Agus', NULL, NULL),
(5, 'TKTL 2', 'Teknik Ketenagalistrikan', 'B2', 'Joko', NULL, NULL),
(6, 'TKTL 3', 'Teknik Ketenagalistrikan', 'B3', 'Ani', NULL, NULL),
(7, 'TKTL 4', 'Teknik Ketenagalistrikan', 'B4', 'Rahmat', NULL, NULL),
(8, 'TEAV 1', 'Teknik Elektronika Audio Video', 'C1', 'Andi', NULL, NULL),
(9, 'TEAV 2', 'Teknik Elektronika Audio Video', 'C2', 'Bambang', NULL, NULL),
(10, 'TEAV 3', 'Teknik Elektronika Audio Video', 'C3', 'Dewi', NULL, NULL),
(11, 'TEAV 4', 'Teknik Elektronika Audio Video', 'C4', 'Arif', NULL, NULL),
(12, 'TJKT 1', 'Teknik Jaringan Komputer dan Telekomunikasi', 'D1', 'Hasan', NULL, NULL),
(13, 'TJKT 2', 'Teknik Jaringan Komputer dan Telekomunikasi', 'D2', 'Ratna', NULL, NULL),
(14, 'DKV 1', 'Desain Komunikasi Visual', 'E1', 'Fitri', NULL, NULL),
(15, 'DKV 2', 'Desain Komunikasi Visual', 'E2', 'Adi', NULL, NULL),
(16, 'RPL 4', 'Rekayasa Perangkat Lunak', 'A4', 'Bu Amel', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_percobaan`
--

CREATE TABLE `t_percobaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` tinyint(4) NOT NULL,
  `bulan_lahir` tinyint(4) NOT NULL,
  `tahun_lahir` smallint(6) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `asal_kota` varchar(100) NOT NULL,
  `kewarganegaraan` varchar(3) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `pendidikan_terakhir` varchar(50) NOT NULL,
  `status_perkawinan` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_siswa`
--

CREATE TABLE `t_siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `golongan_darah` varchar(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_siswa`
--

INSERT INTO `t_siswa` (`id`, `nis`, `nama_lengkap`, `jk`, `golongan_darah`, `created_at`, `updated_at`) VALUES
(1, 12345, 'Ahmad Surya', 'L', 'A', NULL, NULL),
(3, 12347, 'Budi Santoso', 'L', 'B', NULL, NULL),
(4, 12348, 'Dewi Lestari', 'P', 'A', NULL, NULL),
(5, 12349, 'Rian Pratama', 'L', 'A', NULL, NULL),
(6, 12341, 'Ali Al-habsyi', 'L', 'AB', NULL, NULL),
(7, 12378, 'Lionel', 'L', 'B', NULL, NULL);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `t_kelas`
--
ALTER TABLE `t_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_percobaan`
--
ALTER TABLE `t_percobaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `t_percobaan_nik_unique` (`nik`);

--
-- Indexes for table `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `t_kelas`
--
ALTER TABLE `t_kelas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `t_percobaan`
--
ALTER TABLE `t_percobaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_siswa`
--
ALTER TABLE `t_siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
