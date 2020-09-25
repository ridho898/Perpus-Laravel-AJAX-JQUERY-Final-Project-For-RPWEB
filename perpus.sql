-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2019 pada 04.02
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nip`, `nama`, `alamat`, `notelp`, `avatar`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1234567', 'admin', 'jl perjuangan 11', '085251555635', 'avatars/RG4g3GDBMfZF0NHKqgKBP0ZKaAOHdp5b6BrftxA3.jpeg', 48, '2019-06-05 06:03:00', '2019-06-08 23:14:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_terbit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_eksemplar` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sampul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `tahun_terbit`, `penerbit`, `penulis`, `jumlah_eksemplar`, `created_at`, `updated_at`, `sampul`) VALUES
(1, 'Buku Pelajaran Ilmu Kimia Untuk SMU Kelas 1', '1998', 'Erlangga', 'Soetopo Hidayat', 12, '2019-06-05 01:15:17', '2019-06-14 23:07:42', 'sampuls/7MZCx1RfBA2tV97CM3XEfyf1JxOSIGaDXycnwKYW.jpeg'),
(2, 'Bina Fikih Untuk Kelas 2 Madrasah Ibtidaiyah', '1996', 'Erlangga', 'Bima Hidayat', 8, '2019-06-05 01:17:51', '2019-06-09 01:23:40', 'sampuls/wtOW2XgQiwAUHWDqDde3EYt50Kq93Ca85ST2Epju.jpeg'),
(3, 'Biologi Untuk SMA/MA Kelas XII', '2008', 'Erlangga', 'Soeharno, Bambang S.', 28, '2019-06-05 01:20:14', '2019-06-07 14:30:32', 'sampuls/hqvzoVuVkVMQbzB32awPe7olmvSPrgCs0KPCXjsb.jpeg'),
(4, 'Pendidikan Jasmani, Olahraga, Dan Kesehatan', '2014', 'Erlangga', 'Muhajir', 100, '2019-06-05 01:22:45', '2019-06-05 01:22:45', 'sampuls/jnQCpUZqpIZ0PtISr0cAkm7ybpbnjuRURoXcikRv.jpeg'),
(5, 'Buku Siswa Aktif dan Kreatif Belajar Geografi Untuk Sekolah Menengah Atas/Madrasah Aliyah Kelas X', '2014', 'Grafindo Mediapratama', 'Lili Somantri', 100, '2019-06-05 01:26:11', '2019-06-05 01:26:11', 'sampuls/cfjMJ77f6zmvOnLarsoeLNalr4zOtPvBx719v4fh.png'),
(6, 'Ekonomi Politik Internasional Konsep Dan Teori 1', '1998', 'Erlangga', 'Drs. Yanuar Ikbar, M.A.', 10, '2019-06-05 01:30:33', '2019-06-05 01:30:33', 'sampuls/cP6gIWUO0sxhbYTXNdH6vDLO5sBOcb0ewJjrRPWn.jpeg'),
(7, 'Buku Siswa Matematika Peminatan Matematika dan Ilmu Alam Untuk SMA/MA Kelas X', '2015', 'Mediatama', 'Suparmin', 40, '2019-06-05 01:32:29', '2019-06-05 01:32:29', 'sampuls/olwRjdh0HTVEy01Y9bg8se4yjxHUN5lN1ymqrfTm.jpeg'),
(8, 'Matematika Untuk SMA Kelas X Vol. 1', '2008', 'Erlangga', 'Noormandiri', 100, '2019-06-05 01:33:52', '2019-06-05 01:34:44', 'sampuls/uRWBJLk0MXVA0klp6Ol0qYHU2GXmaUL8C1p0Rym0.jpeg'),
(9, 'Matematika Untuk SMA Kelas XI Vol.2', '2008', 'Erlangga', 'Noormandiri', 100, '2019-06-05 01:36:08', '2019-06-05 01:36:08', 'sampuls/dcaS2EuLUr7fvNgo2gertUXBZMMBZ1JsbR7zrhJQ.png'),
(10, 'Matematika Untuk SMA/MA Kelas XII Vol.3', '2015', 'Erlangga', 'Sukino', 200, '2019-06-05 01:37:20', '2019-06-05 01:37:20', 'sampuls/O3uKxHAw4XFSDEyiBaYR8xSvGgyjA4DYlnBiBJgL.jpeg'),
(11, 'Matematika Untuk SMA/MA Kelas X Kelompok Wajib Vol. 1', '2015', 'Erlangga', 'Noormandiri', 200, '2019-06-05 01:39:04', '2019-06-05 01:39:04', 'sampuls/vWKhR81fwow0rTOoXY2eBI3DYTMDTmU19TXMeLqY.jpeg'),
(12, 'Matematika Untuk SMA/MA Kelas XII Kelompok Peminatan Matematika Dan Ilmu AlamVol. 3', '2014', 'Vratia Widya', 'Ghani Akhmad', 100, '2019-06-05 01:40:45', '2019-06-05 01:40:45', 'sampuls/i85qODoQERz649djOoieQf2VTPRdU5ReCajYpgrW.jpeg'),
(13, 'Fisika 2000 2A SMU Kelas 2', '2000', 'Erlangga', 'Marthen Kanginan', 30, '2019-06-05 01:41:59', '2019-06-05 01:41:59', 'sampuls/yx86QHeqRvVXKTtDbUOAlzpTanBiiOXB9nFaPk5F.jpeg'),
(14, 'Fisika Untuk SMA/MA Kelas XII Kelompok Peminatan Matematika dan Ilmu Alam Vol. 3', '2015', 'Erlangga', 'Marthen Kanginan', 200, '2019-06-05 01:43:39', '2019-06-05 01:43:39', 'sampuls/9FawTn07WR0cwpEDAUUkI4CaR8nE7LwgM3gVWYmk.jpeg'),
(15, 'Praktis Belajar Biologi Untuk Kelas X Sekolah Menengah Atas/Madrasah Aliyah', '2015', 'Pusat Perbukuan Departemen Pendidikan Nasional', 'Fictor Ferdinand P.', 200, '2019-06-05 01:46:00', '2019-06-05 01:46:00', 'sampuls/Gz7Vskzhxl8SBs6wYRVtbsGrMG8tiEdFyavWaGaK.jpeg'),
(16, 'Konsep Dan Penerapan Fisika SMA/MA Kelas X', '2014', 'Bailmu', 'Hari S.', 100, '2019-06-05 01:48:31', '2019-06-05 01:48:31', 'sampuls/Qif2TaDcbVxXMyfii7mpLn7aV4PpnSnaZDUIBv8T.jpeg'),
(17, 'Fisika SMA/MA Kelas XII', '2014', 'Bailmu', 'Zaki Su\'ud(ed. )', 100, '2019-06-05 01:49:37', '2019-06-05 01:49:37', 'sampuls/QRBuDMc7drxYEfOuQfjQI3swdpZZ5Bh6UPVqvi2b.jpeg'),
(18, 'Biologi 2 SMA dan MA Kelas XI', '2008', 'Esis', 'Diah Aryulina', 100, '2019-06-05 01:51:33', '2019-06-05 01:51:33', 'sampuls/NdAyQ6fFMrlF9k1lDtRKksXLyyy6M8Bk4UfPSKQz.jpeg'),
(19, 'Biologi 3 SMA dan MA Untuk Kelas XII', '2008', 'Esis', 'Diah Aryulina', 100, '2019-06-05 01:53:33', '2019-06-05 01:53:33', 'sampuls/Nbx3ipgE7XY7fEd7I3agwJHs4oTDvE0PqjAXWGCn.jpeg'),
(20, 'Bahasa Dan Sastra Indonesia SMA/MA Kelas XI Program IPA dan IPS', '2015', 'Bailmu', 'Suparno (ed. )', 200, '2019-06-05 01:56:02', '2019-06-05 01:56:11', 'sampuls/3qmcSy5tmY04G0T8Px6CocSCmgBsRKy4X21Q1ynF.jpeg'),
(21, 'Bahasa Indonesia Ekspresi Diri Dan Akademik Kelas X', '2014', 'Erlangga', 'Titiek S.', 200, '2019-06-05 01:58:02', '2019-06-05 01:58:02', 'sampuls/ErpXzW1rkKXWJgXmWdEf8M0jLGDj3FBhtaminiXc.jpeg'),
(22, 'Bahasa Indonesia Ekspresi Diri Dan Akademik SMA/MA XII Semester 2', '2015', 'Erlangga', 'Titiek S.', 100, '2019-06-05 02:00:19', '2019-06-05 02:00:19', 'sampuls/LZGECkL52vTnprki48uXLdk4vVexE1lOuWZBc7bQ.jpeg'),
(23, 'Sejarah Indonesia SMA/MA Kelas X', '2016', 'Erlangga', 'Indraini A.', 100, '2019-06-05 02:02:19', '2019-06-05 02:02:19', 'sampuls/4Sys5roQCIHn4Y1CQNg1RuxQSfWNvXDiSjWR1x3e.jpeg'),
(24, 'Sejarah Indonesia SMA/MA Kelas XI Semester 2', '2017', 'Erlangga', 'Indraini A.', 150, '2019-06-05 02:03:16', '2019-06-05 02:03:16', 'sampuls/LVhR0a2cmoVMyyrYxrhSWnEOKOpDnWE4TVkjRibD.jpeg'),
(25, 'Dilan Dia Adalah Dilanku Tahun 1990', '2014', 'Pastel Books', 'Pidi Baiq', 10, '2019-06-05 02:06:44', '2019-06-05 02:06:44', 'sampuls/tZBTrvQBBXuqkf4XcTUFi0MtvkPwIqYU7NEvo4IC.jpeg'),
(26, 'Dilan Dia Adalah Dilanku Tahun 1991', '2015', 'Pastel Books', 'Pidi Baiq', 5, '2019-06-05 02:07:45', '2019-06-05 02:07:45', 'sampuls/xjXxuojoXygO5SZDzeknSXdy1GXZoxeRkE5BwPO7.jpeg'),
(27, 'That Time I Got Reincarnated As Slime Vol. 1', '2014', 'Go Novels', 'Fuse', 5, '2019-06-05 02:10:45', '2019-06-05 02:13:00', 'sampuls/mEtNeokpszWtmfRYl4DUOqAsqhiAdZYoFZPFmqsv.png'),
(28, 'That Time I Got Reincarnated As Slime Vol. 2', '2014', 'Go Novels', 'Fuse', 5, '2019-06-05 02:12:31', '2019-06-05 02:12:31', 'sampuls/OvHg2abfCAJRHHEHpHj4xTWpICGa1retNccJa5w1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_kategori`
--

CREATE TABLE `buku_kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku_kategori`
--

INSERT INTO `buku_kategori` (`id`, `buku_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, NULL),
(2, 1, 35, NULL, NULL),
(3, 2, 4, NULL, NULL),
(4, 2, 26, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 3, 36, NULL, NULL),
(7, 4, 7, NULL, NULL),
(8, 4, 39, NULL, NULL),
(9, 5, 7, NULL, NULL),
(10, 5, 40, NULL, NULL),
(11, 6, 4, NULL, NULL),
(12, 6, 29, NULL, NULL),
(13, 7, 7, NULL, NULL),
(14, 7, 33, NULL, NULL),
(16, 8, 33, NULL, NULL),
(17, 8, 6, NULL, NULL),
(18, 9, 6, NULL, NULL),
(19, 9, 33, NULL, NULL),
(20, 10, 7, NULL, NULL),
(21, 10, 33, NULL, NULL),
(22, 11, 7, NULL, NULL),
(23, 11, 33, NULL, NULL),
(24, 12, 7, NULL, NULL),
(25, 12, 33, NULL, NULL),
(26, 13, 4, NULL, NULL),
(27, 13, 34, NULL, NULL),
(28, 14, 7, NULL, NULL),
(29, 14, 34, NULL, NULL),
(30, 15, 7, NULL, NULL),
(31, 15, 36, NULL, NULL),
(32, 16, 7, NULL, NULL),
(33, 16, 34, NULL, NULL),
(34, 17, 7, NULL, NULL),
(35, 17, 34, NULL, NULL),
(36, 18, 6, NULL, NULL),
(37, 18, 36, NULL, NULL),
(38, 19, 6, NULL, NULL),
(39, 19, 36, NULL, NULL),
(40, 20, 7, NULL, NULL),
(41, 20, 31, NULL, NULL),
(42, 21, 7, NULL, NULL),
(43, 21, 31, NULL, NULL),
(44, 22, 7, NULL, NULL),
(45, 22, 31, NULL, NULL),
(46, 23, 7, NULL, NULL),
(47, 23, 40, NULL, NULL),
(48, 24, 7, NULL, NULL),
(49, 24, 40, NULL, NULL),
(50, 25, 41, NULL, NULL),
(51, 26, 41, NULL, NULL),
(52, 27, 41, NULL, NULL),
(53, 28, 41, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(4, 'Buku Pendidikan Kurikulum 1994', 'Null.', '2019-06-04 06:39:33', '2019-06-04 06:39:33'),
(5, 'Buku Pendidikan Rintisan Kurikulum Berbasis Kompetensi(KBK)', 'Null.', '2019-06-04 06:40:15', '2019-06-04 06:40:15'),
(6, 'Buku Pendidikan Kurikulum Tingkat Satuan Pendidikan(KTSP)', 'Null.', '2019-06-04 06:40:51', '2019-06-04 06:40:51'),
(7, 'Buku Pendidikan Kurikulum 2013', 'Null.', '2019-06-04 06:41:25', '2019-06-04 06:41:25'),
(21, 'Publikasi Umum, informasi umum dan komputer', 'Null.', '2019-06-05 01:06:22', '2019-06-05 01:06:22'),
(22, 'Ensiklopedia', 'Null.', '2019-06-05 01:06:46', '2019-06-05 01:06:46'),
(23, 'Majalah dan Jurnal', 'Null.', '2019-06-05 01:07:09', '2019-06-05 01:07:09'),
(25, 'Filsafat dan Psikologi', 'Null.', '2019-06-05 01:07:38', '2019-06-05 01:07:38'),
(26, 'Agama', 'Null.', '2019-06-05 01:07:51', '2019-06-05 01:07:51'),
(27, 'Ilmu sosial, sosiologi dan antropologi', 'Ilmu sosial, sosiologi dan antropologi', '2019-06-05 01:08:18', '2019-06-05 01:08:18'),
(28, 'Statistik', 'Statistik', '2019-06-05 01:08:28', '2019-06-05 01:08:28'),
(29, 'Ekonomi', 'Ekonomi', '2019-06-05 01:08:40', '2019-06-05 01:08:40'),
(30, 'Hukum', 'Hukum', '2019-06-05 01:08:48', '2019-06-05 01:08:48'),
(31, 'Bahasa', 'Bahasa', '2019-06-05 01:09:00', '2019-06-05 01:09:00'),
(32, 'Sains', 'Sains', '2019-06-05 01:09:40', '2019-06-05 01:09:40'),
(33, 'Matematika', 'Matematika', '2019-06-05 01:09:48', '2019-06-05 01:09:48'),
(34, 'Fisika', 'Fisika', '2019-06-05 01:09:56', '2019-06-05 01:09:56'),
(35, 'Kimia', 'Kimia', '2019-06-05 01:10:11', '2019-06-05 01:10:11'),
(36, 'Biologi', 'Biologi', '2019-06-05 01:10:21', '2019-06-05 01:10:21'),
(37, 'Teknologi', 'Teknologi', '2019-06-05 01:10:37', '2019-06-05 01:10:37'),
(38, 'Kesenian dan rekreasi', 'Kesenian dan rekreasi', '2019-06-05 01:10:51', '2019-06-05 01:10:51'),
(39, 'Olahraga, Permainan dan Hiburan', 'Olahraga, Permainan dan Hiburan', '2019-06-05 01:11:01', '2019-06-05 01:11:01'),
(40, 'Sejarah dan Geografi', 'Sejarah dan Geografi', '2019-06-05 01:11:23', '2019-06-05 01:11:23'),
(41, 'Novel', 'Novel', '2019-06-05 01:18:23', '2019-06-05 01:18:23'),
(43, 'Drama', 'Drama itu indah', '2019-06-18 01:58:28', '2019-06-18 01:58:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_06_03_025920_create_kategori_table', 1),
(4, '2019_06_03_030012_create_buku_table', 1),
(5, '2019_06_03_090039_add_sampul_colum', 2),
(7, '2019_06_03_090446_create_kategori_buku_table', 3),
(8, '2019_06_03_222651_add_column_users_table', 4),
(11, '2019_06_03_223124_create_siswa_table', 5),
(12, '2019_06_03_223159_create_admin_table', 5),
(14, '2019_06_06_220058_create_transaksi_table', 6),
(15, '2019_06_09_211228_create__post_board_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `postboard`
--

CREATE TABLE `postboard` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `postboard`
--

INSERT INTO `postboard` (`id`, `judul`, `deskripsi`, `img`, `admin_id`, `created_at`, `updated_at`) VALUES
(11, 'TELAH TERSEDIA BUKU-BUKU KURIKULUM KTSP', 'Kurikulum Tingkat Satuan Pendidikan (KTSP) atau Kurikulum 2006 adalah sebuah kurikulum operasional pendidikan yang disusun oleh, dan dilaksanakan di masing-masing satuan pendidikan di Indonesia. KTSP secara yuridis diamanatkan oleh Undang-Undang Nomor 20 Tahun 2003 tentang Sistem Pendidikan Nasional, dan Peraturan Pemerintah Republik Indonesia Nomor 19 Tahun 2005 tentang Standar Nasional Pendidikan. Penyusunan KTSP oleh sekolah dimulai tahun ajaran 2007/2008 dengan mengacu pada Standar Isi (SI) dan Standar Kompetensi Lulusan (SKL) untuk pendidikan dasar, dan menengah sebagaimana yang diterbitkan melalui Peraturan Menteri Pendidikan Nasional masing-masing Nomor 22 Tahun 2006, dan Nomor 23 Tahun 2006, serta Panduan Pengembangan KTSP yang dikeluarkan oleh Badan Standar Nasional Pendidikan (BSNP).[1]', 'imgs/cZondswWh7Q5gvyFwKeiJ8PSlDHSvKdkqg9xUaVC.png', 1, '2019-06-10 11:24:39', '2019-06-10 11:24:39'),
(12, 'TELAH TERSEDIA BUKU-BUKU KURIKULUM 2013', 'Kurikulum 2013 (K-13) adalah kurikulum yang berlaku dalam Sistem Pendidikan Indonesia. Kurikulum ini merupakan kurikulum tetap diterapkan oleh pemerintah untuk menggantikan Kurikulum-2006 (yang sering disebut sebagai Kurikulum Tingkat Satuan Pendidikan) yang telah berlaku selama kurang lebih 6 tahun. Kurikulum 2013 masuk dalam masa percobaanya pada tahun 2013 dengan menjadikan beberapa sekolah menjadi sekolah rintisan.', 'imgs/unkoOtUZ5WPF1wn3tFtIgvKPyKnIGn1oWW48qGof.jpeg', 1, '2019-06-10 11:25:30', '2019-06-10 11:25:30'),
(13, 'TELAH TERSEDIA NOVEL DILAN 1990 & 1991', 'Novel ini menceritakan kisah Milea, siswa pindahaan dari Jakarta yang bertemu Dilan di SMA barunya di Bandung. Dengan latar waktu tahun 1990, cerita ini punya modal positif untuk menonjol di tengah generasi remaja masa kini (meski bukan itu yang jadi poin utama Pidi Baiq menulis cerita ini). Alur diawali dengan perkenalan dari Milea masa kini yang telah menikah dan tinggal di Jakarta.', 'imgs/0V5E81nNkShVsvUBiMMoTQsCbuIF02XfiaLWYcN2.jpeg', 1, '2019-06-10 11:27:29', '2019-06-10 11:27:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notelp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `alamat`, `notelp`, `kelas`, `avatar`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '9983191111', 'Muhammad Ridho Iryarahadi', 'Jl. Sungai Kare Kelurahan Kapal Blok M No.10', '0895339732172', 'XII', 'avatars/2ETCkH0kW3v0gDxmjimNFi25nznmgzEGb0DNifCo.jpeg', 9, '2019-06-04 04:47:18', '2019-06-04 04:47:18'),
(3, '9983191112', 'Anas Misbahuddin', 'Jl. Pangeran Pemuda Blok. SS No. 1 RT. 001', '09159336418', 'XII', 'avatars/ccvcYXlawSk9aYI3aglH5ieSHszpW5OqHzJvmwKA.png', 10, '2019-06-04 04:53:20', '2019-06-04 05:28:29'),
(4, '9983191113', 'Wahyu Sahrani', 'Jl. Sanggar ta Kelurahan Otak Kecamatan Udang No. 10', '08653889013', 'XII', 'avatars/sqQzSc83G2GEa43ex3ztzO2iSYYi6kP4wH8436T8.jpeg', 11, '2019-06-04 04:55:48', '2019-06-04 04:55:48'),
(5, '9983191114', 'Arfa Yunida', 'Jl. Kayang Blok. X No. 12 RT. 031', '0815667392710', 'XII', 'avatars/nXEU5rHYWB88BakXnIwz9QpOEkpgpc02Nwjj3ZrH.png', 12, '2019-06-04 04:59:26', '2019-06-04 04:59:26'),
(6, '9983191115', 'Kiki', 'Jl. Buah Anggur Blok. Y No. 11 RT. 016', '0815339762019', 'XII', 'avatars/TiYn6xuscV9zxqEItlgpUDE5aF02dzbg6G08eOQO.png', 13, '2019-06-04 05:00:57', '2019-06-04 05:00:57'),
(7, '9983191116', 'Ahmad Beno', 'Jl. RCTI Blok. J No. 3 RT. 034', '089831167281', 'XII', 'avatars/KwkO1mNCkGf5IY3pqzPMZYE0r47rjLiECPH5fsfM.png', 14, '2019-06-04 05:03:08', '2019-06-04 05:03:08'),
(8, '9983191117', 'Ainun', 'Jl. Kipas Angin Blok. R No. 88 RT. 098', '089533778127', 'XII', 'avatars/Mrdk17n8S77mM2kTVspp7inDoKW1nkhuiobvDx3L.png', 15, '2019-06-04 05:04:53', '2019-06-04 05:04:53'),
(9, '9983191118', 'Anasya Shinta', 'Jln. Singkong Blok. 7B No. 3 RT.088', '0897663519262', 'XII', 'avatars/a1HV8JBaNVkl8R2mNqXxPvL8N4m6WI12iqqGQBEN.png', 16, '2019-06-04 05:26:02', '2019-06-04 05:27:58'),
(10, '9983191119', 'Asrhah', 'Jl. Wortel No. 12 RT. 077', '0895663519186', 'XII', 'avatars/pnMOPp8B8dFeFsQOGKaOVaZodfEReOJEzEjULYhb.jpeg', 17, '2019-06-04 05:27:37', '2019-06-04 05:27:37'),
(11, '9983191120', 'Roby Kurbac', 'Jl. Porvo No. 01. RT. 066', '08916464816', 'XII', 'avatars/XIqMdGAExbj27na5E5GgTgmdo4TkLZtHDfLq9aE6.png', 18, '2019-06-04 05:30:08', '2019-06-04 05:30:08'),
(12, '9983191121', 'Devi Indra', 'Jl. Mangga Blok. CY No. 33 RT. 078', '08976251165', 'XII', 'avatars/F3vlEQxRdIF08NSkxW6vsl1YOvXwzOdE4xkaQpWc.png', 19, '2019-06-04 05:31:35', '2019-06-04 05:31:35'),
(13, '9983191122', 'Febrinata Decoco', 'Jl. Apel Blok. A No.99 RT. 062', '08776341815', 'XII', 'avatars/gi1HlECjapXgMHX12bG3WOdjSYfN5zsJfVHbAvnP.png', 20, '2019-06-04 05:33:11', '2019-06-04 05:33:52'),
(14, '9983191123', 'Emy Telkomselhapsari', 'Jl. Pepaya Blok C RT. 083 No. 30', '08261439161', 'XII', 'avatars/N50kJiBVvAbIJHbyVqodPqaCQ85tiYPibx7xglbB.png', 21, '2019-06-04 05:35:32', '2019-06-04 05:35:32'),
(15, '9983191124', 'Faradilla Nadia', 'Jl. Pisang Blok B No. 08 RT. 088', '087158156271', 'XII', 'avatars/82AdTQEWq2gB00LTEcOjIn2pZo30sxYcLVVmsnHS.png', 22, '2019-06-04 05:40:58', '2019-06-04 05:40:58'),
(16, '9983191125', 'Febriani', 'Jl. Kemeja Blok A No. 03 RT. 03', '08714817311', 'XII', 'avatars/nHwwntgVgHE1Z8HHOuRGfKzVK2ELXxwemXA3NBv4.jpeg', 23, '2019-06-04 05:41:59', '2019-06-04 05:41:59'),
(17, '9983191126', 'Gandhi Dwi', 'Jl. Kemeja Blok. B No. 23 RT. 072', '089719414114', 'XII', 'avatars/oo4LSIX7m05IAgXf7gQS3zZXU26eo9orYfcv7j6x.png', 24, '2019-06-04 05:43:53', '2019-06-04 05:43:53'),
(18, '9983191127', 'Haga Daffa', 'Jl. Gamis Blok D No. 2 RT. 092', '0874561481641', 'XI', 'avatars/6com2dJMMhxmc041iVtPndINTlb1kSlfUNAKr7bb.png', 25, '2019-06-04 05:45:27', '2019-06-04 06:34:42'),
(19, '9983191128', 'Indrajit', 'Jl. Kalender Blok JH No. 25 RT. 007', '081635131351', 'XI', 'avatars/piaDDUq8BnFdOZl2YVg0EmEFddYGYtYT3YG6XCVl.jpeg', 26, '2019-06-04 05:46:39', '2019-06-04 05:46:39'),
(20, '9983191129', 'Krismon Rega', 'Jl. Perjuangan Pemuda No. 98 RT. 045', '081628161111', 'XI', 'avatars/PWzB1Z6YrEnMdG7EgxjpMf4dqNTyw6xuTtWbm9Hw.jpeg', 27, '2019-06-04 05:47:52', '2019-06-04 05:47:52'),
(21, '9983191130', 'Langgeng Saputro', 'Jl. Meja Blok. D No. 1 RT. 2', '0891623618261', 'XI', 'avatars/wenFbxghVTGi9mO22KTyiUz5ItYU4sRoAZa6CzdU.jpeg', 28, '2019-06-04 05:49:32', '2019-06-04 05:49:32'),
(22, '9983191131', 'Layla Marksman', 'Jl. Smartphone Blok. A RT. 03 No. 1', '0886183613881', 'XI', 'avatars/EO4DTwJ5sFafyczfbDrkWzUELG1mHLVGTo9RgC0t.jpeg', 29, '2019-06-04 05:50:48', '2019-06-04 05:50:48'),
(23, '9983191132', 'M Fatur', 'Jl Laptop Blok. I No. 4 RT. 078', '08927254417313', 'XI', 'avatars/K7dcsSm6rcRc7GelXCaY2twtxxcYNiqEfLmU4Dlo.jpeg', 30, '2019-06-04 05:52:01', '2019-06-04 05:52:01'),
(24, '9983191133', 'Monkey D. Dani', 'Jl. Gelas No. 8 RT. 3', '08916726181618', 'XI', 'avatars/dXxduDdNFAPnPUNVTDOwD2FxuRHdEZDA1PsmfqPa.png', 31, '2019-06-04 06:11:58', '2019-06-04 06:11:58'),
(25, '9983191134', 'Muhammad Fahrijal', 'Jl. Piring Blok. A RT. 02', '0819481931191', 'XI', 'avatars/EM3riXFH0huLsP7wBTU4kMgUe6AB1xxedf3LVGsH.png', 32, '2019-06-04 06:13:06', '2019-06-04 06:13:06'),
(26, '9983191135', 'Muhammad Iqbal', 'Jl. Sendok Blok. G RT. 03', '0891212491824', 'XI', 'avatars/FYLdNt0tlFAcOTBf3BFAb5bz7zgf0iXzuyB7U67M.jpeg', 33, '2019-06-04 06:14:03', '2019-06-04 06:14:03'),
(27, '9983191136', 'Oktapian Kristianto', 'Jl. Tanjungan Blok. A RT. 01', '08148718417874', 'XI', 'avatars/iySfJ5NEPvMvvwVbERK2PVxpTvRyiGm1T9ur7WTA.png', 34, '2019-06-04 06:15:15', '2019-06-04 06:15:15'),
(28, '9983191137', 'Putri Rahma', 'Jl. Tisu Blok. B No. 10 RT. 2', '0813681237111', 'XI', 'avatars/FZZzFYtLMpdRIHOI45d7eDtsjdDij7vEYcaxfaNg.png', 35, '2019-06-04 06:16:52', '2019-06-04 06:16:52'),
(29, '9983191138', 'Rahmi Rahman', 'Jl. Motor Blok. B No. 88 RT. 02', '08925481631133', 'XI', 'avatars/R77Zxz8ERInUZwNtkZrXYEKV5bQMpg1jzGo0RbXo.jpeg', 36, '2019-06-04 06:18:45', '2019-06-04 06:18:45'),
(30, '9983191139', 'Rahim Abdul', 'Jl. Pagar Blok. C No. 52 RT. 003', '08974817491748', 'XI', 'avatars/XsgW5X7CFhSXiW00f9P0SMzgH28pxdy355s653fe.png', 37, '2019-06-04 06:20:13', '2019-06-04 06:20:13'),
(31, '9983191140', 'Rio Arinda Gallon', 'Jl. Pohon Blok. V No. 28 RT. 08', '08465351761377', 'XI', 'avatars/lYxqehPnhfryXVrHacrRjDIjnX7TQXJkpkVCYs0c.png', 38, '2019-06-04 06:21:28', '2019-06-04 06:21:28'),
(32, '9983191141', 'Risma Kidding', 'Jl. Gorden Blok. C No. 9 RT. 1', '08917471934171', 'X', 'avatars/N7VObNjWSqPcYep1ifwqVPrhOXunuFbEvpLontDP.jpeg', 39, '2019-06-04 06:22:50', '2019-06-04 06:34:21'),
(33, '9983191142', 'Rosita Alifia', 'Jl. Bawang Blok. M No. 28 RT. 009', '08914719417414', 'X', 'avatars/yZxlP8HjlMzDQyIT7sA8eH3ljLgFjhrLXeUN6GUG.jpeg', 40, '2019-06-04 06:24:36', '2019-06-04 06:34:13'),
(34, '9983191143', 'Safiruddin', 'Jl. Pisang Blok. C No 09 RT. 2', '0891648163131', 'X', 'avatars/putKtwSPxnTRcJezeuDEVlHCDQ8oHbrqOgJDJhz1.png', 41, '2019-06-04 06:27:22', '2019-06-04 06:27:22'),
(35, '9983191144', 'Maliku Jepay', 'Jl. Smartphone Blok. P No. 09 RT. 12', '08174817418181', 'X', 'avatars/nMOtBJ5Qm4RIpMJx7Y95n8iVQfcd2TKQk17hucc6.jpeg', 42, '2019-06-04 06:28:41', '2019-06-04 06:28:41'),
(36, '9983191145', 'Tiara Aul', 'Jl. Garpu Blok. Q No. 33 RT. 08', '08193178471441', 'X', 'avatars/H4v89mFCOkeP7kMWA8YlP8VsSUHA6RPhb9KKyzLZ.png', 43, '2019-06-04 06:29:41', '2019-06-04 06:29:41'),
(37, '9983191146', 'Nur Cahyo', 'Jl. Motor Blok. G No. 18 RT. 15', '08193137173181', 'X', 'avatars/xpVbaOsqjiwywCbWbm4zaRBcPxcs3y1tVnShwH9R.jpeg', 44, '2019-06-04 06:30:55', '2019-06-04 06:30:55'),
(38, '9983191147', 'Ranop Gilbert', 'Jl. Pulpen Blok. Q No. 06 RT. 88', '0819919191144', 'X', 'avatars/iUafkw6A3rExNYot8KbfBgFRacEhyZKC23AdO6Av.png', 45, '2019-06-04 06:32:00', '2019-06-04 06:32:00'),
(39, '9983191148', 'Yamaha Irul', 'Jl. Dealer Blok. P No. 062 RT. 092', '08918419371391', 'X', 'avatars/Vv4pkG4pWSEf9c3fX28Q4Z9iErLLoLhNCrzl5qAz.png', 46, '2019-06-04 06:32:51', '2019-06-04 06:32:51'),
(40, '9983191150', 'Zakly', 'Jl. Panda Blok. L No. 01 RT.88', '08139139134553', 'X', 'avatars/fBbXb55WKABzNg7Vi1J4y3CJ7BpXpNkm1y76H8dD.png', 47, '2019-06-04 06:33:42', '2019-06-04 06:33:42'),
(41, '456789', 'levi', 'jl pramuka 10', '085251555635', 'XI', 'avatars/K0dOUlulyZtLhvfQqyLQPuwcbyIJuVxghBUE1h5k.jpeg', 49, '2019-06-09 00:38:22', '2019-06-09 00:38:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tgl_pinjam` timestamp NULL DEFAULT NULL,
  `tgl_kembali` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` int(11) NOT NULL,
  `siswa_id` bigint(20) UNSIGNED NOT NULL,
  `buku_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `tgl_pinjam`, `tgl_kembali`, `status`, `jumlah`, `siswa_id`, `buku_id`, `created_at`, `updated_at`) VALUES
(5, '2019-06-06 23:02:24', '2019-06-20 23:02:24', 'kembali', 1, 2, 1, '2019-06-06 23:02:24', '2019-06-07 14:21:20'),
(6, '2019-06-06 23:02:24', '2019-06-20 23:02:24', 'kembali', 1, 2, 2, '2019-06-06 23:02:24', '2019-06-07 14:28:56'),
(7, '2019-06-07 13:30:35', '2019-06-14 13:30:35', 'pinjam', 1, 3, 1, '2019-06-07 13:30:35', '2019-06-07 13:30:35'),
(8, '2019-06-07 14:30:32', '2019-06-14 14:30:32', 'pinjam', 1, 5, 1, '2019-06-07 14:30:32', '2019-06-07 14:30:32'),
(9, '2019-06-07 14:30:32', '2019-06-14 14:30:32', 'pinjam', 2, 5, 3, '2019-06-07 14:30:32', '2019-06-07 14:30:32'),
(10, '2019-06-09 01:23:40', '2019-06-16 01:23:40', 'pinjam', 1, 41, 1, '2019-06-09 01:23:40', '2019-06-09 01:23:40'),
(11, '2019-06-09 01:23:40', '2019-06-16 01:23:40', 'pinjam', 2, 41, 2, '2019-06-09 01:23:40', '2019-06-09 01:23:40'),
(12, '2019-06-12 14:17:15', '2019-06-19 14:17:15', 'pinjam', 4, 6, 1, '2019-06-12 14:17:15', '2019-06-12 14:17:15'),
(13, '2019-06-14 23:07:42', '2019-06-21 23:07:42', 'pinjam', 1, 10, 1, '2019-06-14 23:07:42', '2019-06-14 23:07:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','siswa') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(9, 'ridho.898@gmail.com', NULL, '$2y$10$k/hbOyA0BGeyXfdRpalk6eQh4m5ojozCUlGHoooZAj8xhY2DsLNlu', NULL, '2019-06-04 04:47:17', '2019-06-04 04:47:17', 'siswa'),
(10, 'Anas.Kece@gmail.com', NULL, '$2y$10$bcpZhRn0ZaMlOMOpTx1nMe9dvFYxrQW5Kd0SwD42A2QAsFBpR0T4W', NULL, '2019-06-04 04:53:20', '2019-06-04 04:53:20', 'siswa'),
(11, 'Wahyu.WeebCool@gmail.com', NULL, '$2y$10$gkSolteg8Ythmi3mmauicOomtsvCKU0LEWCAOhUQfLw1dol2z9TEm', NULL, '2019-06-04 04:55:48', '2019-06-04 04:55:48', 'siswa'),
(12, 'Arfa.123@gmail.com', NULL, '$2y$10$7pBFge8epb2Zz51194DBhOAJ/wx8bYV9aO4DLYQcos7sdtviJAlmS', NULL, '2019-06-04 04:59:26', '2019-06-04 04:59:26', 'siswa'),
(13, 'Kiki.Ajah@gmail.com', NULL, '$2y$10$OGAN7w.kv/4wg2zv2SjQc.PsUXkXNQzXlPCutUoa8EyJHG1CpBs1.', NULL, '2019-06-04 05:00:57', '2019-06-04 05:00:57', 'siswa'),
(14, 'Beno.1@gmail.com', NULL, '$2y$10$G4aaM4ZjwwqY7oM0Us6a9ONMyrBHOn9uRiDfAoabXFJ13ib7sjvNS', NULL, '2019-06-04 05:03:08', '2019-06-04 05:03:08', 'siswa'),
(15, 'Ainun.TooSoon@gmail.com', NULL, '$2y$10$kZgDb2KKTXKbtrlcR69jy.PvxE7uITjbemWmzBELViWAos1y1cFly', NULL, '2019-06-04 05:04:53', '2019-06-04 05:04:53', 'siswa'),
(16, 'Anasya.8@gmail.com', NULL, '$2y$10$VwpU1E2jbqf6F/DBKUZE2uVNhJtwBe3kMKE9u8fWbrXvXnekVoKdG', NULL, '2019-06-04 05:26:02', '2019-06-04 05:26:02', 'siswa'),
(17, 'Asrhah.99@gmail.com', NULL, '$2y$10$nOvb4dzL9f0UbdydIznERuD4J8AA79PbTqFNU79ZV1txiajt6xkw6', NULL, '2019-06-04 05:27:37', '2019-06-04 05:27:37', 'siswa'),
(18, 'Couo.Santik@gmail.com', NULL, '$2y$10$EdrN/To7OD2q24ykTqS.0OF7dOpXErgB8I9odbPiRd5BT/KyMmxKa', NULL, '2019-06-04 05:30:08', '2019-06-04 05:30:08', 'siswa'),
(19, 'Devi.Indra@gmail.com', NULL, '$2y$10$iSweFjnZAV/GAMPp91EsZeO83lmxXx/w2tIwytmWuivf3EzrIDMwG', NULL, '2019-06-04 05:31:35', '2019-06-04 05:31:35', 'siswa'),
(20, 'DjFanny.Ground@gmail.com', NULL, '$2y$10$TKJ3U8CaTq3h9wxWzr/3QOVD8OgOmBeg8M1U4/ti6Q/xeloxo0oJe', NULL, '2019-06-04 05:33:11', '2019-06-04 05:33:52', 'siswa'),
(21, 'Telkomselhapsari@gmail.com', NULL, '$2y$10$bHftl6grt5eHNuwrGAmpwetgoIbcg/RhPFW3kn4ywPOR/ooo96p8K', NULL, '2019-06-04 05:35:31', '2019-06-04 05:35:31', 'siswa'),
(22, 'Fara.dilla3@gmail.com', NULL, '$2y$10$2lkYFaFaBcG1zirBlgnZ2e5iRVdTDmqbaJSwLhx3AdKnLHAVZYuVu', NULL, '2019-06-04 05:40:58', '2019-06-04 05:40:58', 'siswa'),
(23, 'Febriani0987@gmail.com', NULL, '$2y$10$TlapW/5OMfN2Z7zWwSQsAuC/pcWGG.OzdVSJVhOhnGMSPxXFgtQ2C', NULL, '2019-06-04 05:41:59', '2019-06-04 05:41:59', 'siswa'),
(24, 'Gandhi.BijaksanaAsalIndia@gmail.com', NULL, '$2y$10$WDpkMaM/MIaeb.vHnaqvhObPxb6fZbJ/RTSlJxcoqdSkKPTi1Iw.u', NULL, '2019-06-04 05:43:53', '2019-06-04 05:43:53', 'siswa'),
(25, 'Pler.86@gmail.com', NULL, '$2y$10$tf2gKnxWqWJojIyLlUuey.N1uYSjbSU7cnQw6hKJqQA21KYHp0LJW', NULL, '2019-06-04 05:45:26', '2019-06-04 05:45:26', 'siswa'),
(26, 'Indra.NakGahol.8@gmail.com', NULL, '$2y$10$4uVYzZr/WO.hdOfbq2NlS.Obd18s4eSTAHQGcJrd2pXY6A6H42iyS', NULL, '2019-06-04 05:46:39', '2019-06-04 05:46:39', 'siswa'),
(27, 'Krisis.Moneter.98@gmail.com', NULL, '$2y$10$VuasAW72w/5lD.zKMXZuRuUB6qda9kHY5TLRT1xg47oZrmfqGb4UG', NULL, '2019-06-04 05:47:52', '2019-06-04 05:47:52', 'siswa'),
(28, 'Langgeng.TakLanggeng@gmail.com', NULL, '$2y$10$3TNnO.JXvJe9f2ccyAmz8OCDdxPwv7.1HWUGAufTxN/bz4gIj/BBG', NULL, '2019-06-04 05:49:32', '2019-06-04 05:49:32', 'siswa'),
(29, 'Layla.MobelLegendPro@gmail.com', NULL, '$2y$10$F5r.MktJS5d3s3Hw8eghjeSpYtEurnc7T8zvjmF0pC9bbwaHOCoq.', NULL, '2019-06-04 05:50:48', '2019-06-04 05:50:48', 'siswa'),
(30, 'Fatur.DhJadiPolis@gmail.com', NULL, '$2y$10$Up.SN6eK9qDETG10ilTS6uJrFOgK97PSrzp4Ag4mocSDKW7RlDfUq', NULL, '2019-06-04 05:52:00', '2019-06-04 05:52:00', 'siswa'),
(31, 'Dani.Como@gmail.com', NULL, '$2y$10$XyiSJy47G8eZyzT9J8X79OSTM8H0OYt1tCWXNilW/BGK2wR1AvH1O', NULL, '2019-06-04 06:11:58', '2019-06-04 06:11:58', 'siswa'),
(32, 'Tiang.Listrik.1@gmail.com', NULL, '$2y$10$YsNYaRAjvHnUttvfoLWEouiJdseZ/R09xg6urS3X5GEjw7X/58fGm', NULL, '2019-06-04 06:13:06', '2019-06-04 06:13:06', 'siswa'),
(33, 'Iqbal.Gaymer@gmail.com', NULL, '$2y$10$zhTs7sogyH13yfXglzfxDu.MDwwOe77dSYs4f1tqTS1If3qB.Sfp.', NULL, '2019-06-04 06:14:03', '2019-06-04 06:14:03', 'siswa'),
(34, 'Pakpahan.1@gmail.com', NULL, '$2y$10$otNh01NiFERLpa7gUo89zeS7ssuuNf2XPzbkfCHj4TUglOXpeLvIe', NULL, '2019-06-04 06:15:15', '2019-06-04 06:15:15', 'siswa'),
(35, 'Puput.987@gmail.com', NULL, '$2y$10$RAB1pgerbK0tBVY9ea3qYuvmph7tfmB2h6lnVOhPCaytMZ/d1/Vcm', NULL, '2019-06-04 06:16:52', '2019-06-04 06:16:52', 'siswa'),
(36, 'Rahmi.Amor.8@gmail.com', NULL, '$2y$10$74PjTSfVTn9BIjBZihfoS.Qx2e1Fn24X/.qvfwc4TXnpIFneDhb2C', NULL, '2019-06-04 06:18:45', '2019-06-04 06:18:45', 'siswa'),
(37, 'Raja.Share.Bkp@gmail.com', NULL, '$2y$10$FoufOTvSrPkaC9MDDjeAkub1lh5YxhLVMw6Au6uam/Gy3Vww0KxCe', NULL, '2019-06-04 06:20:13', '2019-06-04 06:20:13', 'siswa'),
(38, 'Gallon.ProMobellejen@gmail.com', NULL, '$2y$10$XMsvSWVECkR6sqUkY5Cymu/ciyevuUkGPW3mW1J4bjVJBWtrzAtBC', NULL, '2019-06-04 06:21:28', '2019-06-04 06:21:28', 'siswa'),
(39, 'Risma.Allo@gmail.com', NULL, '$2y$10$I0t/1yjg45LgWcd6SU3vO.9yeQRdjc0OsN0VuQXilCnBwRP4EDNE.', NULL, '2019-06-04 06:22:50', '2019-06-04 06:22:50', 'siswa'),
(40, 'Sumber.Informasi@gmail.com', NULL, '$2y$10$WzHUugf8wenycKjTupYzY.OJH3209lwnqfKR9MCpazTKEIK/zXwt6', NULL, '2019-06-04 06:24:35', '2019-06-04 06:25:38', 'siswa'),
(41, 'Saitama22@gmail.com', NULL, '$2y$10$Mf8BIHm0vnDsyidQc.g4LuKXdnW67MaIeEN734qXewl7yoz./yIai', NULL, '2019-06-04 06:27:22', '2019-06-04 06:27:22', 'siswa'),
(42, 'Si.Anjjikkk@gmail.com', NULL, '$2y$10$ItAHoss/n3fqKCcd0X/QLeRVMeEQm.0L.lX2zp9SxT5yqU/6Dc91G', NULL, '2019-06-04 06:28:41', '2019-06-04 06:28:41', 'siswa'),
(43, 'Tirtir@gmail.com', NULL, '$2y$10$lUgGVLVdt56tfW7hRD2o2u9GQ3m5bD76r1uZFotYdRCZsPRTyLlRO', NULL, '2019-06-04 06:29:41', '2019-06-04 06:29:41', 'siswa'),
(44, 'Orang.Jowo@gmail.com', NULL, '$2y$10$2hXv7aFajoMQPkCHSDEO8.v847PmNoWNfnWZ2Hg5tk4OSL6GvLEfy', NULL, '2019-06-04 06:30:55', '2019-06-04 06:30:55', 'siswa'),
(45, 'Wibu.Kuudere@gmail.com', NULL, '$2y$10$95o8q3HNSwZNFJyvmmJdd.rFRmsFGcD/DR6xHxpA3hS03Y7wTWsYi', NULL, '2019-06-04 06:32:00', '2019-06-04 06:32:00', 'siswa'),
(46, 'Bos.Irul@gmail.com', NULL, '$2y$10$YwWnNdrhg74.XSJW26lqY.4eJAvG6v6wfHVz86vgA0iF2KQ8mOsN.', NULL, '2019-06-04 06:32:51', '2019-06-04 06:32:51', 'siswa'),
(47, 'Caby.Panda@gmail.com', NULL, '$2y$10$ueyiNdcmFeAY6uBa255O1.1HLC8E.4mKSMnDtwhVrZ90m5O5E.VIa', NULL, '2019-06-04 06:33:41', '2019-06-04 06:33:41', 'siswa'),
(48, 'admin@mail.com', NULL, '$2y$10$rFHlS2.8PpUMILT89w.iOOdX2qZZaRH60mUrxvfnLrU31.NNdno7K', NULL, '2019-06-05 06:03:00', '2019-06-08 23:14:17', 'admin'),
(49, 'levi@gmail.com', NULL, '$2y$10$BADnW5CInBp61N.Yy/8Zr.vqK9VTNVKG1/JR97EdLax7sHH5YpKom', NULL, '2019-06-09 00:38:22', '2019-06-09 00:38:22', 'siswa'),
(51, 'rdo@gmail.com', NULL, '$2y$10$xkfjagejyD02JBejyJmSVusglc/k7ABetsEyaN5FRvUcjOe399TNa', NULL, '2019-06-10 07:34:52', '2019-06-10 07:34:52', 'siswa'),
(52, 'rdoana@gmail.com', NULL, '$2y$10$2OilkfDWCKAReSl7ZnwaFOtCyWsTTJnNtksWMni3GMQCN/tOx3xDK', NULL, '2019-06-10 07:35:04', '2019-06-10 07:35:04', 'siswa'),
(53, 'aNOTQJKL1@gMAIL.COM', NULL, '$2y$10$daJJjATZlea80QySFyAzd.YXMNRhFwWbafrN9gq32OzXFHjSIYgca', NULL, '2019-06-10 07:35:46', '2019-06-10 07:35:46', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku_kategori`
--
ALTER TABLE `buku_kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buku_kategori_buku_id_foreign` (`buku_id`),
  ADD KEY `buku_kategori_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `postboard`
--
ALTER TABLE `postboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postboard_admin_id_foreign` (`admin_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_siswa_id_foreign` (`siswa_id`),
  ADD KEY `transaksi_buku_id_foreign` (`buku_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `buku_kategori`
--
ALTER TABLE `buku_kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `postboard`
--
ALTER TABLE `postboard`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `buku_kategori`
--
ALTER TABLE `buku_kategori`
  ADD CONSTRAINT `buku_kategori_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `buku_kategori_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `postboard`
--
ALTER TABLE `postboard`
  ADD CONSTRAINT `postboard_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_siswa_id_foreign` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
