-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 03:59 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Show Logs` ()  NO SQL
SELECT * FROM logs$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ShowBrand` ()  NO SQL
SELECT * FROM tblbrands$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-01-01 11:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `ID` varchar(20) NOT NULL,
  `Name` int(11) NOT NULL,
  `TestM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(6, 'shoaib121@wecars.com', 16, '12/12/2020', '14/12/2020', 'A short trip to Coorg', 1, '2021-01-19 17:34:54'),
(7, 'shoaib121@wecars.com', 14, '15/12/2020', '17/12/2020', 'Goa is Calling ME!!', 2, '2021-01-20 04:53:17'),
(8, 'caestro@wecars.com', 22, '22/01/2021', '22/012021', 'Family trip.', 1, '2021-01-20 09:25:06'),
(9, 'shoaib121@wecars.com', 7, '15/12/2020', '18/12/2020', 'ON', 2, '2021-01-22 10:20:30'),
(10, 'caestro@wecars.com', 20, '23/01/2021', '25/01/2021', 'A family trip to Tirupati', 2, '2021-01-24 14:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(9, 'Maruti Suzuki', '2021-01-19 15:47:15', '2021-01-20 04:05:49'),
(10, 'Hyundai', '2021-01-19 15:47:37', '2021-01-20 03:50:11'),
(11, 'TATA', '2021-01-19 15:48:39', NULL),
(12, 'Mahindra', '2021-01-19 15:48:45', NULL),
(13, 'FORD', '2021-01-19 15:49:09', '2021-01-19 15:50:03'),
(14, 'HONDA', '2021-01-19 16:42:16', NULL),
(15, 'Toyota', '2021-01-20 08:56:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, '100ft Road, Indiranagar, Bangalore, Karnataka																						', 'wecars@helpdesk.com', '9966554422');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'M SHOAIB NUMAANULLA BAIG', 'shoaib121@wecars.com', '9008560282', 'Can  I know the exact reason why my booking was declined??', '2021-01-20 05:19:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong></font></p><ul style=\"outline: none; color: rgb(119, 137, 155); font-family: Proxima-Nova;\"><li style=\"outline: none; font-size: 15px; line-height: 1.5; margin-top: 16px; margin-bottom: 16px;\"><span style=\"font-weight: bold;\">(1.1) The driver of the vehicle shall be considered to be the user and all transactions will be executed solely between the user and Drivezy. The following agreement is between the user and WeCars. The agreement governs the terms and conditions of usage of Drivezy services such as our website, iOS and android application and rental service.</span></li><li style=\"outline: none; font-size: 15px; line-height: 1.5; margin-top: 16px; margin-bottom: 16px;\"><span style=\"font-weight: bold;\">(1.2) Drivezy reserves the right to make any necessary changes in the terms and conditions of the agreement without any prior notice. In the case of any alterations to the agreement, the user will be notified through on the Drivezy website or Mobile Application. An email will also be sent to the user.</span></li><li style=\"outline: none; font-size: 15px; line-height: 1.5; margin-top: 16px; margin-bottom: 16px;\"><span style=\"font-weight: bold;\">(1.3) It is considered that a user has read and agreed to the latest terms and conditions at the time of booking the vehicle. A booking is confirmed once the payment has been processed and any such payment is considered an agreement by the respective user to abide by the terms and conditions mentioned herein. In case a user is found to violate any criteria listed in this document, Drivezy may revoke his/her membership and/or refuse service without any prior notice.</span></li></ul>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<div class=\"vertical-center\" style=\"outline: none; flex: 1 1 0%; min-width: 200px; align-items: center; color: rgb(0, 0, 0); font-family: Proxima-Nova; font-size: medium; background-color: rgb(221, 226, 232);\"><h2 class=\"seperator-line\" style=\"outline: none; color: rgb(31, 45, 61); font-size: 16px; font-weight: 600; line-height: 20px;\">Rent a&nbsp;Car or Bike&nbsp;in&nbsp;Bengaluru</h2><p style=\"outline: none; font-size: 14px; color: rgb(119, 137, 155); line-height: 20px;\">Rent&nbsp;cars for self drive in&nbsp;Bengaluru. WeCars is the most preferred brand for self drive&nbsp;car&nbsp;rentals in&nbsp;Bengaluru.<span style=\"outline: none;\">&nbsp;You can also rent a bike in&nbsp;Bengaluru&nbsp;with Drivezy.</span><span style=\"outline: none;\">&nbsp;Self drive car rentals&nbsp;</span><span style=\"outline: none;\">and&nbsp;</span><span style=\"outline: none;\">self drive bike rental&nbsp;</span><span style=\"outline: none;\">options&nbsp;</span>are getting extremely popular in&nbsp;Bengaluru.<span style=\"outline: none;\">&nbsp;Rent an Activa,&nbsp;</span><span style=\"outline: none;\">Rent a Swift&nbsp;</span><span style=\"outline: none;\">or&nbsp;</span><span style=\"outline: none;\">Rent a Royal Enfield</span>&nbsp;and enjoy the freedom to drive on your own with Drivezy.</p></div><div class=\"vertical-center\" style=\"outline: none; flex: 1 1 0%; min-width: 200px; align-items: center; color: rgb(0, 0, 0); font-family: Proxima-Nova; font-size: medium; background-color: rgb(221, 226, 232);\"><h2 class=\"seperator-line\" style=\"outline: none; color: rgb(31, 45, 61); font-size: 16px; font-weight: 600; line-height: 20px;\">Car or Bike&nbsp;Rental Locations in&nbsp;Bengaluru</h2><div class=\"text-box\" style=\"outline: none; font-size: 14px; color: rgb(119, 137, 155); line-height: 20px;\">Hire a&nbsp;car&nbsp;for self drive from different locations. You can rent a self drive&nbsp;Car or Bike&nbsp;from these locations in&nbsp;Bengaluru:<ul class=\"list list-item\" style=\"outline: none; line-height: 17px; display: flex; flex-wrap: wrap;\"><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=5&amp;name=Kalyan%20Nagar%20-%20Hormavu%20Junction&amp;description=Kalyan%20Nagar%20-%20Hormavu%20Junction&amp;latitude=13.016656&amp;longitude=77.655193\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Kalyan Nagar - Hormavu Junction</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=139&amp;name=Bommanahalli&amp;description=Bommanahalli&amp;latitude=12.9034&amp;longitude=77.63093\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Bommanahalli</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=140&amp;name=Mysore%20Road%20(Near%20R.V%20College%20of%20Engineering)&amp;description=Mysore%20Road%20(Near%20R.V%20College%20of%20Engineering)&amp;latitude=12.926699&amp;longitude=77.501466\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Mysore Road (Near R.V College of Engineering)</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=147&amp;name=Bellandur%20-%20Green%20Glen%20Layout&amp;description=Bellandur%20-%20Green%20Glen%20Layout&amp;latitude=12.92854977&amp;longitude=77.67241669\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Bellandur - Green Glen Layout</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=163&amp;name=Vijayanagar&amp;description=Vijayanagar&amp;latitude=12.97714806&amp;longitude=77.54511261\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Vijayanagar</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=188&amp;name=Koramangala%20Agara&amp;description=Koramangala%20Agara&amp;latitude=12.924503&amp;longitude=77.651638\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Koramangala Agara</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=1&amp;venue_id=366&amp;name=K%20R%20Puram%20(New)&amp;description=K%20R%20Puram%20(New)&amp;latitude=13.023004&amp;longitude=77.6986\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">K R Puram (New)</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=378&amp;name=Mysore%20Road%20Satellite%20Bus%20Stand&amp;description=Mysore%20Road%20Satellite%20Bus%20Stand&amp;latitude=12.955371&amp;longitude=77.541974\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Mysore Road Satellite Bus Stand</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=433&amp;name=Indiranagar&amp;description=Indiranagar&amp;latitude=12.983759&amp;longitude=77.640111\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Indiranagar</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=463&amp;name=Mathikere&amp;description=Mathikere&amp;latitude=13.027458&amp;longitude=77.559345\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Mathikere</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=1&amp;venue_id=471&amp;name=BTM%20Layout&amp;description=BTM%20Layout&amp;latitude=12.905961&amp;longitude=77.604482\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">BTM Layout</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=475&amp;name=Manpho%20Convention%20Center%20(NEW)&amp;description=Manpho%20Convention%20Center%20(NEW)&amp;latitude=13.0420701&amp;longitude=77.6153623\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Manpho Convention Center (NEW)</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=477&amp;name=Ashwath%20Nagar%20(HBR%20Layout)&amp;description=Ashwath%20Nagar%20(HBR%20Layout)&amp;latitude=13.0408958&amp;longitude=77.626717\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Ashwath Nagar (HBR Layout)</a></span></li><li class=\"list-element\" style=\"outline: none; margin-bottom: 4px; padding-right: 24px; display: flex;\"><span class=\"trigger view\" style=\"outline: none;\"><a class=\"venue-text\" rel=\"noopener noreferrer\" target=\"_blank\" href=\"https://drivezy.com/Bengaluru/search?booking_type=18&amp;is_bike=0&amp;venue_id=481&amp;name=MS%20Palya%20-%20New&amp;description=MS%20Palya%20-%20New&amp;latitude=13.0873659&amp;longitude=77.5498497\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">MS Palya - New</a></span></li></ul></div></div><div class=\"vertical-center\" style=\"outline: none; flex: 1 1 0%; min-width: 200px; align-items: center; color: rgb(0, 0, 0); font-family: Proxima-Nova; font-size: medium; background-color: rgb(221, 226, 232);\"><h2 class=\"seperator-line\" style=\"outline: none; color: rgb(31, 45, 61); font-size: 16px; font-weight: 600; line-height: 20px;\">Self Drive Rentals in India</h2><p style=\"outline: none; font-size: 14px; color: rgb(119, 137, 155); line-height: 20px;\">WeCars is present in various locations in India:</p><ul class=\"list list-item\" style=\"outline: none; color: rgb(119, 137, 155); font-size: 14px; line-height: 17px; display: flex; flex-wrap: wrap;\"><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Mumbai</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Bengaluru</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Pune</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Mysuru</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;bike</span>&nbsp;in&nbsp;Goa</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Hyderabad</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Nagpur</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Hubli</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Delhi</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Amritsar</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Chandigarh</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Chennai</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Coimbatore</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Madurai</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Tirupur</a></li><li class=\"list-element cursor-pointer pointer\" style=\"outline: none; cursor: pointer; margin-bottom: 4px; padding-right: 24px; display: flex;\"><a class=\"venue-text\" href=\"https://drivezy.com/privacy-policy\" style=\"outline: none; color: rgb(119, 137, 155); transition: color 0.3s ease 0s;\">Rent a<span style=\"outline: none;\">&nbsp;car</span>&nbsp;in&nbsp;Amravati</a></li></ul><p style=\"outline: none; font-size: 14px; color: rgb(119, 137, 155); line-height: 20px;\">WeCars is the most affordable brand that provides self drive cars and self drive bikes for rent across India. Rent a car for self drive, Rent a scooter, hire cars of your choice.</p></div>'),
(3, 'About Us ', 'aboutus', '<ul class=\"tc-content-section\" style=\"outline: none; color: rgb(0, 0, 0); font-family: Proxima-Nova; font-size: medium;\"><li class=\"tc-question question-one\" style=\"outline: none; line-height: 2em; font-size: 12px; text-align: justify;\"><div class=\"cd-tc-first\" style=\"outline: none;\"><p class=\"para-content\" style=\"outline: none; margin-bottom: 16px; color: rgb(119, 137, 155); line-height: 2em; font-size: 14px;\">The invention of the motor car can be termed as a quantum leap at the peak of the European Industrial Revolution. However, since the days of Karl Benz, little has been done to disrupt the way cars are bought. We at WeCars are on a mission to transform the way cars are purchased, rented and sold. The concept of car rentals is yet to spread its wings in India. As pioneers in the Indian self drive car rental industry, we believe in the mantra-&nbsp;<b style=\"outline: none; color: rgb(31, 45, 61); opacity: 0.9;\">“Why buy a car, when you can rent one?”</b></p></div></li><h6 style=\"outline: none; font-weight: 600; margin-top: 24px; font-size: 16px; color: rgb(31, 45, 61);\">WHY WE DO IT?</h6><li class=\"tc-question question-one\" style=\"outline: none; line-height: 2em; font-size: 12px; text-align: justify;\"><div class=\"cd-tc-first\" style=\"outline: none;\"><p class=\"para-content\" style=\"outline: none; margin-bottom: 16px; color: rgb(119, 137, 155); line-height: 2em; font-size: 14px;\">Transport is the backbone of any modern economy. However, rapid motorisation effectuates its own set of issues. While on one hand the burgeoning number of cars on the road has become a menace in metros across India, a number of cities suffer from lack of good urban commuting solutions. The concept of car rentals may be simple, but it holds immense potential. Be it the positive impact of rental cars on the environment or reducing the number of cars out on the streets, the shared economy of self drive car rentals is a promising solution to a number of problems plaguing urban India.</p></div></li><h6 style=\"outline: none; font-weight: 600; margin-top: 24px; font-size: 16px; color: rgb(31, 45, 61);\">HOW WE DO IT?</h6><li class=\"tc-question question-one\" style=\"outline: none; line-height: 2em; font-size: 12px; text-align: justify;\"><div class=\"cd-tc-first\" style=\"outline: none;\"><p class=\"para-content\" style=\"outline: none; margin-bottom: 16px; color: rgb(119, 137, 155); line-height: 2em; font-size: 14px;\">Even the most complex of problems has a simple yet elegant solution. At WeCars&nbsp;we don’t just rent cars, we create products which complete the existing ecosystem. We build technology which provides a comprehensive solution to the issue of urban commute by connecting commuters to vendors in the self drive car rental business. Our vision at WeCars&nbsp;is to provide a platform where car owners can engage customers and conduct business seamlessly. We concentrate our efforts on simplifying the process of hiring cars by creating scalable mechanisms to conduct and facilitate transactions while providing an economical mode of transport to all.</p></div></li></ul>'),
(11, 'FAQs', 'faqs', '										<span style=\"color: rgb(22, 32, 64); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We at Wecars, build technology which provides a comprehensive solution to the issue of urban commute by connecting commuters to vendors in the self drive car rental business. We concentrate our efforts on simplifying the process of hiring vehicle by creating scalable mechanisms to conduct and facilitate transactions while proving an economical mode of transport to all.</span>\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(2, 'caestro@wecars.com', '2021-01-24 14:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(4, 'shoaib121@wecars.com', 'Had a great experience.', '2021-01-19 17:38:37', 1),
(5, 'caestro@wecars.com', 'Good Service.', '2021-01-20 09:30:50', 1),
(6, 'caestro@wecars.com', 'Bad Service', '2021-01-24 14:51:38', 0);

--
-- Triggers `tbltestimonial`
--
DELIMITER $$
CREATE TRIGGER `TestM` BEFORE DELETE ON `tbltestimonial` FOR EACH ROW INSERT INTO logs VALUES(Null, OLD.UserEmail, OLD.Testimonial)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(7, 'M SHOAIB NUMAANULLA BAIG', 'shoaib121@wecars.com', 'dbe8023b97f4a56d5c24cba473fd5662', '9008560282', '28/07/1999', '568, Bong Street, Bangalore', 'Bangalore', 'India', '2021-01-19 17:33:16', '2021-01-19 17:37:32'),
(8, 'Abu Caestro', 'caestro@wecars.com', '09d0714edbfe6a5be5f51a8d706cefb6', '9988552233', NULL, NULL, NULL, NULL, '2021-01-20 09:22:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(7, 'Hyundai ION', 10, 'We simplified car rentals, so you can focus on what\'s important to you.', 500, 'Diesel', 2015, 5, '1558698293_eon.png', '1558698293_eon.png', '1558698293_eon.png', '1558698293_eon.png', NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, 1, 1, '2021-01-19 16:07:46', '2021-01-20 06:18:48'),
(8, 'Maruti Ritz', 9, 'We simplified car rentals, so you can focus on what\'s important to you.', 600, 'Petrol', 2014, 5, '1558700628_ritz2.png', '1558700628_ritz2.png', '1558700628_ritz2.png', '1558700628_ritz2.png', '', 1, 1, 1, NULL, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2021-01-19 16:17:05', '2021-01-22 10:23:13'),
(9, 'Maruti Wagon R', 9, 'We simplified car rentals, so you can focus on what\'s important to you.', 600, 'Petrol', 2016, 5, '1558701323_wagon-r.png', '1558701323_wagon-r.png', '1558701323_wagon-r.png', '1558701323_wagon-r.png', '', 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-01-19 16:20:31', NULL),
(10, 'Swift LDI', 9, 'We simplified car rentals, so you can focus on what\'s important to you.', 800, 'Petrol', 2018, 5, '1558701385_white-swift.png', '1558701385_white-swift.png', '1558701385_white-swift.png', '1558701385_white-swift.png', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, 1, NULL, '2021-01-19 16:23:50', NULL),
(11, 'Baleno RS', 9, 'We simplified car rentals, so you can focus on what\'s important to you.', 1000, 'Petrol', 2019, 5, '1558698059_baleno.png', '1558698059_baleno.png', '1558698059_baleno.png', '1558698059_baleno.png', '', 1, 1, 1, 1, NULL, 1, 1, 1, 1, 1, 1, 1, '2021-01-19 16:26:23', NULL),
(12, 'Mahindra XUV 500 W7', 9, 'We simplified car rentals, so you can focus on what\'s important to you.', 3300, 'Diesel', 2017, 7, '1570700651_MahindraXUV500W7(1)(1).png', '1570700651_MahindraXUV500W7(1)(1).png', '1570700651_MahindraXUV500W7(1)(1).png', '1570700651_MahindraXUV500W7(1)(1).png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-01-19 16:29:53', NULL),
(13, 'Mahindra Scorpio', 12, 'We simplified car rentals, so you can focus on what\'s important to you.', 2700, 'Diesel', 2016, 7, '1558700745_scorpio.png', '1558700745_scorpio.png', '1558700745_scorpio.png', '1558700745_scorpio.png', '', 1, 1, 1, NULL, 1, 1, NULL, 1, 1, 1, NULL, 1, '2021-01-19 16:31:27', NULL),
(14, 'TATA Hexa XE', 11, 'We simplified car rentals, so you can focus on what\'s important to you.', 2900, 'Diesel', 2018, 7, '1558700858_tata-hexa.png', '1558700858_tata-hexa.png', '1558700858_tata-hexa.png', '1558700858_tata-hexa.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-01-19 16:33:39', NULL),
(15, 'TATA Tiago', 11, 'We simplified car rentals, so you can focus on what\'s important to you.', 700, 'Petrol', 2018, 5, '1558700964_tiago.png', '1558700964_tiago.png', '1558700964_tiago.png', '1558700964_tiago.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-01-19 16:34:57', NULL),
(16, 'Hyundai Creta ', 10, 'We simplified car rentals, so you can focus on what\'s important to you.', 3500, 'Diesel', 2020, 7, '1558698201_creta.png', '1558698201_creta.png', '1558698201_creta.png', '1558698201_creta.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-01-19 16:38:20', NULL),
(17, 'Ford Aspire', 13, 'We simplified car rentals, so you can focus on what\'s important to you.', 1500, 'Diesel', 2016, 5, '1558700163_ford-aspire.png', '1558700163_ford-aspire.png', '1558700163_ford-aspire.png', '1558700163_ford-aspire.png', '', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, NULL, NULL, '2021-01-19 16:40:26', NULL),
(18, 'Ford Figo Trend', 13, 'We simplified car rentals, so you can focus on what\'s important to you.', 1450, 'Petrol', 2016, 5, '1558700142_figo-trend.png', '1558700142_figo-trend.png', '1558700142_figo-trend.png', '1558700142_figo-trend.png', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, NULL, NULL, '2021-01-19 16:42:04', NULL),
(19, 'Honda Amaze', 14, 'We simplified car rentals, so you can focus on what\'s important to you.', 1900, 'Petrol', 2018, 5, '1558697978_amaze.png', '1558697978_amaze.png', '1558697978_amaze.png', '1558697978_amaze.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL, '2021-01-19 16:43:43', NULL),
(20, 'Honda BR-V', 14, 'We simplified car rentals, so you can focus on what\'s important to you.', 2800, 'Petrol', 2020, 7, '1571666323_Honda-BR-V.png', '1571666323_Honda-BR-V.png', '1571666323_Honda-BR-V.png', '1571666323_Honda-BR-V.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-01-19 16:44:54', '2021-01-24 14:45:54'),
(21, 'Honda City', 14, 'We simplified car rentals, so you can focus on what\'s important to you', 2000, 'Petrol', 2017, 5, '1558700227_honda-city.png', '1558700227_honda-city.png', '1558700227_honda-city.png', '1558700227_honda-city.png', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-01-20 08:49:01', NULL),
(22, 'Innova Crysta', 15, 'We simplified car rentals, so you can focus on what\'s important to you.', 3500, 'Diesel', 2020, 7, 'Toyota_innova_crysta.jpg', 'Toyota_innova_crysta.jpg', 'Toyota_innova_crysta.jpg', 'Toyota_innova_crysta.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-01-20 08:58:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
