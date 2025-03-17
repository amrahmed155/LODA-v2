-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 07:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



-- drop previous tables

DROP Table contact;
DROP Table register;
DROP Table sponsor;
DROP Table volunteer;
DROP Table user;

--
-- Database: `leapofdanceacademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `message` text NOT NULL,
  `status` text NOT NULL DEFAULT 'unread',
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `prefix`, `name`, `email`, `phone`, `message`, `status`, `createDate`) VALUES
(1, 'Mr.', 'amr ahmed', 'aska@asmd.sxa', '1218938921', 'asdjka sa sjdasdk ', 'read', '2024-06-18 16:25:35');
-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `gender` text NOT NULL,
  `address` text NOT NULL,
  `parentName` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `status` text NOT NULL DEFAULT 'unread',
  `DOB` date DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `gender`, `address`, `parentName`, `email`, `phone`, `status`, `DOB`, `createDate`) VALUES
(1, '', '0', '', 'smds', 'k@sakm.asd', '+11282391', '0', NULL, '2024-06-18 16:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `placeOfBirth` text NOT NULL,
  `Nationality` text NOT NULL,
  `City` text NOT NULL,
  `Gender` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `sponsorTerms` text NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`id`, `name`, `placeOfBirth`, `Nationality`, `City`, `Gender`, `email`, `phone`, `sponsorTerms`, `createDate`, `status`) VALUES
(1, 'amr', 'sdskma', 'aksmdak', '', '', 'dkamsas@wsa.sa', '+12391239', 'Short term,Long term', '2024-06-18 16:25:58', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `id`) VALUES
('Admin', 'LeaP@10A1', 1),
('Daniel', 'LODA@00Ad1', 2),
('User1', 'LeaP@20Ac', 3),
('User2', 'LODA@20', 4);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interestReason` text NOT NULL,
  `stayingDuration` text NOT NULL,
  `skills` text NOT NULL,
  `GoFundMeRadio` text NOT NULL,
  `GoFundMeOtherReason` text NOT NULL,
  `ideas` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `status` text NOT NULL DEFAULT 'unread',
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `interestReason`, `stayingDuration`, `skills`, `GoFundMeRadio`, `GoFundMeOtherReason`, `ideas`, `email`, `phone`, `status`, `createDate`) VALUES
(1, 'test1', 'test2', 'test3', '-1', 'afsmk', 'test5', 'daniel.martinez@example.co', '+121214241', '0', '2024-06-18 16:26:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
