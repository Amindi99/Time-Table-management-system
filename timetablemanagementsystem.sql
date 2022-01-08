-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 01:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timetablemanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicyearandsemester`
--

CREATE TABLE `academicyearandsemester` (
  `id` int(11) NOT NULL,
  `yearName` varchar(100) NOT NULL,
  `semesterName` varchar(100) NOT NULL,
  `fullName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academicyearandsemester`
--

INSERT INTO `academicyearandsemester` (`id`, `yearName`, `semesterName`, `fullName`) VALUES
(1, 'Year 1', 'Semester 1', 'Y1.S1'),
(2, 'Year 1', 'Semester 2', 'Y1.S2'),
(3, 'Year 2', 'Semester 1', 'Y2.S1'),
(4, 'Year 2', 'Semester 2', 'Y2.S2'),
(5, 'Year 3', 'Semester 1', 'Y3.S1'),
(6, 'Year 3', 'Semester 2', 'Y3.S2'),
(7, 'Year 4', 'Semester 1', 'Y4.S1'),
(8, 'Year 4', 'Semester 2', 'Y4.S2');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `bid` int(11) NOT NULL,
  `center` varchar(100) NOT NULL,
  `building` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`bid`, `center`, `building`) VALUES
(1, 'Malabe', 'New Building'),
(6, 'Malabe', 'Main'),
(7, 'Malabe', 'Engineering'),
(8, 'Malabe', 'Business Management');

-- --------------------------------------------------------

--
-- Table structure for table `consectivesession`
--

CREATE TABLE `consectivesession` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `consectiveId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dId` int(11) NOT NULL,
  `departmentName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dId`, `departmentName`) VALUES
(1, 'SE'),
(2, 'IT'),
(3, 'CSNE'),
(4, 'DS'),
(5, 'IM');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `employeeId` int(6) UNSIGNED NOT NULL,
  `employeeName` varchar(30) NOT NULL,
  `faculty` varchar(30) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  `center` varchar(50) DEFAULT NULL,
  `buildingId` int(11) DEFAULT NULL,
  `level` int(1) NOT NULL,
  `ranks` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`employeeId`, `employeeName`, `faculty`, `departmentId`, `designation`, `center`, `buildingId`, `level`, `ranks`) VALUES
(111111, 'Mr. Ruwan Jayasinghe', 'Computing', 1, 'Senior Lecturer(HG)', 'Malabe', 6, 3, '3.111111'),
(222222, 'Mrs. Gayani Jayasinghe', 'Computing', 2, 'Assistant Lecturer', 'Malabe', 6, 6, '6.222222'),
(333333, 'Mr. Kamal Ranathunga', 'Computing', 2, 'Instructors', 'Malabe', 1, 7, '7.333333'),
(444444, 'Miss. Nishi De silva', 'Computing', 1, 'Instructors', 'Malabe', 1, 7, '7.444444'),
(555555, 'Dr. Saman Perera', 'Computing', 4, 'Professor', 'Malabe', 6, 1, '1.555555'),
(666666, 'Mr. Pradeep Weerasinghe', 'Computing', 4, 'Assistant Professor', 'Malabe', 6, 2, '2.666666');

-- --------------------------------------------------------

--
-- Table structure for table `maingroup`
--

CREATE TABLE `maingroup` (
  `id` int(11) NOT NULL,
  `mgroupName` varchar(100) NOT NULL,
  `groupNumber` int(11) DEFAULT NULL,
  `groupid` varchar(100) NOT NULL,
  `programmeid` int(11) DEFAULT NULL,
  `semid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maingroup`
--

INSERT INTO `maingroup` (`id`, `mgroupName`, `groupNumber`, `groupid`, `programmeid`, `semid`) VALUES
(21, 'Y1.S1.IT', 1, 'Y1.S1.IT.01', 3, 1),
(22, 'Y1.S1.IT', 2, 'Y1.S1.IT.02', 3, 1),
(23, 'Y1.S1.IT', 3, 'Y1.S1.IT.03', 3, 1),
(24, 'Y1.S1.IT', 4, 'Y1.S1.IT.04', 3, 1),
(25, 'Y1.S1.IT', 5, 'Y1.S1.IT.05', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notavailablegroup`
--

CREATE TABLE `notavailablegroup` (
  `id` int(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `toTime` time DEFAULT NULL,
  `fromTime` time DEFAULT NULL,
  `groupId` varchar(100) DEFAULT NULL,
  `subgroupId` int(11) DEFAULT NULL,
  `mainGroupId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notavailablegroup`
--

INSERT INTO `notavailablegroup` (`id`, `day`, `toTime`, `fromTime`, `groupId`, `subgroupId`, `mainGroupId`) VALUES
(3, 'Monday', '15:30:00', '13:30:00', 'Y1.S1.IT.01.01', 6, NULL),
(4, 'Wednesday', '17:30:00', '15:30:00', 'Y1.S1.IT.02.02', 9, NULL),
(5, 'Friday', '10:30:00', '08:30:00', 'Y1.S1.IT.03', NULL, 23),
(6, 'Tuesday', '14:30:00', '11:30:00', 'Y1.S1.IT.05', NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `notavailablelecture`
--

CREATE TABLE `notavailablelecture` (
  `id` int(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `toTime` time DEFAULT NULL,
  `fromTime` time DEFAULT NULL,
  `lectureId` int(6) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notavailablelecture`
--

INSERT INTO `notavailablelecture` (`id`, `day`, `toTime`, `fromTime`, `lectureId`) VALUES
(1, 'Sunday', '10:30:00', '08:30:00', 333333),
(2, 'Tuesday', '14:00:00', '22:00:00', 111111);

-- --------------------------------------------------------

--
-- Table structure for table `notavailablesession`
--

CREATE TABLE `notavailablesession` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `toTime` time DEFAULT NULL,
  `fromTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notavailablesession`
--

INSERT INTO `notavailablesession` (`id`, `sessionId`, `day`, `toTime`, `fromTime`) VALUES
(1, 5, 'Tuesday', '10:30:00', '08:30:00'),
(2, 2, 'Monday', '15:30:00', '13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `parrellsessions`
--

CREATE TABLE `parrellsessions` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `orderId` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prefroomgroup`
--

CREATE TABLE `prefroomgroup` (
  `id` int(11) NOT NULL,
  `groupId` int(11) DEFAULT NULL,
  `subGroupId` int(11) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prefroomlecturer`
--

CREATE TABLE `prefroomlecturer` (
  `id` int(11) NOT NULL,
  `employeeId` int(6) UNSIGNED DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prefroomreserved`
--

CREATE TABLE `prefroomreserved` (
  `id` int(11) NOT NULL,
  `roomId` int(11) DEFAULT NULL,
  `day` varchar(10) DEFAULT NULL,
  `toTime` time DEFAULT NULL,
  `fromTime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prefroomreserved`
--

INSERT INTO `prefroomreserved` (`id`, `roomId`, `day`, `toTime`, `fromTime`) VALUES
(2, 3, 'Tuesday', '08:30:00', '10:30:00'),
(4, 6, 'Friday', '10:00:00', '12:30:00'),
(5, 4, 'Tuesday', '13:30:00', '15:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `prefroomsession`
--

CREATE TABLE `prefroomsession` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prefroomsubject`
--

CREATE TABLE `prefroomsubject` (
  `id` int(11) NOT NULL,
  `tagId` int(11) DEFAULT NULL,
  `subjectId` varchar(10) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prefroomtag`
--

CREATE TABLE `prefroomtag` (
  `id` int(11) NOT NULL,
  `tagId` int(11) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `programme`
--

CREATE TABLE `programme` (
  `programmeid` int(11) NOT NULL,
  `programmeName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programme`
--

INSERT INTO `programme` (`programmeid`, `programmeName`) VALUES
(2, 'SE'),
(3, 'IT'),
(4, 'IM'),
(5, 'DS'),
(6, 'CSNE');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `rid` int(11) NOT NULL,
  `buildingid` int(11) NOT NULL,
  `room` varchar(100) NOT NULL,
  `capacity` int(11) NOT NULL,
  `roomType` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `buildingid`, `room`, `capacity`, `roomType`) VALUES
(1, 1, 'A100', 120, 'Laboratory'),
(2, 6, 'B501', 250, 'Lecture Hall'),
(3, 6, 'B502', 250, 'Lecture Hall'),
(4, 6, 'A401', 60, 'Laboratory'),
(5, 6, 'A402', 60, 'Laboratory'),
(6, 1, 'A411', 60, 'Laboratory'),
(7, 1, 'A402', 200, 'Lecture Hall');

-- --------------------------------------------------------

--
-- Table structure for table `savegrouptimetable`
--

CREATE TABLE `savegrouptimetable` (
  `id` int(11) NOT NULL,
  `groupId` varchar(30) DEFAULT NULL,
  `file` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savegrouptimetable`
--

INSERT INTO `savegrouptimetable` (`id`, `groupId`, `file`) VALUES
(1, 'Y1.S1.IT.01', 'C:/Users/Amindi/Documents/2021-05-21_16-30-20-Y1.S1.IT.01.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `sessionId` int(11) NOT NULL,
  `subjectId` varchar(10) DEFAULT NULL,
  `tagId` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `subGroupId` int(11) DEFAULT NULL,
  `studentCount` int(11) DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `isConsecutive` varchar(5) DEFAULT NULL,
  `consectiveAdded` varchar(5) DEFAULT NULL,
  `isParallel` varchar(20) DEFAULT NULL,
  `category` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`sessionId`, `subjectId`, `tagId`, `groupId`, `subGroupId`, `studentCount`, `duration`, `isConsecutive`, `consectiveAdded`, `isParallel`, `category`) VALUES
(1, 'IT2030', 2, 22, NULL, 120, 2, 'Yes', 'No', 'No', NULL),
(2, 'IT1010', 2, 22, NULL, 120, 2, 'Yes', 'No', 'No', NULL),
(5, 'IT1020', 2, 21, NULL, 120, 2, 'Yes', 'No', 'No', NULL),
(6, 'IT2010', 2, 22, NULL, 120, 2, 'Yes', 'No', 'No', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessionlecture`
--

CREATE TABLE `sessionlecture` (
  `id` int(11) NOT NULL,
  `lecturerId` int(6) UNSIGNED DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessionlecture`
--

INSERT INTO `sessionlecture` (`id`, `lecturerId`, `sessionId`) VALUES
(1, 111111, 1),
(2, 333333, 2),
(3, 555555, 5),
(4, 555555, 6);

-- --------------------------------------------------------

--
-- Table structure for table `subgroup`
--

CREATE TABLE `subgroup` (
  `id` int(11) NOT NULL,
  `subgroupid` varchar(100) NOT NULL,
  `subgroupnumber` int(11) DEFAULT NULL,
  `maingroupid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subgroup`
--

INSERT INTO `subgroup` (`id`, `subgroupid`, `subgroupnumber`, `maingroupid`) VALUES
(6, 'Y1.S1.IT.01.01', 1, 21),
(7, 'Y1.S1.IT.01.02', 2, 21),
(8, 'Y1.S1.IT.02.01', 1, 22),
(9, 'Y1.S1.IT.02.02', 2, 22),
(10, 'Y1.S1.IT.03.01', 1, 23),
(11, 'Y1.S1.IT.03.02', 2, 23);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subId` varchar(10) NOT NULL,
  `subName` varchar(30) NOT NULL,
  `offeredYearSemId` int(11) NOT NULL,
  `noLecHrs` int(11) NOT NULL,
  `noTutHrs` int(11) NOT NULL,
  `noEvalHrs` int(11) NOT NULL,
  `subjectType` varchar(20) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `noLabHrs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subId`, `subName`, `offeredYearSemId`, `noLecHrs`, `noTutHrs`, `noEvalHrs`, `subjectType`, `category`, `noLabHrs`) VALUES
('IT1010', 'IP', 1, 2, 1, 0, 'Compulsory', NULL, 2),
('IT1020', 'ICS', 1, 2, 1, 0, 'Compulsory', NULL, 2),
('IT1030', 'CS', 1, 2, 0, 0, 'Compulsory', NULL, 0),
('IT2010', 'OOC', 2, 2, 1, 0, 'Compulsory', NULL, 2),
('IT2020', 'SPM', 2, 2, 1, 0, 'Compulsory', NULL, 2),
('IT2030', 'ISDM', 2, 2, 1, 0, 'Compulsory', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tagid` int(11) NOT NULL,
  `tagName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tagid`, `tagName`) VALUES
(2, 'Lecture'),
(4, 'Tutorial'),
(5, 'Lab');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL,
  `toTime` time DEFAULT NULL,
  `fromTime` time DEFAULT NULL,
  `timeString` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `workingdaysmain`
--

CREATE TABLE `workingdaysmain` (
  `workingId` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `noOfDays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workingdaysmain`
--

INSERT INTO `workingdaysmain` (`workingId`, `type`, `noOfDays`) VALUES
(5, '', 1),
(9, '', 4),
(14, '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `workingdayssub`
--

CREATE TABLE `workingdayssub` (
  `subId` int(11) NOT NULL,
  `workingId` int(11) NOT NULL,
  `workingday` varchar(30) NOT NULL,
  `startTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `workingdayssub`
--

INSERT INTO `workingdayssub` (`subId`, `workingId`, `workingday`, `startTime`, `endTime`) VALUES
(5, 5, 'Wednesday', '1', '2'),
(14, 9, 'Sunday', '3', '4'),
(69, 14, 'Monday', '3', '5'),
(70, 14, 'Tuesday', '3', '5'),
(71, 14, 'Wednesday', '3', '5'),
(72, 14, 'Thursday', '3', '5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicyearandsemester`
--
ALTER TABLE `academicyearandsemester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `consectivesession`
--
ALTER TABLE `consectivesession`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_keyConsectiveSessionId` (`sessionId`),
  ADD KEY `fk_keyconsectiveId` (`consectiveId`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dId`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`employeeId`),
  ADD KEY `buildingId` (`buildingId`),
  ADD KEY `departmentId` (`departmentId`);

--
-- Indexes for table `maingroup`
--
ALTER TABLE `maingroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programmeid` (`programmeid`),
  ADD KEY `semid` (`semid`);

--
-- Indexes for table `notavailablegroup`
--
ALTER TABLE `notavailablegroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subgroupId` (`subgroupId`),
  ADD KEY `mainGroupId` (`mainGroupId`);

--
-- Indexes for table `notavailablelecture`
--
ALTER TABLE `notavailablelecture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lectureId` (`lectureId`);

--
-- Indexes for table `notavailablesession`
--
ALTER TABLE `notavailablesession`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessionId` (`sessionId`);

--
-- Indexes for table `parrellsessions`
--
ALTER TABLE `parrellsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Prallel_sessionId_time_table` (`sessionId`);

--
-- Indexes for table `prefroomgroup`
--
ALTER TABLE `prefroomgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_groupId` (`groupId`),
  ADD KEY `fk_subGroupId` (`subGroupId`),
  ADD KEY `fk_roomId_group` (`roomId`);

--
-- Indexes for table `prefroomlecturer`
--
ALTER TABLE `prefroomlecturer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_employeeId` (`employeeId`),
  ADD KEY `fk_roomId_lecturer` (`roomId`);

--
-- Indexes for table `prefroomreserved`
--
ALTER TABLE `prefroomreserved`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_roomId_reserved` (`roomId`);

--
-- Indexes for table `prefroomsession`
--
ALTER TABLE `prefroomsession`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessionId` (`sessionId`),
  ADD KEY `fk_roomId_session` (`roomId`);

--
-- Indexes for table `prefroomsubject`
--
ALTER TABLE `prefroomsubject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_subjectId_pref` (`subjectId`),
  ADD KEY `fk_tagId_pref` (`tagId`),
  ADD KEY `fk_roomId_subject` (`roomId`);

--
-- Indexes for table `prefroomtag`
--
ALTER TABLE `prefroomtag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tagId` (`tagId`),
  ADD KEY `fk_roomId_tag` (`roomId`);

--
-- Indexes for table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`programmeid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `buildingid` (`buildingid`);

--
-- Indexes for table `savegrouptimetable`
--
ALTER TABLE `savegrouptimetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sessionId`),
  ADD KEY `fk_key2` (`subjectId`),
  ADD KEY `fk_key3` (`tagId`),
  ADD KEY `fk_key4` (`groupId`),
  ADD KEY `fk_key5` (`subGroupId`);

--
-- Indexes for table `sessionlecture`
--
ALTER TABLE `sessionlecture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_keySessionLectureLectId` (`lecturerId`),
  ADD KEY `fk_keySessionLecturesessionId` (`sessionId`);

--
-- Indexes for table `subgroup`
--
ALTER TABLE `subgroup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maingroupid` (`maingroupid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subId`),
  ADD KEY `offeredYearSemId` (`offeredYearSemId`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tagid`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sessionId_time_table` (`sessionId`),
  ADD KEY `fk_roomId_time_table` (`roomId`);

--
-- Indexes for table `workingdaysmain`
--
ALTER TABLE `workingdaysmain`
  ADD PRIMARY KEY (`workingId`);

--
-- Indexes for table `workingdayssub`
--
ALTER TABLE `workingdayssub`
  ADD PRIMARY KEY (`subId`),
  ADD KEY `workingId` (`workingId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicyearandsemester`
--
ALTER TABLE `academicyearandsemester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `consectivesession`
--
ALTER TABLE `consectivesession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maingroup`
--
ALTER TABLE `maingroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notavailablegroup`
--
ALTER TABLE `notavailablegroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notavailablelecture`
--
ALTER TABLE `notavailablelecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notavailablesession`
--
ALTER TABLE `notavailablesession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parrellsessions`
--
ALTER TABLE `parrellsessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefroomgroup`
--
ALTER TABLE `prefroomgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefroomlecturer`
--
ALTER TABLE `prefroomlecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefroomreserved`
--
ALTER TABLE `prefroomreserved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `prefroomsession`
--
ALTER TABLE `prefroomsession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefroomsubject`
--
ALTER TABLE `prefroomsubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefroomtag`
--
ALTER TABLE `prefroomtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programme`
--
ALTER TABLE `programme`
  MODIFY `programmeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `savegrouptimetable`
--
ALTER TABLE `savegrouptimetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `sessionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sessionlecture`
--
ALTER TABLE `sessionlecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subgroup`
--
ALTER TABLE `subgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tagid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workingdaysmain`
--
ALTER TABLE `workingdaysmain`
  MODIFY `workingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `workingdayssub`
--
ALTER TABLE `workingdayssub`
  MODIFY `subId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consectivesession`
--
ALTER TABLE `consectivesession`
  ADD CONSTRAINT `fk_keyConsectiveSessionId` FOREIGN KEY (`sessionId`) REFERENCES `session` (`sessionId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_keyconsectiveId` FOREIGN KEY (`consectiveId`) REFERENCES `session` (`sessionId`) ON DELETE CASCADE;

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`buildingId`) REFERENCES `building` (`bid`) ON DELETE CASCADE,
  ADD CONSTRAINT `lecturer_ibfk_2` FOREIGN KEY (`departmentId`) REFERENCES `department` (`dId`) ON DELETE CASCADE;

--
-- Constraints for table `maingroup`
--
ALTER TABLE `maingroup`
  ADD CONSTRAINT `maingroup_ibfk_1` FOREIGN KEY (`programmeid`) REFERENCES `programme` (`programmeid`) ON DELETE CASCADE,
  ADD CONSTRAINT `maingroup_ibfk_2` FOREIGN KEY (`semid`) REFERENCES `academicyearandsemester` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notavailablegroup`
--
ALTER TABLE `notavailablegroup`
  ADD CONSTRAINT `notavailablegroup_ibfk_1` FOREIGN KEY (`subgroupId`) REFERENCES `subgroup` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notavailablegroup_ibfk_2` FOREIGN KEY (`mainGroupId`) REFERENCES `maingroup` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notavailablelecture`
--
ALTER TABLE `notavailablelecture`
  ADD CONSTRAINT `notavailablelecture_ibfk_1` FOREIGN KEY (`lectureId`) REFERENCES `lecturer` (`employeeId`) ON DELETE CASCADE;

--
-- Constraints for table `notavailablesession`
--
ALTER TABLE `notavailablesession`
  ADD CONSTRAINT `notavailablesession_ibfk_1` FOREIGN KEY (`sessionId`) REFERENCES `session` (`sessionId`) ON DELETE CASCADE;

--
-- Constraints for table `parrellsessions`
--
ALTER TABLE `parrellsessions`
  ADD CONSTRAINT `fk_Prallel_sessionId_time_table` FOREIGN KEY (`sessionId`) REFERENCES `session` (`sessionId`);

--
-- Constraints for table `prefroomgroup`
--
ALTER TABLE `prefroomgroup`
  ADD CONSTRAINT `fk_groupId` FOREIGN KEY (`groupId`) REFERENCES `maingroup` (`id`),
  ADD CONSTRAINT `fk_roomId_group` FOREIGN KEY (`roomId`) REFERENCES `room` (`rid`),
  ADD CONSTRAINT `fk_subGroupId` FOREIGN KEY (`subGroupId`) REFERENCES `subgroup` (`id`);

--
-- Constraints for table `prefroomlecturer`
--
ALTER TABLE `prefroomlecturer`
  ADD CONSTRAINT `fk_employeeId` FOREIGN KEY (`employeeId`) REFERENCES `lecturer` (`employeeId`),
  ADD CONSTRAINT `fk_roomId_lecturer` FOREIGN KEY (`roomId`) REFERENCES `room` (`rid`);

--
-- Constraints for table `prefroomreserved`
--
ALTER TABLE `prefroomreserved`
  ADD CONSTRAINT `fk_roomId_reserved` FOREIGN KEY (`roomId`) REFERENCES `room` (`rid`);

--
-- Constraints for table `prefroomsession`
--
ALTER TABLE `prefroomsession`
  ADD CONSTRAINT `fk_roomId_session` FOREIGN KEY (`roomId`) REFERENCES `room` (`rid`),
  ADD CONSTRAINT `fk_sessionId` FOREIGN KEY (`sessionId`) REFERENCES `session` (`sessionId`);

--
-- Constraints for table `prefroomsubject`
--
ALTER TABLE `prefroomsubject`
  ADD CONSTRAINT `fk_roomId_subject` FOREIGN KEY (`roomId`) REFERENCES `room` (`rid`),
  ADD CONSTRAINT `fk_subjectId_pref` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`subId`),
  ADD CONSTRAINT `fk_tagId_pref` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagid`);

--
-- Constraints for table `prefroomtag`
--
ALTER TABLE `prefroomtag`
  ADD CONSTRAINT `fk_roomId_tag` FOREIGN KEY (`roomId`) REFERENCES `room` (`rid`),
  ADD CONSTRAINT `fk_tagId` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagid`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`buildingid`) REFERENCES `building` (`bid`) ON DELETE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `fk_key2` FOREIGN KEY (`subjectId`) REFERENCES `subject` (`subId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_key3` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagid`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_key4` FOREIGN KEY (`groupId`) REFERENCES `maingroup` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_key5` FOREIGN KEY (`subGroupId`) REFERENCES `subgroup` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessionlecture`
--
ALTER TABLE `sessionlecture`
  ADD CONSTRAINT `fk_keySessionLectureLectId` FOREIGN KEY (`lecturerId`) REFERENCES `lecturer` (`employeeId`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_keySessionLecturesessionId` FOREIGN KEY (`sessionId`) REFERENCES `session` (`sessionId`) ON DELETE CASCADE;

--
-- Constraints for table `subgroup`
--
ALTER TABLE `subgroup`
  ADD CONSTRAINT `subgroup_ibfk_1` FOREIGN KEY (`maingroupid`) REFERENCES `maingroup` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`offeredYearSemId`) REFERENCES `academicyearandsemester` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `fk_roomId_time_table` FOREIGN KEY (`roomId`) REFERENCES `room` (`rid`),
  ADD CONSTRAINT `fk_sessionId_time_table` FOREIGN KEY (`sessionId`) REFERENCES `session` (`sessionId`);

--
-- Constraints for table `workingdayssub`
--
ALTER TABLE `workingdayssub`
  ADD CONSTRAINT `workingdayssub_ibfk_1` FOREIGN KEY (`workingId`) REFERENCES `workingdaysmain` (`workingId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
