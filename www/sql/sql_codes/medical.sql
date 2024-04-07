-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2021 at 12:09 PM
-- Server version: 5.6.34
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `AppointmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DoctorID` int(11) NOT NULL,
  `ReceptionistID` int(11) NOT NULL,
  `TimeAndDatetaken` datetime NOT NULL,
  `AppointmentDate` date DEFAULT NULL,
  `AppointmentTime` time DEFAULT NULL,
  `AppointmentKept` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`AppointmentID`, `PatientID`, `DoctorID`, `ReceptionistID`, `TimeAndDatetaken`, `AppointmentDate`, `AppointmentTime`, `AppointmentKept`) VALUES
(1, 1, 1, 2, '2013-06-23 12:05:37', '2013-07-11', '09:30:00', 0),
(2, 3, 2, 1, '2013-06-23 12:20:39', '2013-07-09', '09:45:00', 0),
(3, 2, 1, 2, '2013-06-23 12:21:15', '2013-07-03', '10:00:00', 1),
(4, 3, 2, 2, '2013-06-23 14:58:38', '2013-07-02', '10:30:00', 1),
(6, 1, 1, 2, '2013-06-23 14:59:32', '2013-07-02', '10:45:00', 0),
(7, 5, 2, 2, '2013-06-23 15:02:29', '2013-07-02', '09:45:00', 1),
(8, 5, 1, 2, '2013-06-23 15:18:13', '2013-07-10', '10:30:00', 0),
(9, 3, 2, 1, '2013-06-23 16:19:47', '2013-06-30', '11:30:00', 1),
(10, 5, 1, 1, '2013-06-24 10:10:35', '2013-07-06', '12:30:00', 0),
(11, 4, 4, 1, '2013-06-24 11:21:13', '2013-07-04', '10:30:00', 0),
(12, 5, 2, 1, '2013-06-24 11:26:23', '2013-06-30', '11:00:00', 0),
(13, 2, 2, 1, '2013-06-24 11:29:51', '2013-06-30', '11:15:00', 0),
(14, 4, 1, 4, '2013-06-24 11:32:37', '2013-07-03', '10:30:00', 1),
(15, 1, 1, 1, '2013-06-24 11:34:06', '2013-07-03', '08:15:00', 1),
(16, 5, 1, 2, '2013-06-24 11:34:53', '2013-07-03', '09:30:00', 0),
(17, 3, 1, 2, '2013-06-24 11:36:13', '2013-07-03', '10:15:00', 1),
(18, 1, 1, 2, '2013-06-24 11:36:53', '2013-07-10', '10:15:00', 0),
(19, 4, 2, 2, '2013-06-24 11:37:57', '2013-07-01', '11:45:00', 1),
(20, 3, 2, 1, '2013-06-24 11:38:37', '2013-07-10', '10:30:00', 0),
(21, 3, 2, 1, '2013-06-24 11:39:18', '2013-07-04', '10:00:00', 0),
(22, 2, 2, 1, '2013-06-24 11:40:10', '2013-07-04', '09:45:00', 0),
(23, 4, 2, 2, '2013-06-24 11:44:20', '2013-07-03', '09:30:00', 1),
(24, 1, 2, 2, '2013-06-24 11:45:51', '2013-07-04', '09:00:00', 0),
(25, 5, 2, 2, '2013-06-24 11:48:12', '2013-07-04', '16:15:00', 0),
(26, 2, 2, 1, '2013-06-24 14:24:16', '2013-07-10', '10:15:00', 0),
(27, 1, 2, 5, '2013-06-25 08:53:05', '2013-07-01', '10:45:00', 1),
(28, 5, 2, 1, '2013-06-28 11:37:21', '2013-07-11', '09:45:00', 0),
(29, 3, 1, 2, '2013-06-28 11:38:35', '2013-07-07', '10:00:00', 0),
(30, 1, 2, 2, '2013-06-28 11:39:09', '2013-07-07', '09:30:00', 0),
(31, 2, 2, 1, '2013-06-28 14:35:44', '2013-07-07', '10:00:00', 0),
(32, 4, 2, 1, '2013-06-28 14:36:14', '2013-07-08', '09:15:00', 0),
(33, 6, 1, 1, '2013-06-28 16:27:23', '2013-07-07', '18:00:00', 0),
(34, 5, 2, 1, '2013-07-02 11:39:18', '2013-07-10', '09:30:00', 0),
(35, 2, 1, 1, '2013-07-02 11:59:18', '2013-07-10', '09:45:00', 0),
(37, 3, 2, 1, '2013-07-02 18:33:05', '2013-07-10', '09:45:00', 0),
(38, 4, 1, 1, '2013-07-02 11:03:05', '2013-07-07', '09:45:00', 0),
(40, 1, 2, 1, '2013-07-02 08:33:45', '2013-07-08', '10:00:00', 0),
(41, 2, 3, 3, '2013-07-02 16:31:05', '2013-07-05', '14:30:00', 0),
(42, 7, 3, 3, '2013-07-02 18:33:39', '2013-07-04', '09:15:00', 0),
(43, 7, 3, 1, '2013-07-02 17:55:05', '2013-07-09', '11:30:00', 0),
(44, 7, 3, 1, '2013-07-02 08:53:05', '2013-07-10', '11:45:00', 0),
(45, 1, 1, 2, '2013-07-02 18:33:27', '2013-07-10', '10:00:00', 0),
(46, 6, 3, 2, '2013-07-02 14:03:05', '2013-07-09', '11:00:00', 0),
(47, 1, 3, 2, '2013-06-29 08:53:05', '2013-06-30', '09:00:00', 1),
(48, 11, 2, 1, '2013-07-02 18:01:05', '2013-07-07', '10:15:00', 0),
(49, 7, 3, 3, '2013-07-02 18:12:05', '2013-07-10', '11:30:00', 0),
(50, 5, 3, 4, '2013-07-02 14:00:05', '2013-07-07', '09:30:00', 0),
(51, 15, 2, 1, '2013-07-02 13:53:05', '2013-07-07', '11:30:00', 0),
(52, 12, 1, 3, '2013-07-02 08:30:05', '2013-07-07', '10:30:00', 0),
(53, 16, 3, 1, '2013-07-02 17:23:05', '2013-07-07', '09:45:00', 0),
(54, 1, 3, 3, '2013-07-02 11:53:05', '2013-07-08', '09:30:00', 0),
(55, 16, 2, 3, '2013-07-02 18:33:05', '2013-07-09', '09:30:00', 0),
(56, 6, 2, 2, '2013-07-02 12:21:15', '2013-07-09', '10:00:00', 0),
(57, 13, 2, 1, '2013-07-02 14:13:35', '2013-07-11', '09:30:00', 0),
(58, 7, 4, 4, '2013-07-02 10:13:05', '2013-07-09', '09:45:00', 0),
(59, 4, 4, 3, '2013-07-02 18:33:05', '2013-07-11', '10:00:00', 0),
(60, 1, 3, 4, '2013-07-02 12:33:05', '2013-07-11', '10:00:00', 0),
(61, 18, 3, 1, '2013-07-02 12:21:15', '2013-07-10', '12:00:00', 0),
(62, 17, 3, 1, '2013-07-02 19:33:05', '2013-07-05', '14:00:00', 0),
(63, 10, 4, 1, '2013-07-02 08:33:09', '2013-07-11', '09:30:00', 0),
(64, 17, 3, 2, '2013-07-02 18:38:05', '2013-07-11', '09:30:00', 0),
(65, 13, 2, 1, '2013-07-02 18:33:56', '2013-07-08', '09:30:00', 0),
(66, 15, 4, 3, '2013-07-02 12:21:15', '2013-07-09', '09:30:00', 0),
(67, 6, 1, 3, '2013-07-02 18:33:05', '2013-07-10', '09:30:00', 0),
(68, 13, 2, 1, '2013-06-29 12:38:50', '2013-06-30', '09:30:00', 0),
(69, 7, 2, 4, '2013-06-29 12:39:46', '2013-06-30', '10:30:00', 1),
(70, 6, 3, 4, '2013-06-28 14:21:12', '2013-06-29', '09:30:00', 1),
(71, 12, 3, 4, '2013-06-28 14:22:10', '2013-06-29', '10:30:00', 0),
(72, 19, 1, 3, '2013-06-27 14:27:07', '2013-06-28', '09:30:00', 1),
(73, 10, 4, 3, '2013-06-27 14:27:39', '2013-06-28', '11:30:00', 1),
(74, 9, 4, 1, '2013-06-26 11:28:22', '2013-06-28', '18:30:00', 1),
(75, 11, 4, 2, '2013-06-27 14:34:56', '2013-06-28', '17:30:00', 0),
(76, 13, 1, 1, '2013-06-26 14:54:47', '2013-06-28', '10:00:00', 0),
(77, 17, 3, 3, '2013-06-27 16:37:33', '2013-06-29', '17:30:00', 0),
(78, 15, 3, 4, '2013-06-26 12:38:25', '2013-06-28', '18:00:00', 1),
(79, 11, 4, 1, '2013-07-03 08:26:25', '2013-07-06', '09:30:00', 0),
(80, 10, 2, 1, '2013-07-03 08:26:25', '2013-07-04', '09:30:00', 0),
(86, 13, 3, 4, '2013-07-03 08:26:25', '2013-07-04', '09:45:00', 0),
(87, 1, 3, 3, '2013-07-03 08:26:25', '2013-07-08', '09:45:00', 0),
(88, 14, 3, 1, '2013-07-03 08:26:25', '2013-07-08', '10:00:00', 0),
(89, 10, 2, 1, '2013-06-30 10:07:37', '2013-06-30', '10:00:00', 1),
(97, 12, 3, 1, '2013-07-03 08:26:25', '2013-07-04', '10:30:00', 0),
(98, 11, 1, 4, '2013-07-03 08:26:25', '2013-07-03', '09:45:00', 0),
(99, 9, 2, 2, '2013-07-03 08:26:26', '2013-07-03', '09:45:00', 0),
(100, 8, 4, 3, '2013-07-03 08:26:26', '2013-07-06', '10:00:00', 0),
(101, 23, 2, 4, '2013-08-29 09:28:18', '2013-08-29', '09:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbldoctors`
--

CREATE TABLE `tbldoctors` (
  `DoctorID` int(11) NOT NULL,
  `Title` varchar(25) DEFAULT 'Dr',
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Address1` varchar(50) DEFAULT NULL,
  `Address2` varchar(50) DEFAULT NULL,
  `Address3` varchar(40) DEFAULT NULL,
  `County` varchar(20) DEFAULT NULL,
  `PostCode` varchar(10) DEFAULT NULL,
  `HomePhone` varchar(15) DEFAULT NULL,
  `EmployedNow` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldoctors`
--

INSERT INTO `tbldoctors` (`DoctorID`, `Title`, `FirstName`, `LastName`, `Address1`, `Address2`, `Address3`, `County`, `PostCode`, `HomePhone`, `EmployedNow`) VALUES
(1, 'Dr', 'Joe', 'Blowphelt', '12, Hill St', 'Witney', NULL, 'Oxfordshire', 'OX3 5EW', '34432432', 1),
(2, 'Dr', 'Fred', 'Smith', '12 Able Close', 'Ducklington', 'Witney', 'Oxfordshire', 'OX5 4TR', '897872', 1),
(3, 'Dr', 'Sandra', 'Lockwood', 'Claverhose', 'Little Headley', 'Basingdon', 'Oxfordshire', 'OX3 2WE', '01652 872932', 1),
(4, 'Dr', 'Eilean', 'Down', '45 Walton Street', 'Applesby', 'Oxford', 'Oxfordshire', 'OX7 2QE', '01865 624918', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `PatientID` int(11) NOT NULL,
  `Title` varchar(15) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `Lastname` varchar(30) NOT NULL,
  `Gender` varchar(50) DEFAULT 'Female',
  `DOB` datetime DEFAULT NULL,
  `Address1` varchar(30) DEFAULT NULL,
  `Address2` varchar(30) DEFAULT NULL,
  `Address3` varchar(30) DEFAULT NULL,
  `County` varchar(30) DEFAULT 'Oxfordshire',
  `PostCode` varchar(15) NOT NULL,
  `HomePhoneNum` varchar(15) DEFAULT NULL,
  `WorkContactNum` varchar(15) DEFAULT NULL,
  `Attending_School` tinyint(1) DEFAULT '0',
  `SchoolID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`PatientID`, `Title`, `FirstName`, `Lastname`, `Gender`, `DOB`, `Address1`, `Address2`, `Address3`, `County`, `PostCode`, `HomePhoneNum`, `WorkContactNum`, `Attending_School`, `SchoolID`) VALUES
(1, 'Mr', 'Peter', 'Black', 'Male', '1967-04-12 00:00:00', 'Waterson Street', 'Headington', 'Oxford', 'Oxfordshire', 'OX4 8UY', '545345', '677652', 0, NULL),
(2, 'Miss', 'Janine', 'Smart', 'Female', '1989-06-30 00:00:00', '234, Wall St', 'Jericho', 'Oxford', 'Oxfordshire', 'OX2 2WE', '775674', '645656', 1, 3),
(3, 'Miss', 'Beatrix', 'Potter', 'Female', '1986-04-12 00:00:00', 'Windrush Cottage', 'Olden Village', 'Newfordstown', 'Oxfordshire', 'NW3 7RE', '01726534546', '017625343434', 1, 2),
(4, 'Mr', 'Mark', 'Mathers', 'Male', '1961-10-19 00:00:00', '8 Newport Close', 'Eynsham', 'Witney', 'Oxfordshire', 'OX8 4BE', '3452718', '2314253', 0, NULL),
(5, 'Miss', 'Sheila', 'Muirhead', 'Female', '1990-06-03 00:00:00', '65, Walton Street', 'Jericho', 'Oxford', 'Oxfordshire', 'OX2 6WE', '01865 542832', '01865 728374', 1, 1),
(6, 'Mr', 'Clive', 'Rickett', 'Male', '1967-08-12 00:00:00', '21, Wall Street', 'Brechin', 'Oxford', 'Oxfordshire', 'OX4 4WE', '01865 453827', '01865 273652', 0, NULL),
(7, 'Ms', 'Mary', 'Magdlen', 'Female', '1991-08-12 00:00:00', 'Crow Cottage', 'Littlehampton', 'Dewhurst', 'Oxfordshire', 'OX9 3WA', '01263 253698', '01786 534281', 1, 3),
(8, 'Mr', 'Benjamin', 'Doune', 'Male', '1989-01-01 00:00:00', 'Thatched Cottage', 'Warbler Lane', 'Waltington', 'Oxon', 'OX8 6FG', '01834 736283', NULL, 1, 3),
(9, 'Ms', 'Sheila', 'Peters', 'Female', '1978-05-12 00:00:00', '56 Palmister Close', 'Summertown', 'Oxford', 'Oxfordshire', 'OX2 3ER', '01865 278897', '01865 321129', 0, NULL),
(10, 'Ms', 'Samantha', 'Carterton', 'Female', '1989-08-12 00:00:00', 'Flowerhead Road', 'Eynsham', 'Wittney', 'Oxfordshire', 'OX8 4ER', '01865 349129', '01865 562831', 1, 3),
(11, 'Mr', 'John', 'Dewar', 'Male', '1976-06-03 00:00:00', '26, Twig Lane', 'Cotterton', 'Oxford', 'Oxon', 'OX7 2WE', '01865 298789', '01865 541827', 0, NULL),
(12, 'Mrs', 'Samantha', 'Jones', 'Female', '1976-08-08 00:00:00', 'Mill Cottage, Long Lane', 'Summertown', 'Oxford', 'Oxfordshire', 'OX2 5RT', '01865 872312', NULL, 0, NULL),
(13, 'Miss', 'Janine', 'Jones', 'Female', '1960-11-20 00:00:00', '28 Hill Town', 'Jericho', 'Oxford', 'Oxon', 'OX2 5RE', '01865 388249', NULL, 0, NULL),
(14, 'Mr', 'James', 'Smith', 'Male', '1989-03-03 00:00:00', '28 Hill Head', 'Cassington', 'Oxford', 'Oxfordshire', 'OX7 4RS', '01865 827321', '0342 356283', 1, 2),
(15, 'Ms', 'Jane', 'Smudger', 'Female', '1981-04-07 00:00:00', '8 Newleass Close', 'Headington', 'Oxford', 'Oxfordshire', 'OX4 3JH', NULL, '0653 7282712', 0, NULL),
(16, 'Miss', 'Lynn', 'Smyth', 'Female', '1949-04-12 00:00:00', '6, Windy Road', 'Headington', 'Oxford', 'Oxfordshire', 'OX4 8ER', '01865 438923', '01865 384253', 0, NULL),
(17, 'Ms', 'Elaine', 'Mc.Lean', 'Female', '1958-03-09 00:00:00', 'Psalm House, Mill Street', 'Eynsham', 'Wittney', 'Oxon', 'OX8 2KL', '01865 663989', '01865 288677', 0, NULL),
(18, 'Mrs', 'Jennifer', 'Jones', 'Female', '1967-06-28 00:00:00', '98 Roundhill Road', 'Jericho', 'Oxford', 'Oxfordshire', 'OX2 8TR', '01865 211813', NULL, 0, NULL),
(19, 'Mr', 'Mark', 'Thyme', 'Male', '1966-06-06 00:00:00', 'The Mews, 18 CallMarket Rd', 'Eynsham', 'Witney', 'Oxfordshire', 'OX7 9ER', '01865 834491', NULL, 0, NULL),
(20, 'Mr', 'David', 'Miles', 'Male', '1964-06-17 00:00:00', '81 New Street', 'Kidlington', 'Oxford', 'Oxfordshire', 'OX6 3ER', '01865 248172', '01865 342599', 0, NULL),
(21, 'Mr', 'Dave', 'Winston', 'Male', '1961-12-08 00:00:00', '12 Holly Well Road', 'Cassington', 'Oxford', 'Oxfordshire', 'OX7 3WE', '01865 241827', '01865 827152', 0, NULL),
(22, 'Mr', 'Phill', 'Mc Kerrup', 'Male', '1971-03-19 00:00:00', '87 Broad Street', NULL, 'Oxford', 'Oxfordshire', 'OX2 7WE', '0423517245', '01865 823172', 0, NULL),
(23, 'Ms', 'Sandra', 'Milne', 'Female', '1987-08-04 00:00:00', '76 West Street', 'Summertown', 'Oxford', 'Oxfordshire', 'OX4 8TY', '01865 473238', NULL, 1, 1),
(24, 'Ms', 'Sarah', 'Mc Leod', 'Female', '1989-12-03 00:00:00', '3 Hellford Road', 'Jericho', 'Oxford', 'Oxfordshire', 'OX2 5RT', '01865 652933', NULL, 1, 3),
(25, 'Ms', 'Kirsty', 'Miller', 'Female', '1984-06-04 00:00:00', '87 Holmes Road', 'Headington', 'Oxford', 'Oxfordshire', 'OX4 8WS', '01865 823823', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblreceptionist`
--

CREATE TABLE `tblreceptionist` (
  `ReceptionistID` int(11) NOT NULL,
  `Title` varchar(10) DEFAULT 'Mrs',
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `Address1` varchar(50) DEFAULT NULL,
  `Address2` varchar(50) DEFAULT NULL,
  `Address3` varchar(40) DEFAULT NULL,
  `County` varchar(20) DEFAULT 'Oxfordshire',
  `PostCode` varchar(10) DEFAULT NULL,
  `HomePhone` varchar(15) DEFAULT NULL,
  `Salary` decimal(19,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblreceptionist`
--

INSERT INTO `tblreceptionist` (`ReceptionistID`, `Title`, `FirstName`, `LastName`, `Address1`, `Address2`, `Address3`, `County`, `PostCode`, `HomePhone`, `Salary`) VALUES
(1, 'Mrs', 'Mary', 'Avery', '5, Friar Close', 'Bampton', NULL, 'Oxfordshire', 'OX2 6TF', '01342 267384', '12500.0000'),
(2, 'Ms', 'Patricia', 'Honeywell', '76, Myers Road', 'Kidlington', 'Oxford', 'Oxfordshire', 'OX4 5RZ', '01865 281292', '9400.0000'),
(3, 'Mrs', 'Janet', 'Marsden', '32, Smalder Close', 'Birkingdon', 'Oxford', 'Oxfordshire', 'OX7 4FG', '01834 248654', '11375.0000'),
(4, 'Mrs', 'Lynn', 'Burns', '86, Hill Crescent', 'Headington', 'Oxford', 'Oxfordshire', 'OX4 9TY', '01865 663412', '7956.0000'),
(5, 'Mrs', 'Sarah', 'Peters', '7 Blackmore Road', 'Summertown', 'Oxford', 'Oxfordshire', 'OX5 7WE', '01865 382734', '9875.0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`AppointmentID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `AppointmentID` (`AppointmentID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `ReceptionistID` (`ReceptionistID`);

--
-- Indexes for table `tbldoctors`
--
ALTER TABLE `tbldoctors`
  ADD PRIMARY KEY (`DoctorID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PostCode` (`PostCode`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`PatientID`),
  ADD KEY `HomePhoneNum` (`HomePhoneNum`),
  ADD KEY `Lastname` (`Lastname`,`FirstName`),
  ADD KEY `PostCode` (`PostCode`),
  ADD KEY `SchoolID` (`SchoolID`),
  ADD KEY `WorkContactNum` (`WorkContactNum`);

--
-- Indexes for table `tblreceptionist`
--
ALTER TABLE `tblreceptionist`
  ADD PRIMARY KEY (`ReceptionistID`),
  ADD KEY `ReceptionistID` (`ReceptionistID`),
  ADD KEY `PostCode` (`PostCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tbldoctors`
--
ALTER TABLE `tbldoctors`
  MODIFY `DoctorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblreceptionist`
--
ALTER TABLE `tblreceptionist`
  MODIFY `ReceptionistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD CONSTRAINT `tblappointment_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `tbldoctors` (`DoctorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblappointment_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `tblpatient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblappointment_ibfk_3` FOREIGN KEY (`ReceptionistID`) REFERENCES `tblreceptionist` (`ReceptionistID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
