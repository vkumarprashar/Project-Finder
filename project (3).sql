-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 09:57 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `extrainsert`
--

CREATE TABLE IF NOT EXISTS `extrainsert` (
  `EMAIL` varchar(255) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ABOUT` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `REPORT` int(11) DEFAULT NULL,
  `PPT` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hitcounter`
--

CREATE TABLE IF NOT EXISTS `hitcounter` (
  `SNO` int(11) NOT NULL AUTO_INCREMENT,
  `HITCOUNTER` bigint(20) DEFAULT NULL,
  `DOWNLOADS` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hitcounter`
--

INSERT INTO `hitcounter` (`SNO`, `HITCOUNTER`, `DOWNLOADS`) VALUES
(1, 208, 0);

-- --------------------------------------------------------

--
-- Table structure for table `projectsajax`
--

CREATE TABLE IF NOT EXISTS `projectsajax` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `projectsajax`
--

INSERT INTO `projectsajax` (`PROJECTID`, `PROJECTNAME`, `SYNOPSIS`, `PROJECTREPORT`, `PROJECTPPT`, `UPLOADEDBY`, `DOWNLOADS`, `COST`, `ABOUTPROJECT`) VALUES
(9, 'vinay', 1, 1, 1, 'vprashar23@gmail.com', NULL, 1100, 'jjdjjadhasjhasjdhajda');

-- --------------------------------------------------------

--
-- Table structure for table `projectsandroid`
--

CREATE TABLE IF NOT EXISTS `projectsandroid` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `projectsandroid`
--

INSERT INTO `projectsandroid` (`PROJECTID`, `PROJECTNAME`, `SYNOPSIS`, `PROJECTREPORT`, `PROJECTPPT`, `UPLOADEDBY`, `DOWNLOADS`, `COST`, `ABOUTPROJECT`) VALUES
(1, 'Fee Management System', 1, 1, 1, 'vprashardk@gmail.com', 10, 1200, 'Fee Management project is the android application. Basically handles the records of the College or an organization...............................................................................................'),
(2, 'jdhsajkdsja', 1, 1, 1, 'vprashar23@gail.com', 0, 1200, 'kdjdslsdlsd'),
(3, 'hello world', 1, 1, 1, 'vprashar23@gmail.com', 12, 1111, 'ssjhsjhsnsmfnsdasflksdflkhdsfhsdlkfsfa');

-- --------------------------------------------------------

--
-- Table structure for table `projectsc`
--

CREATE TABLE IF NOT EXISTS `projectsc` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectscplus`
--

CREATE TABLE IF NOT EXISTS `projectscplus` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectsios`
--

CREATE TABLE IF NOT EXISTS `projectsios` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectsj2ee`
--

CREATE TABLE IF NOT EXISTS `projectsj2ee` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectsjava`
--

CREATE TABLE IF NOT EXISTS `projectsjava` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `projectsjava`
--

INSERT INTO `projectsjava` (`PROJECTID`, `PROJECTNAME`, `SYNOPSIS`, `PROJECTREPORT`, `PROJECTPPT`, `UPLOADEDBY`, `DOWNLOADS`, `COST`, `ABOUTPROJECT`) VALUES
(1, 'Fee Management System', 1, 1, 1, 'vprashar23@gmail.com', NULL, 100, 'klsdsamsm,dsdfdsfiosdflkwelksdskjdslfaf');

-- --------------------------------------------------------

--
-- Table structure for table `projectskotlin`
--

CREATE TABLE IF NOT EXISTS `projectskotlin` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectsperl`
--

CREATE TABLE IF NOT EXISTS `projectsperl` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectsphp`
--

CREATE TABLE IF NOT EXISTS `projectsphp` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `projectsphp`
--

INSERT INTO `projectsphp` (`PROJECTID`, `PROJECTNAME`, `SYNOPSIS`, `PROJECTREPORT`, `PROJECTPPT`, `UPLOADEDBY`, `DOWNLOADS`, `COST`, `ABOUTPROJECT`) VALUES
(1, 'Fee System', 1, 1, 1, 'jmnkn', 12, 1200, ' ,m mlnklnkln'),
(2, 'online shopping', 1, 1, 1, 'bjkbjkb', 16, 4000, 'hbjbjb');

-- --------------------------------------------------------

--
-- Table structure for table `projectspython`
--

CREATE TABLE IF NOT EXISTS `projectspython` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectsruby`
--

CREATE TABLE IF NOT EXISTS `projectsruby` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `projectsruby`
--

INSERT INTO `projectsruby` (`PROJECTID`, `PROJECTNAME`, `SYNOPSIS`, `PROJECTREPORT`, `PROJECTPPT`, `UPLOADEDBY`, `DOWNLOADS`, `COST`, `ABOUTPROJECT`) VALUES
(1, 'Fee Management System', 1, 1, 1, 'vprashar23@gail.com', 0, 1700, 'dksjlksd'),
(2, 'attendance system', 1, 1, 1, 'hbjkbj', 19, 5000, 'jbj njlm ');

-- --------------------------------------------------------

--
-- Table structure for table `projectsrubyonrails`
--

CREATE TABLE IF NOT EXISTS `projectsrubyonrails` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectstemplates`
--

CREATE TABLE IF NOT EXISTS `projectstemplates` (
  `TEMPLATEID` int(11) NOT NULL AUTO_INCREMENT,
  `TEMPLATENAME` varchar(255) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  PRIMARY KEY (`TEMPLATEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projectsvbnet`
--

CREATE TABLE IF NOT EXISTS `projectsvbnet` (
  `PROJECTID` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `SYNOPSIS` int(11) DEFAULT NULL,
  `PROJECTREPORT` int(11) DEFAULT NULL,
  `PROJECTPPT` int(11) DEFAULT NULL,
  `UPLOADEDBY` varchar(255) DEFAULT NULL,
  `DOWNLOADS` int(11) DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `ABOUTPROJECT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PROJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `requestedapplications`
--

CREATE TABLE IF NOT EXISTS `requestedapplications` (
  `SNO` int(11) NOT NULL AUTO_INCREMENT,
  `PROJECTNAME` varchar(255) DEFAULT NULL,
  `TECHNOLOGY` varchar(255) DEFAULT NULL,
  `ABOUT` varchar(255) DEFAULT NULL,
  `TIME` datetime DEFAULT NULL,
  `COST` int(11) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SNO`),
  KEY `FK_hay0xrkoc4g49ig5q1ltu1atw` (`EMAIL`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `requestedapplications`
--

INSERT INTO `requestedapplications` (`SNO`, `PROJECTNAME`, `TECHNOLOGY`, `ABOUT`, `TIME`, `COST`, `STATUS`, `EMAIL`) VALUES
(1, 'Score Management', 'ProjectsJava', 'sakklsjkajkjsadjkjdlksajdlkskdjkajdlksajdkadkjsdjlksklsajdsddad\r\naskalkjlkdasj\r\nsafjsahdhfadsfdaskjflksjlfads\r\nsakfdsalkjfklsadjflkasjlksdfs', '2018-04-10 11:04:24', 1767, 1, 'vvv@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `SNO` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `MESSAGE` varchar(255) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `TIME` time DEFAULT NULL,
  PRIMARY KEY (`SNO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`SNO`, `NAME`, `EMAIL`, `CONTACT`, `MESSAGE`, `DATE`, `TIME`) VALUES
(1, 'vinay', 'vivek.kshukla15@gmail.com', '9898989898', 'dfkldsklfjdsf\r\n ', '2018-01-19', '17:19:23'),
(2, 'Vivek', 'vprashar23@gmail.com', '9898989898', 'Great Work Guys !!! ', '2018-01-19', '10:19:25'),
(3, 'paras', 'vprashar23@gmail.com', '9898989898', 'Great Work Guys !!! ', '2018-01-19', '13:54:11'),
(4, 'Paramveer', 'vkumarprashar@gmail.com', '7879036382', 'Great Work in Progresss ', '2018-01-20', '22:37:54'),
(5, 'Nitish Rana', 'nitPrash@gmail.com', '6763382782', 'nice!!.  ', '2018-01-21', '06:09:14'),
(6, ' Avikal Moudgill', 'aviklm@gmail.com', '638449399', 'ooo.. !! sabaash! Mitroonn! ', '2018-01-21', '19:19:43'),
(7, 'Tamisha Sharma', 'tsharma@gmail.com', '9915126908', 'greart,,<3 nice work done by you guys\r\n ', '2018-01-26', '19:08:14'),
(8, 'Mukul Rana', 'mkrana@gmail.com', '7866688757', 'Project Villa is Life and Money Saver!!! ', '2018-01-26', '21:14:33'),
(9, 'Vinay Kumar', 'vprashar23@gmail.com', '7087475323', ' WELLL MAINTENED AND UPTODATE', '2018-02-11', '22:15:10'),
(10, 'Vasundhra Minhas', 'vm@gmail.com', '7877777787', 'HELLOOO ', '2018-02-27', '11:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE IF NOT EXISTS `signup` (
  `EMAIL` varchar(255) NOT NULL,
  `FULLNAME` varchar(255) DEFAULT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `SDATE` datetime DEFAULT NULL,
  `VERIFIED` int(11) DEFAULT NULL,
  `PID` varchar(255) DEFAULT NULL,
  `SecurityQues` varchar(255) DEFAULT NULL,
  `SecurityAns` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`EMAIL`, `FULLNAME`, `CONTACT`, `PASSWORD`, `GENDER`, `SDATE`, `VERIFIED`, `PID`, `SecurityQues`, `SecurityAns`) VALUES
('vvv@gmail.com', 'Vinay', '7087475323', '123456', 'male', '2018-04-10 10:54:22', 0, '6IN323', 'What is your Mother''s Birth Place?', 'hsp');

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE IF NOT EXISTS `subscribed` (
  `EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE IF NOT EXISTS `userdetails` (
  `EMAIL` varchar(255) NOT NULL,
  `ANDROID` int(11) DEFAULT NULL,
  `AJAX` int(11) DEFAULT NULL,
  `C` int(11) DEFAULT NULL,
  `CPLUS` int(11) DEFAULT NULL,
  `HTMLANDCSS` int(11) DEFAULT NULL,
  `IOS` int(11) DEFAULT NULL,
  `JAVA` int(11) DEFAULT NULL,
  `KOTLIN` int(11) DEFAULT NULL,
  `PERL` int(11) DEFAULT NULL,
  `PYTHON` int(11) DEFAULT NULL,
  `RUBY` int(11) DEFAULT NULL,
  `RUBLYONRAILS` int(11) DEFAULT NULL,
  `VBNET` int(11) DEFAULT NULL,
  `J2EE` int(11) DEFAULT NULL,
  `PHP` int(11) DEFAULT NULL,
  `SUBSCRIBED` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`EMAIL`, `ANDROID`, `AJAX`, `C`, `CPLUS`, `HTMLANDCSS`, `IOS`, `JAVA`, `KOTLIN`, `PERL`, `PYTHON`, `RUBY`, `RUBLYONRAILS`, `VBNET`, `J2EE`, `PHP`, `SUBSCRIBED`) VALUES
('vvv@gmail.com', 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `requestedapplications`
--
ALTER TABLE `requestedapplications`
  ADD CONSTRAINT `FK_hay0xrkoc4g49ig5q1ltu1atw` FOREIGN KEY (`EMAIL`) REFERENCES `userdetails` (`EMAIL`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
