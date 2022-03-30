-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2021 at 12:53 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `CertificateID` int(11) NOT NULL,
  `CIssueDate` date NOT NULL DEFAULT current_timestamp(),
  `VaccinationDate` varchar(100) NOT NULL,
  `Vaccinated` tinyint(1) NOT NULL DEFAULT 0,
  `NID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`CertificateID`, `CIssueDate`, `VaccinationDate`, `Vaccinated`, `NID`) VALUES
(1, '2021-08-10', '2021-08-10', 1, '3423432'),
(2, '2021-08-10', '2021-08-10', 1, '123452');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `NID` varchar(30) NOT NULL,
  `USERNAME` varchar(100) DEFAULT NULL,
  `PHONE` int(11) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `ADMIN` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`NID`, `USERNAME`, `PHONE`, `PASSWORD`, `ADMIN`) VALUES
('123452', 'sdfsdfsd', 873294392, 'admin', 0),
('123456789', 'admin', 1963423770, 'admin', 1),
('3423432', 'asif', 1642742857, '34234', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_vaccine`
--

CREATE TABLE `user_vaccine` (
  `IID` int(11) NOT NULL,
  `VID` int(11) NOT NULL,
  `NID` varchar(30) NOT NULL,
  `IssueDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_vaccine`
--

INSERT INTO `user_vaccine` (`IID`, `VID`, `NID`, `IssueDate`) VALUES
(1, 1, '3423432', '2021-08-09'),
(2, 2, '123452', '2021-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `VID` int(11) NOT NULL,
  `VNAME` varchar(100) NOT NULL,
  `Manufacturer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine`
--


INSERT INTO `vaccine` (`VID`, `VNAME`, `Manufacturer`) VALUES
(1, 'AstraZeneca', 'South Korea'),
(2, 'Sinovac', 'China'),
(3, 'Pfizer-BioNTech', 'German'),
(4, 'Sputnik V', 'Russia'),
(5, 'moderna', 'United States');

, , , 

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`CertificateID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`NID`);

--
-- Indexes for table `user_vaccine`
--
ALTER TABLE `user_vaccine`
  ADD PRIMARY KEY (`IID`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`VID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `CertificateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_vaccine`
--
ALTER TABLE `user_vaccine`
  MODIFY `IID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `VID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
