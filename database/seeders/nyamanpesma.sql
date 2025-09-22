-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2025 at 04:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyamanpesma`
--

-- --------------------------------------------------------

--
-- Table structure for table `asrama`
--

CREATE TABLE `asrama` (
  `id_asrama` bigint(20) UNSIGNED NOT NULL,
  `nama_asrama` varchar(255) NOT NULL,
  `kapasitas` int(11) NOT NULL DEFAULT 3,
  `status` enum('tersedia','penuh','maintenance') NOT NULL DEFAULT 'tersedia',
  `harga_bulanan` decimal(12,2) NOT NULL DEFAULT 685000.00,
  `harga_tahunan` decimal(12,2) NOT NULL DEFAULT 1655000.00,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `fasilitas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fasilitas`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asrama`
--

INSERT INTO `asrama` (`id_asrama`, `nama_asrama`, `kapasitas`, `status`, `harga_bulanan`, `harga_tahunan`, `foto`, `deskripsi`, `fasilitas`, `created_at`, `updated_at`) VALUES
(1, 'Asrama Perempuan 1', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 1.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(2, 'Asrama Perempuan 2', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 2.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(3, 'Asrama Perempuan 3', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 3.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(4, 'Asrama Perempuan 4', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 4.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(5, 'Asrama Perempuan 5', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 5.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(6, 'Asrama Perempuan 6', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 6.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(7, 'Asrama Perempuan 7', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 7.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(8, 'Asrama Perempuan 8', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 8.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(9, 'Asrama Perempuan 9', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 9.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(10, 'Asrama Perempuan 10', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 10.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(11, 'Asrama Perempuan 11', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 11.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(12, 'Asrama Perempuan 12', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 12.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(13, 'Asrama Perempuan 13', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 13.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(14, 'Asrama Perempuan 14', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 14.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(15, 'Asrama Perempuan 15', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 15.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(16, 'Asrama Perempuan 16', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 16.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(17, 'Asrama Perempuan 17', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 17.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(18, 'Asrama Perempuan 18', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 18.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(19, 'Asrama Perempuan 19', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 19.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(20, 'Asrama Perempuan 20', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 20.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(21, 'Asrama Perempuan 21', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 21.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(22, 'Asrama Perempuan 22', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 22.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(23, 'Asrama Perempuan 23', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 23.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(24, 'Asrama Perempuan 24', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 24.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(25, 'Asrama Perempuan 25', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 25.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(26, 'Asrama Perempuan 26', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 26.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(27, 'Asrama Perempuan 27', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 27.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(28, 'Asrama Perempuan 28', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 28.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(29, 'Asrama Perempuan 29', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 29.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(30, 'Asrama Perempuan 30', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 30.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(31, 'Asrama Perempuan 31', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 31.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(32, 'Asrama Perempuan 32', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 32.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(33, 'Asrama Perempuan 33', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 33.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(34, 'Asrama Perempuan 34', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 34.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(35, 'Asrama Perempuan 35', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 35.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(36, 'Asrama Perempuan 36', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 36.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(37, 'Asrama Perempuan 37', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 37.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(38, 'Asrama Perempuan 38', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 38.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(39, 'Asrama Perempuan 39', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 39.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(40, 'Asrama Perempuan 40', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 40.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(41, 'Asrama Perempuan 41', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 41.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(42, 'Asrama Perempuan 42', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 42.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(43, 'Asrama Perempuan 43', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 43.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(44, 'Asrama Perempuan 44', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 44.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(45, 'Asrama Perempuan 45', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 45.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(46, 'Asrama Perempuan 46', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 46.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(47, 'Asrama Perempuan 47', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 47.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(48, 'Asrama Perempuan 48', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus perempuan nomor 48.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(49, 'Asrama Laki-laki 1', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 1.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(50, 'Asrama Laki-laki 2', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 2.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(51, 'Asrama Laki-laki 3', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 3.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(52, 'Asrama Laki-laki 4', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 4.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(53, 'Asrama Laki-laki 5', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 5.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(54, 'Asrama Laki-laki 6', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 6.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(55, 'Asrama Laki-laki 7', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 7.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(56, 'Asrama Laki-laki 8', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 8.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(57, 'Asrama Laki-laki 9', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 9.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(58, 'Asrama Laki-laki 10', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 10.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(59, 'Asrama Laki-laki 11', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 11.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(60, 'Asrama Laki-laki 12', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 12.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(61, 'Asrama Laki-laki 13', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 13.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(62, 'Asrama Laki-laki 14', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 14.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(63, 'Asrama Laki-laki 15', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 15.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(64, 'Asrama Laki-laki 16', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 16.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(65, 'Asrama Laki-laki 17', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 17.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(66, 'Asrama Laki-laki 18', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 18.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(67, 'Asrama Laki-laki 19', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 19.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(68, 'Asrama Laki-laki 20', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 20.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(69, 'Asrama Laki-laki 21', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 21.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(70, 'Asrama Laki-laki 22', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 22.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(71, 'Asrama Laki-laki 23', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 23.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(72, 'Asrama Laki-laki 24', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 24.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(73, 'Asrama Laki-laki 25', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 25.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(74, 'Asrama Laki-laki 26', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 26.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(75, 'Asrama Laki-laki 27', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 27.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(76, 'Asrama Laki-laki 28', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 28.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(77, 'Asrama Laki-laki 29', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 29.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(78, 'Asrama Laki-laki 30', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 30.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(79, 'Asrama Laki-laki 31', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 31.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(80, 'Asrama Laki-laki 32', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 32.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(81, 'Asrama Laki-laki 33', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 33.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(82, 'Asrama Laki-laki 34', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 34.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(83, 'Asrama Laki-laki 35', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 35.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(84, 'Asrama Laki-laki 36', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 36.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(85, 'Asrama Laki-laki 37', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 37.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(86, 'Asrama Laki-laki 38', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 38.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(87, 'Asrama Laki-laki 39', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 39.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(88, 'Asrama Laki-laki 40', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 40.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(89, 'Asrama Laki-laki 41', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 41.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(90, 'Asrama Laki-laki 42', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 42.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(91, 'Asrama Laki-laki 43', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 43.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(92, 'Asrama Laki-laki 44', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 44.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(93, 'Asrama Laki-laki 45', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 45.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(94, 'Asrama Laki-laki 46', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 46.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(95, 'Asrama Laki-laki 47', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 47.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50'),
(96, 'Asrama Laki-laki 48', 3, 'tersedia', 685000.00, 1655000.00, NULL, 'Asrama khusus laki-laki nomor 48.', '[\"Kasur\",\"Bantal\",\"Ember\",\"Kipas\",\"Lemari\",\"Kamar Mandi\"]', '2025-09-07 07:46:50', '2025-09-07 07:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_01_010134_create_kamar_table', 1),
(5, '2025_09_01_010143_create_fasilitas_table', 1),
(6, '2025_09_04_094029_create_biaya_table', 2),
(7, '2025_09_07_144545_create_asrama_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Pondok', 'admin@nyamanpesma.com', '$2y$12$zmy3WHJ4ZR78X9sCEatdP.Z3U7sRk6q1ceOdthLatjmBoaOksMC0G', 'admin', NULL, '2025-09-04 02:42:24', '2025-09-04 02:42:24'),
(2, 'Santri 1', 'santri1@nyamanpesma.com', '$2y$12$jeayf/aDp6Y3XYG8xuoQu.DZN6koF7GTuysTcesib5N3CtbPfBH7O', 'user', NULL, '2025-08-31 18:28:45', '2025-08-31 18:28:45'),
(3, 'Santri 2', 'santri2@nyamanpesma.com', '$2y$12$lK6opKGooH1NWQVBCLEftuFClQFpwlhUYB1OjJBORjy5/e.nugczW', 'user', NULL, '2025-08-31 18:28:45', '2025-08-31 18:28:45'),
(4, 'Santri 3', 'santri3@nyamanpesma.com', '$2y$12$plahAErkUqiBbFYvtXjAluzXBECXUCcnkRBOax7S.LyR.PtMsHnOC', 'user', NULL, '2025-08-31 18:28:45', '2025-08-31 18:28:45'),
(5, 'Santri 4', 'santri4@nyamanpesma.com', '$2y$12$C4jgERj1hgSnQP9HG66UHOo6boN10r1lXIlhmiU2vzn.Owv3uDAk.', 'user', NULL, '2025-08-31 18:28:46', '2025-08-31 18:28:46'),
(6, 'Santri 5', 'santri5@nyamanpesma.com', '$2y$12$.BpC2vmjpaSiaSaUBZNigOxG8O6XnrgQjPf2uDF4XNzgfRiRNMX86', 'user', NULL, '2025-08-31 18:28:46', '2025-08-31 18:28:46'),
(7, 'Santri 6', 'santri6@nyamanpesma.com', '$2y$12$JCRuWvsoY8afWeKW8O/YkuPeiPrSlA96u7DeHbxDIhNAVRVqvTbhW', 'user', NULL, '2025-08-31 18:28:46', '2025-08-31 18:28:46'),
(8, 'Santri 7', 'santri7@nyamanpesma.com', '$2y$12$tTO6lXq6FIVw2Wi5i08OuOXOzxinkGSwzakDlzh/Yrc9RdcNv0XRm', 'user', NULL, '2025-08-31 18:28:46', '2025-08-31 18:28:46'),
(9, 'Santri 8', 'santri8@nyamanpesma.com', '$2y$12$WxGevf.NZsLCepINLUHzD.bvAFpiYkQyInk6NLzR.5Ob2jUF1mmzG', 'user', NULL, '2025-08-31 18:28:46', '2025-08-31 18:28:46'),
(10, 'Santri 9', 'santri9@nyamanpesma.com', '$2y$12$vdgOFZqaxEaaoqw7xUTjROTSUT3ONgUCvFYPVysauaQ8jDy9KzkZO', 'user', NULL, '2025-08-31 18:28:47', '2025-08-31 18:28:47'),
(11, 'Santri 10', 'santri10@nyamanpesma.com', '$2y$12$P1uZl2mB47aPfcMxEjJFp.3GfhmH4VmES3OPmN.UWzoODyY8Omz4i', 'user', NULL, '2025-08-31 18:28:47', '2025-08-31 18:28:47'),
(12, 'Santri 11', 'santri11@nyamanpesma.com', '$2y$12$5PR1se/.q3SVXfcw5cbOmOL.Y.WlZMJkW.p/M/H6P.WFZMyIRrNPi', 'user', NULL, '2025-08-31 18:28:47', '2025-08-31 18:28:47'),
(13, 'Santri 12', 'santri12@nyamanpesma.com', '$2y$12$LAzscqrM7d5U96hi0YEsn.Mq2JSiiYvZO0Ngu4eRo8n9/e39LPkKu', 'user', NULL, '2025-08-31 18:28:47', '2025-08-31 18:28:47'),
(14, 'Santri 13', 'santri13@nyamanpesma.com', '$2y$12$HdkaVrAyEYsEIUyx9El4Z.s.oVv6vymrqK6OcfxgR2h5MUWAwu7Ga', 'user', NULL, '2025-08-31 18:28:48', '2025-08-31 18:28:48'),
(15, 'Santri 14', 'santri14@nyamanpesma.com', '$2y$12$9BRcnwVPoPirEuZBBEbHSOHVFpcPuZflYxcp2mviZx2lHIEHHLtcq', 'user', NULL, '2025-08-31 18:28:48', '2025-08-31 18:28:48'),
(16, 'Santri 15', 'santri15@nyamanpesma.com', '$2y$12$5wi8BEU19Pjv1.DAY.F1PejVmwrxwwONWzdhzabs6IzkpjKCDxV0e', 'user', NULL, '2025-08-31 18:28:48', '2025-08-31 18:28:48'),
(17, 'Santri 16', 'santri16@nyamanpesma.com', '$2y$12$2FC9npa9WN4l18jXyQOZ9.YMCnu83zDQ5ZgTnAWoZZfqPXh8x7htW', 'user', NULL, '2025-08-31 18:28:48', '2025-08-31 18:28:48'),
(18, 'Santri 17', 'santri17@nyamanpesma.com', '$2y$12$as4Y5wD8EdxD9q/ZIWzMBOLlWbnR/AufF/Lh7CKo3VM9RkaLsfaVK', 'user', NULL, '2025-08-31 18:28:48', '2025-08-31 18:28:48'),
(19, 'Santri 18', 'santri18@nyamanpesma.com', '$2y$12$0uh.t89TMeVL5dl7/3772OTNfyXGMXJCIIOHezePEOz0i0ZalNBWC', 'user', NULL, '2025-08-31 18:28:49', '2025-08-31 18:28:49'),
(20, 'Santri 19', 'santri19@nyamanpesma.com', '$2y$12$PxKVYN4XajHD8bhY3vUrbu3Cj62grDQ.DQvUVNaP6wOt/JBNIKdYe', 'user', NULL, '2025-08-31 18:28:49', '2025-08-31 18:28:49'),
(21, 'Santri 20', 'santri20@nyamanpesma.com', '$2y$12$o789TM705yeE4EhjlecZ9ebOD438iHL.4Z2WbqmdRO/QM6Gg8q8au', 'user', NULL, '2025-08-31 18:28:49', '2025-08-31 18:28:49'),
(22, 'Santri 21', 'santri21@nyamanpesma.com', '$2y$12$fyOSiNsmYtVKIX1TeMMWsuLv6ijbXDeOaVu7tgPjGV07sAMvHoH/m', 'user', NULL, '2025-08-31 18:28:49', '2025-08-31 18:28:49'),
(23, 'Santri 22', 'santri22@nyamanpesma.com', '$2y$12$UsAivxcVJktUBm1PYMb7Ve8.y9zE6oi0fHgLUQZLhz/QBaE1LV36i', 'user', NULL, '2025-08-31 18:28:49', '2025-08-31 18:28:49'),
(24, 'Santri 23', 'santri23@nyamanpesma.com', '$2y$12$IUpejiHWrUR2QlW2eHAnTeFIN2yZkvKqfzqWiGDesfI5L2VXapHaa', 'user', NULL, '2025-08-31 18:28:50', '2025-08-31 18:28:50'),
(25, 'Santri 24', 'santri24@nyamanpesma.com', '$2y$12$3fABIE5BnY/OsEjzAGZtv.kGe8DWVcSnPSUMBFJR8N23kJQmTdfNu', 'user', NULL, '2025-08-31 18:28:50', '2025-08-31 18:28:50'),
(26, 'Santri 25', 'santri25@nyamanpesma.com', '$2y$12$owY.TJdvtWMRFJJG4cnn.O/oEGiQ819zEdv4zQyJ5BOhHu0AbxsdO', 'user', NULL, '2025-08-31 18:28:50', '2025-08-31 18:28:50'),
(27, 'Santri 26', 'santri26@nyamanpesma.com', '$2y$12$AE5l1f1wY7SR2DfVuqnLbuuMP8yXxtWW13pnrCBFN2OgnLUcW9rZi', 'user', NULL, '2025-08-31 18:28:50', '2025-08-31 18:28:50'),
(28, 'Santri 27', 'santri27@nyamanpesma.com', '$2y$12$5PELPMYRTEwytMhL.AmYBOcS7G2bSqBbxQVuGE7WutzxdpVJP4Fe2', 'user', NULL, '2025-08-31 18:28:51', '2025-08-31 18:28:51'),
(29, 'Santri 28', 'santri28@nyamanpesma.com', '$2y$12$O9xAgS5O/AX1iZSCOhRqw.2kHhQlHCdd50VL5p96BrLCaKfTz6fHa', 'user', NULL, '2025-08-31 18:28:51', '2025-08-31 18:28:51'),
(30, 'Santri 29', 'santri29@nyamanpesma.com', '$2y$12$Oq0TPIfv0jbvMbNKpqFdLOPO721jVUcS4E7u6Ue/WJMtRbDn3bFgm', 'user', NULL, '2025-08-31 18:28:51', '2025-08-31 18:28:51'),
(31, 'Santri 30', 'santri30@nyamanpesma.com', '$2y$12$cXGGMaTtFEzvJE4mS9U1/.NyyFZBU3X/L/2GjzvNlkY9eFGi6MF7O', 'user', NULL, '2025-08-31 18:28:51', '2025-08-31 18:28:51'),
(32, 'Santri 31', 'santri31@nyamanpesma.com', '$2y$12$OzJByZ44SFVjZJhZCjOLreZr7P8IGzxHNDmSRwQBq4SKoav7hp7vO', 'user', NULL, '2025-08-31 18:28:51', '2025-08-31 18:28:51'),
(33, 'Santri 32', 'santri32@nyamanpesma.com', '$2y$12$a7saY9rt6vELYpvIau0bf./FL6EHf3P6tc5DVK93uYqra5Fbp8GxK', 'user', NULL, '2025-08-31 18:28:52', '2025-08-31 18:28:52'),
(34, 'Santri 33', 'santri33@nyamanpesma.com', '$2y$12$ENUbrSYCgtQcQlPqzrmJjesvKUku4pNlgbheCZAcd30SMPgDVBST.', 'user', NULL, '2025-08-31 18:28:52', '2025-08-31 18:28:52'),
(35, 'Santri 34', 'santri34@nyamanpesma.com', '$2y$12$s6.YjU4bVncuxCXX3Goq3uJbd0KTW/kczaNuN94zJQIgDmnZm6L56', 'user', NULL, '2025-08-31 18:28:52', '2025-08-31 18:28:52'),
(36, 'Santri 35', 'santri35@nyamanpesma.com', '$2y$12$QX.Rcv5c/5FWORhENmZisOgrqUAtpk9TWevsIkLEyMRFjYD8rKC5m', 'user', NULL, '2025-08-31 18:28:52', '2025-08-31 18:28:52'),
(37, 'Santri 36', 'santri36@nyamanpesma.com', '$2y$12$8OPKEnKLEY7G1mcajjMMkeLLmb6h.9cguYh1ky4hDf1GgIgMcQX96', 'user', NULL, '2025-08-31 18:28:53', '2025-08-31 18:28:53'),
(38, 'Santri 37', 'santri37@nyamanpesma.com', '$2y$12$Ug4x4d1jG14W4reflIDBK.RBj1wds.I2dZA9iC0P9OzCObSd67Vuy', 'user', NULL, '2025-08-31 18:28:53', '2025-08-31 18:28:53'),
(39, 'Santri 38', 'santri38@nyamanpesma.com', '$2y$12$n78y/nxusAmsYMF3nGCo4uZfty7vt0uezGmmQK4SgWFpM16ZiicZq', 'user', NULL, '2025-08-31 18:28:53', '2025-08-31 18:28:53'),
(40, 'Santri 39', 'santri39@nyamanpesma.com', '$2y$12$1IbnPqmw3ivUOV8yp1zwmOMxIpje4Il.008gValfZfi4.0Yb7W2Fe', 'user', NULL, '2025-08-31 18:28:54', '2025-08-31 18:28:54'),
(41, 'Santri 40', 'santri40@nyamanpesma.com', '$2y$12$dBS488.haZFh/YRBPM88EuvQKjeKLlkCCOJoM90g5R7UWaV2/ZjSS', 'user', NULL, '2025-08-31 18:28:54', '2025-08-31 18:28:54'),
(42, 'Santri 41', 'santri41@nyamanpesma.com', '$2y$12$m0DJR0QNrlW6E9eg/ea55.l0IdOjAHUYweVtkrIIQy0oLo3fZrxRq', 'user', NULL, '2025-08-31 18:28:54', '2025-08-31 18:28:54'),
(43, 'Santri 42', 'santri42@nyamanpesma.com', '$2y$12$h.dQVbpacdaGrWPrCi880eqIcJos34dEzXB.vxIyG3xR4J9t7N.4m', 'user', NULL, '2025-08-31 18:28:55', '2025-08-31 18:28:55'),
(44, 'Santri 43', 'santri43@nyamanpesma.com', '$2y$12$/V8qrUNLSDYwzDodv2YWjufuRGZIPPHRMa8XT2hSmoeSoNhpEswga', 'user', NULL, '2025-08-31 18:28:55', '2025-08-31 18:28:55'),
(45, 'Santri 44', 'santri44@nyamanpesma.com', '$2y$12$wTEJWBUHNZ/H4xHQobAnqe6fsSGK0GbokJomDt5wb5PWp./85cRZS', 'user', NULL, '2025-08-31 18:28:55', '2025-08-31 18:28:55'),
(46, 'Santri 45', 'santri45@nyamanpesma.com', '$2y$12$pY0VPxt7I2S8CHfCCL3FDO7KaNtBQ8NayL/5n9EwP5PrESyfAamnK', 'user', NULL, '2025-08-31 18:28:56', '2025-08-31 18:28:56'),
(47, 'Santri 46', 'santri46@nyamanpesma.com', '$2y$12$q3ZgJ6fRFcWTjAkEAthk1eQ7weNNbsU5bq/aPLVm0ujKNB/84G7Zi', 'user', NULL, '2025-08-31 18:28:56', '2025-08-31 18:28:56'),
(48, 'Santri 47', 'santri47@nyamanpesma.com', '$2y$12$X/A6FV3Gl9tRIQdD6yV1GuCp5boaijmt/SXuU3Md9y1WnwO0wCpJ.', 'user', NULL, '2025-08-31 18:28:56', '2025-08-31 18:28:56'),
(49, 'Santri 48', 'santri48@nyamanpesma.com', '$2y$12$dQ4ZsKkcVHPB2XtgMHI2rO3kM/9q/3pJvmqp69WlS7W5/fjAcW/dS', 'user', NULL, '2025-08-31 18:28:57', '2025-08-31 18:28:57'),
(50, 'Santri 49', 'santri49@nyamanpesma.com', '$2y$12$attLsOWaPM/IddLAoeWIv.gIH1hUtyQEceK6uznGa2VZSMpFq.7cW', 'user', NULL, '2025-08-31 18:28:57', '2025-08-31 18:28:57'),
(51, 'Santri 50', 'santri50@nyamanpesma.com', '$2y$12$flSLeu7jXrBWUCjmUAcrzeubqCYsmBZkEwWZoMYrkb9gCvJaCR.mO', 'user', NULL, '2025-08-31 18:28:57', '2025-08-31 18:28:57'),
(52, 'Santri 51', 'santri51@nyamanpesma.com', '$2y$12$UtUvxSszeN0nl02oTnTdgORrCsYr2zy1Bjvm9Q21X46K7t0Y6uVe.', 'user', NULL, '2025-08-31 18:28:57', '2025-08-31 18:28:57'),
(53, 'Santri 52', 'santri52@nyamanpesma.com', '$2y$12$YsNetZFQsPg2oiJGYA0pQO1fqMOFEoVlNJa6X9wCSOV57uluX90mS', 'user', NULL, '2025-08-31 18:28:58', '2025-08-31 18:28:58'),
(54, 'Santri 53', 'santri53@nyamanpesma.com', '$2y$12$VcMPqxQzxV8Xu7JTqI.coenR4CKFVdoHbTUJjgE94nJucWNKhKDWa', 'user', NULL, '2025-08-31 18:28:58', '2025-08-31 18:28:58'),
(55, 'Santri 54', 'santri54@nyamanpesma.com', '$2y$12$nj7UKTGCew6wJi6Py3yrJ.HpbCxIws7tZPIZ8Z17DFFADHWMSqeG6', 'user', NULL, '2025-08-31 18:28:59', '2025-08-31 18:28:59'),
(56, 'Santri 55', 'santri55@nyamanpesma.com', '$2y$12$010FSkf1im96G26gYkxjnuEsvaKD2AvIAnqaiMr26fKE8Ijxd.T8y', 'user', NULL, '2025-08-31 18:28:59', '2025-08-31 18:28:59'),
(57, 'Santri 56', 'santri56@nyamanpesma.com', '$2y$12$7Jj8lNRQdtMdWe.WiwbHzOAhYSMrIz1V6z.Jkw6VewUymMyTrhVVS', 'user', NULL, '2025-08-31 18:28:59', '2025-08-31 18:28:59'),
(58, 'Santri 57', 'santri57@nyamanpesma.com', '$2y$12$4TIULt/1lBCZj1kWQE3OW.JotSdgWUshn7/wrokHlX7nIrXEQv7by', 'user', NULL, '2025-08-31 18:29:00', '2025-08-31 18:29:00'),
(59, 'Santri 58', 'santri58@nyamanpesma.com', '$2y$12$3.0NlJNWoHZUG5u0jcDHl.AM3C41i1ebgtMD/4tHwmkMmOeQzgfjy', 'user', NULL, '2025-08-31 18:29:00', '2025-08-31 18:29:00'),
(60, 'Santri 59', 'santri59@nyamanpesma.com', '$2y$12$WEaHji.MsEJIs5afI3qFVuoG2b1LkZ00/bCyGZfMNMU7MGAEUnWvG', 'user', NULL, '2025-08-31 18:29:00', '2025-08-31 18:29:00'),
(61, 'Santri 60', 'santri60@nyamanpesma.com', '$2y$12$D/mbiNlXEcvjkl65mIIMuuSPFmYnYl/BsxRIOjjvorxKAaQ3HVtVa', 'user', NULL, '2025-08-31 18:29:01', '2025-08-31 18:29:01'),
(62, 'Santri 61', 'santri61@nyamanpesma.com', '$2y$12$r.rzi5BzGPgEqrNz4RTbR.ccBb5wXNVqJQ558QsMLDp3YIhz5Kgwi', 'user', NULL, '2025-08-31 18:29:01', '2025-08-31 18:29:01'),
(63, 'Santri 62', 'santri62@nyamanpesma.com', '$2y$12$EZAB/k4hHZhbDwIzAwjxG.njoUmkv9ESzJ7AjhtaogIAoNF1TGtvW', 'user', NULL, '2025-08-31 18:29:01', '2025-08-31 18:29:01'),
(64, 'Santri 63', 'santri63@nyamanpesma.com', '$2y$12$XY.HqQpreuOQJdJxxxU/aOTdcxnUejCDVoTZ6Ll3Zg5fdBZmdVn0e', 'user', NULL, '2025-08-31 18:29:02', '2025-08-31 18:29:02'),
(65, 'Santri 64', 'santri64@nyamanpesma.com', '$2y$12$TlLsLj/GkrvSno86Yi.WaOjxJn.UDQbQ3IeFhZHvoCtY/Qo.C3xTy', 'user', NULL, '2025-08-31 18:29:02', '2025-08-31 18:29:02'),
(66, 'Santri 65', 'santri65@nyamanpesma.com', '$2y$12$IMMLTJc69XwNPcMeYMwJV.etMfvbqn9.QBcqEngDpHActL1fUanu6', 'user', NULL, '2025-08-31 18:29:03', '2025-08-31 18:29:03'),
(67, 'Santri 66', 'santri66@nyamanpesma.com', '$2y$12$PKQO1gunF94Yx1k0FHDQPOrqUJGUv4RaPqTzZjnL48L5RI87h9/qC', 'user', NULL, '2025-08-31 18:29:03', '2025-08-31 18:29:03'),
(68, 'Santri 67', 'santri67@nyamanpesma.com', '$2y$12$I7FthBkYAYCfra/.2N0Yl.KHRtTAl18oYcvlZWtXNsbUQcoqnLGx6', 'user', NULL, '2025-08-31 18:29:03', '2025-08-31 18:29:03'),
(69, 'Santri 68', 'santri68@nyamanpesma.com', '$2y$12$oe/GOd7mlmAaqgWPFjQePeiPiCJSwu1dE.CGVJZ4hgb7UUGtjyqp2', 'user', NULL, '2025-08-31 18:29:04', '2025-08-31 18:29:04'),
(70, 'Santri 69', 'santri69@nyamanpesma.com', '$2y$12$qdXJsJkj3My9ykMcJQ4jneLfXnZJUIadtejtUxQPNoRT3paEqHxUe', 'user', NULL, '2025-08-31 18:29:04', '2025-08-31 18:29:04'),
(71, 'Santri 70', 'santri70@nyamanpesma.com', '$2y$12$4W00VPhyewvkIKP.BkdNC.p1zKzqzzF5ZoUumyRQAPxt1HdettYo2', 'user', NULL, '2025-08-31 18:29:05', '2025-08-31 18:29:05'),
(72, 'Santri 71', 'santri71@nyamanpesma.com', '$2y$12$cekG4Wn2T701qYI/37qa/uR7LcIQwjS/ndk55Vi0cZOKgeREiKeFG', 'user', NULL, '2025-08-31 18:29:05', '2025-08-31 18:29:05'),
(73, 'Santri 72', 'santri72@nyamanpesma.com', '$2y$12$3Tc.bk9WMi73nWpeJmY3XeokeY90s0mY5QjQKddfPGz01CsIc.5A6', 'user', NULL, '2025-08-31 18:29:05', '2025-08-31 18:29:05'),
(74, 'Santri 73', 'santri73@nyamanpesma.com', '$2y$12$gnInMOxqWT7DQtMPoJBwzubwi5QguYjy82M9GR/GSi1gHeVRK1zEG', 'user', NULL, '2025-08-31 18:29:06', '2025-08-31 18:29:06'),
(75, 'Santri 74', 'santri74@nyamanpesma.com', '$2y$12$c5QWKbFJ4b8pUFxhnDmWnOJGgq6YWWi6d/XQfhwWdWnD97i9nZg8u', 'user', NULL, '2025-08-31 18:29:06', '2025-08-31 18:29:06'),
(76, 'Santri 75', 'santri75@nyamanpesma.com', '$2y$12$arh82o3l2if63cl3LOU5mu1ux8bcOJX9FrZ/PUdDz0KUbWH7YEH2y', 'user', NULL, '2025-08-31 18:29:06', '2025-08-31 18:29:06'),
(77, 'Santri 76', 'santri76@nyamanpesma.com', '$2y$12$kzPnabfq50Ryx9qYO2ASOuPAN9QFuN22sOB9v8Q/L4dXRiMHrS8/W', 'user', NULL, '2025-08-31 18:29:07', '2025-08-31 18:29:07'),
(78, 'Santri 77', 'santri77@nyamanpesma.com', '$2y$12$ZlL.jRYxyjxBsDv.ol0wi..KGMHbDd3UiBtTBnsd30s5853jmzV7.', 'user', NULL, '2025-08-31 18:29:07', '2025-08-31 18:29:07'),
(79, 'Santri 78', 'santri78@nyamanpesma.com', '$2y$12$YRBLkUsCJB1FXcHjxD2GzuadN6gntpwOFE4B/ySM3ApTAIKwqJEoS', 'user', NULL, '2025-08-31 18:29:07', '2025-08-31 18:29:07'),
(80, 'Santri 79', 'santri79@nyamanpesma.com', '$2y$12$e52cqj4ZJliwhrQ8/Vt15.sAKpZISAKo9GmyijQjwa/xyB0MXwtOi', 'user', NULL, '2025-08-31 18:29:08', '2025-08-31 18:29:08'),
(81, 'Santri 80', 'santri80@nyamanpesma.com', '$2y$12$ZC9oN1pT4QVUwtFA82BySe5vehiYS/Ddg/QnKnEUMqDi7JKaHAaIG', 'user', NULL, '2025-08-31 18:29:08', '2025-08-31 18:29:08'),
(82, 'Santri 81', 'santri81@nyamanpesma.com', '$2y$12$ccffVTvjK0a.gQIVkqM7ZellecjvS65iqFRPi.wRsR7DrhoqTFxOq', 'user', NULL, '2025-08-31 18:29:08', '2025-08-31 18:29:08'),
(83, 'Santri 82', 'santri82@nyamanpesma.com', '$2y$12$QAUVv0vP/upK4swmp3ciPOFBnhe0gxC.soPgQIECNa6u2pQO0RrKK', 'user', NULL, '2025-08-31 18:29:09', '2025-08-31 18:29:09'),
(84, 'Santri 83', 'santri83@nyamanpesma.com', '$2y$12$s9o/6DdhZjUQr4Izcv8DgesgSWWrQNUhkasoipoJcrxtsdG6mV.Ne', 'user', NULL, '2025-08-31 18:29:09', '2025-08-31 18:29:09'),
(85, 'Santri 84', 'santri84@nyamanpesma.com', '$2y$12$Zu3bCebh22m1iPTiLY5o0ewMzb6/2JMo6DKuJ3OT69utYu3eElvGO', 'user', NULL, '2025-08-31 18:29:09', '2025-08-31 18:29:09'),
(86, 'Santri 85', 'santri85@nyamanpesma.com', '$2y$12$T3XZnG18O/aPyb6hTqeIb.Nb1J.XeLv3bxolMgEvub5EErWiBWWxK', 'user', NULL, '2025-08-31 18:29:10', '2025-08-31 18:29:10'),
(87, 'Santri 86', 'santri86@nyamanpesma.com', '$2y$12$XzhHzFY19gj9p8nEq3fPmO/moHxMe8O5DzbvTVaB49HwuMXgKXywS', 'user', NULL, '2025-08-31 18:29:10', '2025-08-31 18:29:10'),
(88, 'Santri 87', 'santri87@nyamanpesma.com', '$2y$12$87vGkGUtBFMCqQGBbLUO2OA6ooNgEnMR2RxnxVhai8gAPRCQTIwSu', 'user', NULL, '2025-08-31 18:29:10', '2025-08-31 18:29:10'),
(89, 'Santri 88', 'santri88@nyamanpesma.com', '$2y$12$PqEeaGiPilSRbm5sXpCbSuprex9vZYVGeWTyXltUQaHS2dxiaYztW', 'user', NULL, '2025-08-31 18:29:11', '2025-08-31 18:29:11'),
(90, 'Santri 89', 'santri89@nyamanpesma.com', '$2y$12$Lqw0oVamut8fX4i.X2nDye9Nroj6XV.M/VmEsLueNJQIAUmXNpC2W', 'user', NULL, '2025-08-31 18:29:11', '2025-08-31 18:29:11'),
(91, 'Santri 90', 'santri90@nyamanpesma.com', '$2y$12$wmZaz/bE7QdcoLeqZ2EdJeTZ2WE5qNLywY78HFrYkTX2m9C7zmS/y', 'user', NULL, '2025-08-31 18:29:11', '2025-08-31 18:29:11'),
(92, 'Santri 91', 'santri91@nyamanpesma.com', '$2y$12$H6pomcaExvLLECW47GFIy.fV0XwAu9QjAvZAPYt81QMUsLRW4sJrC', 'user', NULL, '2025-08-31 18:29:12', '2025-08-31 18:29:12'),
(93, 'Santri 92', 'santri92@nyamanpesma.com', '$2y$12$BhFMrv.ZTDnReTQ4.Gjl9upkqkp7TtmVBuodncpWafFdrHQfgxXNi', 'user', NULL, '2025-08-31 18:29:12', '2025-08-31 18:29:12'),
(94, 'Santri 93', 'santri93@nyamanpesma.com', '$2y$12$li44rlGeK9AGHp4a9kklXe9bEpsxZhV0ibBoD1VYTLc8y7C5ueKZm', 'user', NULL, '2025-08-31 18:29:12', '2025-08-31 18:29:12'),
(95, 'Santri 94', 'santri94@nyamanpesma.com', '$2y$12$ryx1Id0qnUpyf.GqHYir3eFn5vqzc/w6rdzcuZQM4JKKbLn0yd98q', 'user', NULL, '2025-08-31 18:29:13', '2025-08-31 18:29:13'),
(96, 'Santri 95', 'santri95@nyamanpesma.com', '$2y$12$prlwaibcjanPlG1xQcCg5OfSOn.Ev5pkklN6lBsfe8Wdj9fku14kS', 'user', NULL, '2025-08-31 18:29:13', '2025-08-31 18:29:13'),
(97, 'Santri 96', 'santri96@nyamanpesma.com', '$2y$12$F7xRvghhEWOnfMY9qeBkWuaD4ByteW1m6rv8Kiugz4AEwW8J1Irc.', 'user', NULL, '2025-08-31 18:29:13', '2025-08-31 18:29:13'),
(98, 'Santri 97', 'santri97@nyamanpesma.com', '$2y$12$h8ycyK/oYu6zvLDVhFiM.ObXSc.R5RA8JtStPgaI2bKzdKdgOxiXa', 'user', NULL, '2025-08-31 18:29:14', '2025-08-31 18:29:14'),
(99, 'Santri 98', 'santri98@nyamanpesma.com', '$2y$12$UUgDX0WU4Qw7COgrUlNEju3rvnijpzsMNruwRW986Cq7tgVuB/oYq', 'user', NULL, '2025-08-31 18:29:14', '2025-08-31 18:29:14'),
(100, 'Santri 99', 'santri99@nyamanpesma.com', '$2y$12$1AFSJEDfj36sU3ci9GLrY.P8p/TNSO9Qjqh4KBCApRKNWb4thr/1u', 'user', NULL, '2025-08-31 18:29:15', '2025-08-31 18:29:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asrama`
--
ALTER TABLE `asrama`
  ADD PRIMARY KEY (`id_asrama`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `asrama`
--
ALTER TABLE `asrama`
  MODIFY `id_asrama` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
