-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 11:58 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `batas_start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `batas_end_time` time NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `title`, `description`, `start_time`, `batas_start_time`, `end_time`, `batas_end_time`, `code`, `created_at`, `updated_at`) VALUES
(1, 'presensi proyek', 'ngecheck', '18:00:00', '19:00:00', '18:05:00', '19:00:00', NULL, '2023-03-19 11:02:34', '2023-04-14 00:35:29'),
(2, 'presensi web 2I-TI', 'check', '12:00:00', '17:00:00', '15:00:00', '18:00:00', NULL, '2023-04-14 00:10:36', '2023-04-14 00:36:51'),
(3, 'presensi jarkom 2I-TI', 'check', '08:00:00', '18:00:00', '11:00:00', '19:00:00', NULL, '2023-04-14 00:37:39', '2023-04-14 05:55:45'),
(4, 'presensi admin', 'absen ', '10:00:00', '12:00:00', '13:00:00', '17:00:00', NULL, '2023-04-14 03:23:54', '2023-04-14 03:23:54'),
(5, '2I-TI Ai', 'ai', '12:00:00', '15:00:00', '15:00:00', '14:00:00', NULL, '2023-04-17 02:43:15', '2023-04-17 02:43:15'),
(6, '2H-TI Ai', 'ai', '07:00:00', '13:00:00', '15:00:00', '18:00:00', NULL, '2023-04-17 02:44:29', '2023-04-17 02:44:29'),
(7, 'Absensi Test', 'test', '11:00:00', '18:00:00', '19:00:00', '20:00:00', NULL, '2023-06-08 03:37:20', '2023-06-08 03:37:20'),
(8, 'test Absen B', 'test', '07:00:00', '13:00:00', '11:00:00', '17:00:00', NULL, '2023-06-08 03:58:02', '2023-06-08 03:58:02'),
(9, 'test absent C', 'test', '11:15:00', '13:00:00', '11:20:00', '14:00:00', NULL, '2023-06-08 04:13:44', '2023-06-08 04:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_position`
--

CREATE TABLE `attendance_position` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance_position`
--

INSERT INTO `attendance_position` (`id`, `attendance_id`, `position_id`, `created_at`, `updated_at`) VALUES
(5, 2, 8, NULL, NULL),
(6, 1, 7, NULL, NULL),
(7, 1, 11, NULL, NULL),
(8, 3, 12, NULL, NULL),
(9, 4, 6, NULL, NULL),
(10, 5, 13, NULL, NULL),
(11, 6, 13, NULL, NULL),
(12, 7, 8, NULL, NULL),
(13, 8, 8, NULL, NULL),
(14, 9, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `title`, `description`, `holiday_date`, `created_at`, `updated_at`) VALUES
(1, 'test holiday', 'test', '2023-06-11', '2023-06-08 03:50:58', '2023-06-08 03:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_16_075041_create_roles_table', 1),
(6, '2022_06_16_075123_add_role_id_to_users_table', 1),
(7, '2022_06_17_134607_create_positions_table', 1),
(8, '2022_06_17_142639_add_phone_and_position_id_to_users_table', 1),
(9, '2022_06_20_114945_create_holidays_table', 1),
(10, '2022_06_21_135647_create_attendances_table', 1),
(11, '2022_06_21_135721_create_attendance_position_table', 1),
(12, '2022_06_21_144144_create_presences_table', 1),
(13, '2022_06_26_214220_create_permissions_table', 1),
(14, '2022_06_26_214239_add_is_permission_to_presences_table', 1),
(15, '2022_06_26_215859_add_permission_date_to_permissions_table', 1),
(16, '2022_06_27_162656_add_is_accepted_to_permissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_date` date NOT NULL,
  `is_accepted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(6, 'Admin', '2023-03-19 10:05:14', '2023-03-19 10:12:48'),
(7, 'StatKomp', '2023-03-19 10:20:31', '2023-04-14 00:07:56'),
(8, 'web', '2023-03-19 12:53:16', '2023-03-19 12:53:16'),
(11, 'Proyek', '2023-04-14 00:21:25', '2023-04-14 00:21:25'),
(12, 'jarkom', '2023-04-14 00:21:32', '2023-04-14 00:21:32'),
(13, 'Ai', '2023-04-14 00:21:53', '2023-04-14 00:28:26'),
(14, 'bi', '2023-04-14 00:22:16', '2023-04-14 00:22:16'),
(15, 'kewarganeragaan', '2023-04-14 00:22:29', '2023-04-14 00:22:29'),
(16, 'manajproyek', '2023-04-14 00:22:42', '2023-04-14 00:22:42'),
(17, 'adbo', '2023-04-14 00:22:50', '2023-04-14 00:22:50'),
(18, 'Bhs ing', '2023-04-14 00:23:42', '2023-04-14 00:23:42'),
(19, 'ctps', '2023-04-14 00:23:51', '2023-04-14 00:23:51'),
(20, 'k3', '2023-04-14 00:23:57', '2023-04-14 00:23:57'),
(21, 'daspro', '2023-04-14 00:24:08', '2023-04-14 00:24:08'),
(22, 'sisop', '2023-04-14 00:24:18', '2023-04-14 00:28:48'),
(23, 'databse', '2023-04-14 00:24:31', '2023-04-14 00:24:31'),
(24, 'pbo', '2023-04-14 00:24:43', '2023-04-14 00:24:43'),
(25, 'Test subject A', '2023-06-08 04:12:32', '2023-06-08 04:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `presences`
--

CREATE TABLE `presences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `presence_date` date NOT NULL,
  `presence_enter_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presence_out_time` time DEFAULT NULL,
  `is_permission` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `presences`
--

INSERT INTO `presences` (`id`, `user_id`, `attendance_id`, `presence_date`, `presence_enter_time`, `presence_out_time`, `is_permission`, `created_at`, `updated_at`) VALUES
(1, 13, 1, '2023-03-19', '18:03:24', NULL, 0, '2023-03-19 11:03:24', '2023-03-19 11:03:24'),
(2, 17, 3, '2023-04-14', '12:49:22', NULL, 0, '2023-04-14 05:49:22', '2023-04-14 05:49:22'),
(3, 30, 6, '2023-04-17', '10:03:04', NULL, 0, '2023-04-17 03:03:05', '2023-04-17 03:03:05'),
(4, 33, 8, '2023-06-08', '10:58:18', NULL, 0, '2023-06-08 03:58:18', '2023-06-08 03:58:18'),
(5, 34, 9, '2023-06-08', '11:18:01', '11:24:05', 0, '2023-06-08 04:18:01', '2023-06-08 04:24:05'),
(6, 33, 7, '2023-06-15', '13:26:46', NULL, 0, '2023-06-15 06:26:46', '2023-06-15 06:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-03-19 10:01:01', '2023-03-19 10:01:01'),
(2, 'operator', '2023-03-19 10:01:01', '2023-03-19 10:01:01'),
(3, 'user', '2023-03-19 10:01:01', '2023-03-19 10:01:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `position_id`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Group 4', 'admin@gmail.com', '2023-03-19 10:01:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '+62 81235029374', 6, 1, 'qJKNWz2hd2CfB9kucSLdqB3RNbpExkkcaau1JGMC5ejkQpJC4ClqFrZjqrCK', '2023-03-19 10:01:01', '2023-03-19 10:05:43'),
(13, 'Septian Enggar S', 'e12141@gmail.com', NULL, '$2y$10$L00zroA044qTwo5jvDVfO.ETVnHHmsYNWWPX9icvxj7X4IA08ZpOW', '081785421621', 7, 3, NULL, '2023-03-19 10:59:09', '2023-04-14 00:29:07'),
(14, 'Usman Nurhassan', 'us123@gmail.com', NULL, '$2y$10$DyMYHmo96a1zUn418nDXQO5B.YCp7/Obn4YarvPQnGX5b8ckaKQ0m', '086751231233', 8, 3, NULL, '2023-03-19 12:54:08', '2023-04-14 00:29:07'),
(16, 'Yan watequlis syaifudin', 'yws@gmail.com', NULL, '$2y$10$1AWZ0tsj3/gAgJIygBlmLOWZgxPp1Ctod1mVEANcusxZAL1zspOWC', '081181836172', 11, 3, NULL, '2023-04-14 00:27:12', '2023-04-14 00:27:12'),
(17, 'Arief Prasetyo', 'arp@gmail.com', NULL, '$2y$10$jbZ.ypdHHuB.7X532ipIeuSzKTLLcuTrbUmrLBYdl0mUEMJzEHoMu', '081402051423', 12, 3, NULL, '2023-04-14 00:28:05', '2023-04-14 00:28:05'),
(18, 'Banni Satria Andoko', 'bsa@gmail.com', NULL, '$2y$10$D3uMe9oermgZSN8X1pRSmuR0/IlIXLbpiXthOgjfsYGTyIMQKpjBC', '081547949070 ', 14, 3, NULL, '2023-04-14 00:30:03', '2023-04-14 00:30:03'),
(19, 'Eka Larasati Amalia', 'ela@gmail.com', NULL, '$2y$10$7QcZxKoU1ci2nX85SwnJCuC2vzc9RZ8Ks5HSYNM8n5fIW/2Ir1gau', '081323102592', 17, 3, NULL, '2023-04-14 00:34:17', '2023-04-14 00:34:17'),
(20, 'Widaningsih Condrowardhani', 'wds@gmail.com', NULL, '$2y$10$LyuErixH8vzIcWxdCjNtou3j2OJvCHaahnnao2ApNdYsobhhu4.7a', '085498363742', 15, 3, NULL, '2023-04-14 00:34:18', '2023-04-14 00:34:18'),
(21, 'Retno damayanti', 'rdm@gmail.com', NULL, '$2y$10$QDOiq8BCgml2bVqJXL6UlOjuUScR0i/UYV5ZcNFtX05yLD0PRNQsa', '081373343730', 16, 3, NULL, '2023-04-14 00:34:18', '2023-04-14 00:34:18'),
(22, 'cek11', '11@gmail.com', NULL, '$2y$10$Lbca3kpqwMU791GlyNVVSO5kzYj6Hc60velc7NLE342aUaQLKzlt.', '999999999999', 6, 3, NULL, '2023-04-14 00:34:18', '2023-04-14 00:34:44'),
(23, 'cek12', '12@gmail.com', NULL, '$2y$10$VKeIHVs56jJZ2hlVaeghzOOy.tl.nRx9JP814kCUgzKBzkfxp1rBW', '99999999999999', 6, 2, 'qUi2keVwwRSWqzo1HwAzObcxvI2r0T0diuEWx70fypAfprScqA7g89WYb4Bq', '2023-04-14 00:42:13', '2023-04-14 00:42:13'),
(24, 'cek13', '13@gmail.com', NULL, '$2y$10$GftehzD/1PjxwgmjeQUvx.njuUN/e2SuCubpEfvXqbpJjaJDfRf1W', '999999999999999', 6, 2, NULL, '2023-04-14 00:42:13', '2023-04-14 00:42:13'),
(25, 'cek14', '14@gmail.com', NULL, '$2y$10$K5iplYcnHhABtxb9gPWcJu5r3kGK9D1yoSz2Im1F2hV6T.YT/F1Gq', '999999999', 12, 2, NULL, '2023-04-14 00:42:13', '2023-04-14 00:42:13'),
(26, 'cek15', '15@gmail.com', NULL, '$2y$10$H0rx5eYv16Kx5vtrQ.koPu0p4/6OVxB0uDEXEoaYsTDgOxRt2cQ6m', '9999999999', 6, 2, NULL, '2023-04-14 00:42:13', '2023-04-14 00:42:13'),
(27, 'cek16', '16@gmail.com', NULL, '$2y$10$7VHfZHZOLS4sgYsjLsZ11umh0taDs55..SP/7lC3aOF8/QQpUKqHW', '99999999999', 7, 1, NULL, '2023-04-14 00:42:13', '2023-04-14 00:42:13'),
(28, 'cek17', '17@gmail.com', NULL, '$2y$10$HetW3W/zspmJ01vkakcXBuA3gN8I3gvptAIoPuKrbXP3ViuS1DNZa', '9999999999999', 12, 2, NULL, '2023-04-14 00:42:13', '2023-04-14 00:42:13'),
(29, 'Lepi', 'lepi@gmail.com', NULL, '$2y$10$7dPbvNx61uNYs.lIlkrzguJemL877gE1LtNKHLrTSk3MI2zV9jo8W', '087851932416', 6, 2, NULL, '2023-04-14 03:23:04', '2023-04-14 03:23:04'),
(30, 'teacher A', 'ta@gmail.com', NULL, '$2y$10$bjiSIrn.C3mXFbaCG2euWezXJZxl8lBxDP7cKTFC7ryJdB1mTMhU6', '085826142041', 13, 3, NULL, '2023-04-17 02:42:29', '2023-04-17 02:42:29'),
(31, 'tacher B', 'ab@gmail.com', NULL, '$2y$10$2UGYFfUOuXT38/RUF63SvOHBPL70AzSXHgzC9Dw/UA0n5DQscohMK', '081738667821', 13, 3, NULL, '2023-05-05 06:45:01', '2023-05-05 06:45:01'),
(32, 'teacher C', 'ac@gmail.com', NULL, '$2y$10$4CF.64aLAY04cXSCO/8MMOZFtjtFpeB26uZgli5X7To4HMBRN/hGe', '081397162832', 17, 3, NULL, '2023-05-05 06:45:01', '2023-05-05 06:45:01'),
(33, 'userA', 'userA@gmail.com', NULL, '$2y$10$2.YHEDyv4vVyHwnDia2X2eoXBjETmiDEDlQqu02oiRFrYuUoUn5Ke', '6285826142041', 8, 3, NULL, '2023-06-08 03:07:14', '2023-06-08 03:07:14'),
(34, 'Test user 1', 'user1@gmail.com', NULL, '$2y$10$n9onR0wvkm6kzeHsWVORdOvpLlUBIZHn1y0uvloqPoW/OtdX9pob6', '6285826142091', 25, 3, NULL, '2023-06-08 04:12:59', '2023-06-08 04:12:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance_position`
--
ALTER TABLE `attendance_position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_position_attendance_id_foreign` (`attendance_id`),
  ADD KEY `attendance_position_position_id_foreign` (`position_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_user_id_foreign` (`user_id`),
  ADD KEY `permissions_attendance_id_foreign` (`attendance_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presences`
--
ALTER TABLE `presences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `presences_user_id_foreign` (`user_id`),
  ADD KEY `presences_attendance_id_foreign` (`attendance_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_position_id_foreign` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attendance_position`
--
ALTER TABLE `attendance_position`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `presences`
--
ALTER TABLE `presences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_position`
--
ALTER TABLE `attendance_position`
  ADD CONSTRAINT `attendance_position_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_position_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `presences`
--
ALTER TABLE `presences`
  ADD CONSTRAINT `presences_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `presences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
