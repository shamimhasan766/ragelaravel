-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2024 at 09:45 AM
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
-- Database: `rage`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'Gucci', 'uploads/brands/gucci-65bb2c108742e.png', '2024-01-31 19:43:53', '2024-02-01 05:28:48', NULL),
(11, 'Xiaomi', 'uploads/brands/Xiaomi_65baa338af644.png', '2024-01-31 19:44:57', NULL, NULL),
(12, 'Samsung', 'uploads/brands/Samsung_65baa35fa7aa2.png', '2024-01-31 19:45:35', NULL, NULL),
(13, 'Zumba Kids', 'uploads/brands/Zumba Kids_65baa38fb35f0.jpg', '2024-01-31 19:46:23', NULL, NULL),
(14, 'Oleves', 'uploads/brands/Oleves_65baa3b303bcf.png', '2024-01-31 19:46:59', NULL, NULL),
(15, 'Rolex', 'uploads/brands/Rolex_65baa3cca3972.png', '2024-01-31 19:47:25', NULL, NULL),
(16, 'Fine Furniture', 'uploads/brands/Fine Furniture_65baa4079187a.png', '2024-01-31 19:48:23', NULL, NULL),
(17, 'Nike', 'uploads/brands/Nike_65baa4428040c.png', '2024-01-31 19:49:22', NULL, NULL),
(18, 'adidas', 'uploads/brands/adidas_65baa44a1d1f8.png', '2024-01-31 19:49:30', '2024-02-01 05:06:06', NULL),
(19, 'Bata', 'uploads/brands/Bata_65baa45f6beaf.png', '2024-01-31 19:49:51', '2024-02-01 05:06:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'Accessories', 'uploads/category/accessories-65b6713cf3731.jpg', 'accessories-715830', '2024-01-28 15:22:37', '2024-01-30 04:15:07', NULL),
(25, 'Electronics', 'uploads/category/electronics-65b6717e70f64.jpg', 'electronics-815317', '2024-01-28 15:23:42', '2024-01-30 04:15:07', NULL),
(26, 'home appliances', 'uploads/category/home-appliances-65b671ab23a48.jpg', 'home-appliances-380736', '2024-01-28 15:24:27', '2024-01-30 04:15:07', NULL),
(27, 'Furnitures', 'uploads/category/furnitures-65b671c9d5e24.jpg', 'furnitures-405164', '2024-01-28 15:24:58', '2024-01-30 04:15:07', NULL),
(28, 'Sports', 'uploads/category/sports-65b6721667914.jpg', 'sports-982223', '2024-01-28 15:26:14', '2024-01-30 04:15:07', NULL),
(29, 'Fashion', 'uploads/category/fashion-65b672465c9db.jpg', 'fashion-488439', '2024-01-28 15:27:02', '2024-01-30 04:15:07', NULL),
(30, 'Kids', 'uploads/category/kids-65b6728b37589.jpg', 'kids-285335', '2024-01-28 15:28:11', '2024-01-30 04:15:07', NULL),
(31, 'Beauty', 'uploads/category/beauty-65b672b4af8d3.jpg', 'beauty-447814', '2024-01-28 15:28:53', '2024-01-30 04:15:07', NULL),
(39, 'Olga Rosales', 'uploads/category/olga-rosales-65ba987c598e5.jpg', 'olga-rosales-628193', '2024-01-31 18:59:08', NULL, NULL);

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_01_24_091652_create_categories_table', 2),
(4, '2024_01_28_114104_add_deleted_at_to_categories_table', 3),
(5, '2024_01_30_010510_create_password_reset_token_table', 4),
(6, '2024_01_30_220314_create_subcategories_table', 5),
(8, '2024_01_31_113817_create_brands_table', 6),
(9, '2024_02_01_233322_create_tags_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('gepaxiqil@mailinator.com', '$2y$12$5c0u/SYJoz/9JeM17r//I.ekmVRhGpSjigmkt7c0/hnzIhbRWj7zi', '2024-01-29 19:27:07'),
('mdsamime80@gmail.com', '$2y$12$Q9SccliUEjes5QtVGijtc.0QnpYcyiC9HjQtX0cczYIS52cqAo6cq', '2024-01-29 19:29:20'),
('sh92062676@gmail.com', '$2y$12$/viRgl7yzsE1JJtUshVqWuHNlhSMkdmdm.6GH5iVjgqbsqzrTP.im', '2024-01-29 19:30:14');

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
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` int NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 24, 'Bag', '2024-01-30 18:45:26', '2024-02-01 11:13:20', NULL),
(2, 24, 'Watch', '2024-01-30 18:45:34', '2024-01-31 19:34:22', NULL),
(3, 25, 'Mobile', '2024-01-30 18:45:42', '2024-02-01 04:33:25', NULL),
(4, 25, 'Television', '2024-01-30 18:45:49', NULL, NULL),
(5, 26, 'Washing Machine', '2024-01-30 18:46:00', NULL, NULL),
(6, 27, 'Sofa', '2024-01-30 18:46:25', NULL, NULL),
(7, 28, 'Jursey', '2024-01-30 18:46:33', NULL, NULL),
(8, 29, 'T Shirt', '2024-01-30 18:46:45', NULL, NULL),
(9, 28, 'Polo Shirt', '2024-01-30 18:46:55', NULL, NULL),
(10, 30, 'Toys', '2024-01-30 18:47:11', '2024-01-31 19:34:38', NULL),
(11, 31, 'Cosmetics', '2024-01-30 18:47:19', '2024-02-01 04:33:09', NULL),
(37, 39, 'Callum Hansen', '2024-01-31 18:59:37', '2024-02-01 04:28:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(5, 'Ladies', NULL, '2024-02-01 18:03:24', '2024-02-01 19:04:21'),
(6, 'Style', NULL, '2024-02-01 18:03:24', NULL),
(7, 'Gadget', NULL, '2024-02-01 18:04:18', NULL),
(8, 'Fashion', NULL, '2024-02-01 18:04:18', NULL),
(9, 'lifestyle', NULL, '2024-02-01 18:04:18', NULL),
(10, 'phone', NULL, '2024-02-01 18:04:18', NULL),
(11, 'communication', NULL, '2024-02-01 18:04:18', NULL),
(12, 'Entertainment', NULL, '2024-02-01 18:04:18', NULL),
(13, 'TV', NULL, '2024-02-01 18:05:06', NULL),
(14, 'smart tv', NULL, '2024-02-01 18:05:06', NULL),
(15, 'analog tv', NULL, '2024-02-01 18:05:06', NULL),
(16, 'leather', NULL, '2024-02-01 18:05:06', NULL),
(17, 'clothes', NULL, '2024-02-01 18:05:06', NULL),
(18, 'appliences', NULL, '2024-02-01 18:05:06', NULL),
(19, 'jursey', NULL, '2024-02-01 18:05:46', NULL),
(20, 'decore', NULL, '2024-02-01 18:05:46', NULL),
(21, 'home decore', NULL, '2024-02-01 18:05:46', NULL),
(22, 'comfort', NULL, '2024-02-01 18:05:46', NULL),
(23, 'furniture', NULL, '2024-02-01 18:06:18', NULL),
(24, 'chair', NULL, '2024-02-01 18:06:18', NULL),
(25, 'plastic chair', NULL, '2024-02-01 18:06:18', NULL),
(26, 'wood chair', NULL, '2024-02-01 18:06:18', NULL),
(27, 'sports', NULL, '2024-02-01 18:07:51', NULL),
(28, 'games', NULL, '2024-02-01 18:07:51', NULL),
(29, 'football', NULL, '2024-02-01 18:07:51', NULL),
(30, 'cricket', NULL, '2024-02-01 18:07:51', NULL),
(31, 'tshirt', NULL, '2024-02-01 18:07:51', NULL),
(32, 'polo', NULL, '2024-02-01 18:07:51', NULL),
(33, 'gents', NULL, '2024-02-01 18:07:51', NULL),
(34, 'toys', NULL, '2024-02-01 18:07:51', NULL),
(35, 'kids', NULL, '2024-02-01 18:07:51', NULL),
(36, 'baby', NULL, '2024-02-01 18:07:51', NULL),
(37, 'cosmatics', NULL, '2024-02-01 18:07:51', NULL),
(38, 'beauty', NULL, '2024-02-01 18:07:51', NULL),
(39, 'makeup', NULL, '2024-02-01 18:07:51', NULL),
(40, 'shirt', NULL, '2024-02-01 18:07:51', NULL),
(41, 'Sheila Mcneil', '2024-02-01 19:23:20', '2024-02-01 18:35:03', '2024-02-01 19:23:20'),
(42, 'Fritz Avery', '2024-02-01 19:23:25', '2024-02-01 18:35:03', '2024-02-01 19:23:25'),
(43, 'Leah David', '2024-02-01 19:23:29', '2024-02-01 18:35:03', '2024-02-01 19:23:29'),
(44, 'Merritt Joyce', '2024-02-01 19:23:15', '2024-02-01 18:35:03', '2024-02-01 19:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shamim Hasan', 'gepaxiqil@mailinator.com', '2024-01-15 13:38:06', '$2y$12$92Mbk87VvjLnREx61Gt8I.JHXTeg77hdlfhqW29eXFEycZkYTYAki', 'uploads/users/Shamim Hasan_1.jpg', 'TxtC9drny7xzgni0vZ0z38CdNkSPUKEPOf95IofvTLqxN3rF7vp4nMbvITT9', '2024-01-15 13:38:06', '2024-01-22 09:43:05'),
(3, 'Ciaran Murray', 'cojij@mailinator.com', '2024-01-15 20:33:50', '$2y$12$GrUsD6liLQwG1DbeVeNeVO2pZyPELhE0PzoUxQFWYSvbyisSbS1Oe', 'uploads/users/Ciaran Murray_3.jpg', 'zid1gHzJ3iZJIKO7EiChWjyEEddzrqE1MDlAwodllkx8YLTHzUuRd0c9Tkez', '2024-01-15 14:33:50', '2024-01-22 09:50:13'),
(9, 'Blake Sampson', 'lysixyjon@mailinator.com', '2024-01-24 08:42:27', '$2y$12$DQFsN.YB6LdHEGL2fgdhIO6fO.SWdHQ.dHcnn18GcT1c9D99aIL6i', NULL, NULL, '2024-01-24 02:42:27', '2024-01-24 02:42:27'),
(10, 'Bo Moses', 'ponyxo@mailinator.com', '2024-01-24 08:42:51', '$2y$12$JiO7/CLVGHTSCCKjnjycwOcP9h5mleCVc648OWp3RZvJ73a.CaN8O', NULL, NULL, '2024-01-24 02:42:51', '2024-01-24 02:42:51'),
(14, 'Adria Welch', 'cexecyt@mailinator.com', '2024-01-27 15:26:34', '$2y$12$sNbvjfM81uF47n3hJmbFcuGOZ24LyxTqjdsV8BJBB1sfMVd2pJvsO', NULL, NULL, '2024-01-27 15:26:34', '2024-01-27 15:26:34'),
(15, 'Barrett Parrish', 'pyfe@mailinator.com', '2024-01-27 15:26:46', '$2y$12$K8fNKZoCPnN2C6MqLae9mer/iwiYV2Xv/BdmBqYhE.dVNUO7qIVrO', NULL, NULL, '2024-01-27 15:26:46', '2024-01-27 15:26:46'),
(16, 'Lysandra Alvarez', 'pelelexava@mailinator.com', '2024-01-27 15:27:00', '$2y$12$9IBvEnZxllq6gg3uhTxhceFsACS3E.WZAz1L2cb9ZO3XMp4rTbuLq', NULL, NULL, '2024-01-27 15:27:00', '2024-01-27 15:27:00'),
(17, 'Austin Horne', 'fano@mailinator.com', '2024-01-27 15:27:40', '$2y$12$z7XlJsKNAMevXEz3qqTkvOaFx57WhbaNETlWBJrtMzi9G0ECra.kG', NULL, NULL, '2024-01-27 15:27:40', '2024-01-27 15:27:40'),
(18, 'Tate Gutierrez', 'qinito@mailinator.com', '2024-01-27 15:27:51', '$2y$12$Rx7V2IRtEVgQVq.yxWdQyeJz7q82pAEk9Ufo8rbnzI77cygGo/vUm', NULL, NULL, '2024-01-27 15:27:51', '2024-01-27 15:27:51'),
(19, 'Lois Davidson', 'puxyxuta@mailinator.com', '2024-01-27 15:28:01', '$2y$12$96aVip8NjuHBIgBD4rso3enPmCefJnMGnezbC0wkaeNSLAJDBb56u', NULL, NULL, '2024-01-27 15:28:01', '2024-01-27 15:28:01'),
(20, 'Jason Atkinson', 'hufugog@mailinator.com', '2024-01-27 15:28:19', '$2y$12$K10E6SemMXxw8YnDEbXq9uMr2CyKdeQDDZYmZe55KL9Fwyx.MF2h2', NULL, NULL, '2024-01-27 15:28:19', '2024-01-27 15:28:19'),
(21, 'Jermaine Graves', 'huka@mailinator.com', '2024-01-27 15:28:32', '$2y$12$cUjVZCuLGTGrP7j1lyPZU.zV.BGcxXiDxnaHJMIEFS65LVGrkZSWi', NULL, NULL, '2024-01-27 15:28:32', '2024-01-27 15:28:32'),
(22, 'Elijah Dean', 'povebafo@mailinator.com', '2024-01-27 15:28:47', '$2y$12$Ti5qwK.P/Y0LMg.nfZLbQuQnavg0MQzo6dvUcD95DnL2HbhL5wzQm', NULL, NULL, '2024-01-27 15:28:47', '2024-01-27 15:28:47'),
(23, 'Hilel Irwin', 'dexebi@mailinator.com', '2024-01-27 15:38:45', '$2y$12$mSP9FWMRpprOAUQb8kUA7.4C4GYRMaZ8ry9m2RGs6YF/vAfOn0AV.', NULL, NULL, '2024-01-27 15:38:45', '2024-01-27 15:38:45'),
(24, 'Bernard Vega', 'mugys@mailinator.com', '2024-01-27 15:38:55', '$2y$12$Sk0iG3NneKTyC4JKHTq/dO5S75NBemvaW4NPfRSqoiIRmSi9n2OhW', NULL, NULL, '2024-01-27 15:38:55', '2024-01-27 15:38:55'),
(25, 'Dennis Buckley', 'qewazej@mailinator.com', '2024-01-27 15:39:04', '$2y$12$LIHFH/556usPv.JCMLDTquuiPMGNQqqCBYys4uRhgEwTkSlSPAYVa', NULL, NULL, '2024-01-27 15:39:04', '2024-01-27 15:39:04'),
(28, 'Olga Lott', 'sh92062676@gmail.com', '2024-01-29 19:27:51', '$2y$12$RqM9fafnMsYzaWQBZ2oVG./LWUQn2PLjrizP7sbqpyMYGxfSMHRNe', NULL, NULL, '2024-01-29 19:27:51', '2024-01-29 19:27:51'),
(29, 'Madeson Garrison', 'mdsamime80@gmail.com', '2024-01-29 19:29:11', '$2y$12$T0KCcd007xT41a8EKN2UouiT8TNxUuCeKKdtLWEvXlVTYYrMD5noa', NULL, 'RTLy78pGPgXJGchc9BWqhFAvQLqTiDKrK0ur1mwKp8TgSsr7BxFd2xRcPUri', '2024-01-29 19:29:11', '2024-01-29 19:29:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_name_unique` (`tag_name`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
