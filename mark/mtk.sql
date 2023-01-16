-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2023 at 06:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtk`
--

-- --------------------------------------------------------

--
-- Table structure for table `marklist`
--

CREATE TABLE `marklist` (
  `id` int(11) NOT NULL,
  `rollno` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `mark` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marklist`
--

INSERT INTO `marklist` (`id`, `rollno`, `subject`, `mark`, `total_mark`) VALUES
(1, 7, 'English', 49, 50),
(2, 7, 'physics', 48, 50),
(3, 20, 'physics', 48, 50),
(4, 20, 'DS', 49, 50),
(5, 1, 'English', 50, 50),
(6, 1, 'physics', 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rollno` int(11) NOT NULL,
  `ph_no` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `rollno`, `ph_no`) VALUES
(1, 'Jerin', 20, 9563256859),
(2, 'sreyes', 7, 8137955347),
(3, 'Jadhavedhan', 9, 9563256859),
(4, 'Munthasar T K', 6, 9534582695),
(5, 'Abhay', 1, 456259856);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `marklist`
--
ALTER TABLE `marklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marklist`
--
ALTER TABLE `marklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
