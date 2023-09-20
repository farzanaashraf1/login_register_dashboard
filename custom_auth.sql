-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2023 at 01:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custom_auth`
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_08_063039_create_restaurants_table', 1),
(6, '2023_09_12_061501_create_users_table', 2);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Kfc', 'Kfc@gmail.com', 'Block 776 Austrlia', NULL, NULL),
(2, 'Micdolos', 'Micdolos@gmail.com', ' block 345 nageria', NULL, NULL),
(4, 'rajghrana', 'rajghrana@gmail.com', ' block 566 india ', NULL, NULL),
(5, 'farzana ashraf', 'admin@gmail.com', 'lahoer', '2023-09-11 00:19:35', '2023-09-11 23:53:12'),
(6, 'kamran', 'admin@gmail.com', 'lahoer', '2023-09-11 00:29:34', '2023-09-11 23:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(3000) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'farzana', 'eyJpdiI6Ik1IWXVZY3JMc2tqVFVkeWs0WGtGM3c9PSIsInZhbHVlIjoieDlJakVaa3lCUi9HcFFDZ3NQSXRldz09IiwibWFjIjoiMDVhYjhlZDJmNmI4YzQxMmM1OWU0MDQ2ODQ3MDBiZDg0Yzc4ZDE5ZGUzYTgyYTY3MjU3ZjYyZWZmYzk1OWMwZiIsInRhZyI6IiJ9', 'admin@gmail.com', 'lahore', '2023-09-12 01:37:28', '2023-09-12 01:37:28'),
(2, 'Ameer Hamza', 'eyJpdiI6IkIreXZHRmZKSU0zZXhsb0hpRGJXY0E9PSIsInZhbHVlIjoiWGhWQ2hDeFNNUEZYdFQ4WkQxRE5zUT09IiwibWFjIjoiZDMzYjdhYzhjZTFlZGU3ZGQxNWJjNjZjN2IyNjYxOTFlNDk5MTU5OWNhZTZlNWYyZjllYWJmMWYzZjNmOGYwNCIsInRhZyI6IiJ9', 'farzanaashraf393@gmail.com', 'lahore', '2023-09-12 01:41:28', '2023-09-12 01:41:28'),
(3, 'Ameer Hamza', 'eyJpdiI6IjJYWnBhVlZjNTFkV05GUFdKVGVLa1E9PSIsInZhbHVlIjoiNG11TldRTGlRdkcrUWhsWm9rb2ZhUT09IiwibWFjIjoiZWVjOTkxNmM0MzU5NDQ2YzU1NWVmY2E2MDZjY2JkNWI4ODg2YTdiYmY0ZTAxMTA4MDdmOTJjYjY0MTJhZTM4YiIsInRhZyI6IiJ9', 'admin@gmail.com', 'lahore', '2023-09-12 01:54:31', '2023-09-12 01:54:31'),
(4, 'nida', 'eyJpdiI6ImxaLzhmckEyREgrVUw4ZUIvZFZocnc9PSIsInZhbHVlIjoidS9IRjhuUTBMd3h5YWZ4c21PdUQrQT09IiwibWFjIjoiMmUxNTYwZDc5ZDRlMTRjYjA0OTNhODkxNWM3NWU0NzM5NzlmYWFjMzFkYzcxNWVmNDI2MjYxMDIxZDU2OTIwNiIsInRhZyI6IiJ9', 'nida@gmail.com', 'lahore', '2023-09-13 06:28:05', '2023-09-13 06:28:05'),
(5, 'kamran', 'eyJpdiI6IlF6YnV6b3NLSVV4UVJoaEVvNnRkT1E9PSIsInZhbHVlIjoiZElTdjNGUUdaSytFNTlqM0ppdDZ0dz09IiwibWFjIjoiNzViY2M4NjM2MWYyNGU2YjA5YTZhMmM3Njk4ZmE5OWJhMDEzN2VlNmU4MTY0MzI3YzI5YTVjMGZmNTRmNmQ0ZCIsInRhZyI6IiJ9', 'kamran@gmail.com', 'lahore', '2023-09-13 06:29:18', '2023-09-13 06:29:18'),
(6, 'kamo', 'eyJpdiI6IktNbEFBREY0dWZiNDRpNWpSaUpjMHc9PSIsInZhbHVlIjoib0Y3dDNxSWk5UW5VcWFFdzJqL0l1dz09IiwibWFjIjoiMDM1ZmYwYWVhMTA4N2RhZTJhYjUyM2IxNzY1MThkN2Y4NzIzMjcxMmFkYjVjNWRmOTNkMDk5NTRjNDI3ODMwYSIsInRhZyI6IiJ9', 'kamo@gmail.com', 'lahore', '2023-09-13 06:31:19', '2023-09-13 06:31:19');

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
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
