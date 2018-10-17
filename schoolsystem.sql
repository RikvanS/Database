-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2018 at 04:22 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `lessen`
--

CREATE TABLE `lessen` (
  `Vak` varchar(30) NOT NULL,
  `Les_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lessen`
--

INSERT INTO `lessen` (`Vak`, `Les_ID`) VALUES
('Geschiedenis', 1),
('Wiskunde', 2),
('Natuurkunde', 3),
('Scheikunde', 4),
('Biologie', 5),
('Frans', 6),
('Duits', 7),
('Nederlands', 8),
('Gym', 9),
('Aardrijkskunde', 10),
('Maatschappijleer', 11);

-- --------------------------------------------------------

--
-- Table structure for table `studenten`
--

CREATE TABLE `studenten` (
  `Voornaam` varchar(30) NOT NULL,
  `Achternaam` varchar(30) NOT NULL,
  `Geboortedatum` date NOT NULL,
  `Straat` varchar(50) NOT NULL,
  `Huisnummer` varchar(20) NOT NULL,
  `Postcode` char(6) NOT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Telefoon` varchar(20) DEFAULT NULL,
  `Student_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenten`
--

INSERT INTO `studenten` (`Voornaam`, `Achternaam`, `Geboortedatum`, `Straat`, `Huisnummer`, `Postcode`, `Email`, `Telefoon`, `Student_ID`) VALUES
('Lorem', 'Ipsum', '1987-10-30', 'Duckstraat', '7a', '9728DS', 'Lorem@Ipsum.com', '636-555-3226', 1),
('Bob', 'de Bouwer', '2000-08-18', 'Bouwerlaan', '12', '2487TR', 'Bob@bouwerijbob.nl', '030-5600601', 2),
('Adam', 'de Eerste', '1990-02-02', 'Paradijslaan', '1', '1000AA', 'Adam@HofvanEden.nl', '020-0000001', 3),
('Eva', 'de Eerste', '1990-02-02', 'Paradijslaan', '1', '1000AA', 'Eva@HofvanEden.nl', '020-0000001', 4),
('Jozef', 'van Arimathea', '0005-04-21', 'Pilatesweg', '33', '8762AD', 'Jozef@Sanhedrin.com', '050-3333333', 5),
('Ragnar', 'Lodbrok', '0710-05-22', 'Bergensveg', '3', '1337XD', 'Ragnar@Valhalla.no', '06-3366991467', 6),
('Napoleon', 'Bonaparte', '1769-08-15', 'Corsicaweg', '52', '1789DR', 'Napoleon@Keizer.fra', 'geen', 7),
('Arthur', 'Wellesly', '1769-05-01', 'Upper merion street', '1', '4488IE', 'Duke@Wellington.co.uk', 'geen', 8),
('Willem', 'van Oranje', '1533-04-24', 'Slot Dillenburg', '1', '3214AE', 'Vader@desVaderlands.nl', 'geen', 9),
('Judas', 'Iskariot', '0001-01-01', 'Galileaweg', '17', '1212AD', 'Judas@Discipelen.is', '06-12243648', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `Datum` date NOT NULL,
  `Les_ID` int(10) UNSIGNED NOT NULL,
  `Test_ID` int(10) UNSIGNED NOT NULL,
  `Student_ID` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`Datum`, `Les_ID`, `Test_ID`, `Student_ID`, `date`) VALUES
('2017-06-15', 1, 1, 1, '0000-00-00'),
('2017-06-06', 1, 2, 2, '0000-00-00'),
('2017-06-06', 1, 3, 3, '0000-00-00'),
('2017-06-06', 1, 4, 4, '0000-00-00'),
('2017-06-06', 1, 5, 5, '0000-00-00'),
('2017-06-06', 1, 6, 6, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `test_resultaten`
--

CREATE TABLE `test_resultaten` (
  `Student_ID` int(10) UNSIGNED NOT NULL,
  `Les_ID` int(10) UNSIGNED NOT NULL,
  `Cijfer` int(10) UNSIGNED NOT NULL,
  `Test_ID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_resultaten`
--

INSERT INTO `test_resultaten` (`Student_ID`, `Les_ID`, `Cijfer`, `Test_ID`) VALUES
(1, 2, 8, 1),
(2, 2, 9, 2),
(3, 2, 7, 3),
(4, 2, 8, 4),
(5, 2, 7, 5),
(6, 2, 6, 6),
(7, 2, 7, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lessen`
--
ALTER TABLE `lessen`
  ADD PRIMARY KEY (`Les_ID`);

--
-- Indexes for table `studenten`
--
ALTER TABLE `studenten`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`Test_ID`);

--
-- Indexes for table `test_resultaten`
--
ALTER TABLE `test_resultaten`
  ADD PRIMARY KEY (`Test_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lessen`
--
ALTER TABLE `lessen`
  MODIFY `Les_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studenten`
--
ALTER TABLE `studenten`
  MODIFY `Student_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `Test_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `test_resultaten`
--
ALTER TABLE `test_resultaten`
  MODIFY `Test_ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
