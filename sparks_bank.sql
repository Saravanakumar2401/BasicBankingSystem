-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 06:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email-id` varchar(100) NOT NULL,
  `balance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `name`, `email-id`, `balance`) VALUES
(1011, 'Arun', 'arun@gmail.com', 43000),
(1012, 'Jayaraman', 'jayaraman@gmail.com', 41000),
(1013, 'Raju', 'raju@gmail.com', 20000),
(1014, 'Mohamad Ibrahim', 'mohamadibrahim@gmail.com', 105000),
(1015, 'Kavin', 'kavin@gmail.com', 62000),
(1016, 'Neha', 'neha@gmail.com', 44400),
(1017, 'Dharshini', 'dharshini@gmail.com', 124000),
(1018, 'Subha Shree', 'subhashree@gmail.com', 49000),
(1019, 'Raghavi', 'raghavi@gmail.com', 75600),
(1020, 'Lakshmi Devi', 'lakshmidevi@gmail.com', 161000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `sno` int(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `balance` bigint(100) NOT NULL,
  `date & time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`sno`, `sender`, `receiver`, `balance`, `date & time`) VALUES
(1, 'Dharshini', 'Raju', 2000, '2021-10-20 19:25:36'),
(2, 'Raghavi', 'Neha', 1200, '2021-10-20 19:26:41'),
(3, 'Mohamad Ibrahim', 'Subha Shree', 5000, '2021-10-20 19:27:57'),
(4, 'Lakshmi Devi', 'Arun', 13000, '2021-10-20 19:30:47'),
(5, 'Kavin', 'Raju', 1500, '2021-10-20 19:31:19'),
(6, 'Subha Shree', 'Jayaraman', 8000, '2021-10-20 19:31:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `sno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
