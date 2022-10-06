-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 05 oct. 2022 à 06:39
-- Version du serveur : 8.0.30-0ubuntu0.22.04.1
-- Version de PHP : 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sfoi`
--

-- --------------------------------------------------------

--
-- Structure de la table `annual_interest_rate`
--

CREATE TABLE `annual_interest_rate` (
  `id` int NOT NULL,
  `amount` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annual_interest_rate`
--

INSERT INTO `annual_interest_rate` (`id`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 15000, '2022-10-04 11:00:13', '2022-10-04 11:00:13', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `annual_interest_rate_story`
--

CREATE TABLE `annual_interest_rate_story` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `annual_interest_rate_id` int DEFAULT NULL,
  `new_value` double NOT NULL,
  `old_value` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `arbitrage`
--

CREATE TABLE `arbitrage` (
  `id` int NOT NULL,
  `bank_id` int DEFAULT NULL,
  `proforma_id` int DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `percent` double DEFAULT NULL,
  `currency_course` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `arbitrage`
--

INSERT INTO `arbitrage` (`id`, `bank_id`, `proforma_id`, `invoice_id`, `percent`, `currency_course`, `created_at`, `updated_at`, `deleted_at`, `amount`) VALUES
(1, NULL, 7, NULL, 12, 4000, '2022-09-30 07:44:34', '2022-09-30 07:44:34', NULL, NULL),
(2, NULL, 7, NULL, 88, 1000, '2022-09-30 07:44:34', '2022-09-30 07:44:34', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `bank`
--

CREATE TABLE `bank` (
  `id` int NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bank`
--

INSERT INTO `bank` (`id`, `label`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BMOI', 'index3-6335b40914c26269225580.png', '2022-09-29 14:44:09', '2022-09-29 15:04:41', NULL),
(2, 'BOA', 'index1-6335b3cdc4e54666637740.jpg', '2022-09-29 14:44:15', '2022-09-29 15:03:41', NULL),
(3, 'BFV', 'index-6335b3095d56a627318964.png', '2022-09-29 14:44:20', '2022-09-29 15:00:25', NULL),
(4, 'BNI', 'logo-bni-madagascar-6335b111bfb18060653673.png', '2022-09-29 14:44:27', '2022-09-29 14:52:01', NULL),
(5, 'SG', NULL, '2022-09-29 14:52:33', '2022-09-29 14:58:27', '2022-09-29 14:58:27'),
(6, 'bzhduhuezdrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', NULL, '2022-09-29 14:58:13', '2022-09-29 14:58:22', '2022-09-29 14:58:22');

-- --------------------------------------------------------

--
-- Structure de la table `branch`
--

CREATE TABLE `branch` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `branch`
--

INSERT INTO `branch` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fhdsjqfdsfyu\'\"t\"-_é\'\"àà\'pé', '2022-05-02 14:49:59', '2022-05-02 14:49:59', '2022-05-02 14:50:33'),
(2, 'fhdsjqfdsfyu\'\"t\"-_é\'\"àà\'pé\'5456z523', '2022-05-02 14:50:00', '2022-05-02 14:50:00', '2022-05-02 14:50:24'),
(3, 'fhdsjqfdsfyu\'\"t\"-_é\'\"àà\'pé\'5456z523re2g32', '2022-05-02 14:50:00', '2022-05-02 14:50:00', '2022-05-02 14:50:20'),
(4, 'fhdsjqfdsfyu\'\"t\"-_é\'\"àà\'pé\'5456z523re2g32g32', '2022-05-02 14:50:01', '2022-05-02 14:50:01', '2022-05-02 14:50:17'),
(5, 'fhdsjqfdsfyu\'\"t\"-_é\'\"àà\'pé\'5456z523re2g32g32f3d', '2022-05-02 14:50:01', '2022-05-02 14:50:01', '2022-05-02 14:50:13'),
(6, 'brancheess 1', '2022-05-02 14:50:51', '2022-05-02 14:51:33', '2022-05-03 14:28:42'),
(7, '&é\"\'(-è_çà)àçoiuyyfghjklm', '2022-05-02 14:51:44', '2022-05-02 16:06:40', '2022-05-02 16:06:45'),
(8, 'Extraction', '2022-05-02 14:55:31', '2022-05-02 14:55:31', NULL),
(9, 'RAFFINAGE', '2022-05-02 14:55:47', '2022-05-02 14:55:47', NULL),
(10, 'Craquage', '2022-05-02 14:55:57', '2022-05-03 14:29:32', NULL),
(11, 'La polymérisation', '2022-05-02 14:56:44', '2022-05-02 14:56:44', NULL),
(12, 'mise en forme', '2022-05-02 14:57:00', '2022-05-02 14:57:00', NULL),
(13, 'Le recyclage des déchets', '2022-05-02 14:57:16', '2022-05-02 14:57:16', NULL),
(14, 'Fabrication du moule', '2022-05-02 14:57:41', '2022-05-02 14:57:41', NULL),
(15, 'Post-traitement', '2022-05-02 14:58:42', '2022-05-02 14:58:42', NULL),
(16, 'Usinage', '2022-05-02 14:59:57', '2022-05-02 14:59:57', NULL),
(17, 'lavagettt', '2022-05-02 15:01:17', '2022-05-02 15:05:52', '2022-05-02 15:05:45'),
(18, 'cSFCDQSFS', '2022-05-02 16:05:29', '2022-05-02 16:05:29', '2022-05-02 16:05:35'),
(19, 'branche', '2022-05-04 10:09:07', '2022-05-04 10:09:07', '2022-05-04 10:09:16'),
(20, 'azertyuè_ofgf', '2022-05-06 09:28:09', '2022-05-06 09:28:19', '2022-05-06 09:28:19');

-- --------------------------------------------------------

--
-- Structure de la table `container`
--

CREATE TABLE `container` (
  `id` int NOT NULL,
  `container_type_id` int DEFAULT NULL,
  `proforma_id` int DEFAULT NULL,
  `invoice_id` int DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `container_type`
--

CREATE TABLE `container_type` (
  `id` int NOT NULL,
  `label` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `container_type`
--

INSERT INTO `container_type` (`id`, `label`) VALUES
(1, '40 pieds'),
(2, '20 pieds');

-- --------------------------------------------------------

--
-- Structure de la table `cost`
--

CREATE TABLE `cost` (
  `id` int NOT NULL,
  `mp_id` int DEFAULT NULL,
  `provider_lot_id` int DEFAULT NULL,
  `calculated_price` double NOT NULL,
  `currency_course` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `purchase_mp_id` int DEFAULT NULL,
  `lot_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `purchase_trade_product_id` int DEFAULT NULL,
  `trade_product_id` int DEFAULT NULL,
  `waste_recycled_id` int DEFAULT NULL,
  `purchase_waste_recycled_id` int DEFAULT NULL,
  `incoterms_status_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cost`
--

INSERT INTO `cost` (`id`, `mp_id`, `provider_lot_id`, `calculated_price`, `currency_course`, `created_at`, `updated_at`, `deleted_at`, `purchase_mp_id`, `lot_date`, `purchase_trade_product_id`, `trade_product_id`, `waste_recycled_id`, `purchase_waste_recycled_id`, `incoterms_status_id`) VALUES
(1, 33, NULL, 0, 0, '2022-06-23 17:15:56', '2022-09-27 12:52:43', NULL, 1, '2022-06-23 00:00:00', NULL, NULL, NULL, NULL, NULL),
(2, 32, NULL, 13000, 4000, '2022-06-24 08:51:11', '2022-06-24 08:51:11', NULL, 2, '2022-06-24 00:00:00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `cost_variable_charge`
--

CREATE TABLE `cost_variable_charge` (
  `id` int NOT NULL,
  `variable_charge_id` int DEFAULT NULL,
  `cost_id` int DEFAULT NULL,
  `price` double NOT NULL,
  `dotation` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cost_variable_charge`
--

INSERT INTO `cost_variable_charge` (`id`, `variable_charge_id`, `cost_id`, `price`, `dotation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20, 1, 500000, 0, '2022-06-23 17:15:56', '2022-09-27 12:52:43', NULL),
(2, 17, 2, 60000, 3000, '2022-06-24 08:51:11', '2022-06-24 08:51:11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `currency`
--

CREATE TABLE `currency` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `currency`
--

INSERT INTO `currency` (`id`, `label`, `abbreviation`, `is_current`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'AED', 'AED', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(2, 'AFN', 'AFN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(3, 'ALL', 'ALL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(4, 'AMD', 'AMD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(5, 'ANG', 'ANG', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(6, 'AOA', 'AOA', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(7, 'ARS', 'ARS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(8, 'AUD', 'AUD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(9, 'AWG', 'AWG', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(10, 'AZN', 'AZN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(11, 'BAM', 'BAM', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(12, 'BBD', 'BBD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(13, 'BDT', 'BDT', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(14, 'BGN', 'BGN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(15, 'BHD', 'BHD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(16, 'BIF', 'BIF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(17, 'BMD', 'BMD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(18, 'BND', 'BND', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(19, 'BOB', 'BOB', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(20, 'BRL', 'BRL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(21, 'BSD', 'BSD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(22, 'BTC', 'BTC', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(23, 'BTN', 'BTN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(24, 'BWP', 'BWP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(25, 'BYN', 'BYN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(26, 'BZD', 'BZD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(27, 'CAD', 'CAD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(28, 'CDF', 'CDF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(29, 'CHF', 'CHF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(30, 'CLF', 'CLF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(31, 'CLP', 'CLP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(32, 'CNH', 'CNH', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(33, 'CNY', 'CNY', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(34, 'COP', 'COP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(35, 'CRC', 'CRC', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(36, 'CUC', 'CUC', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(37, 'CUP', 'CUP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(38, 'CVE', 'CVE', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(39, 'CZK', 'CZK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(40, 'DJF', 'DJF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(41, 'DKK', 'DKK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(42, 'DOP', 'DOP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(43, 'DZD', 'DZD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(44, 'EGP', 'EGP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(45, 'ERN', 'ERN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(46, 'ETB', 'ETB', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(47, 'EUR', 'EUR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(48, 'FJD', 'FJD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(49, 'FKP', 'FKP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(50, 'GBP', 'GBP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(51, 'GEL', 'GEL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(52, 'GGP', 'GGP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(53, 'GHS', 'GHS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(54, 'GIP', 'GIP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(55, 'GMD', 'GMD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(56, 'GNF', 'GNF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(57, 'GTQ', 'GTQ', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(58, 'GYD', 'GYD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(59, 'HKD', 'HKD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(60, 'HNL', 'HNL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(61, 'HRK', 'HRK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(62, 'HTG', 'HTG', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(63, 'HUF', 'HUF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(64, 'IDR', 'IDR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(65, 'ILS', 'ILS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(66, 'IMP', 'IMP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(67, 'INR', 'INR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(68, 'IQD', 'IQD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(69, 'IRR', 'IRR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(70, 'ISK', 'ISK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(71, 'JEP', 'JEP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(72, 'JMD', 'JMD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(73, 'JOD', 'JOD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(74, 'JPY', 'JPY', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(75, 'KES', 'KES', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(76, 'KGS', 'KGS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(77, 'KHR', 'KHR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(78, 'KMF', 'KMF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(79, 'KPW', 'KPW', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(80, 'KRW', 'KRW', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(81, 'KWD', 'KWD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(82, 'KYD', 'KYD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(83, 'KZT', 'KZT', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(84, 'LAK', 'LAK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(85, 'LBP', 'LBP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(86, 'LKR', 'LKR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(87, 'LRD', 'LRD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(88, 'LSL', 'LSL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(89, 'LYD', 'LYD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(90, 'MAD', 'MAD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(91, 'MDL', 'MDL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(92, 'MGA', 'MGA', 1, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(93, 'MKD', 'MKD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(94, 'MMK', 'MMK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(95, 'MNT', 'MNT', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(96, 'MOP', 'MOP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(97, 'MRO', 'MRO', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(98, 'MRU', 'MRU', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(99, 'MUR', 'MUR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(100, 'MVR', 'MVR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(101, 'MWK', 'MWK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(102, 'MXN', 'MXN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(103, 'MYR', 'MYR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(104, 'MZN', 'MZN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(105, 'NAD', 'NAD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(106, 'NGN', 'NGN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(107, 'NIO', 'NIO', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(108, 'NOK', 'NOK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(109, 'NPR', 'NPR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(110, 'NZD', 'NZD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(111, 'OMR', 'OMR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(112, 'PAB', 'PAB', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(113, 'PEN', 'PEN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(114, 'PGK', 'PGK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(115, 'PHP', 'PHP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(116, 'PKR', 'PKR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(117, 'PLN', 'PLN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(118, 'PYG', 'PYG', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(119, 'QAR', 'QAR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(120, 'RON', 'RON', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(121, 'RSD', 'RSD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(122, 'RUB', 'RUB', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(123, 'RWF', 'RWF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(124, 'SAR', 'SAR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(125, 'SBD', 'SBD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(126, 'SCR', 'SCR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(127, 'SDG', 'SDG', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(128, 'SEK', 'SEK', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(129, 'SGD', 'SGD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(130, 'SHP', 'SHP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(131, 'SLL', 'SLL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(132, 'SOS', 'SOS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(133, 'SRD', 'SRD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(134, 'SSP', 'SSP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(135, 'STD', 'STD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(136, 'STN', 'STN', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(137, 'SVC', 'SVC', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(138, 'SYP', 'SYP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(139, 'SZL', 'SZL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(140, 'THB', 'THB', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(141, 'TJS', 'TJS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(142, 'TMT', 'TMT', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(143, 'TND', 'TND', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(144, 'TOP', 'TOP', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(145, 'TRY', 'TRY', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(146, 'TTD', 'TTD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(147, 'TWD', 'TWD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(148, 'TZS', 'TZS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(149, 'UAH', 'UAH', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(150, 'UGX', 'UGX', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(151, 'USD', 'USD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(152, 'UYU', 'UYU', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(153, 'UZS', 'UZS', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(154, 'VEF', 'VEF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(155, 'VND', 'VND', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(156, 'VUV', 'VUV', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(157, 'WST', 'WST', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(158, 'XAF', 'XAF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(159, 'XAG', 'XAG', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(160, 'XAU', 'XAU', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(161, 'XCD', 'XCD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(162, 'XDR', 'XDR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(163, 'XOF', 'XOF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(164, 'XPD', 'XPD', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(165, 'XPF', 'XPF', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(166, 'XPT', 'XPT', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(167, 'YERFFFFFFFFFFFFFFFFFFF', 'FFGD', 0, '2022-02-23 17:04:30', '2022-05-03 16:03:40', '2022-05-03 16:03:46'),
(168, 'ZAR', 'ZAR', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(169, 'ZMW', 'ZMW', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(170, 'ZWL', 'ZWL', 0, '2022-02-23 17:04:30', '2022-02-23 17:04:54', NULL),
(171, 'Ariary', 'MGA', 0, '2022-05-03 15:57:56', '2022-05-03 15:57:56', '2022-05-03 16:15:20'),
(172, 'Euro', 'EUR', 0, '2022-05-03 15:58:28', '2022-05-03 15:58:28', '2022-05-03 16:16:09'),
(173, 'Livre stérling', 'GBP', 0, '2022-05-03 16:03:02', '2022-05-03 16:03:02', '2022-05-03 16:15:43'),
(174, '111111111111111111111111111111111111111111111(\"\'(\"\'(\"(\"11111FFFFFFFFFFFFFFFFFFFFFFFFF', 'H34\'(\"(\"\'', 0, '2022-05-03 16:10:41', '2022-05-03 16:10:41', '2022-05-03 16:10:50'),
(175, 'Euro', 'DSFDSFDS', 0, '2022-05-04 11:46:36', '2022-05-04 11:46:36', '2022-05-04 11:48:10'),
(176, 'YEN', 'YNDFGVB', 0, '2022-05-06 09:25:43', '2022-05-06 09:26:09', '2022-05-06 09:26:09');

-- --------------------------------------------------------

--
-- Structure de la table `currency_rate`
--

CREATE TABLE `currency_rate` (
  `id` int NOT NULL,
  `currency_id` int DEFAULT NULL,
  `currency_course` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220425131504', '2022-04-25 13:15:13', 4657),
('DoctrineMigrations\\Version20220428073223', '2022-04-29 09:40:36', 19),
('DoctrineMigrations\\Version20220428084447', '2022-04-29 09:40:36', 49),
('DoctrineMigrations\\Version20220428112126', '2022-04-29 09:40:36', 13),
('DoctrineMigrations\\Version20220429143453', '2022-04-29 17:39:44', 35),
('DoctrineMigrations\\Version20220502060855', '2022-05-02 09:28:39', 17),
('DoctrineMigrations\\Version20220502063649', '2022-05-02 09:38:36', 30),
('DoctrineMigrations\\Version20220502091035', '2022-05-02 12:16:01', 8),
('DoctrineMigrations\\Version20220502111418', '2022-05-02 14:17:09', 28),
('DoctrineMigrations\\Version20220502113553', '2022-05-02 14:39:03', 44),
('DoctrineMigrations\\Version20220502130150', '2022-05-02 16:12:37', 9),
('DoctrineMigrations\\Version20220503062711', '2022-05-03 10:06:02', 36),
('DoctrineMigrations\\Version20220503070256', '2022-05-03 10:06:02', 4),
('DoctrineMigrations\\Version20220503075559', '2022-05-03 11:09:30', 24),
('DoctrineMigrations\\Version20220503092303', '2022-05-03 15:24:14', 17),
('DoctrineMigrations\\Version20220503130945', '2022-05-03 16:11:56', 17),
('DoctrineMigrations\\Version20220503140320', '2022-05-04 10:54:41', 69),
('DoctrineMigrations\\Version20220504072656', '2022-05-04 10:54:41', 66),
('DoctrineMigrations\\Version20220504113004', '2022-05-04 14:32:34', 26),
('DoctrineMigrations\\Version20220504122605', '2022-05-04 15:29:00', 26),
('DoctrineMigrations\\Version20220504135120', '2022-05-04 16:55:10', 14),
('DoctrineMigrations\\Version20220505060316', '2022-05-05 09:43:21', 37),
('DoctrineMigrations\\Version20220505062300', '2022-05-05 09:43:21', 11),
('DoctrineMigrations\\Version20220505111610', '2022-05-05 14:44:56', 39),
('DoctrineMigrations\\Version20220505132216', '2022-05-05 16:41:53', 13),
('DoctrineMigrations\\Version20220506121017', '2022-05-06 15:36:16', 24),
('DoctrineMigrations\\Version20220506121434', '2022-05-06 15:36:16', 13),
('DoctrineMigrations\\Version20220509072905', '2022-05-09 10:33:13', 242),
('DoctrineMigrations\\Version20220509092602', '2022-05-09 16:51:59', 22),
('DoctrineMigrations\\Version20220509135032', '2022-05-09 16:51:59', 27),
('DoctrineMigrations\\Version20220509141426', '2022-05-09 17:34:46', 21),
('DoctrineMigrations\\Version20220510091550', '2022-05-10 13:41:20', 13),
('DoctrineMigrations\\Version20220511122330', '2022-05-11 15:26:33', 60),
('DoctrineMigrations\\Version20220512070944', '2022-05-12 10:14:02', 97),
('DoctrineMigrations\\Version20220512085438', '2022-05-12 15:22:12', 15),
('DoctrineMigrations\\Version20220512085737', '2022-05-12 15:22:12', 9),
('DoctrineMigrations\\Version20220512092035', '2022-05-12 15:22:12', 25),
('DoctrineMigrations\\Version20220512133819', '2022-05-13 09:13:33', 9),
('DoctrineMigrations\\Version20220513071819', '2022-05-13 11:00:20', 13),
('DoctrineMigrations\\Version20220513072240', '2022-05-13 11:00:20', 33),
('DoctrineMigrations\\Version20220513084353', '2022-05-13 14:08:38', 11),
('DoctrineMigrations\\Version20220513085231', '2022-05-13 14:08:38', 34),
('DoctrineMigrations\\Version20220513090827', '2022-05-13 14:08:39', 43),
('DoctrineMigrations\\Version20220513091423', '2022-05-13 17:23:31', 22),
('DoctrineMigrations\\Version20220513104321', '2022-05-13 14:08:39', 27),
('DoctrineMigrations\\Version20220513125316', '2022-05-13 17:28:30', 22),
('DoctrineMigrations\\Version20220513134718', '2022-05-13 17:28:30', 22),
('DoctrineMigrations\\Version20220513134942', '2022-05-13 17:28:30', 5),
('DoctrineMigrations\\Version20220516131327', '2022-05-16 16:36:23', 33),
('DoctrineMigrations\\Version20220516135547', '2022-05-16 16:58:36', 62),
('DoctrineMigrations\\Version20220516140112', '2022-05-16 17:06:57', 21),
('DoctrineMigrations\\Version20220517080824', '2022-05-17 16:23:47', 71),
('DoctrineMigrations\\Version20220517092404', '2022-05-17 16:23:47', 4),
('DoctrineMigrations\\Version20220517120441', '2022-05-17 16:23:47', 4),
('DoctrineMigrations\\Version20220517123529', '2022-05-17 16:23:47', 5),
('DoctrineMigrations\\Version20220517131326', '2022-05-17 16:23:47', 5),
('DoctrineMigrations\\Version20220518071219', '2022-05-18 11:34:18', 30),
('DoctrineMigrations\\Version20220518084453', '2022-05-18 11:47:49', 25),
('DoctrineMigrations\\Version20220518092429', '2022-05-18 12:29:28', 113),
('DoctrineMigrations\\Version20220519115604', '2022-05-19 15:01:14', 19),
('DoctrineMigrations\\Version20220602110232', '2022-06-02 14:26:54', 42),
('DoctrineMigrations\\Version20220614075020', '2022-06-14 11:49:29', 22),
('DoctrineMigrations\\Version20220616145342', '2022-06-17 10:30:47', 24),
('DoctrineMigrations\\Version20220628074507', '2022-08-02 14:23:14', 29),
('DoctrineMigrations\\Version20220630062522', '2022-08-02 14:23:14', 290),
('DoctrineMigrations\\Version20220705092304', '2022-08-02 14:23:14', 59),
('DoctrineMigrations\\Version20220707113452', '2022-08-02 14:23:14', 91),
('DoctrineMigrations\\Version20220707123332', '2022-08-02 14:23:14', 83),
('DoctrineMigrations\\Version20220713135227', '2022-08-02 14:23:14', 84),
('DoctrineMigrations\\Version20220713135549', '2022-08-02 14:23:14', 23),
('DoctrineMigrations\\Version20220719105243', '2022-08-02 14:23:15', 68),
('DoctrineMigrations\\Version20220720053827', '2022-08-02 14:23:15', 111),
('DoctrineMigrations\\Version20220726091714', '2022-08-02 14:23:15', 390),
('DoctrineMigrations\\Version20220726104955', '2022-08-02 14:23:15', 138),
('DoctrineMigrations\\Version20220808134355', '2022-08-10 08:39:00', 528),
('DoctrineMigrations\\Version20220815140738', '2022-08-16 11:55:22', 29),
('DoctrineMigrations\\Version20220822062626', '2022-08-22 10:58:28', 260),
('DoctrineMigrations\\Version20220920121811', '2022-09-21 06:20:39', 147),
('DoctrineMigrations\\Version20220920135123', '2022-09-22 06:50:51', 32),
('DoctrineMigrations\\Version20220921071751', '2022-09-22 06:50:51', 115),
('DoctrineMigrations\\Version20220921083636', '2022-09-22 06:50:51', 51),
('DoctrineMigrations\\Version20220921084455', '2022-09-22 06:50:51', 99),
('DoctrineMigrations\\Version20220921091113', '2022-09-22 06:50:51', 16),
('DoctrineMigrations\\Version20220921092024', '2022-09-22 06:50:51', 52),
('DoctrineMigrations\\Version20220922070057', '2022-09-22 12:39:12', 390),
('DoctrineMigrations\\Version20220922075823', '2022-09-22 12:39:12', 23),
('DoctrineMigrations\\Version20220922143402', '2022-09-22 14:44:45', 88),
('DoctrineMigrations\\Version20220922144111', '2022-09-22 14:44:45', 41),
('DoctrineMigrations\\Version20220923085200', '2022-09-23 12:55:04', 63),
('DoctrineMigrations\\Version20220926062419', '2022-09-26 07:54:59', 39),
('DoctrineMigrations\\Version20220926075601', '2022-09-26 07:57:42', 60),
('DoctrineMigrations\\Version20220926092710', '2022-09-26 11:14:04', 135),
('DoctrineMigrations\\Version20220926104720', '2022-09-26 11:14:04', 81),
('DoctrineMigrations\\Version20220926115522', '2022-09-26 14:09:26', 143),
('DoctrineMigrations\\Version20220926131251', '2022-09-26 14:10:30', 15),
('DoctrineMigrations\\Version20220927064902', '2022-09-27 08:17:59', 19),
('DoctrineMigrations\\Version20220927110558', '2022-09-27 12:22:19', 117),
('DoctrineMigrations\\Version20220928082359', '2022-09-28 11:41:13', 221),
('DoctrineMigrations\\Version20220928084731', '2022-09-28 11:41:14', 22),
('DoctrineMigrations\\Version20220928085909', '2022-09-28 11:41:14', 45),
('DoctrineMigrations\\Version20220928115102', '2022-09-29 08:06:12', 123),
('DoctrineMigrations\\Version20220929084607', '2022-09-29 12:01:45', 20),
('DoctrineMigrations\\Version20220930073457', '2022-09-30 08:44:11', 209),
('DoctrineMigrations\\Version20220930092141', '2022-09-30 10:51:00', 102),
('DoctrineMigrations\\Version20220930124722', '2022-10-03 08:35:56', 87),
('DoctrineMigrations\\Version20221003062151', '2022-10-03 08:35:56', 10),
('DoctrineMigrations\\Version20221003072534', '2022-10-03 08:35:56', 52),
('DoctrineMigrations\\Version20221004105639', '2022-10-04 12:38:23', 132);

-- --------------------------------------------------------

--
-- Structure de la table `draft_cost`
--

CREATE TABLE `draft_cost` (
  `id` int NOT NULL,
  `mp_id` int DEFAULT NULL,
  `provider_lot_id` int DEFAULT NULL,
  `purchase_mp_id` int DEFAULT NULL,
  `cost_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `calculated_price` double NOT NULL,
  `currency_course` double NOT NULL,
  `lot_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `trade_product_id` int DEFAULT NULL,
  `purchase_trade_product_id` int DEFAULT NULL,
  `incoterms_status_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `draft_cost`
--

INSERT INTO `draft_cost` (`id`, `mp_id`, `provider_lot_id`, `purchase_mp_id`, `cost_id`, `label`, `calculated_price`, `currency_course`, `lot_date`, `created_at`, `updated_at`, `deleted_at`, `trade_product_id`, `purchase_trade_product_id`, `incoterms_status_id`) VALUES
(1, 33, NULL, 1, 1, 'cuv', 35000, 4000, '2022-06-23 00:00:00', '2022-06-23 17:16:09', '2022-06-23 17:16:09', NULL, NULL, NULL, NULL),
(2, 33, NULL, 1, 1, 'Cuvette', 0, 4000, '2022-06-23 00:00:00', '2022-09-27 09:24:14', '2022-09-27 09:24:14', NULL, NULL, NULL, NULL),
(3, 32, NULL, 2, 2, 'Brouillon saut', 522000, 4000, '2022-06-24 00:00:00', '2022-09-27 12:01:13', '2022-09-30 07:16:31', '2022-09-30 07:16:31', NULL, NULL, NULL),
(4, 33, NULL, 1, 1, 'Draft 3', 0, 4500, '2022-06-23 00:00:00', '2022-09-30 07:16:23', '2022-09-30 07:16:23', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `draft_cost_variable_charge`
--

CREATE TABLE `draft_cost_variable_charge` (
  `id` int NOT NULL,
  `variable_charge_id` int DEFAULT NULL,
  `draft_cost_id` int DEFAULT NULL,
  `price` double NOT NULL,
  `dotation` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `is_converted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `draft_cost_variable_charge`
--

INSERT INTO `draft_cost_variable_charge` (`id`, `variable_charge_id`, `draft_cost_id`, `price`, `dotation`, `created_at`, `updated_at`, `deleted_at`, `is_converted`) VALUES
(1, 20, 1, 500000, 25000, '2022-06-23 17:16:09', '2022-06-23 17:16:09', NULL, 0),
(2, 20, 2, 500000, 0, '2022-09-27 09:24:14', '2022-09-27 09:24:14', NULL, 0),
(3, 17, 3, 60000, 12000, '2022-09-27 12:01:13', '2022-09-30 07:16:31', '2022-09-30 07:16:31', 0),
(4, 20, 3, 2500000, 500000, '2022-09-27 12:01:13', '2022-09-30 07:16:31', '2022-09-30 07:16:31', 0),
(5, 20, 4, 500000, 0, '2022-09-30 07:16:23', '2022-09-30 07:16:23', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `factory`
--

CREATE TABLE `factory` (
  `id` int NOT NULL,
  `provider_id` int DEFAULT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `factory`
--

INSERT INTO `factory` (`id`, `provider_id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 31, 'Usine 1', '2022-09-26 14:06:30', '2022-09-26 14:06:30', '2022-09-26 14:13:08'),
(2, 31, 'Usine 2', '2022-09-26 14:06:30', '2022-09-26 14:06:30', '2022-09-26 14:13:08'),
(3, 31, 'Usine 3', '2022-09-26 14:06:30', '2022-09-26 14:08:18', '2022-09-26 14:08:18'),
(4, 32, 'Usine ETP 1', '2022-09-29 11:56:27', '2022-09-29 11:56:27', NULL),
(5, 32, 'Usine ETP 3', '2022-09-29 11:56:27', '2022-09-29 11:56:27', NULL),
(6, 32, 'Usine ETP 4', '2022-09-29 11:56:27', '2022-09-29 11:56:27', NULL),
(7, 32, 'Usine ETP 2', '2022-09-29 11:56:27', '2022-09-29 11:56:27', NULL),
(8, 32, 'USINE etp 555555555555555555555555555555555555555555555555555555555555555555555555555', '2022-09-29 11:56:27', '2022-09-29 11:56:27', NULL),
(9, 30, 'USINE 1', '2022-10-03 13:20:28', '2022-10-03 13:20:28', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `final_product_variation`
--

CREATE TABLE `final_product_variation` (
  `id` int NOT NULL,
  `unit_id` int DEFAULT NULL,
  `production_unit_id` int DEFAULT NULL,
  `package_final_product_id` int DEFAULT NULL,
  `step_process_id` int DEFAULT NULL,
  `reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double DEFAULT NULL,
  `energy_consumption` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `final_product_variation`
--

INSERT INTO `final_product_variation` (`id`, `unit_id`, `production_unit_id`, `package_final_product_id`, `step_process_id`, `reference`, `weight`, `energy_consumption`, `quantity`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 12, 12, NULL, 'PF-001', 0, 0, 0, '2022-05-04 14:36:26', '2022-05-04 14:36:26', '2022-05-04 17:11:20'),
(2, 9, 10, 5, NULL, 'PF-002', 0, 0, 0, '2022-05-04 14:42:49', '2022-05-04 14:42:49', '2022-05-04 17:19:58'),
(3, 9, 19, 9, NULL, 'PF-003', 12.5, 89000000.54, 450000000.89, '2022-05-04 14:57:54', '2022-05-04 14:57:54', NULL),
(4, 5, 12, 8, NULL, 'PF-004', 892000000.89, 5421300000.3, 0, '2022-05-04 15:04:09', '2022-05-04 15:04:09', NULL),
(5, 9, 12, 8, NULL, 'PF-008', 892000000.89, 5421300000.3, 0, '2022-05-04 15:15:36', '2022-05-04 15:15:36', NULL),
(6, 5, 12, 8, NULL, 'PF-009', 892000000.89, 5421300000.3, 0, '2022-05-04 15:17:20', '2022-05-04 15:17:20', '2022-05-04 17:29:28'),
(7, 4, 13, 7, NULL, 'PF-005', 7, 0, 0, '2022-05-04 15:17:53', '2022-05-04 15:17:53', '2022-05-04 17:11:56'),
(8, 5, 11, 8, NULL, 'PF-006', 22.7, 23555.8, 7810024.5, '2022-05-04 15:18:17', '2022-05-06 09:29:03', NULL),
(9, 9, 13, 7, NULL, 'PF-007', 0, 8, 0, '2022-05-04 15:18:59', '2022-05-04 15:18:59', '2022-05-04 17:12:31'),
(10, 17, 13, 7, NULL, 'PF-010', 0, 0, 0, '2022-05-04 15:19:22', '2022-05-04 15:19:22', '2022-05-04 15:50:07'),
(11, 17, 13, 7, NULL, 'PF-011', 0, 0, 0, '2022-05-04 15:19:53', '2022-05-04 15:19:53', '2022-05-04 15:49:24'),
(12, 10, 5, 9, NULL, 'var-001', 0, 0, 0, '2022-05-04 16:39:21', '2022-05-04 16:39:21', '2022-05-04 16:40:21'),
(13, 11, 15, 10, NULL, 'wsdfghj', 0, 0, 0, '2022-05-04 17:24:21', '2022-05-04 17:24:21', '2022-05-04 17:25:26'),
(14, 1, 9, 7, NULL, 'sdfgh', 0, 0, 0, '2022-05-06 09:29:32', '2022-05-06 09:29:54', '2022-05-06 09:29:54'),
(15, 2, 16, 12, NULL, 'ref', 0, 12.6, 0, '2022-05-06 10:38:24', '2022-05-06 10:38:34', '2022-05-06 10:38:34');

-- --------------------------------------------------------

--
-- Structure de la table `incoterms_status`
--

CREATE TABLE `incoterms_status` (
  `id` int NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `incoterms_status`
--

INSERT INTO `incoterms_status` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FOB', '2022-09-26 10:51:08', '2022-09-26 10:51:08', NULL),
(2, 'CFR', '2022-09-26 10:51:08', '2022-09-26 10:51:08', NULL),
(3, 'CIF', '2022-09-26 10:51:08', '2022-09-26 10:51:08', NULL),
(4, 'EX WORK', '2022-09-26 10:51:08', '2022-09-26 10:51:08', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `input_costing`
--

CREATE TABLE `input_costing` (
  `id` int NOT NULL,
  `damping_status` double NOT NULL,
  `energy_consumption` double NOT NULL,
  `gross_salary` double NOT NULL,
  `employer_charge` double NOT NULL,
  `holiday` double NOT NULL,
  `gratification` double NOT NULL,
  `total_electricity_consumption` double NOT NULL,
  `electricity_consumption` double NOT NULL,
  `unit_structure_cost` double NOT NULL,
  `branch_charge` double NOT NULL,
  `distribution_charge` double NOT NULL,
  `purchase_cost` double NOT NULL,
  `total_mixer_charge` double NOT NULL,
  `change_cost` double NOT NULL,
  `compressed_air_consumption` double NOT NULL,
  `total_compressor_charge` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `input_costing`
--

INSERT INTO `input_costing` (`id`, `damping_status`, `energy_consumption`, `gross_salary`, `employer_charge`, `holiday`, `gratification`, `total_electricity_consumption`, `electricity_consumption`, `unit_structure_cost`, `branch_charge`, `distribution_charge`, `purchase_cost`, `total_mixer_charge`, `change_cost`, `compressed_air_consumption`, `total_compressor_charge`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 104500, 2, 5000000000000, 2000000000000, 30, 5000, 60, 5000, 50, 2000, 30, 10, 10000, 8000.5, 180, 40000, '2022-05-17 08:52:39', '2022-05-25 17:21:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `input_costing_story`
--

CREATE TABLE `input_costing_story` (
  `id` int NOT NULL,
  `input_costing_story_type_id` int DEFAULT NULL,
  `new_value` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `old_value` double NOT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `input_costing_story`
--

INSERT INTO `input_costing_story` (`id`, `input_costing_story_type_id`, `new_value`, `created_at`, `updated_at`, `deleted_at`, `old_value`, `user_id`) VALUES
(1, 1, 1e36, '2022-05-25 14:51:01', '2022-05-25 14:51:01', NULL, 0, 16),
(2, 1, 2, '2022-05-25 14:52:00', '2022-05-25 14:52:00', NULL, 1e36, 16),
(3, 1, 4, '2022-05-25 14:54:18', '2022-05-25 14:54:18', NULL, 2, 16),
(4, 1, 1234567891234, '2022-05-25 14:56:20', '2022-05-25 14:56:20', NULL, 4, 16),
(5, 1, 1.2345678912345678e17, '2022-05-25 14:57:15', '2022-05-25 14:57:15', NULL, 1234567891234, 16),
(6, 1, 1.234567891234568e18, '2022-05-25 14:59:25', '2022-05-25 14:59:25', NULL, 1.2345678912346e17, 16),
(7, 1, 10, '2022-05-25 15:03:14', '2022-05-25 15:03:14', NULL, 1.2345678912346e18, 16),
(8, 2, 1000, '2022-05-25 15:17:25', '2022-05-25 15:17:25', NULL, 0, 16),
(9, 1, 104500, '2022-05-25 16:14:52', '2022-05-25 16:14:52', NULL, 10, 16),
(10, 2, 2, '2022-05-25 16:17:07', '2022-05-25 16:17:07', NULL, 1000, 16),
(11, 3, 5000000000000, '2022-05-25 16:20:21', '2022-05-25 16:20:21', NULL, 0, 16),
(12, 4, 1400000000, '2022-05-25 16:24:16', '2022-05-25 16:24:16', NULL, 0, 16),
(13, 4, 2000000000000, '2022-05-25 16:24:46', '2022-05-25 16:24:46', NULL, 1400000000, 16),
(14, 5, 3, '2022-05-25 16:32:00', '2022-05-25 16:32:00', NULL, 0, 16),
(15, 5, 30, '2022-05-25 16:32:39', '2022-05-25 16:32:39', NULL, 3, 16),
(16, 6, 2500, '2022-05-25 16:39:08', '2022-05-25 16:39:08', NULL, 0, 16),
(17, 6, 5000, '2022-05-25 16:39:22', '2022-05-25 16:39:22', NULL, 2500, 16),
(18, 7, 30, '2022-05-25 16:53:06', '2022-05-25 16:53:06', NULL, 0, 16),
(19, 7, 60, '2022-05-25 16:54:03', '2022-05-25 16:54:03', NULL, 30, 16),
(20, 8, 100, '2022-05-25 16:54:31', '2022-05-25 16:54:31', NULL, 0, 16),
(21, 8, 5000, '2022-05-25 16:54:51', '2022-05-25 16:54:51', NULL, 100, 16),
(22, 9, 10, '2022-05-25 16:55:18', '2022-05-25 16:55:18', NULL, 0, 16),
(23, 9, 50, '2022-05-25 16:55:41', '2022-05-25 16:55:41', NULL, 10, 16),
(24, 10, 4000.52, '2022-05-25 16:57:19', '2022-05-25 16:57:19', NULL, 0, 16),
(25, 10, 2000, '2022-05-25 16:57:44', '2022-05-25 16:57:44', NULL, 4000.52, 16),
(26, 11, 15, '2022-05-25 17:01:41', '2022-05-25 17:01:41', NULL, 0, 16),
(27, 11, 30, '2022-05-25 17:03:14', '2022-05-25 17:03:14', NULL, 15, 16),
(28, 12, 25, '2022-05-25 17:06:14', '2022-05-25 17:06:14', NULL, 0, 16),
(29, 12, 10, '2022-05-25 17:07:31', '2022-05-25 17:07:31', NULL, 25, 16),
(30, 13, 7000, '2022-05-25 17:17:24', '2022-05-25 17:17:24', NULL, 0, 16),
(31, 13, 10000, '2022-05-25 17:17:52', '2022-05-25 17:17:52', NULL, 7000, 16),
(32, 14, 8000.42, '2022-05-25 17:18:23', '2022-05-25 17:18:23', NULL, 0, 16),
(33, 14, 8000.5, '2022-05-25 17:19:25', '2022-05-25 17:19:25', NULL, 8000.42, 16),
(34, 15, 140, '2022-05-25 17:19:55', '2022-05-25 17:19:55', NULL, 0, 16),
(35, 15, 180, '2022-05-25 17:20:11', '2022-05-25 17:20:11', NULL, 140, 16),
(36, 16, 15000, '2022-05-25 17:21:07', '2022-05-25 17:21:07', NULL, 0, 16),
(37, 16, 30000, '2022-05-25 17:21:25', '2022-05-25 17:21:25', NULL, 15000, 16),
(38, 16, 40000, '2022-05-25 17:21:34', '2022-05-25 17:21:34', NULL, 30000, 16);

-- --------------------------------------------------------

--
-- Structure de la table `input_costing_story_type`
--

CREATE TABLE `input_costing_story_type` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `input_costing_story_type`
--

INSERT INTO `input_costing_story_type` (`id`, `label`) VALUES
(1, 'État d\'amortissement de chaque machine'),
(2, 'Energie consommé par chaque machine à l\'unité'),
(3, 'Salaire brut'),
(4, 'Charges Patronales'),
(5, 'Congé'),
(6, 'Gratification'),
(7, 'Consommation totale d\'électricité'),
(8, 'Consommation d\'électricité machine de production'),
(9, 'Coût structure usine unitaire'),
(10, 'Charges branches hors production'),
(11, 'Charges à repartir'),
(12, '% des coûts d\'achat des matières'),
(13, 'Total charges mélangeur'),
(14, 'Coûts des changements des pièces par machines'),
(15, 'Consommation air comprimé de toute l\'usine'),
(16, 'Total des charges compresseurs');

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE `invoice` (
  `id` int NOT NULL,
  `provider_invoice_status_id` int DEFAULT NULL,
  `payment_status_id` int DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `currency_course` double DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `order_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` int DEFAULT NULL,
  `is_voucher_entrance_generated` tinyint(1) NOT NULL,
  `product_type_id` int DEFAULT NULL,
  `is_local_recycling` tinyint(1) NOT NULL,
  `proforma_id` int DEFAULT NULL,
  `incoterms_status_id` int DEFAULT NULL,
  `lc_id` int DEFAULT NULL,
  `is_lc` tinyint(1) NOT NULL,
  `container` int DEFAULT NULL,
  `amount_converted` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `invoice`
--

INSERT INTO `invoice` (`id`, `provider_invoice_status_id`, `payment_status_id`, `currency_id`, `reference`, `amount`, `currency_course`, `delivery_date`, `created_at`, `updated_at`, `deleted_at`, `order_date`, `num`, `provider_id`, `is_voucher_entrance_generated`, `product_type_id`, `is_local_recycling`, `proforma_id`, `incoterms_status_id`, `lc_id`, `is_lc`, `container`, `amount_converted`) VALUES
(1, 3, 3, 45, 'FACT_001', 130103.38, 1460.35, '2022-04-07 00:00:00', '2022-05-10 11:21:12', '2022-05-10 13:58:55', '2022-05-10 13:58:55', '2022-05-10 11:40:53', 'SFOI/2205FCT0001', 7, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(2, 1, 1, 3, 'FACT_002', 90000, 22.5, '2022-05-12 00:00:00', '2022-05-10 12:20:24', '2022-05-10 12:20:40', NULL, '2022-05-10 12:20:24', 'SFOI/2205FCT0002', 7, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(3, 1, 3, 4, 'FACT_003', 5630.38, 2205, '2022-03-10 00:00:00', '2022-05-10 13:37:07', '2022-06-02 15:25:50', NULL, '2022-05-10 00:00:00', 'SFOI/2205FCT0003', 5, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(4, 1, 2, 4, 'FACT_005', 238960.07, 19.37, '2022-02-09 00:00:00', '2022-05-10 13:58:00', '2022-05-10 14:27:56', NULL, '2022-07-15 00:00:00', 'SFOI/2205FCT0004', 7, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(5, 1, 2, 8, 'FACT_004', 48200.8, 2811.87, '2022-06-11 00:00:00', '2022-05-10 14:03:09', '2022-05-10 14:03:09', NULL, '2022-04-04 00:00:00', 'SFOI/2205FCT0005', 7, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(6, 1, 2, 2, 'FACT_006', 255766, 19.37, '2022-07-30 00:00:00', '2022-05-10 14:15:23', '2022-06-02 14:29:40', NULL, '2022-05-10 00:00:00', 'SFOI/2205FCT0006', 5, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(7, 1, 1, 5, 'FACT_008', 8100, 2243.64, '2022-05-06 00:00:00', '2022-05-10 16:10:12', '2022-05-23 10:42:20', NULL, '2022-04-11 00:00:00', 'SFOI/2205FCT0007', 5, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(8, 2, 3, 47, 'REF_002', 130400, 2781.32, '2022-05-14 00:00:00', '2022-05-11 14:05:28', '2022-05-17 11:54:01', NULL, '2020-04-05 00:00:00', 'SFOI/2205FCT0008', 5, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(9, 3, 3, 50, 'FACT_012', 24708.23, 4990.04, '2022-03-09 00:00:00', '2022-05-11 14:33:38', '2022-05-17 09:06:30', NULL, '2022-07-14 00:00:00', 'SFOI/2205FCT0009', 7, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(10, 1, 2, 47, 'FA1', 480005000, 4000, '2022-05-17 00:00:00', '2022-05-16 10:22:00', '2022-05-16 10:44:57', '2022-05-16 10:44:57', '2022-05-01 00:00:00', 'SFOI/2205FCT0010', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(11, 1, 2, 2, '123456', 1000, 1, '2022-05-19 00:00:00', '2022-05-16 11:09:19', '2022-05-16 11:21:56', '2022-05-16 11:21:56', '2022-05-16 00:00:00', 'SFOI/2205FCT0010', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(12, 1, 2, 4, '123456', 150000, 100000, '2022-05-18 00:00:00', '2022-05-16 11:23:33', '2022-05-16 11:30:30', '2022-05-16 11:30:30', '2022-05-16 00:00:00', 'SFOI/2205FCT0010', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(13, 1, 2, 1, '123456', 1100010, 1000, '2022-05-18 00:00:00', '2022-05-16 12:01:12', '2022-05-16 12:20:54', '2022-05-16 12:20:53', '2022-05-16 00:00:00', 'SFOI/2205FCT0010', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(14, 1, 2, 3, '123456', 11050150150.83, 11101010, '2022-05-11 00:00:00', '2022-05-16 12:34:21', '2022-05-16 17:05:20', NULL, '2022-05-16 00:00:00', 'SFOI/2205FCT0010', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(15, 1, 2, 47, 'REF_003', 12000, 4000, '2022-05-01 00:00:00', '2022-05-16 13:40:54', '2022-05-17 11:50:03', NULL, '2022-05-16 00:00:00', 'SFOI/2205FCT0011', 5, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(16, 1, 2, 92, 'FA2', 5000000000, 0, '2022-05-31 00:00:00', '2022-05-16 13:52:01', '2022-05-16 17:01:37', NULL, '2022-05-01 00:00:00', 'SFOI/2205FCT0012', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(17, 1, 2, 47, 'FA3', 5000, 4200.55, '2022-05-17 00:00:00', '2022-05-16 14:46:23', '2022-05-16 16:23:51', NULL, '2022-05-02 00:00:00', 'SFOI/2205FCT0013', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(18, 1, 2, 92, 'FA4', 480405000, 0, '2022-05-04 00:00:00', '2022-05-16 15:21:34', '2022-05-16 16:23:48', NULL, '2022-05-31 00:00:00', 'SFOI/2205FCT0014', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(19, 3, 1, 47, 'FA5', 500000315, 4100.23, '2022-05-30 00:00:00', '2022-05-16 15:48:38', '2022-06-10 15:02:40', NULL, '2022-05-16 00:00:00', 'SFOI/2205FCT0015', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(21, 1, 2, 151, 'FA6', 1227660, 3500, '2022-05-24 00:00:00', '2022-05-16 16:36:28', '2022-05-16 16:41:19', NULL, '2022-05-16 00:00:00', 'SFOI/2205FCT0016', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(22, 5, 1, 2, 'REF_005', 1700, 1200, '2022-05-10 00:00:00', '2022-05-17 09:05:33', '2022-09-29 13:16:07', NULL, '2022-05-10 00:00:00', 'SFOI/2205FCT0017', 7, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(23, 3, 1, 151, 'FA7', 20002500, 3500.53, '2022-05-31 00:00:00', '2022-05-17 10:10:08', '2022-05-27 09:05:04', NULL, '2022-05-17 00:00:00', 'SFOI/2205FCT0018', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(24, 1, 2, 47, 'FA10', 91700, 4600.39, '2022-05-18 00:00:00', '2022-05-17 16:18:20', '2022-06-02 15:26:22', NULL, '2022-05-05 00:00:00', 'SFOI/2205FCT0019', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(25, 1, 2, 151, 'FA15', 500, 31000, '2022-05-25 00:00:00', '2022-05-23 13:32:25', '2022-06-02 14:46:55', NULL, '2022-05-23 00:00:00', 'SFOI/2205FCT0020', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(26, 1, 2, 151, 'FA061022', 50200, 3900.2, '2022-06-20 00:00:00', '2022-06-10 09:20:44', '2022-06-10 09:21:28', NULL, '2022-06-10 00:00:00', 'SFOI/2206FCT0021', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(27, 1, 2, 47, 'FA255', 74000, 4500.23, '2022-06-21 00:00:00', '2022-06-10 10:02:24', '2022-06-10 10:02:31', NULL, '2022-06-11 00:00:00', 'SFOI/2206FCT0022', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(28, 1, 2, 47, 'FA13', 5000, 3500, '2022-06-13 00:00:00', '2022-06-13 14:10:33', '2022-06-13 14:13:12', NULL, '2022-06-13 00:00:00', 'SFOI/2206FCT0023', 25, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(29, 1, 2, 151, 'FA140622', 102000, 3900.41, '2022-06-15 00:00:00', '2022-06-14 09:54:22', '2022-06-14 15:09:34', NULL, '2022-06-14 00:00:00', 'SFOI/2206FCT0024', 26, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(30, 1, 2, 47, 'FA140622B', 107000, 3900.41, '2022-06-15 00:00:00', '2022-06-14 09:57:06', '2022-06-14 15:09:16', NULL, '2022-06-14 00:00:00', 'SFOI/2206FCT0025', 26, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(31, 1, 2, 151, 'FA140622C', 50, 4000.39, '2022-06-16 00:00:00', '2022-06-14 11:17:37', '2022-06-14 15:05:05', NULL, '2022-06-14 00:00:00', 'SFOI/2206FCT0026', 26, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(32, 1, 2, 151, 'FA140622D', 60, 4000.39, '2022-06-16 00:00:00', '2022-06-14 11:18:27', '2022-06-14 15:04:27', NULL, '2022-06-14 00:00:00', 'SFOI/2206FCT0027', 26, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(33, 1, 2, 47, 'FA150622', 600, 4500, '2022-06-15 00:00:00', '2022-06-15 15:06:51', '2022-06-15 15:06:55', NULL, '2022-06-15 00:00:00', 'SFOI/2206FCT0028', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(34, 1, 2, 47, 'FA150622B', 700, 4500, '2022-06-16 00:00:00', '2022-06-15 15:07:29', '2022-06-15 15:07:33', NULL, '2022-06-15 00:00:00', 'SFOI/2206FCT0029', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(35, 1, 2, 3, 'Rf12', 1, 1200, '2022-06-29 00:00:00', '2022-06-15 16:18:08', '2022-06-15 16:18:13', NULL, '2022-06-15 00:00:00', 'SFOI/2206FCT0030', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(36, 1, 2, 92, 'FA150622C', 50, 0, '2022-06-17 00:00:00', '2022-06-15 16:55:57', '2022-06-15 16:56:05', NULL, '2022-06-15 00:00:00', 'SFOI/2206FCT0031', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(37, 1, 2, 92, 'FA160622A', 3500, 0, '2022-06-16 00:00:00', '2022-06-16 09:45:03', '2022-06-16 09:46:50', NULL, '2022-06-16 00:00:00', 'SFOI/2206FCT0032', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(38, 1, 2, 151, 'FA160622B', 2000, 5000, '2022-06-16 00:00:00', '2022-06-16 09:50:38', '2022-06-16 09:52:36', NULL, '2022-06-16 00:00:00', 'SFOI/2206FCT0033', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(39, 1, 2, 151, 'FA160622C', 1400, 3000, '2022-06-17 00:00:00', '2022-06-16 11:34:15', '2022-06-16 11:34:21', NULL, '2022-06-16 00:00:00', 'SFOI/2206FCT0034', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(40, 1, 2, 92, 'FA160622D', 8000, 0, '2022-06-18 00:00:00', '2022-06-16 11:42:06', '2022-06-16 11:42:25', NULL, '2022-06-16 00:00:00', 'SFOI/2206FCT0035', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(41, 1, 2, 92, 'FA170622A', 10000, 0, '2022-06-17 00:00:00', '2022-06-17 10:49:31', '2022-06-17 10:49:49', NULL, '2022-06-17 00:00:00', 'SFOI/2206FCT0036', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(42, 1, 2, 151, 'FA170622B', 4000, 3500.4, '2022-06-17 00:00:00', '2022-06-17 10:51:51', '2022-06-17 10:52:12', NULL, '2022-06-17 00:00:00', 'SFOI/2206FCT0037', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(43, 1, 2, 92, 'FA170622C', 8000, 0, '2022-06-17 00:00:00', '2022-06-17 10:54:19', '2022-06-17 10:54:35', NULL, '2022-06-17 00:00:00', 'SFOI/2206FCT0038', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(44, 1, 2, 1, 'RF14', 12500, 3000, '2022-06-30 00:00:00', '2022-06-20 10:42:48', '2022-06-20 10:42:52', NULL, '2022-06-20 00:00:00', 'SFOI/2206FCT0039', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(45, 1, 2, 92, 'FA200622A', 15000, 0, '2022-06-20 00:00:00', '2022-06-20 10:53:07', '2022-06-20 10:53:13', NULL, '2022-06-20 00:00:00', 'SFOI/2206FCT0040', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(46, 1, 2, 47, 'FA200622', 18000, 4200.55, '2022-06-21 00:00:00', '2022-06-20 10:54:18', '2022-06-20 10:54:23', NULL, '2022-06-20 00:00:00', 'SFOI/2206FCT0041', 27, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(47, 1, 2, 92, 'FA200622C', 12000, 0, '2022-06-21 00:00:00', '2022-06-20 11:52:43', '2022-06-23 14:08:06', NULL, '2022-06-20 00:00:00', 'SFOI/2206FCT0042', 28, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(48, 1, 2, 151, 'FA200622G', 9000, 4200.55, '2022-06-22 00:00:00', '2022-06-20 14:20:11', '2022-06-23 14:08:08', NULL, '2022-06-19 00:00:00', 'SFOI/2206FCT0043', 28, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(49, 1, 2, 92, 'fa210622hygh', 11000, 0, '2022-06-22 00:00:00', '2022-06-21 12:19:35', '2022-06-23 14:08:10', NULL, '2022-06-21 00:00:00', 'SFOI/2206FCT0044', 28, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(50, 1, 2, 92, 'FA210622t', 100, 0, '2022-06-22 00:00:00', '2022-06-21 14:13:59', '2022-06-23 14:08:12', NULL, '2022-06-21 00:00:00', 'SFOI/2206FCT0045', 28, 0, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(51, 1, 2, 151, 'FA210622Y', 100, 4000, '2022-06-22 00:00:00', '2022-06-21 14:15:28', '2022-06-23 17:14:39', NULL, '2022-06-21 00:00:00', 'SFOI/2206FCT0046', 28, 1, NULL, 0, NULL, NULL, NULL, 0, 0, 0),
(52, 3, 1, 92, 'REF0001', 3000, 1, '2022-08-31 00:00:00', '2022-08-09 13:46:05', '2022-08-09 13:46:28', NULL, '2022-08-09 00:00:00', 'SFOI/2208FCT0047', 29, 0, 3, 0, NULL, NULL, NULL, 0, 0, 0),
(53, 2, 2, 47, 'REF0002', 210, 4200, '2022-08-31 00:00:00', '2022-08-09 13:52:44', '2022-09-09 09:17:35', NULL, '2022-08-10 00:00:00', 'SFOI/2208FCT0048', 29, 0, 3, 1, NULL, NULL, NULL, 0, 0, 0),
(54, 1, 3, 47, 'REF0002000', 25003, 4000, '2022-08-22 00:00:00', '2022-08-22 07:47:04', '2022-09-09 09:17:45', NULL, '2022-08-22 00:00:00', 'SFOI/2208FCT0049', 29, 0, 3, 1, NULL, NULL, NULL, 0, 0, 0),
(55, 1, 2, 47, 'REF PROFORMA', 25000, 1500, '2022-09-06 00:00:00', '2022-09-22 12:51:26', '2022-09-22 12:51:26', NULL, '2022-09-22 00:00:00', 'SFOI/2209FCT0050', 29, 0, 1, 0, 1, NULL, NULL, 0, 0, 0),
(56, 1, 2, 47, '290922MP', 22500000, 1, NULL, '2022-09-29 14:45:17', '2022-09-29 14:45:17', NULL, '2022-09-29 00:00:00', 'SFOI/2209FCT0051', 32, 0, 1, 0, 6, 4, 5, 1, 0, 0),
(57, 1, 2, 47, 'REF PROFORMA MAT 220929', 236520, 4500, NULL, '2022-09-29 14:52:17', '2022-09-29 14:52:17', NULL, '2022-09-29 00:00:00', 'SFOI/2209FCT0052', 32, 0, 1, 0, 3, 2, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `lc`
--

CREATE TABLE `lc` (
  `id` int NOT NULL,
  `bank_id` int DEFAULT NULL,
  `num` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `acld_rate` double DEFAULT NULL,
  `real_rate` double DEFAULT NULL,
  `file_rate` double DEFAULT NULL,
  `amount_interest` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lc`
--

INSERT INTO `lc` (`id`, `bank_id`, `num`, `term_type`, `due_date`, `acld_rate`, `real_rate`, `file_rate`, `amount_interest`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29 12:12:03', '2022-09-29 12:12:03', NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29 12:30:27', '2022-09-29 12:30:27', NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-29 12:50:48', '2022-09-29 12:50:48', NULL),
(4, 1, 'LC1', NULL, '2022-09-20 00:00:00', 2500, 5000, 15000, 50000, '2022-09-29 14:01:52', '2022-09-29 14:45:17', NULL),
(5, 1, 'LC1', NULL, '2022-09-20 00:00:00', 2500, 5000, 15000, 50000, '2022-09-29 14:45:17', '2022-09-29 14:45:17', NULL),
(6, 3, 'NLC 001', NULL, '2022-09-21 00:00:00', 25, 265, 25, 25000, '2022-09-30 07:34:26', '2022-09-30 07:44:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id` int NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`id`, `label`, `address`, `longitude`, `latitude`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Emplacement 1', 'lieu', '2.333363', '48.865667', '2022-09-29 15:11:34', '2022-09-29 15:11:34', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `machine`
--

CREATE TABLE `machine` (
  `id` int NOT NULL,
  `production_unit_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `health_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `life_expectancy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acquisition_cost` double DEFAULT NULL,
  `energy_consumption` double DEFAULT NULL,
  `initial_damping_state` double DEFAULT NULL,
  `walking_time` double DEFAULT NULL,
  `acquisition_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `machine`
--

INSERT INTO `machine` (`id`, `production_unit_id`, `label`, `reference`, `health_status`, `life_expectancy`, `acquisition_cost`, `energy_consumption`, `initial_damping_state`, `walking_time`, `acquisition_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 16, 'Machine à reffinage', 'MAC-001', '2222222222222222', '((((((((((((', 100000000000, 0, 0, 0, '2022-05-07 00:00:00', '2022-05-04 12:24:42', '2022-05-04 12:24:42', '2022-05-04 12:27:18'),
(2, 16, 'Machine à raffinage', 'MAC-001', 'rtytr\'(13', '\"\'(-(\'\"\'(\'\"', 2500.69, 0, 10, 888888, '2022-04-24 00:00:00', '2022-05-04 12:28:42', '2022-05-04 12:28:42', '2022-05-04 13:34:53'),
(3, 16, 'Machine à laver', 'MAC-001', 'etat de vie', 'esperance de vie', 0, 0, 0, 0, '2022-05-09 00:00:00', '2022-05-04 13:32:27', '2022-05-04 13:32:27', '2022-05-04 13:34:41'),
(4, 15, 'Machine à extraction', 'MAC-002', 'Très bonne état', 'quatre ans', 320005, 1247.9, 96, 2, '2022-05-05 00:00:00', '2022-05-04 13:39:15', '2022-05-04 13:50:56', NULL),
(5, 11, 'Machine à laver', 'MAC-001', 'bonne', '6ans', 78.23, 0, 0, 96, '2020-05-03 00:00:00', '2022-05-04 13:53:43', '2022-05-04 13:53:43', '2022-05-04 16:47:25'),
(6, 19, 'Machine de souflage', 'MAC-003', 'bonne', '40ans', 0, 0, 0, 6, '2022-05-05 00:00:00', '2022-05-04 13:54:55', '2022-05-04 13:56:40', NULL),
(7, 15, 'Machine de moulage', 'MAC-004', 'bonne', 'neuf ans', 88.5, 78.3, 45.2, 45, '2022-05-12 00:00:00', '2022-05-04 14:00:33', '2022-05-04 14:00:33', NULL),
(8, 15, 'Machine de granulation', 'MAC-005', 'mauvais', 'deux ans', 0, 0, 0, 0, '2022-05-04 00:00:00', '2022-05-04 14:02:18', '2022-05-04 14:02:18', NULL),
(9, 12, 'Machine à coloriageoooooooooooooooooooooooo', 'MAC-007', 'bonne', 'dix ans', 0, 0, 0, 8, '2021-05-02 00:00:00', '2022-05-04 14:04:53', '2022-05-04 14:39:18', '2022-05-04 14:39:02'),
(10, 6, 'Machine de recyclage', 'MAC-006', 'bonne', 'sept ans', 0, 0, 0, 4, '2022-05-01 00:00:00', '2022-05-04 14:06:56', '2022-05-04 14:06:56', NULL),
(11, 15, 'Mélangeurs', 'MAC-008', 'bonne', 'dix ans', 580000, 0, 0, 5, '2018-05-02 00:00:00', '2022-05-04 14:09:17', '2022-05-04 16:06:43', '2022-05-04 16:07:18'),
(12, 15, 'Broyeur de plastique', 'MAC-009', 'moyen', 'cinq ans', 0, 0, 0, 6.5, '2022-05-03 00:00:00', '2022-05-04 14:10:38', '2022-05-04 15:36:39', NULL),
(13, 13, 'SéparateurS', 'MAC-010', 'bonne', 'seize ans', 0, 0, 0, 8, '2021-05-10 00:00:00', '2022-05-04 14:11:53', '2022-05-04 14:18:13', '2022-05-04 17:16:50'),
(14, 12, 'Machine d\'impression', 'MAC-011', 'bonne', '2ans', 0, 0, 0, 2, '2022-05-02 00:00:00', '2022-05-04 14:12:40', '2022-05-04 14:12:40', NULL),
(15, 6, 'qsertyuj', 'qsdfgthj', 'SERTYH', 'SDG', 0, 0, 0, 2, '2022-05-04 00:00:00', '2022-05-04 14:14:42', '2022-05-04 14:14:42', '2022-05-04 14:17:33'),
(16, 6, 'Machine de recyclage', 'MAC-012', 'bonne', '12.88mois', 789.3, 12.88, 12.88, 45.7, '2022-05-17 00:00:00', '2022-05-04 16:58:04', '2022-05-04 16:59:43', NULL),
(17, 13, 'Machine à extraction', 'MAC-001', 'Bonne', '5ans', 12.5, 23.5, 10, 89.4, '2022-05-04 00:00:00', '2022-05-04 17:01:05', '2022-05-04 17:01:05', '2022-05-04 17:16:08'),
(18, 5, 'Séparateurs', 'MAC-013', 'bonne', 'dix ans', 1, 2, 22, 2, '2022-05-12 00:00:00', '2022-05-04 17:02:57', '2022-05-06 09:43:57', '2022-05-06 09:43:57'),
(19, 8, 'machine test', 'sdfgvbngfds', '12.9', '5heure', 12, 12.5, 12.6, 12.6, '2022-05-10 00:00:00', '2022-05-04 17:38:11', '2022-05-04 17:38:11', '2022-05-05 14:39:31'),
(20, 6, 'Machine test 3', 'MAC-test', 'bonne', '9ans', 2100, 888.9, 10, 5, '2022-05-03 00:00:00', '2022-05-05 11:08:37', '2022-05-05 11:08:37', '2022-05-05 14:39:24'),
(21, 3, 'Machine test', 'Machine test', 'bonne', '45ans', 12000, 5.96, 10, 5, '2022-05-04 00:00:00', '2022-05-05 14:40:24', '2022-05-05 14:40:24', '2022-05-05 14:42:31'),
(22, 1, 'Labelling', 'MAC-018', 'Bonne', '10ans', 15, 1, 1, 2, '2022-05-04 00:00:00', '2022-05-06 09:42:41', '2022-05-06 09:43:17', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `material_application`
--

CREATE TABLE `material_application` (
  `id` int NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `safety_stock` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `material_application`
--

INSERT INTO `material_application` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`, `safety_stock`) VALUES
(1, 'Application 1', '2022-09-29 14:29:26', '2022-09-29 14:29:57', NULL, 2),
(2, 'Application 2', '2022-09-29 14:30:24', '2022-09-29 14:30:24', NULL, 0),
(3, 'Application 3', '2022-09-29 14:33:07', '2022-09-29 14:33:07', NULL, 15),
(4, 'Application 4', '2022-09-29 14:33:38', '2022-09-29 14:34:36', '2022-09-29 14:34:36', 0),
(5, 'Application 5', '2022-09-29 14:34:30', '2022-09-30 05:42:00', NULL, 15000),
(6, 'Injection', '2022-09-30 13:34:54', '2022-09-30 13:34:54', NULL, 100000);

-- --------------------------------------------------------

--
-- Structure de la table `material_specification`
--

CREATE TABLE `material_specification` (
  `id` int NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `material_specification`
--

INSERT INTO `material_specification` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Spécificité 2', '2022-09-22 08:07:37', '2022-09-22 08:07:58', NULL),
(2, 'Spécificité 1', '2022-09-22 12:42:39', '2022-09-22 12:42:39', NULL),
(3, 'Test Richad', '2022-09-23 07:14:37', '2022-09-23 07:14:37', NULL),
(4, 'Spécificité 3', '2022-09-29 11:36:31', '2022-09-29 11:36:31', NULL),
(5, 'sssssssssssssssssss-15', '2022-09-29 11:36:57', '2022-09-29 11:37:26', '2022-09-29 11:37:26');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name_crypts` json NOT NULL,
  `pos` int NOT NULL,
  `is_display` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `label`, `route_name`, `icon`, `role_name_crypts`, `pos`, `is_display`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Général', '#admin_general_index', 'icon-grid', '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(2, 1, 'Données de base', '#admin_basic_data_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(3, 2, 'Types de matière première', 'admin_mp_type_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(4, 3, 'Ajout', 'admin_mp_type_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(5, 3, 'Modification', 'admin_mp_type_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(6, 3, 'Suppression', 'admin_mp_type_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(7, 2, 'Banques', 'admin_bank_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(8, 7, 'Ajout', 'admin_bank_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(9, 7, 'Modification', 'admin_bank_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(10, 7, 'Suppression', 'admin_bank_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(11, 2, 'Types d&#039;unité', 'admin_unit_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(12, 11, 'Ajout', 'admin_unit_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(13, 11, 'Modification', 'admin_unit_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(14, 11, 'Suppression', 'admin_unit_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(15, 2, 'Spécificités matière', 'admin_material_specification_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(16, 15, 'Ajout', 'admin_material_specification_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(17, 15, 'Modification', 'admin_material_specification_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(18, 15, 'Suppression', 'admin_material_specification_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(19, 2, 'Applications matière', 'admin_material_application_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(20, 19, 'Ajout', 'admin_material_application_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(21, 19, 'Modification', 'admin_material_application_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(22, 19, 'Suppression', 'admin_material_application_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(23, 2, 'Matières premières', 'admin_mp_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(24, 23, 'Ajout', 'admin_mp_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(25, 23, 'Modification', 'admin_mp_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(26, 23, 'Suppression', 'admin_mp_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(27, 2, 'Emplacements', 'admin_location_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(28, 27, 'Ajout', 'admin_location_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(29, 27, 'Modification', 'admin_location_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(30, 27, 'Suppression', 'admin_location_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(31, 2, 'Charges variables', 'admin_variable_charge_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(32, 31, 'Ajout', 'admin_variable_charge_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(33, 31, 'Modification', 'admin_variable_charge_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(34, 31, 'Suppression', 'admin_variable_charge_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(35, 2, 'Types de devise', 'admin_currency_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(36, 35, 'Ajout', 'admin_currency_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(37, 35, 'Modification', 'admin_currency_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(38, 35, 'Suppression', 'admin_currency_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(39, 2, 'Types de branche', 'admin_branch_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(40, 39, 'Ajout', 'admin_branch_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(41, 39, 'Modification', 'admin_branch_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(42, 39, 'Suppression', 'admin_branch_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(43, 2, 'Unités de production', 'admin_production_unit_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(44, 43, 'Ajout', 'admin_production_unit_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(45, 43, 'Modification', 'admin_production_unit_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(46, 43, 'Suppression', 'admin_production_unit_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(47, 43, 'Voir', 'admin_production_unit_story_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(48, 2, 'Machines', 'admin_machine_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(49, 48, 'Ajout', 'admin_machine_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(50, 48, 'Modification', 'admin_machine_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(51, 48, 'Suppression', 'admin_machine_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(52, 2, 'Moules', 'admin_mold_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(53, 52, 'Ajout', 'admin_mold_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(54, 52, 'Modification', 'admin_mold_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(55, 52, 'Suppression', 'admin_mold_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(56, 2, 'Packaging des produits finis', 'admin_package_final_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(57, 56, 'Ajout', 'admin_package_final_product_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(58, 56, 'Modification', 'admin_package_final_product_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(59, 56, 'Suppression', 'admin_package_final_product_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(60, 2, 'Variations des produits finis', 'admin_final_product_variation_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(61, 60, 'Ajout', 'admin_final_product_variation_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(62, 60, 'Modification', 'admin_final_product_variation_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(63, 60, 'Suppression', 'admin_final_product_variation_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(64, 2, 'Types de déchets à recycler', 'admin_waste_recycled_type_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(65, 64, 'Ajout', 'admin_waste_recycled_type_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(66, 64, 'Modification', 'admin_waste_recycled_type_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(67, 64, 'Suppression', 'admin_waste_recycled_type_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(68, 2, 'Déchets à recycler', 'admin_waste_recycled_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(69, 68, 'Ajout', 'admin_waste_recycled_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(70, 68, 'Modification', 'admin_waste_recycled_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(71, 68, 'Suppression', 'admin_waste_recycled_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(72, 2, 'Types de fournisseur', 'admin_provider_type_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(73, 72, 'Ajout', 'admin_provider_type_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(74, 72, 'Modification', 'admin_provider_type_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(75, 72, 'Suppression', 'admin_provider_type_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(76, 2, 'Input costing', 'admin_input_costing_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(77, 76, 'Modification', 'admin_input_costing_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(78, 76, 'Voir l&#039;historique', 'admin_input_costing_story_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(79, 2, 'Produits de négoce', 'admin_trade_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(80, 79, 'Ajout', 'admin_trade_product_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(81, 79, 'Modification', 'admin_trade_product_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(82, 79, 'Suppression', 'admin_trade_product_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(83, 1, 'Gestion du logiciel', '#admin_software_management_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(84, 83, 'Gestion des utilisateurs', 'admin_user_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(85, 84, 'Ajout', 'admin_user_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(86, 84, 'Modification', 'admin_user_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(87, 84, 'Suppression', 'admin_user_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(88, 83, 'Profil', 'admin_user_profile', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(89, 83, 'Gestion des rôles', 'admin_role_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(90, 89, 'Ajout', 'admin_role_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(91, 89, 'Modification', 'admin_role_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(92, 89, 'Suppression', 'admin_role_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(93, 83, 'Historiques des actions', 'admin_story_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(94, NULL, 'Fournisseurs', 'admin_provider_index', 'icon-shopping-cart', '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(95, 94, 'Ajout', 'admin_provider_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(96, 94, 'Modification', 'admin_provider_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(97, 94, 'Suppression', 'admin_provider_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(98, 94, 'Voir', 'admin_provider_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(99, 94, 'Factures fournisseurs', 'admin_invoice_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(100, 99, 'Ajout', 'admin_invoice_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(101, 99, 'Modification', 'admin_invoice_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(102, 99, 'Voir', 'admin_invoice_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(103, 99, 'Générer PDF', 'admin_invoice_generate_pdf', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(104, 99, 'Changer statut', 'admin_invoice_update_payment_status', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(105, 99, 'Changer état', 'admin_invoice_update_provider_invoice_status', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(106, 99, 'Générer bon d&#039;entrée', 'admin_invoice_generate_voucher_entrance_mp_ajax', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(107, 94, 'Proforma fournisseurs', 'admin_proforma_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(108, 107, 'Ajout', 'admin_proforma_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(109, 107, 'Modification', 'admin_proforma_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(110, 107, 'Voir', 'admin_proforma_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(111, 107, 'Générer PDF', 'admin_proforma_generate_pdf', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(112, 107, 'Changer état', 'admin_proforma_update_provider_invoice_status', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(113, NULL, 'Achats MP', '#admin_mp_lot', 'icon-life-buoy', '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(114, 113, 'Liste MP', 'admin_purchase_mp_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(115, 113, 'Engagements', 'admin_engagement_mp_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(116, 113, 'Calcul du revient MP', 'admin_cost_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(117, 116, 'Ajout', 'admin_cost_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(118, 116, 'Modification', 'admin_cost_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(119, 116, 'Suppression', 'admin_cost_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(120, 113, 'Simulation calcul revient', 'admin_draft_cost_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(121, 120, 'Ajout', 'admin_draft_cost_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(122, 120, 'Modification', 'admin_draft_cost_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(123, 120, 'Suppression', 'admin_draft_cost_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(124, 120, 'Simuler', 'admin_cost_edit_as_new_draft', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(125, 113, 'Bons d&#039;entrées', 'admin_voucher_entrance_mp_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(126, 125, 'Voir', 'admin_voucher_entrance_mp_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(127, 125, 'Générer PDF', 'admin_voucher_entrance_mp_generate_pdf', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(128, 113, 'Bons de sorties', 'admin_voucher_exit_mp_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(129, 128, 'Ajout', 'admin_voucher_exit_mp_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(130, 128, 'Modification', 'admin_voucher_exit_mp_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(131, 128, 'Suppression', 'admin_voucher_exit_mp_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(132, 128, 'Voir', 'admin_voucher_exit_mp_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(133, 128, 'Générer PDF', 'admin_voucher_exit_mp_generate_pdf', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(134, NULL, 'Achats PN', '#', 'icon-briefcase', '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(135, 134, 'Liste PN', 'admin_purchase_trade_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(136, 134, 'Engagements', 'admin_engagement_trade_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(137, 134, 'Calcul du revient PN', 'admin_cost_trade_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(138, 137, 'Ajout', 'admin_cost_trade_product_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(139, 137, 'Modification', 'admin_cost_trade_product_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(140, 137, 'Suppression', 'admin_cost_trade_product_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(141, 134, 'Simulation calcul revient', 'admin_draft_cost_trade_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(142, 141, 'Ajout', 'admin_draft_cost_trade_product_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(143, 141, 'Modification', 'admin_draft_cost_trade_product_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(144, 141, 'Suppression', 'admin_draft_cost_trade_product_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(145, 141, 'Simuler', 'admin_cost_trade_product_edit_as_new_draft', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(146, 134, 'Bons d&#039;entrées', 'admin_voucher_entrance_trade_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(147, 146, 'Voir', 'admin_voucher_entrance_trade_product_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(148, 146, 'Générer PDF', 'admin_voucher_entrance_trade_product_generate_pdf', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(149, 134, 'Bons de sorties', 'admin_voucher_exit_trade_product_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(150, 149, 'Ajout', 'admin_voucher_exit_trade_product_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(151, 149, 'Modification', 'admin_voucher_exit_trade_product_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(152, 149, 'Suppression', 'admin_voucher_exit_trade_product_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(153, 149, 'Voir', 'admin_voucher_exit_trade_product_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(154, 149, 'Générer PDF', 'admin_voucher_exit_trade_product_generate_pdf', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(155, NULL, 'Achats DR', '#admin_waste_recycle_lot', 'icon-credit-card', '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(156, 155, 'Liste DR', 'admin_purchase_waste_recycled_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(157, 155, 'Engagements', 'admin_engagement_waste_recycled_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(158, 155, 'Procédé de recyclage', 'admin_process_waste_recycled_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(159, 158, 'Ajout', 'admin_process_waste_recycled_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(160, 158, 'Modification', 'admin_process_waste_recycled_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(161, 158, 'Suppression', 'admin_process_waste_recycled_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(162, 158, 'Voir', 'admin_process_waste_recycled_show', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(163, 158, 'Ajout', 'admin_process_step_waste_recycled_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(164, 158, 'Modification', 'admin_process_step_waste_recycled_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(165, NULL, 'Production', '#admin_production_waste_recycled', 'feather icon-box', '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(166, 165, 'Liste des productions', 'admin_production_waste_recycled_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(167, 166, 'Ajout', 'admin_production_waste_recycled_new', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(168, 166, 'Modification', 'admin_production_waste_recycled_edit', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(169, 166, 'Suppression', 'admin_production_waste_recycled_delete', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(170, NULL, 'Alertes', 'admin_alert_index', 'icon-bell', '[\"ROLE_SUPERADMIN\"]', 0, 1, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(171, 170, 'Alertes', 'admin_alert_index', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38'),
(172, 170, 'Alertes de stock', 'admin_alert_stock_mp', NULL, '[\"ROLE_SUPERADMIN\"]', 0, 0, '2022-10-04 07:36:38', '2022-10-04 07:36:38');

-- --------------------------------------------------------

--
-- Structure de la table `mold`
--

CREATE TABLE `mold` (
  `id` int NOT NULL,
  `machine_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `acquisition_cost` double DEFAULT NULL,
  `acquisition_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `health_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `life_expectancy` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mold`
--

INSERT INTO `mold` (`id`, `machine_id`, `label`, `reference`, `acquisition_cost`, `acquisition_date`, `health_status`, `life_expectancy`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'Moule d\'arrondissement', 'MOUL-01', 780000.9, '2021-08-10 00:00:00', 'bonne état', '4,8ans', '2022-05-04 16:03:18', '2022-05-04 16:12:44', '2022-05-04 16:12:55'),
(2, 7, 'Moule pour cuvette', 'MOUL-001', 12.6, '2022-05-04 00:00:00', 'bonne', '9ans', '2022-05-04 16:13:44', '2022-05-04 16:13:44', NULL),
(3, 7, 'moule à injection plastique', 'MOUL-002', 12.5, '2022-05-04 00:00:00', 'bonne', '8ans', '2022-05-04 16:19:04', '2022-05-04 16:19:04', NULL),
(4, 6, 'Moule d\'arrondissement', 'MOUL-003', 1, '2022-05-23 00:00:00', 'D', 'D', '2022-05-04 16:19:42', '2022-05-04 16:20:03', NULL),
(5, 6, 'Moule contre dépouille', 'MOUL-004', 1, '2022-05-24 00:00:00', 'n', 'n', '2022-05-04 16:22:43', '2022-05-04 16:25:07', NULL),
(6, 7, 'Moulage de rotation', 'MOUL-005', 6.8, '2022-05-11 00:00:00', 'bonne', '1.5ans', '2022-05-04 16:27:38', '2022-05-04 16:27:38', NULL),
(7, 8, 'Moulage par soufflage', 'MOUL-006', 12.88, '2022-05-10 00:00:00', '55.5', '5', '2022-05-04 16:28:20', '2022-05-04 16:28:20', NULL),
(8, 12, 'Moulage sous vide', 'MOUL-008', 2.3, '2022-05-04 00:00:00', 'bonne', '8ans', '2022-05-04 16:30:13', '2022-05-04 16:30:13', NULL),
(9, 7, 'Rotomoulage', 'MOUL-009', 12.5, '2022-05-12 00:00:00', '2', '0.5', '2022-05-04 16:31:01', '2022-05-04 16:32:07', NULL),
(10, 5, 'moule à injection plastique', 'MOUL-007', 1, '2022-05-12 00:00:00', 'bonne', '1', '2022-05-04 16:33:48', '2022-05-04 16:33:48', '2022-05-04 17:37:14'),
(11, 8, 'Moule d\'injection rapide', 'MOUL-010', 0, '2022-05-19 00:00:00', 'bonne état', '2', '2022-05-04 16:34:39', '2022-05-04 16:34:39', NULL),
(12, 7, 'Moule de paroi', 'MOUL-011', 9, '2022-05-04 00:00:00', 'bonne', '5', '2022-05-04 16:37:23', '2022-05-04 16:37:23', NULL),
(13, 19, 'Moule 2', 'MOUL-014', 0, '2022-05-18 00:00:00', 'bonne état', '5ans', '2022-05-04 17:38:29', '2022-05-04 17:47:29', '2022-05-05 14:39:11'),
(14, 20, 'Moule test 3', 'Moul-test-002', 12000, '2022-05-04 00:00:00', 'bonne', '8ans', '2022-05-05 11:09:31', '2022-05-05 11:09:31', '2022-05-05 14:39:03'),
(15, 21, 'AZERF', 'MOUL-0078', 0, '2022-05-11 00:00:00', 'bonne état', 'F', '2022-05-05 14:41:35', '2022-05-05 14:41:35', '2022-05-05 14:42:00'),
(16, 7, 'Moule d\'arrondissement', 'REF-020', 12000, '2022-05-04 00:00:00', 'bonne', '4ans', '2022-05-06 10:43:51', '2022-05-06 10:43:51', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mp`
--

CREATE TABLE `mp` (
  `id` int NOT NULL,
  `mp_type_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `safety_stock` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `material_specification_id` int DEFAULT NULL,
  `material_application_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mp`
--

INSERT INTO `mp` (`id`, `mp_type_id`, `unit_id`, `label`, `code`, `safety_stock`, `created_at`, `updated_at`, `deleted_at`, `material_specification_id`, `material_application_id`) VALUES
(1, 8, 4, 'Plastique brute', 'MP-001', 8.2, '2022-05-03 11:47:30', '2022-05-03 11:48:21', '2022-05-03 12:01:42', NULL, NULL),
(2, 6, 6, 'Solvant', 'MP-002', 0, '2022-05-03 11:50:06', '2022-05-03 11:57:12', '2022-05-03 12:00:04', NULL, NULL),
(3, 2, 9, 'Pétroles brut', 'MP-003', 0, '2022-05-03 11:51:54', '2022-05-03 11:56:33', '2022-05-03 12:01:50', NULL, NULL),
(4, 9, 11, 'Ethylène', 'MP-004', 0, '2022-05-03 11:58:35', '2022-05-03 15:12:44', '2022-05-04 17:26:55', NULL, NULL),
(5, 4, 5, 'Pétrole brut', 'MP-001', 1.2, '2022-05-03 12:02:42', '2022-05-03 12:02:42', NULL, NULL, NULL),
(6, 12, 11, 'Propylène', 'MP-001', 0, '2022-05-03 12:03:26', '2022-05-03 12:04:48', '2022-05-04 16:38:10', NULL, NULL),
(7, 11, 4, 'styrène', 'MP-002', 1, '2022-05-03 12:09:13', '2022-05-03 12:09:40', '2022-05-03 14:59:33', NULL, NULL),
(8, 7, 9, 'Polychlorure de vinyle', 'MP-005', 0, '2022-05-03 12:12:20', '2022-05-03 12:12:20', NULL, NULL, NULL),
(9, 2, 4, 'Carbonate de calcium', 'MP-007', 0.1, '2022-05-03 12:14:15', '2022-05-03 12:14:15', NULL, NULL, NULL),
(10, 2, 4, 'talc', 'MP-009', 0, '2022-05-03 12:14:49', '2022-05-06 09:22:25', NULL, NULL, NULL),
(11, 7, 4, 'Kaolin', 'MP-010', 0, '2022-05-03 12:15:33', '2022-05-03 12:15:33', NULL, NULL, NULL),
(12, 7, 4, 'Résines alkydes', 'MP-011', 0, '2022-05-03 12:16:37', '2022-05-03 12:16:37', NULL, NULL, NULL),
(13, 7, 4, 'Cellulose', 'MP-011', 0, '2022-05-03 12:20:54', '2022-05-03 12:20:54', NULL, NULL, NULL),
(14, 7, 4, 'Amidon', 'MP-012', 0, '2022-05-03 12:21:34', '2022-05-03 12:21:34', NULL, NULL, NULL),
(15, 7, 13, 'Acrylique', 'MP-002', 8, '2022-05-03 15:02:15', '2022-05-03 15:02:15', NULL, NULL, NULL),
(16, 9, 9, 'Polyamide', 'MP-003', 8, '2022-05-03 15:03:21', '2022-05-03 15:03:21', NULL, NULL, NULL),
(17, 9, 5, 'Polypropylène', 'MP-000022', 0, '2022-05-03 15:06:02', '2022-06-10 09:20:11', NULL, NULL, NULL),
(18, 12, 4, 'FDSFSDF', 'MP-015', 12212.45, '2022-05-03 15:09:10', '2022-05-03 15:09:33', '2022-05-03 15:09:38', NULL, NULL),
(19, 6, 9, 'TEST', 'TEST', 0, '2022-05-04 10:07:29', '2022-05-04 10:07:29', '2022-05-04 10:07:35', NULL, NULL),
(20, 5, 9, 'WHITE SPIRIT', 'MP-008', 0, '2022-05-04 15:44:12', '2022-05-04 15:46:24', '2022-05-04 15:46:06', NULL, NULL),
(21, 9, 9, 'WHITE SPIRIT', 'MP-015', 10, '2022-05-04 15:44:58', '2022-05-11 17:02:01', NULL, NULL, NULL),
(22, 9, 17, 'WHITE SPIRIT', 'MP-008', 0, '2022-05-04 15:46:47', '2022-05-04 15:46:47', '2022-05-04 15:48:00', NULL, NULL),
(23, 1, 10, 'CALGON', 'mp-030', 0, '2022-05-04 16:38:55', '2022-05-04 16:38:55', '2022-05-04 16:39:50', NULL, NULL),
(24, 17, 9, 'Compost', 'MP-013', 0, '2022-05-06 09:22:00', '2022-05-06 09:22:42', '2022-05-06 09:22:42', NULL, NULL),
(25, 6, 4, 'Carte de contraste', 'P01', 0, '2022-06-16 09:41:57', '2022-06-16 09:41:57', NULL, NULL, NULL),
(26, 5, 4, 'Plastique', 'P02', 0, '2022-06-17 10:47:25', '2022-06-17 10:47:25', NULL, NULL, NULL),
(27, 9, 4, 'Béton', 'P03', 0, '2022-06-17 10:53:04', '2022-06-17 10:53:04', NULL, NULL, NULL),
(28, 15, 2, 'Emballage 1L', 'EB1', 0, '2022-06-20 10:51:28', '2022-06-20 10:51:28', NULL, NULL, NULL),
(29, 15, 2, 'Emballage 3L', 'EB2', 0, '2022-06-20 10:52:00', '2022-06-20 10:52:00', NULL, NULL, NULL),
(30, 15, 4, 'Etiquette Metal', 'ET1', 0, '2022-06-20 11:47:16', '2022-06-20 11:47:16', NULL, NULL, NULL),
(31, 15, 4, 'Etiquette  Papier', 'ET2', 0, '2022-06-20 11:47:54', '2022-06-20 11:47:54', NULL, NULL, NULL),
(32, 15, 13, 'SAUT', 'S1', 0, '2022-06-21 14:10:11', '2022-09-29 14:35:31', NULL, 2, 1),
(33, 15, 13, 'Cuvette', 'C1', 0, '2022-06-21 14:12:24', '2022-09-29 14:35:15', NULL, 1, 2),
(34, 6, 12, 'Matières spec', 'MAT001', 0, '2022-09-22 12:47:03', '2022-09-29 14:35:01', NULL, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mp_type`
--

CREATE TABLE `mp_type` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mp_type`
--

INSERT INTO `mp_type` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Huile', '2022-05-02 13:48:38', '2022-05-02 13:48:38', NULL),
(2, 'Poudre', '2022-05-02 13:48:54', '2022-05-02 13:49:49', NULL),
(3, 'Gazeux', '2022-05-02 13:49:04', '2022-05-02 14:01:47', '2022-05-02 14:01:25'),
(4, 'SOLVANTS', '2022-05-02 13:53:43', '2022-05-02 13:53:43', NULL),
(5, 'LIANTS', '2022-05-02 13:53:55', '2022-05-02 13:53:55', NULL),
(6, 'ADJUVANT - ADDITIF', '2022-05-02 13:56:17', '2022-05-05 17:02:05', NULL),
(7, 'Produits chimiques', '2022-05-02 13:56:31', '2022-05-02 13:56:31', NULL),
(8, 'COLORANTS MACHINE A TEINTER SYSTÈME ECOTINT', '2022-05-02 13:59:58', '2022-05-02 13:59:58', '2022-05-03 11:48:58'),
(9, 'PIGMENTS / PATES COLORANTES', '2022-05-02 14:00:12', '2022-05-02 14:00:12', NULL),
(10, 'plastique', '2022-05-02 14:00:41', '2022-05-02 14:00:41', '2022-05-04 09:58:06'),
(11, 'sachet', '2022-05-02 14:00:53', '2022-05-02 14:00:53', '2022-05-03 12:09:51'),
(12, 'Emballage', '2022-05-02 14:03:58', '2022-05-02 14:03:58', '2022-05-04 09:55:14'),
(13, 'aaa\'mfdslfljdskqfhqsgfhgsdfqdshfqshqshfqshfghqsdhqfdsg**((\'\'\'\'\'\'efdgfg232hfjsqfjsqhfdgsfjsj12314654', '2022-05-02 14:05:03', '2022-05-02 14:05:39', '2022-05-02 14:05:49'),
(14, 'type', '2022-05-04 10:00:03', '2022-05-04 10:00:26', '2022-05-04 10:00:33'),
(15, 'Produits', '2022-05-05 11:31:50', '2022-05-05 11:31:50', NULL),
(16, 'liquide', '2022-05-06 08:56:36', '2022-05-06 08:57:57', '2022-05-06 08:57:57'),
(17, 'Liquide', '2022-05-06 08:58:25', '2022-05-06 08:58:25', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `package_final_product`
--

CREATE TABLE `package_final_product` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `package_final_product`
--

INSERT INTO `package_final_product` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'fhhhhhhhjgfjdshkfkjy\'\"è-\"(\'çp(^\'-231\'-21(\'32323', '2022-05-03 14:41:18', '2022-05-03 14:41:18', '2022-05-03 14:41:31'),
(2, 'fhhhhhhhjgfjdshkfkjy\'\"è-\"(\'çp(^\'-231\'-21(\'32323gf2h2f3g2h3', '2022-05-03 14:41:19', '2022-05-03 14:41:19', '2022-05-03 14:41:28'),
(3, 'Seau à peinture', '2022-05-03 14:42:19', '2022-05-03 14:50:25', NULL),
(4, 'Article ménagère', '2022-05-03 14:47:45', '2022-05-03 14:47:45', NULL),
(5, 'barquette', '2022-05-03 14:48:10', '2022-05-03 14:48:10', '2022-05-04 14:45:55'),
(6, 'gaine plastique', '2022-05-03 14:48:43', '2022-05-03 14:48:43', NULL),
(7, 'Bacs de manutention', '2022-05-03 14:49:08', '2022-05-03 14:49:08', NULL),
(8, 'Bacs à ordure', '2022-05-03 14:49:23', '2022-05-03 14:49:23', NULL),
(9, 'Boite d\'emballage', '2022-05-03 14:49:43', '2022-05-03 14:49:43', NULL),
(10, 'bwols', '2022-05-03 14:52:18', '2022-05-03 14:52:18', '2022-05-04 17:25:33'),
(11, 'recipient en verre et en plastique', '2022-05-03 14:52:52', '2022-05-03 14:57:15', '2022-05-03 14:56:51'),
(12, 'pots', '2022-05-03 14:53:07', '2022-05-03 14:53:07', NULL),
(13, 'gobelets', '2022-05-03 14:53:19', '2022-05-03 14:53:19', '2022-05-03 14:56:35'),
(14, 'timbales', '2022-05-03 14:54:12', '2022-05-03 14:54:12', NULL),
(15, 'Sacs tissés', '2022-05-03 14:55:11', '2022-05-03 14:56:06', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `payment_status`
--

CREATE TABLE `payment_status` (
  `id` int NOT NULL,
  `label` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `payment_status`
--

INSERT INTO `payment_status` (`id`, `label`) VALUES
(1, 'Payé'),
(2, 'Non payé'),
(3, 'Payé partiellement');

-- --------------------------------------------------------

--
-- Structure de la table `process`
--

CREATE TABLE `process` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `product_type_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `mp_id` int DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `process`
--

INSERT INTO `process` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`, `product_type_id`, `unit_id`, `mp_id`, `image_name`) VALUES
(1, 'gfhg', '2022-08-10 08:40:21', '2022-08-11 05:58:13', '2022-08-11 05:58:13', 3, 12, 15, NULL),
(2, '48TRRR', '2022-08-11 05:56:10', '2022-08-11 05:58:08', '2022-08-11 05:58:08', 3, 2, 28, NULL),
(3, '48TRRR', '2022-08-11 05:58:32', '2022-08-11 05:58:32', NULL, 3, 2, 28, NULL),
(4, 'PROC0003', '2022-08-16 11:59:10', '2022-08-22 11:06:43', NULL, 3, 2, 15, NULL),
(5, 'REF0001', '2022-08-17 13:28:27', '2022-08-17 13:28:27', NULL, 3, 2, 33, 'telechargement-62fcecfbb55e3347470706.png');

-- --------------------------------------------------------

--
-- Structure de la table `process_step`
--

CREATE TABLE `process_step` (
  `id` int NOT NULL,
  `step_process_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL,
  `general_time` double DEFAULT NULL,
  `labor_consumption` double DEFAULT NULL,
  `mp_consumption` double DEFAULT NULL,
  `waste_recycled` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `process_step_mp`
--

CREATE TABLE `process_step_mp` (
  `process_step_id` int NOT NULL,
  `mp_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `process_step_waste_recycled`
--

CREATE TABLE `process_step_waste_recycled` (
  `id` int NOT NULL,
  `step_process_id` int DEFAULT NULL,
  `machine_id` int DEFAULT NULL,
  `mold_id` int DEFAULT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `step_order` int NOT NULL,
  `general_time` double DEFAULT NULL,
  `labor_consumption` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `process_step_waste_recycled`
--

INSERT INTO `process_step_waste_recycled` (`id`, `step_process_id`, `machine_id`, `mold_id`, `label`, `step_order`, `general_time`, `labor_consumption`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 7, 6, 'rtyry', 0, 212, 12, '2022-08-10 08:40:21', '2022-08-10 08:40:21', NULL),
(2, NULL, 8, 7, 'etape un', 1, 4, 4, '2022-08-16 11:59:10', '2022-08-17 13:25:41', NULL),
(3, NULL, 6, 4, 'step two', 2, 5, 8, '2022-08-16 11:59:10', '2022-08-17 13:25:41', NULL),
(4, 4, 8, 7, 'etape un', 1, 4, 4, '2022-08-17 13:25:41', '2022-08-17 13:25:41', NULL),
(5, NULL, 7, 2, 'Step One', 1, 1000, 1, '2022-08-17 13:35:34', '2022-08-17 13:36:56', NULL),
(6, NULL, 7, 2, 'Step One', 1, 1000, 1, '2022-08-17 13:36:56', '2022-08-17 13:37:17', NULL),
(7, NULL, 7, 2, 'Step One', 1, 1000, 2, '2022-08-17 13:37:17', '2022-08-17 13:38:51', NULL),
(8, NULL, 7, 2, 'Step One', 1, 1000, 2, '2022-08-17 13:38:51', '2022-08-22 07:53:10', NULL),
(9, NULL, 7, 2, 'Step One', 1, 1000, 20, '2022-08-22 07:53:10', '2022-09-02 07:57:02', NULL),
(10, NULL, 7, 2, 'Step One', 1, 1000, 200000, '2022-09-02 07:57:02', '2022-09-02 07:57:35', NULL),
(11, 5, 7, 2, 'Step One', 1, 1000, 20, '2022-09-02 07:57:35', '2022-09-02 07:57:35', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `process_step_waste_recycled_waste_recycled_consumption`
--

CREATE TABLE `process_step_waste_recycled_waste_recycled_consumption` (
  `process_step_waste_recycled_id` int NOT NULL,
  `waste_recycled_consumption_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `process_step_waste_recycled_waste_recycled_consumption`
--

INSERT INTO `process_step_waste_recycled_waste_recycled_consumption` (`process_step_waste_recycled_id`, `waste_recycled_consumption_id`) VALUES
(1, 1),
(4, 4),
(11, 11),
(11, 12);

-- --------------------------------------------------------

--
-- Structure de la table `production`
--

CREATE TABLE `production` (
  `id` int NOT NULL,
  `product_type_id` int DEFAULT NULL,
  `production_date` datetime NOT NULL,
  `production_time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `production`
--

INSERT INTO `production` (`id`, `product_type_id`, `production_date`, `production_time`) VALUES
(1, 3, '2022-08-26 00:00:00', '14:08');

-- --------------------------------------------------------

--
-- Structure de la table `production_step_waste_recycled`
--

CREATE TABLE `production_step_waste_recycled` (
  `id` int NOT NULL,
  `production_waste_recycled_id` int DEFAULT NULL,
  `process_waste_recycled_id` int DEFAULT NULL,
  `process_step_id` int DEFAULT NULL,
  `waste_recycled_consumption` double NOT NULL,
  `final_product_consumption` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `production_step_waste_recycled`
--

INSERT INTO `production_step_waste_recycled` (`id`, `production_waste_recycled_id`, `process_waste_recycled_id`, `process_step_id`, `waste_recycled_consumption`, `final_product_consumption`) VALUES
(1, 1, 4, 4, 1000, 1000);

-- --------------------------------------------------------

--
-- Structure de la table `production_unit`
--

CREATE TABLE `production_unit` (
  `id` int NOT NULL,
  `branch_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `energy_consumption` double DEFAULT NULL,
  `charge` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `production_unit`
--

INSERT INTO `production_unit` (`id`, `branch_id`, `label`, `energy_consumption`, `charge`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 'Coloration', 0, 0, '2022-05-03 11:09:10', '2022-05-03 11:09:10', NULL),
(2, 11, 'Raffinageffuuu', 0, 0, '2022-05-03 11:11:14', '2022-05-03 13:50:26', '2022-05-04 16:56:27'),
(3, 11, 'Cuvette', 1e45, 0, '2022-05-03 11:12:56', '2022-05-03 11:12:56', NULL),
(4, 11, 'Seau', 0, 1.2e44, '2022-05-03 11:16:27', '2022-05-03 11:16:27', NULL),
(5, 11, 'collaborator', 20, 1000, '2022-05-03 13:50:09', '2022-05-03 13:50:09', NULL),
(6, 11, 'Recyclage', 10, 1000, '2022-05-03 13:50:40', '2022-05-04 14:07:40', NULL),
(7, 8, 'Base', 1.288888888888889e40, 0, '2022-05-03 13:54:09', '2022-05-03 13:54:55', NULL),
(8, 13, 'Fabrication d\'un seau', 6800, 22100, '2022-05-03 13:58:42', '2022-05-06 09:31:35', '2022-05-06 09:31:35'),
(9, 6, 'Base', 7.82, 0, '2022-05-03 14:14:24', '2022-05-03 14:21:21', NULL),
(10, 12, 'corps', 0, 227000000000000.88, '2022-05-03 14:16:21', '2022-05-03 14:16:55', NULL),
(11, 15, 'Lavage', 0.23, 14.98, '2022-05-03 14:19:03', '2022-05-03 14:37:31', NULL),
(12, 15, 'Coloration', 0, 0, '2022-05-03 14:19:52', '2022-05-04 14:04:46', NULL),
(13, 16, 'Cuvette', 96, 12000, '2022-05-03 14:22:00', '2022-05-03 14:22:00', '2022-05-04 17:17:18'),
(14, 16, 'Seau', 0, 0, '2022-05-03 14:22:27', '2022-05-03 14:22:27', NULL),
(15, 10, 'assemblage', 0, 0, '2022-05-03 14:23:09', '2022-05-03 14:23:09', NULL),
(16, 11, 'Extraction 1', 759920000000, 4508963478, '2022-05-03 14:23:59', '2022-05-03 15:45:18', NULL),
(17, 8, 'Extraction 2', 125000, 0, '2022-05-03 14:26:51', '2022-05-03 14:26:51', NULL),
(18, 15, 'opppppppppppppppppppp', 930000000000, 123456789987, '2022-05-03 15:33:56', '2022-05-03 15:36:45', '2022-05-04 16:57:01'),
(19, 8, 'Raffinage', 23, 15000, '2022-05-04 13:36:11', '2022-05-04 13:36:11', NULL),
(20, 12, 'Assemblage des éléments', 45, 10000, '2022-05-06 09:31:15', '2022-05-06 09:31:15', NULL),
(21, 9, 'Usine de raffinerie', 45, 0, '2022-05-06 09:39:19', '2022-05-06 09:39:19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `production_unit_story`
--

CREATE TABLE `production_unit_story` (
  `id` int NOT NULL,
  `branch_id` int DEFAULT NULL,
  `production_unit_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `energy_consumption` double DEFAULT NULL,
  `charge` double DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `production_unit_story`
--

INSERT INTO `production_unit_story` (`id`, `branch_id`, `production_unit_id`, `label`, `energy_consumption`, `charge`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 10, 1, 'Coloration', 0, 0, '2022-05-03 11:09:10', '2022-05-03 11:09:10', NULL),
(2, 11, 2, 'Raffinage', 0, 0, '2022-05-03 11:11:14', '2022-05-03 11:11:14', NULL),
(3, 11, 3, 'Cuvette', 1e45, 0, '2022-05-03 11:12:56', '2022-05-03 11:12:56', NULL),
(4, 11, 4, 'Seau', 0, 1.2e44, '2022-05-03 11:16:27', '2022-05-03 11:16:27', NULL),
(5, 11, 2, 'Raffinageff', 0, 0, '2022-05-03 13:50:07', '2022-05-03 13:50:07', '2022-05-03 13:49:49'),
(6, 11, 5, 'collaborator', 20, 1000, '2022-05-03 13:50:09', '2022-05-03 13:50:09', NULL),
(7, 11, 2, 'Raffinageffuuu', 0, 0, '2022-05-03 13:50:26', '2022-05-03 13:50:26', '2022-05-03 13:49:49'),
(8, 11, 6, 'collaborator', 10, 1000, '2022-05-03 13:50:40', '2022-05-03 13:50:40', NULL),
(9, 8, 7, 'Base', 0, 0, '2022-05-03 13:54:09', '2022-05-03 13:54:09', NULL),
(10, 8, 7, 'Base', 0, 0, '2022-05-03 13:54:45', '2022-05-03 13:54:45', NULL),
(11, 8, 7, 'Base', 1.2888888888889e40, 0, '2022-05-03 13:54:55', '2022-05-03 13:54:55', NULL),
(12, 13, 8, 'Fabrication du support', 0, 0, '2022-05-03 13:58:42', '2022-05-03 13:58:42', NULL),
(13, 13, 8, 'Fabrication du support', 0, 0, '2022-05-03 14:00:21', '2022-05-03 14:00:21', NULL),
(14, 13, 8, 'Fabrication du support', 5.4444444444444e76, 0, '2022-05-03 14:02:18', '2022-05-03 14:02:18', NULL),
(15, 13, 8, 'Fabrication d\'un seau', 6800, 22100, '2022-05-03 14:04:19', '2022-05-03 14:04:19', NULL),
(16, 6, 9, 'Base', 7.8236564545451e32, 0, '2022-05-03 14:14:24', '2022-05-03 14:14:24', NULL),
(17, 12, 10, 'corps', 0, 7.8e27, '2022-05-03 14:16:21', '2022-05-03 14:16:21', NULL),
(18, 12, 10, 'corps', 0, 12.47, '2022-05-03 14:16:42', '2022-05-03 14:16:42', NULL),
(19, 12, 10, 'corps', 0, 227000000000000, '2022-05-03 14:16:55', '2022-05-03 14:16:55', NULL),
(20, 15, 11, 'Lavage', 89.36, 78912131, '2022-05-03 14:19:03', '2022-05-03 14:19:03', NULL),
(21, 15, 12, 'coloriageé\"\'(-è_ç_ç\"èé_\'-è-é\"(-é\'', 0, 0, '2022-05-03 14:19:52', '2022-05-03 14:19:52', NULL),
(22, 15, 12, 'coloriageé', 0, 0, '2022-05-03 14:20:05', '2022-05-03 14:20:05', NULL),
(23, 6, 9, 'Base', 7.82, 0, '2022-05-03 14:21:21', '2022-05-03 14:21:21', NULL),
(24, 16, 13, 'Cuvette', 96, 12000, '2022-05-03 14:22:00', '2022-05-03 14:22:00', NULL),
(25, 16, 14, 'Seau', 0, 0, '2022-05-03 14:22:27', '2022-05-03 14:22:27', NULL),
(26, 10, 15, 'assemblage', 0, 0, '2022-05-03 14:23:09', '2022-05-03 14:23:09', NULL),
(27, 8, 16, 'Extraction 1', 0, 0, '2022-05-03 14:23:59', '2022-05-03 14:23:59', NULL),
(28, 8, 17, 'Extraction 2', 125000, 0, '2022-05-03 14:26:51', '2022-05-03 14:26:51', NULL),
(29, 13, 8, 'Fabrication d\'un seauyyyy', 6800, 22100, '2022-05-03 14:32:24', '2022-05-03 14:32:24', '2022-05-03 14:31:49'),
(30, 15, 11, 'Lavage', 89.36, 2209, '2022-05-03 14:35:30', '2022-05-03 14:35:30', NULL),
(31, 15, 11, 'Lavage', 0.23, 14.98, '2022-05-03 14:37:31', '2022-05-03 14:37:31', NULL),
(32, 15, 18, 'opppppppppppppppppppp', 0, 0, '2022-05-03 15:33:56', '2022-05-03 15:33:56', NULL),
(33, 15, 18, 'opppppppppppppppppppp', 930000000000, 0, '2022-05-03 15:34:14', '2022-05-03 15:34:14', NULL),
(34, 15, 18, 'opppppppppppppppppppp', 930000000000, 123456789987, '2022-05-03 15:36:45', '2022-05-03 15:36:45', NULL),
(35, 11, 16, 'Extraction 1', 759920000000, 0, '2022-05-03 15:44:59', '2022-05-03 15:44:59', NULL),
(36, 11, 16, 'Extraction 1', 759920000000, 4508963478, '2022-05-03 15:45:18', '2022-05-03 15:45:18', NULL),
(37, 8, 19, 'Raffinage', 23, 15000, '2022-05-04 13:36:11', '2022-05-04 13:36:11', NULL),
(38, 15, 12, 'Coloration', 0, 0, '2022-05-04 14:04:46', '2022-05-04 14:04:46', NULL),
(39, 11, 6, 'Recyclage', 10, 1000, '2022-05-04 14:07:40', '2022-05-04 14:07:40', NULL),
(40, 12, 20, 'Assemblage des éléments', 45, 10000, '2022-05-06 09:31:15', '2022-05-06 09:31:15', NULL),
(41, 13, 8, 'Fabrication d\'un seau', 6800, 22100, '2022-05-06 09:31:29', '2022-05-06 09:31:29', NULL),
(42, 9, 21, 'Usine de raffinerie', 45, 0, '2022-05-06 09:39:19', '2022-05-06 09:39:19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `production_waste_recycled`
--

CREATE TABLE `production_waste_recycled` (
  `id` int NOT NULL,
  `waste_recycled_id` int DEFAULT NULL,
  `process_waste_recycled_id` int DEFAULT NULL,
  `production_id` int DEFAULT NULL,
  `mp_id` int DEFAULT NULL,
  `effective_weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `production_waste_recycled`
--

INSERT INTO `production_waste_recycled` (`id`, `waste_recycled_id`, `process_waste_recycled_id`, `production_id`, `mp_id`, `effective_weight`) VALUES
(1, NULL, 4, 1, 15, 1000);

-- --------------------------------------------------------

--
-- Structure de la table `product_type`
--

CREATE TABLE `product_type` (
  `id` int NOT NULL,
  `label` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_type`
--

INSERT INTO `product_type` (`id`, `label`) VALUES
(1, 'Matière première'),
(2, 'Produit de négoce'),
(3, 'Déchet à recycler'),
(4, 'Machine');

-- --------------------------------------------------------

--
-- Structure de la table `proforma`
--

CREATE TABLE `proforma` (
  `id` int NOT NULL,
  `payment_status_id` int DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `provider_id` int DEFAULT NULL,
  `product_type_id` int DEFAULT NULL,
  `num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `currency_course` double DEFAULT NULL,
  `is_voucher_entrance_generated` tinyint(1) NOT NULL,
  `is_local_recycling` tinyint(1) NOT NULL,
  `order_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivery_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `is_converted` tinyint(1) NOT NULL,
  `incoterms_status_id` int DEFAULT NULL,
  `lc_id` int DEFAULT NULL,
  `is_lc` tinyint(1) NOT NULL,
  `container` int DEFAULT NULL,
  `amount_converted` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `proforma`
--

INSERT INTO `proforma` (`id`, `payment_status_id`, `currency_id`, `provider_id`, `product_type_id`, `num`, `reference`, `amount`, `currency_course`, `is_voucher_entrance_generated`, `is_local_recycling`, `order_date`, `delivery_date`, `created_at`, `updated_at`, `deleted_at`, `is_converted`, `incoterms_status_id`, `lc_id`, `is_lc`, `container`, `amount_converted`) VALUES
(1, NULL, 47, 29, 1, 'SFOI/2209PRFM0001', 'REF PROFORMA', 25000, 1500, 0, 0, '2022-09-22 00:00:00', '2022-09-06 00:00:00', '2022-09-22 12:51:26', '2022-09-22 12:51:26', NULL, 1, NULL, NULL, 0, 0, 0),
(2, NULL, 47, 30, 1, 'SFOI/2209PRFM0002', 'REF PROFORMA 001', 200000, 4500, 0, 0, '2022-09-22 00:00:00', '2022-09-19 00:00:00', '2022-09-22 13:41:03', '2022-09-22 14:17:11', NULL, 0, NULL, NULL, 0, 0, 0),
(3, NULL, 47, 32, 1, 'SFOI/2209PRFM0003', 'REF PROFORMA MAT 220929', 236520, 4500, 0, 0, '2022-09-29 00:00:00', NULL, '2022-09-29 12:12:03', '2022-09-29 14:52:17', NULL, 1, 2, 1, 0, 0, 0),
(4, NULL, 47, 32, 2, 'SFOI/2209PRFM0004', 'REF PROFORMA pn 220929', 75000, 4500, 0, 0, '2022-09-29 00:00:00', '2022-09-14 00:00:00', '2022-09-29 12:30:27', '2022-09-29 12:30:27', NULL, 0, 1, 2, 0, 0, 0),
(5, NULL, 151, 32, 3, 'SFOI/2209PRFM0005', 'REF PROFORMA MAT RECYCL 220929', 2000, 4500, 0, 1, '2022-09-29 00:00:00', NULL, '2022-09-29 12:50:48', '2022-09-29 12:51:08', NULL, 0, 2, 3, 0, 0, 0),
(6, NULL, 47, 32, 1, 'SFOI/2209PRFM0006', '290922MP', 22500000, 1, 0, 0, '2022-09-29 00:00:00', NULL, '2022-09-29 14:01:52', '2022-09-29 14:45:17', NULL, 1, 4, 4, 1, 0, 0),
(7, NULL, 47, 32, 1, 'SFOI/2209PRFM0007', 'MP-PF-3009', 150000, 4000, 0, 0, '2022-09-30 00:00:00', '2022-09-13 00:00:00', '2022-09-30 07:34:26', '2022-09-30 07:44:34', NULL, 0, 2, 6, 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `provider`
--

CREATE TABLE `provider` (
  `id` int NOT NULL,
  `provider_type_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_domiciliation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_term` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_delay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `production_delay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `is_producer` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider`
--

INSERT INTO `provider` (`id`, `provider_type_id`, `label`, `address`, `email`, `website`, `tel`, `bank_domiciliation`, `payment_term`, `delivery_delay`, `production_delay`, `note`, `image_name`, `created_at`, `updated_at`, `deleted_at`, `is_producer`) VALUES
(1, 14, 'FRN-001', 'Antananarivo 12313456465456', 'gasy@tech.net', 'dfghjhgfdsdfyhujhfds', '12345678987456123456', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 14:24:49', '2022-05-06 14:31:58', '2022-05-06 14:31:58', NULL),
(2, 17, 'RAFALIMALALA 123456\"è-(\'\"é(-è_çè-(\'\"(-è_ç', 'Antananarivo', 'mail', 'wwwwww', 'kjhfhdj_è-è(-\"\'', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 14:30:54', '2022-05-06 14:31:52', '2022-05-06 14:31:52', NULL),
(3, 17, 'RAVATOMANGA MAMY', 'Antananarivo', 'mail456456fdsffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 'ffffffffffffffffffffffffffffff1234564', '03309782837', 'Antanan22222222', NULL, NULL, NULL, NULL, 'capture-7-6275084c1f09e900464543.png', '2022-05-06 14:34:37', '2022-05-06 14:53:56', '2022-05-06 14:53:56', NULL),
(4, 17, 'Zo Andrianambinina', 'Rue Dr Raseta Antananarivo', 'mail', 'fsdfdsgds', 'fdsfgds', 'adresse', 'fffdsqdsqdq', 'fffffffff1231654564654564(5\'64-5666666666666666666666666666666666----------------------', '123165456456466666666gfd\"\'(-è_', 'fffffffffffffffffffffffffffffffffffffffff', NULL, '2022-05-06 14:46:43', '2022-05-06 14:53:37', '2022-05-06 14:53:37', NULL),
(5, 14, 'MAKIPLAST', 'B.P. 9195A - Andoharanofotsy, 7, Antananarivo', 'makiplast@gmail.com', 'http://sfoi.livenexx.net/', '020 26 456 78', 'Antananarivo', 'Carte bancaire', 'dans 6 mois.', 'dix mois au max', 'carte bancairee', 'citerne-horizontale-makiplast-480x360-62750d3bb0514091923073.jpg', '2022-05-06 14:57:47', '2022-05-23 11:17:12', NULL, NULL),
(6, 17, 'ertyuio', 'zertyuiop', '^qsertyuio', 'zertyuiop', 'qsdrtyuiop', 'azertyuio', 'sertyuio', '<wsdfghjklm', 'qsrtyuio', 'sdrtyui', '5479894-62750f5cf2aa8767918977.jpg', '2022-05-06 15:06:52', '2022-05-06 15:10:20', '2022-05-06 15:10:20', NULL),
(7, 15, 'COBEPLAST', 'Antananarivo', 'cobeplast12@gmail.com', 'https://www.cobeplast.com/', '+33 5 59 67 67 91', 'Antananarivo', 'carte bancaire', '12/02/2022', '09.6mois', 'carte bancaire', 'telechargement-1-6275116228cf3766782334.png', '2022-05-06 15:15:30', '2022-05-06 15:15:30', NULL, NULL),
(8, 16, 'Ensinger', 'Rue des Petites Combes, 01700 Beynost, France', 'ensiger.gmail.com', 'www.ensingerplastics.com', '+33 4 78 55 36 35', 'France', NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:21:24', '2022-05-06 15:21:24', NULL, NULL),
(9, 16, 'azerfhj', 'azerty', 'zerty', 'zerty', 'qserty', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:21:38', '2022-05-06 15:27:19', '2022-05-06 15:27:19', NULL),
(10, 14, 'erty', 'ertyu', 'qsdfgh', 'qzerty', 'sdrtgy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:21:46', '2022-05-06 15:27:14', '2022-05-06 15:27:14', NULL),
(11, 14, 'Nadia Harisoa', 'Bordeau France', 'nadia@livenexx.net', 'zert', 'zerfgyh', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:21:54', '2022-05-06 15:27:10', '2022-05-06 15:27:10', NULL),
(12, 16, 'zerty', 'qserty', 'QSDF', 'QSDF', 'QSDFG', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:22:04', '2022-05-06 15:27:01', '2022-05-06 15:27:01', NULL),
(13, 14, 'SDRFG', 'SDFGHQ', 'dfg', 'dfg', 'dfg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:22:36', '2022-05-06 15:26:56', '2022-05-06 15:26:56', NULL),
(14, 14, 'dfg', 'dfg', 'dfg', 'df', 'df', 'sdf', NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:23:24', '2022-05-06 15:26:49', '2022-05-06 15:26:49', NULL),
(15, 14, 'ert', 'ert', 'ert', 'ert', 'ert', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:23:41', '2022-05-06 15:26:46', '2022-05-06 15:26:46', NULL),
(16, 14, 'zer', 'zert', 'sdr', 'sdf', 'sdfg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:23:52', '2022-05-06 15:26:43', '2022-05-06 15:26:43', NULL),
(17, 16, 'zerdffsfsgdsgd', 'sdfgt', 'sdfg', 'sdfg', 'sdfg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:24:26', '2022-05-06 15:26:39', '2022-05-06 15:26:39', NULL),
(18, 15, 'Gasyplast', 'Lot IVL 19 Anosivavaka 101, Antananarivo', 'gasyplast@gmail.com', 'http://asprod.gasyplast.mg', '261 32 11 675 13', 'En France, au 1er janvier 2016, Saint-Germain-de-Tallevende-la-Lande-Vaumont (Calvados)', NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:33:02', '2022-05-06 16:12:50', NULL, NULL),
(19, 15, 'r', 'r', 'abel@gmail.com', 'https://www.facebook.com/', 'abel', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:47:27', '2022-05-06 16:00:57', '2022-05-06 16:00:57', NULL),
(20, 14, 'ggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 'gggggggggggggggggggggggggggppppppppppppppppppppppppppppppppppppppppppppppggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggggg', 'abel@gmail.com', 'https://www.facebook.com/', '2222222222', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-06 15:59:11', '2022-05-06 16:00:34', '2022-05-06 16:00:34', NULL),
(21, 14, 'DIMAPLAST', '21, Chemin des pivoines, Ain, Casablanca 20250, Maroc', 'dimaplast@gmail.com', 'http://www.dimaplast.fr', '+212 641-674757', 'Maroc Ville', 'carte bancaire', '10 mois', NULL, 'Suggérer une modification', NULL, '2022-05-06 16:06:28', '2022-05-06 16:06:28', NULL, NULL),
(22, 14, 'zertyu', 'qsdryuLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux', 'ando@livenexx.com', 'https://www.google.com/intl/fr/docs/about/', '0332145678', 'Le Lorem Ipsum est simplement d', 'Le Lorem Ipsum est simplement du', 'Le Lorem Ipsum est simplement avant impress', 'Le Lorem Ipsum est simplement d', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux', NULL, '2022-05-06 17:42:37', '2022-05-06 17:47:42', '2022-05-06 17:47:42', NULL),
(23, 14, 'qsdfg', 'sdfgh', 'q@live.com', 'https://docs.google.com/docume', '0332145678', 'Le lorem ipsum est, en imprimerie, une sui', NULL, NULL, NULL, NULL, NULL, '2022-05-06 17:53:18', '2022-05-06 17:54:00', '2022-05-06 17:54:00', NULL),
(24, 15, 'MAMY RAVATOMANGA', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,', 'miarisoa722@gmail.com', 'https://www.google.com/search?', '0332145678', 'Le lorem ipsum est, en impLe lorem ipsum est, en imprimerie, une suite de mots sans signification', 'Le lorem ipsum est, en imprim', 'Le lorem ipsum est, en impri', 'Le lorem ipsum est, en imprim', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,', NULL, '2022-05-06 17:55:45', '2022-05-06 18:11:48', NULL, NULL),
(25, 16, 'Business production', 'Lot Vj2 Antsakaviro', 'nanta@yopmail.com', 'http://web.com', 'nanta@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-16 09:36:17', '2022-05-16 09:36:17', NULL, NULL),
(26, 14, 'Dublas', 'Toulouse', 'dublas@yopmail.com', 'http://www.dub.com', '03248798', NULL, 'virement bancaire', '30 jours', '1 ans', NULL, NULL, '2022-06-14 09:49:28', '2022-06-14 09:49:28', NULL, NULL),
(27, 14, 'Bluestac', 'Tanjombato', 'blue@yopmail.com', 'http://blue.com', '03246878', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15 15:04:13', '2022-06-15 15:04:13', NULL, NULL),
(28, 15, 'Alu metal', 'Ambodivona Antananarivo', 'alu@yopmail.com', 'Http://alu.com', '0325599877', 'BNI Behoririka', 'virement bancaire', 'dans 24 heure', '1 mois', NULL, NULL, '2022-06-20 11:50:18', '2022-06-20 11:50:18', NULL, NULL),
(29, 14, 'F0001', 'Antsakaviro', 'nanta@yopmail.com', 'http://sfoi.com', '03255884', 'BNI', 'Virement', '1 mois', '2 ans', NULL, NULL, '2022-08-09 13:41:39', '2022-09-23 07:09:07', NULL, 0),
(30, 14, '25', 'Mada', 'caminah@livenexx.fr', 'http://sfoi.mg/', '0346152555', '25', '256', '15jours', '15 jours', '15', NULL, '2022-09-22 13:17:41', '2022-10-03 13:20:28', NULL, 0),
(31, 16, 'REF002', 'adresse', 'caminah@livenexx.fr', 'http://sfoi.mg/', '034612222', '25', NULL, NULL, NULL, NULL, NULL, '2022-09-22 14:52:39', '2022-09-26 14:13:08', NULL, 1),
(32, 16, 'ETP', 'Antananarivo 105', 'etp@yopmail.com', 'http://sfoi.mg/', '0346152555', 'BNI- 0355555555555555555', '1 mois', '1 mois et demi', '1.5 jours', 'Fournisseur étranger', 'clementinehazer-2-icons-vert-attention-6335959ebb361474675717.png', '2022-09-29 11:56:27', '2022-09-30 07:18:54', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `provider_invoice_status`
--

CREATE TABLE `provider_invoice_status` (
  `id` int NOT NULL,
  `label` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider_invoice_status`
--

INSERT INTO `provider_invoice_status` (`id`, `label`) VALUES
(1, 'À l\'usine'),
(2, 'Port de départ'),
(3, 'Flottant'),
(4, 'Port Madagascar'),
(5, 'Arrivée SFOI');

-- --------------------------------------------------------

--
-- Structure de la table `provider_lot`
--

CREATE TABLE `provider_lot` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `mp_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `other_price` double NOT NULL,
  `arrival_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `trade_product_id` int DEFAULT NULL,
  `waste_recycled_id` int DEFAULT NULL,
  `proforma_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider_lot`
--

INSERT INTO `provider_lot` (`id`, `invoice_id`, `mp_id`, `label`, `quantity`, `price`, `other_price`, `arrival_date`, `created_at`, `updated_at`, `deleted_at`, `trade_product_id`, `waste_recycled_id`, `proforma_id`) VALUES
(1, 1, 9, NULL, 22, 88900, 0, '2022-05-10 11:40:53', '2022-05-10 11:21:12', '2022-05-10 13:58:55', '2022-05-10 13:58:55', NULL, NULL, NULL),
(2, 1, 17, NULL, 12, 14962.68, 0, '2022-05-10 11:40:53', '2022-05-10 11:21:12', '2022-05-10 13:58:55', '2022-05-10 13:58:55', NULL, NULL, NULL),
(3, 1, 13, NULL, 30, 26240.7, 0, '2022-05-10 11:40:53', '2022-05-10 11:40:53', '2022-05-10 13:58:55', '2022-05-10 13:58:55', NULL, NULL, NULL),
(4, 2, 16, NULL, 40, 78000, 0, '2022-05-10 12:20:24', '2022-05-10 12:20:24', '2022-05-10 12:20:24', NULL, NULL, NULL, NULL),
(5, 2, NULL, 'Produits Chimiques', 20, 0, 0, '2022-05-10 12:20:24', '2022-05-10 12:20:24', '2022-05-10 12:20:24', NULL, NULL, NULL, NULL),
(6, 2, 21, NULL, 15, 12000, 0, '2022-05-10 12:20:24', '2022-05-10 12:20:24', '2022-05-10 12:20:24', NULL, NULL, NULL, NULL),
(7, 3, 10, NULL, 14, 5630.38, 0, '2022-05-10 14:48:47', '2022-05-10 13:37:07', '2022-05-10 14:48:47', NULL, NULL, NULL, NULL),
(8, 4, 14, NULL, 26, 160000, 0, '2022-05-10 14:27:56', '2022-05-10 13:58:00', '2022-05-10 14:27:56', NULL, NULL, NULL, NULL),
(9, 5, 8, NULL, 10, 47000, 0, '2022-05-10 14:03:09', '2022-05-10 14:03:09', '2022-05-10 14:03:09', NULL, NULL, NULL, NULL),
(10, 5, 9, NULL, 10, 1200.8, 0, '2022-05-10 14:03:09', '2022-05-10 14:03:09', '2022-05-10 14:03:09', NULL, NULL, NULL, NULL),
(11, 6, 8, NULL, 32, 243865.6, 0, '2022-05-10 14:39:08', '2022-05-10 14:15:23', '2022-05-10 14:39:08', NULL, NULL, NULL, NULL),
(12, 6, 9, NULL, 7, 8400, 0, '2022-05-10 14:39:08', '2022-05-10 14:15:23', '2022-05-10 14:39:08', NULL, NULL, NULL, NULL),
(13, 6, 5, NULL, 10, 3500.4, 0, '2022-05-10 14:39:08', '2022-05-10 14:23:01', '2022-05-10 14:39:08', NULL, NULL, NULL, NULL),
(14, 4, 16, NULL, 34, 78960.07, 0, '2022-05-10 14:27:56', '2022-05-10 14:27:56', '2022-05-10 14:27:56', NULL, NULL, NULL, NULL),
(15, 7, 15, NULL, 15, 7800, 0, '2022-05-10 16:14:06', '2022-05-10 16:10:12', '2022-05-10 16:14:06', NULL, NULL, NULL, NULL),
(16, 7, 10, NULL, 12, 300, 0, '2022-05-10 16:14:06', '2022-05-10 16:14:06', '2022-05-10 16:14:06', NULL, NULL, NULL, NULL),
(17, 8, 13, NULL, 8, 130400, 0, '2022-05-11 14:28:40', '2022-05-11 14:05:28', '2022-05-11 14:28:40', NULL, NULL, NULL, NULL),
(18, 8, NULL, 'Produits chimique', 4, 0, 0, '2022-05-11 14:28:40', '2022-05-11 14:06:04', '2022-05-11 14:28:40', NULL, NULL, NULL, NULL),
(19, 9, 13, NULL, 29, 16908.23, 0, '2022-05-11 14:38:34', '2022-05-11 14:33:38', '2022-05-11 14:38:34', NULL, NULL, NULL, NULL),
(20, 9, NULL, 'Réducteur', 20, 0, 0, '2022-05-11 14:38:34', '2022-05-11 14:33:38', '2022-05-11 14:38:34', NULL, NULL, NULL, NULL),
(21, 9, 10, NULL, 10, 7800, 0, '2022-05-11 14:38:34', '2022-05-11 14:33:38', '2022-05-11 14:38:34', NULL, NULL, NULL, NULL),
(22, 10, 15, NULL, 1000000, 5000, 0, '2022-05-16 10:22:00', '2022-05-16 10:22:00', '2022-05-16 10:44:57', '2022-05-16 10:44:57', NULL, NULL, NULL),
(23, 10, 14, NULL, 80000, 480000000, 0, '2022-05-16 10:22:00', '2022-05-16 10:22:00', '2022-05-16 10:44:57', '2022-05-16 10:44:57', NULL, NULL, NULL),
(24, 11, 11, NULL, 23, 1000, 0, '2022-05-16 11:09:19', '2022-05-16 11:09:19', '2022-05-16 11:21:56', '2022-05-16 11:21:56', NULL, NULL, NULL),
(25, 12, 11, NULL, 23, 150000, 0, '2022-05-16 11:23:33', '2022-05-16 11:23:33', '2022-05-16 11:30:30', '2022-05-16 11:30:30', NULL, NULL, NULL),
(26, 13, 15, NULL, 23, 1100010, 0, '2022-05-16 12:01:12', '2022-05-16 12:01:12', '2022-05-16 12:20:54', '2022-05-16 12:20:53', NULL, NULL, NULL),
(27, 14, 11, NULL, 23.21, 11050150150.83, 0, '2022-05-16 17:04:01', '2022-05-16 12:34:21', '2022-05-16 17:04:01', NULL, NULL, NULL, NULL),
(28, 15, 11, NULL, 2, 12000, 0, '2022-05-16 13:40:54', '2022-05-16 13:40:54', '2022-05-16 13:40:54', NULL, NULL, NULL, NULL),
(29, 16, 14, NULL, 1000000, 5000000000, 0, '2022-05-16 13:52:01', '2022-05-16 13:52:01', '2022-05-16 13:52:01', NULL, NULL, NULL, NULL),
(30, 17, 14, NULL, 1000000, 5000, 0, '2022-05-16 14:46:23', '2022-05-16 14:46:23', '2022-05-16 14:46:23', NULL, NULL, NULL, NULL),
(31, 18, 14, NULL, 1000000, 400000, 0, '2022-05-16 15:21:34', '2022-05-16 15:21:34', '2022-05-16 15:21:34', NULL, NULL, NULL, NULL),
(32, 18, 9, NULL, 80000, 480000000, 0, '2022-05-16 15:21:34', '2022-05-16 15:21:34', '2022-05-16 15:21:34', NULL, NULL, NULL, NULL),
(33, 18, NULL, 'frais de transport', 1, 0, 5000, '2022-05-16 15:21:34', '2022-05-16 15:21:34', '2022-05-16 16:23:48', NULL, NULL, NULL, NULL),
(34, 19, 14, NULL, 1000000, 500000315, 0, '2022-05-16 15:48:38', '2022-05-16 15:48:38', '2022-05-16 15:48:38', NULL, NULL, NULL, NULL),
(35, 21, 15, NULL, 10, 5110, 0, '2022-05-16 16:41:19', '2022-05-16 16:36:28', '2022-05-16 16:41:19', NULL, NULL, NULL, NULL),
(36, 21, 14, NULL, 5, 22550, 0, '2022-05-16 16:41:19', '2022-05-16 16:36:28', '2022-05-16 16:41:19', NULL, NULL, NULL, NULL),
(37, 21, 9, NULL, 60, 300000, 0, '2022-05-16 16:41:19', '2022-05-16 16:36:28', '2022-05-16 16:41:19', NULL, NULL, NULL, NULL),
(38, 21, 13, NULL, 100, 300000, 0, '2022-05-16 16:41:19', '2022-05-16 16:36:28', '2022-05-16 16:41:19', NULL, NULL, NULL, NULL),
(39, 21, 11, NULL, 200, 600000, 0, '2022-05-16 16:41:19', '2022-05-16 16:41:19', '2022-05-16 17:05:20', NULL, NULL, NULL, NULL),
(40, 22, 15, NULL, 22, 1700, 0, '2022-05-17 09:05:33', '2022-05-17 09:05:33', '2022-05-17 09:05:33', NULL, NULL, NULL, NULL),
(41, 23, 5, NULL, 4000.5, 20002500, 0, '2022-05-17 10:10:08', '2022-05-17 10:10:08', '2022-05-17 10:10:08', NULL, NULL, NULL, NULL),
(42, 24, 15, NULL, 15.2, 91200, 0, '2022-05-17 16:18:20', '2022-05-17 16:18:20', '2022-05-17 16:18:20', NULL, NULL, NULL, NULL),
(43, 24, 16, NULL, 14000.12, 500, 0, '2022-05-17 16:18:20', '2022-05-17 16:18:20', '2022-05-17 16:18:20', NULL, NULL, NULL, NULL),
(44, 25, 17, NULL, 10, 500, 0, '2022-05-23 13:32:25', '2022-05-23 13:32:25', '2022-05-23 13:32:25', NULL, NULL, NULL, NULL),
(45, 26, 17, NULL, 2, 50200, 0, '2022-06-10 09:20:44', '2022-06-10 09:20:44', '2022-06-10 09:20:44', NULL, NULL, NULL, NULL),
(46, 27, 15, NULL, 18000.25, 74000, 0, '2022-06-10 10:02:24', '2022-06-10 10:02:24', '2022-06-10 10:02:24', NULL, NULL, NULL, NULL),
(47, 28, 12, NULL, 45000, 5000, 0, '2022-06-13 14:10:33', '2022-06-13 14:10:33', '2022-06-13 14:10:33', NULL, NULL, NULL, NULL),
(48, 29, 13, NULL, 1000.78, 35000, 0, '2022-06-14 09:54:22', '2022-06-14 09:54:22', '2022-06-14 09:54:22', NULL, NULL, NULL, NULL),
(49, 29, 11, NULL, 4000.55, 40000, 0, '2022-06-14 09:54:22', '2022-06-14 09:54:22', '2022-06-14 09:54:22', NULL, NULL, NULL, NULL),
(50, 29, 5, NULL, 15000, 20000, 0, '2022-06-14 09:54:22', '2022-06-14 09:54:22', '2022-06-14 09:54:22', NULL, NULL, NULL, NULL),
(51, 29, 10, NULL, 23000, 7000, 0, '2022-06-14 09:54:22', '2022-06-14 09:54:22', '2022-06-14 09:54:22', NULL, NULL, NULL, NULL),
(52, 30, 13, NULL, 5000, 25000, 0, '2022-06-14 09:57:06', '2022-06-14 09:57:06', '2022-06-14 09:57:06', NULL, NULL, NULL, NULL),
(53, 30, 11, NULL, 12000, 37000, 0, '2022-06-14 09:57:06', '2022-06-14 09:57:06', '2022-06-14 09:57:06', NULL, NULL, NULL, NULL),
(54, 30, 5, NULL, 31000, 45000, 0, '2022-06-14 09:57:06', '2022-06-14 09:57:06', '2022-06-14 09:57:06', NULL, NULL, NULL, NULL),
(55, 31, 9, NULL, 40, 50, 0, '2022-06-14 11:17:37', '2022-06-14 11:17:37', '2022-06-14 11:17:37', NULL, NULL, NULL, NULL),
(56, 32, 9, NULL, 100, 60, 0, '2022-06-14 11:18:27', '2022-06-14 11:18:27', '2022-06-14 11:18:27', NULL, NULL, NULL, NULL),
(57, 33, 21, NULL, 2000, 600, 0, '2022-06-15 15:06:51', '2022-06-15 15:06:51', '2022-06-15 15:06:51', NULL, NULL, NULL, NULL),
(58, 34, 21, NULL, 100, 700, 0, '2022-06-15 15:07:29', '2022-06-15 15:07:29', '2022-06-15 15:07:29', NULL, NULL, NULL, NULL),
(59, 35, 21, NULL, 9, 1, 0, '2022-06-15 16:18:08', '2022-06-15 16:18:08', '2022-06-15 16:18:08', NULL, NULL, NULL, NULL),
(60, 36, 8, NULL, 50, 50, 0, '2022-06-15 16:55:57', '2022-06-15 16:55:57', '2022-06-15 16:55:57', NULL, NULL, NULL, NULL),
(61, 37, 25, NULL, 4000.5, 3500, 0, '2022-06-16 09:45:03', '2022-06-16 09:45:03', '2022-06-16 09:45:03', NULL, NULL, NULL, NULL),
(62, 38, 9, NULL, 20000, 2000, 0, '2022-06-16 09:50:38', '2022-06-16 09:50:38', '2022-06-16 09:50:38', NULL, NULL, NULL, NULL),
(63, 39, 25, NULL, 20, 600, 0, '2022-06-16 11:34:15', '2022-06-16 11:34:15', '2022-06-16 11:34:15', NULL, NULL, NULL, NULL),
(64, 39, 9, NULL, 30, 800, 0, '2022-06-16 11:34:15', '2022-06-16 11:34:15', '2022-06-16 11:34:15', NULL, NULL, NULL, NULL),
(65, 40, 10, NULL, 4500, 8000, 0, '2022-06-16 11:42:06', '2022-06-16 11:42:06', '2022-06-16 11:42:06', NULL, NULL, NULL, NULL),
(66, 41, 26, NULL, 5000, 10000, 0, '2022-06-17 10:49:31', '2022-06-17 10:49:31', '2022-06-17 10:49:31', NULL, NULL, NULL, NULL),
(67, 42, 26, NULL, 3000, 4000, 0, '2022-06-17 10:51:51', '2022-06-17 10:51:51', '2022-06-17 10:51:51', NULL, NULL, NULL, NULL),
(68, 43, 27, NULL, 18000, 8000, 0, '2022-06-17 10:54:19', '2022-06-17 10:54:19', '2022-06-17 10:54:19', NULL, NULL, NULL, NULL),
(69, 44, 27, NULL, 45, 12500, 0, '2022-06-20 10:42:48', '2022-06-20 10:42:48', '2022-06-20 10:42:48', NULL, NULL, NULL, NULL),
(70, 45, 28, NULL, 5000, 7000, 0, '2022-06-20 10:53:07', '2022-06-20 10:53:07', '2022-06-20 10:53:07', NULL, NULL, NULL, NULL),
(71, 45, 29, NULL, 3000, 8000, 0, '2022-06-20 10:53:07', '2022-06-20 10:53:07', '2022-06-20 10:53:07', NULL, NULL, NULL, NULL),
(72, 46, 28, NULL, 2000, 9000, 0, '2022-06-20 10:54:18', '2022-06-20 10:54:18', '2022-06-20 10:54:18', NULL, NULL, NULL, NULL),
(73, 46, 29, NULL, 1000, 9000, 0, '2022-06-20 10:54:18', '2022-06-20 10:54:18', '2022-06-20 10:54:18', NULL, NULL, NULL, NULL),
(74, 47, 31, NULL, 4500, 5000, 0, '2022-06-20 11:52:43', '2022-06-20 11:52:43', '2022-06-20 11:52:43', NULL, NULL, NULL, NULL),
(75, 47, 30, NULL, 6000, 7000, 0, '2022-06-20 11:52:43', '2022-06-20 11:52:43', '2022-06-20 11:52:43', NULL, NULL, NULL, NULL),
(76, 48, 30, NULL, 4000, 4000, 0, '2022-06-20 14:20:11', '2022-06-20 14:20:11', '2022-06-20 14:20:11', NULL, NULL, NULL, NULL),
(77, 48, 31, NULL, 5000, 5000, 0, '2022-06-20 14:20:11', '2022-06-20 14:20:11', '2022-06-20 14:20:11', NULL, NULL, NULL, NULL),
(78, 49, 15, NULL, 1200, 5000, 0, '2022-06-21 12:19:35', '2022-06-21 12:19:35', '2022-06-21 12:19:35', NULL, NULL, NULL, NULL),
(79, 49, 13, NULL, 5000, 6000, 0, '2022-06-21 12:19:35', '2022-06-21 12:19:35', '2022-06-21 12:19:35', NULL, NULL, NULL, NULL),
(80, 50, 33, NULL, 10, 50, 0, '2022-06-21 14:13:59', '2022-06-21 14:13:59', '2022-06-21 14:13:59', NULL, NULL, NULL, NULL),
(81, 50, 32, NULL, 20, 50, 0, '2022-06-21 14:13:59', '2022-06-21 14:13:59', '2022-06-21 14:13:59', NULL, NULL, NULL, NULL),
(82, 51, 33, NULL, 20, 50, 0, '2022-06-21 14:15:28', '2022-06-21 14:15:28', '2022-06-21 14:15:28', NULL, NULL, NULL, NULL),
(83, 51, 32, NULL, 20, 50, 0, '2022-06-21 14:15:28', '2022-06-21 14:15:28', '2022-06-21 14:15:28', NULL, NULL, NULL, NULL),
(84, 52, NULL, NULL, 5000.5, 600, 0, '2022-08-09 13:46:05', '2022-08-09 13:46:05', '2022-08-09 13:46:05', NULL, NULL, 11, NULL),
(85, 52, NULL, NULL, 1000, 400, 0, '2022-08-09 13:46:05', '2022-08-09 13:46:05', '2022-08-09 13:46:05', NULL, NULL, 6, NULL),
(86, 52, NULL, 'NILON', 10, 0, 200, '2022-08-09 13:46:05', '2022-08-09 13:46:05', '2022-08-09 13:46:05', NULL, NULL, NULL, NULL),
(87, 53, NULL, NULL, 10, 50, 0, '2022-08-09 13:52:44', '2022-08-09 13:52:44', '2022-08-09 13:52:44', NULL, NULL, 11, NULL),
(88, 53, NULL, NULL, 20, 60, 0, '2022-08-09 13:52:44', '2022-08-09 13:52:44', '2022-08-09 13:52:44', NULL, NULL, 6, NULL),
(89, 53, NULL, 'NILON', 10, 0, 10, '2022-08-09 13:52:44', '2022-08-09 13:52:44', '2022-08-09 13:52:44', NULL, NULL, NULL, NULL),
(90, 54, NULL, NULL, 5000.6, 25003, 0, '2022-08-22 07:47:04', '2022-08-22 07:47:04', '2022-08-22 07:47:04', NULL, NULL, 11, NULL),
(91, NULL, 14, NULL, 10, 25000, 0, '2022-09-22 12:51:26', '2022-09-22 12:51:26', '2022-09-22 12:51:26', NULL, NULL, NULL, 1),
(92, 55, 14, NULL, 10, 25000, 0, '2022-09-22 12:51:26', '2022-09-22 12:51:26', '2022-09-22 12:51:26', NULL, NULL, NULL, NULL),
(93, NULL, 15, NULL, 15, 150000, 0, '2022-09-22 14:17:11', '2022-09-22 13:41:03', '2022-09-22 14:17:11', NULL, NULL, NULL, 2),
(94, NULL, 27, NULL, 10, 50000, 0, '2022-09-22 14:17:11', '2022-09-22 13:41:03', '2022-09-22 14:17:11', NULL, NULL, NULL, 2),
(95, NULL, 15, NULL, 10, 10000, 0, '2022-09-29 14:52:17', '2022-09-29 12:12:03', '2022-09-29 14:52:17', NULL, NULL, NULL, 3),
(96, NULL, 13, NULL, 15, 75000, 0, '2022-09-29 14:52:17', '2022-09-29 12:15:44', '2022-09-29 14:52:17', NULL, NULL, NULL, 3),
(97, NULL, 27, NULL, 15, 150000, 0, '2022-09-29 14:52:17', '2022-09-29 12:15:44', '2022-09-29 14:52:17', NULL, NULL, NULL, 3),
(98, NULL, 9, NULL, 0.5, 1520, 0, '2022-09-29 14:52:17', '2022-09-29 12:15:44', '2022-09-29 14:52:17', NULL, NULL, NULL, 3),
(99, NULL, NULL, NULL, 5, 75000, 15000, '2022-09-29 12:30:27', '2022-09-29 12:30:27', '2022-09-29 12:30:27', NULL, NULL, NULL, 4),
(100, NULL, NULL, NULL, 10, 2000, 0, '2022-09-29 12:51:08', '2022-09-29 12:50:48', '2022-09-29 12:51:08', NULL, NULL, 15, 5),
(101, NULL, 15, NULL, 15000, 22500000, 0, '2022-09-29 14:45:17', '2022-09-29 14:01:52', '2022-09-29 14:45:17', NULL, NULL, NULL, 6),
(102, 56, 15, NULL, 15000, 22500000, 0, '2022-09-29 14:45:17', '2022-09-29 14:45:17', '2022-09-29 14:45:17', NULL, NULL, NULL, NULL),
(103, 57, 15, NULL, 10, 10000, 0, '2022-09-29 14:52:17', '2022-09-29 14:52:17', '2022-09-29 14:52:17', NULL, NULL, NULL, NULL),
(104, 57, 13, NULL, 15, 75000, 0, '2022-09-29 14:52:17', '2022-09-29 14:52:17', '2022-09-29 14:52:17', NULL, NULL, NULL, NULL),
(105, 57, 27, NULL, 15, 150000, 0, '2022-09-29 14:52:17', '2022-09-29 14:52:17', '2022-09-29 14:52:17', NULL, NULL, NULL, NULL),
(106, 57, 9, NULL, 0.5, 1520, 0, '2022-09-29 14:52:17', '2022-09-29 14:52:17', '2022-09-29 14:52:17', NULL, NULL, NULL, NULL),
(107, NULL, 14, NULL, 10, 150000, 0, '2022-09-30 07:44:34', '2022-09-30 07:34:26', '2022-09-30 07:44:34', NULL, NULL, NULL, 7);

-- --------------------------------------------------------

--
-- Structure de la table `provider_machine`
--

CREATE TABLE `provider_machine` (
  `provider_id` int NOT NULL,
  `machine_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider_machine`
--

INSERT INTO `provider_machine` (`provider_id`, `machine_id`) VALUES
(32, 6),
(32, 7),
(32, 16),
(32, 22);

-- --------------------------------------------------------

--
-- Structure de la table `provider_mp`
--

CREATE TABLE `provider_mp` (
  `provider_id` int NOT NULL,
  `mp_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider_mp`
--

INSERT INTO `provider_mp` (`provider_id`, `mp_id`) VALUES
(29, 13),
(31, 9),
(31, 11),
(32, 8),
(32, 9),
(32, 12);

-- --------------------------------------------------------

--
-- Structure de la table `provider_product_type`
--

CREATE TABLE `provider_product_type` (
  `provider_id` int NOT NULL,
  `product_type_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider_product_type`
--

INSERT INTO `provider_product_type` (`provider_id`, `product_type_id`) VALUES
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(32, 3),
(32, 4);

-- --------------------------------------------------------

--
-- Structure de la table `provider_trade_product`
--

CREATE TABLE `provider_trade_product` (
  `provider_id` int NOT NULL,
  `trade_product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `provider_type`
--

CREATE TABLE `provider_type` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider_type`
--

INSERT INTO `provider_type` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fournisseur de colorant', '2022-05-05 15:18:47', '2022-05-06 12:28:48', '2022-05-06 12:28:48'),
(2, 'fournisseur de pièces', '2022-05-05 15:19:31', '2022-05-06 12:28:43', '2022-05-06 12:28:43'),
(3, 'China Code GB', '2022-05-05 15:21:08', '2022-05-06 12:28:39', '2022-05-06 12:28:39'),
(4, 'CNC Machining', '2022-05-05 15:21:46', '2022-05-06 12:28:36', '2022-05-06 12:28:36'),
(5, 'GOUDARD PLASTIQUES', '2022-05-05 15:23:26', '2022-05-06 12:28:32', '2022-05-06 12:28:32'),
(6, 'ROUPE BRELLO', '2022-05-05 15:23:56', '2022-05-06 12:28:28', '2022-05-06 12:28:28'),
(7, 'BOUVET MOULES', '2022-05-05 15:24:13', '2022-05-06 12:28:24', '2022-05-06 12:28:24'),
(8, 'RSP', '2022-05-05 15:24:52', '2022-05-06 12:28:20', '2022-05-06 12:28:20'),
(9, 'ERMO', '2022-05-05 15:25:08', '2022-05-06 12:28:16', '2022-05-06 12:28:16'),
(10, 'INCOE', '2022-05-05 15:25:21', '2022-05-06 12:28:09', '2022-05-06 12:28:09'),
(11, 'INCOEEE', '2022-05-05 15:26:37', '2022-05-05 15:33:49', '2022-05-05 15:33:49'),
(12, 'zaertyuio', '2022-05-05 15:33:12', '2022-05-05 15:33:30', '2022-05-05 15:33:30'),
(13, 'Hondadd', '2022-05-06 09:47:11', '2022-05-06 09:47:20', '2022-05-06 09:47:20'),
(14, 'Fournisseur interne', '2022-05-06 12:29:02', '2022-05-06 12:29:02', NULL),
(15, 'Fournisseur local', '2022-05-06 12:29:20', '2022-05-06 12:29:20', NULL),
(16, 'Fournisseur étranger', '2022-05-06 12:29:43', '2022-05-06 12:29:43', NULL),
(17, 'type test', '2022-05-06 14:28:29', '2022-05-06 15:10:26', '2022-05-06 15:10:26');

-- --------------------------------------------------------

--
-- Structure de la table `provider_waste_recycled`
--

CREATE TABLE `provider_waste_recycled` (
  `provider_id` int NOT NULL,
  `waste_recycled_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `provider_waste_recycled`
--

INSERT INTO `provider_waste_recycled` (`provider_id`, `waste_recycled_id`) VALUES
(32, 3);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_mp`
--

CREATE TABLE `purchase_mp` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `mp_id` int DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` int NOT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `other_price` double NOT NULL,
  `arrival_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `unit_price` double DEFAULT NULL,
  `initial_quantity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchase_mp`
--

INSERT INTO `purchase_mp` (`id`, `invoice_id`, `mp_id`, `label`, `num`, `quantity`, `price`, `other_price`, `arrival_date`, `created_at`, `updated_at`, `deleted_at`, `unit_price`, `initial_quantity`) VALUES
(1, 51, 33, NULL, 1, 0, 0, 0, '2022-06-21 14:15:28', '2022-06-23 17:14:39', '2022-06-24 08:48:37', NULL, 2.5, 20),
(2, 51, 32, NULL, 1, 5, 12.5, 0, '2022-06-21 14:15:28', '2022-06-23 17:14:39', '2022-06-24 08:52:16', NULL, 2.5, 20);

-- --------------------------------------------------------

--
-- Structure de la table `purchase_trade_product`
--

CREATE TABLE `purchase_trade_product` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `trade_product_id` int DEFAULT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` int NOT NULL,
  `quantity` double NOT NULL,
  `initial_quantity` double NOT NULL,
  `price` double NOT NULL,
  `other_price` double NOT NULL,
  `unit_price` double DEFAULT NULL,
  `arrival_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `purchase_waste_recycled`
--

CREATE TABLE `purchase_waste_recycled` (
  `id` int NOT NULL,
  `invoice_id` int DEFAULT NULL,
  `waste_recycled_id` int DEFAULT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num` int NOT NULL,
  `quantity` double NOT NULL,
  `initial_quantity` double NOT NULL,
  `price` double NOT NULL,
  `other_price` double NOT NULL,
  `unit_price` double DEFAULT NULL,
  `arrival_date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchase_waste_recycled`
--

INSERT INTO `purchase_waste_recycled` (`id`, `invoice_id`, `waste_recycled_id`, `label`, `num`, `quantity`, `initial_quantity`, `price`, `other_price`, `unit_price`, `arrival_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 52, 11, NULL, 1, 5000.5, 5000.5, 600, 0, 0.11998800119988, '2022-08-09 13:46:05', '2022-08-09 13:46:05', '2022-08-09 13:46:05', NULL),
(2, 52, 6, NULL, 1, 1000, 1000, 400, 0, 0.4, '2022-08-09 13:46:05', '2022-08-09 13:46:05', '2022-08-09 13:46:05', NULL),
(3, 53, 11, NULL, 2, 10, 10, 50, 0, 5, '2022-08-09 13:52:44', '2022-08-09 13:52:44', '2022-08-09 13:52:44', NULL),
(4, 53, 6, NULL, 2, 20, 20, 60, 0, 3, '2022-08-09 13:52:44', '2022-08-09 13:52:44', '2022-08-09 13:52:44', NULL),
(5, 54, 11, NULL, 3, 5000.6, 5000.6, 25003, 0, 5, '2022-08-22 07:47:04', '2022-08-22 07:47:04', '2022-08-22 07:47:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

CREATE TABLE `reset_password_request` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `selector` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password_request`
--

INSERT INTO `reset_password_request` (`id`, `user_id`, `selector`, `hashed_token`, `requested_at`, `expires_at`) VALUES
(4, 2, 'wUUmDK43OPvHkLtlcDTC', 'zzJfhDLxgLat582fX7LgxBRnWY+NtPM8KuZlsLAaky0=', '2022-04-29 18:15:07', '2022-04-29 19:15:07');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name_crypt` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id`, `label`, `is_required`, `description`, `name_crypt`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super admin', 1, 'L\'utilisateur Super Admin est la personne qui s\'occupe de toute la gestion du réseau,\n    Il a la capacité de : Gérer l\'accès et le niveau de responsabilité de tous les utilisateurs sur tous le site.', 'ROLE_SUPERADMIN', '2022-03-14 09:24:21', '2022-03-14 09:24:21', NULL),
(2, 'Comptable', 0, 'Comptabilité', '622ef79ebd7c89.17763418', '2022-03-14 11:06:54', '2022-03-14 11:06:54', NULL),
(3, 'Responsable administratif et Financier', 0, 'Responsable administratif', '626b9cf8bbddc0.28635283', '2022-04-29 11:08:24', '2022-04-29 11:09:41', NULL),
(4, 'femme de ménage', 0, 'bonjour bonjour', '626bd8aac92e11.69800042', '2022-04-29 15:23:06', '2022-04-29 15:23:18', NULL),
(5, 'Commercial', 0, 'Commercial', '626bd9f33948f3.53555235', '2022-04-29 15:28:35', '2022-04-29 15:28:35', NULL),
(6, 'Magasinier', 0, 'MagasinierMagasinier', '626bda00120ef3.97096978', '2022-04-29 15:28:48', '2022-04-29 15:28:48', NULL),
(7, 'Responsable Communication', 0, 'Responsable Communication', '626bdacae9e175.53423713', '2022-04-29 15:32:10', '2022-04-29 15:32:10', NULL),
(8, 'Chef de Centre', 0, 'Chef de Centre', '626bdb62639459.07910805', '2022-04-29 15:34:42', '2022-04-29 15:34:42', NULL),
(9, 'Directeur', 0, 'Directeur', '626bdb7abb8777.29481268', '2022-04-29 15:35:06', '2022-04-29 15:35:06', NULL),
(10, 'Admin', 0, 'Directeur', '626bdbe6942db3.58917234', '2022-04-29 15:36:54', '2022-04-29 15:36:54', NULL),
(11, 'Institutrice', 0, 'Institutrice', '626bdc078f3e49.65555061', '2022-04-29 15:37:27', '2022-04-29 15:37:27', NULL),
(12, 'Testeur QA', 0, 'Testeur QA', '626bdc26725fc1.68449101', '2022-04-29 15:37:58', '2022-04-29 15:37:58', NULL),
(13, 'Lead developpeur', 0, 'Lead dev', '626bdc4f5887e8.94805759', '2022-04-29 15:38:39', '2022-04-29 16:46:13', NULL),
(14, 'Chef hierrarchique', 0, 'Lead', '626be9ffb649d5.42271392', '2022-04-29 16:37:03', '2022-04-29 16:37:03', NULL),
(15, 'utilisateurkkkkkkkkkkkkkkkkkkk', 0, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '626bf6a035bf49.84735071', '2022-04-29 17:30:56', '2022-04-29 17:30:56', '2022-05-02 13:42:27'),
(16, 'Test', 0, 'test', '626bfb26d54023.85329949', '2022-04-29 17:50:14', '2022-04-29 17:50:14', NULL),
(17, 'Iinstitutrice', 0, 'd', '626f7bf9a03ea2.12712342', '2022-05-02 09:36:41', '2022-05-02 09:36:41', NULL),
(18, 'Chef tech', 0, 'f', '626f7c60eac632.65496414', '2022-05-02 09:38:24', '2022-05-02 09:38:24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `story`
--

CREATE TABLE `story` (
  `id` int NOT NULL,
  `story_type_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `story`
--

INSERT INTO `story` (`id`, `story_type_id`, `user_id`, `description`, `url`, `ip`, `date`) VALUES
(1, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/1/show', '102.16.26.182', '2022-06-02 14:46:55'),
(2, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/2/show', '102.16.26.182', '2022-06-02 15:25:50'),
(3, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/3/show', '102.16.26.182', '2022-06-02 15:26:22'),
(4, 3, 1, 'Suppression d\'un calcul revient matière', '/admin/cost/4/edit', '102.16.26.182', '2022-06-02 15:31:56'),
(5, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/10/edit', '102.16.26.182', '2022-06-02 15:41:59'),
(6, 1, 1, 'Simulation de calcul revient', '/admin/draft-cost/6/edit', '102.16.26.182', '2022-06-02 15:53:09'),
(7, 1, 1, 'Conversion d\'une simulation calcul revient', '/admin/draft-cost/6/edit', '102.16.26.182', '2022-06-02 15:53:25'),
(8, 1, 1, 'Conversion d\'une simulation calcul revient', '/admin/draft-cost/6/edit', '102.16.26.182', '2022-06-02 15:58:38'),
(9, 1, 1, 'Simulation de calcul revient', '/admin/draft-cost/7/edit', '102.16.26.182', '2022-06-02 15:59:48'),
(10, 2, 1, 'Modification utilisateur', '/admin/user/8/edit', '154.126.20.158', '2022-06-02 16:00:08'),
(11, 1, 1, 'Conversion d\'une simulation calcul revient', '/admin/draft-cost/7/edit', '102.16.26.182', '2022-06-02 16:00:25'),
(12, 1, 1, 'Conversion d\'une simulation calcul revient', '/admin/draft-cost/6/edit', '102.16.26.182', '2022-06-02 16:01:42'),
(13, 2, 1, 'Modification d\'un rôle', '/admin/role/12/edit', '102.16.26.182', '2022-06-10 08:59:51'),
(14, 2, 1, 'Modification d\'une matière première', '/admin/mp/17/edit', '102.16.26.182', '2022-06-10 09:20:11'),
(15, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/26/25/show', '102.16.26.182', '2022-06-10 09:20:44'),
(16, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/4/show', '102.16.26.182', '2022-06-10 09:21:28'),
(17, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-10 09:28:56'),
(18, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/27/25/show', '102.16.26.182', '2022-06-10 10:02:24'),
(19, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/6/show', '102.16.26.182', '2022-06-10 10:02:31'),
(20, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/28/25/show', '102.16.26.182', '2022-06-13 14:10:33'),
(21, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/7/show', '102.16.26.182', '2022-06-13 14:13:12'),
(22, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-13 14:19:10'),
(23, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-13 14:36:04'),
(24, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-14 09:08:38'),
(25, 1, 1, 'Ajout d\'un fournisseur', '/admin/provider/26/show', '102.16.26.182', '2022-06-14 09:49:28'),
(26, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/29/26/show', '102.16.26.182', '2022-06-14 09:54:22'),
(27, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/9/show', '102.16.26.182', '2022-06-14 09:54:52'),
(28, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/30/26/show', '102.16.26.182', '2022-06-14 09:57:06'),
(29, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/10/show', '102.16.26.182', '2022-06-14 09:57:12'),
(30, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/11/edit', '102.16.26.182', '2022-06-14 10:06:54'),
(31, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/11/edit', '102.16.26.182', '2022-06-14 10:32:18'),
(32, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/12/edit', '102.16.26.182', '2022-06-14 10:35:18'),
(33, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/13/edit', '102.16.26.182', '2022-06-14 10:36:56'),
(34, 1, 1, 'Simulation de calcul revient', '/admin/draft-cost/8/edit', '102.16.26.182', '2022-06-14 10:58:45'),
(35, 1, 1, 'Conversion d\'une simulation calcul revient', '/admin/draft-cost/8/edit', '102.16.26.182', '2022-06-14 10:58:58'),
(36, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/14/edit', '102.16.26.182', '2022-06-14 11:01:03'),
(37, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/31/26/show', '102.16.26.182', '2022-06-14 11:17:37'),
(38, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/15/show', '102.16.26.182', '2022-06-14 11:17:44'),
(39, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/32/26/show', '102.16.26.182', '2022-06-14 11:18:27'),
(40, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/16/show', '102.16.26.182', '2022-06-14 11:18:36'),
(41, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/17/edit', '102.16.26.182', '2022-06-14 11:20:49'),
(42, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/17/edit', '102.16.26.182', '2022-06-14 11:24:07'),
(43, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/18/edit', '102.16.26.182', '2022-06-14 11:36:29'),
(44, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/19/edit', '102.16.26.182', '2022-06-14 11:37:25'),
(45, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/20/edit', '102.16.26.182', '2022-06-14 11:37:57'),
(46, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/1/show', '102.16.26.182', '2022-06-14 13:55:53'),
(47, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/2/show', '102.16.26.182', '2022-06-14 13:55:55'),
(48, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/3/show', '102.16.26.182', '2022-06-14 13:55:57'),
(49, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/4/show', '102.16.26.182', '2022-06-14 13:55:59'),
(50, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-14 14:15:35'),
(51, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/1/show', '102.16.26.182', '2022-06-14 15:04:27'),
(52, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/2/show', '102.16.26.182', '2022-06-14 15:05:05'),
(53, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/3/show', '102.16.26.182', '2022-06-14 15:09:16'),
(54, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/4/show', '102.16.26.182', '2022-06-14 15:09:34'),
(55, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-14 15:12:37'),
(56, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-14 15:18:42'),
(57, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/6/edit', '102.16.26.182', '2022-06-14 15:25:20'),
(58, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/7/edit', '102.16.26.182', '2022-06-14 15:27:32'),
(59, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-14 15:30:23'),
(60, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-14 15:31:03'),
(61, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/6/edit', '102.16.26.182', '2022-06-14 16:41:55'),
(62, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/7/edit', '102.16.26.182', '2022-06-14 16:42:06'),
(63, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/9/edit', '102.16.26.182', '2022-06-14 16:49:32'),
(64, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/10/edit', '102.16.26.182', '2022-06-14 16:56:36'),
(65, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/10/edit', '102.16.26.182', '2022-06-14 17:12:17'),
(66, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/9/edit', '102.16.26.182', '2022-06-14 17:14:31'),
(67, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/11/edit', '102.16.26.182', '2022-06-15 09:37:23'),
(68, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/12/edit', '102.16.26.182', '2022-06-15 10:25:35'),
(69, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/13/edit', '102.16.26.182', '2022-06-15 10:42:28'),
(70, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/14/edit', '102.16.26.182', '2022-06-15 10:46:13'),
(71, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/1/edit', '102.16.26.182', '2022-06-15 10:55:55'),
(72, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/15/edit', '102.16.26.182', '2022-06-15 10:56:59'),
(73, 3, 1, 'Suppression d\'un calcul revient matière', '/admin/cost/1/edit', '102.16.26.182', '2022-06-15 11:04:42'),
(74, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/2/edit', '102.16.26.182', '2022-06-15 11:44:28'),
(75, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/16/edit', '102.16.26.182', '2022-06-15 11:46:49'),
(76, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/17/edit', '102.16.26.182', '2022-06-15 13:39:36'),
(77, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/18/edit', '102.16.26.182', '2022-06-15 14:05:39'),
(78, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/19/edit', '102.16.26.182', '2022-06-15 14:09:43'),
(79, 1, 1, 'Ajout d\'un fournisseur', '/admin/provider/27/show', '102.16.26.182', '2022-06-15 15:04:13'),
(80, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/33/27/show', '102.16.26.182', '2022-06-15 15:06:51'),
(81, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/20/show', '102.16.26.182', '2022-06-15 15:06:55'),
(82, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/34/27/show', '102.16.26.182', '2022-06-15 15:07:29'),
(83, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/21/show', '102.16.26.182', '2022-06-15 15:07:33'),
(84, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/1/edit', '102.16.26.182', '2022-06-15 15:12:58'),
(85, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/2/edit', '102.16.26.182', '2022-06-15 15:38:50'),
(86, 3, 1, 'Suppression d\'un calcul revient matière', '/admin/cost/2/edit', '102.16.26.182', '2022-06-15 15:39:11'),
(87, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/22/edit', '102.16.26.182', '2022-06-15 15:44:45'),
(88, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/22/edit', '102.16.26.182', '2022-06-15 15:49:16'),
(89, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/3/edit', '102.16.26.182', '2022-06-15 15:55:20'),
(90, 1, 1, 'Simulation de calcul revient', '/admin/draft-cost/1/edit', '102.16.26.182', '2022-06-15 15:55:46'),
(91, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/23/edit', '102.16.26.182', '2022-06-15 15:58:00'),
(92, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/24/edit', '102.16.26.182', '2022-06-15 16:01:26'),
(93, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/35/27/show', '102.16.26.182', '2022-06-15 16:18:08'),
(94, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/25/show', '102.16.26.182', '2022-06-15 16:18:13'),
(95, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/26/edit', '102.16.26.182', '2022-06-15 16:18:46'),
(96, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/27/edit', '102.16.26.182', '2022-06-15 16:19:09'),
(97, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/36/27/show', '102.16.26.182', '2022-06-15 16:55:57'),
(98, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/28/show', '102.16.26.182', '2022-06-15 16:56:05'),
(99, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/4/edit', '102.16.26.182', '2022-06-15 16:57:40'),
(100, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/29/edit', '102.16.26.182', '2022-06-15 16:58:32'),
(101, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/29/edit', '102.16.26.182', '2022-06-15 17:06:31'),
(102, 1, 1, 'Ajout d\'une matière première', '/admin/mp/25/edit', '102.16.26.182', '2022-06-16 09:41:57'),
(103, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/37/27/show', '102.16.26.182', '2022-06-16 09:45:03'),
(104, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/30/show', '102.16.26.182', '2022-06-16 09:46:50'),
(105, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/38/27/show', '102.16.26.182', '2022-06-16 09:50:38'),
(106, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/31/show', '102.16.26.182', '2022-06-16 09:52:36'),
(107, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/32/edit', '102.16.26.182', '2022-06-16 10:00:31'),
(108, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/29/edit', '154.126.20.158', '2022-06-16 10:11:04'),
(109, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/33/edit', '102.16.26.182', '2022-06-16 10:29:52'),
(110, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/33/edit', '102.16.26.182', '2022-06-16 10:36:58'),
(111, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/34/edit', '102.16.26.182', '2022-06-16 10:49:14'),
(112, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/34/edit', '102.16.26.182', '2022-06-16 10:49:28'),
(113, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/34/edit', '102.16.26.182', '2022-06-16 10:49:51'),
(114, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/39/27/show', '102.16.26.182', '2022-06-16 11:34:15'),
(115, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/35/show', '102.16.26.182', '2022-06-16 11:34:21'),
(116, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/40/27/show', '102.16.26.182', '2022-06-16 11:42:06'),
(117, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/36/show', '102.16.26.182', '2022-06-16 11:42:25'),
(118, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/37/edit', '102.16.26.182', '2022-06-16 11:47:54'),
(119, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/37/edit', '102.16.26.182', '2022-06-16 12:21:42'),
(120, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/38/edit', '102.16.26.182', '2022-06-16 12:22:06'),
(121, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/39/edit', '102.16.26.182', '2022-06-16 13:38:25'),
(122, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/39/edit', '102.16.26.182', '2022-06-16 16:46:59'),
(123, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/39/edit', '102.16.26.182', '2022-06-16 16:47:33'),
(124, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/38/edit', '102.16.26.182', '2022-06-16 17:18:03'),
(125, 1, 1, 'Ajout d\'une matière première', '/admin/mp/26/edit', '102.16.26.182', '2022-06-17 10:47:25'),
(126, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/41/27/show', '102.16.26.182', '2022-06-17 10:49:31'),
(127, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/40/show', '102.16.26.182', '2022-06-17 10:49:49'),
(128, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/42/27/show', '102.16.26.182', '2022-06-17 10:51:51'),
(129, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/41/show', '102.16.26.182', '2022-06-17 10:52:12'),
(130, 1, 1, 'Ajout d\'une matière première', '/admin/mp/27/edit', '102.16.26.182', '2022-06-17 10:53:04'),
(131, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/43/27/show', '102.16.26.182', '2022-06-17 10:54:19'),
(132, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/42/show', '102.16.26.182', '2022-06-17 10:54:35'),
(133, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/43/edit', '102.16.26.182', '2022-06-20 10:08:22'),
(134, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/43/edit', '102.16.26.182', '2022-06-20 10:08:55'),
(135, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/43/edit', '102.16.26.182', '2022-06-20 10:09:26'),
(136, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/44/27/show', '102.16.26.182', '2022-06-20 10:42:48'),
(137, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/44/show', '102.16.26.182', '2022-06-20 10:42:52'),
(138, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/45/edit', '102.16.26.182', '2022-06-20 10:43:41'),
(139, 1, 1, 'Ajout d\'une matière première', '/admin/mp/28/edit', '102.16.26.182', '2022-06-20 10:51:28'),
(140, 1, 1, 'Ajout d\'une matière première', '/admin/mp/29/edit', '102.16.26.182', '2022-06-20 10:52:00'),
(141, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/45/27/show', '102.16.26.182', '2022-06-20 10:53:07'),
(142, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/46/show', '102.16.26.182', '2022-06-20 10:53:13'),
(143, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/46/27/show', '102.16.26.182', '2022-06-20 10:54:18'),
(144, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/45/edit', '102.16.26.182', '2022-06-20 10:54:23'),
(145, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/47/show', '102.16.26.182', '2022-06-20 10:54:23'),
(146, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/48/edit', '102.16.26.182', '2022-06-20 11:02:20'),
(147, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/48/edit', '102.16.26.182', '2022-06-20 11:04:08'),
(148, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/48/edit', '102.16.26.182', '2022-06-20 11:13:54'),
(149, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/49/edit', '102.16.26.182', '2022-06-20 11:16:00'),
(150, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/49/edit', '102.16.26.182', '2022-06-20 11:16:30'),
(151, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/48/edit', '102.16.26.182', '2022-06-20 11:17:43'),
(152, 1, 1, 'Ajout d\'une matière première', '/admin/mp/30/edit', '102.16.26.182', '2022-06-20 11:47:17'),
(153, 1, 1, 'Ajout d\'une matière première', '/admin/mp/31/edit', '102.16.26.182', '2022-06-20 11:47:54'),
(154, 1, 1, 'Ajout d\'un fournisseur', '/admin/provider/28/show', '102.16.26.182', '2022-06-20 11:50:18'),
(155, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/47/28/show', '102.16.26.182', '2022-06-20 11:52:43'),
(156, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/48/28/show', '102.16.26.182', '2022-06-20 14:20:11'),
(157, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/50/show', '102.16.26.182', '2022-06-21 09:17:59'),
(158, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/51/show', '102.16.26.182', '2022-06-21 09:18:01'),
(159, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/52/edit', '102.16.26.182', '2022-06-21 09:25:21'),
(160, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/52/edit', '102.16.26.182', '2022-06-21 09:28:08'),
(161, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/52/edit', '102.16.26.182', '2022-06-21 11:01:11'),
(162, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/49/28/show', '102.16.26.182', '2022-06-21 12:19:35'),
(163, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/53/show', '102.16.26.182', '2022-06-21 12:19:43'),
(164, 1, 1, 'Ajout d\'une matière première', '/admin/mp/32/edit', '102.16.26.182', '2022-06-21 14:10:11'),
(165, 1, 1, 'Ajout d\'une matière première', '/admin/mp/33/edit', '102.16.26.182', '2022-06-21 14:12:24'),
(166, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/50/28/show', '102.16.26.182', '2022-06-21 14:13:59'),
(167, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/54/show', '102.16.26.182', '2022-06-21 14:14:08'),
(168, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/51/28/show', '102.16.26.182', '2022-06-21 14:15:28'),
(169, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/55/show', '102.16.26.182', '2022-06-21 14:15:38'),
(170, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/56/edit', '102.16.26.182', '2022-06-21 14:20:34'),
(171, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/56/edit', '102.16.26.182', '2022-06-21 14:27:28'),
(172, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/52/edit', '102.16.26.182', '2022-06-21 15:51:32'),
(173, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/56/edit', '102.16.26.182', '2022-06-22 11:29:15'),
(174, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/56/edit', '102.16.26.182', '2022-06-22 11:30:27'),
(175, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/56/edit', '102.16.26.182', '2022-06-22 12:28:50'),
(176, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/57/edit', '102.16.26.182', '2022-06-22 12:29:04'),
(177, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/52/edit', '102.16.26.182', '2022-06-22 12:30:40'),
(178, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/57/edit', '102.16.26.182', '2022-06-23 12:10:16'),
(179, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/57/edit', '102.16.26.182', '2022-06-23 12:11:42'),
(180, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/57/edit', '102.16.26.182', '2022-06-23 12:14:08'),
(181, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/57/edit', '102.16.26.182', '2022-06-23 12:15:49'),
(182, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/58/edit', '102.16.26.182', '2022-06-23 12:29:07'),
(183, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/57/edit', '102.16.26.182', '2022-06-23 12:34:27'),
(184, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/57/edit', '102.16.26.182', '2022-06-23 12:35:58'),
(185, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/1/show', '102.16.26.182', '2022-06-23 14:08:06'),
(186, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/2/show', '102.16.26.182', '2022-06-23 14:08:08'),
(187, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/3/show', '102.16.26.182', '2022-06-23 14:08:10'),
(188, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/4/show', '102.16.26.182', '2022-06-23 14:08:12'),
(189, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-23 14:08:40'),
(190, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-23 14:09:06'),
(191, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-23 14:11:05'),
(192, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-23 14:13:15'),
(193, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-23 14:14:17'),
(194, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/6/show', '102.16.26.182', '2022-06-23 14:39:18'),
(195, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/7/edit', '102.16.26.182', '2022-06-23 14:59:59'),
(196, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-23 15:00:55'),
(197, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-23 15:01:54'),
(198, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/7/edit', '102.16.26.182', '2022-06-23 15:04:14'),
(199, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/9/edit', '102.16.26.182', '2022-06-23 15:10:14'),
(200, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-23 15:16:19'),
(201, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/8/edit', '102.16.26.182', '2022-06-23 15:16:50'),
(202, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/10/edit', '102.16.26.182', '2022-06-23 15:18:30'),
(203, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/10/edit', '102.16.26.182', '2022-06-23 15:23:04'),
(204, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/10/edit', '102.16.26.182', '2022-06-23 15:41:43'),
(205, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/11/edit', '102.16.26.182', '2022-06-23 15:56:58'),
(206, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/11/edit', '102.16.26.182', '2022-06-23 15:57:26'),
(207, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/10/edit', '102.16.26.182', '2022-06-23 15:58:46'),
(208, 1, 1, 'Génération bon d\'entrée', '/admin/voucher-entrance/1/show', '102.16.26.182', '2022-06-23 17:14:39'),
(209, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/1/edit', '102.16.26.182', '2022-06-23 17:15:56'),
(210, 1, 1, 'Simulation de calcul revient', '/admin/draft-cost/1/edit', '102.16.26.182', '2022-06-23 17:16:09'),
(211, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/2/edit', '102.16.26.182', '2022-06-23 17:16:57'),
(212, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/2/edit', '102.16.26.182', '2022-06-23 17:18:19'),
(213, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/2/edit', '102.16.26.182', '2022-06-23 17:19:37'),
(214, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/3/edit', '102.16.26.182', '2022-06-23 17:20:45'),
(215, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/3/edit', '102.16.26.182', '2022-06-23 17:21:50'),
(216, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/3/edit', '102.16.26.182', '2022-06-23 17:25:01'),
(217, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/2/edit', '102.16.26.182', '2022-06-23 17:27:27'),
(218, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/4/edit', '102.16.26.182', '2022-06-23 17:36:27'),
(219, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/4/edit', '102.16.26.182', '2022-06-23 17:37:29'),
(220, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/4/edit', '102.16.26.182', '2022-06-23 17:37:57'),
(221, 3, 1, 'Suppression d\'une bon de sortie', '/admin/voucher-exit/4/edit', '102.16.26.182', '2022-06-23 17:38:15'),
(222, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-24 08:48:37'),
(223, 2, 1, 'Modification d\'une bon de sortie', '/admin/voucher-exit/5/edit', '102.16.26.182', '2022-06-24 08:50:18'),
(224, 1, 1, 'Ajout d\'un calcul revient matière', '/admin/cost/2/edit', '102.16.26.182', '2022-06-24 08:51:11'),
(225, 1, 1, 'Ajout d\'une bon de sortie', '/admin/voucher-exit/6/edit', '102.16.26.182', '2022-06-24 08:52:16'),
(226, 1, 1, 'Ajout d\'un fournisseur', '/admin/provider/29/show', '102.16.26.182', '2022-08-09 13:41:39'),
(227, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/52/29/show', '102.16.26.182', '2022-08-09 13:46:05'),
(228, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/53/29/show', '102.16.26.182', '2022-08-09 13:52:44'),
(229, 2, 1, 'Modification d\'un déchet à recycler', '/admin/process-waste-recycled/2/edit', '102.16.26.182', '2022-08-11 05:56:50'),
(230, 2, 1, 'Modification d\'un déchet à recycler', '/admin/process-waste-recycled/2/edit', '102.16.26.182', '2022-08-11 05:58:01'),
(231, 3, 1, 'Suppression d\'un déchet à recycler', '/admin/process-waste-recycled/2/edit', '102.16.26.182', '2022-08-11 05:58:08'),
(232, 3, 1, 'Suppression d\'un déchet à recycler', '/admin/process-waste-recycled/1/edit', '102.16.26.182', '2022-08-11 05:58:13'),
(233, 2, 1, 'Modification d\'une charge variable', '/admin/variable-charge/21/edit', '86.245.153.104', '2022-08-12 18:53:28'),
(234, 2, 1, 'Modification d\'une charge variable', '/admin/variable-charge/5/edit', '86.245.153.104', '2022-08-12 18:53:37'),
(235, 1, 1, 'Ajout d\'un déchet à recycler', '/admin/process-waste-recycled/5/edit', '102.16.26.182', '2022-08-17 13:28:27'),
(236, 1, 1, 'Ajout d\'une facture fournisseur', '/admin/invoice/54/29/show', '102.16.26.182', '2022-08-22 07:47:04'),
(237, 2, 1, 'Modification d\'un déchet à recycler', '/admin/process-waste-recycled/4/edit', '102.16.26.182', '2022-08-22 11:06:43'),
(238, 1, 1, 'Ajout d\'une matière première', '/admin/production-waste-recycled/1/edit', '102.16.26.182', '2022-08-22 11:09:19'),
(239, 1, 1, 'Ajout d\'un type de déchet à recycler', '/admin/material-specification/1/edit', '102.16.26.182', '2022-09-22 08:07:37'),
(240, 2, 1, 'Modification d\'un type de déchet à recycler', '/admin/material-specification/1/edit', '102.16.26.182', '2022-09-22 08:07:58'),
(241, 1, 1, 'Ajout d\'un type de déchet à recycler', '/admin/material-specification/2/edit', '102.16.26.182', '2022-09-22 12:42:39'),
(242, 1, 1, 'Ajout d\'une matière première', '/admin/mp/34/edit', '102.16.26.182', '2022-09-22 12:47:03'),
(243, 1, 1, 'Ajout d\'une proforma fournisseur', '/admin/proforma/1/29/show', '102.16.26.182', '2022-09-22 12:51:26'),
(244, 1, 1, 'Ajout d\'un fournisseur', '/admin/provider/30/show', '102.16.26.182', '2022-09-22 13:17:41'),
(245, 1, 1, 'Ajout d\'une proforma fournisseur', '/admin/proforma/2/30/show', '102.16.26.182', '2022-09-22 13:41:03'),
(246, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/2/30/show', '102.16.26.182', '2022-09-22 14:17:11'),
(247, 1, 1, 'Ajout d\'un fournisseur', '/admin/provider/31/show', '102.16.26.182', '2022-09-22 14:52:39'),
(248, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/29/show', '154.126.20.158', '2022-09-23 07:09:07'),
(249, 1, 1, 'Ajout d\'un type de déchet à recycler', '/admin/material-specification/3/edit', '154.126.20.158', '2022-09-23 07:14:37'),
(250, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/31/show', '102.16.26.182', '2022-09-26 14:06:30'),
(251, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/31/show', '102.16.26.182', '2022-09-26 14:08:18'),
(252, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/31/show', '102.16.26.182', '2022-09-26 14:13:08'),
(253, 1, 1, 'Ajout d\'une simulation calcul revient matière', '/admin/draft-cost/2/edit', '102.16.26.182', '2022-09-27 09:24:14'),
(254, 1, 1, 'Simulation de calcul revient', '/admin/draft-cost/3/edit', '102.16.26.182', '2022-09-27 12:01:13'),
(255, 2, 1, 'Modification d\'un calcul revient matière', '/admin/cost/1/edit', '102.16.26.182', '2022-09-27 12:25:09'),
(256, 2, 1, 'Modification d\'un calcul revient matière', '/admin/cost/1/edit', '102.16.26.182', '2022-09-27 12:46:00'),
(257, 2, 1, 'Modification d\'un calcul revient matière', '/admin/cost/1/edit', '102.16.26.182', '2022-09-27 12:52:43'),
(258, 1, 1, 'Ajout d\'une spécificité matière', '/admin/material-specification/4/edit', '197.149.40.66', '2022-09-29 11:36:31'),
(259, 1, 1, 'Ajout d\'une spécificité matière', '/admin/material-specification/5/edit', '197.149.40.66', '2022-09-29 11:36:57'),
(260, 2, 1, 'Modification d\'une spécificité matière', '/admin/material-specification/5/edit', '197.149.40.66', '2022-09-29 11:37:07'),
(261, 2, 1, 'Modification d\'une spécificité matière', '/admin/material-specification/5/edit', '197.149.40.66', '2022-09-29 11:37:19'),
(262, 3, 1, 'Suppression d\'une spécificité matière', '/admin/material-specification/5/edit', '197.149.40.66', '2022-09-29 11:37:26'),
(263, 1, 1, 'Ajout d\'un fournisseur', '/admin/provider/32/show', '197.149.40.66', '2022-09-29 11:56:27'),
(264, 1, 1, 'Ajout d\'une proforma fournisseur', '/admin/proforma/3/32/show', '197.149.40.66', '2022-09-29 12:12:03'),
(265, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/3/32/show', '197.149.40.66', '2022-09-29 12:15:44'),
(266, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/3/32/show', '197.149.40.66', '2022-09-29 12:28:47'),
(267, 1, 1, 'Ajout d\'une proforma fournisseur', '/admin/proforma/4/32/show', '197.149.40.66', '2022-09-29 12:30:27'),
(268, 1, 1, 'Ajout d\'une proforma fournisseur', '/admin/proforma/5/32/show', '197.149.40.66', '2022-09-29 12:50:48'),
(269, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/32/show', '197.149.40.66', '2022-09-29 12:54:54'),
(270, 1, 1, 'Ajout d\'une application matière', '/admin/material-application/1/edit', '197.149.40.66', '2022-09-29 14:29:26'),
(271, 2, 1, 'Modification d\'une application matière', '/admin/material-application/1/edit', '197.149.40.66', '2022-09-29 14:29:57'),
(272, 1, 1, 'Ajout d\'une application matière', '/admin/material-application/2/edit', '197.149.40.66', '2022-09-29 14:30:24'),
(273, 1, 1, 'Ajout d\'une application matière', '/admin/material-application/3/edit', '197.149.40.66', '2022-09-29 14:33:07'),
(274, 1, 1, 'Ajout d\'une application matière', '/admin/material-application/4/edit', '197.149.40.66', '2022-09-29 14:33:38'),
(275, 1, 1, 'Ajout d\'une application matière', '/admin/material-application/5/edit', '197.149.40.66', '2022-09-29 14:34:30'),
(276, 3, 1, 'Suppression d\'une application matière', '/admin/material-application/4/edit', '197.149.40.66', '2022-09-29 14:34:36'),
(277, 2, 1, 'Modification d\'une matière première', '/admin/mp/34/edit', '197.149.40.66', '2022-09-29 14:35:01'),
(278, 2, 1, 'Modification d\'une matière première', '/admin/mp/33/edit', '197.149.40.66', '2022-09-29 14:35:15'),
(279, 2, 1, 'Modification d\'une matière première', '/admin/mp/32/edit', '197.149.40.66', '2022-09-29 14:35:31'),
(280, 1, 1, 'Ajout d\'une banque', '/admin/bank/1/edit', '102.16.26.182', '2022-09-29 14:44:09'),
(281, 1, 1, 'Ajout d\'une banque', '/admin/bank/2/edit', '102.16.26.182', '2022-09-29 14:44:15'),
(282, 1, 1, 'Ajout d\'une banque', '/admin/bank/3/edit', '102.16.26.182', '2022-09-29 14:44:20'),
(283, 1, 1, 'Ajout d\'une banque', '/admin/bank/4/edit', '102.16.26.182', '2022-09-29 14:44:27'),
(284, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/6/32/show', '102.16.26.182', '2022-09-29 14:45:02'),
(285, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/6/32/show', '102.16.26.182', '2022-09-29 14:45:17'),
(286, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/3/32/show', '102.16.26.182', '2022-09-29 14:46:01'),
(287, 2, 1, 'Modification d\'une banque', '/admin/bank/4/edit', '197.149.40.66', '2022-09-29 14:52:01'),
(288, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/3/32/show', '102.16.26.182', '2022-09-29 14:52:17'),
(289, 1, 1, 'Ajout d\'une banque', '/admin/bank/5/edit', '197.149.40.66', '2022-09-29 14:52:33'),
(290, 1, 1, 'Ajout d\'une banque', '/admin/bank/6/edit', '197.149.40.66', '2022-09-29 14:58:13'),
(291, 3, 1, 'Suppression d\'une banque', '/admin/bank/6/edit', '197.149.40.66', '2022-09-29 14:58:22'),
(292, 3, 1, 'Suppression d\'une banque', '/admin/bank/5/edit', '197.149.40.66', '2022-09-29 14:58:27'),
(293, 2, 1, 'Modification d\'une banque', '/admin/bank/3/edit', '197.149.40.66', '2022-09-29 15:00:25'),
(294, 2, 1, 'Modification d\'une banque', '/admin/bank/2/edit', '197.149.40.66', '2022-09-29 15:03:41'),
(295, 2, 1, 'Modification d\'une banque', '/admin/bank/1/edit', '197.149.40.66', '2022-09-29 15:04:41'),
(296, 1, 1, 'Ajout d\'une emplacement', '/admin/location/1/edit', '197.149.40.66', '2022-09-29 15:11:34'),
(297, 2, 1, 'Modification d\'une application matière', '/admin/material-application/5/edit', '102.16.26.182', '2022-09-30 05:42:00'),
(298, 2, 1, 'Modification d\'une simulation calcul revient matière', '/admin/draft-cost/3/edit', '102.16.26.182', '2022-09-30 07:15:27'),
(299, 1, 1, 'Ajout d\'une simulation calcul revient matière', '/admin/draft-cost/4/edit', '102.16.26.182', '2022-09-30 07:16:23'),
(300, 3, 1, 'Suppression d\'une simulation calcul revient matière', '/admin/draft-cost/3/edit', '102.16.26.182', '2022-09-30 07:16:31'),
(301, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/32/show', '102.16.26.182', '2022-09-30 07:18:54'),
(302, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/32/show', '102.16.26.182', '2022-09-30 07:24:22'),
(303, 1, 1, 'Ajout d\'une proforma fournisseur', '/admin/proforma/7/32/show', '102.16.26.182', '2022-09-30 07:34:26'),
(304, 2, 1, 'Modification d\'une proforma fournisseur', '/admin/proforma/7/32/show', '102.16.26.182', '2022-09-30 07:44:34'),
(305, 1, 1, 'Ajout d\'une application matière', '/admin/material-application/6/edit', '154.126.79.8', '2022-09-30 13:34:54'),
(306, 2, 1, 'Modification d\'un fournisseur', '/admin/provider/30/show', '102.16.26.182', '2022-10-03 13:20:28');

-- --------------------------------------------------------

--
-- Structure de la table `story_type`
--

CREATE TABLE `story_type` (
  `id` int NOT NULL,
  `label` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `story_type`
--

INSERT INTO `story_type` (`id`, `label`) VALUES
(1, 'Ajout'),
(2, 'Modification'),
(3, 'Suppression');

-- --------------------------------------------------------

--
-- Structure de la table `trade_product`
--

CREATE TABLE `trade_product` (
  `id` int NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `unit`
--

CREATE TABLE `unit` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `unit`
--

INSERT INTO `unit` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dsgdhfh\'1234548*hgggggggggggggggggggggggggggggggggggggggggggggggggggggggg', '2022-05-02 14:13:28', '2022-05-06 09:30:01', '2022-05-06 09:30:01'),
(2, 'Emballage', '2022-05-02 14:13:49', '2022-05-02 14:13:49', NULL),
(3, 'sellage', '2022-05-02 14:17:55', '2022-05-02 14:17:55', NULL),
(4, 'kilogramme', '2022-05-02 14:23:17', '2022-05-02 14:23:17', NULL),
(5, 'litres', '2022-05-02 14:23:25', '2022-05-02 14:31:30', NULL),
(6, 'M2', '2022-05-02 14:24:08', '2022-05-03 11:59:54', NULL),
(7, 'type 4\'(', '2022-05-02 14:24:25', '2022-05-02 14:24:25', NULL),
(8, 'type 5\'(', '2022-05-02 14:24:34', '2022-05-06 09:13:31', '2022-05-06 09:13:31'),
(9, 'mètre cube', '2022-05-02 14:26:40', '2022-05-03 12:11:59', NULL),
(10, 'seconde', '2022-05-02 14:27:13', '2022-05-02 14:27:13', '2022-05-04 16:40:29'),
(11, 'degré', '2022-05-02 14:27:39', '2022-05-02 14:27:39', '2022-05-04 17:27:09'),
(12, 'ampère', '2022-05-02 14:28:32', '2022-05-02 14:28:32', NULL),
(13, 'Pièces', '2022-05-02 14:29:05', '2022-05-02 14:29:05', NULL),
(14, 'Watt', '2022-05-02 14:31:01', '2022-05-06 09:13:01', NULL),
(15, 'lkjhgfdsqSDFGHJKKFUDUIQFGDSFQSJHDQFJ6A4Z564A67Z3I2A94I3A2URIKFDMSLLGFD3 1FD34G564D56G4D6F5', '2022-05-02 14:31:59', '2022-05-02 14:31:59', '2022-05-04 16:11:38'),
(16, 'fkjfksdjfè\'(\"é', '2022-05-02 14:35:26', '2022-05-02 15:46:43', '2022-05-04 16:11:42'),
(17, 'Pascal', '2022-05-04 12:06:33', '2022-05-04 12:06:33', '2022-05-04 16:15:45'),
(18, 'mètre carré', '2022-05-06 09:12:30', '2022-05-06 09:12:30', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `role_id` int DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `is_enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `role_id`, `email`, `roles`, `password`, `firstname`, `lastname`, `address`, `tel`, `created_at`, `updated_at`, `image_name`, `job`, `deleted_at`, `is_enabled`) VALUES
(1, 1, 'superadmin@sfoi.com', '[\"ROLE_SUPERADMIN\"]', '$2y$13$aaKCqCp6jHhpuogbbnTGwulJhat0r503ftij8JcPEDxZ.RkozO9qy', 'admin', 'Super', 'Madagascar', '0332057895', '2022-04-25 09:24:21', '2022-05-06 11:13:05', '3f6b966d00000578-4428630-image-m-80-1492690622006-6274d89120250252766600.jpg', 'Superadmin', NULL, 0),
(2, 8, 'ando@livenexx.net', '[\"ROLE_CUSTOM\"]', '$2y$13$5u5c.oQO.T1Y/gTCsZehku5araWsDLP5fqgnNY/GhlJ0R4aqzk7mK', 'RAFA', 'Ando', 'Antananarivo', '0332546894', '2022-04-29 11:48:06', '2022-05-17 08:37:50', '5eb299e736eda51456bcd50de6f5055c-626f81fb64420626384952.jpg', 'Responsable admin', '2022-05-17 08:37:50', 0),
(3, 12, 'fetraniaina@livenexx.net', '[\"ROLE_CUSTOM\"]', '$2y$13$s.NRqm25/pelZlzhPJKkNOEQUu5NmamO5IoffmkrTXyj0j86Ohxwm', 'Aurélien Georges', 'Fetraniaina', 'II E 43Y « Lorem ipsum', '+261 33 09 728 37', '2022-04-29 15:54:02', '2022-04-29 16:34:26', NULL, 'Cultivateur', '2022-05-02 10:01:10', 0),
(4, 13, 'comptabilite@groupeleong.com', '[\"ROLE_CUSTOM\"]', '$2y$13$j3w9rWHjXPAphvBPMAeIf.8/kQ2wrEpTlrhEs/B.X13m/jGYso2Mq', 'TSIAVA', 'MEGHANNE TSIAVA', 'Antananarivo', '11111111111111', '2022-04-29 16:08:48', '2022-05-17 08:37:43', 'capture-6-627530165d1c8927819577.png', 'Comptabilité', '2022-05-17 08:37:43', 0),
(5, 9, 'contact@groupeleong.com', '[\"ROLE_CUSTOM\"]', '$2y$13$Tnibr8AxB43dkdkbfDU5hehMgYobpq7n4efe0x0xxjVcqpP9f2EiK', 'MAHOLY', 'ANDRIAMAHOLY', 'TANA', '22222222222', '2022-04-29 16:13:20', '2022-04-29 16:13:20', NULL, 'Cultivateur', '2022-05-02 09:43:02', 0),
(6, 10, 'naza.lauraleong@gmail.com', '[\"ROLE_CUSTOM\"]', '$2y$13$awVSczRiKdVtiwqP5p7ZIegtwaiOmSuRx3Abp7KmgRRqxGa9U5YfO', 'LEONG', 'Laura', 'Rue Dr Raseta', '222222', '2022-04-29 16:15:16', '2022-05-02 13:43:11', NULL, 'Responsable admin', NULL, 0),
(7, 7, 'lova@propneu-mg.com', '[\"ROLE_CUSTOM\"]', '$2y$13$9kOzsKkqc/g95ue28nbSfeZwSZ4axkmFhVJzKgI2ULj5klk8T9Kr.', 'Lova', 'RAMAROTAFIKA', 'Antananarivo', '888888', '2022-04-29 16:17:55', '2022-04-29 16:17:55', NULL, 'Cultivateur', NULL, 0),
(8, 13, 'carina@propneu-mg.com', '[\"ROLE_CUSTOM\"]', '$2y$13$pj6kWOEhK5bSP.VnPuZNXenZr43cwA4FOGaSLo/KQmMJmv0WeWBNW', 'Guettine Chan Koo Wah', 'Guettine Chan Koo Wah', 'Bordeau France', '222222', '2022-04-29 16:19:10', '2022-04-29 17:41:18', NULL, 'Comptabilité', NULL, 0),
(9, 9, 'jonathan@propneu-mg.com', '[\"ROLE_CUSTOM\"]', '$2y$13$ZsRCiOLDalTppMGb37NxluBQWoMpvtRXYnj1c3FSDhHYdHg7G1SKC', 'Jonathan', 'VINDOLET', 'Ambohimangakely', '0330225720', '2022-04-29 16:21:38', '2022-04-29 17:43:09', NULL, 'Responsable admin', NULL, 0),
(10, 13, 'iriana@propneu-mg.com', '[\"ROLE_CUSTOM\"]', '$2y$13$zpwVgtn/68Ks/lAhBGBv/uwLHYR17zaMKt2Tk3KujxniTGY8YPgAe', 'Iriana Ristoka', 'RABEJAMINA', 'Ambohimangakely', '0330225720', '2022-04-29 16:23:41', '2022-05-04 15:36:45', NULL, 'Cultivateur', NULL, 0),
(11, 9, 'faniry@propneu-mg.com', '[\"ROLE_CUSTOM\"]', '$2y$13$7U/YHlVBOsDDV7ra5fzX/etP79r6ieDxBfrjiWuaqimuHrZFwYZla', 'Faniriniaina Eli', 'RAFANOHERINOSY', 'Andravoahangy', '3333564', '2022-04-29 16:25:54', '2022-04-29 18:07:58', NULL, 'Responsable admin', NULL, 0),
(12, 12, 'manjaka@propneu-mg.com', '[\"ROLE_CUSTOM\"]', '$2y$13$6xmj.CRkiqg1ahEGZfNV/eoVa.tlKjfVhG1Uc2FevFBrIaswRDJZe', 'Manjakarivo', 'RASOLOFONIAINA Andriharison', 'Ambohimangakely', '0330225720', '2022-04-29 16:27:20', '2022-04-29 17:22:20', NULL, 'Magasinier', NULL, 0),
(13, 10, 'nadia@livenexx.net', '[\"ROLE_CUSTOM\"]', '$2y$13$BHdImPMQTfDm5WOyQt9mD.6t2YgdVCdoXEvJBQlNr0.jpHlR1vHAS', 'Harososa', 'Nanto', 'Ambohimangakely', '0330225720', '2022-04-29 16:45:14', '2022-05-06 17:24:35', 'capture-7-62752fa3474ab372207703.png', 'vendeur', NULL, 0),
(14, 3, 'miarisoa722@gmail.com', '[\"ROLE_CUSTOM\"]', '$2y$13$V8O431zfcEShFm30CUMlKuaMppr9EqubUKkrFk2QwQs7sFZzsROY2', 'RAFALIMALALA', 'Miarisoa', 'Rue Dr Raseta', '032569874', '2022-05-06 09:49:20', '2022-05-06 17:05:04', 'proyek-541-6274d74324850983468208.png', 'Testeur QA', NULL, 0),
(15, 12, 'nanta@yopmail.com', '[\"ROLE_CUSTOM\"]', '$2y$13$Htpj00aHNcAtejtTveX28.TQMbRVKVnbLlydoFj4nV8gogl5pD7zi', 'Olivier', 'Nanté', 'Antsakaviro', '0325555566', '2022-05-19 08:55:00', '2022-05-19 14:34:17', NULL, 'Testeur QA', '2022-05-19 14:34:17', 0),
(16, 12, 'nantha@yopmail.com', '[\"ROLE_CUSTOM\"]', '$2y$13$n2Hdz9BOyQ0Y2C2Ru/ZNsOM5aNykCd78vRJ4U9tmlHSooRbPl/LWW', 'Olivier', 'Nantenaina', 'AMbanidia', '0325558899', '2022-05-25 14:06:10', '2022-05-25 14:06:10', NULL, 'Testeur', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `variable_charge`
--

CREATE TABLE `variable_charge` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `variable_charge`
--

INSERT INTO `variable_charge` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'loyer', '2022-05-03 11:26:14', '2022-05-03 11:26:29', NULL),
(2, 'jirama', '2022-05-03 11:26:58', '2022-05-03 11:28:06', '2022-05-03 11:27:13'),
(3, 'Fret', '2022-05-03 11:29:52', '2022-05-03 11:29:52', NULL),
(4, 'frais bancaire', '2022-05-03 11:30:03', '2022-05-03 11:30:18', NULL),
(5, 'Frais divers', '2022-05-03 11:30:28', '2022-08-12 18:53:37', NULL),
(6, 'Généraux', '2022-05-03 11:31:22', '2022-05-03 11:31:22', NULL),
(7, 'charge 6', '2022-05-03 11:31:50', '2022-05-03 11:31:50', '2022-05-03 11:42:49'),
(8, 'charge 7', '2022-05-03 11:32:09', '2022-05-03 11:32:09', '2022-05-03 11:42:29'),
(9, 'charge 8', '2022-05-03 11:32:18', '2022-05-03 11:32:18', '2022-05-03 11:42:45'),
(10, 'charge 9', '2022-05-03 11:32:27', '2022-05-03 11:32:27', '2022-05-03 11:42:22'),
(11, 'charge 10', '2022-05-03 11:32:36', '2022-05-03 11:32:36', '2022-05-03 11:42:39'),
(12, 'charge 11', '2022-05-03 11:35:27', '2022-05-03 11:35:27', '2022-05-03 11:42:34'),
(13, 'Fourniture', '2022-05-03 11:38:13', '2022-05-03 11:38:13', NULL),
(14, 'Assurance', '2022-05-03 11:38:23', '2022-05-03 11:38:23', NULL),
(15, 'Paiement Fournisseur Extérieur', '2022-05-03 11:38:34', '2022-05-03 11:38:34', NULL),
(16, 'Paiement Fournisseur Local', '2022-05-03 11:38:43', '2022-05-03 11:38:43', NULL),
(17, 'Consommables', '2022-05-03 11:40:14', '2022-05-03 11:40:14', NULL),
(18, 'Carburants', '2022-05-03 11:40:26', '2022-05-03 11:40:26', NULL),
(19, 'Dépotagesgg', '2022-05-03 11:43:16', '2022-05-06 09:24:10', '2022-05-06 09:24:10'),
(20, 'Carburant', '2022-05-04 10:08:01', '2022-05-04 10:08:01', NULL),
(21, 'Frais de trasports', '2022-05-06 09:23:40', '2022-08-12 18:53:28', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `voucher`
--

CREATE TABLE `voucher` (
  `id` int NOT NULL,
  `provider_id` int DEFAULT NULL,
  `payment_status_id` int DEFAULT NULL,
  `num` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_num` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_exit` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `currency_course` double DEFAULT NULL,
  `currency_id` int DEFAULT NULL,
  `provider_invoice_status_id` int DEFAULT NULL,
  `product_type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voucher`
--

INSERT INTO `voucher` (`id`, `provider_id`, `payment_status_id`, `num`, `invoice_num`, `is_exit`, `created_at`, `updated_at`, `deleted_at`, `currency_course`, `currency_id`, `provider_invoice_status_id`, `product_type_id`) VALUES
(1, 28, 2, 'SFOI/2206BE0001', 'SFOI/2206FCT0046', 0, '2022-06-23 17:14:39', '2022-06-23 17:14:39', NULL, 4000, 151, 1, NULL),
(2, 28, NULL, 'SFOI/2206BS0001', 'SFOI/2206FCT0046', 1, '2022-06-23 17:16:57', '2022-06-23 17:27:27', '2022-06-23 17:27:27', 4000, 151, NULL, NULL),
(3, 28, NULL, 'SFOI/2206BS0002', 'SFOI/2206FCT0046', 1, '2022-06-23 17:20:45', '2022-06-23 17:25:01', '2022-06-23 17:25:01', 4000, 151, NULL, NULL),
(4, 28, NULL, 'SFOI/2206BS0003', 'SFOI/2206FCT0046', 1, '2022-06-23 17:36:27', '2022-06-23 17:38:15', '2022-06-23 17:38:15', 4000, 151, NULL, NULL),
(5, 28, NULL, 'SFOI/2206BS0001', 'SFOI/2206FCT0046', 1, '2022-06-24 08:48:37', '2022-06-24 08:48:37', NULL, 4000, 151, NULL, NULL),
(6, 28, NULL, 'SFOI/2206BS0002', 'SFOI/2206FCT0046', 1, '2022-06-24 08:52:16', '2022-06-24 08:52:16', NULL, 4000, 151, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `voucher_item`
--

CREATE TABLE `voucher_item` (
  `id` int NOT NULL,
  `voucher_id` int DEFAULT NULL,
  `mp_id` int DEFAULT NULL,
  `quantity` double NOT NULL,
  `price` double NOT NULL,
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `provider_lot_id` int DEFAULT NULL,
  `num` int NOT NULL,
  `purchase_mp_id` int DEFAULT NULL,
  `purchase_trade_product_id` int DEFAULT NULL,
  `trade_product_id` int DEFAULT NULL,
  `purchase_waste_recycled_id` int DEFAULT NULL,
  `waste_recycled_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `voucher_item`
--

INSERT INTO `voucher_item` (`id`, `voucher_id`, `mp_id`, `quantity`, `price`, `deleted_at`, `created_at`, `updated_at`, `provider_lot_id`, `num`, `purchase_mp_id`, `purchase_trade_product_id`, `trade_product_id`, `purchase_waste_recycled_id`, `waste_recycled_id`) VALUES
(1, 1, 33, 20, 50, NULL, '2022-06-23 17:14:39', '2022-06-23 17:14:39', 82, 1, NULL, NULL, NULL, NULL, NULL),
(2, 1, 32, 20, 50, NULL, '2022-06-23 17:14:39', '2022-06-23 17:14:39', 83, 1, NULL, NULL, NULL, NULL, NULL),
(3, 2, 33, 5, 12.5, '2022-06-23 17:27:27', '2022-06-23 17:16:57', '2022-06-23 17:27:27', NULL, 1, 1, NULL, NULL, NULL, NULL),
(4, 3, 33, 10, 25, '2022-06-23 17:25:01', '2022-06-23 17:20:44', '2022-06-23 17:25:01', NULL, 1, 1, NULL, NULL, NULL, NULL),
(5, 3, 32, 5, 50, '2022-06-23 17:25:01', '2022-06-23 17:20:45', '2022-06-23 17:25:01', NULL, 1, 2, NULL, NULL, NULL, NULL),
(6, 4, 33, 2, 5, '2022-06-23 17:38:15', '2022-06-23 17:36:27', '2022-06-23 17:38:15', NULL, 1, 1, NULL, NULL, NULL, NULL),
(7, 4, 32, 2, 5, '2022-06-23 17:38:15', '2022-06-23 17:37:29', '2022-06-23 17:38:15', NULL, 1, 2, NULL, NULL, NULL, NULL),
(8, 5, 33, 20, 50, NULL, '2022-06-24 08:48:37', '2022-06-24 08:50:18', NULL, 1, 1, NULL, NULL, NULL, NULL),
(9, 5, 32, 20, 50, '2022-06-24 08:50:18', '2022-06-24 08:48:37', '2022-06-24 08:50:18', NULL, 1, 2, NULL, NULL, NULL, NULL),
(10, 6, 32, 15, 37.5, NULL, '2022-06-24 08:52:16', '2022-06-24 08:52:16', NULL, 1, 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `waste_recycled`
--

CREATE TABLE `waste_recycled` (
  `id` int NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)',
  `waste_recycled_type_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `waste_recycled`
--

INSERT INTO `waste_recycled` (`id`, `label`, `created_at`, `updated_at`, `deleted_at`, `waste_recycled_type_id`, `unit_id`, `code`) VALUES
(1, 'Polyéthylène Téréphtalate', '2022-05-05 13:49:04', '2022-05-05 13:49:04', NULL, NULL, NULL, ''),
(2, 'Polyéthylène Haute Densité', '2022-05-05 13:50:06', '2022-05-05 13:50:06', NULL, NULL, NULL, ''),
(3, 'Polychlorure de vinyle', '2022-05-05 13:50:22', '2022-05-05 13:50:22', NULL, NULL, NULL, ''),
(4, 'Polyéthylène Basse Densité', '2022-05-05 13:50:34', '2022-05-05 13:50:34', NULL, NULL, NULL, ''),
(5, 'Polypropylène', '2022-05-05 13:50:54', '2022-05-05 13:50:54', NULL, NULL, NULL, ''),
(6, 'Polystyrène', '2022-05-05 13:51:07', '2022-05-05 13:51:07', NULL, NULL, NULL, ''),
(7, 'polyéthylènes téréphtalates', '2022-05-05 13:53:09', '2022-05-05 13:53:09', NULL, NULL, NULL, ''),
(8, 'Bouteilles plastiques', '2022-05-05 13:54:21', '2022-05-05 13:54:21', NULL, NULL, NULL, ''),
(9, 'Suremballages en carton', '2022-05-05 13:55:57', '2022-05-05 13:55:57', NULL, NULL, NULL, ''),
(10, 'Briques alimentaires', '2022-05-05 13:56:22', '2022-05-05 13:56:22', NULL, NULL, NULL, ''),
(11, 'bidons', '2022-05-05 13:56:56', '2022-05-05 13:56:56', NULL, NULL, NULL, ''),
(12, 'qsdfghjklmù*', '2022-05-05 14:05:34', '2022-05-05 14:05:34', '2022-05-05 14:05:44', NULL, NULL, ''),
(13, 'qsdfghjklmù*4', '2022-05-05 14:05:37', '2022-05-05 14:05:37', '2022-05-05 14:05:48', NULL, NULL, ''),
(14, 'Styloff', '2022-05-06 09:46:19', '2022-05-06 09:46:27', '2022-05-06 09:46:27', NULL, NULL, ''),
(15, 'Boite à shampoing', '2022-05-06 10:44:50', '2022-05-06 10:44:50', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Structure de la table `waste_recycled_consumption`
--

CREATE TABLE `waste_recycled_consumption` (
  `id` int NOT NULL,
  `waste_recycled_id` int DEFAULT NULL,
  `consumption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `waste_recycled_consumption`
--

INSERT INTO `waste_recycled_consumption` (`id`, `waste_recycled_id`, `consumption`) VALUES
(1, 15, '12'),
(2, 10, '4'),
(3, 3, '7'),
(4, 10, '4'),
(5, 8, '50'),
(6, 8, '50'),
(7, 8, '50'),
(8, 8, '50'),
(9, 8, '50'),
(10, 8, '50'),
(11, 8, '50'),
(12, 11, '2');

-- --------------------------------------------------------

--
-- Structure de la table `waste_recycled_process_step_waste_recycled`
--

CREATE TABLE `waste_recycled_process_step_waste_recycled` (
  `waste_recycled_id` int NOT NULL,
  `process_step_waste_recycled_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `waste_recycled_type`
--

CREATE TABLE `waste_recycled_type` (
  `id` int NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `deleted_at` datetime DEFAULT NULL COMMENT '(DC2Type:deleted_at)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annual_interest_rate`
--
ALTER TABLE `annual_interest_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4B7052174AF38FD1` (`deleted_at`);

--
-- Index pour la table `annual_interest_rate_story`
--
ALTER TABLE `annual_interest_rate_story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2A9E8491A76ED395` (`user_id`),
  ADD KEY `IDX_2A9E8491A7A03E64` (`annual_interest_rate_id`),
  ADD KEY `IDX_2A9E84914AF38FD1` (`deleted_at`);

--
-- Index pour la table `arbitrage`
--
ALTER TABLE `arbitrage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E3A3F34211C8FB41` (`bank_id`),
  ADD KEY `IDX_E3A3F342B26BFE8D` (`proforma_id`),
  ADD KEY `IDX_E3A3F3422989F1FD` (`invoice_id`),
  ADD KEY `IDX_E3A3F3424AF38FD1` (`deleted_at`);

--
-- Index pour la table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D860BF7A4AF38FD1` (`deleted_at`);

--
-- Index pour la table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BB861B1F4AF38FD1` (`deleted_at`);

--
-- Index pour la table `container`
--
ALTER TABLE `container`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C7A2EC1B5B3408DE` (`container_type_id`),
  ADD KEY `IDX_C7A2EC1BB26BFE8D` (`proforma_id`),
  ADD KEY `IDX_C7A2EC1B2989F1FD` (`invoice_id`),
  ADD KEY `IDX_C7A2EC1B4AF38FD1` (`deleted_at`);

--
-- Index pour la table `container_type`
--
ALTER TABLE `container_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_182694FC55BFF85F` (`mp_id`),
  ADD KEY `IDX_182694FCFFFA4667` (`provider_lot_id`),
  ADD KEY `IDX_182694FC4AF38FD1` (`deleted_at`),
  ADD KEY `IDX_182694FC81747B75` (`purchase_mp_id`),
  ADD KEY `IDX_182694FCBAD3BD95` (`purchase_trade_product_id`),
  ADD KEY `IDX_182694FC6B173DB7` (`trade_product_id`),
  ADD KEY `IDX_182694FC5DBE71E6` (`waste_recycled_id`),
  ADD KEY `IDX_182694FC880FF482` (`purchase_waste_recycled_id`),
  ADD KEY `IDX_182694FC4CDFF5E6` (`incoterms_status_id`);

--
-- Index pour la table `cost_variable_charge`
--
ALTER TABLE `cost_variable_charge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D88D0724B05E25FD` (`variable_charge_id`),
  ADD KEY `IDX_D88D07241DBF857F` (`cost_id`),
  ADD KEY `IDX_D88D07244AF38FD1` (`deleted_at`);

--
-- Index pour la table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6956883F4AF38FD1` (`deleted_at`);

--
-- Index pour la table `currency_rate`
--
ALTER TABLE `currency_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_555B7C4D38248176` (`currency_id`),
  ADD KEY `IDX_555B7C4D4AF38FD1` (`deleted_at`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `draft_cost`
--
ALTER TABLE `draft_cost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_266A2F855BFF85F` (`mp_id`),
  ADD KEY `IDX_266A2F8FFFA4667` (`provider_lot_id`),
  ADD KEY `IDX_266A2F881747B75` (`purchase_mp_id`),
  ADD KEY `IDX_266A2F81DBF857F` (`cost_id`),
  ADD KEY `IDX_266A2F84AF38FD1` (`deleted_at`),
  ADD KEY `IDX_266A2F86B173DB7` (`trade_product_id`),
  ADD KEY `IDX_266A2F8BAD3BD95` (`purchase_trade_product_id`),
  ADD KEY `IDX_266A2F84CDFF5E6` (`incoterms_status_id`);

--
-- Index pour la table `draft_cost_variable_charge`
--
ALTER TABLE `draft_cost_variable_charge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2D00098DB05E25FD` (`variable_charge_id`),
  ADD KEY `IDX_2D00098DE576FD5C` (`draft_cost_id`),
  ADD KEY `IDX_2D00098D4AF38FD1` (`deleted_at`);

--
-- Index pour la table `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FB361EF9A53A8AA` (`provider_id`),
  ADD KEY `IDX_FB361EF94AF38FD1` (`deleted_at`);

--
-- Index pour la table `final_product_variation`
--
ALTER TABLE `final_product_variation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A2BA6901F8BD700D` (`unit_id`),
  ADD KEY `IDX_A2BA6901EDA8FDD0` (`production_unit_id`),
  ADD KEY `IDX_A2BA6901904A644B` (`package_final_product_id`),
  ADD KEY `IDX_A2BA69014AF38FD1` (`deleted_at`),
  ADD KEY `IDX_A2BA690172A9D335` (`step_process_id`);

--
-- Index pour la table `incoterms_status`
--
ALTER TABLE `incoterms_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1A2C48364AF38FD1` (`deleted_at`);

--
-- Index pour la table `input_costing`
--
ALTER TABLE `input_costing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FE0742E04AF38FD1` (`deleted_at`);

--
-- Index pour la table `input_costing_story`
--
ALTER TABLE `input_costing_story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77949E6C44B2BDF1` (`input_costing_story_type_id`),
  ADD KEY `IDX_77949E6C4AF38FD1` (`deleted_at`),
  ADD KEY `IDX_77949E6CA76ED395` (`user_id`);

--
-- Index pour la table `input_costing_story_type`
--
ALTER TABLE `input_costing_story_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_906517442A73299E` (`lc_id`),
  ADD KEY `IDX_906517446D339849` (`provider_invoice_status_id`),
  ADD KEY `IDX_9065174428DE2F95` (`payment_status_id`),
  ADD KEY `IDX_9065174438248176` (`currency_id`),
  ADD KEY `IDX_906517444AF38FD1` (`deleted_at`),
  ADD KEY `IDX_90651744A53A8AA` (`provider_id`),
  ADD KEY `IDX_9065174414959723` (`product_type_id`),
  ADD KEY `IDX_90651744B26BFE8D` (`proforma_id`),
  ADD KEY `IDX_906517444CDFF5E6` (`incoterms_status_id`);

--
-- Index pour la table `lc`
--
ALTER TABLE `lc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5C2A06B611C8FB41` (`bank_id`),
  ADD KEY `IDX_5C2A06B64AF38FD1` (`deleted_at`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5E9E89CB4AF38FD1` (`deleted_at`);

--
-- Index pour la table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1505DF84EDA8FDD0` (`production_unit_id`),
  ADD KEY `IDX_1505DF844AF38FD1` (`deleted_at`);

--
-- Index pour la table `material_application`
--
ALTER TABLE `material_application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_747EFC94AF38FD1` (`deleted_at`);

--
-- Index pour la table `material_specification`
--
ALTER TABLE `material_specification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E31620E4AF38FD1` (`deleted_at`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7D053A93727ACA70` (`parent_id`);

--
-- Index pour la table `mold`
--
ALTER TABLE `mold`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2814FD35F6B75B26` (`machine_id`),
  ADD KEY `IDX_2814FD354AF38FD1` (`deleted_at`);

--
-- Index pour la table `mp`
--
ALTER TABLE `mp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C18F7629E31696E4` (`mp_type_id`),
  ADD KEY `IDX_C18F7629F8BD700D` (`unit_id`),
  ADD KEY `IDX_C18F76294AF38FD1` (`deleted_at`),
  ADD KEY `IDX_C18F76296ACAE12B` (`material_specification_id`),
  ADD KEY `IDX_C18F7629C96153E8` (`material_application_id`);

--
-- Index pour la table `mp_type`
--
ALTER TABLE `mp_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6BF62FB54AF38FD1` (`deleted_at`);

--
-- Index pour la table `package_final_product`
--
ALTER TABLE `package_final_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9EAC77614AF38FD1` (`deleted_at`);

--
-- Index pour la table `payment_status`
--
ALTER TABLE `payment_status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `process`
--
ALTER TABLE `process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_861D18964AF38FD1` (`deleted_at`),
  ADD KEY `IDX_861D189614959723` (`product_type_id`),
  ADD KEY `IDX_861D1896F8BD700D` (`unit_id`),
  ADD KEY `IDX_861D189655BFF85F` (`mp_id`);

--
-- Index pour la table `process_step`
--
ALTER TABLE `process_step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC502C094AF38FD1` (`deleted_at`),
  ADD KEY `IDX_AC502C0972A9D335` (`step_process_id`);

--
-- Index pour la table `process_step_mp`
--
ALTER TABLE `process_step_mp`
  ADD PRIMARY KEY (`process_step_id`,`mp_id`),
  ADD KEY `IDX_457CD5303BCAC449` (`process_step_id`),
  ADD KEY `IDX_457CD53055BFF85F` (`mp_id`);

--
-- Index pour la table `process_step_waste_recycled`
--
ALTER TABLE `process_step_waste_recycled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_44C8676D72A9D335` (`step_process_id`),
  ADD KEY `IDX_44C8676DF6B75B26` (`machine_id`),
  ADD KEY `IDX_44C8676DFF29A9EE` (`mold_id`),
  ADD KEY `IDX_44C8676D4AF38FD1` (`deleted_at`);

--
-- Index pour la table `process_step_waste_recycled_waste_recycled_consumption`
--
ALTER TABLE `process_step_waste_recycled_waste_recycled_consumption`
  ADD PRIMARY KEY (`process_step_waste_recycled_id`,`waste_recycled_consumption_id`),
  ADD KEY `IDX_D76114E8994D2AE5` (`process_step_waste_recycled_id`),
  ADD KEY `IDX_D76114E81CF571B8` (`waste_recycled_consumption_id`);

--
-- Index pour la table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D3EDB1E014959723` (`product_type_id`);

--
-- Index pour la table `production_step_waste_recycled`
--
ALTER TABLE `production_step_waste_recycled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B445F0D561F61E21` (`production_waste_recycled_id`),
  ADD KEY `IDX_B445F0D56DFE4F77` (`process_waste_recycled_id`),
  ADD KEY `IDX_B445F0D53BCAC449` (`process_step_id`);

--
-- Index pour la table `production_unit`
--
ALTER TABLE `production_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7AB4747DCD6CC49` (`branch_id`),
  ADD KEY `IDX_7AB47474AF38FD1` (`deleted_at`);

--
-- Index pour la table `production_unit_story`
--
ALTER TABLE `production_unit_story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6C5DEA8DCD6CC49` (`branch_id`),
  ADD KEY `IDX_6C5DEA8EDA8FDD0` (`production_unit_id`),
  ADD KEY `IDX_6C5DEA84AF38FD1` (`deleted_at`);

--
-- Index pour la table `production_waste_recycled`
--
ALTER TABLE `production_waste_recycled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DAD9D04C5DBE71E6` (`waste_recycled_id`),
  ADD KEY `IDX_DAD9D04C6DFE4F77` (`process_waste_recycled_id`),
  ADD KEY `IDX_DAD9D04CECC6147F` (`production_id`),
  ADD KEY `IDX_DAD9D04C55BFF85F` (`mp_id`);

--
-- Index pour la table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `proforma`
--
ALTER TABLE `proforma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8383AFD62A73299E` (`lc_id`),
  ADD KEY `IDX_8383AFD628DE2F95` (`payment_status_id`),
  ADD KEY `IDX_8383AFD638248176` (`currency_id`),
  ADD KEY `IDX_8383AFD6A53A8AA` (`provider_id`),
  ADD KEY `IDX_8383AFD614959723` (`product_type_id`),
  ADD KEY `IDX_8383AFD64AF38FD1` (`deleted_at`),
  ADD KEY `IDX_8383AFD64CDFF5E6` (`incoterms_status_id`);

--
-- Index pour la table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92C4739C35142E34` (`provider_type_id`),
  ADD KEY `IDX_92C4739C4AF38FD1` (`deleted_at`);

--
-- Index pour la table `provider_invoice_status`
--
ALTER TABLE `provider_invoice_status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `provider_lot`
--
ALTER TABLE `provider_lot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_565C58D62989F1FD` (`invoice_id`),
  ADD KEY `IDX_565C58D655BFF85F` (`mp_id`),
  ADD KEY `IDX_565C58D64AF38FD1` (`deleted_at`),
  ADD KEY `IDX_565C58D66B173DB7` (`trade_product_id`),
  ADD KEY `IDX_565C58D65DBE71E6` (`waste_recycled_id`),
  ADD KEY `IDX_565C58D6B26BFE8D` (`proforma_id`);

--
-- Index pour la table `provider_machine`
--
ALTER TABLE `provider_machine`
  ADD PRIMARY KEY (`provider_id`,`machine_id`),
  ADD KEY `IDX_E55D7D23A53A8AA` (`provider_id`),
  ADD KEY `IDX_E55D7D23F6B75B26` (`machine_id`);

--
-- Index pour la table `provider_mp`
--
ALTER TABLE `provider_mp`
  ADD PRIMARY KEY (`provider_id`,`mp_id`),
  ADD KEY `IDX_74E5B9D3A53A8AA` (`provider_id`),
  ADD KEY `IDX_74E5B9D355BFF85F` (`mp_id`);

--
-- Index pour la table `provider_product_type`
--
ALTER TABLE `provider_product_type`
  ADD PRIMARY KEY (`provider_id`,`product_type_id`),
  ADD KEY `IDX_52407935A53A8AA` (`provider_id`),
  ADD KEY `IDX_5240793514959723` (`product_type_id`);

--
-- Index pour la table `provider_trade_product`
--
ALTER TABLE `provider_trade_product`
  ADD PRIMARY KEY (`provider_id`,`trade_product_id`),
  ADD KEY `IDX_9549E566A53A8AA` (`provider_id`),
  ADD KEY `IDX_9549E5666B173DB7` (`trade_product_id`);

--
-- Index pour la table `provider_type`
--
ALTER TABLE `provider_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_695634554AF38FD1` (`deleted_at`);

--
-- Index pour la table `provider_waste_recycled`
--
ALTER TABLE `provider_waste_recycled`
  ADD PRIMARY KEY (`provider_id`,`waste_recycled_id`),
  ADD KEY `IDX_25F9C538A53A8AA` (`provider_id`),
  ADD KEY `IDX_25F9C5385DBE71E6` (`waste_recycled_id`);

--
-- Index pour la table `purchase_mp`
--
ALTER TABLE `purchase_mp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2B39AFC02989F1FD` (`invoice_id`),
  ADD KEY `IDX_2B39AFC055BFF85F` (`mp_id`),
  ADD KEY `IDX_2B39AFC04AF38FD1` (`deleted_at`);

--
-- Index pour la table `purchase_trade_product`
--
ALTER TABLE `purchase_trade_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F6D8E5442989F1FD` (`invoice_id`),
  ADD KEY `IDX_F6D8E5446B173DB7` (`trade_product_id`),
  ADD KEY `IDX_F6D8E5444AF38FD1` (`deleted_at`);

--
-- Index pour la table `purchase_waste_recycled`
--
ALTER TABLE `purchase_waste_recycled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F0FA15DC2989F1FD` (`invoice_id`),
  ADD KEY `IDX_F0FA15DC5DBE71E6` (`waste_recycled_id`),
  ADD KEY `IDX_F0FA15DC4AF38FD1` (`deleted_at`);

--
-- Index pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CE748AA76ED395` (`user_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_57698A6A4AF38FD1` (`deleted_at`);

--
-- Index pour la table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EB56043896B01C11` (`story_type_id`),
  ADD KEY `IDX_EB560438A76ED395` (`user_id`);

--
-- Index pour la table `story_type`
--
ALTER TABLE `story_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `trade_product`
--
ALTER TABLE `trade_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_20CA5C5B4AF38FD1` (`deleted_at`);

--
-- Index pour la table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DCBB0C534AF38FD1` (`deleted_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  ADD KEY `IDX_8D93D649D60322AC` (`role_id`),
  ADD KEY `IDX_8D93D6494AF38FD1` (`deleted_at`);

--
-- Index pour la table `variable_charge`
--
ALTER TABLE `variable_charge`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DAD421A34AF38FD1` (`deleted_at`);

--
-- Index pour la table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1392A5D8A53A8AA` (`provider_id`),
  ADD KEY `IDX_1392A5D828DE2F95` (`payment_status_id`),
  ADD KEY `IDX_1392A5D84AF38FD1` (`deleted_at`),
  ADD KEY `IDX_1392A5D838248176` (`currency_id`),
  ADD KEY `IDX_1392A5D86D339849` (`provider_invoice_status_id`),
  ADD KEY `IDX_1392A5D814959723` (`product_type_id`);

--
-- Index pour la table `voucher_item`
--
ALTER TABLE `voucher_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1E76A5A628AA1B6F` (`voucher_id`),
  ADD KEY `IDX_1E76A5A655BFF85F` (`mp_id`),
  ADD KEY `IDX_1E76A5A64AF38FD1` (`deleted_at`),
  ADD KEY `IDX_1E76A5A6FFFA4667` (`provider_lot_id`),
  ADD KEY `IDX_1E76A5A681747B75` (`purchase_mp_id`),
  ADD KEY `IDX_1E76A5A6BAD3BD95` (`purchase_trade_product_id`),
  ADD KEY `IDX_1E76A5A66B173DB7` (`trade_product_id`),
  ADD KEY `IDX_1E76A5A6880FF482` (`purchase_waste_recycled_id`),
  ADD KEY `IDX_1E76A5A65DBE71E6` (`waste_recycled_id`);

--
-- Index pour la table `waste_recycled`
--
ALTER TABLE `waste_recycled`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7D240A904AF38FD1` (`deleted_at`),
  ADD KEY `IDX_7D240A90A78BE50F` (`waste_recycled_type_id`),
  ADD KEY `IDX_7D240A90F8BD700D` (`unit_id`);

--
-- Index pour la table `waste_recycled_consumption`
--
ALTER TABLE `waste_recycled_consumption`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BB68C2B75DBE71E6` (`waste_recycled_id`);

--
-- Index pour la table `waste_recycled_process_step_waste_recycled`
--
ALTER TABLE `waste_recycled_process_step_waste_recycled`
  ADD PRIMARY KEY (`waste_recycled_id`,`process_step_waste_recycled_id`),
  ADD KEY `IDX_FB17ED225DBE71E6` (`waste_recycled_id`),
  ADD KEY `IDX_FB17ED22994D2AE5` (`process_step_waste_recycled_id`);

--
-- Index pour la table `waste_recycled_type`
--
ALTER TABLE `waste_recycled_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CA9509C14AF38FD1` (`deleted_at`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annual_interest_rate`
--
ALTER TABLE `annual_interest_rate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `annual_interest_rate_story`
--
ALTER TABLE `annual_interest_rate_story`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `arbitrage`
--
ALTER TABLE `arbitrage`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `container`
--
ALTER TABLE `container`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `container_type`
--
ALTER TABLE `container_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cost`
--
ALTER TABLE `cost`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `cost_variable_charge`
--
ALTER TABLE `cost_variable_charge`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT pour la table `currency_rate`
--
ALTER TABLE `currency_rate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `draft_cost`
--
ALTER TABLE `draft_cost`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `draft_cost_variable_charge`
--
ALTER TABLE `draft_cost_variable_charge`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `final_product_variation`
--
ALTER TABLE `final_product_variation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `incoterms_status`
--
ALTER TABLE `incoterms_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `input_costing`
--
ALTER TABLE `input_costing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `input_costing_story`
--
ALTER TABLE `input_costing_story`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `input_costing_story_type`
--
ALTER TABLE `input_costing_story_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pour la table `lc`
--
ALTER TABLE `lc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `material_application`
--
ALTER TABLE `material_application`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `material_specification`
--
ALTER TABLE `material_specification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT pour la table `mold`
--
ALTER TABLE `mold`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `mp`
--
ALTER TABLE `mp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `mp_type`
--
ALTER TABLE `mp_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `package_final_product`
--
ALTER TABLE `package_final_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `payment_status`
--
ALTER TABLE `payment_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `process`
--
ALTER TABLE `process`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `process_step`
--
ALTER TABLE `process_step`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `process_step_waste_recycled`
--
ALTER TABLE `process_step_waste_recycled`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `production`
--
ALTER TABLE `production`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `production_step_waste_recycled`
--
ALTER TABLE `production_step_waste_recycled`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `production_unit`
--
ALTER TABLE `production_unit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `production_unit_story`
--
ALTER TABLE `production_unit_story`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `production_waste_recycled`
--
ALTER TABLE `production_waste_recycled`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `proforma`
--
ALTER TABLE `proforma`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `provider_invoice_status`
--
ALTER TABLE `provider_invoice_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `provider_lot`
--
ALTER TABLE `provider_lot`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT pour la table `provider_type`
--
ALTER TABLE `provider_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `purchase_mp`
--
ALTER TABLE `purchase_mp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `purchase_trade_product`
--
ALTER TABLE `purchase_trade_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `purchase_waste_recycled`
--
ALTER TABLE `purchase_waste_recycled`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `story`
--
ALTER TABLE `story`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT pour la table `story_type`
--
ALTER TABLE `story_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `trade_product`
--
ALTER TABLE `trade_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `unit`
--
ALTER TABLE `unit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `variable_charge`
--
ALTER TABLE `variable_charge`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `voucher_item`
--
ALTER TABLE `voucher_item`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `waste_recycled`
--
ALTER TABLE `waste_recycled`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `waste_recycled_consumption`
--
ALTER TABLE `waste_recycled_consumption`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `waste_recycled_type`
--
ALTER TABLE `waste_recycled_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annual_interest_rate_story`
--
ALTER TABLE `annual_interest_rate_story`
  ADD CONSTRAINT `FK_2A9E8491A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_2A9E8491A7A03E64` FOREIGN KEY (`annual_interest_rate_id`) REFERENCES `annual_interest_rate` (`id`);

--
-- Contraintes pour la table `arbitrage`
--
ALTER TABLE `arbitrage`
  ADD CONSTRAINT `FK_E3A3F34211C8FB41` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`),
  ADD CONSTRAINT `FK_E3A3F3422989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_E3A3F342B26BFE8D` FOREIGN KEY (`proforma_id`) REFERENCES `proforma` (`id`);

--
-- Contraintes pour la table `container`
--
ALTER TABLE `container`
  ADD CONSTRAINT `FK_C7A2EC1B2989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_C7A2EC1B5B3408DE` FOREIGN KEY (`container_type_id`) REFERENCES `container_type` (`id`),
  ADD CONSTRAINT `FK_C7A2EC1BB26BFE8D` FOREIGN KEY (`proforma_id`) REFERENCES `proforma` (`id`);

--
-- Contraintes pour la table `cost`
--
ALTER TABLE `cost`
  ADD CONSTRAINT `FK_182694FC4CDFF5E6` FOREIGN KEY (`incoterms_status_id`) REFERENCES `incoterms_status` (`id`),
  ADD CONSTRAINT `FK_182694FC55BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`),
  ADD CONSTRAINT `FK_182694FC5DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`),
  ADD CONSTRAINT `FK_182694FC6B173DB7` FOREIGN KEY (`trade_product_id`) REFERENCES `trade_product` (`id`),
  ADD CONSTRAINT `FK_182694FC81747B75` FOREIGN KEY (`purchase_mp_id`) REFERENCES `purchase_mp` (`id`),
  ADD CONSTRAINT `FK_182694FC880FF482` FOREIGN KEY (`purchase_waste_recycled_id`) REFERENCES `purchase_waste_recycled` (`id`),
  ADD CONSTRAINT `FK_182694FCBAD3BD95` FOREIGN KEY (`purchase_trade_product_id`) REFERENCES `purchase_trade_product` (`id`),
  ADD CONSTRAINT `FK_182694FCFFFA4667` FOREIGN KEY (`provider_lot_id`) REFERENCES `provider_lot` (`id`);

--
-- Contraintes pour la table `cost_variable_charge`
--
ALTER TABLE `cost_variable_charge`
  ADD CONSTRAINT `FK_D88D07241DBF857F` FOREIGN KEY (`cost_id`) REFERENCES `cost` (`id`),
  ADD CONSTRAINT `FK_D88D0724B05E25FD` FOREIGN KEY (`variable_charge_id`) REFERENCES `variable_charge` (`id`);

--
-- Contraintes pour la table `currency_rate`
--
ALTER TABLE `currency_rate`
  ADD CONSTRAINT `FK_555B7C4D38248176` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`);

--
-- Contraintes pour la table `draft_cost`
--
ALTER TABLE `draft_cost`
  ADD CONSTRAINT `FK_266A2F81DBF857F` FOREIGN KEY (`cost_id`) REFERENCES `cost` (`id`),
  ADD CONSTRAINT `FK_266A2F84CDFF5E6` FOREIGN KEY (`incoterms_status_id`) REFERENCES `incoterms_status` (`id`),
  ADD CONSTRAINT `FK_266A2F855BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`),
  ADD CONSTRAINT `FK_266A2F86B173DB7` FOREIGN KEY (`trade_product_id`) REFERENCES `trade_product` (`id`),
  ADD CONSTRAINT `FK_266A2F881747B75` FOREIGN KEY (`purchase_mp_id`) REFERENCES `purchase_mp` (`id`),
  ADD CONSTRAINT `FK_266A2F8BAD3BD95` FOREIGN KEY (`purchase_trade_product_id`) REFERENCES `purchase_trade_product` (`id`),
  ADD CONSTRAINT `FK_266A2F8FFFA4667` FOREIGN KEY (`provider_lot_id`) REFERENCES `provider_lot` (`id`);

--
-- Contraintes pour la table `draft_cost_variable_charge`
--
ALTER TABLE `draft_cost_variable_charge`
  ADD CONSTRAINT `FK_2D00098DB05E25FD` FOREIGN KEY (`variable_charge_id`) REFERENCES `variable_charge` (`id`),
  ADD CONSTRAINT `FK_2D00098DE576FD5C` FOREIGN KEY (`draft_cost_id`) REFERENCES `draft_cost` (`id`);

--
-- Contraintes pour la table `factory`
--
ALTER TABLE `factory`
  ADD CONSTRAINT `FK_FB361EF9A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`);

--
-- Contraintes pour la table `final_product_variation`
--
ALTER TABLE `final_product_variation`
  ADD CONSTRAINT `FK_A2BA690172A9D335` FOREIGN KEY (`step_process_id`) REFERENCES `process` (`id`),
  ADD CONSTRAINT `FK_A2BA6901904A644B` FOREIGN KEY (`package_final_product_id`) REFERENCES `package_final_product` (`id`),
  ADD CONSTRAINT `FK_A2BA6901EDA8FDD0` FOREIGN KEY (`production_unit_id`) REFERENCES `production_unit` (`id`),
  ADD CONSTRAINT `FK_A2BA6901F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`);

--
-- Contraintes pour la table `input_costing_story`
--
ALTER TABLE `input_costing_story`
  ADD CONSTRAINT `FK_77949E6C44B2BDF1` FOREIGN KEY (`input_costing_story_type_id`) REFERENCES `input_costing_story_type` (`id`),
  ADD CONSTRAINT `FK_77949E6CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `FK_9065174414959723` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  ADD CONSTRAINT `FK_9065174428DE2F95` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`),
  ADD CONSTRAINT `FK_906517442A73299E` FOREIGN KEY (`lc_id`) REFERENCES `lc` (`id`),
  ADD CONSTRAINT `FK_9065174438248176` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `FK_906517444CDFF5E6` FOREIGN KEY (`incoterms_status_id`) REFERENCES `incoterms_status` (`id`),
  ADD CONSTRAINT `FK_906517446D339849` FOREIGN KEY (`provider_invoice_status_id`) REFERENCES `provider_invoice_status` (`id`),
  ADD CONSTRAINT `FK_90651744A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`),
  ADD CONSTRAINT `FK_90651744B26BFE8D` FOREIGN KEY (`proforma_id`) REFERENCES `proforma` (`id`);

--
-- Contraintes pour la table `lc`
--
ALTER TABLE `lc`
  ADD CONSTRAINT `FK_5C2A06B611C8FB41` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`);

--
-- Contraintes pour la table `machine`
--
ALTER TABLE `machine`
  ADD CONSTRAINT `FK_1505DF84EDA8FDD0` FOREIGN KEY (`production_unit_id`) REFERENCES `production_unit` (`id`);

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FK_7D053A93727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `mold`
--
ALTER TABLE `mold`
  ADD CONSTRAINT `FK_2814FD35F6B75B26` FOREIGN KEY (`machine_id`) REFERENCES `machine` (`id`);

--
-- Contraintes pour la table `mp`
--
ALTER TABLE `mp`
  ADD CONSTRAINT `FK_C18F76296ACAE12B` FOREIGN KEY (`material_specification_id`) REFERENCES `material_specification` (`id`),
  ADD CONSTRAINT `FK_C18F7629C96153E8` FOREIGN KEY (`material_application_id`) REFERENCES `material_application` (`id`),
  ADD CONSTRAINT `FK_C18F7629E31696E4` FOREIGN KEY (`mp_type_id`) REFERENCES `mp_type` (`id`),
  ADD CONSTRAINT `FK_C18F7629F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`);

--
-- Contraintes pour la table `process`
--
ALTER TABLE `process`
  ADD CONSTRAINT `FK_861D189614959723` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  ADD CONSTRAINT `FK_861D189655BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`),
  ADD CONSTRAINT `FK_861D1896F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`);

--
-- Contraintes pour la table `process_step`
--
ALTER TABLE `process_step`
  ADD CONSTRAINT `FK_AC502C0972A9D335` FOREIGN KEY (`step_process_id`) REFERENCES `process` (`id`);

--
-- Contraintes pour la table `process_step_mp`
--
ALTER TABLE `process_step_mp`
  ADD CONSTRAINT `FK_457CD5303BCAC449` FOREIGN KEY (`process_step_id`) REFERENCES `process_step` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_457CD53055BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `process_step_waste_recycled`
--
ALTER TABLE `process_step_waste_recycled`
  ADD CONSTRAINT `FK_44C8676D72A9D335` FOREIGN KEY (`step_process_id`) REFERENCES `process` (`id`),
  ADD CONSTRAINT `FK_44C8676DF6B75B26` FOREIGN KEY (`machine_id`) REFERENCES `machine` (`id`),
  ADD CONSTRAINT `FK_44C8676DFF29A9EE` FOREIGN KEY (`mold_id`) REFERENCES `mold` (`id`);

--
-- Contraintes pour la table `process_step_waste_recycled_waste_recycled_consumption`
--
ALTER TABLE `process_step_waste_recycled_waste_recycled_consumption`
  ADD CONSTRAINT `FK_D76114E81CF571B8` FOREIGN KEY (`waste_recycled_consumption_id`) REFERENCES `waste_recycled_consumption` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D76114E8994D2AE5` FOREIGN KEY (`process_step_waste_recycled_id`) REFERENCES `process_step_waste_recycled` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `production`
--
ALTER TABLE `production`
  ADD CONSTRAINT `FK_D3EDB1E014959723` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`);

--
-- Contraintes pour la table `production_step_waste_recycled`
--
ALTER TABLE `production_step_waste_recycled`
  ADD CONSTRAINT `FK_B445F0D53BCAC449` FOREIGN KEY (`process_step_id`) REFERENCES `process_step_waste_recycled` (`id`),
  ADD CONSTRAINT `FK_B445F0D561F61E21` FOREIGN KEY (`production_waste_recycled_id`) REFERENCES `production_waste_recycled` (`id`),
  ADD CONSTRAINT `FK_B445F0D56DFE4F77` FOREIGN KEY (`process_waste_recycled_id`) REFERENCES `process` (`id`);

--
-- Contraintes pour la table `production_unit`
--
ALTER TABLE `production_unit`
  ADD CONSTRAINT `FK_7AB4747DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`);

--
-- Contraintes pour la table `production_unit_story`
--
ALTER TABLE `production_unit_story`
  ADD CONSTRAINT `FK_6C5DEA8DCD6CC49` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`),
  ADD CONSTRAINT `FK_6C5DEA8EDA8FDD0` FOREIGN KEY (`production_unit_id`) REFERENCES `production_unit` (`id`);

--
-- Contraintes pour la table `production_waste_recycled`
--
ALTER TABLE `production_waste_recycled`
  ADD CONSTRAINT `FK_DAD9D04C55BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`),
  ADD CONSTRAINT `FK_DAD9D04C5DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`),
  ADD CONSTRAINT `FK_DAD9D04C6DFE4F77` FOREIGN KEY (`process_waste_recycled_id`) REFERENCES `process` (`id`),
  ADD CONSTRAINT `FK_DAD9D04CECC6147F` FOREIGN KEY (`production_id`) REFERENCES `production` (`id`);

--
-- Contraintes pour la table `proforma`
--
ALTER TABLE `proforma`
  ADD CONSTRAINT `FK_8383AFD614959723` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  ADD CONSTRAINT `FK_8383AFD628DE2F95` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`),
  ADD CONSTRAINT `FK_8383AFD62A73299E` FOREIGN KEY (`lc_id`) REFERENCES `lc` (`id`),
  ADD CONSTRAINT `FK_8383AFD638248176` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `FK_8383AFD64CDFF5E6` FOREIGN KEY (`incoterms_status_id`) REFERENCES `incoterms_status` (`id`),
  ADD CONSTRAINT `FK_8383AFD6A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`);

--
-- Contraintes pour la table `provider`
--
ALTER TABLE `provider`
  ADD CONSTRAINT `FK_92C4739C35142E34` FOREIGN KEY (`provider_type_id`) REFERENCES `provider_type` (`id`);

--
-- Contraintes pour la table `provider_lot`
--
ALTER TABLE `provider_lot`
  ADD CONSTRAINT `FK_565C58D62989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_565C58D655BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`),
  ADD CONSTRAINT `FK_565C58D65DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`),
  ADD CONSTRAINT `FK_565C58D66B173DB7` FOREIGN KEY (`trade_product_id`) REFERENCES `trade_product` (`id`),
  ADD CONSTRAINT `FK_565C58D6B26BFE8D` FOREIGN KEY (`proforma_id`) REFERENCES `proforma` (`id`);

--
-- Contraintes pour la table `provider_machine`
--
ALTER TABLE `provider_machine`
  ADD CONSTRAINT `FK_E55D7D23A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E55D7D23F6B75B26` FOREIGN KEY (`machine_id`) REFERENCES `machine` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `provider_mp`
--
ALTER TABLE `provider_mp`
  ADD CONSTRAINT `FK_74E5B9D355BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_74E5B9D3A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `provider_product_type`
--
ALTER TABLE `provider_product_type`
  ADD CONSTRAINT `FK_5240793514959723` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_52407935A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `provider_trade_product`
--
ALTER TABLE `provider_trade_product`
  ADD CONSTRAINT `FK_9549E5666B173DB7` FOREIGN KEY (`trade_product_id`) REFERENCES `trade_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9549E566A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `provider_waste_recycled`
--
ALTER TABLE `provider_waste_recycled`
  ADD CONSTRAINT `FK_25F9C5385DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_25F9C538A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `purchase_mp`
--
ALTER TABLE `purchase_mp`
  ADD CONSTRAINT `FK_2B39AFC02989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_2B39AFC055BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`);

--
-- Contraintes pour la table `purchase_trade_product`
--
ALTER TABLE `purchase_trade_product`
  ADD CONSTRAINT `FK_F6D8E5442989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_F6D8E5446B173DB7` FOREIGN KEY (`trade_product_id`) REFERENCES `trade_product` (`id`);

--
-- Contraintes pour la table `purchase_waste_recycled`
--
ALTER TABLE `purchase_waste_recycled`
  ADD CONSTRAINT `FK_F0FA15DC2989F1FD` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  ADD CONSTRAINT `FK_F0FA15DC5DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `FK_EB56043896B01C11` FOREIGN KEY (`story_type_id`) REFERENCES `story_type` (`id`),
  ADD CONSTRAINT `FK_EB560438A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649D60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Contraintes pour la table `voucher`
--
ALTER TABLE `voucher`
  ADD CONSTRAINT `FK_1392A5D814959723` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  ADD CONSTRAINT `FK_1392A5D828DE2F95` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`id`),
  ADD CONSTRAINT `FK_1392A5D838248176` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`),
  ADD CONSTRAINT `FK_1392A5D86D339849` FOREIGN KEY (`provider_invoice_status_id`) REFERENCES `provider_invoice_status` (`id`),
  ADD CONSTRAINT `FK_1392A5D8A53A8AA` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`);

--
-- Contraintes pour la table `voucher_item`
--
ALTER TABLE `voucher_item`
  ADD CONSTRAINT `FK_1E76A5A628AA1B6F` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`),
  ADD CONSTRAINT `FK_1E76A5A655BFF85F` FOREIGN KEY (`mp_id`) REFERENCES `mp` (`id`),
  ADD CONSTRAINT `FK_1E76A5A65DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`),
  ADD CONSTRAINT `FK_1E76A5A66B173DB7` FOREIGN KEY (`trade_product_id`) REFERENCES `trade_product` (`id`),
  ADD CONSTRAINT `FK_1E76A5A681747B75` FOREIGN KEY (`purchase_mp_id`) REFERENCES `purchase_mp` (`id`),
  ADD CONSTRAINT `FK_1E76A5A6880FF482` FOREIGN KEY (`purchase_waste_recycled_id`) REFERENCES `purchase_waste_recycled` (`id`),
  ADD CONSTRAINT `FK_1E76A5A6BAD3BD95` FOREIGN KEY (`purchase_trade_product_id`) REFERENCES `purchase_trade_product` (`id`),
  ADD CONSTRAINT `FK_1E76A5A6FFFA4667` FOREIGN KEY (`provider_lot_id`) REFERENCES `provider_lot` (`id`);

--
-- Contraintes pour la table `waste_recycled`
--
ALTER TABLE `waste_recycled`
  ADD CONSTRAINT `FK_7D240A90A78BE50F` FOREIGN KEY (`waste_recycled_type_id`) REFERENCES `waste_recycled_type` (`id`),
  ADD CONSTRAINT `FK_7D240A90F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`);

--
-- Contraintes pour la table `waste_recycled_consumption`
--
ALTER TABLE `waste_recycled_consumption`
  ADD CONSTRAINT `FK_BB68C2B75DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`);

--
-- Contraintes pour la table `waste_recycled_process_step_waste_recycled`
--
ALTER TABLE `waste_recycled_process_step_waste_recycled`
  ADD CONSTRAINT `FK_FB17ED225DBE71E6` FOREIGN KEY (`waste_recycled_id`) REFERENCES `waste_recycled` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FB17ED22994D2AE5` FOREIGN KEY (`process_step_waste_recycled_id`) REFERENCES `process_step_waste_recycled` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
