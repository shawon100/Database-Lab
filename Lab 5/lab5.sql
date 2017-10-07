-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2016 at 07:16 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lab5`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_no` varchar(40) NOT NULL DEFAULT '',
  `book_name` varchar(40) DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_no`, `book_name`, `author`) VALUES
('51', 'Bangla', 'Mahbubul hasan'),
('52', 'English', 'Nazrul Islam'),
('53', 'Math', 'Ketab Uddin'),
('54', 'Physics', 'Topon'),
('55', 'Chemestry', 'Robiul'),
('56', 'ICT', 'Zafar Iqbal'),
('57', 'Computer', 'Muzibur'),
('58', 'Botany', 'Gazi'),
('59', 'Zoology', 'Azmal'),
('60', 'Programming', 'Tanenbum');

-- --------------------------------------------------------

--
-- Table structure for table `iss_rec`
--

CREATE TABLE IF NOT EXISTS `iss_rec` (
  `iss_no` varchar(40) DEFAULT NULL,
  `iss_date` date DEFAULT NULL,
  `mem_no` varchar(40) DEFAULT NULL,
  `book_no` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iss_rec`
--

INSERT INTO `iss_rec` (`iss_no`, `iss_date`, `mem_no`, `book_no`) VALUES
('21', '2016-08-01', '11', '51'),
('22', '2016-08-02', '12', '52'),
('23', '2016-08-03', '13', '53'),
('24', '2016-08-01', '14', '54'),
('25', '2016-08-01', '15', '55'),
('26', '2016-08-04', '16', '56'),
('27', '2016-08-01', '17', '57'),
('28', '2016-09-01', '18', '55'),
('29', '2016-08-01', '19', '59'),
('30', '2016-08-20', '20', '60'),
('21', '2016-08-01', '11', '52'),
('22', '2016-08-02', '12', '53'),
('21', '2016-08-03', '11', '53'),
('24', '2016-08-01', '14', '54'),
('24', '2016-09-01', '14', '58');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE IF NOT EXISTS `membership` (
  `mem_no` varchar(40) NOT NULL DEFAULT '',
  `stud_no` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`mem_no`, `stud_no`) VALUES
('11', '101'),
('12', '102'),
('13', '103'),
('14', '104'),
('15', '105'),
('16', '106'),
('17', '107'),
('18', '108'),
('19', '109'),
('20', '110');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `stud_no` varchar(40) NOT NULL DEFAULT '',
  `stud_name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_no`, `stud_name`) VALUES
('C101', 'Shawon'),
('C102', 'Shakil'),
('C103', 'Shuvo'),
('C104', 'Sakib'),
('C105', 'Sourov'),
('C106', 'Ashadullah'),
('C107', 'Shahriar'),
('C108', 'Kumar'),
('C109', 'Ehsan'),
('C110', 'Roy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_no`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`mem_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
