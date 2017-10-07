-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2016 at 07:17 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lab3`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `dept_id` int(10) DEFAULT NULL,
  `dept_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'CSE'),
(2, 'GIS');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(10) DEFAULT NULL,
  `emp_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`) VALUES
(101, 'Ashadullah'),
(102, 'Shawon');

-- --------------------------------------------------------

--
-- Table structure for table `paydetails`
--

CREATE TABLE IF NOT EXISTS `paydetails` (
  `emp_id` int(10) DEFAULT NULL,
  `dept_id` int(10) DEFAULT NULL,
  `basic` int(10) DEFAULT NULL,
  `deduction` int(10) DEFAULT NULL,
  `addition` int(10) DEFAULT NULL,
  `doj` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paydetails`
--

INSERT INTO `paydetails` (`emp_id`, `dept_id`, `basic`, `deduction`, `addition`, `doj`) VALUES
(101, 1, 15000, 1000, 2500, '2016-08-01'),
(102, 2, 13000, 1000, 2500, '2016-08-10');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE IF NOT EXISTS `payroll` (
  `pay_id` int(10) DEFAULT NULL,
  `emp_id` int(10) DEFAULT NULL,
  `payamount` int(10) DEFAULT NULL,
  `paydate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`pay_id`, `emp_id`, `payamount`, `paydate`) VALUES
(10, 101, 16500, '2016-08-01'),
(11, 102, 14500, '2016-08-01');

-- --------------------------------------------------------

--
-- Table structure for table `sd`
--

CREATE TABLE IF NOT EXISTS `sd` (
  `dept_id` int(10) DEFAULT NULL,
  `dept_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sd`
--

INSERT INTO `sd` (`dept_id`, `dept_name`) VALUES
(1, 'CSE'),
(2, 'GIS'),
(101, 'Ashadullah');

-- --------------------------------------------------------

--
-- Table structure for table `sdepartment`
--

CREATE TABLE IF NOT EXISTS `sdepartment` (
  `dept_id` int(10) DEFAULT NULL,
  `dept_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sdepartment`
--

INSERT INTO `sdepartment` (`dept_id`, `dept_name`) VALUES
(1, 'CSE'),
(2, 'GIS');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `emp_id` int(10) DEFAULT NULL,
  `emp_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`emp_id`, `emp_name`) VALUES
(101, 'Ashadullah'),
(102, 'Shawon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `paydetails`
--
ALTER TABLE `paydetails`
  ADD UNIQUE KEY `emp_id` (`emp_id`,`dept_id`,`basic`,`addition`,`deduction`,`doj`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
