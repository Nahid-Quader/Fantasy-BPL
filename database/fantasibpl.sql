-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2017 at 12:51 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fantasibpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `batsmantable`
--

CREATE TABLE `batsmantable` (
  `Serial` int(4) NOT NULL,
  `PlayerID` int(5) NOT NULL,
  `Innings` int(2) NOT NULL,
  `Run` int(3) NOT NULL,
  `StrikeRate` double NOT NULL,
  `50` int(2) NOT NULL,
  `100` int(2) NOT NULL,
  `Average` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `batsmantable`
--

INSERT INTO `batsmantable` (`Serial`, `PlayerID`, `Innings`, `Run`, `StrikeRate`, `50`, `100`, `Average`) VALUES
(1, 1, 28, 530, 116, 0, 0, 20),
(2, 2, 51, 1533, 134, 0, 0, 31),
(3, 4, 25, 482, 110, 0, 0, 25),
(4, 5, 229, 5974, 126, 0, 0, 29),
(5, 29, 8, 78, 124, 0, 0, 20),
(6, 30, 4, 60, 120, 0, 0, 20),
(7, 35, 3, 30, 81, 0, 0, 15),
(8, 31, 28, 686, 121, 0, 0, 30),
(9, 42, 77, 1690, 122, 0, 0, 27),
(10, 43, 10, 144, 117.07, 0, 0, 14.4),
(11, 53, 178, 4902, 115, 0, 0, 30),
(12, 62, 66, 1138, 117, 0, 0, 21),
(13, 63, 139, 3847, 118, 0, 0, 31),
(14, 72, 166, 4490, 125, 0, 0, 28),
(15, 77, 74, 1598, 116, 0, 0, 22),
(16, 80, 111, 2468, 118, 0, 0, 25),
(17, 81, 30, 410, 115, 0, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `btable`
--

CREATE TABLE `btable` (
  `serial` int(4) NOT NULL,
  `PlayerID` int(5) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Wicket` int(2) NOT NULL,
  `5Wicket` int(2) NOT NULL,
  `ECO` double NOT NULL,
  `Average` double NOT NULL,
  `TotalMatch` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btable`
--

INSERT INTO `btable` (`serial`, `PlayerID`, `Type`, `Wicket`, `5Wicket`, `ECO`, `Average`, `TotalMatch`) VALUES
(1, 10, 'Slow', 23, 0, 7.09, 27.26, 33),
(2, 11, 'Fast', 16, 0, 6.23, 16.81, 18),
(3, 13, 'Fast', 73, 0, 8.75, 29, 73),
(4, 38, 'Fast', 21, 0, 7.25, 19.33, 22),
(5, 38, 'Slow', 25, 0, 7.11, 33.04, 40),
(6, 41, 'Fast', 125, 2, 6.92, 23.78, 125),
(7, 54, 'Fast', 121, 1, 7.61, 21, 97),
(8, 56, 'Fast', 116, 0, 6.84, 21.05, 97),
(9, 57, 'Slow', 81, 0, 6.9, 20.84, 85),
(10, 64, 'Fast', 34, 1, 7.59, 25.58, 36),
(11, 65, 'Fast', 23, 0, 8, 24.21, 20),
(12, 68, 'Slow', 2, 0, 7, 40, 12),
(13, 75, 'Fast', 54, 0, 7.58, 32, 70),
(14, 79, 'Fast', 120, 0, 7.26, 22, 105),
(15, 82, 'Fast', 98, 0, 7.64, 32.16, 120),
(16, 83, 'Fast', 9, 0, 8.74, 26.55, 9);

-- --------------------------------------------------------

--
-- Table structure for table `myteam`
--

CREATE TABLE `myteam` (
  `Serial` int(3) NOT NULL,
  `UserID` int(3) NOT NULL,
  `TeamName` varchar(30) NOT NULL,
  `Player1` varchar(20) NOT NULL,
  `Player2` varchar(20) NOT NULL,
  `Player3` varchar(20) NOT NULL,
  `Player4` varchar(20) NOT NULL,
  `Player5` varchar(20) NOT NULL,
  `Player6` varchar(20) NOT NULL,
  `Player7` varchar(20) NOT NULL,
  `Player8` varchar(20) NOT NULL,
  `Player9` varchar(20) NOT NULL,
  `Player10` varchar(20) NOT NULL,
  `Player11` varchar(20) NOT NULL,
  `Player12` varchar(20) NOT NULL,
  `Player13` varchar(20) NOT NULL,
  `Player14` varchar(20) NOT NULL,
  `Balance` int(6) NOT NULL,
  `Points` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `PlayerID` int(30) NOT NULL,
  `PlayerName` varchar(40) NOT NULL,
  `Speciality` varchar(20) NOT NULL,
  `MarketPrice` int(3) NOT NULL,
  `TeamId` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`PlayerID`, `PlayerName`, `Speciality`, `MarketPrice`, `TeamId`) VALUES
(1, 'Mehedi Maruf', 'Batsman', 4, 1),
(2, 'Evin Lewis', 'Batsman', 7, 1),
(3, 'Nasir Hossain', 'Allrounder', 8, 1),
(4, 'Mosaddek Hossain', 'Batsman', 7, 1),
(5, 'Kumar Sangakkara', 'Wicketkeeper batsman', 12, 1),
(6, 'Dwayne Bravo', 'Allrounder', 11, 1),
(7, 'Andre Russel', 'Allrounder', 10, 1),
(8, 'Shakib Al Hasan ', 'Allrounder', 14, 1),
(9, 'Alauddin Babu', 'Allrounder', 4, 1),
(10, 'Sunjamul Islam', 'Bowler', 3, 1),
(11, 'Abu Jayed', 'Bowler', 7, 1),
(12, 'Ravi Bopara', 'Allrounder', 10, 1),
(13, 'Matt Coles', 'Bowler', 8, 1),
(14, 'Irfan Sukkur', 'Batsman', 3, 1),
(29, 'Nurul hasan', 'Batsman', 5, 2),
(30, 'Mominul Haque', 'Batsman', 7, 2),
(31, 'Sabbir Rahman', 'Batsman', 9, 2),
(32, 'Samit Patel', 'Allrounder', 8, 2),
(33, 'James Franklin', 'Allrounder', 10, 2),
(34, 'Darren Sammy', 'Allrounder', 9, 2),
(35, 'Afif Hossain', 'Batsman', 3, 2),
(36, 'Mehedi hasan', 'Allrounder', 8, 2),
(37, 'Farhad Reza', 'Allrounder', 3, 2),
(38, 'Kesrick Williams', 'Bowler', 8, 2),
(39, 'Nazmul Islam', 'Bowler', 3, 2),
(40, 'Delwar Hossain', 'Bowler', 2, 2),
(41, 'Mohammad Sami', 'Bowler', 8, 2),
(42, 'Umar Akmal', 'Batsman', 10, 2),
(43, 'Abdul Mazid ', 'Batsman', 4, 3),
(44, 'Hasanuzzaman', 'Batsman', 3, 3),
(45, 'Nicholas Pooran', 'Wicketkeeper batsman', 2, 3),
(46, 'Shuvagata Hom', 'Allrounder', 2, 3),
(47, 'Mahmudullah', 'Allrounder', 9, 3),
(48, 'Benny Howell', 'Allrounder', 8, 3),
(49, 'Ariful haque', 'Allrounder', 3, 3),
(50, 'Kevon Cooper', 'Allrounder', 7, 3),
(51, 'Naeem Islam JNR', 'Bowler', 3, 3),
(52, 'Mosharraf Hossain', 'Allrounder', 4, 3),
(53, 'Lendl Simmons', 'Batsman', 10, 3),
(54, 'Ben LaughLin', 'Bowler', 9, 3),
(55, 'Andre Fletcher', 'Batsman', 9, 3),
(56, 'Junaid Khan', 'Bowler', 8, 3),
(57, 'Abdur Rajjak', 'Bowler', 10, 4),
(58, 'Anamul Haque', 'Wicketkeeper Batsman', 8, 4),
(59, 'Chaturanga De Silva', 'Allrounder', 7, 4),
(60, 'Grnat Elliott', 'Allrounder', 10, 4),
(61, 'Chris Gayle', 'Allrounder', 14, 4),
(62, 'Jahural Islam', 'Batsman', 5, 4),
(63, 'tamim Iqbal', 'Batsman', 12, 4),
(64, 'Taskin Ahmed', 'Bowler', 10, 4),
(65, 'Shubashis Roy', 'Bowler', 5, 4),
(66, 'Shoaib Malik', 'Allrounder', 10, 4),
(67, 'Jeevan Mandis', 'Allrounder', 9, 4),
(68, 'Jubair Hossain', 'Bowler', 4, 4),
(69, 'Mohammad Nabi', 'Allrounder', 9, 4),
(70, 'Dwayne Smith', 'Allrounder', 8, 4),
(71, 'Abdullah Al Mamun', 'Batsman', 2, 5),
(72, 'Ahmed Shahzad', 'Batsman', 7, 5),
(73, ' Al-Amin', 'Bowler', 2, 5),
(74, 'Ashar Zaidi', 'Batsman', 3, 5),
(75, 'Johnson Holder', 'Bowler', 2, 5),
(76, 'Imad Wasim', 'Allrounder', 5, 5),
(77, 'Imrul Kayes', 'Batsman', 5, 5),
(78, 'Jasimuddin', 'Batsman', 4, 5),
(79, 'Nuwan Kulashekara', 'Bowler', 6, 5),
(80, 'khalid Latif', 'Batsman', 8, 5),
(81, 'Liton Das', ' Wicketkeeper batman', 2, 3),
(82, 'Mashrafe Mortaza', 'Bowler', 7, 5),
(83, 'Mohammad Saifuddin', 'Bowler', 2, 5),
(84, 'Nahidul Islam', 'Batsman', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `premium`
--

CREATE TABLE `premium` (
  `Serial` int(3) NOT NULL,
  `PlayerID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `premium`
--

INSERT INTO `premium` (`Serial`, `PlayerID`) VALUES
(1, 3),
(2, 6),
(3, 7),
(4, 8),
(5, 12),
(6, 32),
(7, 33),
(8, 34),
(9, 36),
(10, 47),
(11, 48),
(12, 60),
(13, 61),
(14, 66),
(15, 67),
(16, 69),
(17, 70);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `Serial` int(5) NOT NULL,
  `TeamName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`Serial`, `TeamName`) VALUES
(1, 'Dhaka'),
(2, 'Rajshahi'),
(3, 'Khulna'),
(4, 'Chittagong'),
(5, 'Comilla'),
(6, 'Barisal'),
(7, 'Rangpur');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(3) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Password` varchar(6) NOT NULL,
  `TeamName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Name`, `Email`, `Password`, `TeamName`) VALUES
(1, 'Tabib', 'tabib@gmail.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batsmantable`
--
ALTER TABLE `batsmantable`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `btable`
--
ALTER TABLE `btable`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `myteam`
--
ALTER TABLE `myteam`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerID`);

--
-- Indexes for table `premium`
--
ALTER TABLE `premium`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batsmantable`
--
ALTER TABLE `batsmantable`
  MODIFY `Serial` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `btable`
--
ALTER TABLE `btable`
  MODIFY `serial` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `myteam`
--
ALTER TABLE `myteam`
  MODIFY `Serial` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `PlayerID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `premium`
--
ALTER TABLE `premium`
  MODIFY `Serial` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `Serial` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
