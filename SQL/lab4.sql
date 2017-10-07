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
-- Database: `lab4`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int(11) NOT NULL DEFAULT '0',
  `cust_name` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`) VALUES
(101, 'Shawon'),
(102, 'Shakil'),
(103, 'Shuvo');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_name` tinytext,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_name`, `price`) VALUES
(11, 'Mango', 20),
(12, 'Orange', 30),
(13, 'Grape', 40);

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE IF NOT EXISTS `relation` (
  `cust_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `bill_no` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relation`
--

INSERT INTO `relation` (`cust_id`, `item_id`, `bill_no`) VALUES
(101, 11, 1),
(102, 11, 1),
(103, 11, 1),
(101, 12, 1),
(102, 12, 1),
(103, 12, 1),
(101, 13, 1),
(102, 13, 1),
(103, 13, 1),
(101, 11, 2),
(102, 11, 2),
(103, 11, 2),
(101, 12, 2),
(102, 12, 2),
(103, 12, 2),
(101, 13, 2),
(102, 13, 2),
(103, 13, 2),
(101, 11, 3),
(102, 11, 3),
(103, 11, 3),
(101, 12, 3),
(102, 12, 3),
(103, 12, 3),
(101, 13, 3),
(102, 13, 3),
(103, 13, 3),
(101, 11, 1),
(101, 11, 1),
(101, 11, 1),
(102, 12, 2),
(102, 12, 2),
(103, 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE IF NOT EXISTS `relationship` (
  `cust_id` int(11) DEFAULT NULL,
  `bill_no` int(11) DEFAULT NULL,
  `qt` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relationship`
--

INSERT INTO `relationship` (`cust_id`, `bill_no`, `qt`, `item_id`) VALUES
(101, 1, 1, 11),
(102, 2, 1, 12),
(103, 3, 1, 13),
(101, 5, 1, 12),
(101, 7, 1, 13),
(102, 8, 1, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `bill_no` int(11) NOT NULL DEFAULT '0',
  `bill_date` date DEFAULT NULL,
  `qty_sold` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`bill_no`, `bill_date`, `qty_sold`) VALUES
(1, '2016-08-01', 3),
(2, '2016-08-01', 2),
(3, '2016-08-01', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `relationship`
--
ALTER TABLE `relationship`
  ADD UNIQUE KEY `cust_id` (`cust_id`,`bill_no`,`qt`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`bill_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
