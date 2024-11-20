-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 03:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trust_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uname` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pass`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2023-12-15 06:44:22', '2023-12-15 06:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `donation_payment`
--

CREATE TABLE `donation_payment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `did` varchar(40) NOT NULL,
  `user` varchar(40) NOT NULL,
  `trust` varchar(40) NOT NULL,
  `cost` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL,
  `rdate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donation_payment`
--

INSERT INTO `donation_payment` (`id`, `did`, `user`, `trust`, `cost`, `status`, `rdate`) VALUES
(1, '79155', 'jebin', 'mothertherasa', '30000', 'online', '16-12-2023');

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
(5, '2023_12_15_112755_create_user_table', 2),
(6, '2023_12_15_115741_create_trust_table', 3),
(8, '2023_12_15_121237_create_admin_table', 4),
(9, '2023_12_16_044526_create_trust_donation_post_table', 5),
(10, '2023_12_16_090317_create_donation_payment_table', 6),
(11, '2023_12_16_110059_create_trust_expense_table', 7);

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
-- Table structure for table `trust`
--

CREATE TABLE `trust` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `dob` varchar(60) NOT NULL,
  `address` varchar(500) NOT NULL,
  `address1` varchar(500) NOT NULL,
  `city` varchar(60) NOT NULL,
  `postal` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `selfintro` varchar(1000) NOT NULL,
  `histroy` varchar(1000) NOT NULL,
  `pfile` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lon` varchar(100) NOT NULL,
  `rdate` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trust`
--

INSERT INTO `trust` (`id`, `fname`, `lname`, `email`, `phone`, `dob`, `address`, `address1`, `city`, `postal`, `country`, `selfintro`, `histroy`, `pfile`, `uname`, `pass`, `lat`, `lon`, `rdate`, `status`) VALUES
(1, 'mother therasa', 'trust', 'mothertherasa.orp@gmail.com', '8787898989', '2023-12-16', 'karur', 'karur', 'karur', '123456', 'India', 'At [mother therasa trust], we believe in creating a haven for the young hearts left without parental care, offering them a nurturing environment filled with love, support, and opportunities. Our trust was founded with a vision to provide every child with a chance at a brighter future, irrespective of their circumstances.', 'At [mother therasa trust], our history is a testament to a journey fueled by passion, compassion, and a commitment to making a positive impact in the lives of those in need. Established in [1988], our trust has evolved into a beacon of hope, striving to address pressing social issues and contribute to the well-being of our community.', '1702641981_images (1).jpg', 'mothertherasa', 'mothertherasa', '13.083646', '80.217834', '15-12-2023', '1'),
(2, 'kumar', 'f', 'jebinp08@gmail.com', '06578945678', '2023-12-23', 'Uraiyour', 'trichy', 'trichy', '622001', 'India', 'dd', 'ffff', '1702880720_agri_rental (1).sql', 'kumar', '1111', '10.80195', '78.698087', '18-12-2023', '1');

-- --------------------------------------------------------

--
-- Table structure for table `trust_donation_post`
--

CREATE TABLE `trust_donation_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `did` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `trust` varchar(40) NOT NULL,
  `purpose` varchar(40) NOT NULL,
  `cost` varchar(40) NOT NULL,
  `file` varchar(500) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `rdate` varchar(40) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trust_donation_post`
--

INSERT INTO `trust_donation_post` (`id`, `did`, `name`, `trust`, `purpose`, `cost`, `file`, `description`, `rdate`, `status`) VALUES
(1, '79155', 'mother therasa trust', 'mothertherasa', 'ten children education.', '30000', '1702703370_download (2).jpg', 'ten children education purpose related funds riseing.', '16-12-2023', '1'),
(2, '45241', 'kumar', 'kumar', 'ten children education.', '30000', '1702880984_agri_rental (2).sql', 'fff', '18-12-2023', '1');

-- --------------------------------------------------------

--
-- Table structure for table `trust_expense`
--

CREATE TABLE `trust_expense` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trust` varchar(40) NOT NULL,
  `did` varchar(40) NOT NULL,
  `expfor` varchar(40) NOT NULL,
  `expdet` varchar(1000) NOT NULL,
  `expdate` varchar(40) NOT NULL,
  `amount` varchar(40) NOT NULL,
  `rdate` varchar(40) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trust_expense`
--

INSERT INTO `trust_expense` (`id`, `trust`, `did`, `expfor`, `expdet`, `expdate`, `amount`, `rdate`, `created_at`, `updated_at`) VALUES
(1, 'mothertherasa', '79155', 'children education', 'ten studen school fees spent the amount', '2023-12-14', '1000', '16-12-2023', NULL, NULL),
(2, 'mothertherasa', '79155', 'children education', 'student education', '2023-12-17', '1000', '16-12-2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(40) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `dob` varchar(60) NOT NULL,
  `gender` varchar(60) NOT NULL,
  `address` varchar(500) NOT NULL,
  `address1` varchar(500) NOT NULL,
  `city` varchar(60) NOT NULL,
  `postal` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `pfile` varchar(60) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `pass` varchar(60) NOT NULL,
  `rdate` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `email`, `phone`, `dob`, `gender`, `address`, `address1`, `city`, `postal`, `country`, `pfile`, `uname`, `pass`, `rdate`, `status`) VALUES
(1, 'jebin', 'kuna', 'selva@gmail.com', '09894918800', '2023-12-17', 'Male', 'trichy', 'trichy', 'trichy', '123456', 'India', '1702640101_team2.jpg', 'jebin', '1234', '15-12-2023', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_payment`
--
ALTER TABLE `donation_payment`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `trust`
--
ALTER TABLE `trust`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trust_donation_post`
--
ALTER TABLE `trust_donation_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trust_expense`
--
ALTER TABLE `trust_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donation_payment`
--
ALTER TABLE `donation_payment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trust`
--
ALTER TABLE `trust`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trust_donation_post`
--
ALTER TABLE `trust_donation_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trust_expense`
--
ALTER TABLE `trust_expense`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
