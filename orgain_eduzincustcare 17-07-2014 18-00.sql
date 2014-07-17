-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2014 at 02:30 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `orgain_eduzincustcare`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_uggroups`
--

CREATE TABLE IF NOT EXISTS `access_uggroups` (
  `GroupID` int(11) NOT NULL AUTO_INCREMENT,
  `Label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `access_ugmembers`
--

CREATE TABLE IF NOT EXISTS `access_ugmembers` (
  `UserName` varchar(50) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserName`,`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_ugmembers`
--

INSERT INTO `access_ugmembers` (`UserName`, `GroupID`) VALUES
('admin', -1);

-- --------------------------------------------------------

--
-- Table structure for table `access_ugrights`
--

CREATE TABLE IF NOT EXISTS `access_ugrights` (
  `TableName` varchar(50) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `AccessMask` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TableName`,`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access_ugrights`
--

INSERT INTO `access_ugrights` (`TableName`, `GroupID`, `AccessMask`) VALUES
('customer_db', -1, 'AEDSM'),
('customer_products_purchased', -1, 'AEDSM'),
('msg_sms', -1, 'ASM'),
('product_db', -1, 'AEDSM'),
('renewal_db', -1, 'AEDSM'),
('SelectCustomer', -1, 'AM'),
('sms_template', -1, 'AEDSM'),
('support_request_db', -1, 'AESM'),
('users', -1, 'AEDSM');

-- --------------------------------------------------------

--
-- Table structure for table `customer_db`
--

CREATE TABLE IF NOT EXISTS `customer_db` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(100) DEFAULT NULL,
  `CustomerCompany` varchar(100) DEFAULT NULL,
  `EmailID` varchar(100) DEFAULT NULL,
  `EmailID2` varchar(100) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Mobile2` varchar(10) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Phone2` varchar(15) DEFAULT NULL,
  `STDCode` varchar(10) DEFAULT NULL,
  `Website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_db`
--

INSERT INTO `customer_db` (`ID`, `CustomerName`, `CustomerCompany`, `EmailID`, `EmailID2`, `Mobile`, `Mobile2`, `Phone`, `Phone2`, `STDCode`, `Website`) VALUES
(1, 'Mr Pradip Mallick', '', '', '', '9091403206', '', '', '', '', 'pradipmathsir.eduz.in'),
(2, 'Mr Goutam Manna', 'UNEED', '', '', '9804250045', '9830610901', '', '', '', ''),
(3, 'Mr Tamal Dasgupta', 'Brainscape', 'tamaldasgupta@yahoo.ie', '', '9748088783', '9433823929', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_products_purchased`
--

CREATE TABLE IF NOT EXISTS `customer_products_purchased` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `PurchasedOn` date DEFAULT NULL,
  `FirstPaymentDetails` mediumtext,
  `IsItRenewable` varchar(10) DEFAULT NULL,
  `RenewalDateEveryYear` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer_products_purchased`
--

INSERT INTO `customer_products_purchased` (`ID`, `CustomerID`, `ProductID`, `PurchasedOn`, `FirstPaymentDetails`, `IsItRenewable`, `RenewalDateEveryYear`) VALUES
(1, 1, 1, '2014-07-07', 'Rs 5000 as 1st installment', 'Yes', '2015-07-07'),
(2, 2, 1, '2014-07-11', 'No Payment', 'Yes', '2015-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `msg_sms`
--

CREATE TABLE IF NOT EXISTS `msg_sms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) DEFAULT NULL,
  `CustomerName` varchar(100) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `ProductName` varchar(100) NOT NULL,
  `SMSText` mediumtext,
  `DateNTime` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `msg_sms`
--

INSERT INTO `msg_sms` (`ID`, `CustomerID`, `CustomerName`, `ProductID`, `ProductName`, `SMSText`, `DateNTime`) VALUES
(1, 3, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, thank you for your payment of 5000 on 30-07-2014 to  by Cash. - EDUZIN', NULL),
(2, 3, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, thank you for your payment of 5000 on 30-07-2014 to  by Cash. - EDUZIN', NULL),
(3, 3, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, thank you for your payment of 5000 on 30-07-2014 to  by Cash. - EDUZIN', NULL),
(4, 3, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, thank you for your payment of 5000 on 30-07-2014 to  by Cash. - EDUZIN', NULL),
(5, 3, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, thank you for your payment of 5000 on 30-07-2014 to  by Cash. - EDUZIN', NULL),
(6, 3, 'Mr Goutam Manna', 1, 'Tutor Manager', 'Dear Mr Goutam Manna, thank you for your payment of 8999 on 07-07-2014 to Amit Kolay by check number 76890m, dated Check07-07-2014. Payment is subject to check realisation - EDUZIN', NULL),
(7, 3, 'Mr Goutam Manna', 1, 'Tutor Manager', 'Dear Mr Goutam Manna, Our representative Amit Sur will visit you on 25-07-2014', NULL),
(8, 3, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, Our representative Amit Sur will visit you on 25-07-2014', NULL),
(9, NULL, 'Mr Pradip Mallick', 1, 'Tutor Manager', 'Dear Mr Pradip Mallick, thank you for your payment of 5000 on 08-07-2014 to Mr Goutam Manna by Cash. - EDUZIN', NULL),
(10, NULL, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, thank you for your payment of 5000 on 08-07-2014 to Mr Goutam Manna by Cash. - EDUZIN', NULL),
(11, NULL, 'Mr Tamal Dasgupta', 1, 'Tutor Manager', 'Dear Mr Tamal Dasgupta, thank you for your payment of 5000 on 08-07-2014 to Mr Goutam Manna by Cash. - EDUZIN', NULL),
(12, NULL, 'Mr Pradip Mallick', 1, 'Tutor Manager', 'Dear Mr Pradip Mallick, thank you for your payment of 5000 on 08-07-2014 to Mr Goutam Manna by Cash. - EDUZIN', NULL),
(13, NULL, 'Mr Pradip Mallick', 1, 'Tutor Manager', 'Dear Mr Pradip Mallick, thank you for your payment of 5000.00 on 08-07-2014 to Mr Goutam Manna by Cash. - EDUZIN', NULL),
(14, NULL, 'Mr Goutam Manna', 1, 'Tutor Manager', 'Dear Mr Goutam Manna, we have resolved the issue reported on 15-07-2014 regarding Tutor Manager on 15-07-2014. Please check and confirm.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_db`
--

CREATE TABLE IF NOT EXISTS `product_db` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(100) DEFAULT NULL,
  `LastVersion` varchar(50) DEFAULT NULL,
  `VersionDate` date DEFAULT NULL,
  `GitURL` varchar(100) DEFAULT NULL,
  `ProductPrice` decimal(32,2) DEFAULT NULL,
  `IsItRenewable` varchar(10) NOT NULL DEFAULT 'Yes',
  `RenewalPrice` decimal(32,2) DEFAULT NULL,
  `ProductDescription` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `product_db`
--

INSERT INTO `product_db` (`ID`, `ProductName`, `LastVersion`, `VersionDate`, `GitURL`, `ProductPrice`, `IsItRenewable`, `RenewalPrice`, `ProductDescription`) VALUES
(1, 'Tutor Manager', '', NULL, '', '25000.00', 'Yes', '5000.00', '');

-- --------------------------------------------------------

--
-- Table structure for table `renewal_db`
--

CREATE TABLE IF NOT EXISTS `renewal_db` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `RenewalDate` date DEFAULT NULL,
  `RenewalAmount` decimal(32,2) DEFAULT NULL,
  `PaymentMode` varchar(50) DEFAULT NULL,
  `PaymentClearedOrNot` varchar(50) DEFAULT NULL,
  `CheckPaymentDetails` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sms_template`
--

CREATE TABLE IF NOT EXISTS `sms_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TemplateTitle` varchar(100) DEFAULT NULL,
  `TemplateText` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sms_template`
--

INSERT INTO `sms_template` (`ID`, `TemplateTitle`, `TemplateText`) VALUES
(1, 'Representative Visit', 'Dear CustomerName, Our representative ReprentativeName will visit you on DateAndTime'),
(2, 'Software Activation', 'Dear CustomerName, we have activated your SoftwareName, it is available at SoftwareWebURL, please email us to EmailID for any support'),
(3, 'Product Expiry', 'Dear CustomerName, your ProductName will expire on Date, please arrange to pay @ Amount / YearOrMonth in favor of AccountDetails to continue to enjoy ProductDetails.'),
(4, 'Product Delivery', 'Dear CustomerName, your ProductDetails has been delivered / deployed at  DeliveryDetails. Please arrange to pay the amount of Amount in favor of AccountDetails,  you can pay by cash also.'),
(5, 'Product Issue Resolved', 'Dear CustomerName, we have resolved the issue reported on Date regarding ProductDetails on Date. Please check and confirm.'),
(6, 'Cash Received', 'Dear CustomerName, thank you for your payment of Amount on Date to RecipientName by Cash. - EDUZIN'),
(7, 'Check Received', 'Dear CustomerName, thank you for your payment of Amount on Date to RecipientName by check number CheckNumber, dated CheckDate. Payment is subject to check realisation - EDUZIN');

-- --------------------------------------------------------

--
-- Table structure for table `support_request_db`
--

CREATE TABLE IF NOT EXISTS `support_request_db` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `TicketID` varchar(50) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  `TicketStatus` varchar(50) DEFAULT NULL,
  `TicketDetails` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `LoginID` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `EmailID` varchar(100) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Mobile2` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `LoginID`, `Password`, `EmailID`, `Mobile`, `Mobile2`) VALUES
(1, NULL, 'admin', '#admin', NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
