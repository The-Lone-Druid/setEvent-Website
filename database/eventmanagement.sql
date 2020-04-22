-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2020 at 05:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(2, 'Azfar Uzair', 'Azfar.Uzair19@gmail.com', 'Azfaruzair'),
(5, 'Shaikh Zahid', 'Zahid.786shiakh@gmail.com', 'Zahid.786');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_name` varchar(255) NOT NULL,
  `no_of_participents` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_name`, `no_of_participents`, `price`, `event_date`, `event_time`, `ID`) VALUES
('Coding', 5, 100, '2020-05-05', '11:00:00', 12),
('Cooking Without Fire', 5, 150, '2020-05-06', '10:00:00', 18),
('Counter Strike', 5, 150, '2020-05-05', '12:30:00', 14),
('CRYPTOHUNT', 5, 100, '2020-05-05', '09:30:00', 9),
('Dance', 2, 100, '2020-05-05', '01:30:00', 15),
('Mehandi', 5, 50, '2020-05-06', '01:00:00', 20),
('PUBG', 15, 100, '2020-05-05', '12:00:00', 13),
('Rangoli', 5, 50, '2020-05-06', '03:00:00', 21),
('Search It', 10, 50, '2020-05-05', '10:00:00', 10),
('Short Movie', 10, 100, '2020-05-06', '11:00:00', 19),
('Singing', 3, 100, '2020-05-05', '02:30:00', 16),
('Technical Quiz', 3, 50, '2020-05-05', '10:30:00', 11),
('VIT Idol', 2, 100, '2020-05-06', '09:30:00', 17);

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(11) NOT NULL,
  `guestName` varchar(255) NOT NULL,
  `collegeName` varchar(255) NOT NULL,
  `guestContact` varchar(255) NOT NULL,
  `guestEmail` varchar(255) NOT NULL,
  `eventName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `guestName`, `collegeName`, `guestContact`, `guestEmail`, `eventName`) VALUES
(40, 'Zahid Ibrahim Shaikh', 'Abeda Inamdar Senior College', '8806544670', 'Zahid.786shaikh@gmail.com', 'Coding'),
(41, 'Shaikh Habib', 'Abeda Inamdar Senior College', '9860972201', 'ShaikhHabib@gmail.com', 'Singing'),
(42, 'Wahid Usman', 'Abeda Inamdar Senior College', '9860972201', 'Wahid.usman@gmail.com', 'Technical Quiz'),
(43, 'Prakash Sharma', 'Vishwakarma Institute of Technology', '9876541230', 'prakash11365@gmail.com', 'PUBG'),
(44, 'Prakash Sharma', 'Vishwakarma Institues of technology', '9875461230', 'Prakash123@gmail.com', 'PUBG'),
(45, 'Usman Gani', 'Vishwakarma Institue of Technology', '7894561230', 'Gani786@gmail.com', 'PUBG'),
(46, 'Suyog Leher', 'Vishwakarma Institute of Technology', '7539514613', 'LeherSuyog@gmail.com', 'Technical Quiz'),
(47, 'Aatish Pawar', 'Vishwakarma Institute of Technology', '7412589630', 'Aatish7412@gmail.com', 'Coding'),
(48, 'Rushikesh Deore', 'Vishwakarma Institute of Technology', '7845963210', 'Deore.King@gmail.com', 'Coding');

-- --------------------------------------------------------

--
-- Table structure for table `main_admin`
--

CREATE TABLE `main_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_admin`
--

INSERT INTO `main_admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Zahid Shaikh', 'Zahid.786shaikh@gmail.com', 'Zahid.786');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_name`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guestEmail` (`guestEmail`);

--
-- Indexes for table `main_admin`
--
ALTER TABLE `main_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `main_admin`
--
ALTER TABLE `main_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
