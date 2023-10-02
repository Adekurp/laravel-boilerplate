-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 05:13 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maxytest`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1),
(9, '2023_09_18_041509_create_products_table', 2),
(10, '2023_09_18_075801_create_purchase_order_lines_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_code`, `price`, `created_at`, `updated_at`) VALUES
(52, 'Et eveniet dolores dolorum maiores commodi et praesentium libero.', 'at', 100000, '1996-02-25 12:22:12', '2014-12-04 11:14:13'),
(53, 'Mollitia perspiciatis minus possimus vel.', 'est', 100000, '1993-08-16 06:53:17', '1982-06-22 02:31:02'),
(54, 'Nisi quo natus blanditiis eligendi consectetur enim.', 'voluptate', 221690000, '1992-12-31 20:00:54', '2018-11-13 08:58:22'),
(55, 'Aut accusantium asperiores laudantium esse laborum.', 'quisquam', 272966, '1987-05-27 09:35:45', '1996-01-13 02:19:43'),
(56, 'Hic qui deleniti id soluta est placeat tenetur.', 'voluptatem', 868502, '1973-03-02 16:01:31', '2011-03-30 16:52:40'),
(57, 'Esse doloribus possimus pariatur eaque expedita cum.', 'et', 100000, '1980-08-19 17:20:31', '2011-12-21 02:37:01'),
(58, 'Id officia assumenda ut repellat sed debitis et quaerat.', 'in', 39538600, '2000-07-15 06:03:51', '2022-12-28 00:05:21'),
(59, 'Non blanditiis fugit corrupti aut veritatis.', 'totam', 37920600, '1979-01-12 17:50:19', '2014-12-02 15:58:30'),
(60, 'Sunt corporis et repellat eaque ut eum accusantium.', 'accusamus', 100000, '2000-05-22 21:24:17', '2002-03-08 11:04:34'),
(61, 'Nihil quia non maiores sint ut et repudiandae velit.', 'aut', 100000, '2016-10-05 11:17:56', '2011-02-02 21:45:37'),
(62, 'Qui sed laborum a facere aspernatur rerum.', 'iste', 32215400, '1988-06-09 18:05:04', '2004-07-08 09:03:12'),
(63, 'Molestiae qui sunt doloribus quasi.', 'quod', 659562000, '2005-03-26 05:31:08', '1996-06-28 21:20:24'),
(64, 'Et aliquid magni qui error hic doloremque.', 'illum', 100000, '1990-10-18 14:10:12', '2021-10-06 10:18:03'),
(65, 'Aut porro dolor consectetur amet autem temporibus incidunt.', 'occaecati', 25946400, '1975-12-13 20:24:05', '1998-04-22 02:57:31'),
(66, 'In distinctio officiis repudiandae non eum sit est.', 'et', 100000, '2008-04-01 21:21:53', '2009-08-28 17:52:22'),
(67, 'Ab fugit perferendis autem aliquid fugit.', 'quia', 100000, '1994-04-29 07:55:19', '2013-11-08 03:11:02'),
(68, 'Veniam neque cum ut adipisci.', 'pariatur', 100000, '1988-03-29 17:14:12', '1987-04-03 21:27:14'),
(69, 'Cupiditate voluptas perferendis eos reiciendis rerum sunt.', 'quo', 100000, '1978-06-14 20:27:26', '2017-07-11 06:55:30'),
(70, 'Dolor nostrum cumque quibusdam vero.', 'veritatis', 100000, '2012-07-06 04:18:34', '1985-03-01 20:43:40'),
(71, 'Aspernatur sunt quo qui temporibus et consequuntur corrupti.', 'error', 168878, '2006-11-24 01:29:51', '2009-07-05 17:50:48'),
(72, 'Accusantium alias reiciendis vel ad amet alias.', 'nulla', 299365, '2003-06-21 03:31:06', '2000-06-19 23:13:26'),
(73, 'Eum velit et neque magnam sit.', 'necessitatibus', 387990000, '2011-07-20 15:27:12', '2001-05-19 08:03:08'),
(74, 'Eum et animi rerum magnam.', 'dolores', 2060440, '1970-07-29 07:20:59', '1994-08-12 06:35:02'),
(75, 'Aut reprehenderit eos facilis qui ut voluptas.', 'aut', 100000, '2008-05-28 04:43:34', '1977-08-26 11:21:35'),
(76, 'Nostrum magnam repellat enim quod quo dolorem sunt corporis.', 'eius', 47532000, '1977-08-13 12:57:51', '1989-04-05 16:23:30'),
(77, 'Esse perferendis consectetur ut voluptas quis.', 'quia', 132272, '2001-01-23 07:22:49', '2010-08-25 18:17:24'),
(78, 'Voluptas velit qui cum maiores nisi.', 'et', 100000, '1972-07-31 12:00:58', '1983-02-26 18:11:38'),
(79, 'Aut et enim velit ipsam aliquid hic ex.', 'facilis', 504958, '1998-12-29 23:06:53', '1987-04-14 01:02:49'),
(80, 'Voluptatem dolorum molestias est harum sed repellat itaque.', 'earum', 4844010, '2018-12-02 17:41:32', '2013-03-22 00:39:58'),
(81, 'Repudiandae eligendi animi esse rerum tempora ex neque.', 'qui', 105998, '2001-12-08 10:02:59', '2003-02-03 04:51:05'),
(82, 'Dicta aspernatur quia et dicta voluptate ipsam quos.', 'qui', 100000, '1984-08-13 04:14:23', '2012-11-03 17:16:45'),
(83, 'Corporis pariatur fugiat ut eius alias.', 'qui', 3729890, '2018-07-05 13:19:11', '1990-02-22 23:49:50'),
(84, 'Ipsam tempore sed vitae blanditiis modi.', 'sequi', 100000, '1989-04-03 21:30:10', '1973-05-03 19:25:45'),
(85, 'Voluptate porro quisquam dolor consequatur architecto.', 'omnis', 9944050, '1976-12-07 04:09:17', '2007-10-23 15:29:41'),
(86, 'Voluptatum non illo molestiae.', 'beatae', 100000, '1982-03-27 16:38:40', '1975-06-22 06:56:27'),
(87, 'Ut animi sequi blanditiis laboriosam.', 'at', 29461000, '1971-05-30 16:06:39', '1984-05-17 21:48:33'),
(88, 'Qui est quisquam dolorem ab vel.', 'alias', 100000, '1994-05-05 23:34:39', '2006-09-19 04:43:33'),
(89, 'Et reprehenderit pariatur aperiam quidem sunt repellendus sit.', 'magni', 1702270, '1996-09-25 22:32:57', '1978-06-01 22:25:53'),
(90, 'Illo consectetur et ut ea id quod ipsam consequuntur.', 'voluptates', 100000, '2013-05-05 07:30:27', '2000-01-16 10:51:10'),
(91, 'Corporis autem modi qui.', 'dignissimos', 100000, '1990-07-13 21:50:37', '1998-11-01 06:14:42'),
(92, 'Soluta veritatis adipisci nam iure ea asperiores reprehenderit beatae.', 'ratione', 100000, '2015-06-29 17:40:42', '1984-10-23 15:19:48'),
(93, 'Molestiae quia est iure quibusdam eveniet perspiciatis veritatis.', 'nisi', 182064, '1971-05-28 02:41:11', '1985-09-03 05:17:11'),
(94, 'Fuga perferendis occaecati fugit ea eum cum nesciunt.', 'et', 100000, '1983-02-07 22:41:50', '1992-12-23 06:23:02'),
(95, 'Esse odit nobis aspernatur dolores amet accusamus non.', 'ad', 100000, '1978-04-02 00:02:05', '1972-05-19 14:22:38'),
(96, 'Voluptas error ea repellat sint eos ut recusandae.', 'magnam', 41512100, '1978-06-18 08:42:40', '1990-01-02 15:31:48'),
(97, 'Sint voluptatem praesentium nam velit reprehenderit.', 'perferendis', 288211, '1987-12-02 16:30:27', '2017-10-08 23:31:44'),
(98, 'Non aspernatur quia soluta eos architecto pariatur.', 'aperiam', 2621580, '2000-12-17 19:28:42', '2020-01-20 11:10:08'),
(99, 'Odio quasi dicta est accusamus.', 'dolore', 100000, '2019-12-20 17:48:05', '2013-10-10 20:09:17'),
(100, 'Sint officiis quis quo natus.', 'voluptatem', 2880620, '1971-08-18 06:39:33', '2005-09-06 04:53:37'),
(101, 'Sunt magni officia error quos ut enim voluptate.', 'quibusdam', 100000, '1979-09-04 01:48:24', '1999-09-08 08:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_lines`
--

CREATE TABLE `purchase_order_lines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_order_lines`
--

INSERT INTO `purchase_order_lines` (`id`, `product_id`, `qty`, `price`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(4, 54, 50, 20000, 50, 500000, '2023-09-23 07:13:49', '2023-09-23 07:13:49'),
(5, 76, 5, 100000, 10, 450000, '2023-09-23 07:14:17', '2023-09-23 07:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$R8v2yuK.4OxEF9L0nFbtR.uZ8YZH2OTTSlf203W61P0SuE.ARCG8m', 1, '0b24a143-9910-4303-9c18-aa4fbc126019', 1, NULL, NULL, '2023-09-23 07:10:00', '2023-09-23 07:11:42', NULL, '2023-09-23 14:11:42'),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$rQiNH5yVDoqW9F42T6AFAuLjRKFgLzXt9JeU/WdQfHss3byo0yBLa', 1, '6a64cbf3-d470-43df-a4a8-7b03054bc9e2', 1, NULL, NULL, '2023-09-23 07:10:01', '2023-09-23 07:10:01', NULL, NULL),
(3, 'ade', 'ade@email.com', '$2y$10$W10z9D./ND0oOCl6LTkDqux9qQ3RQenAwip5hY4GVx2CMMLtTCXEW', 1, '0b24a143-9910-4303-9c18-aa4fbc126019', 1, NULL, NULL, '2023-09-23 07:10:00', '2023-09-23 07:12:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 1),
(3, 2);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_lines`
--
ALTER TABLE `purchase_order_lines`
  ADD CONSTRAINT `purchase_order_lines_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
