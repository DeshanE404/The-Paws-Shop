-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2024 at 05:54 AM
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
-- Database: `thepawsshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cashierinfo`
--

CREATE TABLE `cashierinfo` (
  `CashierID` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `NICno` varchar(15) NOT NULL,
  `PhoneNo` int(15) NOT NULL,
  `DateofBirth` date NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cashierinfo`
--

INSERT INTO `cashierinfo` (`CashierID`, `Name`, `Address`, `NICno`, `PhoneNo`, `DateofBirth`, `Username`, `Password`) VALUES
('C006', 'Lewis Hammilton', 'Colombo 7', '5896587452', 772569856, '2001-06-09', 'Lewis55', 'Leiws69'),
('C009', 'Valtari Bottas', 'No 78,Anuradapura', '19778965865', 715689658, '1997-08-07', 'Valtari99', 'Va1234'),
('C1001', 'Pini Kumari', 'Krurnegala', '285647483', 778987656, '2002-10-09', 'Pini44', 'Pini44');

-- --------------------------------------------------------

--
-- Table structure for table `managerinfo`
--

CREATE TABLE `managerinfo` (
  `ManagerID` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `NICno` varchar(15) NOT NULL,
  `PhoneNo` int(15) NOT NULL,
  `Address` text NOT NULL,
  `DateofBirth` date NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `managerinfo`
--

INSERT INTO `managerinfo` (`ManagerID`, `Name`, `NICno`, `PhoneNo`, `Address`, `DateofBirth`, `Username`, `Password`) VALUES
('1001', 'Deshan Ranasingha', '2000296096', 716574836, 'Narammala road Alawwa', '2000-05-08', 'Deshan444', '20020509'),
('M007', 'Sergio Perez', '19992526235', 778956231, 'No 27,Kurunegala', '1999-08-09', 'Sergio99', 'Ser9988');

-- --------------------------------------------------------

--
-- Table structure for table `petsupply`
--

CREATE TABLE `petsupply` (
  `ProductID` varchar(30) NOT NULL,
  `Name` text NOT NULL,
  `Availability` text NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `Colour` text NOT NULL,
  `ProductType` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petsupply`
--

INSERT INTO `petsupply` (`ProductID`, `Name`, `Availability`, `Price`, `Size`, `Colour`, `ProductType`, `Description`) VALUES
('C005', 'Adjustable Dog Collar', 'Yes', 'Rs 500.00', 'Medium', 'Red', 'Collor', 'Metel clip neck collor'),
('C09', 'Leather Color', 'No', 'Rs 500.00', 'XS', 'Red', 'Collor', 'Matd out from latex leather'),
('CG001', 'Pet Flight Carrier', 'Yes', 'Rs 5500.00', 'Medium', 'Brown', 'Cages', 'Large ventalated plastic cage'),
('CG005', 'Collapsible Metal Dog Cat Crate', 'Yes', 'Rs 30000.00', 'Large', 'Black', 'Cages', 'Metal cage with Removable ABS Plastic Tray'),
('GR001', 'Dog Brush', 'Yes', 'Rs 300.00', 'None', 'White', 'Grooming', 'Rubber dog brussh.Soft washable.'),
('GR005', 'Cat Bathing brush', 'Yes', 'Rs 475.00', 'None', 'Green', 'Grooming', 'Soft Silicone Shower Bathing Brush'),
('H002', 'Dog and Cate Harness', 'Yes', 'Rs 400.00', 'Small', 'Green', 'Harnesses', 'Made of durable material'),
('H003', 'Heavy Duty Harness', 'Yes', 'Rs 800.00', 'Learge', 'Red', 'Harnesses', 'Heavy duty hareness for learge dogs'),
('T001', 'Mouse Toy', 'Yes', 'Rs 500.00', 'Small', 'Gray', 'Toys', 'Rubber Mouse Toy non toxic'),
('T011', 'Trixie Denta', 'No', 'Rs 1700.00', 'None', 'Blue', 'Toys', 'A natural rubber ball');

-- --------------------------------------------------------

--
-- Table structure for table `seckey`
--

CREATE TABLE `seckey` (
  `Skey` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seckey`
--

INSERT INTO `seckey` (`Skey`) VALUES
('2002De'),
('ABC12345');

-- --------------------------------------------------------

--
-- Table structure for table `supplycategory`
--

CREATE TABLE `supplycategory` (
  `CategoryID` varchar(20) NOT NULL,
  `CategoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplycategory`
--

INSERT INTO `supplycategory` (`CategoryID`, `CategoryName`) VALUES
('C001', 'Collor'),
('C002', 'Dog Food'),
('CG001', 'Cages'),
('G001', 'Grooming'),
('H001', 'Harnesses'),
('T01', 'Toys');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cashierinfo`
--
ALTER TABLE `cashierinfo`
  ADD PRIMARY KEY (`CashierID`);

--
-- Indexes for table `managerinfo`
--
ALTER TABLE `managerinfo`
  ADD PRIMARY KEY (`ManagerID`);

--
-- Indexes for table `petsupply`
--
ALTER TABLE `petsupply`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `seckey`
--
ALTER TABLE `seckey`
  ADD PRIMARY KEY (`Skey`);

--
-- Indexes for table `supplycategory`
--
ALTER TABLE `supplycategory`
  ADD PRIMARY KEY (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
