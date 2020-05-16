-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2020 at 06:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tax`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `PAN` varchar(10) NOT NULL,
  `IFS Code of the bank` varchar(11) NOT NULL,
  `Name of the bank` text NOT NULL,
  `Account Number` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`PAN`, `IFS Code of the bank`, `Name of the bank`, `Account Number`) VALUES
('AAAPL1234C', 'HDFC0000017', 'HDFC', 12340987456),
('ABAPL1764C', 'ICIC0000278', 'ICIC', 98764567098),
('BBBPL7189C', 'SBIN0007231', 'SBI', 76543678980),
('ZZAPL0054C', 'YESB0000008', 'YES Bank', 98709876756),
('FFFPL0462C', 'STBP0001404', 'State Bank of Patiala', 56780987102),
('GGGPL2388C', 'SBIN0012418', 'SBI ', 12340987566),
('JKTPL2016C', 'KKBK0MMCB05', 'Kota Mahindra Bank', 9872345678),
('RTEPL1530C', 'SBIN0007231', 'SBI', 78904555566),
('TADPL9042C', 'ICIC0000283', 'ICIC', 4567777889);

-- --------------------------------------------------------

--
-- Table structure for table `comp`
--

CREATE TABLE `comp` (
  `PAN` varchar(10) NOT NULL,
  `Taxpayable` int(11) NOT NULL,
  `Rebate` int(11) NOT NULL,
  `Taxafter` int(11) NOT NULL,
  `HECess` int(11) NOT NULL,
  `Totcess` int(11) NOT NULL,
  `Relief` int(11) NOT NULL,
  `int234A` int(11) NOT NULL,
  `int234B` int(11) NOT NULL,
  `int234C` int(11) NOT NULL,
  `Fee234F` int(11) NOT NULL,
  `TotalTaxpaid` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comp`
--

INSERT INTO `comp` (`PAN`, `Taxpayable`, `Rebate`, `Taxafter`, `HECess`, `Totcess`, `Relief`, `int234A`, `int234B`, `int234C`, `Fee234F`, `TotalTaxpaid`) VALUES
('AAAPL1234C', 599910, 0, 599910, 23996, 623906, 0, 0, 0, 0, 0, 623906),
('ABAPL1764C', 0, 2500, -2500, -100, -2600, 0, 0, 0, 0, 0, -2600),
('BBBPL7189C', 287280, 0, 287280, 11491, 298771, 0, 0, 0, 0, 0, 298771),
('ZZAPL0054C', 2454750, 0, 2454750, 98190, 2552940, 0, 0, 0, 0, 0, 2552940),
('FFFPL0462C', 1186352, 0, 1186352, 47374, 1233726, 639000, 1000, 0, 0, 0, 595726),
('GGGPL2388C', 278985, 0, 278985, 11159, 290144, 63000, 0, 0, 0, 0, 227144),
('JKTPL2016C', 860310, 0, 860310, 34412, 894722, 49500, 0, 5500, 0, 0, 850722),
('RTEPL1530C', 384160, 1500, 382660, 15306, 397966, 0, 0, 0, 0, 0, 397966),
('TADPL9042C', 0, 1900, -1900, -76, -1976, 0, 0, 0, 0, 0, -1976);

-- --------------------------------------------------------

--
-- Table structure for table `ded`
--

CREATE TABLE `ded` (
  `PAN` varchar(10) NOT NULL,
  `80C` int(11) DEFAULT 0,
  `80CCC` int(11) DEFAULT NULL,
  `80CCD1` int(11) DEFAULT NULL,
  `80CCD1B` int(11) DEFAULT NULL,
  `80CCD2` int(11) DEFAULT NULL,
  `80CCG` int(11) DEFAULT NULL,
  `80D` int(11) DEFAULT NULL,
  `80DD` int(11) DEFAULT NULL,
  `80DDB` int(11) DEFAULT NULL,
  `80E` int(11) DEFAULT NULL,
  `80EE` int(11) DEFAULT NULL,
  `80G` int(11) DEFAULT NULL,
  `80GG` int(11) DEFAULT NULL,
  `80GGA` int(11) DEFAULT NULL,
  `80GGC` int(11) DEFAULT NULL,
  `80TTA` int(11) DEFAULT NULL,
  `80TTB` int(11) DEFAULT NULL,
  `80U` int(11) DEFAULT NULL,
  `Totalded` int(11) NOT NULL,
  `Totalinc` int(11) NOT NULL,
  `Excemptinc` int(11) DEFAULT NULL,
  `Sec1010BC` int(11) DEFAULT NULL,
  `Sec1010D` int(11) DEFAULT NULL,
  `Sec1011` int(11) DEFAULT NULL,
  `Sec1012` int(11) DEFAULT NULL,
  `Sec1012A` int(11) DEFAULT NULL,
  `Sec1012B` int(11) DEFAULT NULL,
  `Sec1013` int(11) DEFAULT NULL,
  `Sec1016` int(11) DEFAULT NULL,
  `Sec1017` int(11) DEFAULT NULL,
  `Sec1017A` int(11) DEFAULT NULL,
  `Sec1018` int(11) DEFAULT NULL,
  `Sec1019` int(11) DEFAULT NULL,
  `Sec1026` int(11) DEFAULT NULL,
  `Sec1026AAA` int(11) DEFAULT NULL,
  `Sec1034` int(11) DEFAULT NULL,
  `Sec1035` int(11) DEFAULT NULL,
  `anyother` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ded`
--

INSERT INTO `ded` (`PAN`, `80C`, `80CCC`, `80CCD1`, `80CCD1B`, `80CCD2`, `80CCG`, `80D`, `80DD`, `80DDB`, `80E`, `80EE`, `80G`, `80GG`, `80GGA`, `80GGC`, `80TTA`, `80TTB`, `80U`, `Totalded`, `Totalinc`, `Excemptinc`, `Sec1010BC`, `Sec1010D`, `Sec1011`, `Sec1012`, `Sec1012A`, `Sec1012B`, `Sec1013`, `Sec1016`, `Sec1017`, `Sec1017A`, `Sec1018`, `Sec1019`, `Sec1026`, `Sec1026AAA`, `Sec1034`, `Sec1035`, `anyother`) VALUES
('AAAPL1234C', 150000, 0, 0, 0, 0, 0, 25000, 0, 0, 0, 240000, 20000, 0, 0, 0, 0, 0, 0, 435000, 2624700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ABAPL1764C', 75000, NULL, NULL, NULL, NULL, NULL, NULL, 125000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, 152000, 2000, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('BBBPL7189C', 150000, 150000, NULL, NULL, NULL, NULL, 75000, 75000, 0, 300000, NULL, NULL, NULL, NULL, NULL, NULL, 50000, NULL, 800000, 1582600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ZZAPL0054C', NULL, 150000, 75000, NULL, NULL, 50000, NULL, 125000, NULL, NULL, NULL, 1000000, NULL, 100000, NULL, NULL, NULL, NULL, 1500000, 8807500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('FFFPL0462C', 150000, 0, NULL, NULL, 530000, NULL, 75000, NULL, NULL, NULL, 50000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 805000, 4587840, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('GGGPL2388C', 23000, 49000, 0, 0, 0, 0, 50000, 0, 0, 200000, 0, 0, 0, 0, 0, 0, 0, 0, 322000, 1554950, 4500, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0),
('JKTPL2016C', 93000, 60000, 0, 0, 0, 0, 25000, 0, 0, 400000, 0, 0, 0, 0, 0, 0, 0, 0, 578000, 3492700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('RTEPL1530C', 150000, 0, 0, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 175000, 1947200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('TADPL9042C', 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 150000, 66739, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `geninfo`
--

CREATE TABLE `geninfo` (
  `PAN` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `DOB` date NOT NULL,
  `Aadhaar Number` varchar(12) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `flat/door number` varchar(6) NOT NULL,
  `Name of building` text NOT NULL,
  `Road/Street No.` varchar(11) NOT NULL,
  `Area` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `PIN` int(7) NOT NULL,
  `Nature Of Employment` text NOT NULL,
  `Filed u/s` varchar(10) NOT NULL,
  `filed in response to notice u/s` varchar(10) DEFAULT NULL,
  `receipt number` varchar(11) DEFAULT NULL,
  `Date of filing original return` date DEFAULT NULL,
  `Unique number` int(11) NOT NULL DEFAULT 0,
  `Date of such notice or order` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `geninfo`
--

INSERT INTO `geninfo` (`PAN`, `Name`, `DOB`, `Aadhaar Number`, `mobile`, `email`, `flat/door number`, `Name of building`, `Road/Street No.`, `Area`, `City`, `State`, `Country`, `PIN`, `Nature Of Employment`, `Filed u/s`, `filed in response to notice u/s`, `receipt number`, `Date of filing original return`, `Unique number`, `Date of such notice or order`) VALUES
('AAAPL1234C', 'Christopher Smith', '1993-09-18', '111122223333', '0987657845', 'chris.smith@gmail.com', '099', 'ABC Apartments', '123', 'Padi', 'Chennai', 'Tamil Nadu', 'India', 600101, 'psu', '139(1)', '', '', '0000-00-00', 0, '0000-00-00'),
('ABAPL1764C', 'Preeti Sabarwal', '1939-04-04', '121234345656', '9870923654', 'sabarwal.pree20@gmail.com', '1223', 'Sunnyvale Apartments', '1234', 'Kilpauk', 'Chennai', 'Tamil Nadu', 'India', 600010, 'Pensioners', '139(4)', NULL, NULL, NULL, 0, NULL),
('BBBPL7189C', 'Vishnu Suresh', '1968-02-26', '156723459870', '9876543210', 'vish@gmail.com', '0', 'Rose Cottage', '87', 'Peelamedu', 'Coimbatore', 'Tamil Nadu', 'India', 641004, 'Govt', '139(5)', '139(9)', '122345', '2020-06-12', 787635, '2020-05-27'),
('ZZAPL0054C', 'Lalit Moorthy', '1972-08-04', '654389071234', '1234509828', 'Lali.moo@gmail.com', '0', 'Rock Stone', '87', 'Balewadi', 'Pune', 'Maharashtra', 'India', 411045, 'Others', '139(1)', '', '', '0000-00-00', 0, '0000-00-00'),
('FFFPL0462C', 'Kumar Sen', '1958-01-13', '23452345678', '9871236666', 'Kumar.sen@gmail.com', '091', 'Garden Estate Buildings', '123', 'Hira Nagar', 'Patiala', 'Chandigargh', 'IndiaG', 174001, 'Govt', '139(5)', '148', '12380', NULL, 0, NULL),
('GGGPL2388C', 'Miriam Lee', '1993-06-29', '123409871236', '9840378652', 'narayan.geetha@yahoo.com', '64', 'Bay Area cottage', '83', 'Ranka', 'Gangtok', 'Sikkim', 'India', 737102, 'psu', '139(1)', '', '', '0000-00-00', 0, '0000-00-00'),
('JKTPL2016C', 'Lakshmi Nair', '1993-04-19', '123456789011', '9846573834', 'laks.boo@hotmail.com', '750', 'Dwaraka Apts', '15', 'Fort Kochi', 'Cochin', 'Kerala', 'India', 682001, 'others', '119(2)(b)', '153C', '', '0000-00-00', 98765, '2020-05-01'),
('RTEPL1530C', 'Apoorva Ram', '1937-11-29', '123409555522', '7896543267', 'hello.ram@yahoo.com', '09', 'Old Age Centre', '99', 'Gandipuram', 'Coimbatore', 'Tamil Nadu', 'India', 641001, 'pensioners', '139(4)', '139(9)', '', '0000-00-00', 87654, '2020-04-29'),
('TADPL9042C', 'Jessica Rohit', '1955-05-16', '123466667788', '9876578444', 'jess.beaut@gmail.com', '0', 'Madalin Cottage', '98', 'Korattur', 'Chennai', 'Tamil Nadu', 'India', 600040, 'govt', '139(1)', '', '', '0000-00-00', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `grosstotalincome`
--

CREATE TABLE `grosstotalincome` (
  `PAN` varchar(10) NOT NULL,
  `GrossTotalIncome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grosstotalincome`
--

INSERT INTO `grosstotalincome` (`PAN`, `GrossTotalIncome`) VALUES
('AAAPL1234C', 3059700),
('ABAPL1764C', 352000),
('BBBPL7189C', 2382600),
('ZZAPL0054C', 10307500),
('FFFPL0462C', 5392840),
('GGGPL2388C', 1876950),
('JKTPL2016C', 4070700),
('RTEPL1530C', 2122200),
('TADPL9042C', 216739);

-- --------------------------------------------------------

--
-- Table structure for table `houseprop`
--

CREATE TABLE `houseprop` (
  `PAN` varchar(10) NOT NULL,
  `Type` text NOT NULL,
  `Rent_receivable` int(11) NOT NULL,
  `Localtax` int(11) NOT NULL,
  `Annual` int(11) NOT NULL,
  `thirtypercentannual` int(11) NOT NULL,
  `Interest_on_borrowed_capital` int(11) NOT NULL,
  `Arrears` int(11) NOT NULL,
  `Income_under_House_Properties` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `houseprop`
--

INSERT INTO `houseprop` (`PAN`, `Type`, `Rent_receivable`, `Localtax`, `Annual`, `thirtypercentannual`, `Interest_on_borrowed_capital`, `Arrears`, `Income_under_House_Properties`) VALUES
('AAAPL1234C', 'Let Out', 276000, 5000, 271000, 81300, 0, 0, 189700),
('ABAPL1764C', 'Self-Occupied', 0, 0, 0, 0, 0, 0, 0),
('BBBPL7189C', 'Let-Out', 273000, 5000, 268000, 80400, 0, 12000, 199600),
('ZZAPL0054C', 'Self-Occupied', 0, 0, 0, 0, 0, 0, 0),
('FFFPL0462C', 'Deemed Let-Out', 300000, 2000, 298000, 89400, 200000, 24000, 32600),
('GGGPL2388C', 'Self-Occupied', 163000, 1500, 161500, 48450, 0, 38000, 151050),
('JKTPL2016C', 'Self-Occupied', 0, 0, 0, 0, 0, 0, 0),
('RTEPL1530C', 'Let Out', 168000, 2000, 166000, 49800, 0, 23000, 139200),
('TADPL9042C', 'Self-Occupied', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `incfromsal`
--

CREATE TABLE `incfromsal` (
  `PAN` varchar(10) NOT NULL,
  `Salary_as_per_sec_17(1)` int(11) NOT NULL,
  `Value_of_perquisites_as_per_sec_17(2)` int(11) NOT NULL,
  `Profits_in_lieu_of_salary_as_per_sec_17(3)` int(11) NOT NULL,
  `Gross_Salary` int(11) NOT NULL,
  `Allowance_1` int(11) NOT NULL DEFAULT 0,
  `Allowance_2` int(11) NOT NULL DEFAULT 0,
  `Allowance_3` int(11) NOT NULL DEFAULT 0,
  `Allowance_4` int(11) NOT NULL DEFAULT 0,
  `Allowance_5` int(11) NOT NULL DEFAULT 0,
  `Allowance_6` int(11) NOT NULL DEFAULT 0,
  `Allowance_7` int(11) NOT NULL DEFAULT 0,
  `Allowance_8` int(11) NOT NULL DEFAULT 0,
  `Allowance_9` int(11) NOT NULL DEFAULT 0,
  `Allowance_10` int(11) NOT NULL DEFAULT 0,
  `Allowance_11` int(11) NOT NULL DEFAULT 0,
  `Allowance_12` int(11) NOT NULL DEFAULT 0,
  `Allowance_13` int(11) NOT NULL DEFAULT 0,
  `Allowance_14` int(11) NOT NULL DEFAULT 0,
  `Net_Salary` int(11) NOT NULL,
  `Deductions_u/s_16` int(11) NOT NULL,
  `Std_deductions_u/s_16(ia)` int(11) NOT NULL,
  `Entertainment_allowance_u/s_16(iia)` int(11) NOT NULL,
  `Professional_tax_u/s_16(iii)` int(11) NOT NULL,
  `Inc_under_Salaries` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `incfromsal`
--

INSERT INTO `incfromsal` (`PAN`, `Salary_as_per_sec_17(1)`, `Value_of_perquisites_as_per_sec_17(2)`, `Profits_in_lieu_of_salary_as_per_sec_17(3)`, `Gross_Salary`, `Allowance_1`, `Allowance_2`, `Allowance_3`, `Allowance_4`, `Allowance_5`, `Allowance_6`, `Allowance_7`, `Allowance_8`, `Allowance_9`, `Allowance_10`, `Allowance_11`, `Allowance_12`, `Allowance_13`, `Allowance_14`, `Net_Salary`, `Deductions_u/s_16`, `Std_deductions_u/s_16(ia)`, `Entertainment_allowance_u/s_16(iia)`, `Professional_tax_u/s_16(iii)`, `Inc_under_Salaries`) VALUES
('AAAPL1234C', 2600000, 300000, 50000, 2950000, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 2895000, 40000, 40000, 0, 0, 2855000),
('ABAPL1764C', 300000, 0, 0, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300000, 40000, 40000, 0, 0, 260000),
('BBBPL7189C', 1000000, 1200000, 50000, 2250000, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2210000, 40000, 40000, 0, 0, 2170000),
('ZZAPL0054C', 6000000, 4300000, 0, 10300000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10300000, 25000, 20000, 5000, 0, 10275000),
('FFFPL0462C', 3200000, 1700000, 500000, 5400000, 40000, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 5340000, 35000, 35000, 0, 0, 5305000),
('GGGPL2388C', 1800000, 0, 0, 1800000, 32500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 1757500, 40000, 40000, 0, 0, 1717500),
('JKTPL2016C', 3800000, 0, 300000, 4100000, 2900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4097100, 34000, 34000, 0, 0, 4063100),
('RTEPL1530C', 230000, 1500000, 0, 1730000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1730000, 0, 0, 0, 0, 1730000),
('TADPL9042C', 198000, 0, 54000, 252000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 242000, 29000, 29000, 0, 0, 213000);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `PAN` varchar(10) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`PAN`, `Password`) VALUES
('AAAPL1234C', 'cost$46'),
('ABAPL1764C', 'tri832'),
('BBBPL7189C', '567fjk'),
('FFFPL0462C', 'sha612'),
('GGGPL2388C', 'dod$$9'),
('JKTPL2016C', 'lot256'),
('RTEPL1530C', 'polar$$2'),
('TADPL9042C', 'fancy456'),
('ZZAPL0054C', 'gferr6j');

-- --------------------------------------------------------

--
-- Table structure for table `othersrcs`
--

CREATE TABLE `othersrcs` (
  `PAN` varchar(10) NOT NULL,
  `Savingsbank` int(11) NOT NULL,
  `Deposit` int(11) NOT NULL,
  `IncTaxRefund` int(11) NOT NULL,
  `Pension` int(11) NOT NULL,
  `Others` int(11) NOT NULL,
  `Less` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `othersrcs`
--

INSERT INTO `othersrcs` (`PAN`, `Savingsbank`, `Deposit`, `IncTaxRefund`, `Pension`, `Others`, `Less`) VALUES
('AAAPL1234C', 10000, 5000, 0, 0, 0, 0),
('ABAPL1764C', 3000, 5000, 0, 100000, 0, 15000),
('BBBPL7189C', 10000, 3000, 0, 0, 0, 0),
('ZZAPL0054C', 2500, 30000, 0, 0, 0, 0),
('FFFPL0462C', 7230, 5110, 2900, 25000, 0, 15000),
('GGGPL2388C', 1400, 7000, 0, 0, 0, 0),
('JKTPL2016C', 2800, 3900, 900, 0, 0, 0),
('RTEPL1530C', 2000, 1000, 0, 250000, 0, 0),
('TADPL9042C', 1039, 700, 2000, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD KEY `PAN` (`PAN`);

--
-- Indexes for table `comp`
--
ALTER TABLE `comp`
  ADD KEY `PAN` (`PAN`);

--
-- Indexes for table `ded`
--
ALTER TABLE `ded`
  ADD KEY `PAN` (`PAN`);

--
-- Indexes for table `geninfo`
--
ALTER TABLE `geninfo`
  ADD KEY `PAN` (`PAN`);

--
-- Indexes for table `grosstotalincome`
--
ALTER TABLE `grosstotalincome`
  ADD KEY `PAN` (`PAN`);

--
-- Indexes for table `houseprop`
--
ALTER TABLE `houseprop`
  ADD KEY `PAN` (`PAN`);

--
-- Indexes for table `incfromsal`
--
ALTER TABLE `incfromsal`
  ADD KEY `PAN` (`PAN`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`PAN`);

--
-- Indexes for table `othersrcs`
--
ALTER TABLE `othersrcs`
  ADD KEY `PAN` (`PAN`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);

--
-- Constraints for table `comp`
--
ALTER TABLE `comp`
  ADD CONSTRAINT `comp_ibfk_1` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);

--
-- Constraints for table `ded`
--
ALTER TABLE `ded`
  ADD CONSTRAINT `ded_ibfk_1` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);

--
-- Constraints for table `geninfo`
--
ALTER TABLE `geninfo`
  ADD CONSTRAINT `PAN` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);

--
-- Constraints for table `grosstotalincome`
--
ALTER TABLE `grosstotalincome`
  ADD CONSTRAINT `grosstotalincome_ibfk_1` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);

--
-- Constraints for table `houseprop`
--
ALTER TABLE `houseprop`
  ADD CONSTRAINT `houseprop_ibfk_1` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);

--
-- Constraints for table `incfromsal`
--
ALTER TABLE `incfromsal`
  ADD CONSTRAINT `incfromsal_ibfk_1` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);

--
-- Constraints for table `othersrcs`
--
ALTER TABLE `othersrcs`
  ADD CONSTRAINT `othersrcs_ibfk_1` FOREIGN KEY (`PAN`) REFERENCES `login` (`PAN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
