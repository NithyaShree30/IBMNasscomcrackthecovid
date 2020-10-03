-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 24, 2020 at 09:35 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `name` varchar(20) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `day` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`name`, `emailid`, `mname`, `day`, `time`) VALUES
('Mentee 1', 'qwert@gmail.com', 'Mentor X', 'Tuesday', '3pm');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `name` varchar(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL,
  `zoomlink` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`name`, `day`, `time`, `zoomlink`) VALUES
('Mentor X', 'Tuesday', '3pm', ' https://us04web.zoom.us/j/5693882664?pwd=L2wxa0ZqbVpUcUdtOTQrQ20wUU0zdz09');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `type`, `phone`, `email`, `password`) VALUES
('Mentor X', 'mentor', '123456789', 'abcd@gmail.com', '12345'),
('Mentee 1', 'mentee', '8765236788', 'qwert@gmail.com', '0987');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
