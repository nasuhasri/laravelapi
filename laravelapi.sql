-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table laravelapi.devices
CREATE TABLE IF NOT EXISTS `devices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table laravelapi.devices: ~8 rows (approximately)
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` (`id`, `name`, `member_id`, `created_at`, `updated_at`) VALUES
	(1, 'laptop', 8, NULL, NULL),
	(2, 'smart phone', 3, NULL, NULL),
	(3, 'camera', 2, NULL, NULL),
	(4, 'earphone', 5, NULL, NULL),
	(5, 'super computer', 55, NULL, '2022-02-28 06:43:33'),
	(6, 'macbook', 2, '2022-02-27 17:01:18', '2022-02-27 17:01:18'),
	(16, 'macpro', 12, '2022-02-28 07:38:21', '2022-02-28 07:38:21'),
	(17, 'macpro', 123, '2022-02-28 07:42:47', '2022-02-28 07:42:47'),
	(18, 'macpro1', 12, '2022-02-28 07:43:08', '2022-02-28 07:43:08'),
	(19, 'iphone X', 12, '2022-02-28 07:45:02', '2022-02-28 07:45:02'),
	(20, 'haluu', 3, '2023-05-19 07:48:00', '2023-05-19 07:48:00'),
	(21, 'macbook pro m1', 3, '2023-05-19 08:24:03', '2023-05-19 08:24:03');
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;

-- Dumping structure for table laravelapi.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelapi.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table laravelapi.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table laravelapi.members: ~2 rows (approximately)
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `name`, `email`, `address`) VALUES
	(1, 'Nasuha Asri', 'nasuhasri@gmail.com', 'Melaka'),
	(2, 'Nirnama', 'nirnama@gmail.com', 'Istana Melaka');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- Dumping structure for table laravelapi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelapi.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_02_28_082748_create_todos_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravelapi.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelapi.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravelapi.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelapi.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table laravelapi.todos
CREATE TABLE IF NOT EXISTS `todos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tasks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelapi.todos: ~14 rows (approximately)
/*!40000 ALTER TABLE `todos` DISABLE KEYS */;
INSERT INTO `todos` (`id`, `tasks`, `priority`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Randi Raynor DDS', 'vitae', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(2, 'Sofia Wunsch DVM', 'numquam', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(3, 'Mr. Eldred Mayert', 'magni', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(6, 'Miss Alysson Goyette II', 'magnam', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(7, 'Quincy Yundt', 'aperiam', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(8, 'Caroline Schamberger', 'sed', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(9, 'Makenzie Bechtelar IV', 'vero', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(10, 'Mr. Ted Gutkowski', 'numquam', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(11, 'Sabryna Sauer', 'ex', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(12, 'Annabelle Schowalter V', 'adipisci', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(13, 'Prof. Hazel Skiles DDS', 'error', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(14, 'Randi Stracke', 'ut', 0, '2022-02-28 08:45:43', '2022-02-28 08:45:43'),
	(16, 'laravel api tutorial', 'very high', 1, '2022-02-28 09:01:39', '2022-02-28 09:30:15');
/*!40000 ALTER TABLE `todos` ENABLE KEYS */;

-- Dumping structure for table laravelapi.users
CREATE TABLE IF NOT EXISTS `users` (
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

-- Dumping data for table laravelapi.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
