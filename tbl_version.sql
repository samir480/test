-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2020 at 10:58 AM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rto_gujrat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_version`
--

CREATE TABLE `tbl_version` (
  `iVersionID` int(11) NOT NULL,
  `vMinVersion` varchar(10) NOT NULL,
  `vVersion` varchar(10) NOT NULL,
  `ePlatform` enum('Android','iOS') NOT NULL DEFAULT 'Android',
  `ePayment` enum('Yes','No') NOT NULL DEFAULT 'No',
  `dtCreated_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dtModified_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_version`
--

INSERT INTO `tbl_version` (`iVersionID`, `vMinVersion`, `vVersion`, `ePlatform`, `ePayment`, `dtCreated_Date`, `dtModified_Date`) VALUES
(1, '1.0', '1.0', 'Android', 'No', '2020-07-02 06:02:52', '2020-07-07 07:57:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_version`
--
ALTER TABLE `tbl_version`
  ADD PRIMARY KEY (`iVersionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_version`
--
ALTER TABLE `tbl_version`
  MODIFY `iVersionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
