-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Agu 2023 pada 20.29
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pindad`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `allowance`
--

CREATE TABLE `allowance` (
  `id` tinyint(4) DEFAULT NULL,
  `overtime` tinyint(4) DEFAULT NULL,
  `medical` tinyint(4) DEFAULT NULL,
  `bonus` tinyint(4) DEFAULT NULL,
  `other` tinyint(4) DEFAULT NULL,
  `emp_id` tinyint(4) DEFAULT NULL,
  `salary` smallint(6) DEFAULT NULL,
  `rate` decimal(3,1) DEFAULT NULL,
  `total_allowance` decimal(5,2) DEFAULT NULL,
  `firstname` varchar(5) DEFAULT NULL,
  `surname` varchar(5) DEFAULT NULL,
  `created_by` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `allowance`
--

INSERT INTO `allowance` (`id`, `overtime`, `medical`, `bonus`, `other`, `emp_id`, `salary`, `rate`, `total_allowance`, `firstname`, `surname`, `created_by`) VALUES
(1, 5, 0, 0, 0, 1, 4500, 22.5, 168.75, 'Kappa', 'Ghost', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `audit`
--

CREATE TABLE `audit` (
  `audit_id` tinyint(4) DEFAULT NULL,
  `emp_id` tinyint(4) DEFAULT NULL,
  `date` varchar(23) DEFAULT NULL,
  `status` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `audit`
--

INSERT INTO `audit` (`audit_id`, `emp_id`, `date`, `status`) VALUES
(1, 1, '15:55:13 / Aug 13, 2016', 'Logged in'),
(2, 1, '15:58:01 / Aug 13, 2016', 'Added Record'),
(3, 1, '15:58:44 / Aug 13, 2016', 'Updated Allowance Record'),
(4, 1, '15:59:18 / Aug 13, 2016', 'Updated Deduction Record'),
(5, 1, '15:59:42 / Aug 13, 2016', 'Updated Deduction Record'),
(6, 1, '16:00:03 / Aug 13, 2016', 'Updated Record'),
(7, 1, '16:00:12 / Aug 13, 2016', 'Updated Record'),
(8, 1, '16:00:47 / Aug 13, 2016', 'Updated Salary Record'),
(9, 1, '16:01:02 / Aug 13, 2016', 'Updated Salary Record'),
(10, 1, '16:03:30 / Aug 13, 2016', 'Logged out'),
(11, 1, '22:51:06 / Sep 8, 2016', 'Logged in'),
(12, 1, '21:49:56 / Sep 23, 2016', 'Logged in'),
(13, 1, '21:51:07 / Sep 23, 2016', 'Logged out'),
(14, 1, '21:51:38 / Sep 23, 2016', 'Logged in'),
(15, 1, '00:58:48 / Sep 26, 2016', 'Logged in');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deductions`
--

CREATE TABLE `deductions` (
  `id` tinyint(4) DEFAULT NULL,
  `firstname` varchar(5) DEFAULT NULL,
  `surname` varchar(5) DEFAULT NULL,
  `salary` smallint(6) DEFAULT NULL,
  `deduction_amount` tinyint(4) DEFAULT NULL,
  `deduction_reason` varchar(7) DEFAULT NULL,
  `emp_id` tinyint(4) DEFAULT NULL,
  `made_by` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `deductions`
--

INSERT INTO `deductions` (`id`, `firstname`, `surname`, `salary`, `deduction_amount`, `deduction_reason`, `emp_id`, `made_by`) VALUES
(4, 'Kappa', 'Ghost', 4500, 90, 'Absence', 1, 1),
(5, 'Kappa', 'Ghost', 4500, 40, 'Absence', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(10) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('Deductions', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff_information`
--

CREATE TABLE `staff_information` (
  `id` tinyint(4) DEFAULT NULL,
  `first_name` varchar(5) DEFAULT NULL,
  `surname` varchar(5) DEFAULT NULL,
  `Dob` varchar(10) DEFAULT NULL,
  `Email` varchar(15) DEFAULT NULL,
  `Telephone` varchar(9) DEFAULT NULL,
  `Address` varchar(11) DEFAULT NULL,
  `Department` varchar(4) DEFAULT NULL,
  `Image` varchar(36) DEFAULT NULL,
  `Gender` varchar(4) DEFAULT NULL,
  `Salary` smallint(6) DEFAULT NULL,
  `Address2` varchar(12) DEFAULT NULL,
  `Apartment` tinyint(4) DEFAULT NULL,
  `Post_code` varchar(6) DEFAULT NULL,
  `Designation` varchar(5) DEFAULT NULL,
  `Status` varchar(6) DEFAULT NULL,
  `Date_hired` varchar(10) DEFAULT NULL,
  `job_title` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `staff_information`
--

INSERT INTO `staff_information` (`id`, `first_name`, `surname`, `Dob`, `Email`, `Telephone`, `Address`, `Department`, `Image`, `Gender`, `Salary`, `Address2`, `Apartment`, `Post_code`, `Designation`, `Status`, `Date_hired`, `job_title`) VALUES
(1, 'Kappa', 'Ghost', '01/08/1980', 'Kappa@gmail.com', '07xxxxxxx', 'Near street', 'Male', 'unknown_value_please_contact_support', 'Male', 4755, 'There street', 8, 'NE17FT', 'Sales', 'Active', '01/08/2016', 'Sales Executive');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` tinyint(4) DEFAULT NULL,
  `division` varchar(5) DEFAULT NULL,
  `username` varchar(6) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `emp_id` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `division`, `username`, `password`, `emp_id`) VALUES
(1, 'Admin', 'Admin', 'pass', '0'),
(2, 'Sales', 'Kappa', '01081980', '1'),
(3, 'Sales', 'Jon', '123', ''),
(4, 'Sales', 'Jon', '123', ''),
(5, 'Ali', 'User11', 'Pass11', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
