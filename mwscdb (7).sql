-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 11:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mwscdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(255) NOT NULL,
  `customer id` int(255) NOT NULL,
  `Readings` decimal(65,0) NOT NULL,
  `payment` int(255) NOT NULL,
  `Tarriff` decimal(65,0) NOT NULL,
  `Balance` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `customer id`, `Readings`, `payment`, `Tarriff`, `Balance`) VALUES
(1, 1, '0', 5000, '30', '0'),
(2, 2, '166', 10000, '33', '0'),
(3, 3, '166', 5000, '30', '0'),
(4, 4, '112', 10000, '50', '0');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(255) NOT NULL,
  `Name` char(255) NOT NULL,
  `Zone` varchar(255) NOT NULL,
  `Premises` varchar(255) NOT NULL,
  `Meter Readings` int(255) NOT NULL,
  `Bill` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `Name`, `Zone`, `Premises`, `Meter Readings`, `Bill`) VALUES
(1, 'Santigie Sankoh', 'Zone 1', 'Premise 1', 155, 20000),
(2, 'Francis', 'Zone 2', 'Premise 1', 161, 30000),
(3, 'Bakarr', 'Zone 3', 'Premise 3', 171, 25000),
(4, 'Bakarr T', 'Zone 4', 'Premise 4', 180, 21000),
(5, 'Athos', 'Zone 5', 'Premise 5', 300, 500);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `id` int(255) NOT NULL,
  `plant size` varchar(255) NOT NULL,
  `supplies` varchar(255) NOT NULL,
  `Monthly supplies` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`id`, `plant size`, `supplies`, `Monthly supplies`) VALUES
(1, '200 kilometer', '1000 liters', 500),
(2, '300 kilometer', '3000 liters', 600),
(3, '400 kilometer', '25000 liters', 300);

-- --------------------------------------------------------

--
-- Table structure for table `premises`
--

CREATE TABLE `premises` (
  `Meter installed` int(255) NOT NULL,
  `Zone Information` varchar(255) NOT NULL,
  `Premise Sector` varchar(255) NOT NULL,
  `Name of owner` char(255) NOT NULL,
  `id of owner` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premises`
--

INSERT INTO `premises` (`Meter installed`, `Zone Information`, `Premise Sector`, `Name of owner`, `id of owner`) VALUES
(541, 'Zone 2 supplied by plant one.', 'sector 1', 'Santigie Sankoh', 1),
(551, 'Zone 1 supply by plant two', 'sector 2', 'Zahra Mansaray', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sector office`
--

CREATE TABLE `sector office` (
  `id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email address` varchar(255) NOT NULL,
  `Job title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector office`
--

INSERT INTO `sector office` (`id`, `Name`, `email address`, `Job title`) VALUES
(1, 'Adio Raheem ', 'a.raheem@alustudent.com', 'Supervisor'),
(2, 'Darin', 'a.raheem@gmail.com', 'Biller'),
(3, 'Adeolu', 'a.lu@gmail.com', 'Supervisor');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `Zones` varchar(255) NOT NULL,
  `Sector office` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`Zones`, `Sector office`) VALUES
('Zone 1', 'SC 1'),
('Zone 2', 'SC 2');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `email address` varchar(255) NOT NULL,
  `Sector officer` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `Name`, `email address`, `Sector officer`) VALUES
(1, 'Adio Raheem', 'a.raheem@alustudent.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
