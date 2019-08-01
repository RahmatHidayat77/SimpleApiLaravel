-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `testErpo`;
CREATE DATABASE `testErpo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `testErpo`;

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `banners` (`id`, `nama`, `gambar`, `created_at`, `updated_at`) VALUES
(1,	'Banner 1',	'banner1.jpg',	'2019-08-01 03:56:30',	'2019-08-01 03:56:30'),
(2,	'Banner 2',	'banner2.jpg',	'2019-08-01 03:56:47',	'2019-08-01 03:56:47'),
(3,	'Banner 3',	'banner3.jpg',	'2019-08-01 03:57:03',	'2019-08-01 03:57:03');

DROP TABLE IF EXISTS `kategoris`;
CREATE TABLE `kategoris` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `kategoris` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1,	'Halal',	'2019-08-01 03:57:30',	'2019-08-01 03:57:30'),
(2,	'Makanan',	'2019-08-01 03:57:42',	'2019-08-01 03:57:42'),
(3,	'Minuman',	'2019-08-01 03:57:50',	'2019-08-01 03:57:50'),
(4,	'Under 20k',	'2019-08-01 03:58:00',	'2019-08-01 03:58:00'),
(5,	'Under 30k',	'2019-08-01 03:58:08',	'2019-08-01 03:58:08');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21,	'2014_10_12_000000_create_users_table',	1),
(22,	'2014_10_12_100000_create_password_resets_table',	1),
(23,	'2016_06_01_000001_create_oauth_auth_codes_table',	1),
(24,	'2016_06_01_000002_create_oauth_access_tokens_table',	1),
(25,	'2016_06_01_000003_create_oauth_refresh_tokens_table',	1),
(26,	'2016_06_01_000004_create_oauth_clients_table',	1),
(27,	'2016_06_01_000005_create_oauth_personal_access_clients_table',	1),
(28,	'2019_07_31_064108_create_banners_table',	1),
(29,	'2019_07_31_064129_create_kategoris_table',	1),
(30,	'2019_07_31_064137_create_produks_table',	1);

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('165fa5517093c852d06b5bfbc1fbb4e4a5f84b46b144920308264d0417769c56f271b5a7405497b5',	1,	1,	'MyApp',	'[]',	0,	'2019-07-31 22:30:58',	'2019-07-31 22:30:58',	'2020-08-01 05:30:58'),
('2e18552f079be49afa2aac5f91cd813b7574415469fefae178c79788a8c7128443a6afc514d8b673',	1,	1,	'MyApp',	'[]',	0,	'2019-07-31 22:43:41',	'2019-07-31 22:43:41',	'2020-08-01 05:43:41'),
('66a95e43115ee8b965f2fad36fcb4190c15dbf55e9d32e95a96ced0ae0a940eda96f8f8d8e38b10d',	1,	1,	'MyApp',	'[]',	0,	'2019-07-31 23:20:03',	'2019-07-31 23:20:03',	'2020-08-01 06:20:03'),
('74d382b7e7edd85ad25a7c10d83ecfa358ec715c08d44b9f84149c6dfac5953e90afd266e3564b1f',	1,	1,	'MyApp',	'[]',	0,	'2019-07-31 22:49:25',	'2019-07-31 22:49:25',	'2020-08-01 05:49:25'),
('b6bce476cce4f3d000f3d0aa4ec1ffd0df4bcbbcd671c076fda2e0caf6113937413eaee2416bce8b',	1,	1,	'MyApp',	'[]',	0,	'2019-07-31 22:30:41',	'2019-07-31 22:30:41',	'2020-08-01 05:30:41'),
('dff2d1bf360295e24a7438a9c8021c5363c17083684eda709e1186d00a55cd23df47f46d5f4f9cdb',	9,	1,	'MyApp',	'[]',	0,	'2019-07-31 23:19:11',	'2019-07-31 23:19:11',	'2020-08-01 06:19:11'),
('e5ce61965f00ed10e477d64fc19a3da6ddda0ea48234106e7990a30e18bb83eada6bf59a2a11c295',	2,	1,	'MyApp',	'[]',	0,	'2019-07-31 22:50:01',	'2019-07-31 22:50:01',	'2020-08-01 05:50:01'),
('f4b000c9db452a2e8f40f36b252976ee121fdcf50e5fc507166861a373ccb0dd287c86561c38e188',	1,	1,	'MyApp',	'[]',	0,	'2019-07-31 22:43:01',	'2019-07-31 22:43:01',	'2020-08-01 05:43:01');

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1,	NULL,	'Laravel Personal Access Client',	'5QjhhXUu5gB3f6gR6CIheneK5eTkHIzMXwjZsPwy',	'http://localhost',	1,	0,	0,	'2019-07-31 22:03:14',	'2019-07-31 22:03:14'),
(2,	NULL,	'Laravel Password Grant Client',	'GZkULRo9Po7zs6QpSLjXEslSxycnLuQiphZ7HTYl',	'http://localhost',	0,	1,	0,	'2019-07-31 22:03:14',	'2019-07-31 22:03:14');

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1,	1,	'2019-07-31 22:03:14',	'2019-07-31 22:03:14');

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `produks`;
CREATE TABLE `produks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `halal` tinyint(1) NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `produks` (`id`, `nama`, `harga`, `rate`, `jenis`, `halal`, `desc`, `gambar`, `created_at`, `updated_at`) VALUES
(1,	'Kerupuk Singkong',	25000,	4,	1,	1,	'Kerupuk Singkong enak.',	'kerupuksingkong.jpg',	'2019-08-01 03:59:22',	'2019-08-01 03:59:22'),
(2,	'Kopi Aceh',	32000,	4,	2,	1,	'Kopi Aceh nikmat.',	'kopiaceh.jpg',	'2019-08-01 04:00:05',	'2019-08-01 04:00:05'),
(3,	'Teh Kotak',	8000,	5,	2,	1,	'Teh Kotak murah.',	'tehkotak.jpg',	'2019-08-01 04:00:43',	'2019-08-01 04:00:43'),
(4,	'Wafer Coklat',	15000,	4,	1,	1,	'Wafer Coklat enak.',	'wafercoklat.jpg',	'2019-08-01 04:01:56',	'2019-08-01 04:01:56'),
(5,	'Teh Botol',	6000,	3,	2,	1,	'Teh Botol murah.',	'tehbotol.jpg',	'2019-08-01 04:03:08',	'2019-08-01 04:03:08'),
(6,	'Roti Marie',	17000,	5,	1,	1,	'Roti Marie enak.',	'rotimarie.jpg',	'2019-08-01 04:04:38',	'2019-08-01 04:04:38');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'Rahmat',	'rhh@mail.com',	NULL,	'$2y$10$eFFCjg9zzuVzbM1aDGtn6eOki.nz6l.r4RddgEr0VfdYqcakybkGu',	NULL,	'2019-07-31 22:30:41',	'2019-07-31 22:30:41'),
(2,	'Rahmat',	'rht@mail.com',	NULL,	'$2y$10$yPhEknPjulQk2kF/4vGX/ea/w7qi4lFjHoXIsr2M9m0g0sf4o5GQq',	NULL,	'2019-07-31 22:50:01',	'2019-07-31 22:50:01'),
(9,	'Rahmat Hidayat',	'rahmathidayat@mail.com',	NULL,	'$2y$10$VHJ6LMCYsl7nbk9kvZiCp.Sa7OwnAikj2yW8ursBz3MuDcJ0UF042',	NULL,	'2019-07-31 23:19:11',	'2019-07-31 23:19:11');

-- 2019-08-01 06:23:00
