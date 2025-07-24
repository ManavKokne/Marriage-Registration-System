-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 07:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marriage`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Email` varchar(150) NOT NULL,
  `MobileNumber` varchar(15) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `CreationDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `Email`, `MobileNumber`, `Password`, `CreationDate`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '1234567892', 'dc06698f0e2e75751545455899adccc3', '2025-04-20 22:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblregistration`
--

CREATE TABLE `tblregistration` (
  `ID` int(11) NOT NULL,
  `RegistrationNumber` varchar(20) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `DateofMarriage` date DEFAULT NULL,
  `HusbandName` varchar(255) DEFAULT NULL,
  `HusImage` varchar(255) DEFAULT NULL,
  `HusbandReligion` varchar(100) DEFAULT NULL,
  `Husbanddob` date DEFAULT NULL,
  `HusbandSBM` varchar(50) DEFAULT NULL,
  `HusbandAdd` text DEFAULT NULL,
  `HusbandZipcode` varchar(10) DEFAULT NULL,
  `HusbandState` varchar(100) DEFAULT NULL,
  `HusbandAdharno` varchar(12) DEFAULT NULL,
  `WifeName` varchar(255) DEFAULT NULL,
  `WifeImage` varchar(255) DEFAULT NULL,
  `WifeReligion` varchar(100) DEFAULT NULL,
  `Wifedob` date DEFAULT NULL,
  `WifeSBM` varchar(50) DEFAULT NULL,
  `WifeAdd` text DEFAULT NULL,
  `WifeZipcode` varchar(10) DEFAULT NULL,
  `WifeState` varchar(100) DEFAULT NULL,
  `WifeAdharNo` varchar(12) DEFAULT NULL,
  `WitnessNamefirst` varchar(255) DEFAULT NULL,
  `WitnessAddressFirst` text DEFAULT NULL,
  `WitnessNamesec` varchar(255) DEFAULT NULL,
  `WitnessAddresssec` text DEFAULT NULL,
  `WitnessNamethird` varchar(255) DEFAULT NULL,
  `WitnessAddressthird` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblregistration`
--

INSERT INTO `tblregistration` (`ID`, `RegistrationNumber`, `UserID`, `DateofMarriage`, `HusbandName`, `HusImage`, `HusbandReligion`, `Husbanddob`, `HusbandSBM`, `HusbandAdd`, `HusbandZipcode`, `HusbandState`, `HusbandAdharno`, `WifeName`, `WifeImage`, `WifeReligion`, `Wifedob`, `WifeSBM`, `WifeAdd`, `WifeZipcode`, `WifeState`, `WifeAdharNo`, `WitnessNamefirst`, `WitnessAddressFirst`, `WitnessNamesec`, `WitnessAddresssec`, `WitnessNamethird`, `WitnessAddressthird`, `created_at`, `Status`) VALUES
(1, '411080851', 1, '0000-00-00', 'abc', 'dcf1772f2f7f0bb4f3a57d87485aefc91745167678.jpg', 'Hindu', '0000-00-00', 'Married', 'at pune', '321232', 'Maharashtra', '235236658596', 'asdlkfj', 'a0ec7cf88cb1450602b00ea139f4284a1745167678.jpg', 'hindu', '0000-00-00', 'Married', 'at kadsf', '321232', 'delhi', '123456789565', 'asdf', 'at pune', 'asdf', 'pune', 'asdf', 'pune', '2025-04-20 16:47:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `MobileNumber` varchar(15) NOT NULL,
  `Address` text DEFAULT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Address`, `Password`) VALUES
(1, 'khushal', 'patil', '7689765687', 'pune', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `tblregistration`
--
ALTER TABLE `tblregistration`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `HusbandAdharno` (`HusbandAdharno`),
  ADD UNIQUE KEY `WifeAdharNo` (`WifeAdharNo`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblregistration`
--
ALTER TABLE `tblregistration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
