-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2024 at 01:13 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(7, '2022_10_09_073629_create_categories_table', 3),
(8, '2022_10_14_143053_create_posts_table', 3),
(9, '2024_05_03_145751_create_employees_table', 4),
(10, '2024_05_07_143937_create_product_images_table', 5),
(11, '2024_11_05_131439_create_products_table', 6);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(8,2) NOT NULL,
  `stock` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `name`, `description`, `price`, `stock`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'Product One', 'This is about product One.', 11000.00, 40, 'images/g3NGhs3cAugokoJRD9KWZOuJ53Fqo8bzhEhRIB3G.png', '2024-11-05 09:20:10', '2024-11-07 09:39:24'),
(4, '2', 'Product Two', 'This is about product two.', 9000.00, 45, NULL, '2024-11-05 09:39:47', '2024-11-06 10:08:49'),
(5, '3', 'Product Three', 'This is about product three.', 12000.00, 30, 'images/2afsr6wP0jjNeWKW7ct1tI6xW8bTEFka15BEJiB5.png', '2024-11-06 08:46:26', '2024-11-06 08:46:26'),
(7, '4', 'Product Four', 'This is about product four.', 20000.00, 20, 'images/KSspyhKJXP2lzZ8EoNHsqANdcQHpgJLbJC9JjNsD.png', '2024-11-06 22:20:36', '2024-11-06 22:26:17'),
(8, '5', 'Product Five', 'This is about product five.', 15000.00, 12, 'images/r726GFmmeLYdi993UilwRGt1EUgeze5ZCj4fODtK.png', '2024-11-06 22:21:42', '2024-11-06 22:25:56'),
(9, '6', 'Six', 'About six', 18000.00, 60, 'images/U3g5xlAEZsJ5naMbYZ09L0g73RLBIlPhedl3xiZG.png', '2024-11-07 10:12:39', '2024-11-07 10:12:39'),
(10, '7', 'Seven', 'About seven', 5000.00, 50, 'images/DtJvJcDSDNMSCQFo5LK1fO9GLByZ8meQqPUr4yHI.png', '2024-11-07 10:13:56', '2024-11-07 10:13:56'),
(11, '8', 'Eight', 'About eight', 25000.00, 38, 'images/vGKPZQbJnc54YfDbvWjENOO6nyrKPNBbEPwxTPsN.png', '2024-11-07 10:14:33', '2024-11-07 10:14:33'),
(12, '9', 'Nine', 'About nine', 6000.00, 42, 'images/5lApCb4QJvhTKPWK9c2OYjArXxZRIf54mQJ39CQl.png', '2024-11-07 10:15:25', '2024-11-07 10:15:25'),
(13, '10', 'Ten', 'About ten', 21000.00, 50, 'images/LKiwaLBU6ratIh8ejPqVfXXhUWUe6qkUH6wkCESv.png', '2024-11-07 10:16:03', '2024-11-07 10:16:03'),
(14, '11', 'Eleven', 'About eleven', 60000.00, 50, 'images/C0fSHKzE9oji2qIvMZmuEzuQhj1bVe4CqsEtW904.png', '2024-11-07 10:16:45', '2024-11-07 10:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marp', 'email@gmail.com', NULL, '$2y$12$wUekVLhC0JmD9tHKAkz.PeoPCv4SqXba0kzQE80ja9UTFNxqP4Zfu', NULL, NULL, NULL, NULL, NULL),
(4, 'demo', 'demo@gmail.com', NULL, '$2y$12$NhvVxN8N9dukfQqEdTz69u4mlXeGTEahDGnNxkRfMdApzhUOpDGBm', NULL, NULL, NULL, NULL, NULL),
(5, 'Abdul', 'abdul@gmail.com', NULL, '$2y$10$gEX2QaqanIk6QwMCluFXRuzPWArPkhrhohKhbGa0C.FeBN13ta9um', NULL, NULL, NULL, '2024-05-01 18:53:47', '2024-05-01 18:53:47'),
(6, 'Ocean', 'ocean.bd@live.com', NULL, '$2y$12$uvacSWZucYAB89Mu/vZvqu3/nrlnpXXIi6WebL9U0RCjhANT0s5cO', NULL, NULL, NULL, NULL, NULL);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_id_unique` (`product_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
