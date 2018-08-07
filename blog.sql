-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 07, 2018 at 04:58 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.2.5-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

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
(3, '2018_07_31_184936_create_quote_table', 1);

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
-- Table structure for table `pdvs`
--

CREATE TABLE `pdvs` (
  `code` int(11) DEFAULT NULL,
  `coberturaCompletaPDV` int(11) DEFAULT NULL,
  `coberturadoPDV` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `horaAperturaPDV` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `idPDV` int(11) DEFAULT NULL,
  `nombrePDV` varchar(56) CHARACTER SET utf8 DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdvs`
--

INSERT INTO `pdvs` (`code`, `coberturaCompletaPDV`, `coberturadoPDV`, `horaAperturaPDV`, `idPDV`, `nombrePDV`, `id`) VALUES
(0, 2, 'SI', '11:00', 5, 'PARIS CENCOSUD PLAZA NORTE-LIMA', 1),
(0, 2, 'SI', '11:00', 8, 'SAGA FALABELLA S.A.(LIMA) SAGA PLAZA NORTE-INDEPENDENCIA', 2),
(0, 2, 'SI', '11:00', 9, 'OECHSLE (TIENDAS PERUANAS S.A.) LIMA INDEPENDENCIA', 3),
(0, 2, 'SI', '11:00', 15, 'SAGA FALABELLA S.A.(LIMA) SAGA BELLAVISTA', 4),
(0, 2, 'SI', '09:00', 16, 'TOTTUS LIMA TOTTUS CANTA CALLAO', 5),
(0, 2, 'SI', '14:00', 17, 'TOTTUS LIMA TOTTUS CALLAO', 6),
(0, 2, 'SI', '15:00', 21, 'TOTTUS LIMA TOTTUS BELLAVISTA', 7),
(0, 2, 'SI', '14:00', 23, 'TOTTUS LIMA TOTTUS QUILCA', 8),
(0, 2, 'SI', '14:00', 30, 'TOTTUS LIMA TOTTUS PUENTE PIEDRA', 9),
(0, 0, 'NO', ' ', 33, 'ELEKTRA ( LIMA ) PUENTE PIEDRA', 10),
(0, 2, 'SI', '11:00', 43, 'SAGA FALABELLA S.A.(LIMA) LIMA - SAN MIGUEL', 11),
(0, 2, 'SI', '15:00', 47, 'TOTTUS LIMA TOTTUS LA MARINA', 12),
(0, 2, 'SI', '14:00', 51, 'SAGA FALABELLA S.A.(LIMA) MEGA PLAZA', 13),
(0, 2, 'SI', '11:00', 54, 'EDELNOR S.A. EDELNOR MEGA PLAZA', 14),
(0, 2, 'SI', '14:00', 57, 'PARIS CENCOSUD MEGA PLAZA-LIMA', 15),
(0, 2, 'SI', '09:00', 58, 'TOTTUS LIMA TOTTUS LOS OLIVOS 2', 16),
(0, 2, 'SI', '15:00', 59, 'TOTTUS LIMA TOTTUS LOS OLIVOS', 17),
(0, 2, 'SI', '09:00', 60, 'TOTTUS LIMA CANTA CENTRAL', 18),
(0, 2, 'SI', '13:00', 64, 'ELEKTRA ( LIMA ) SAN MARTIN DE PORRES', 19),
(0, 2, 'SI', '09:00', 67, 'ELEKTRA ( LIMA ) VENTANILLA', 20),
(0, 0, 'NO', '09:00', 72, 'TOTTUS LIMA TOTTUS NACIONES UNIDAS', 21),
(0, 2, 'SI', '10:00', 75, 'LA CURACAO ( LIMA ) LIMA - SAN JUAN', 22),
(0, 0, 'NO', '11:00', 77, 'ELEKTRA ( LIMA ) LURIN', 23),
(0, 2, 'SI', '10:00', 79, 'ELEKTRA ( LIMA ) VILLA MARIA', 24),
(0, 2, 'SI', '11:00', 80, 'ELEKTRA ( LIMA ) VILLA EL SALVADOR', 25),
(0, 0, 'NO', '14:00', 82, 'TOTTUS LIMA TOTTUS PACHACUTEC', 26),
(0, 0, 'NO', ' ', 89, 'CARSA - PROVINCIAS AREQUIPA - SAN JUAN DE DIOS', 27),
(0, 0, 'NO', ' ', 91, 'CREDI SHOP COCACHACRA', 28),
(0, 0, 'NO', ' ', 92, 'CREDI SHOP ISLAY MOLLENDO', 29);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `created_at`, `updated_at`, `amount`, `quantity`) VALUES
(1, NULL, NULL, 'Quote 256', 2),
(2, NULL, NULL, 'Quote 2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `pdvs`
--
ALTER TABLE `pdvs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pdvs`
--
ALTER TABLE `pdvs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
