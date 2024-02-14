-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 14. 23:52
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `jab_ab`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eredmenyek23`
--

CREATE TABLE `eredmenyek23` (
  `eredmenyek23kid` int(11) NOT NULL,
  `gyoztes23` varchar(35) NOT NULL,
  `vesztes23` varchar(35) NOT NULL,
  `pontozas23` varchar(35) NOT NULL,
  `KO23` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eredmények`
--

CREATE TABLE `eredmények` (
  `eredmenyekid` int(11) NOT NULL,
  `gyoztes` varchar(35) NOT NULL,
  `vesztes` varchar(35) NOT NULL,
  `pontozas` varchar(11) DEFAULT NULL,
  `KO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eredmények`
--

INSERT INTO `eredmények` (`eredmenyekid`, `gyoztes`, `vesztes`, `pontozas`, `KO`) VALUES
(1, 'MILISIC Ana', ' TUGSJARGAL Nomin-Erden', '4:1', 0),
(2, 'SZABÓ Petra', 'BOLANCA Dea', ' 4:1', 0),
(3, 'BÉLIK Tímea', 'FILIPPOVA Yuliia', ' 3:2', 0),
(4, 'TSYKALO Ruslan', 'BUDAI Máté', 'R2', 1),
(5, 'ZHEXEN Biibars', 'DURJNJAMBU Ganbold', '5:0', 0),
(6, 'ZAMORYLO Danyil', 'JARMY Tamás', 'R3', 0),
(7, 'AKKALYKOV Sabirzhan', 'ANTAL László', ' 5:0', 0),
(8, 'BUZA Rómeó', 'OROYOWVE Isaac', ' 4:1', 0),
(9, 'AKILOV Pylyp', 'MOLZHIGITOV Dias', '3:0', 0),
(10, 'KULYA Dmytro', 'OTGONBAATAR Byamba-Erdene', '4:0', 0),
(11, 'HRYTSIV Oleksandr', 'KHALI Byeknur', 'R3', 0),
(12, 'OYUNTSETSEG Jesugen', 'PAP Kata', ' 5:0', 0),
(13, 'SZŰCS Szabina', ' DOBOS Rebeka', ' 5:0', 0),
(14, 'OKHREI Hanna', 'UJVÁRI Viktória', ' R2', 0),
(15, 'HARCOS Zoé', 'BUDAI Vivien', '4:1', 0),
(16, 'ELIZABETA Wojcik', 'MAKHNO Karolina', '5:0', 0),
(17, 'SZABÓ Sándor', 'BERNÁTH Dávid', NULL, 0),
(18, 'TÓTH-SZABÓ Vilmos', 'PETAR Hicolov', NULL, 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `merkozesek`
--

CREATE TABLE `merkozesek` (
  `merkozesekid` int(11) NOT NULL,
  `vnevid1` int(11) NOT NULL,
  `vnevid2` int(11) NOT NULL,
  `ring` varchar(35) NOT NULL,
  `bnev` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `merkozesek`
--

INSERT INTO `merkozesek` (`merkozesekid`, `vnevid1`, `vnevid2`, `ring`, `bnev`) VALUES
(1, 86, 101, 'A', ' BOUHLEL Sara'),
(2, 49, 61, 'A', 'BABAI Sándor'),
(3, 50, 123, 'A', 'SIMEVSKA Radmila'),
(4, 13, 105, 'A', 'CSOKOR Zoltán'),
(5, 66, 77, 'A', 'MILCZAREK Slawomir'),
(6, 17, 106, 'A', 'JÓNÁS Ádám'),
(7, 69, 23, 'A', 'SZABÓ Egon'),
(8, 24, 22, 'A', 'HIDVÉGI György'),
(9, 27, 70, 'A', 'BOUHLEL Sara'),
(10, 111, 80, 'A', 'KÁDÁR Sándor'),
(11, 81, 116, 'A', 'SIMEVSKA Radmila'),
(12, 39, 83, 'B', 'BAITTROV Nurbek'),
(13, 42, 41, 'B', 'CSOKOR Csaba'),
(14, 122, 44, 'B', 'SUKHEBATOR Zhyhzhzhayan'),
(15, 48, 45, 'B', 'DR. RÁTKAI Norbert'),
(16, 126, 96, 'B', 'GYŐRFI Károly'),
(17, 12, 11, 'B', 'FEHÉR Márió'),
(18, 16, 59, 'B', 'MOLNÁR Gábor'),
(19, 67, 15, 'B', 'SZŰCS Veronika'),
(20, 90, 109, 'B', 'BAITTROV Nurbek'),
(21, 26, 110, 'B', 'CSOKOR Csaba'),
(22, 25, 28, 'B', 'SUKHEBATOR Zhyhzhzhayan'),
(23, 118, 82, 'A', 'CSOKOR Zoltán'),
(24, 87, 93, 'A', 'MILCZAREK Slawomir'),
(25, 85, 43, 'A', 'JÓNÁS Ádám'),
(26, 74, 94, 'A', 'SZABÓ Egon'),
(27, 46, 88, 'A', 'HIDVÉGI György'),
(28, 95, 124, 'A', 'BOUHLEL Sara'),
(29, 75, 6, 'A', 'BABAI Sándor'),
(30, 104, 65, 'A', 'SIMEVSKA Radmila'),
(31, 14, 106, 'A', 'HIDVÉGI György'),
(32, 19, 97, 'A', 'MILCZAREK Slawomir'),
(33, 32, 73, 'A', 'KÁDÁR Sándor'),
(34, 300, 37, 'B', 'DR. RÁTKAI Norbert'),
(35, 60, 121, 'B', 'GYŐRFI Károly'),
(36, 101, 41, 'B', 'FEHÉR Márió'),
(37, 47, 49, 'B', 'MOLNÁR Gábor'),
(38, 122, 45, 'B', 'SZŰCS Veronika'),
(39, 53, 125, 'B', 'BATYROV Nurbek'),
(40, 64, 4, 'B', 'CSOKOR Csaba'),
(41, 9, 100, 'B', 'SUKHEBATOR Zhyhzhzhayan'),
(42, 16, 67, 'B', 'SUKHEBATOR Zhyhzhzhayan'),
(43, 99, 108, 'B', 'GYŐRFI Károly'),
(44, 114, 33, 'B', 'FEHÉR Márió'),
(45, 36, 119, 'A', 'CSOKOR Zoltán'),
(46, 120, 92, 'A', 'SZABÓ Egon'),
(47, 93, 85, 'A', 'BOUHLEL Sara'),
(48, 74, 88, 'A', 'KÁDÁR Sándor'),
(49, 52, 102, 'A', 'JÓNÁS Ádám'),
(50, 128, 58, 'A', 'SIMEVSKA Radmila'),
(51, 7, 8, 'A', 'BABAI Sándor'),
(52, 107, 68, 'A', 'HIDVÉGI György'),
(53, 18, 78, 'A', 'MILCZAREK Slawomir'),
(54, 27, 111, 'A', 'BOUHLEL Sara'),
(55, 30, 113, 'A', 'HIDVÉGI György'),
(56, 118, 300, 'B', 'FEHÉR Márió'),
(57, 84, 40, 'B', 'SZŰCS Veronika'),
(58, 60, 41, 'B', 'SUKHEBATOR Zhyhzhzhayan'),
(59, 49, 122, 'B', 'DR. RÁTKAI Norbert'),
(60, 51, 50, 'B', 'FEHÉR Márió'),
(61, 1, 103, 'B', 'CSOKOR Csaba'),
(62, 65, 9, 'B', 'MOLNÁR Gábor'),
(63, 79, 20, 'B', 'GYŐRFI Károly'),
(64, 19, 108, 'B', 'BATYROV Nurbek'),
(65, 110, 28, 'B', 'DR. RÁTKAI Norbert'),
(66, 72, 31, 'B', 'MOLNÁR Gábor'),
(67, 5, 76, 'A', ' BABAI Sándor'),
(68, 10, 105, 'A', 'KÁDÁR Sándor'),
(69, 107, 78, 'A', 'SZABÓ Egon'),
(70, 21, 69, 'A', 'MILCZAREK Slawomir'),
(71, 71, 112, 'A', 'CSOKOR Zoltán'),
(72, 115, 98, 'A', 'BOUHLEL Sara'),
(73, 2, 63, 'B', 'CSOKOR Csaba'),
(74, 75, 64, 'B', 'CSOKOR Csaba'),
(75, 66, 12, 'B', 'SUKHEBATOR Zhyhzhzhayan'),
(76, 20, 19, 'B', 'MOLNÁR Gábor'),
(77, 22, 109, 'B', 'MOLNÁR Gábor'),
(78, 34, 116, 'B', 'BATYROV Nurbek'),
(79, 35, 117, 'A', 'JÓNÁS Ádám'),
(80, 36, 300, 'A', 'MOLNÁR Gábor'),
(81, 38, 83, 'A', 'FEHÉR Márió'),
(82, 92, 84, 'A', 'BABAI Sándor'),
(83, 93, 41, 'A', 'MOLNÁR Gábor'),
(84, 88, 122, 'A', 'SUKHEBATOR Zhyhzhzhayan'),
(85, 102, 50, 'A', 'SZABÓ Egon'),
(86, 89, 95, 'A', 'BATYROV Nurbek'),
(87, 54, 125, 'A', 'SIMEVSKA Radmila'),
(88, 55, 96, 'A', 'KÁDÁR Sándor'),
(89, 127, 56, 'A', 'CSOKOR Csaba'),
(90, 57, 128, 'A', 'BOUHLEL Sara'),
(91, 62, 103, 'A', 'CSOKOR Zoltán'),
(92, 3, 63, 'A', 'JÓNÁS Ádám'),
(93, 5, 64, 'A', 'FEHÉR Márió'),
(94, 8, 65, 'A', 'SZABÓ Egon'),
(95, 10, 66, 'A', 'GYŐRFI Károly'),
(96, 14, 67, 'A', 'BABAI Sándor'),
(97, 107, 19, 'A', 'CSOKOR Csaba'),
(98, 69, 109, 'A', 'MOLNÁR Gábor'),
(99, 111, 110, 'A', 'HIDVÉGI György'),
(100, 29, 71, 'A', 'BABAI Sándor'),
(101, 113, 72, 'A', 'BOUHLEL Sara'),
(102, 32, 33, 'A', 'SUKHEBATOR Zhyhzhzhayan'),
(103, 115, 116, 'A', 'BATYROV Nurbek');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `merkozesek23`
--

CREATE TABLE `merkozesek23` (
  `merkozes23id` int(11) NOT NULL,
  `vnev23id1` int(11) NOT NULL,
  `vnev23id2` int(11) NOT NULL,
  `ring23` varchar(35) NOT NULL,
  `bnev23` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyzok`
--

CREATE TABLE `versenyzok` (
  `versenyzoid` int(11) NOT NULL,
  `vnev` varchar(35) NOT NULL,
  `sulycsoport` float NOT NULL,
  `nem` varchar(35) NOT NULL,
  `nemzetiseg` varchar(35) NOT NULL,
  `szul_ev` int(11) DEFAULT NULL,
  `evszam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `versenyzok`
--

INSERT INTO `versenyzok` (`versenyzoid`, `vnev`, `sulycsoport`, `nem`, `nemzetiseg`, `szul_ev`, `evszam`) VALUES
(1, 'ZSIGÓ Csaba', 48, 'ffi', 'HUN', NULL, 2024),
(2, 'BERNÁTH Imre', 51, 'ffi', 'HUN', NULL, 2024),
(3, 'BERNÁTH Attila', 51, 'ffi', 'HUN', 2000, 2024),
(4, 'BERNÁTH László', 54, 'ffi', 'HUN', NULL, 2024),
(5, 'VIRBÁN Gábor', 54, 'ffi', 'HUN', NULL, 2024),
(6, 'LAKATOS Péter', 54, 'ffi', 'HUN', NULL, 2024),
(7, 'KOLOSZÁR Valentin ', 57, 'ffi', 'HUN', NULL, 2024),
(8, 'VERES Roland', 57, 'ffi', 'HUN', 1999, 2024),
(9, 'GÁLOS Roland ', 57, 'ffi', 'HUN', 1996, 2024),
(10, 'KOVÁCS Kruzitó', 60, 'ffi', 'HUN', 2005, 2024),
(11, 'BERNÁTH Dávid', 60, 'ffi', 'HUN', NULL, 2024),
(12, 'SZABÓ Sándor', 60, 'ffi', 'HUN', 2005, 2024),
(13, 'BUDAI Máté ', 60, 'ffi', 'HUN', NULL, 2024),
(14, 'KOVÁCS Richárd', 63.5, 'ffi', 'HUN', NULL, 2024),
(15, 'KOVÁCS Tamás ', 63.5, 'ffi', 'HUN', NULL, 2024),
(16, 'TÓTH-SZABÓ Vilmos ', 63.5, 'ffi', 'HUN', NULL, 2024),
(17, 'JARMY Tamás', 63.5, 'ffi', 'HUN', NULL, 2024),
(18, 'MAJOR Milán', 67, 'ffi', 'HUN', 2003, 2024),
(19, 'BUZA Rafael', 67, 'ffi', 'HUN', 2005, 2024),
(20, 'PETRIMÁN Milán', 67, 'ffi', 'HUN', NULL, 2024),
(21, 'GÉMES Levente ', 71, 'ffi', 'HUN', 2006, 2024),
(22, 'BUZA Rómeó ', 71, 'ffi', 'HUN', NULL, 2024),
(23, 'ANTAL László ', 71, 'ffi', 'HUN', NULL, 2024),
(24, 'OROYOWVE Isaac ', 71, 'ffi', 'HUN', NULL, 2024),
(25, 'NÉMETH Zsolt', 75, 'ffi', 'HUN', NULL, 2024),
(26, 'KIRÁLY Balázs ', 75, 'ffi', 'HUN', NULL, 2024),
(27, 'AKILOV Pylyp ', 75, 'ffi', 'HUN', 2000, 2024),
(28, 'MESTER Soma ', 75, 'ffi', 'HUN', 2002, 2024),
(29, 'KOVÁCS Pál ', 80, 'ffi', 'HUN', 1996, 2024),
(30, 'KISS Milán ', 86, 'ffi', 'HUN', NULL, 2024),
(31, 'BALOGH Dávid ', 86, 'ffi', 'HUN', NULL, 2024),
(32, 'KISS Levente ', 92, 'ffi', 'HUN', 2003, 2024),
(33, 'SALLAI Márk ', 92, 'ffi', 'HUN', 1993, 2024),
(34, 'SZILVÁSSI Zsolt', 93, 'ffi', 'HUN', NULL, 2024),
(35, 'SZELECZKI Lilla ', 48, 'noi', 'HUN', NULL, 2024),
(36, 'MEZEI Petra ', 50, 'noi', 'HUN', NULL, 2024),
(37, 'HORVÁTH Kármen', 50, 'noi', 'HUN', 2006, 2024),
(38, 'HORVÁTH Laura ', 52, 'noi', 'HUN', 2006, 2024),
(39, 'PAP Kata', 52, 'noi', 'HUN', 2005, 2024),
(40, 'LAKOTÁR Hanna ', 54, 'noi', 'HUN', 2002, 2024),
(41, 'SZŰCS Szabina ', 57, 'noi', 'HUN', 1993, 2024),
(42, 'DOBOS Rebeka ', 57, 'noi', 'HUN', NULL, 2024),
(43, 'PLAJOS Dominika', 57, 'noi', 'HUN', NULL, 2024),
(44, 'UJVÁRI Viktória ', 60, 'noi', 'HUN', NULL, 2024),
(45, 'HARCOS Zoé ', 60, 'noi', 'HUN', NULL, 2024),
(46, 'DR. GYŐRFI Anna', 60, 'noi', 'HUN', NULL, 2024),
(47, 'HAJDÚ Annamária ', 60, 'noi', 'HUN', NULL, 2024),
(48, 'BUDAI Vivien ', 60, 'noi', 'HUN', 2000, 2024),
(49, 'SZABÓ Petra ', 60, 'noi', 'HUN', NULL, 2024),
(50, 'BÉLIK Tímea ', 63, 'noi', 'HUN', 1993, 2024),
(51, 'NÉMETH Dominika', 63, 'noi', 'HUN', NULL, 2024),
(52, 'CIFRA Diana ', 63, 'noi', 'HUN', NULL, 2024),
(53, 'KOVÁCS Nikolett ', 70, 'noi', 'HUN', 2005, 2024),
(54, 'NAGY Bianka ', 70, 'noi', 'HUN', 1989, 2024),
(55, 'NAKOTA Veronika ', 75, 'noi', 'HUN', 2005, 2024),
(56, 'KOMJÁTHI Nóra', 81, 'noi', 'HUN', NULL, 2024),
(57, 'HOFFMANN Réka', 82, 'noi', 'HUN', 2003, 2024),
(58, 'SZIRA Zsófia', 82, 'noi', 'HUN', NULL, 2024),
(59, ' PETAR Hicolov ', 63.5, 'ffi', 'BUL', NULL, 2024),
(60, 'NIKOLINA Cacic', 57, 'noi', 'CRO', 2001, 2024),
(61, 'BOLANCA Dea', 60, 'noi', 'CRO', NULL, 2024),
(62, 'ZHUSSUPOV Askhat', 48, 'ffi', 'KAZ', 1998, 2024),
(63, 'SABIT Daniyal ', 51, 'ffi', 'KAZ', 2003, 2024),
(64, 'MURATULY Kenzhe', 54, 'ffi', 'KAZ', NULL, 2024),
(65, 'SERIKBAY Assylzhan', 57, 'ffi', 'KAZ', NULL, 2024),
(66, 'ZHEXEN Biibars ', 60, 'ffi', 'KAZ', 2002, 2024),
(67, 'ZEINULINOV Yertuga ', 63.5, 'ffi', 'KAZ', NULL, 2024),
(68, 'SEITZHAN Rakhat', 67, 'ffi', 'KAZ', 2001, 2024),
(69, 'AKKALYKOV Sabirzhan', 71, 'ffi', 'KAZ', 2002, 2024),
(70, 'MOLZHIGITOV Dias ', 75, 'ffi', 'KAZ', 2003, 2024),
(71, 'ZHAKPEKOV Yerassyl', 80, 'ffi', 'KAZ', NULL, 2024),
(72, 'MUKATAYEV Temirlan ', 86, 'ffi', 'KAZ', 2004, 2024),
(73, 'RAKHIMBERDINOV Daniyar', 92, 'ffi', 'KAZ', NULL, 2024),
(74, 'VLADISLAVA Kukhta', 60, 'noi', 'KAZ', 2000, 2024),
(75, 'ALDARKHISHEG Battulga', 54, 'ffi', 'MGL', NULL, 2024),
(76, 'GANKHUYAG Gan-Ezdene', 54, 'ffi', 'MGL', NULL, 2024),
(77, 'DURJNJAMBU Ganbold', 60, 'ffi', 'MGL', NULL, 2024),
(78, 'BATTUMUR Misheelt', 67, 'ffi', 'MGL', 1998, 2024),
(79, 'TEGHJARGAL Enkhtur ', 67, 'ffi', 'MGL', 2002, 2024),
(80, 'OTGONBAATAR Byamba-Erdene', 75, 'ffi', 'MGL', 1997, 2024),
(81, 'KHALI Byeknur', 93, 'ffi', 'MGL', 1995, 2024),
(82, 'BALSAN Mungunsaran', 50, 'noi', 'MGL', 2000, 2024),
(83, 'OYUNTSETSEG Jesugen ', 52, 'noi', 'MGL', 2001, 2024),
(84, 'LUTSAIKHAN Altantsetseg ', 54, 'noi', 'MGL', 1996, 2024),
(85, 'TUMURKHUYAG Bolortuul', 57, 'noi', 'MGL', 1988, 2024),
(86, 'TUGSJARGAL Nomin-Erden', 57, 'noi', 'MGL', 2004, 2024),
(87, 'MUNGUNTSETSEG Enkhjargal', 57, 'noi', 'MGL', 2000, 2024),
(88, 'MONKHOR Namuun', 60, 'noi', 'MGL', 2000, 2024),
(89, 'GANZORIG Badmaarag', 66, 'noi', 'MGL', 2003, 2024),
(90, 'ALIM Rusterovski', 71, 'ffi', 'MKD', NULL, 2024),
(91, 'NATALIA Rok ', 50, 'noi', 'POL', 1995, 2024),
(92, 'DRABIK Sandra', 54, 'noi', 'POL', NULL, 2024),
(93, 'SZEREMETA Julia', 57, 'noi', 'POL', NULL, 2024),
(94, 'BORYS Patrycja ', 60, 'noi', 'POL', 2000, 2024),
(95, 'ANETA Rygielska', 66, 'noi', 'POL', 1996, 2024),
(96, 'ELIZABETA Wojcik ', 75, 'noi', 'POL', 1996, 2024),
(97, 'MARJAN Onuta ', 67, 'ffi', 'ROU', NULL, 2024),
(98, 'CSISZER Ernest-Márk ', 93, 'ffi', 'ROU', NULL, 2024),
(99, 'NIKOLIC Zelyko ', 67, 'noi', 'SRB', NULL, 2024),
(100, 'SEIFEDDINE Letaife', 57, 'ffi', 'SUI', 2003, 2024),
(101, 'MILISIC Ana ', 57, 'noi', 'SUI', 1996, 2024),
(102, 'ANNA Jenni', 63, 'noi', 'SUI', 1995, 2024),
(103, 'TYSHKOVETS Andriy', 48, 'ffi', 'UKR', 1998, 2024),
(104, 'CHULIACHEIEV Oleh ', 57, 'ffi', 'UKR', 1999, 2024),
(105, 'TSYKALO Ruslan ', 60, 'ffi', 'UKR', 2004, 2024),
(106, 'ZAMORYLO Danyil ', 63.5, 'ffi', 'UKR', NULL, 2024),
(107, 'ALIIEV Elvin', 67, 'ffi', 'UKR', 2002, 2024),
(108, 'KHRISTOSOV Rhor', 67, 'ffi', 'UKR', NULL, 2024),
(109, 'ZAKHARIEV Yurii', 71, 'ffi', 'UKR', 2003, 2024),
(110, 'ILLIUSHA Pavol', 75, 'ffi', 'UKR', NULL, 2024),
(111, 'KULYA Dmytro', 75, 'ffi', 'UKR', 2000, 2024),
(112, 'KOFAN Maksym ', 80, 'ffi', 'UKR', NULL, 2024),
(113, 'ZHASAN Danylo', 86, 'ffi', 'UKR', 1999, 2024),
(114, 'KARTSAN Arkadii ', 92, 'ffi', 'UKR', 2000, 2024),
(115, 'LOVCHYNSKYI Dmytro', 93, 'ffi', 'UKR', 1999, 2024),
(116, 'HRYTSIV Oleksandr', 93, 'ffi', 'UKR', 2000, 2024),
(117, 'SHALIMOVA Olha', 48, 'noi', 'UKR', 2001, 2024),
(118, 'KOB Tetiana ', 50, 'noi', 'UKR', 1988, 2024),
(119, 'MARYNCHUK Jaroslava', 50, 'noi', 'UKR', NULL, 2024),
(120, 'KOVALCHUK Anastasiia ', 54, 'noi', 'UKR', 1999, 2024),
(121, 'LAKNO Anhelia ', 57, 'noi', 'UKR', NULL, 2024),
(122, 'OKHREI Hanna', 60, 'noi', 'UKR', 1991, 2024),
(123, 'FILIPPOVA Yuliia', 63, 'noi', 'UKR', 2004, 2024),
(124, 'CHERNOKOLENKO Anastasi', 66, 'noi', 'UKR', 1994, 2024),
(125, 'SARANIUK Anastasiia', 70, 'noi', 'UKR', 2006, 2024),
(126, 'MAKHNO Karolina ', 75, 'noi', 'UKR', 2000, 2024),
(127, 'LUSTAK Iryna', 81, 'noi', 'UKR', 2006, 2024),
(128, 'LOVCHYNSKA Mariia ', 82, 'noi', 'UKR', 2001, 2024),
(129, ' SATTIBAYEVA Aigerim', 48, 'noi', 'KAZ', NULL, 2023),
(130, 'RESZTAN Demie-Jade', 48, 'noi', 'ENG', NULL, 2023),
(131, 'SZELECZKI Lilla', 48, 'noi', 'HUN', NULL, 2023),
(132, 'DEMIANNENKO Yuliia', 48, 'noi', 'UKR', NULL, 2023),
(133, 'LOPEZ Aldana Florencia', 48, 'noi', 'ARG', NULL, 2023),
(134, 'RUCZEWSKA Natalia', 50, 'noi', 'POL', NULL, 2023),
(135, 'KERTÉSZ Alexandra', 50, 'noi', 'HUN', NULL, 2023),
(136, 'MEZEI Petra', 50, 'noi', 'HUN', NULL, 2023),
(137, 'FLORES Tatiana', 50, 'noi', 'ARG', NULL, 2023),
(138, 'MARYNCHUK Yaroslava', 50, 'noi', 'UKR', NULL, 2023),
(139, ' PAP Kata', 50, 'noi', 'HUN', NULL, 2023),
(140, 'ORSZÁGI Sára', 50, 'noi', 'HUN', NULL, 2023),
(141, 'ROK Natalia', 50, 'noi', 'POL', NULL, 2023),
(142, ' KAIVO-OJA Pihla', 50, 'noi', 'FIN', NULL, 2023),
(143, 'PRYMACZENKO Nikola', 52, 'noi', 'POL', NULL, 2023),
(144, 'DAULETZHANYZY Yerkezhan', 52, 'noi', 'KAZ', NULL, 2023),
(145, 'SURACI Monique', 52, 'noi', 'AUS', NULL, 2023),
(146, 'UMANSKA Svitlana', 52, 'noi', 'UKR', NULL, 2023),
(147, 'HAMZA Stela Roxana', 52, 'noi', 'ROU', NULL, 2023),
(148, 'JOKIAHO Emma', 52, 'noi', 'FIN', NULL, 2023),
(149, 'DR. BUSA Gabriella', 52, 'noi', 'HUN', NULL, 2023),
(150, ' KONSTATOPOULOU Antonia', 54, 'noi', 'AUS', NULL, 2023),
(151, 'JUTAMAS Jitpong', 54, 'noi', 'THA', NULL, 2023),
(152, 'MILAGROS ROSARIO milagros', 54, 'noi', 'ARG', NULL, 2023),
(153, ' NASSER Zeina', 54, 'noi', 'GER', NULL, 2023),
(154, 'ECHEGARAY Tiana', 54, 'noi', 'AUS', NULL, 2023),
(155, 'LAKOTÁR Hanna', 54, 'noi', 'HUN', NULL, 2023),
(156, 'ROGALINSKA Wiktoria', 54, 'noi', 'POL', NULL, 2023),
(157, 'KOVALCHUK Anastasiia', 54, 'noi', 'UKR', NULL, 2023),
(158, 'DUDEK Beáta', 54, 'noi', 'HUN', NULL, 2023),
(159, ' DRABIK Sandra', 54, 'noi', 'POL', NULL, 2023),
(160, ' ROBLES Sofia Micaela', 54, 'noi', 'ARG', NULL, 2023),
(161, 'CACIC Nikolina', 54, 'noi', 'CRO', NULL, 2023),
(162, 'TAS Canan', 57, 'noi', 'GER', NULL, 2023),
(163, ' BASANETS Marianna', 57, 'noi', 'UKR', NULL, 2023),
(164, 'KRUK Sandra', 57, 'noi', 'POL', NULL, 2023),
(165, ' SZŰCS Szabina', 57, 'noi', 'HUN', NULL, 2023),
(166, 'NAGY Evelin', 57, 'noi', 'HUN', NULL, 2023),
(167, 'RAHIMI Tina', 57, 'noi', 'AUS', NULL, 2023),
(168, ' MILISIC Ana Maria', 57, 'noi', 'SUI', NULL, 2023),
(169, ' MAKINEN Teresa', 57, 'noi', 'FIN', NULL, 2023),
(170, ' BOLANCA Dea', 57, 'noi', 'CRO', NULL, 2023),
(171, 'HOLMES Olivia', 57, 'noi', 'ENG', NULL, 2023),
(172, 'SULTANKYZY Saniya', 57, 'noi', 'KAZ', NULL, 2023),
(173, ' ARI Asya', 57, 'noi', 'GER', NULL, 2023),
(174, ' KUBALOVA Tamara', 60, 'noi', 'SVK', NULL, 2023),
(175, 'ALEXIUSSON Agnes', 60, 'noi', 'SWE', NULL, 2023),
(176, 'BÜCHNER Lena', 60, 'noi', 'GER', NULL, 2023),
(177, 'CIFRA Diána', 60, 'noi', 'HUN', NULL, 2023),
(178, 'KOCIOLEK Zaklina', 60, 'noi', 'POL', NULL, 2023),
(179, 'KISS Edina', 60, 'noi', 'HUN', NULL, 2023),
(180, 'SZEREMETA Julia', 60, 'noi', 'POL', NULL, 2023),
(181, 'VOLOSSENKO Rimma', 60, 'noi', 'KAZ', NULL, 2023),
(182, ' MEZŐVÁRI Kinga', 60, 'noi', 'HUN', NULL, 2023),
(183, 'GENGLBANER Felicitas', 60, 'noi', 'GER', NULL, 2023),
(184, ' JEDINAKOVA Miroslava', 60, 'noi', 'SVK', NULL, 2023),
(185, 'STAROVOITOVA Ana', 60, 'noi', 'LTU', NULL, 2023),
(186, 'SCHANLON Danielle', 60, 'noi', 'AUS', NULL, 2023),
(187, 'OKHREI Hanna', 60, 'noi', 'UKR', NULL, 2023),
(188, 'KORETS Veronika', 60, 'noi', 'UKR', NULL, 2023),
(189, 'SZABÓ Petra', 60, 'noi', 'HUN', NULL, 2023),
(190, 'SAJNÓG Anna', 63, 'noi', 'POL', NULL, 2023),
(191, 'ROBINSON Hannah', 63, 'noi', 'ENG', NULL, 2023),
(192, 'BUDAI Vivien', 63, 'noi', 'HUN', NULL, 2023),
(193, 'YESSENKELDI Laura', 63, 'noi', 'KAZ', NULL, 2023),
(194, 'BOVA Mariia', 63, 'noi', 'UKR', NULL, 2023),
(195, 'TÍMÁR Boglárka', 63, 'noi', 'HUN', NULL, 2023),
(196, 'BOGDANOVA Natalya', 66, 'noi', 'KAZ', NULL, 2023),
(197, 'JANJAEM Suwannapheng', 66, 'noi', 'THA', NULL, 2023),
(198, 'DR. GYŐRFI Anna', 66, 'noi', 'HUN', NULL, 2023),
(199, 'WILLIAMSON Marissa', 66, 'noi', 'AUS', NULL, 2023),
(200, ' NIKOLOVSKI Anastasiia', 66, 'noi', 'SRB', NULL, 2023),
(201, 'HÁMORI Luca', 66, 'noi', 'HUN', NULL, 2023),
(202, 'RYGIELSKA Aneta', 66, 'noi', 'POL', NULL, 2023),
(203, 'HOLLÓSI Jázmin', 66, 'noi', 'HUN', NULL, 2023),
(204, 'LUKAJIC Anastasija', 66, 'noi', 'AUT', NULL, 2023),
(205, 'MÜLLER Leonie', 66, 'noi', 'GER', NULL, 2023),
(206, 'MERINOVA Nataliia', 66, 'noi', 'UKR', NULL, 2023),
(207, 'SHAKIMOVA Dariga', 66, 'noi', 'KAZ', NULL, 2023),
(208, 'ASKAR Balzhan', 70, 'noi', 'KAZ', NULL, 2023),
(209, 'NGAMBA Cindy', 70, 'noi', 'ENG', NULL, 2023),
(210, 'GAJIC Nikolina', 70, 'noi', 'SRB', NULL, 2023),
(211, 'LAKOS Regina', 70, 'noi', 'HUN', NULL, 2023),
(212, 'PEREZ Lucia Noelia', 70, 'noi', 'ARG', NULL, 2023),
(213, 'BAYAZITOVA Anastassiya', 75, 'noi', 'KAz', NULL, 2023),
(214, 'TOBOREK Olivia', 75, 'noi', 'POL', NULL, 2023),
(215, 'WÓJCIK Elzbieta', 75, 'noi', 'POL', NULL, 2023),
(216, 'NAGY Tímea', 75, 'noi', 'HUN', NULL, 2023),
(217, 'MARCINKOWSKA Barbara', 75, 'noi', 'POL', NULL, 2023),
(218, 'CHERNOKOLENKO Anastasiia', 75, 'noi', 'UKR', NULL, 2023),
(219, 'PARKER Caitlin', 75, 'noi', 'AUS', NULL, 2023),
(220, ' MICHEL Davina', 75, 'noi', 'FRA', NULL, 2023),
(221, 'PERGOLITI Lekeisha', 75, 'noi', 'AUS', NULL, 2023),
(222, 'BAISON Manikon', 75, 'noi', 'THA', NULL, 2023),
(223, 'SCHÖNBERGER Irina', 75, 'noi', 'GER', NULL, 2023),
(224, 'ZHARASKYZY Zhibek', 75, 'noi', 'KAZ', NULL, 2023),
(225, 'KRYSYNK Olesia', 81, 'noi', 'UKR', NULL, 2023),
(226, 'BOROS Petra', 81, 'noi', 'HUN', NULL, 2023),
(227, 'LESINKYTE Iveta', 81, 'noi', 'LTU', NULL, 2023),
(228, 'FREENTREE Emma-Sue', 81, 'noi', 'AUS', NULL, 2023),
(229, 'AXENOVA Valeriya', 82, 'noi', 'KAZ', NULL, 2023),
(230, 'HOFFMANN Réka', 82, 'noi', 'HUN', NULL, 2023),
(231, 'KACZMARSKA Agata', 82, 'noi', 'POL', NULL, 2023),
(232, 'ISLAMBEKOVA Dina', 82, 'noi', 'KAZ', NULL, 2023),
(233, 'LOVCHYNSKA Mariia', 82, 'noi', 'UKR', NULL, 2023),
(234, 'AMANKUL Uulu Asybek', 48, 'ffi', 'KGZ', NULL, 2023),
(235, 'TYSHKOVETS Andriy', 48, 'ffi', 'UKR', NULL, 2023),
(236, 'TURAL Sariyev', 48, 'ffi', 'AZE', NULL, 2023),
(237, 'BEKMURODOV Doniyor', 48, 'ffi', 'UZB', NULL, 2023),
(238, 'ZHUSSPOV Temirats', 48, 'ffi', 'KAZ', NULL, 2023),
(239, 'GOMAN Christopher', 51, 'ffi', 'GER', NULL, 2023),
(240, 'ALIJONOV Ziyovuddin', 51, 'ffi', 'UZB', NULL, 2023),
(241, 'ABDIKADYR Damir', 51, 'ffi', 'KAz', NULL, 2023),
(242, 'HASAN Malikov', 51, 'ffi', 'AZE', NULL, 2023),
(243, 'DIUSHEBAEV Nurzhigit', 51, 'ffi', 'KGZ', NULL, 2023),
(244, 'IBRAHIM Salah', 51, 'ffi', 'GER', NULL, 2023),
(245, 'MEHMOOD Hamza', 51, 'ffi', 'ENG', NULL, 2023),
(246, 'BERNÁTH Attila', 51, 'ffi', 'HUN', NULL, 2023),
(247, 'ZAMOTAYEV Dmytro', 51, 'ffi', 'UKR', NULL, 2023),
(248, 'QUIROGA Ramon Nicanor', 51, 'ffi', 'ARG', NULL, 2023),
(249, 'PANDAY Sandip', 51, 'ffi', 'FIN', NULL, 2023),
(250, 'SZAKA István', 54, 'ffi', 'HUN', NULL, 2023),
(251, 'KOVALENKO Pavlo', 54, 'ffi', 'UKR', NULL, 2023),
(252, 'HAFIZ Miraz', 54, 'ffi', 'SWE', NULL, 2023),
(253, 'JURAEV Oybek', 54, 'ffi', 'UZB', NULL, 2023),
(254, 'MOLDASHEV Daulet', 54, 'ffi', 'KAZ', NULL, 2023),
(255, 'NORTOJIEV Khujanazar', 54, 'ffi', 'UZB', NULL, 2023),
(256, 'SHEMEZA Emmanuel', 54, 'ffi', 'AUS', NULL, 2023),
(257, 'KATONA Tibor', 54, 'ffi', 'SVK', NULL, 2023),
(258, 'NIJAT Huseynov', 54, 'ffi', 'AZE', NULL, 2023),
(259, 'BERNÁTH László', 54, 'ffi', 'HUN', NULL, 2023),
(260, 'VIRBÁN Gábor', 54, 'ffi', 'HUN', NULL, 2023),
(261, 'ABDURAIMER Aider', 57, 'ffi', 'UKR', NULL, 2023),
(262, 'ADAMS Billy', 57, 'ffi', 'ENG', NULL, 2023),
(263, 'AZRAK Babirov', 57, 'ffi', 'AZE', NULL, 2023),
(264, 'TEMIRZHANOV Serik', 57, 'ffi', 'KAZ', NULL, 2023),
(265, 'KHOLMURODOV Samandar', 57, 'ffi', 'UZB', NULL, 2023),
(266, 'IWANOW Jaroslaw', 57, 'ffi', 'POL', NULL, 2023),
(267, 'HANSEN Ouisanou', 57, 'ffi', 'GER', NULL, 2023),
(268, 'VERES Roland', 57, 'ffi', 'HUN', NULL, 2023),
(269, 'BONDARCHUK Taras', 57, 'ffi', 'UKR', NULL, 2023),
(270, 'SENIOR Charlie', 57, 'ffi', 'AUS', NULL, 2023),
(271, 'CHULYACHEYER Oleg', 57, 'ffi', 'UKR', NULL, 2023),
(272, 'SUKTHET Sarawut', 57, 'ffi', 'THA', NULL, 2023),
(273, 'BUNDOVICS István', 57, 'ffi', 'HUN', NULL, 2023),
(274, 'KOVÁCS Kruzitó', 57, 'ffi', 'HUN', NULL, 2023),
(275, 'SEIDEKMATOV Sanzha', 57, 'ffi', 'KGZ', NULL, 2023),
(276, 'VASILE Usturoi', 57, 'ffi', 'HUN', NULL, 2023),
(277, 'ASADOV Bakhtiyor', 57, 'ffi', 'UZB', NULL, 2023),
(278, 'SEIITBEK Uulu Manurbek', 60, 'ffi', 'KGZ', NULL, 2023),
(279, 'TAGAYBAEV Aydos', 60, 'ffi', 'UZB', NULL, 2023),
(280, 'HADI Hadrous', 60, 'ffi', 'SWE', NULL, 2023),
(281, 'ZZIWA Fred', 60, 'ffi', 'AUS', NULL, 2023),
(282, 'BALOG Márk', 60, 'ffi', 'HUN', NULL, 2023),
(283, 'RÓMAI Ruben', 60, 'ffi', 'HUN', NULL, 2023),
(284, 'TADEJ Cemoga', 60, 'ffi', 'SLO', NULL, 2023),
(285, 'TÓTH-SZABÓ Vilmos', 60, 'ffi', 'HUN', NULL, 2023),
(286, 'MELLA Péter', 60, 'ffi', 'HUN', NULL, 2023),
(287, 'TOLTAYEV Samatali', 60, 'ffi', 'KAZ', NULL, 2023),
(288, 'BADER Ilia', 60, 'ffi', 'POL', NULL, 2023),
(289, 'LICUL Patrik', 60, 'ffi', 'CRO', NULL, 2023),
(290, ' LETAIEF Seifeddine', 60, 'ffi', 'SUI', NULL, 2023),
(291, 'YILDIRIM Murat', 60, 'ffi', 'GER', NULL, 2023),
(292, 'DZIAZKO Mykhailo', 60, 'ffi', 'UKR', NULL, 2023),
(293, 'BEKTENOV Ryspek', 63.5, 'ffi', 'KGZ', NULL, 2023),
(294, 'PIDNUCH Khunatip', 63.5, 'ffi', 'THA', NULL, 2023),
(295, 'TOLTAYEV Sanatal', 63.5, 'ffi', 'KAZ', NULL, 2023),
(296, 'ARFA Yassine', 63.5, 'ffi', 'BEL', NULL, 2023),
(297, 'KHARTSYZ Yaroslav', 63.5, 'ffi', 'UKR', NULL, 2023),
(298, 'DAWIEC Michal', 63.5, 'ffi', 'POL', NULL, 2023),
(299, 'JALAL Gurbanov', 63.5, 'ffi', 'AZE', NULL, 2023),
(300, 'Natalia Kuczewska', 50, 'noi', 'POL', NULL, 2024),
(301, 'GKEVORGKIAN David', 63.5, 'ffi', 'GER', NULL, 2023),
(302, 'ZAMORYLO Danyil', 63.5, 'ffi', 'UKR', NULL, 2023),
(303, 'TYERS Joseph', 63.5, 'ffi', 'ENG', NULL, 2023),
(304, ' KOVÁCS Richárd', 63.5, 'ffi', 'HUN', NULL, 2023),
(305, 'LAVRENOVAS Andriejus', 63.5, 'ffi', 'LTU', NULL, 2023),
(306, 'AZZEDINE Mehdaoui', 63.5, 'ffi', 'BEL', NULL, 2023),
(307, 'JELACIC Marin', 63.5, 'ffi', 'CRO', NULL, 2023),
(308, 'ORBÁN Adrián', 63.5, 'ffi', 'HUN', NULL, 2023),
(309, 'HANSEN Assan', 63.5, 'ffi', 'GER', NULL, 2023),
(310, 'Mc CLERY Max', 63.5, 'ffi', 'AUS', NULL, 2023),
(311, 'TALAIBEKOV Zhakshylyk', 67, 'ffi', 'KGZ', NULL, 2023),
(312, 'ALAGIC Deni', 67, 'ffi', 'CRO', NULL, 2023),
(313, 'MYKHALUSHKO Yaroslav', 67, 'ffi', 'UKR', NULL, 2023),
(314, 'CSÖNGE Botond', 67, 'ffi', 'HUN', NULL, 2023),
(315, 'NEJC Petric', 67, 'ffi', 'SLO', NULL, 2023),
(316, 'BUZA Rafael', 67, 'ffi', 'HUN', NULL, 2023),
(317, 'MEIER Félix', 67, 'ffi', 'SUI', NULL, 2023),
(318, 'DANYI Dániel', 67, 'ffi', 'HUN', NULL, 2023),
(319, 'BEKBAUOV Dulat', 67, 'ffi', 'KAZ', NULL, 2023),
(320, 'CHABYAN Arsen', 67, 'ffi', 'AUT', NULL, 2023),
(321, 'MAFAUAD Joel Marcos', 67, 'ffi', 'ARG', NULL, 2023),
(322, 'GARSIDE Harry', 67, 'ffi', 'AUS', NULL, 2023),
(323, 'BEKMURODOV Bekzod', 67, 'ffi', 'UZB', NULL, 2023),
(324, 'SOQUESSA Kelvin', 67, 'ffi', 'CZE', NULL, 2023),
(325, 'FODOR Milán', 67, 'ffi', 'HUN', NULL, 2023),
(326, 'ZAKHARIE Vyurii', 71, 'ffi', 'UKR', NULL, 2023),
(327, 'JANKÓ Krisztián', 71, 'ffi', 'HUN', NULL, 2023),
(328, 'HORVATH Ladislac', 71, 'ffi', 'SVK', NULL, 2023),
(329, 'DURKACZ Damian', 71, 'ffi', 'POL', NULL, 2023),
(330, 'KROTTER Deniel', 71, 'ffi', 'GER', NULL, 2023),
(331, 'YEASUNGNOEN Peerapat', 71, 'ffi', 'THA', NULL, 2023),
(332, 'TURGONBOEV Komronbek', 71, 'ffi', 'UZB', NULL, 2023),
(333, 'BORG Mark', 71, 'ffi', 'AUS', NULL, 2023),
(334, 'DAVEY Shannan', 71, 'ffi', 'AUS', NULL, 2023),
(335, 'ZHAKPEKOV Yermakhan', 71, 'ffi', 'KAZ', NULL, 2023),
(336, 'RASHID Hasanov', 71, 'ffi', 'AZE', NULL, 2023),
(337, 'ABDYZHAPAR Uulu Syrgak', 71, 'ffi', 'KGZ', NULL, 2023),
(338, 'SCHACHIDOV Magomed', 71, 'ffi', 'GER', NULL, 2023),
(339, 'AVDIC Esad', 71, 'ffi', 'AUT', NULL, 2023),
(340, 'GERZSENYI István', 71, 'ffi', 'HUN', NULL, 2023),
(341, 'PYLYPEC Maksim', 71, 'ffi', 'UKR', NULL, 2023),
(342, 'EMMANUEL Rytersson', 71, 'ffi', 'SWE', NULL, 2023),
(343, 'ANTHONY Kakukila', 71, 'ffi', 'BEL', NULL, 2023),
(344, 'KNEZEVIC Petar Kresimir', 71, 'ffi', 'CRO', NULL, 2023),
(345, 'MOLODAN Maksym', 71, 'ffi', 'UKR', NULL, 2023),
(346, 'PETERS Callum', 75, 'ffi', 'AUS', NULL, 2023),
(347, 'TROFIMCUK Aleksandr', 75, 'ffi', 'LTU', NULL, 2023),
(348, 'TAKIZHANOV Ayatulla', 75, 'ffi', 'KAZ', NULL, 2023),
(349, 'DAMIRDIN Uulu Daniiar', 75, 'ffi', 'KGZ', NULL, 2023),
(350, 'HADJIT Noa', 75, 'ffi', 'BEL', NULL, 2023),
(351, 'PAPAKIN Ivan', 75, 'ffi', 'UKR', NULL, 2023),
(352, 'CSERVENKA Róbert', 75, 'ffi', 'HUN', NULL, 2023),
(353, 'BARTL Milos', 75, 'ffi', 'CZE', NULL, 2023),
(354, 'OUSSAMA Berkouat', 75, 'ffi', 'BEL', NULL, 2023),
(355, 'DEBANIC Gabrijel', 75, 'ffi', 'CRO', NULL, 2023),
(356, 'AKYLOV Pylyp', 75, 'ffi', 'HUN', NULL, 2023),
(357, 'MOLINARO Dominic', 75, 'ffi', 'AUS', NULL, 2023),
(358, 'BEKZHIGIT Uulu Omurbek', 80, 'ffi', 'KGZ', NULL, 2023),
(359, 'SAMUEL Hickey', 80, 'ffi', 'SCO', NULL, 2023),
(360, 'KAZAKEVICIUS Arnas', 80, 'ffi', 'LTU', NULL, 2023),
(361, 'DERDA Kacper', 80, 'ffi', 'POL', NULL, 2023),
(362, 'MAJD Alsapadi', 80, 'ffi', 'SWE', NULL, 2023),
(363, 'SCHUMANN Kevin-Boakyen', 80, 'ffi', 'GER', NULL, 2023),
(364, 'KHABIBULLAEV Turabek', 80, 'ffi', 'UZB', NULL, 2023),
(365, 'MEINL Marcel', 80, 'ffi', 'AUT', NULL, 2023),
(366, 'EIS Ben', 80, 'ffi', 'GER', NULL, 2023),
(367, 'KOVÁCS Pál', 80, 'ffi', 'HUN', NULL, 2023),
(368, 'MATONDO Manuel', 80, 'ffi', 'SUI', NULL, 2023),
(369, 'KHYZHNIAK Oleksandr', 80, 'ffi', 'UKR', NULL, 2023),
(370, 'LIORANCAS Robertas', 80, 'ffi', 'LTU', NULL, 2023),
(371, 'BURES Tomas', 80, 'ffi', 'CZE', NULL, 2023),
(372, 'ORALBAY Nurbek', 80, 'ffi', 'KAZ', NULL, 2023),
(373, 'CROTTY George', 80, 'ffi', 'ENG', NULL, 2023),
(374, 'VÁNCZKU Attila', 80, 'ffi', 'HUN', NULL, 2023),
(375, 'NYSTEDT Nikita', 80, 'ffi', 'FIN', NULL, 2023),
(376, 'BOYMATOV Rakhmatullo', 80, 'ffi', 'UZB', NULL, 2023),
(377, 'PLANTIC Damir', 80, 'ffi', 'CRO', NULL, 2023),
(378, 'KREKÓ István', 80, 'ffi', 'HUN', NULL, 2023),
(379, ' VLADIMIR Mironcikov', 80, 'ffi', 'SRB', NULL, 2023),
(380, 'KAMRAN Shakhsuvarly', 80, 'ffi', 'AZE', NULL, 2023),
(381, 'SHIERLE Silvio', 80, 'ffi', 'GER', NULL, 2023),
(382, ' RUSTON Kirra', 80, 'ffi', 'AUS', NULL, 2023),
(383, 'DADAEV Delil', 80, 'ffi', 'GER', NULL, 2023),
(384, 'KUSSAINOV Shaimurat', 86, 'ffi', 'KAZ', NULL, 2023),
(385, 'McALLISTER Billy', 86, 'ffi', 'AUS', NULL, 2023),
(386, 'LEGENASSE Idris', 86, 'ffi', 'BEL', NULL, 2023),
(387, 'DUDENAS Arunas', 86, 'ffi', 'LTU', NULL, 2023),
(388, 'ADYLBEK Uulu Erkin', 86, 'ffi', 'KGZ', NULL, 2023),
(389, 'BERI Kevin', 86, 'ffi', 'HUN', NULL, 2023),
(390, 'NIEDZWIECKI Tomasz', 86, 'ffi', 'POL', NULL, 2023),
(391, 'TOLMACHOV Bogdan', 86, 'ffi', 'UKR', NULL, 2023),
(392, 'DJALOLOV Samandar', 86, 'ffi', 'UZB', NULL, 2023),
(393, 'HORSKOV Sernii', 92, 'ffi', 'UKR', NULL, 2023),
(394, 'HRIVNÁK Pavol', 92, 'ffi', 'CZE', NULL, 2023),
(395, 'ELDAR Guliev', 92, 'ffi', 'AZE', NULL, 2023),
(396, 'PRATLJACIC Marko', 92, 'ffi', 'CRO', NULL, 2023),
(397, 'URBONAVICIUS Simonas', 92, 'ffi', 'LTU', NULL, 2023),
(398, 'ORALBAY Aibek', 92, 'ffi', 'KAZ', NULL, 2023),
(399, 'OKAFOR Alexander', 92, 'ffi', 'GER', NULL, 2023),
(400, 'GENTI Morina', 92, 'ffi', 'SWE', NULL, 2023),
(401, 'VOISNAROVIC Darius', 92, 'ffi', 'LTU', NULL, 2023),
(402, 'TURSUNOV Sanjar', 92, 'ffi', 'UZB', NULL, 2023),
(403, 'BARACSI Dániel', 92, 'ffi', 'HUN', NULL, 2023),
(404, 'ABDULJABBAR Ammar', 92, 'ffi', 'GER', NULL, 2023),
(405, 'BROWN Patrick', 92, 'ffi', 'ENG', NULL, 2023),
(406, 'SAIDOULAEV Khamzat', 92, 'ffi', 'AUT', NULL, 2023),
(407, 'ENYI Ikenna', 92, 'ffi', 'AUS', NULL, 2023),
(408, 'KARSTAN Arkadii', 92, 'ffi', 'UKR', NULL, 2023),
(409, 'OGBO Victor', 93, 'ffi', 'ENG', NULL, 2023),
(410, 'ABOUDOU Moindze Djamili', 93, 'ffi', 'FRA', NULL, 2023),
(411, 'PINC Martin', 93, 'ffi', 'CZE', NULL, 2023),
(412, 'TEREMOANA Teremoana', 93, 'ffi', 'AUS', NULL, 2023),
(413, 'BANIULIS Algirdas', 93, 'ffi', 'LTU', NULL, 2023),
(414, 'MILUN Marko', 93, 'ffi', 'CRO', NULL, 2023),
(415, 'LOVCHYNSKYI Dmytro', 93, 'ffi', 'UKR', NULL, 2023),
(416, 'STOIANEHER Kyrylo', 93, 'ffi', 'UKR', NULL, 2023),
(417, 'FELFÖLDI László', 93, 'ffi', 'HUN', NULL, 2023),
(418, 'SAFARYAN Oskar', 93, 'ffi', 'POL', NULL, 2023),
(419, 'JAAZEVICIUS Jonas', 93, 'ffi', 'LTU', NULL, 2023),
(420, 'PUTILOV Nikita', 93, 'ffi', 'GER', NULL, 2023),
(421, 'LAKATOS Kevin', 93, 'ffi', 'HUN', NULL, 2023),
(422, 'TOIBAY Damir', 93, 'ffi', 'KAZ', NULL, 2023),
(423, 'VAZ Maxime', 93, 'ffi', 'FRA', NULL, 2023);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `eredmenyek23`
--
ALTER TABLE `eredmenyek23`
  ADD PRIMARY KEY (`eredmenyek23kid`);

--
-- A tábla indexei `eredmények`
--
ALTER TABLE `eredmények`
  ADD PRIMARY KEY (`eredmenyekid`);

--
-- A tábla indexei `merkozesek`
--
ALTER TABLE `merkozesek`
  ADD PRIMARY KEY (`merkozesekid`),
  ADD KEY `vnevid1` (`vnevid1`,`vnevid2`),
  ADD KEY `vnevid2` (`vnevid2`);

--
-- A tábla indexei `merkozesek23`
--
ALTER TABLE `merkozesek23`
  ADD PRIMARY KEY (`merkozes23id`),
  ADD KEY `vnev23id1` (`vnev23id1`,`vnev23id2`),
  ADD KEY `vnev23id2` (`vnev23id2`);

--
-- A tábla indexei `versenyzok`
--
ALTER TABLE `versenyzok`
  ADD PRIMARY KEY (`versenyzoid`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `eredmenyek23`
--
ALTER TABLE `eredmenyek23`
  ADD CONSTRAINT `eredmenyek23_ibfk_1` FOREIGN KEY (`eredmenyek23kid`) REFERENCES `merkozesek23` (`merkozes23id`);

--
-- Megkötések a táblához `eredmények`
--
ALTER TABLE `eredmények`
  ADD CONSTRAINT `eredmények_ibfk_1` FOREIGN KEY (`eredmenyekid`) REFERENCES `merkozesek` (`merkozesekid`);

--
-- Megkötések a táblához `merkozesek`
--
ALTER TABLE `merkozesek`
  ADD CONSTRAINT `merkozesek_ibfk_1` FOREIGN KEY (`vnevid1`) REFERENCES `versenyzok` (`versenyzoid`),
  ADD CONSTRAINT `merkozesek_ibfk_2` FOREIGN KEY (`vnevid2`) REFERENCES `versenyzok` (`versenyzoid`);

--
-- Megkötések a táblához `merkozesek23`
--
ALTER TABLE `merkozesek23`
  ADD CONSTRAINT `merkozesek23_ibfk_1` FOREIGN KEY (`vnev23id1`) REFERENCES `versenyzok` (`versenyzoid`),
  ADD CONSTRAINT `merkozesek23_ibfk_2` FOREIGN KEY (`vnev23id2`) REFERENCES `versenyzok` (`versenyzoid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
