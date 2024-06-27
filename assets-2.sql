-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2024 pada 17.31
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; START TRANSACTION; SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assets-2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `assets`
--
CREATE TABLE `assets` (
 `id` BIGINT(20) UNSIGNED NOT NULL,
 `barcode` VARCHAR(255) NOT NULL,
 `jenis_barang` VARCHAR(255) NOT NULL,
 `barang` VARCHAR(255) NOT NULL,
 `harga` VARCHAR(255) NOT NULL,
 `pic` VARCHAR(255) NOT NULL,
 `nik_pic` VARCHAR(255) NOT NULL,
 `jumlah` VARCHAR(255) NOT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--
CREATE TABLE `barangs` (
 `id_barang` INT(10) UNSIGNED NOT NULL,
 `id_jb` BIGINT(20) UNSIGNED NOT NULL,
 `id_pic` BIGINT(20) UNSIGNED NOT NULL,
 `barcode` VARCHAR(255) NOT NULL,
 `barang` VARCHAR(255) NOT NULL,
 `harga` VARCHAR(255) NOT NULL,
 `jumlah` VARCHAR(255) DEFAULT NULL,
 `quantity` VARCHAR(255) NOT NULL,
 `sisa` INT(11) DEFAULT NULL,
 `tersedia` VARCHAR(255) DEFAULT NULL,
 `terpinjam` VARCHAR(255) DEFAULT NULL,
 `jenis_barang` VARCHAR(255) DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--
INSERT INTO `barangs` (`id_barang`, `id_jb`, `id_pic`, `barcode`, `barang`, `harga`, `jumlah`, `quantity`, `sisa`, `tersedia`, `terpinjam`, `jenis_barang`, `created_at`, `updated_at`) VALUES
(1, 3, 86, '29949559', 'Sekrup', '9.860.787', '1', '', 1, '1', '0', '3', '2024-05-12 08:42:07', '2024-06-26 05:58:35'),
(2, 4, 40, '58551153', 'Tangga', '5.354.758', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 19:52:48'),
(3, 4, 13, '41548643', 'Gergaji', '3.461.081', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-05-12 09:15:20'),
(5, 1, 61, '67337467', 'Penyedot Debu', '5.791.807', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:06:04'),
(6, 2, 77, '46835977', '3', '6.671.891', '3', '', 3, '3', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:11:04'),
(8, 2, 63, '15268852', 'Meja', '2.123.962', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:12:14'),
(9, 5, 71, '56217571', 'Rompi Apd', '3.515.624', '5', '', 5, '4', '0', NULL, '2024-05-12 08:42:07', '2024-06-26 06:42:40'),
(10, 1, 65, '27650785', 'Laptop', '2.081.337', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:11:02'),
(11, 1, 46, '89395578', 'Drone', '0.098.999', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:15:09'),
(12, 5, 46, '84372952', 'Helm Apd', '8.555.392', '5', '', 5, '5', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:17:01'),
(13, 3, 54, '66540986', 'Selang', '7.398.109', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:17:47'),
(14, 2, 97, '76410420', 'Tikar', '4.255.983', '3', '', 3, '3', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:18:33'),
(15, 4, 37, '40473649', 'Solasi', '7.448.927', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:18:59'),
(16, 5, 40, '36014530', 'P3K', '8.094.605', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:19:16'),
(17, 5, 45, '36006650', 'Sepatu Boot', '8.004.203', '5', '', 5, '5', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 00:22:12'),
(18, 4, 93, '18513941', 'Tang', '4.291.831', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-05-26 21:58:41'),
(19, 4, 38, '94017002', 'Kabel Utp', '8.925.525', '3', '', 3, '3', '0', NULL, '2024-05-12 08:42:07', '2024-05-16 03:45:10'),
(20, 5, 1, '10686970', 'Ban Mobil', '9.964.500', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:10:46'),
(21, 4, 22, '22032363', 'Spray Gun', '4.126.432', '3', '', 3, '3', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:12:11'),
(22, 1, 52, '35104974', 'HT', '1.024.414', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:13:02'),
(23, 1, 97, '41701432', 'Konektor Cctv Male', '5.302.483', '100', '', 100, '100', '0', NULL, '2024-05-12 08:42:07', '2024-06-26 06:21:30'),
(24, 2, 60, '23090467', 'Lemari', '2.009.566', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:15:21'),
(25, 3, 87, '34951576', 'Pisau', '9.698.417', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:30:42'),
(27, 3, 94, '69768165', 'Cangkul', '7.310.786', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:17:54'),
(28, 2, 72, '73353333', 'Linggis', '4.598.473', '2', '', 2, 'kosong', 'yes', NULL, '2024-05-12 08:42:07', '2024-05-12 08:42:50'),
(29, 4, 56, '56443175', 'Kunci Inggris', '4.549.696', '2', '', 2, '2', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:20:59'),
(30, 4, 79, '96071395', 'Bor', '4.149.962', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:24:34'),
(31, 1, 3, '40024912', 'Mouse', '2.002.592', '67', '', 67, 'tersedia', 'yes', NULL, '2024-05-12 08:42:07', '2024-05-12 08:42:50'),
(33, 2, 19, '31078633', 'Tinta', '3.146.311', '60', '', 60, '60', '0', NULL, '2024-05-12 08:42:07', '2024-06-26 04:49:45'),
(34, 3, 39, '60927599', 'Sapu', '2.017.264', '3', '', 3, '3', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:20:07'),
(35, 2, 98, '90372676', 'Meteran', '5.786.764', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:19:35'),
(36, 2, 29, '88127601', 'Pembersih Laptop', '7.709.375', '1', '', 1, 'kosong', 'yes', NULL, '2024-05-12 08:42:07', '2024-05-12 08:42:50'),
(37, 4, 3, '69421751', '1 set obeng', '3.161.498', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:18:52'),
(38, 3, 83, '47819660', 'Meja Pingpong', '2.176.935', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:19:14'),
(39, 4, 35, '42145814', 'Tang Kabel', '8.372.924', '1', '', 1, '1', '0', NULL, '2024-05-12 08:42:07', '2024-06-05 03:23:18'),
(40, 4, 0, '12122344', 'Parang', '', '2', '', 2, '2', '0', NULL, '2024-05-16 00:55:38', '2024-05-16 03:29:28'),
(42, 2, 0, '33430483', 'Kuku Exsa', '', '2', '', 2, '2', '0', NULL, '2024-05-16 03:28:38', '2024-05-16 03:30:52'),
(43, 1, 0, '03849424', 'Konektor Cctv Female', '', '100', '', 100, '100', '0', NULL, '2024-06-05 03:14:46', '2024-06-26 05:58:35'),
(44, 1, 0, '04389428', 'keyboard', '', '3', '', 3, '3', '0', NULL, '2024-06-05 03:17:23', '2024-06-05 03:17:23'),
(45, 1, 0, '34324355', 'Tester Kabel Utp', '', '2', '', 2, '2', '0', NULL, '2024-06-05 03:24:08', '2024-06-05 03:24:09'),
(46, 4, 0, '34350495', 'Tang Crimping Kabel', '', '1', '', 1, '1', '0', NULL, '2024-06-05 03:26:07', '2024-06-05 03:26:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--
CREATE TABLE `failed_jobs` (
 `id` BIGINT(20) UNSIGNED NOT NULL,
 `uuid` VARCHAR(255) NOT NULL,
 `connection` TEXT NOT NULL,
 `queue` TEXT NOT NULL,
 `payload` LONGTEXT NOT NULL,
 `exception` LONGTEXT NOT NULL,
 `failed_at` TIMESTAMP NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--
CREATE TABLE `groups` (
 `group_id` INT(10) UNSIGNED NOT NULL,
 `group_name` VARCHAR(255) DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_pages`
--
CREATE TABLE `group_pages` (
 `gp_id` INT(10) UNSIGNED NOT NULL,
 `group_id` BIGINT(20) UNSIGNED DEFAULT NULL,
 `page_id` BIGINT(20) UNSIGNED DEFAULT NULL,
 `access` VARCHAR(255) DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--
CREATE TABLE `jenis_barang` (
 `id_jb` INT(10) UNSIGNED NOT NULL,
 `jenis_barang` VARCHAR(255) DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis_barang`
--
INSERT INTO `jenis_barang` (`id_jb`, `jenis_barang`, `created_at`, `updated_at`) VALUES
(1, 'Elektronik & Komputer', '2024-05-12 08:42:07', '2024-05-12 08:42:07'),
(2, 'Perlengkapan Kantor', '2024-05-12 08:42:07', '2024-05-12 08:42:07'),
(3, 'Perlengkapan Umum', '2024-05-12 08:42:07', '2024-05-12 08:42:07'),
(4, 'Alat Kontruksi & Pemeliharaan', '2024-05-12 08:42:07', '2024-05-12 08:42:07'),
(5, 'Perlengkapan Keamanan & Keselamatan', '2024-05-12 08:42:07', '2024-05-12 08:42:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--
CREATE TABLE `migrations` (
 `id` INT(10) UNSIGNED NOT NULL,
 `migration` VARCHAR(255) NOT NULL,
 `batch` INT(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_18_070208_create_barangs_table', 1),
(6, '2023_10_20_005443_create_assets_table', 1),
(7, '2023_10_21_051538_jenis_barang', 1),
(8, '2023_10_24_050756_create_peminjamans_table', 1),
(9, '2023_11_03_073252_add_is_admin_to_users_table', 1),
(10, '2023_11_06_023320_create_groups_table', 1),
(11, '2023_11_06_023335_create_pages_table', 1),
(12, '2023_11_06_023342_create_group_pages_table', 1),
(13, '2023_11_09_031924_add_status_to_peminjamans_table', 1),
(14, '2023_11_23_025217_change_sisa_column_type_in_barang_table', 1),
(15, '2024_05_12_163324_remove_jenis_barang_from_barangs', 1),
(16, '2024_05_12_163621_remove_jenis_barang_from_barangs', 1),
(17, '2024_05_12_163936_remove_jenis_barang_from_barang', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--
CREATE TABLE `pages` (
 `page_id` INT(10) UNSIGNED NOT NULL,
 `page_name` TEXT DEFAULT NULL,
 `action` VARCHAR(255) DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--
CREATE TABLE `password_reset_tokens` (
 `email` VARCHAR(255) NOT NULL,
 `token` VARCHAR(255) NOT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamans`
--
CREATE TABLE `peminjamans` (
 `id` BIGINT(20) UNSIGNED NOT NULL,
 `id_barang` BIGINT(20) UNSIGNED NOT NULL,
 `id_user` BIGINT(20) UNSIGNED NOT NULL,
 `id_pic` BIGINT(20) UNSIGNED NOT NULL,
 `qty_barang` VARCHAR(255) NOT NULL,
 `image` VARCHAR(255) DEFAULT NULL,
 `image_new` VARCHAR(255) DEFAULT NULL,
 `sisa_barang` VARCHAR(255) NOT NULL,
 `mark` VARCHAR(255) NOT NULL,
 `tgl_pinjam` DATETIME DEFAULT NULL,
 `tgl_kembali` DATETIME DEFAULT NULL,
 `tgl_kembali_real` VARCHAR(255) DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL,
 `status` ENUM('menunggu','diterima','ditolak','selesai','telat') NOT NULL DEFAULT 'menunggu'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `peminjamans`
--
INSERT INTO `peminjamans` (`id`, `id_barang`, `id_user`, `id_pic`, `qty_barang`, `image`, `image_new`, `sisa_barang`, `mark`, `tgl_pinjam`, `tgl_kembali`, `tgl_kembali_real`, `created_at`, `updated_at`, `status`) VALUES
(22, 23, 2, 97, '1', '', NULL, '', '1', '2024-06-26 14:11:14', '2024-06-27 00:00:00', '2024-06-26 14:12:26', '2024-06-26 06:11:14', '2024-06-26 06:12:26', 'selesai'),
(23, 23, 2, 97, '1', '', NULL, '', 'ty', '2024-06-26 14:20:37', '2024-06-27 00:00:00', '2024-06-26 14:21:26', '2024-06-26 06:20:37', '2024-06-26 06:21:26', 'selesai'),
(24, 9, 2, 71, '24', '', NULL, '', 'ty', '2024-06-26 14:29:26', '2024-06-26 00:00:00', '2024-06-26 14:41:26', '2024-06-26 06:29:26', '2024-06-26 06:41:26', 'telat'),
(25, 9, 2, 71, '1', '', NULL, '', 'ty', '2024-06-26 14:41:47', '2024-06-27 00:00:00', '2024-06-26 14:42:37', '2024-06-26 06:41:47', '2024-06-26 06:42:37', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--
CREATE TABLE `personal_access_tokens` (
 `id` BIGINT(20) UNSIGNED NOT NULL,
 `tokenable_type` VARCHAR(255) NOT NULL,
 `tokenable_id` BIGINT(20) UNSIGNED NOT NULL,
 `name` VARCHAR(255) NOT NULL,
 `token` VARCHAR(64) NOT NULL,
 `abilities` TEXT DEFAULT NULL,
 `last_used_at` TIMESTAMP NULL DEFAULT NULL,
 `expires_at` TIMESTAMP NULL DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
CREATE TABLE `users` (
 `id` BIGINT(20) UNSIGNED NOT NULL,
 `name` VARCHAR(255) NOT NULL,
 `email` VARCHAR(255) NOT NULL,
 `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
 `password` VARCHAR(255) NOT NULL,
 `group_id` VARCHAR(255) DEFAULT NULL,
 `nik_pic` VARCHAR(255) NOT NULL,
 `remember_token` VARCHAR(100) DEFAULT NULL,
 `created_at` TIMESTAMP NULL DEFAULT NULL,
 `updated_at` TIMESTAMP NULL DEFAULT NULL,
 `is_admin` ENUM('admin','pic','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `group_id`, `nik_pic`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Admin', 'admin@id', NULL, '$2y$10$QOkG8reVFfV3A6c93TOQ1uzMI30fR1/MMneul4gZHGoj0vKLSOxPG', '1', '12345678', NULL, '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'admin'),
(2, 'ayu', 'ayu@id', NULL, '$2y$10$UYMRZe9uSgqACWEF5ouAS.cOv0JVrNfddAUOLEbMY84B.7sdgUw6e', '1', '12345678', NULL, '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(3, 'Safina Rahayu', 'orahimah@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '27328222', 'hCixf04mXbAz5Vwne2HXALcHXTeV1S8W6Qab9CGeFaS9OOBVZ4F5pFgRvoaH', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(4, 'Cahya Gunawan', 'zalindra93@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '85221090', 'YjhltIBdyuQ4WcvOU3DOhSPkKDn4zeZnPsAr9jm88Eao59FB5YB8GHSzSsea', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(5, 'Gawati Nurdiyanti S.E.I', 'bagus96@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '40570068', '11983435', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(6, 'Ridwan Jaka Siregar S.Ked', 'oliva.nasyidah@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '88441572', '86036996', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(7, 'Lintang Cici Nuraini S.T.', 'xharyanti@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '73890951', '8318562', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(8, 'Umi Natalia Halimah', 'fujiati.ika@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '85426095', '11710224', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(9, 'Wardaya Gading Prasetya S.E.', 'nasyidah.violet@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '74130473', '42551239', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(10, 'Aslijan Siregar', 'yolanda.elma@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '50769373', '9177016', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(11, 'Dalima Titin Puspasari', 'limar.sitorus@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '69423976', '54477030', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(12, 'Nurul Tania Riyanti S.T.', 'maida.suryono@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '42043595', '6618575', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(13, 'Ajiman Pranata Sinaga', 'vanesa20@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '40910093', '11239678', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(14, 'Farhunnisa Vera Andriani S.Kom', 'utami.wira@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '80231001', '36698282', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(15, 'Sarah Lala Yulianti', 'mahdi32@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '94208717', '39056816', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(16, 'Cornelia Yuliarti', 'elisa.irawan@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '2488204', '32101899', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(17, 'Yunita Wastuti S.E.I', 'jaeman68@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '67878849', '66573410', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(18, 'Michelle Cornelia Puspita S.Pt', 'sitompul.baktiono@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '40276875', '2140054', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(19, 'Adiarja Tarihoran', 'adriansyah.febi@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '32758234', '53209950', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(20, 'Bakidin Dwi Hidayanto', 'lembah.marbun@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '48463699', '85570079', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(21, 'Anastasia Usada', 'marpaung.kasiyah@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '36701592', '97297587', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(22, 'Puspa Yunita Wastuti S.Gz', 'tamba.gasti@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '20966676', '51904971', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(23, 'Nasrullah Elon Nababan S.Ked', 'jdongoran@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '98419383', '24462530', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(24, 'Dimas Bajragin Ramadan M.Ak', 'xpangestu@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '96520587', '14533439', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(25, 'Viktor Sitompul S.Psi', 'blestari@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '43422315', '78497953', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(26, 'Arsipatra Waluyo', 'jatmiko51@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '85846060', '26482898', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(27, 'Salsabila Hartati M.Pd', 'yunita.kuswandari@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '5751527', '69937919', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(28, 'Kasim Warsa Simbolon S.E.I', 'icha.saragih@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '92185604', '54554098', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(29, 'Tirtayasa Napitupulu', 'lala.setiawan@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '19022365', '77076857', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(30, 'Vera Ratna Suryatmi', 'januar.ilsa@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '35544841', '2267863', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(31, 'Jarwi Dalimin Prayoga S.Psi', 'wirda93@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '37180075', '23114024', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(32, 'Bahuwirya Maryadi S.Pt', 'luis.uwais@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '77215314', '28089346', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(33, 'Yoga Putra S.H.', 'sidiq.rahayu@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '76549852', '39762842', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(34, 'Laksana Waskita', 'zelda.suwarno@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '17764523', '1099729', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(35, 'Mahfud Lazuardi S.Gz', 'tomi.puspasari@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '1852927', '37828056', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(36, 'Karen Oktaviani', 'mitra61@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '90132225', '33677092', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(37, 'Irwan Mandala', 'wijayanti.dirja@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '71790969', '94828674', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(38, 'Endra Kemal Wahyudin S.Psi', 'halimah.cahyono@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '95078290', '83725190', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(39, 'Siti Rahayu Farida', 'wakiman.riyanti@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '44094020', '17752343', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(40, 'Unjani Handayani', 'lurhur.purnawati@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '30708937', '79243100', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(41, 'Ina Aryani', 'maida99@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '41432676', '26463239', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(42, 'Tantri Wijayanti S.Kom', 'galiono.permata@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '20339530', '3505158', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(43, 'Julia Mutia Andriani S.Psi', 'ophelia.pratiwi@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '338112', '68303414', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(44, 'Winda Hariyah', 'bprastuti@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '35099011', '83693359', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(45, 'Cemani Wacana', 'sakura.melani@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '47315407', '24457181', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(46, 'Maida Diah Yolanda S.T.', 'kpurwanti@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '35916562', '47995619', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(47, 'Murti Simanjuntak', 'vnatsir@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '20032483', '40908250', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(48, 'Teguh Gatot Wasita M.Farm', 'yono19@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '89649977', '94165442', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(49, 'Vivi Unjani Maryati', 'rahayu.jasmani@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '32668192', '51404495', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(50, 'Jamil Suwarno', 'gmansur@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '59579968', '66524780', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(51, 'Farah Laksmiwati', 'mulyani.patricia@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '42483257', '90282013', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(52, 'Ida Usamah', 'vdamanik@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '28873600', '51382867', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(53, 'Rika Pratiwi S.E.I', 'cinta.manullang@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '67910174', '18976710', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(54, 'Kani Zulaika S.H.', 'hidayat.janet@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '66135371', '31605149', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(55, 'Ayu Chelsea Anggraini', 'ipadmasari@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '11158907', '67252249', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(56, 'Bahuwirya Karma Maulana S.Gz', 'usuryatmi@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '56963130', '95457621', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(57, 'Hendri Setiawan S.Psi', 'wastuti.teguh@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '26767723', '11403735', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(58, 'Uli Zulaika S.Psi', 'prasetyo36@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '56684907', '74906321', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(59, 'Hardi Pratama', 'latika.zulaika@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '9653686', '67862069', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(60, 'Gabriella Hamima Kusmawati', 'galak.tarihoran@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '53150890', '32470810', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(61, 'Sari Rahimah', 'aryani.yani@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '5806951', '50829535', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(62, 'Samiah Melani', 'gilang.nashiruddin@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '53596383', '10916614', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(63, 'Mumpuni Ilyas Habibi M.M.', 'owibisono@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '12685563', '51480672', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(64, 'Naradi Hadi Siregar M.Kom.', 'pangestu.mandala@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '40334415', '71085810', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(65, 'Dinda Lestari', 'gambira53@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '88381088', '77943219', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(66, 'Wasis Sihotang', 'daniswara.hutasoit@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '71694777', '61085636', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(67, 'Faizah Fujiati M.M.', 'bajragin15@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '72037709', '72026928', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(68, 'Anastasia Sudiati', 'vsaputra@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '6609050', '12118645', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(69, 'Kani Jamalia Kusmawati S.E.I', 'damu.riyanti@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '42386150', '70464479', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(70, 'Kania Shania Pratiwi S.Farm', 'karen.usamah@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '3191673', '16226132', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(71, 'Rahmi Haryanti M.Farm', 'widodo.anita@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '47162761', '95918290', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(72, 'Karen Andriani S.I.Kom', 'onababan@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '10816453', '47387820', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(73, 'Lanang Mustofa', 'wira.puspita@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '29383173', '89656681', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(74, 'Anastasia Pertiwi', 'limar.megantara@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '51661891', '67934923', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(75, 'Ulva Puspita', 'ypranowo@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '71355748', '72691957', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(76, 'Puji Mulyani', 'pranowo.slamet@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '82886490', '6873351', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(77, 'Lega Mansur', 'kuswandari.prabowo@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '60962376', '63996424', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(78, 'Maimunah Nurdiyanti', 'kamidin.situmorang@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '15435020', '90119161', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(79, 'Rosman Marbun', 'hasanah.gadang@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '15400798', '56012605', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(80, 'Argono Tri Nainggolan', 'salsabila78@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '77356474', '90690990', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(81, 'Ika Agustina', 'rahimah.pandu@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '99716520', '17660379', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(82, 'Harjaya Maheswara S.Gz', 'wardi90@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '47015883', '79960626', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(83, 'Yulia Kuswandari M.Ak', 'nkusmawati@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '48416633', '40816721', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(84, 'Samsul Mangunsong', 'kani.napitupulu@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '92190296', '72044435', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(85, 'Rudi Gandi Prasasta S.Pd', 'jasmani15@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '50172770', '51963044', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(86, 'Tira Usamah M.Ak', 'lili.safitri@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '31210551', '88321017', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(87, 'Asmadi Winarno', 'gunawan.farhunnisa@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '10809373', '56296904', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(88, 'Timbul Nainggolan', 'kartika27@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '99430584', '71415727', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(89, 'Natalia Wani Yolanda S.E.', 'shariyah@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '77620487', '62913168', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(90, 'Galih Januar', 'simanjuntak.darmaji@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '39624087', '48570821', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(91, 'Bella Hartati', 'balamantri69@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '94971938', '29400095', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(92, 'Mujur Latupono', 'galur.wastuti@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '43663009', '88915355', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(93, 'Harjo Pranowo', 'pudjiastuti.wasis@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '10773456', '92542550', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(94, 'Jessica Palastri', 'vmangunsong@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '33370112', '68963908', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(95, 'Galak Siregar', 'laras91@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '45410490', '62249835', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(96, 'Bakiono Bakiadi Irawan', 'vmayasari@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '85948063', '527666', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(97, 'Syahrini Wijayanti M.Farm', 'dwasita@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '45380061', '35486203', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(98, 'Jati Damanik S.E.', 'mpurwanti@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '47390825', '8000283', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(99, 'Darsirah Lamar Lazuardi', 'wahyudin.kunthara@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '87092430', '15128642', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(100, 'Yunita Mila Yulianti', 'vanesa.maheswara@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '75450019', '17851028', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(101, 'Kambali Murti Rajata S.Sos', 'prasetya90@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '52637120', '27824140', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(102, 'admin', 'admin@id', NULL, '$2y$10$tvbJZzNXkOyDZdL1Uc/VeORRAdEofPD/C9snT/88ssmAoIEwH.RrO', '1', '12345678', NULL, '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(103, 'Sakura Padmasari S.E.', 'damanik.yuliana@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '56708766', '45820125', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(104, 'Gasti Agustina', 'tfirgantoro@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '62500040', '65721475', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(105, 'Ciaobella Lestari S.Pd', 'janet.sihombing@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '54421172', '70595059', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(106, 'Usyi Janet Laksmiwati', 'kuswandari.elma@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '562251', '93767239', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(107, 'Tirta Napitupulu', 'kairav.oktaviani@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '60642500', '63719239', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(108, 'Indra Gunawan', 'uli.haryanti@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '89485378', '60262132', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(109, 'Vanya Kusmawati', 'qsuwarno@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '76881085', '65935994', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(110, 'Victoria Ayu Wijayanti S.H.', 'faizah.yolanda@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '10373838', '20090676', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(111, 'Suci Intan Utami S.Psi', 'febi.suwarno@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '22873320', '88929827', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(112, 'Diah Rahayu', 'maryati.nalar@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '30058350', '99898536', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(113, 'Keisha Puspita M.Farm', 'elvin.prasetya@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '96441369', '94753336', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(114, 'Talia Paramita Suryatmi', 'taufan.namaga@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '74784089', '73001639', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(115, 'Ira Karen Mandasari', 'cornelia.habibi@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '40029069', '2471674', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(116, 'Cengkir Dadap Natsir', 'ivan07@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '71531257', '6537174', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(117, 'Malika Usamah', 'maria.kuswandari@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '59037039', '29328077', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(118, 'Tantri Padmasari', 'ghaliyati.saefullah@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '89523439', '4672673', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(119, 'Diah Ilsa Rahayu M.Pd', 'xlestari@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '19885084', '82189956', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(120, 'Lanjar Wacana', 'opan89@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '54823416', '55919227', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(121, 'Tasnim Lutfan Santoso M.Kom.', 'langgeng.maryati@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '34730052', '60193955', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(122, 'Julia Aryani M.Pd', 'hastuti.fathonah@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '89290045', '71943149', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(123, 'Hasna Zulaika', 'xmaheswara@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '92304995', '87886904', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(124, 'Rendy Prakasa', 'maheswara.karen@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '54067886', '14315129', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(125, 'Ana Maida Sudiati', 'radit.suryatmi@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5246136', '64745857', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(126, 'Bagas Latupono', 'irahmawati@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7875282', '42293305', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(127, 'Oman Mandala', 'sihombing.lembah@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '55176536', '63022163', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(128, 'Nadia Wastuti S.E.I', 'ella.susanti@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '95358151', '44071855', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(129, 'Harsana Budiyanto S.Pt', 'utama.zulfa@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '20561893', '38446437', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(130, 'Purwadi Hendra Sihombing', 'gmandala@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '9775822', '91362663', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(131, 'Emil Reza Dongoran', 'hutapea.gambira@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '43081610', '34853657', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(132, 'Rahmi Julia Suryatmi', 'wasita.ami@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '53358014', '72925015', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(133, 'Jamal Mulyono Wasita M.Farm', 'prastuti.kuncara@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '37855728', '42824516', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(134, 'Atmaja Darmaji Saefullah', 'michelle42@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8157070', '52849179', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(135, 'Ifa Pudjiastuti S.Kom', 'hidayanto.paris@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '30943873', '72369620', '2024-05-12 08:42:06', '2024-05-12 08:42:06', 'user'),
(136, 'Makara Budiyanto', 'natalia.hastuti@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '79304026', '40617037', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(137, 'Diah Purnawati', 'atmaja41@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '28270353', '22548949', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(138, 'Gading Rajasa', 'pjanuar@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '30051454', '47144251', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(139, 'Ismail Gandewa Situmorang S.Pt', 'cayadi.nugroho@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '68272434', '66887456', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(140, 'Mujur Jagapati Widodo', 'laksita.luluh@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '75585412', '30466005', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(141, 'Purwanto Kuswoyo', 'ganjaran.wibowo@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '62205613', '22724102', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(142, 'Hadi Ibrahim Najmudin S.E.I', 'halimah.kiandra@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '19522728', '55967507', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(143, 'Rusman Saputra', 'zulfa.sihombing@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '38142999', '29010248', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(144, 'Tira Hasanah S.Pt', 'gsaptono@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '26564955', '18244641', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(145, 'Kamaria Maria Sudiati', 'uyainah.uchita@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '90691662', '65991915', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(146, 'Lantar Habibi', 'gfarida@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '32581127', '85944491', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(147, 'Talia Ajeng Permata S.H.', 'elvina.rahayu@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '67042844', '31286316', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(148, 'Ika Sadina Yulianti', 'kpranowo@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '12234811', '79799782', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(149, 'Emong Lazuardi S.Pd', 'jane.mulyani@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '40345221', '33045779', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(150, 'Ajimat Narji Hidayat', 'samosir.purwadi@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '60239678', '84674919', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(151, 'Sakura Suci Nasyidah', 'hasanah.kasiyah@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '64945273', '63092653', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(152, 'Fitria Kuswandari M.Kom.', 'estiono73@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '17914874', '28071311', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(153, 'Panji Harja Ramadan', 'ira.suwarno@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '12695837', '55275053', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(154, 'Cindy Palastri', 'winda73@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '24405770', '55927812', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(155, 'Sidiq Jailani M.Kom.', 'rahmi05@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '71397056', '84259849', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(156, 'Dina Wahyuni', 'alambana.suryatmi@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '83217369', '33964799', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(157, 'Gatra Jefri Latupono', 'samiah89@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '59552406', '49245202', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(158, 'Elvina Nasyiah', 'euwais@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '8442718', '65769072', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(159, 'Kamaria Prastuti', 'ajimat.pangestu@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '56464146', '90061348', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(160, 'Cinta Palastri M.Pd', 'budiyanto.yoga@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '54344825', '24500965', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(161, 'Harja Nainggolan', 'kenari.rahayu@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '36817098', '21787434', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(162, 'Daliono Wijaya', 'hassanah.raden@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '28207609', '7842850', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(163, 'Lala Padmasari', 'hnainggolan@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '71931423', '52079762', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(164, 'Niyaga Januar', 'daruna42@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '33664126', '82042187', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(165, 'Cemplunk Nasab Waskita', 'wastuti.luwes@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '6624533', '17028932', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(166, 'Laras Farah Mulyani', 'sabri.setiawan@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '98997414', '85398139', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(167, 'Galar Endra Wasita', 'ani99@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '57154896', '86617414', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(168, 'Zamira Rahayu S.I.Kom', 'ulya93@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '65854247', '24000513', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(169, 'Aisyah Wulandari', 'pardi46@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '48094438', '91988722', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(170, 'Lintang Eva Sudiati S.H.', 'ghastuti@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '58058412', '57397725', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(171, 'Catur Santoso', 'gharyanti@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '86491738', '91873848', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(172, 'Yuni Susanti', 'ratih86@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '30417019', '47596292', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(173, 'Jagapati Thamrin', 'rahmi.marpaung@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '63654270', '24173153', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(174, 'Aisyah Aryani', 'dian27@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '11960657', '90564386', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(175, 'Panji Prasetya', 'wawan.puspita@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '7239068', '85700244', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(176, 'Luwar Anggriawan', 'xhalimah@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '40003225', '62016122', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(177, 'Daliono Wasita', 'harjo.hariyah@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '27416438', '5139028', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(178, 'Ibrahim Damanik', 'yoga78@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '43450554', '74843779', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(179, 'Opan Olga Sitorus', 'kambali.hastuti@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '24871260', '4794537', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(180, 'Jaeman Marbun', 'nurul.permadi@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '88715979', '82763677', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(181, 'Nasim Hakim', 'saputra.ghani@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '2023300', '82749350', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(182, 'Diana Farida', 'wijayanti.kayla@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '21046800', '39213664', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(183, 'Putri Oni Rahimah', 'bambang36@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '37904977', '85492554', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(184, 'Maida Dewi Haryanti', 'hutasoit.queen@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '74318003', '87753133', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(185, 'Adika Sirait', 'yolanda.maria@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '36995485', '81568863', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(186, 'Aditya Winarno', 'vwulandari@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '5551121', '62024570', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(187, 'Novi Hassanah M.TI.', 'sarah.farida@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '80931559', '6261628', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(188, 'Citra Yulianti', 'belinda19@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '94408549', '12719351', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(189, 'Tugiman Putra', 'yusada@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '92273191', '44428247', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(190, 'Vega Dadap Saefullah', 'apurwanti@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '80123137', '88134067', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(191, 'Karimah Kuswandari', 'harja.rahayu@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '97400495', '10667376', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(192, 'Ida Puspasari S.Kom', 'novitasari.jagapati@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '9562925', '62483361', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(193, 'Harjaya Anggriawan', 'mustika.hassanah@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '56848094', '61764240', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(194, 'Garan Lazuardi S.Farm', 'ifa.lailasari@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '91640702', '44561070', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(195, 'Jessica Zalindra Purwanti M.Pd', 'cinthia16@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '98371973', '19454934', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(196, 'Yuliana Restu Purwanti S.Pd', 'xkusumo@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '34585827', '20229685', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(197, 'Ganda Elon Permadi S.I.Kom', 'wira26@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '98917032', '81627619', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(198, 'Qori Permata', 'dinda95@example.com', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '71530387', '8689917', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(199, 'Laras Puji Maryati M.Pd', 'phariyah@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '37216434', '5429007', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(200, 'Shania Pertiwi', 'vsaefullah@example.org', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2', '72399286', '11180962', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(201, 'Galur Ihsan Suwarno', 'nasyidah.wardi@example.net', '2024-05-12 08:42:06', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1', '30959577', '86257336', '2024-05-12 08:42:07', '2024-05-12 08:42:07', 'user'),
(202, 'bagus', 'bagus@id', NULL, '$2y$10$e50RHkqoj8w/RXWe7EjMwOS2alCOjQKoD3K8Fk/pSTPu1lLWRvN3.', NULL, '12713817', NULL, '2024-06-05 19:28:41', '2024-06-05 19:28:41', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assets`
--
ALTER TABLE `assets` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs` ADD PRIMARY KEY (`id_barang`), ADD UNIQUE KEY `barangs_barcode_unique` (`barcode`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups` ADD PRIMARY KEY (`group_id`);

--
-- Indeks untuk tabel `group_pages`
--
ALTER TABLE `group_pages` ADD PRIMARY KEY (`gp_id`);

--
-- Indeks untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang` ADD PRIMARY KEY (`id_jb`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages` ADD PRIMARY KEY (`page_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens` ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans` ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`), ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `assets`
--
ALTER TABLE `assets` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs` MODIFY `id_barang` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups` MODIFY `group_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `group_pages`
--
ALTER TABLE `group_pages` MODIFY `gp_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_barang`
--
ALTER TABLE `jenis_barang` MODIFY `id_jb` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations` MODIFY `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages` MODIFY `page_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peminjamans`
--
ALTER TABLE `peminjamans` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users` MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203; COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
