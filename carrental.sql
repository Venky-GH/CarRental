-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 03:49 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `amount`
--

CREATE TABLE `amount` (
  `Cid` int(10) NOT NULL,
  `amt` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `Vehicle_id` int(10) NOT NULL,
  `License_no` varchar(20) DEFAULT NULL,
  `Model` varchar(20) DEFAULT NULL,
  `Year` date DEFAULT NULL,
  `Ctype` varchar(30) DEFAULT NULL,
  `Drate` int(10) DEFAULT NULL,
  `Wrate` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`Vehicle_id`, `License_no`, `Model`, `Year`, `Ctype`, `Drate`, `Wrate`) VALUES
(1, 'ap16dc3819', 'swift', '2015-01-02', 'Compact', 65, 1200),
(2, 'ap17dc8319', 'alto', '2016-11-11', 'Compact', 50, 1200),
(3, 'ts47kc9819', 'nano', '2015-02-06', 'Compact', 50, 1200),
(4, 'ts10xa8854', 'ritzz', '2017-02-09', 'Medium', 70, 1600),
(5, 'tskc9981', 'swiftxl', '2015-02-09', 'Medium', 70, 1600),
(6, 'ts10xa7536', 'innova', '2016-03-09', 'Large', 100, 2300),
(7, 'mh10xa1116', 'fortuner', '2016-03-10', 'SUV', 110, 2400),
(8, 'vj10xa9658', 'scorpio', '2016-03-15', 'SUV', 110, 2400),
(9, 'ap10xa9685', 'maruti', '2016-03-15', 'Van', 90, 1800),
(10, 'ap10xp5585', 'bolero', '2016-03-15', 'Truck', 95, 1900),
(11, 'ts11aa1111', 'Benz s 350d', '2016-03-19', 'Special Royal Cars', 400, 9000),
(12, 'ts01jp0002', 'Audi 11d', '2017-01-19', 'Special Royal Cars', 400, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `chauffeur`
--

CREATE TABLE `chauffeur` (
  `Did` int(10) NOT NULL,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(10) DEFAULT NULL,
  `AGE` varchar(20) DEFAULT NULL,
  `Mobile` bigint(12) DEFAULT NULL,
  `Dlno` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chauffeur`
--

INSERT INTO `chauffeur` (`Did`, `Fname`, `Lname`, `AGE`, `Mobile`, `Dlno`) VALUES
(1, 'kirito', 'kazuka', '29', 1234567892, 1477852),
(3, 'yuuki', 'noragami', '30', 1235567892, 1477862);

-- --------------------------------------------------------

--
-- Table structure for table `crdata`
--

CREATE TABLE `crdata` (
  `Cid` int(10) NOT NULL,
  `Vehicle_id` int(10) NOT NULL,
  `Nohours` int(10) NOT NULL,
  `Nodays` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Cid` int(10) NOT NULL,
  `Fname` varchar(10) DEFAULT NULL,
  `Lname` varchar(20) DEFAULT NULL,
  `Age` int(3) NOT NULL,
  `Mobile` bigint(15) DEFAULT NULL,
  `Dno` int(10) DEFAULT NULL,
  `Vehicle_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cid`, `Fname`, `Lname`, `Age`, `Mobile`, `Dno`, `Vehicle_id`) VALUES
(1, 'sanjay', 'deva rao', 19, 1234456789, 10724, NULL),
(2, 'yash', 'ojha', 19, 1334456789, 10720, NULL),
(3, 'hardik', 'sajnani', 19, 2334456789, 10712, NULL),
(4, 'pankaj', 'singh', 25, 5334456789, 10718, NULL),
(5, 'archit', 'khandelwal', 27, 6334456789, 10760, NULL),
(6, 'venky', 'naidu', 50, 7334456789, 10772, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Rid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Vehicle_id` int(10) NOT NULL,
  `License_no` varchar(10) NOT NULL,
  `Model` varchar(10) NOT NULL,
  `Ctype` varchar(15) NOT NULL,
  `Rdate` date NOT NULL,
  `Nohours` int(10) NOT NULL,
  `Nodays` int(10) NOT NULL,
  `amt` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Rid`, `cid`, `Fname`, `Vehicle_id`, `License_no`, `Model`, `Ctype`, `Rdate`, `Nohours`, `Nodays`, `amt`) VALUES
(1, 1, 'sanjay', 10, 'tskc9981', 'swiftxl', 'Medium', '2017-10-09', 3, 0, 210),
(4, 2, 'yash', 1, 'ap16dc3819', 'swift', 'Compact', '2017-11-11', 6, 0, 300),
(5, 3, 'hardik', 1, 'ap16dc3819', 'swift', 'Compact', '2017-11-10', 0, 1, 1300),
(6, 2, 'yash', 1, 'ap16dc3819', 'swift', 'Compact', '2017-11-11', 4, 0, 260);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `Rid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `Rdate` date DEFAULT NULL,
  `Ctype` varchar(20) NOT NULL,
  `Dno` int(10) DEFAULT NULL,
  `Vehicle_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amount`
--
ALTER TABLE `amount`
  ADD UNIQUE KEY `Rid` (`Cid`),
  ADD KEY `cid` (`Cid`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Vehicle_id`),
  ADD UNIQUE KEY `License_no` (`License_no`);

--
-- Indexes for table `chauffeur`
--
ALTER TABLE `chauffeur`
  ADD PRIMARY KEY (`Did`),
  ADD KEY `Dno` (`Dlno`);

--
-- Indexes for table `crdata`
--
ALTER TABLE `crdata`
  ADD PRIMARY KEY (`Cid`),
  ADD UNIQUE KEY `Vehicle_id` (`Vehicle_id`),
  ADD KEY `Rid` (`Cid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Cid`),
  ADD KEY `Dno` (`Dno`),
  ADD KEY `Vehicle_id` (`Vehicle_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD UNIQUE KEY `Rid` (`Rid`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`Rid`),
  ADD UNIQUE KEY `cid_2` (`cid`),
  ADD UNIQUE KEY `Vehicle_id` (`Vehicle_id`),
  ADD KEY `cid` (`cid`),
  ADD KEY `Dno` (`Dno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `Vehicle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `chauffeur`
--
ALTER TABLE `chauffeur`
  MODIFY `Did` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `Rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `amount`
--
ALTER TABLE `amount`
  ADD CONSTRAINT `amount_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `crdata` (`Cid`);

--
-- Constraints for table `crdata`
--
ALTER TABLE `crdata`
  ADD CONSTRAINT `crdata_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `customer` (`Cid`);

--
-- Constraints for table `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`Cid`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`Vehicle_id`) REFERENCES `car` (`Vehicle_id`),
  ADD CONSTRAINT `rental_ibfk_3` FOREIGN KEY (`Dno`) REFERENCES `customer` (`Dno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
