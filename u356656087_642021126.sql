-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 02:27 PM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u356656087_642021126`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_12_082620_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(10, 'App\\Models\\User', 5, 'Thunder Client (https://www.thunderclient.com)', 'b23c29e8fe3924065ff8c2ff220f961e59a4ae9266e134706e6de9ef950180c0', '[1]', NULL, NULL, '2024-03-09 12:28:55', '2024-03-09 12:28:55'),
(11, 'App\\Models\\User', 6, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '8b0d71b2202bae20fcaaf51171fad79e435dc923240760a6734db6a6df9a61de', '[\"2\"]', NULL, NULL, '2024-03-09 12:33:02', '2024-03-09 12:33:02'),
(12, 'App\\Models\\User', 7, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '546634e487edb67adcf91e183710f0fce1149bf9d60055e3fde61f11c1ed2ca7', '[2]', NULL, NULL, '2024-03-09 12:46:21', '2024-03-09 12:46:21'),
(13, 'App\\Models\\User', 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '407819cb278a9db8d7ccaf1179892539bae1aa8ff9202778885da1d41d085e72', '[2]', NULL, NULL, '2024-03-09 12:50:52', '2024-03-09 12:50:52'),
(14, 'App\\Models\\User', 9, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '1a8da0bfa9591340b09b55682f321e0cce71964a67bca55d050cfc4443530710', '[2]', NULL, NULL, '2024-03-09 12:52:00', '2024-03-09 12:52:00'),
(15, 'App\\Models\\User', 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '45752815f164b7375e2dd6f7192cbf33fbd4d6e32bfc88a8dbd9e399db53120e', '[2]', NULL, NULL, '2024-03-09 12:53:28', '2024-03-09 12:53:28'),
(17, 'App\\Models\\User', 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '99d107041b22364f229545349ecc5cfe746d968dfce056860d47e7fa38d7395d', '[\"2\"]', NULL, NULL, '2024-03-09 12:59:34', '2024-03-09 12:59:34'),
(19, 'App\\Models\\User', 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'd926d464a6321cfa6050b61ce1a9879b8a0aed245280451e02d3fb15c0e0e7bf', '[\"2\"]', NULL, NULL, '2024-03-09 13:18:25', '2024-03-09 13:18:25'),
(82, 'App\\Models\\User', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '94398b4b5527e4b5aa95e032887cec24c5db4e8c05c20cda8f78ec25b6b0bfde', '[\"2\"]', '2024-03-09 18:45:20', NULL, '2024-03-09 18:45:16', '2024-03-09 18:45:20'),
(128, 'App\\Models\\User', 13, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '622bb350c3fb387ad6e83917a464e40db6c0fbeb4a235f999d03676c09263631', '[2]', NULL, NULL, '2024-03-09 20:39:55', '2024-03-09 20:39:55'),
(178, 'App\\Models\\User', 15, 'Dart/3.3 (dart:io)', 'e4b7ae4f66f13bb309a976f306afecb4ed8f4faaf266c7cbf803b334abf06cdb', '[\"2\"]', '2024-03-10 09:31:45', NULL, '2024-03-10 09:31:09', '2024-03-10 09:31:45'),
(215, 'App\\Models\\User', 4, 'Dart/3.3 (dart:io)', 'cfc3563b3c3cb1f6a59de528aeac848d65ba3582946e031c326d550962fc99fb', '[\"1\"]', '2024-03-15 16:43:14', NULL, '2024-03-15 16:42:40', '2024-03-15 16:43:14'),
(221, 'App\\Models\\User', 3, 'Dart/3.3 (dart:io)', 'd722920af87459f30873824e7920feadb882825d9d0f64961ff11f6a6de96056', '[\"1\"]', '2024-03-19 14:14:39', NULL, '2024-03-19 14:14:37', '2024-03-19 14:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_type`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 15 Pro Max', 1, 46900, '2024-03-08 22:33:07', '2024-03-10 15:36:25'),
(2, 'Samsung S24', 1, 42900, '2024-03-08 22:33:07', '2024-03-10 15:36:59'),
(3, 'LG Smart TV', 2, 59000, '2024-03-08 22:33:07', '2024-03-08 22:33:07'),
(4, 'Samsung Smart TV', 2, 40900, '2024-03-08 22:33:07', '2024-03-08 22:33:07'),
(24, 'Ipad Air 5', 3, 24900, '2024-03-10 15:35:38', '2024-03-10 15:35:38'),
(25, 'Iphone 11 Pro max', 1, 20000, '2024-03-11 20:36:55', '2024-03-11 20:36:55'),
(26, 'Iphone 18 Pro Max', 1, 99999, '2024-03-11 20:40:40', '2024-03-11 20:40:40'),
(29, 'Iphone 17 Pro Max', 1, 99999, '2024-03-11 21:39:04', '2024-03-11 21:39:04'),
(30, 'pp', 1, 55555, '2024-03-15 16:43:00', '2024-03-15 16:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `telephone` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 2,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `telephone`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Pathaphi PK', 'pathaphi.pk@gmail.com', NULL, '0640091297', '$2y$12$n0yVMnPBXN69UQDFWQD5d.GmqYwBOnDfbNg9pdkJHts1G7hncKSpK', 2, NULL, '2024-03-08 22:33:07', '2024-03-08 22:33:07'),
(2, 'Pimamorn PIM', 'Pimamorn.pim@gmail.com', NULL, '0888888888', '$2y$12$Ck8L6/B/FHUsPsWaDOYV0OyJrJkBNRbjhEo63vQ76D.M0nerwO772', 2, NULL, '2024-03-08 22:33:07', '2024-03-08 22:33:07'),
(3, 'PK', 'pk@gmail.com', NULL, '0999999999', '$2y$12$yAW6QgQMnzefpK0Trl6atuovlDqRwf5RMWOzt6my9TlBa5Y9OvnhO', 1, NULL, '2024-03-09 00:23:19', '2024-03-09 00:23:19'),
(4, 'PIM', 'Pim@gmail.com', NULL, '0990990999', '$2y$12$O7tS9J9QCcKTF0RayPM/T.Pa1THwVHZ998Sp6.4KQ1Id8zCuy3s/y', 1, NULL, '2024-03-09 01:24:09', '2024-03-09 01:24:09'),
(16, 'นิวัฒนา นรบิน', '0611841021@gmail.com', NULL, '0611841021', '$2y$12$4keh5qwMcNHS4O8HsD9o8uZ3z21cbCYHhaebTvlgCxrJDHP2UUvMe', 2, NULL, '2024-03-10 14:10:23', '2024-03-10 14:10:23'),
(17, 'พิมพ์อมร แนมใส', 'pimpk@gmail.com', NULL, '0998884444', '$2y$12$qroxgn.NDPvcxXxp7YyAnOCrBIee44IlqQ9q4SnTBbe5WTMkOBQKC', 2, NULL, '2024-03-10 16:14:09', '2024-03-10 16:14:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
