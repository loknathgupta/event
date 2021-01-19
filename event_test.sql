-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2021 at 06:57 PM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.1.33-17+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `event_date` date NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `event_duration` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `title`, `description`, `event_date`, `start_time`, `end_time`, `event_duration`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'TEST1', 'TEST1', '2021-01-18', '10:00:00', '10:30:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(2, 1, 'TEST2', 'TEST2', '2021-01-18', '10:30:00', '11:00:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(3, 1, 'TEST3', 'TEST3', '2021-01-18', '11:00:00', '11:30:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(4, 1, 'TEST4', 'TEST4', '2021-01-18', '11:30:00', '12:00:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(5, 1, 'TEST5', 'TEST5', '2021-01-18', '12:00:00', '12:30:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(6, 1, 'TEST6', 'TEST6', '2021-01-18', '12:30:00', '13:00:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(7, 1, 'TEST7', 'TEST7', '2021-01-18', '13:00:00', '13:30:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(8, 1, 'TEST8', 'TEST8', '2021-01-18', '13:30:00', '14:00:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(9, 1, 'TEST3', 'TEST3', '2021-01-19', '11:00:00', '11:30:00', 30, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(10, 1, 'TEST33', 'TEST33', '2021-01-19', '11:30:00', '12:30:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(11, 1, 'TEST34', 'TEST34', '2021-01-19', '12:30:00', '13:30:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(12, 1, 'TEST35', 'TEST35', '2021-01-19', '13:30:00', '14:00:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(13, 1, 'TEST36', 'TEST36', '2021-01-19', '15:00:00', '16:00:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(14, 1, 'TEST37', 'TEST37', '2021-01-19', '18:00:00', '19:00:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(15, 1, 'TEST8', 'TEST8', '2021-01-18', '15:00:00', '16:00:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(16, 1, 'TEST9', 'TEST9', '2021-01-18', '18:00:00', '19:00:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(17, 1, 'TEST20', 'TEST20', '2021-01-20', '15:00:00', '16:00:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00'),
(18, 1, 'TEST21', 'TEST21', '2021-01-20', '18:00:00', '19:00:00', 60, '2021-01-17 00:00:00', '2021-01-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `fullname`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'aman', 'Aman Kumar', 'f5bb0c8de146c67b44babbf4e6584cc0', '2021-01-17 00:00:00', '2021-01-17 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_ibfk_1` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
