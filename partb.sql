-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 08:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment4`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeetable`
--

CREATE TABLE `employeetable` (
  `EmployeeID` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  `Department` varchar(20) DEFAULT NULL,
  `Mail` varchar(25) DEFAULT NULL,
  `Experienced` enum('beginner','<5years','>5years') NOT NULL,
  `Increment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeetable`
--

INSERT INTO `employeetable` (`EmployeeID`, `Name`, `Role`, `Department`, `Mail`, `Experienced`, `Increment`) VALUES
(34529, 'Charan', 'Architect', 'Design', 'cvayyeti@gmail.com', '<5years', 1),
(89732, 'Bhuvana', 'Hr', 'Human Resources', 'bhuvanagogs@gmail.com', 'beginner', 2),
(32789, 'Pavan', 'Sales Anaylst', 'Marketing', 'PavanR@gmail.com', 'beginner', 3),
(63248, 'Venky', 'Manager', 'Structural Engineer', 'Venkyjv@gmail.com', 'beginner', 4);

-- --------------------------------------------------------

--
-- Table structure for table `financialtransactions`
--

CREATE TABLE `financialtransactions` (
  `TransactionId` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Amount` float DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `financialtransactions`
--

INSERT INTO `financialtransactions` (`TransactionId`, `date`, `Amount`, `Description`) VALUES
(1937, '2023-07-06', 350000, 'Sale of property unit Troy'),
(5670, '2023-08-22', 16000, 'Material Purchase for Lexus'),
(8261, '2023-10-15', 8000, 'Labor costs for Project Meridius'),
(3816, '2023-10-27', 264000, 'Sale of Property unit Lexus');

-- --------------------------------------------------------

--
-- Table structure for table `housingproject`
--

CREATE TABLE `housingproject` (
  `ProjectName` varchar(25) DEFAULT NULL,
  `Location` char(15) DEFAULT NULL,
  `Size` int(11) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `looks` varchar(10) DEFAULT 'Elegant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `housingproject`
--

INSERT INTO `housingproject` (`ProjectName`, `Location`, `Size`, `Status`, `looks`) VALUES
('Troy', 'New York', 350, 'Basic Structure Built', 'Elegant'),
('Lexus', 'Texas', 270, 'Completed', 'Elegant'),
('Trojan', 'Chicago', 300, 'Planned', 'Elegant'),
('Meridius', 'California', 500, 'Final Inspection', 'Elegant'),
('thanos', 'detroit', 100, 'Active', 'Elegant');

-- --------------------------------------------------------

--
-- Table structure for table `maintenancerequests`
--

CREATE TABLE `maintenancerequests` (
  `RequestId` int(11) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Status` varchar(25) DEFAULT NULL,
  `Property` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenancerequests`
--

INSERT INTO `maintenancerequests` (`RequestId`, `Description`, `Status`, `Property`) VALUES
(425, 'Room Heater not working ', 'open', 'Lexus unit 207'),
(426, 'Clogged drain in the kitchen', 'In-progress', 'Troy unit 154'),
(427, 'broken window in living room', 'closed', 'meridian unit 378'),
(428, 'Leaky tap in bathroom', 'In-progress', 'Lexus unit 274');

-- --------------------------------------------------------

--
-- Table structure for table `rawmaterialtable`
--

CREATE TABLE `rawmaterialtable` (
  `MaterialType` varchar(25) DEFAULT NULL,
  `Source` varchar(25) DEFAULT NULL,
  `Cost` float DEFAULT NULL,
  `AvailabilityStatus` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rawmaterialtable`
--

INSERT INTO `rawmaterialtable` (`MaterialType`, `Source`, `Cost`, `AvailabilityStatus`) VALUES
('Concrete', 'Local Supplier', 100, 'In-Stock'),
('Steel', 'Steel Manufacturing .co', 250, 'In-Stock'),
('HVAC Systems', 'HVAC Solutions.pvltd', 300, 'Low-stock'),
('plumbing', 'Modern warehouse', 50, 'In-stock');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeetable`
--
ALTER TABLE `employeetable`
  ADD PRIMARY KEY (`Increment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeetable`
--
ALTER TABLE `employeetable`
  MODIFY `Increment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
