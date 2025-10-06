-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 10:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpe`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 5689845475, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2023-03-25 07:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrand`
--

CREATE TABLE `tblbrand` (
  `ID` int(10) NOT NULL,
  `BrandName` varchar(200) DEFAULT NULL,
  `Status` int(2) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbrand`
--

INSERT INTO `tblbrand` (`ID`, `BrandName`, `Status`, `CreationDate`) VALUES
(1, 'Oppo', 1, '2023-03-25 07:19:31'),
(4, 'RedMI', 1, '2023-03-25 07:19:31'),
(6, 'Samsung', 1, '2023-03-26 06:18:45'),
(7, 'realme', 1, '2023-03-26 06:18:45'),
(8, 'Xiaomi', 1, '2023-03-26 06:19:45'),
(9, 'Vivo', 1, '2023-03-26 06:23:59'),
(10, 'Apple', 1, '2023-03-26 06:28:07'),
(17, 'Oneplus', 1, '2023-03-26 06:29:45'),
(27, 'Home Appliances', 1, '2023-03-28 19:58:54'),
(29, 'Mobile Accessories', 1, '2023-03-28 19:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `Name`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(9, 'Pruthviraj', 'omraj9685@gmail.com', 'sasad', '2023-05-02 08:31:35', NULL),
(10, 'Pruthviraj Patil', 'omraj9685@gmail.com', 'asfdsafd', '2023-05-02 08:47:33', NULL),
(11, 'RamBhogate', 'ram56@gmail.com', 'asdffasdf', '2023-05-02 08:48:18', NULL),
(12, 'Pruthviraj Patil', 'omraj9685@gmai.vom', 'qqwqw12', '2023-05-02 09:20:38', NULL),
(13, 'Pruthviraj Patil', 'prurhvirajpatil1434@gmail.com', 'xyzuxjku ukyguo g oih ippik', '2023-05-02 18:20:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `ID` int(10) NOT NULL,
  `BillingNumber` varchar(120) DEFAULT NULL,
  `CustomerName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `ModeofPayment` varchar(50) DEFAULT NULL,
  `BillingDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Zipcode` int(10) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `Zipcode`, `Phone`, `Email`, `OrderTime`, `OrderFinalStatus`) VALUES
(7, '14', '389625295', '12323', 'wdwe', 'qwwe', '', 'A/P Ksba Walve', 416203, 8766842665, 'omraj9685@gmail.com', '2023-05-03 07:20:56', NULL),
(8, '15', '730794559', '12323', 'wdwe', 'qwwe', 'xzjcasdf', 'A/P Kagal, Dist-Kolhapur, Maharashtra ', 416203, 9192939494, 'piyush@gmail.com', '2023-05-03 08:27:57', 'Order Confirmed'),
(9, '16', '555945469', '12323', 'wdwe', 'qwwe', 'xzjcasdf', 'A/P Ksba Walve', 416203, 8766842665, 'vallabhsangar@gmail.com', '2023-05-08 17:17:58', 'Mobile Delivered'),
(10, '19', '240907385', '12323', 'wdwe', 'qwwe', '', 'A/P Kagal, Dist-Kolhapur, Maharashtra ', 416203, 8766842665, 'omraj9685@gmail.com', '2023-05-11 07:54:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `PId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL,
  `CashonDelivery` varchar(100) DEFAULT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `PId`, `IsOrderPlaced`, `OrderNumber`, `CashonDelivery`, `OrderDate`) VALUES
(13, '9', '2', NULL, NULL, NULL, '2021-08-25 16:54:37'),
(14, '10', '1', 1, '916770215', '', '2023-05-02 09:21:01'),
(16, '12', '4', NULL, NULL, NULL, '2023-05-02 17:55:57'),
(17, '12', '1', NULL, NULL, NULL, '2023-05-02 18:22:09'),
(20, '13', '1', NULL, NULL, NULL, '2023-05-03 03:25:13'),
(21, '14', '9', 1, '389625295', 'Cash on Delivery', '2023-05-03 07:02:55'),
(22, '', '3', NULL, NULL, NULL, '2023-05-03 08:25:51'),
(23, '15', '3', 1, '730794559', 'Cash on Delivery', '2023-05-03 08:26:27'),
(24, '15', '1', NULL, NULL, NULL, '2023-05-03 08:44:16'),
(25, '16', '4', 1, '555945469', 'Cash on Delivery', '2023-05-08 17:17:24'),
(26, '16', '8', NULL, NULL, NULL, '2023-05-10 07:42:37'),
(27, '16', '1', NULL, NULL, NULL, '2023-05-10 09:51:54'),
(28, '19', '2', 1, '240907385', 'Cash on Delivery', '2023-05-11 07:54:02'),
(29, '19', '1', NULL, NULL, NULL, '2023-05-11 07:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: center;\"><font color=\"#333e48\" face=\"Roboto, sans-serif\"><span style=\"font-size: 18px;\">Dev Mobile Gargoti is a brand mobile store located in Main Road, Gargoti. We supply Samsung, Redmi - Mi, Oppo, Realme, Vivo, iPhone, OnePlus, etc brands. Also, we have a store of a refrigerator, microwave oven, LED TV, geyser, heater like home appliances.\"</span></font></div><div style=\"text-align: center;\"><font color=\"#333e48\" face=\"Roboto, sans-serif\"><span style=\"font-size: 18px;\">We are the most popular mobile sellers located in Gargoti</span></font></div>                ', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', 'Gargoti - Kolhapur Main Road, Gargoti ,.416209', 'devmobiles@gmail.com', 9226192222, NULL, '10:30 am to 8:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `ID` int(10) NOT NULL,
  `ProductName` varchar(200) DEFAULT NULL,
  `BrandName` varchar(200) DEFAULT NULL,
  `ModelNumber` varchar(200) DEFAULT NULL,
  `Stock` int(10) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Status` int(2) DEFAULT NULL,
  `Color` varchar(100) DEFAULT '',
  `RAM` varchar(100) DEFAULT NULL,
  `ROM` varchar(100) DEFAULT NULL,
  `ExpandableUpto` varchar(100) DEFAULT NULL,
  `FrontCamera` varchar(200) DEFAULT NULL,
  `KeyFeature` longtext DEFAULT NULL,
  `Specification` longtext DEFAULT NULL,
  `Processor` varchar(200) DEFAULT NULL,
  `Display` varchar(200) DEFAULT NULL,
  `Image1` varchar(200) DEFAULT NULL,
  `Image2` varchar(200) DEFAULT NULL,
  `Image3` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`ID`, `ProductName`, `BrandName`, `ModelNumber`, `Stock`, `Price`, `Status`, `Color`, `RAM`, `ROM`, `ExpandableUpto`, `FrontCamera`, `KeyFeature`, `Specification`, `Processor`, `Display`, `Image1`, `Image2`, `Image3`, `CreationDate`) VALUES
(1, 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)', 'Oppo', 'Reno6', 8, '19000', 1, 'Glow', '12GB', '256GB', '256GB', '4 MP+8 MP+2 MP+2 MP | 32 MP Front Camera', '12GB RAM | 256GB ROM\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\n64 MP+8 MP+2 MP+2 MP | 32 MP Front Camera\r\nMediaTek MT6893 Dimensity 1200 5G (6 nm)\r\nLi-Po 4500 mAh, non-removable', 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)\r\n \r\n\r\nThe OPPO Reno6 Pro 5G is not only easy on the eyes but also equipped with innovative features. The X-axis Linear Motor ensures immersive viewing and usage. With an ultra-slim body and lightweight construction, you can easily hold it during extended usage. You can replicate the appeal of some of your favourite images in a single click with the AI Palette feature. And, you can enjoy long-lasting usage with its 4500 mAh battery.\r\nDisplay\r\nDisplay Size\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2400 pixels, 20:9 ratio (~402 ppi density)\r\nDisplay Type\r\nAMOLED, 90Hz, HDR10+, 500 nits (typ), 800 nits (HDR)', 'hkjhkjhjk', '6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)', 'e7b621662c291d4e3be1fb065dc68bb31629826151.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627365374.jpg', 'fb26e29bd66bee25fe4b1b807033f2d11627358719.jpg', '2023-03-20 05:03:32'),
(2, 'Apple Iphone 12 Mini (4GB/256GB|Purple)', 'Apple', '12 Mi', 10, '150000', 1, 'Purple', '4GB', '256 GB,', '256 GB', '12MP + 12MP | 12MP Front Camera', 'Highlights:\r\n256 GB ROM\r\n13.72 cm (5.4 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA14 Bionic Chip with Next Generation Neural Engine Processor\r\nCeramic Shield\r\nIP68 Water Resistance\r\nAll Screen OLED Display', 'Network\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nBody\r\nItem Weight\r\n135 g (4.76 oz)\r\nDimensions\r\n131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29 in)\r\nSIM\r\nSingle SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\nDisplay\r\nDisplay Size\r\n5.4 inches, 71.9 cm2 (~85.1% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)\r\nDisplay Type\r\nSuper Retina XDR OLED, HDR10, 625 nits (typ), 1200 nits (peak)\r\nStorage\r\nStorage\r\n256GB\r\nRAM\r\n4GB\r\nCamera\r\nPrimary Camera Features\r\nDual 12MP Camera System (Ultra Wide and Wide), Ultra Wide: f/2.4 Aperture, Wide: f/1.6 Aperture, Night Mode, Deep Fusion, Optical Image Stabilisation, 2x Optical Zoom Out, Digital Zoom Upto 5x, Portrait Mode with Advanced Bokeh and Depth Control, Portrait\r\nSecondary Camera\r\n12MP Front Camera\r\nPrimary Camera\r\n12MP + 12MP\r\nSecondary Camera Feature\r\nTrueDepth Camera, 12MP Photos, f/2.2 Aperture, Smart HDR 3 for Photos, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono), Extended Dynamic Rnge for Video at\r\nBattery\r\nBattery\r\nLi-Ion 2227 mAh, non-removable\r\nPlatform\r\nOperating System\r\niOS 14.1, upgradable to iOS 14.2\r\nProcessor\r\nA14 Bionic Chip with Next Generation Neural Engine\r\nOthers\r\nSensors\r\nFace ID, Barometer, Three‑axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor\r\nGPS\r\nBuilt-in GPS, GLONASS, Galileo, QZSS and BeiDou\r\nWLAN\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth\r\nv5.0', 'Apple Bionic', '6.5 inch', '5cef62c2e623b4ef9ab3f895583c584e1627365453.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627358980.jpg', '1682412aa00977c3fb8a65b510ecfbd41627358980.jpg', '2023-03-20 05:09:31'),
(3, 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)', 'Oppo', 'Reno6', 8, '20000', 1, 'Glow', '12GB', '256GB', '256GB', '4 MP+8 MP+2 MP+2 MP | 32 MP Front Camera', '12GB RAM | 256GB ROM\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\n64 MP+8 MP+2 MP+2 MP | 32 MP Front Camera\r\nMediaTek MT6893 Dimensity 1200 5G (6 nm)\r\nLi-Po 4500 mAh, non-removable', 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)\r\n \r\n\r\nThe OPPO Reno6 Pro 5G is not only easy on the eyes but also equipped with innovative features. The X-axis Linear Motor ensures immersive viewing and usage. With an ultra-slim body and lightweight construction, you can easily hold it during extended usage. You can replicate the appeal of some of your favourite images in a single click with the AI Palette feature. And, you can enjoy long-lasting usage with its 4500 mAh battery.\r\nDisplay\r\nDisplay Size\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2400 pixels, 20:9 ratio (~402 ppi density)\r\nDisplay Type\r\nAMOLED, 90Hz, HDR10+, 500 nits (typ), 800 nits (HDR)', 'hkjhkjhjk', '6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)', 'fb26e29bd66bee25fe4b1b807033f2d11627365291.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627365374.jpg', 'fb26e29bd66bee25fe4b1b807033f2d11627358719.jpg', '2023-03-20 05:13:17'),
(4, 'Apple Iphone 12 Mini (4GB/256GB|Purple)', 'Apple', '12 Mi', 100, '140000', 1, 'Purple', '4GB', '256 GB,', '256 GB', '12MP + 12MP | 12MP Front Camera', 'Highlights:\r\n256 GB ROM\r\n13.72 cm (5.4 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA14 Bionic Chip with Next Generation Neural Engine Processor\r\nCeramic Shield\r\nIP68 Water Resistance\r\nAll Screen OLED Display', 'Network\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nBody\r\nItem Weight\r\n135 g (4.76 oz)\r\nDimensions\r\n131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29 in)\r\nSIM\r\nSingle SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\nDisplay\r\nDisplay Size\r\n5.4 inches, 71.9 cm2 (~85.1% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)\r\nDisplay Type\r\nSuper Retina XDR OLED, HDR10, 625 nits (typ), 1200 nits (peak)\r\nStorage\r\nStorage\r\n256GB\r\nRAM\r\n4GB\r\nCamera\r\nPrimary Camera Features\r\nDual 12MP Camera System (Ultra Wide and Wide), Ultra Wide: f/2.4 Aperture, Wide: f/1.6 Aperture, Night Mode, Deep Fusion, Optical Image Stabilisation, 2x Optical Zoom Out, Digital Zoom Upto 5x, Portrait Mode with Advanced Bokeh and Depth Control, Portrait\r\nSecondary Camera\r\n12MP Front Camera\r\nPrimary Camera\r\n12MP + 12MP\r\nSecondary Camera Feature\r\nTrueDepth Camera, 12MP Photos, f/2.2 Aperture, Smart HDR 3 for Photos, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono), Extended Dynamic Rnge for Video at\r\nBattery\r\nBattery\r\nLi-Ion 2227 mAh, non-removable\r\nPlatform\r\nOperating System\r\niOS 14.1, upgradable to iOS 14.2\r\nProcessor\r\nA14 Bionic Chip with Next Generation Neural Engine\r\nOthers\r\nSensors\r\nFace ID, Barometer, Three?axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor\r\nGPS\r\nBuilt-in GPS, GLONASS, Galileo, QZSS and BeiDou\r\nWLAN\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth\r\nv5.0', '1.5 GHZ', '5', '5cef62c2e623b4ef9ab3f895583c584e1627365453.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627358980.jpg', '1682412aa00977c3fb8a65b510ecfbd41627358980.jpg', '2023-05-02 19:04:49'),
(5, 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)', 'Oppo', 'Reno6', 8, '20000', 1, 'Glow', '12GB', '256GB', '256GB', '4 MP+8 MP+2 MP+2 MP | 32 MP Front Camera', '12GB RAM | 256GB ROM\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\n64 MP+8 MP+2 MP+2 MP | 32 MP Front Camera\r\nMediaTek MT6893 Dimensity 1200 5G (6 nm)\r\nLi-Po 4500 mAh, non-removable', 'Oppo Reno6 Pro 5G (12GB/256GB | Glow)\r\n \r\n\r\nThe OPPO Reno6 Pro 5G is not only easy on the eyes but also equipped with innovative features. The X-axis Linear Motor ensures immersive viewing and usage. With an ultra-slim body and lightweight construction, you can easily hold it during extended usage. You can replicate the appeal of some of your favourite images in a single click with the AI Palette feature. And, you can enjoy long-lasting usage with its 4500 mAh battery.\r\nDisplay\r\nDisplay Size\r\n6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2400 pixels, 20:9 ratio (~402 ppi density)\r\nDisplay Type\r\nAMOLED, 90Hz, HDR10+, 500 nits (typ), 800 nits (HDR)', 'hkjhkjhjk', '6.55 inches, 103.6 cm2 (~88.6% screen-to-body ratio)', 'fb26e29bd66bee25fe4b1b807033f2d11627365291.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627365374.jpg', 'fb26e29bd66bee25fe4b1b807033f2d11627358719.jpg', '2023-05-02 19:04:49'),
(6, 'Apple Iphone 12 Mini (4GB/256GB|Purple)', 'Apple', '12 Mi', 10, '1500', 0, 'Purple', '4GB', '256 GB,', '256 GB', '12MP + 12MP | 12MP Front Camera', 'Highlights:\r\n256 GB ROM\r\n13.72 cm (5.4 inch) Super Retina XDR Display\r\n12MP + 12MP | 12MP Front Camera\r\nA14 Bionic Chip with Next Generation Neural Engine Processor\r\nCeramic Shield\r\nIP68 Water Resistance\r\nAll Screen OLED Display', 'Network\r\nNetwork Type\r\nGSM / CDMA / HSPA / EVDO / LTE / 5G\r\nBody\r\nItem Weight\r\n135 g (4.76 oz)\r\nDimensions\r\n131.5 x 64.2 x 7.4 mm (5.18 x 2.53 x 0.29 in)\r\nSIM\r\nSingle SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\nDisplay\r\nDisplay Size\r\n5.4 inches, 71.9 cm2 (~85.1% screen-to-body ratio)\r\nDisplay Resolution\r\n1080 x 2340 pixels, 19.5:9 ratio (~476 ppi density)\r\nDisplay Type\r\nSuper Retina XDR OLED, HDR10, 625 nits (typ), 1200 nits (peak)\r\nStorage\r\nStorage\r\n256GB\r\nRAM\r\n4GB\r\nCamera\r\nPrimary Camera Features\r\nDual 12MP Camera System (Ultra Wide and Wide), Ultra Wide: f/2.4 Aperture, Wide: f/1.6 Aperture, Night Mode, Deep Fusion, Optical Image Stabilisation, 2x Optical Zoom Out, Digital Zoom Upto 5x, Portrait Mode with Advanced Bokeh and Depth Control, Portrait\r\nSecondary Camera\r\n12MP Front Camera\r\nPrimary Camera\r\n12MP + 12MP\r\nSecondary Camera Feature\r\nTrueDepth Camera, 12MP Photos, f/2.2 Aperture, Smart HDR 3 for Photos, Portrait Mode with Advanced Bokeh and Depth Control, Portrait Lighting with Six Effects (Natural, Studio, Contour, Stage, Stage Mono, High-Key Mono), Extended Dynamic Rnge for Video at\r\nBattery\r\nBattery\r\nLi-Ion 2227 mAh, non-removable\r\nPlatform\r\nOperating System\r\niOS 14.1, upgradable to iOS 14.2\r\nProcessor\r\nA14 Bionic Chip with Next Generation Neural Engine\r\nOthers\r\nSensors\r\nFace ID, Barometer, Three‑axis Gyro, Accelerometer, Proximity Sensor, Ambient Light Sensor\r\nGPS\r\nBuilt-in GPS, GLONASS, Galileo, QZSS and BeiDou\r\nWLAN\r\nWi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth\r\nv5.0', 'der', 'efrwr', '5cef62c2e623b4ef9ab3f895583c584e1627365453.jpg', '563b9ab07e7b2ac7bdf64fb113aafcf11627358980.jpg', '1682412aa00977c3fb8a65b510ecfbd41627358980.jpg', '2023-03-27 04:09:40'),
(7, 'Oneplus', 'Oneplus', '2', 5, '19000', 1, 'Light Grey', '8 GB', '128 GB', '1 TB', '16 MP', '6.43-inch AMOLED display with a 90Hz refresh rate,4,500mAh battery with 65W fast charging', '50MP primary camera with OIS,: 4,500mAh battery with 65W fast charging,5G connectivity', 'snapdragon 3.0', '6.5 inch', 'b7145dd2d9e7c3a4eb0b9352b76802e51683054289.jpg', '2a764a9e212640ad4be5cd39d4c3e8cd1683054289.jpg', '2a764a9e212640ad4be5cd39d4c3e8cd1683054289.jpg', '2023-05-02 19:04:49'),
(8, 'oneplus eight T', 'Oneplus', '8T', 5, '45000', 1, 'Grey', '8 GB', '128 GB', '1 TB', '64 MP', '50MP primary camera with OIS,: 4,500mAh battery with 65W fast charging,5G connectivity', 'Model Number: 2\r\nRAM: 8 GB\r\nROM: 128 GB\r\nExpandable Upto1 TB\r\nFront Camera: 16 MP\r\nProcessor: snapdragon 3.0\r\nDispay: 6.5 inch', 'snapdragon 3.0', '6.5 inch', 'e49fb565ced77ddcbf8ab945ce72553e1683054861.jpg', '0ef963e88e044096af4d2dfefb7d4b011683054861.jpg', '0ef963e88e044096af4d2dfefb7d4b011683054861.jpg', '2023-05-02 19:14:21'),
(9, 'Refrigerator', 'Home Appliances', '34', 5, '20000', 1, 'blue', '-', '-', '-', '-', 'Capacity: The LG 185 has a capacity of 185 liters, making it suitable for small to medium-sized families.\r\n ', 'Capacity: 185 liters\r\nSmart Inverter Compressor\r\nMoist Balance Crisper\r\nDoor Cooling+\r\nToughened Glass Shelves\r\nIce Tray\r\nWorks', '-', '-', '8d2b5d4e323d6a2222e2e8208a80d3691683055303.jpg', '9e14e24246623bff1925318b4faf91771683055303.jpg', '8b9c4aa0ca534b19084a97ebeca839d11683055303.jpg', '2023-05-02 19:21:43'),
(10, 'Washing Machine', 'Home Appliances', 'm1', 3, '30000', 1, 'silver', '-', '-', '-', '-', 'EcoBubble technology for efficient cleaning with less energy\r\nAddWash door to add forgotten items during the wash cycle', 'Capacity: Samsung washing machines come in various sizes ranging from 6kg to 21kg.\r\nDrum type: The drum can be made of stainless steel, diamond drum, or ceramic.\r\nSpin speed: The spin speed can range from 600 RPM to 1600 RPM\r\necobubble technology, quick wash, smart control, and steam cleaning.', '-', '-', '9fe04b61d1a22a4ddb05bb39af7ec7561683083372.jpg', '6bca8e9278e4073d44185dd956ed6f861683083372.jpg', '2356eadf9bccaa8010212ad6a9eb2cb21683083372.jpg', '2023-05-03 03:09:32'),
(11, 'realme', 'realme', '12 C', 2, '14000', 1, 'black', '4 GB', '128 GB', '500 GB', '50 MP', 'Octa core 1GHZ processor.\r\nEnhance gaming performance.\r\nDisplay oliophobic coating.', 'Processor: MediaTek Helio G35\r\nRAM: 3GB\r\nStorage: 32GB (expandable up to 256GB with microSD)\r\nDisplay: 6.5-inch HD+ IPS LCD\r\nRear camera: 13MP primary sensor, 2MP depth sensor, 2MP macro sensor\r\nFront camera: 5MP\r\nBattery: 6,000mAh\r\nOperating system: Android 10 with Realme UI\r\nOther features: Dual-SIM support, Wi-Fi, Bluetooth 5.0, microUSB port, 3.5mm headphone jack, rear-mounted fingerprint sensor.', 'mediaTek Helio G85', '17 cm', '69b4a15ecc2076aa03a5f4483ed76d171683083797.jpg', '2c6798bdbe2b3aace4f28e4488ff2c821683083797.jpg', '2c6798bdbe2b3aace4f28e4488ff2c821683083797.jpg', '2023-05-03 03:16:37'),
(12, 'Redmi', 'Xiaomi', '11', 2, '17000', 1, 'Mat Black', '4 GB', '64 GB', '500 GB', '50 MP', '5000 mAh super power battary.\r\n18 watt fast charger (input/output).\r\n5G connectivity\r\n\r\n\r\n', 'Display: 6.6-inch FHD+ IPS LCD, 1080 x 2400 pixels resolution\r\nProcessor: MediaTek Helio G88\r\nRAM: 4GB/6GB\r\nStorage: 64GB/128GB internal storage, expandable up to 512GB via microSD card\r\nRear Camera: Quad Camera setup - 50MP primary sensor, 8MP ultra-wide-angle lens, 2MP depth sensor, and a 2MP macro lens\r\nFront Camera: 8MP selfie camera\r\nBattery: 5000mAh battery with 18W fast charging support\r\nOperating System: Android 11 with MIUI 12.5', 'mediaTek Helio G85', '6.5 inch', '81344ad4160df38e8f4732998ceb84371683084273.jpg', '9f6fed1fad71ce538568da7a7dc2c6351683084273.jpg', '81344ad4160df38e8f4732998ceb84371683084273.jpg', '2023-05-03 03:24:33'),
(13, 'samsung', 'Samsung', 's20', 5, '30000', 1, 'light pink', '8 GB', '128 GB', '1 TB', '64 MP', '5 G Connectivity supporting.\r\nFront camera 32 Mp with  high picture quality.', 'Display: 6.2-inch Dynamic AMOLED, 1440 x 3200 pixels resolution, 120Hz refresh rate\r\nProcessor: Exynos 990 (Global) or Snapdragon 865 (USA)\r\nRAM: 8GB\r\nStorage: 128GB, expandable up to 1TB via microSD\r\nRear Camera: 12MP wide, 64MP telephoto, and 12MP ultra-wide lenses\r\nFront Camera: 10MP\r\nBattery: 4000mAh, with fast charging and wireless charging capabilities\r\nOperating System: Android 10, upgradable to Android 11 with One UI 3.0', 'snapdragon 668', '6.5 inch', '45feab61f8da5d305c6d4342ce0cdb191683084938.jpg', '584ded102c3995398025dd9d68046d261683084938.jpg', '67f74f8dd570c795c4fb5bb07dd794351683084938.png', '2023-05-03 03:35:38'),
(14, 'vivo V fifteen', 'Vivo', 'V15', 3, '16000', 1, 'mix color', '8 GB', '128 GB', '1 TB', '64 MP', 'Dual Engineen fast charging.\r\n64 MP back camera with high picutre quality.\r\n48 MP front pop up camera.\r\n', 'Display: 6.39-inch Super AMOLED display with a resolution of 1080 x 2316 pixels\r\nProcessor: Qualcomm Snapdragon 675AIE\r\nRAM: 6GB\r\nStorage: 128GB internal storage, expandable up to 256GB via microSD card\r\nRear Camera: Triple camera setup with a 48-megapixel primary sensor, an 8-megapixel ultra-wide-angle lens, and a 5-megapixel depth sensor\r\nFront Camera: 32-megapixel pop-up selfie camera\r\nBattery: 3700mAh battery with fast charging support\r\nOperating System: Android 9.0 Pie with Funtouch OS 9.0', 'snapdragon 668', '6.5 inch', 'b283584006fc0b9f0d2146852a2c60c91683085324.jpg', '5d68730a611f19b4bc0949bb8bea3d7b1683085324.jpg', 'f054e76da2cc899b1d51d8cb609ce98f1683085324.jpg', '2023-05-03 03:42:04'),
(15, 'Redmi note 10', 'RedMI', 'Note 10', 10, '12999', 1, 'Green,Shadow Black', '6GB', '128GB', '512GB', '48MP+8MP+2MP,13MP', '6.22-inch HD+ display,Rear-mounted fingerprint scanner', ' Side-mounted fingerprint scanner, dual stereo speakers, IR blaster,5,000mAh with support for 33W fast charging', 'Sanpdragon', '6.22 inch', '5be1587bf304f32d6073c6bcad914cc11683092416.jpg', '20a1bbd9233aa61ee0b61a3d35961fdf1683092416.jpg', '177f25725b11a20635eaa6110755c43f1683092416.jpg', '2023-05-03 05:40:16'),
(16, 'Redmi note 10', 'RedMI', 'Note 10', 10, '12999', 1, 'Green,Shadow Black', '6GB', '128GB', '512GB', '48MP+8MP+2MP,13MP', '6.22-inch HD+ display,Rear-mounted fingerprint scanner', ' Side-mounted fingerprint scanner, dual stereo speakers, IR blaster,5,000mAh with support for 33W fast charging', 'Sanpdragon', '6.22 inch', '5be1587bf304f32d6073c6bcad914cc11683092524.jpg', '20a1bbd9233aa61ee0b61a3d35961fdf1683092524.jpg', '177f25725b11a20635eaa6110755c43f1683092524.jpg', '2023-05-03 05:42:04'),
(17, 'Powerbank', 'Mobile Accessories', ' T10', 20, '1999', 1, 'Black', '0', '0', '0', '0', '20000mAh Capacity', '20000mAh Capacity,2 Hours charging time', '0', '0', '428baf2a11f5724c1eb6a0cd84b250d11683093296.jpg', 'cdaca91b4e204fa0a2e192736781758e1683093296.jpg', '071dbf28ad38aaaf0a254b88ba2eeb5d1683093296.jpg', '2023-05-03 05:54:56'),
(18, 'Boat Earbuds', 'Mobile Accessories', 'Rock10', 50, '2499', 1, 'Black', '00', '0', '', '0', 'wireless,120 hours playback,2hours charging', 'wireless,120 hours playback,2hours charging,waterproof', '0', '0', '203a83810143b2381e0c2c9886dc6a451683093733.jpg', 'd09ad36f1d27b526160d9c2c2204f0f71683093733.jpg', '6f8e3a7c3249bcdb0cbabd115b14553a1683093733.jpg', '2023-05-03 06:02:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblreview`
--

CREATE TABLE `tblreview` (
  `ID` int(10) NOT NULL,
  `ProductID` int(10) DEFAULT NULL,
  `ReviewTitle` varchar(200) DEFAULT NULL,
  `Review` mediumtext DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `DateofReview` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblreview`
--

INSERT INTO `tblreview` (`ID`, `ProductID`, `ReviewTitle`, `Review`, `Name`, `DateofReview`, `Remark`, `Status`, `UpdationDate`) VALUES
(1, 1, 'Great Product', 'nice product I have great expierince', 'manika', '2023-05-03 06:35:56', 'Review Accept', 'Review Accept', '2023-04-12 07:15:07'),
(2, 3, 'Great Expierence', 'nice product', 'manish', '2023-05-03 06:36:45', 'Review Reject', 'Review Reject', '2023-04-11 20:53:32'),
(5, 2, 'test', 'This is for testing Purpose', 'test', '2023-05-03 06:37:05', 'Review Accept', 'Review Accept', '2023-04-25 16:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(8, 'vallabhsangar@gmail.com', '2023-05-02 18:00:11'),
(9, 'omraj9685@gmail.com', '2023-05-02 18:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbltracking`
--

CREATE TABLE `tbltracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltracking`
--

INSERT INTO `tbltracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(13, '730794559', 'hyiyfi  ', 'Order Confirmed', '2023-05-03 08:29:54', NULL),
(14, '555945469', 'aadfasfasv', 'Order Confirmed', '2023-05-08 17:18:40', NULL),
(15, '555945469', 'asdfasfsdaf', 'Mobile Delivered', '2023-05-08 17:19:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(10, 'Praras', 'Joshi', 'pj@gmail.com', 6547893210, '25d55ad283aa400af464c76d713c07ad', '2023-05-02 09:15:34'),
(11, 'king', 'king', 'kingkamaker@gmail.com', 9192939495, '17964b90cf23c5f51647bcc581622f10', '2023-05-02 17:33:54'),
(12, 'xyz', 'abc', 'xyzabc@123gmail.com', 9293994855, '29c11337562e5a72484e3165b12556cc', '2023-05-02 17:38:41'),
(13, 'paras', 'patil', 'paras@gmail.com', 8398457566, '08af7c3e82d6b1975d7f16ff1bac9abf', '2023-05-03 02:59:28'),
(14, 'Ram', 'Raj', 'ramr@gmail.com', 2133829472, '5e8667a439c68f5145dd2fcbecf02209', '2023-05-03 06:56:03'),
(15, 'piyush', 'narvekar', 'piyush@gmail.com', 9192939494, '86bb48ae4307f5dc2e6b5a2bcb2c543f', '2023-05-03 08:23:42'),
(16, 'Aditya', 'Sangar', 'vallabhsangar@gmail.com', 8766842665, '25d55ad283aa400af464c76d713c07ad', '2023-05-08 17:17:10'),
(17, 'piyush', 'narvekar', 'piyu123@gmail.com', 6675665544, '1050f89f712080671e3576445cb1e77a', '2023-05-11 06:02:01'),
(18, 'tejas', 'kamble', 'tejas123@gmail.com', 9765840749, '25d55ad283aa400af464c76d713c07ad', '2023-05-11 06:04:40'),
(19, 'Ram', 'Raj', 'rr@gmail.com', 9078563412, 'ed2b1f468c5f915f3f1cf75d7068baae', '2023-05-11 07:53:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblwish`
--

CREATE TABLE `tblwish` (
  `ID` int(10) NOT NULL,
  `ProductId` int(5) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `WishlistDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblwish`
--

INSERT INTO `tblwish` (`ID`, `ProductId`, `UserId`, `WishlistDate`) VALUES
(7, 1, 10, '2023-05-02 09:42:23'),
(8, 1, 12, '2023-05-02 17:53:55'),
(9, 2, 12, '2023-05-02 18:21:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbrand`
--
ALTER TABLE `tblbrand`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`PId`,`OrderNumber`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreview`
--
ALTER TABLE `tblreview`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltracking`
--
ALTER TABLE `tbltracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblwish`
--
ALTER TABLE `tblwish`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbrand`
--
ALTER TABLE `tblbrand`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblreview`
--
ALTER TABLE `tblreview`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbltracking`
--
ALTER TABLE `tbltracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblwish`
--
ALTER TABLE `tblwish`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
