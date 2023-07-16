-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 11 2023 г., 13:18
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `egor`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `idBrand` int(11) NOT NULL,
  `BrandName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`idBrand`, `BrandName`) VALUES
(1, 'Haier'),
(2, 'Samsung'),
(3, 'Leibherr'),
(4, 'Beco'),
(5, 'Bosh'),
(6, 'Indesit'),
(7, 'LG'),
(8, 'Nord'),
(9, 'Roborock'),
(10, 'Kitfort'),
(11, 'IRobot'),
(13, 'Polaris'),
(14, 'Philips'),
(15, 'Ninebot'),
(16, 'Globber'),
(17, 'Kugo'),
(18, 'Sony'),
(19, 'Hyundai'),
(20, 'Huawei'),
(21, 'Asus'),
(22, 'HP'),
(23, 'Lenovo'),
(24, 'Acer'),
(25, 'Xiaomi'),
(26, 'Apple'),
(28, 'Gorenje'),
(29, 'Panasonic');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `idCategories` int(11) NOT NULL,
  `CategoryName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`idCategories`, `CategoryName`) VALUES
(1, 'Холодильник'),
(2, 'Кофемашина'),
(3, 'Стиральная машина'),
(4, 'Микроволновка'),
(5, 'Пылесос'),
(6, 'Электросамокат'),
(7, 'Телевизор'),
(8, 'Ноутбук'),
(9, 'Робот-пылесос');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `idClient` int(11) NOT NULL,
  `NameClient` varchar(45) NOT NULL,
  `PhoneNumber` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `models`
--

CREATE TABLE `models` (
  `idModel` int(11) NOT NULL,
  `idBrand` int(11) NOT NULL,
  `Price` varchar(45) NOT NULL,
  `idCategories` int(11) NOT NULL,
  `ModelName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `models`
--

INSERT INTO `models` (`idModel`, `idBrand`, `Price`, `idCategories`, `ModelName`) VALUES
(1, 8, '20000', 1, '271-010'),
(2, 8, '22000', 1, '274-010'),
(3, 8, '45000', 1, '239-032'),
(4, 8, '58000', 1, 'DRF 110 NF WSP'),
(5, 8, '28000', 1, '158-310'),
(6, 8, '92000', 1, 'NRB 237-332'),
(7, 8, '61000', 1, '239-7-312'),
(8, 8, '44000', 1, 'NRB 218-032'),
(9, 8, '57000', 1, '264-012'),
(10, 8, '59000', 1, 'DF 168 WSP'),
(11, 4, '56000', 1, 'CN 335220'),
(12, 4, '84000', 1, 'CN 333100'),
(13, 4, '84000', 1, 'CN 338022'),
(14, 4, '74000', 1, 'CN 332102'),
(15, 4, '31000', 1, 'CN 328220'),
(16, 4, '52000', 1, 'CN 335020'),
(17, 4, '112000', 1, 'CN 333100 S'),
(18, 4, '56000', 1, 'DNE 54530 GB'),
(19, 4, '58000', 1, 'CBI 7771'),
(20, 4, '61000', 1, 'DS 325000S'),
(21, 5, '129000', 1, 'KGV36VW13'),
(22, 5, '74000', 1, 'KIL22ED30'),
(23, 5, '149000', 1, 'KGE49AI31'),
(24, 5, '98000', 1, 'KGN39VL21'),
(25, 5, '78000', 1, 'KGN36SB31'),
(26, 5, '67000', 1, 'KGN56AW25N'),
(27, 5, '55000', 1, 'KGS39XW20'),
(28, 5, '64000', 1, 'KGN39AW17'),
(29, 5, '64000', 1, 'KIN86AD30'),
(30, 5, '51000', 1, 'KIS87KF31'),
(31, 6, '55000', 1, 'SB 185'),
(32, 6, '41000', 1, 'TIA 18'),
(33, 6, '78000', 1, 'TIA 140'),
(34, 6, '47000', 1, 'BIHA 20'),
(35, 6, '67000', 1, 'BIAA 20 H'),
(36, 6, '74000', 1, 'SB 167'),
(37, 6, '97000', 1, 'BIA 16 S'),
(38, 6, '45000', 1, 'BI 18 NF L'),
(39, 6, '31000', 1, 'PBAA 34 F'),
(40, 6, '63000', 1, 'PBAA 33 F X'),
(41, 7, '44000', 1, 'GA-B489 YLQZ'),
(42, 7, '68000', 1, 'GR-N319 LLA'),
(43, 7, '31000', 1, 'GA-E409 SLRA'),
(44, 7, '29000', 1, 'GA-M539 ZPTP'),
(45, 7, '51000', 1, 'GA-M419 SARZ'),
(46, 7, '63000', 1, 'GA-B409 UEQA'),
(47, 7, '44000', 1, 'GA-E409 SERA'),
(48, 7, '61000', 1, 'GA-B409 UECA'),
(49, 7, '113000', 1, 'GA-M419 SVRZ'),
(50, 7, '57000', 1, 'GA-E409 SMRA'),
(51, 2, '44000', 1, 'RL-52 TEBIH'),
(52, 2, '45000', 1, 'RB-29 FSRMDWW'),
(53, 2, '94000', 1, 'RB-28 FSJMDSS'),
(54, 2, '65000', 1, 'RL-50 RRCIH'),
(55, 2, '33000', 1, 'RT-5982 ATBSL'),
(56, 2, '32000', 1, 'RL-4353 JBAEF'),
(57, 2, '94000', 1, 'RSH5ZLMR'),
(58, 2, '87000', 1, 'RB-31 FERNCBC'),
(59, 2, '31000', 1, 'RT-29 FARADWW'),
(60, 2, '63000', 1, 'RL-52 TEBVB'),
(61, 3, '66000', 1, 'SBS 7212'),
(62, 3, '34000', 1, 'ICBS 3214'),
(63, 3, '44000', 1, 'Kes 4270'),
(64, 3, '36000', 1, 'CUN 3923'),
(65, 3, '35000', 1, 'GN 2723'),
(66, 3, '55000', 1, 'Ces 4023'),
(67, 3, '39000', 1, 'SBSes 7165'),
(68, 3, '65000', 1, 'ICUN 3314'),
(69, 3, '64000', 1, 'CBN 3656'),
(70, 3, '55000', 1, 'G 3513'),
(71, 5, '66000', 3, 'WLG2426SOE'),
(72, 5, '87000', 3, 'WAE 20365'),
(73, 5, '45000', 3, 'WAW 28440'),
(74, 5, '87000', 3, 'WLM2445SOE Logixx 6 Sensitive'),
(75, 5, '78000', 3, 'WAB 24272'),
(76, 5, '81000', 3, 'WAW 32540'),
(77, 4, '77000', 3, 'WKN 51011 M'),
(78, 4, '65000', 3, 'RKB 58831 PTMA'),
(79, 4, '74000', 3, 'WM 3356 D'),
(80, 4, '36000', 3, 'WKE 35500'),
(81, 4, '31000', 3, 'WKB 51031 PTMA'),
(82, 4, '28000', 3, 'RKB 58801 MA'),
(83, 4, '79000', 3, 'WMB 81044 LA'),
(84, 4, '54000', 3, 'WKN 51001 M'),
(85, 6, '25000', 3, 'WIUN 81'),
(86, 6, '27000', 3, 'WIUN 102'),
(87, 6, '35000', 3, 'IWSE 6125 B'),
(88, 6, '32000', 3, 'NSL 605 S'),
(89, 6, '31000', 3, 'WISN 82'),
(90, 6, '47000', 3, 'PWSC 6107 S'),
(91, 6, '79000', 3, 'WISL 103'),
(92, 6, '65000', 3, 'WISL 104'),
(93, 7, '25000', 3, 'F-1096SD3'),
(94, 7, '27000', 3, 'F-1096WD'),
(95, 7, '29000', 3, 'F-10C3LD'),
(96, 7, '34000', 3, 'F-10B8MD'),
(97, 7, '37000', 3, 'F-1296TD3'),
(98, 7, '39000', 3, 'F-1089ND'),
(99, 7, '47000', 3, 'F-12B8ND'),
(100, 7, '24000', 3, 'F-1281TD5'),
(101, 7, '61000', 3, 'F-10B9LD'),
(102, 7, '94000', 3, 'F-12B8ND1'),
(113, 2, '110000', 3, 'WF8590NLW8'),
(114, 2, '39000', 3, 'WF60F1R0H0W'),
(115, 2, '55000', 3, 'WF8590NLW9'),
(116, 2, '79000', 3, 'WF60F1R0E2WD'),
(117, 2, '83000', 3, 'WW65K42E00S'),
(118, 2, '94000', 3, 'WF60F1R2E2WD'),
(119, 2, '95000', 3, 'WW65K42E08W'),
(120, 2, '78000', 3, 'WW65K52E69S'),
(121, 2, '66000', 3, 'WW70K62E00S'),
(122, 2, '25000', 3, 'WD70J5410AW'),
(123, 10, '10990', 2, 'КТ-705'),
(124, 10, '5990', 2, 'КТ-781'),
(125, 10, '6590', 2, 'КТ-782'),
(126, 10, '11190', 2, 'KT-720'),
(127, 10, '10590', 2, 'KT-737'),
(128, 10, '3490', 2, 'КТ-796'),
(129, 10, '3690', 2, 'КТ-797'),
(130, 10, '5990', 2, 'KT-777'),
(131, 14, '7000', 2, 'EP3558 3100 Series'),
(132, 14, '9000', 2, 'HD8649 2000 Series'),
(133, 14, '12000', 2, 'HD8654 2100 Series'),
(134, 14, '24000', 2, 'EP3559 3100 Series'),
(135, 14, '5000', 2, 'HD8827 3000 Series'),
(136, 14, '6000', 2, 'EP3243 Series 3200 LatteGo'),
(137, 14, '8000', 2, 'LatteGo EP2231 Series 2200'),
(138, 14, '9000', 2, 'EP2020 Series 2200'),
(139, 2, '32000', 4, 'S23 Ultra'),
(140, 2, '18000', 4, 'S23 | 23+'),
(141, 2, '19000', 4, 'A54 5G'),
(142, 2, '32000', 4, 'Z Fold4'),
(143, 2, '22000', 4, ' Z Flip4'),
(144, 2, '11000', 4, 'Watch5 Pro'),
(145, 2, '36000', 4, 'Buds2 Pro'),
(146, 2, '41000', 4, 'Tab S8 Ultra'),
(152, 7, '', 4, 'MS20R42D'),
(153, 7, '11330', 4, 'MS 2044 V'),
(154, 7, '12272', 4, 'ms2023dars'),
(155, 7, '12397', 4, 'Ms2042Db'),
(156, 7, '4121', 4, 'ms-2044v'),
(167, 29, '58000', 4, 'NN-CS89LBZPE'),
(168, 29, '12000', 4, 'NN-GT35HBZPE'),
(169, 29, '9000', 4, 'NN-GD38HSZPE'),
(170, 29, '21000', 4, 'NN-CS894B'),
(171, 29, '32000', 4, 'NN-ST342M'),
(172, 29, '25000', 4, 'NN-GT261W'),
(173, 29, '24000', 4, 'NN-GM342'),
(174, 29, '23000', 4, 'NN-GD692'),
(175, 29, '26000', 4, 'NN-GD382'),
(176, 29, '27000', 4, 'NN-GD371MZPE'),
(182, 28, '5360', 4, 'MO17ME'),
(183, 28, '23990', 4, 'BM235ORAB'),
(184, 28, '33671', 4, 'GOM811B'),
(185, 28, '11853', 4, 'MO4250CLI'),
(186, 28, '5275', 4, 'MO20E1S'),
(187, 5, '27690', 5, 'BWD421POW'),
(188, 5, '30490', 5, 'BWD421PET'),
(189, 5, '24890', 5, 'BWD420HYG'),
(190, 5, '22990', 5, 'BWD41740'),
(191, 5, '19990', 5, 'BGS41ZOORU'),
(192, 5, '22990', 5, 'BGS412234A'),
(193, 5, '23690', 5, 'BGS412234'),
(194, 5, '14990', 5, 'BGS21WX200'),
(195, 5, '9990', 5, 'BGS05RD2'),
(196, 5, '10790', 5, 'BGS05PU2'),
(197, 10, '8590', 5, 'KT-594'),
(198, 10, '7690', 5, 'КТ-5117'),
(199, 10, '6690', 5, 'КТ-5127'),
(200, 10, '6790', 5, 'KT-541'),
(201, 10, '7990', 5, 'КТ-5154'),
(202, 10, '8390', 5, 'КТ-5122'),
(203, 10, '7490', 5, 'KT-561'),
(204, 10, '12490', 5, 'КТ-5123'),
(205, 10, '16990', 5, 'КТ-5103'),
(206, 10, '10690', 5, 'КТ-5151'),
(207, 7, '10000', 5, 'VK89309H'),
(208, 7, '7000', 5, 'A9N-PRIME'),
(209, 7, '12000', 5, 'VC83209UHA'),
(210, 7, '14000', 5, 'VK69662N'),
(211, 7, '11000', 5, 'VC73189NHTB'),
(212, 7, '14000', 5, 'R9MASTER'),
(213, 7, '21000', 5, 'A9K-MAX1'),
(214, 7, '22000', 5, 'VC73188NELR'),
(215, 7, '29000', 5, 'A9T-ULTRA2'),
(216, 7, '6000', 5, 'A9N-CORE'),
(227, 14, '15000', 5, 'FC8142/02'),
(228, 14, '14000', 5, 'FC8144/01'),
(229, 14, '13000', 5, 'FC8146/01'),
(230, 14, '18000', 5, 'FC8952/01'),
(231, 14, '21000', 5, 'FC6844/01'),
(232, 14, '19000', 5, 'FC8767/02'),
(233, 14, '24000', 5, 'FC8764/01'),
(234, 14, '19000', 5, 'FC8761/01'),
(235, 14, '21000', 5, 'FC8760/01'),
(236, 14, '35000', 5, 'FC9205/01'),
(247, 2, '15000', 5, 'SC45'),
(248, 2, '21000', 5, 'Jet 60 turbo'),
(249, 2, '22000', 5, 'Jet 70 turbo'),
(250, 2, '9000', 5, 'Jet 75 complete'),
(251, 2, '8000', 5, 'Jet 90 complete'),
(252, 2, '19000', 5, 'Jet 75 pet'),
(253, 2, '15000', 5, 'Jet 90e complete'),
(254, 2, '14000', 5, 'Jet 75 Pro'),
(255, 2, '13000', 5, 'Jet 70 complete'),
(256, 2, '17000', 5, 'Jet 70 Pro'),
(257, 25, '16000', 9, 'Vacuum-Mop 2 Lite'),
(258, 25, '18000', 9, 'Vacuum-Mop 2'),
(259, 25, '19000', 9, 'Vacuum Cleaner 3C'),
(260, 25, '27000', 9, 'Vacuum-Mop Essential'),
(261, 25, '25000', 9, 'Vacuum-Mop P'),
(262, 25, '34000', 9, 'Vacuum-Mop 2C'),
(263, 25, '38000', 9, 'Vacuum-Mop 2 MJST1S'),
(264, 25, '40000', 9, 'Vacuum-Mop 2 Ultra'),
(265, 25, '41000', 9, 'Vacuum Cleaner 2C'),
(266, 9, '12000', 9, 'S5'),
(267, 9, '14000', 9, 'Xiaowa Lite'),
(268, 9, '18000', 9, 'S6'),
(269, 9, '21000', 9, 'S5 Max'),
(270, 9, '23000', 9, 'S4'),
(271, 9, '18000', 9, 'S6 Pure'),
(272, 9, '51000', 9, 'E4'),
(273, 9, '35000', 9, 'S6 MaxV'),
(274, 11, '77000', 9, 'Roomba 981'),
(275, 11, '69000', 9, 'Roomba 696'),
(276, 10, '51000', 9, 'Roomba 960'),
(277, 11, '89000', 9, 'Roomba 880'),
(278, 11, '34000', 9, 'Roomba 976'),
(279, 11, '21000', 9, 'Braava Jet 250'),
(280, 11, '18000', 9, 'Braava Jet 240'),
(281, 13, '12000', 9, 'PVCR 0930 SmartGo'),
(282, 13, '24000', 9, 'PVCR 0726W'),
(283, 13, '18000', 9, 'PVC 0920 WV Rufer'),
(284, 13, '21000', 9, 'PVCR 0926W EVO'),
(285, 13, '29000', 9, 'PVCR 0826'),
(286, 13, '19000', 9, 'PVCR 1020 FusionPRO'),
(287, 13, '17000', 9, 'PVCR 1090 Space Sense Aqua'),
(288, 13, '41000', 9, 'PVCR 3000 Cyclonic PRO'),
(289, 7, '7000', 9, 'VR5901KL'),
(290, 7, '18000', 9, 'VR5901LVM'),
(291, 7, '25000', 9, 'VR5902KL'),
(292, 7, '31000', 9, 'VR5902LVM'),
(293, 7, '47000', 9, 'VR5903KL'),
(294, 7, '55000', 9, 'VR5904KL'),
(295, 7, '32000', 9, 'VR5905LM'),
(296, 7, '15000', 9, 'VR5906KL'),
(297, 14, '12000', 9, 'FC8802 EasyStar'),
(298, 14, '77000', 9, 'FC8715'),
(299, 14, '55000', 9, 'FC8776 SmartPro Compact'),
(300, 14, '34000', 9, 'FC8796 SmartPro Easy'),
(301, 14, '45000', 9, 'FC8792 SmartPro Easy'),
(302, 14, '51000', 9, 'FC8822 SmartPro Active'),
(303, 2, '45000', 9, 'Galaxy S23 Ultra'),
(304, 2, '36000', 9, 'Galaxy S23 | 23+'),
(305, 2, '22000', 9, 'Galaxy A54 5G'),
(306, 2, '18000', 9, 'Galaxy Z Fold4'),
(307, 2, '25000', 9, 'Galaxy Z Flip4'),
(308, 2, '33000', 9, 'Galaxy Watch5 Pro'),
(309, 2, '49000', 9, 'Galaxy Buds2 Pro'),
(310, 2, '75000', 9, 'Galaxy Tab S8 Ultra'),
(311, 25, '52000', 6, 'Electric Scooter Essential'),
(312, 25, '74000', 6, 'Electric Scooter Pro 2'),
(313, 25, '96000', 6, 'Electric Scooter 1S'),
(314, 25, '56000', 6, 'Mijia M365'),
(315, 25, '155000', 6, 'Mijia M365 Pro'),
(316, 15, '35000', 6, 'KickScooter E22'),
(317, 15, '41000', 6, 'eKickScooter Zing E10'),
(318, 15, '47000', 6, 'KickScooter MAX G30LP'),
(319, 15, '65000', 6, 'KickScooter E45'),
(320, 15, '66000', 6, 'Air T15'),
(321, 15, '74000', 6, 'KickScooter Max G30P'),
(322, 15, '53000', 6, 'KickScooter F20A'),
(328, 16, '55000', 6, 'ONE K E-MOTION 15'),
(329, 16, '98000', 6, 'ONE K E-MOTION 10'),
(330, 16, '55000', 6, 'E-MOTION Е4'),
(331, 17, '85000', 6, 'Kirin M4 Pro 18 Ah'),
(332, 17, '96000', 6, 'Kirin G2 Max'),
(333, 17, '74000', 6, 'Kirin M4 Pro Plus'),
(334, 17, '69000', 6, 'G1'),
(335, 17, '81000', 6, 'M5'),
(336, 17, '74000', 6, 'Kirin M5 Pro'),
(337, 17, '69000', 6, 'Kirin M4'),
(338, 17, '54000', 6, 'G5 SUPER'),
(339, 17, '41000', 6, 'S3 Pro'),
(340, 17, '52000', 6, 'Max Speed'),
(351, 2, '74000', 7, 'UE50BU8000U'),
(352, 2, '135000', 7, 'UE43AU7002U'),
(353, 2, '220000', 7, 'UE43BU8000U'),
(354, 2, '156000', 7, 'UE43T5300AU'),
(355, 2, '134000', 7, 'UE55BU8000U'),
(356, 2, '191000', 7, 'UE65BU8500U'),
(357, 2, '105000', 7, 'UE55AU7100U'),
(358, 2, '77000', 7, 'UE43AU7100U'),
(359, 2, '65000', 7, 'UE32N4010AU'),
(360, 2, '55000', 7, 'UE32T4500AU'),
(381, 18, '180000', 7, 'Z9J Series'),
(382, 18, '255000', 7, 'A90K Series'),
(383, 18, '187000', 7, 'A80K Series'),
(384, 18, '459000', 7, 'A90J Series'),
(385, 18, '381000', 7, 'X95K Series'),
(386, 18, '195000', 7, 'X90K Series'),
(387, 18, '215000', 7, 'ZH8 Series'),
(388, 18, '156000', 7, 'X85TK Series'),
(389, 18, '169000', 7, 'X81K Series'),
(390, 18, '200000', 7, 'X90J/X90SJ Series'),
(397, 18, '223000', 7, '65UQ91009LD'),
(398, 18, '451000', 7, '75UQ80001LA'),
(399, 18, '356000', 7, '75UQ80006LB'),
(400, 18, '189000', 7, '65UQ81003LA'),
(401, 18, '231000', 7, '86UQ90006LD'),
(402, 14, '55000', 7, '19PFL3507T'),
(403, 14, '150000', 7, '22PDL4906H'),
(404, 14, '165000', 7, '22PFL2807H'),
(405, 14, '87000', 7, '22PFL3517T'),
(406, 14, '74000', 7, '22PFT4022'),
(407, 14, '89000', 7, '23PHH4109'),
(408, 14, '51400', 7, '23PHK4009'),
(409, 14, '55400', 7, '24PFT5211'),
(410, 14, '97000', 7, '22PFL3507T'),
(411, 19, '73000', 7, 'H-LED40F502BS2S'),
(412, 19, '74000', 7, 'H-LED24V19'),
(413, 19, '34000', 7, 'H-LED32V26'),
(414, 19, '66000', 7, 'H-LED32V25'),
(415, 19, '78000', 7, 'H-LED19V21'),
(416, 19, '41000', 7, 'H-LED19V13'),
(417, 19, '56000', 7, 'H-LED19V6'),
(418, 19, '174000', 7, 'H-LED22V6'),
(419, 19, '189000', 7, 'H-LED24V14'),
(420, 19, '450000', 7, 'H-LED29V17'),
(421, 1, '23000', 7, '43 Smart TV MX Light'),
(422, 1, '47000', 7, '65 Smart TV S5'),
(423, 1, '51000', 7, '32 Smart TV MX LED'),
(424, 1, '65000', 7, '65 SMART TV BX LED'),
(425, 1, '113000', 7, '50 SMART TV BX LED'),
(426, 1, '158000', 7, '32 Smart TV DX LED'),
(427, 1, '79000', 7, 'LE65U6900UG LED'),
(428, 1, '56000', 7, '50 Smart TV HX'),
(429, 25, '56000', 7, 'Smart TV 42'),
(430, 25, '51000', 7, 'Smart TV 4A 60'),
(431, 25, '89000', 7, 'TV E 65X'),
(432, 25, '74000', 7, 'TV EA 40'),
(433, 25, '55000', 7, 'TV EA 65 2022'),
(434, 25, '43000', 7, 'TV EA Pro 65'),
(435, 25, '46000', 7, 'TV Pro 65 E65S'),
(436, 25, '78000', 7, 'TV ES 43'),
(437, 21, '75000', 8, 'K40'),
(438, 21, '89000', 8, 'K42'),
(439, 21, '54000', 8, 'K43'),
(440, 21, '51000', 8, 'K45'),
(441, 21, '115000', 8, 'K46'),
(442, 21, '130000', 8, 'K50'),
(443, 21, '25000', 8, 'K501LB'),
(444, 21, '38000', 8, 'K501LX'),
(445, 21, '98000', 8, 'VivoBook 15 R564'),
(446, 22, '78000', 8, 'HP 200 series'),
(447, 22, '136000', 8, 'Elite Dragonfly'),
(448, 22, '458000', 8, 'EliteBook'),
(449, 22, '35000', 8, 'Omen'),
(450, 22, '78000', 8, 'Pavilion'),
(451, 22, '83000', 8, 'ProBook'),
(452, 22, '55000', 8, 'ZBook'),
(453, 22, '77000', 8, 'Envy x360 15'),
(454, 23, '76000', 8, 'ThinkPad X1 Carbon Gen 11'),
(455, 23, '89000', 8, 'ThinkPad L13 AMD Gen 4​'),
(456, 23, '65000', 8, 'ThinkPad L15 AMD Gen 4'),
(457, 23, '45000', 8, 'IdeaPad Slim 3i Gen 8'),
(458, 23, '74000', 8, 'Yoga Slim 6i Gen 8'),
(459, 23, '69000', 8, 'Legion Pro 7 Gen 8'),
(468, 24, '56000', 8, 'Aspire 1203XV'),
(469, 24, '81000', 8, 'Aspire 1300X'),
(470, 24, '135000', 8, 'Aspire 1300XC'),
(471, 24, '179000', 8, 'Aspire 1300XV'),
(472, 24, '55000', 8, 'Aspire 1302X'),
(473, 24, '63000', 8, 'Aspire 1302XV'),
(474, 24, '48000', 8, 'Aspire 1304LC'),
(475, 25, '65000', 8, 'RedmiBook 14'),
(476, 25, '51000', 8, 'Notebook Lite 15.6'),
(477, 25, '52000', 8, 'Gaming Laptop 15.6'),
(478, 25, '63000', 8, 'Notebook Pro 15.6'),
(479, 25, '47000', 8, 'Notebook Air 13.3'),
(480, 25, '22000', 8, 'Notebook Air 12.5'),
(489, 20, '55000', 8, 'Matebook D'),
(490, 20, '36000', 8, 'Matebook 14'),
(491, 20, '33000', 8, 'Matebook 13'),
(492, 20, '35000', 8, 'Matebook X Pro'),
(493, 20, '69000', 8, 'Matebook X'),
(494, 20, '89000', 8, 'Matebook E'),
(495, 20, '112000', 8, 'Matebook'),
(496, 26, '255000', 8, 'MacBook Pro 14'),
(497, 26, '179000', 8, 'MacBook Pro 16'),
(498, 26, '118000', 8, ' MacBook Air M1'),
(499, 26, '163000', 8, 'MacBook Air Retina'),
(500, 26, '128000', 8, 'MacBook Air'),
(501, 26, '133000', 8, 'MacBook Pro 13 M1'),
(502, 26, '215000', 8, 'MacBook Pro 13');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `idOrder` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idModel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idBrand`),
  ADD UNIQUE KEY `idBrand_UNIQUE` (`idBrand`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idCategories`),
  ADD UNIQUE KEY `idCategories_UNIQUE` (`idCategories`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`idClient`),
  ADD UNIQUE KEY `idClient_UNIQUE` (`idClient`);

--
-- Индексы таблицы `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`idModel`,`idBrand`,`idCategories`),
  ADD UNIQUE KEY `idModel_UNIQUE` (`idModel`),
  ADD UNIQUE KEY `ModelName` (`ModelName`),
  ADD KEY `fk_Техника_has_Производитель_Произ_idx` (`idBrand`),
  ADD KEY `fk_Девайс_Categori1_idx` (`idCategories`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idOrder`,`idClient`,`idModel`),
  ADD UNIQUE KEY `idOrder_UNIQUE` (`idOrder`),
  ADD KEY `fk_Заказ_Клиент1_idx` (`idClient`),
  ADD KEY `fk_Заказ_Models1_idx` (`idModel`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `idBrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `idCategories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `models`
--
ALTER TABLE `models`
  MODIFY `idModel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `fk_Девайс_Categori1` FOREIGN KEY (`idCategories`) REFERENCES `categories` (`idCategories`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Техника_has_Производитель_Произв1` FOREIGN KEY (`idBrand`) REFERENCES `brand` (`idBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_Заказ_Models1` FOREIGN KEY (`idModel`) REFERENCES `models` (`idModel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Заказ_Клиент1` FOREIGN KEY (`idClient`) REFERENCES `clients` (`idClient`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
