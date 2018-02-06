-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Lut 2018, 21:56
-- Wersja serwera: 10.0.32-MariaDB-0+deb8u1
-- Wersja PHP: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pablodx`
--
CREATE DATABASE IF NOT EXISTS `pablodx` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `pablodx`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `armour`
--

CREATE TABLE `armour` (
  `id` int(11) NOT NULL,
  `armour_id` int(11) NOT NULL,
  `pp` varchar(3) COLLATE utf8_polish_ci NOT NULL,
  `placement` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `armour`
--

INSERT INTO `armour` (`id`, `armour_id`, `pp`, `placement`) VALUES
(1, 30, '1', 2),
(2, 31, '0/1', 2),
(3, 32, '0/1', 3),
(4, 32, '0/1', 5),
(5, 33, '1', 3),
(6, 33, '1', 5),
(7, 34, '0/1', 3),
(8, 34, '1', 4),
(9, 34, '1', 5),
(10, 35, '1', 3),
(11, 35, '1', 5),
(12, 36, '1', 3),
(13, 36, '1', 4),
(14, 37, '1', 3),
(15, 37, '1', 4),
(16, 38, '1', 5),
(17, 39, '1', 4),
(18, 40, '1', 2),
(19, 41, '1', 2),
(20, 42, '1', 3),
(21, 43, '1', 3),
(22, 44, '1', 5),
(23, 45, '1', 4),
(24, 47, '1', 1),
(25, 48, '1', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `armour_placement`
--

CREATE TABLE `armour_placement` (
  `id` int(11) NOT NULL,
  `placement_name` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `armour_placement`
--

INSERT INTO `armour_placement` (`id`, `placement_name`) VALUES
(1, 'Ciało'),
(2, 'Głowa'),
(3, 'Korpus'),
(4, 'Ręce'),
(5, 'Nogi');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `availability`
--

CREATE TABLE `availability` (
  `lp` int(1) UNSIGNED NOT NULL,
  `avail` varchar(15) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `availability`
--

INSERT INTO `availability` (`lp`, `avail`) VALUES
(1, 'znikoma'),
(2, 'niewielka'),
(3, 'mała'),
(4, 'przeciętna'),
(5, 'duża'),
(6, 'powszechna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `basic_inv`
--

CREATE TABLE `basic_inv` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `classID` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `options` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `basic_inv`
--

INSERT INTO `basic_inv` (`id`, `inventory_id`, `classID`, `amount`, `options`) VALUES
(1, 216, 1, 1, 0),
(2, 215, 1, 1, 0),
(3, 15, 1, 1, 0),
(4, 214, 1, 1, 0),
(5, 127, 1, 1, 0),
(6, 119, 1, 1, 0),
(7, 120, 1, 1, 0),
(8, 74, 1, 1, 0),
(9, 40, 1, 1, 0),
(10, 110, 1, 1, 0),
(11, 215, 2, 1, 0),
(12, 15, 2, 1, 0),
(13, 20, 2, 1, 0),
(14, 127, 2, 1, 0),
(15, 119, 2, 1, 0),
(16, 120, 2, 2, 0),
(17, 121, 2, 1, 0),
(18, 108, 2, 1, 0),
(19, 74, 2, 1, 0),
(20, 110, 2, 1, 0),
(21, 24, 1, 1, 0),
(22, 24, 2, 1, 0),
(23, 215, 3, 1, 0),
(24, 74, 3, 1, 0),
(25, 24, 3, 1, 0),
(26, 110, 3, 1, 0),
(27, 215, 4, 1, 0),
(28, 110, 4, 1, 0),
(29, 74, 4, 1, 0),
(30, 61, 1, 1, 1),
(31, 75, 1, 1, 1),
(32, 274, 1, 1, 1),
(33, 61, 2, 1, 1),
(34, 75, 2, 1, 1),
(35, 274, 2, 1, 1),
(36, 15, 3, 1, 1),
(37, 217, 3, 1, 1),
(38, 13, 4, 1, 1),
(39, 218, 4, 1, 1),
(40, 109, 1, 1, 1),
(41, 112, 1, 1, 1),
(42, 114, 1, 1, 1),
(43, 109, 2, 1, 1),
(44, 112, 2, 1, 1),
(45, 56, 5, 1, 0),
(46, 55, 5, 1, 0),
(47, 102, 5, 1, 0),
(48, 41, 5, 1, 0),
(49, 193, 5, 1, 0),
(50, 71, 6, 1, 0),
(51, 50, 6, 1, 0),
(52, 75, 6, 1, 0),
(53, 62, 6, 1, 0),
(54, 76, 6, 1, 0),
(55, 214, 6, 1, 0),
(56, 217, 6, 1, 0),
(57, 167, 6, 1, 0),
(58, 169, 6, 1, 0),
(59, 165, 6, 1, 0),
(60, 219, 6, 1, 0),
(61, 175, 6, 1, 0),
(62, 261, 6, 1, 0),
(63, 30, 6, 1, 0),
(64, 38, 6, 1, 0),
(65, 40, 6, 1, 0),
(66, 190, 6, 1, 0),
(75, 30, 7, 1, 0),
(74, 50, 7, 1, 0),
(73, 52, 7, 1, 0),
(76, 34, 7, 1, 0),
(77, 193, 7, 1, 0),
(78, 49, 8, 1, 0),
(79, 30, 8, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `casts_names`
--

CREATE TABLE `casts_names` (
  `id` int(11) NOT NULL,
  `cast_name` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `casts_names`
--

INSERT INTO `casts_names` (`id`, `cast_name`) VALUES
(1, 'Bagienne ogniki'),
(2, 'Dar języków'),
(3, 'Dźwięki'),
(4, 'Magiczne zamknięcie'),
(5, 'Magiczny alarm'),
(6, 'Magiczny płomień'),
(7, 'Otwarcie'),
(8, 'Płonące światło'),
(9, 'Przekleństwo'),
(10, 'Strefa ciepła'),
(11, 'Strefa ciszy'),
(12, 'Strefa zimna'),
(13, 'Tworzenie małej istoty'),
(14, 'Uśpienie'),
(15, 'Usunięcie przekleństwa'),
(16, 'Wzmocnienie drzwi'),
(17, 'Zabezpieczenie przed deszczem'),
(18, 'Aura oporu'),
(19, 'Kradzież rozumu'),
(20, 'Leczenie lekkich zranień'),
(21, 'Lot'),
(22, 'Odporność na trucizny'),
(23, 'Ognista kula'),
(24, 'Podmuch wiatru'),
(25, 'Ręka-młot'),
(26, 'Siła walki'),
(27, 'Wywołanie niechęci'),
(28, 'Aura ochrony'),
(29, 'Mistyczna mgła'),
(30, 'Świetlisty piorun'),
(31, 'Powstrzymanie odwrotu'),
(32, 'Strefa sanktuarium'),
(33, 'Strefa wytrzymałości'),
(34, 'Uderzenie'),
(35, 'Wywołanie furii'),
(36, 'Wywołanie paniki'),
(37, 'Wzburzenie nienawiści'),
(38, 'Magiczny most'),
(39, 'Odporność na strzały'),
(40, 'Ożywienie miecza'),
(41, 'Przekazanie aury'),
(42, 'Przekleństwo przyciągania strzał'),
(43, 'Rozproszenie aury'),
(44, 'Wymuszenie ucieczki'),
(45, 'Wywołanie głupoty'),
(46, 'Wywołanie niestabilności'),
(47, 'Wzbudzenie strachu'),
(48, 'Aura nietyklaności'),
(49, 'Leczenie ciężkich ran'),
(50, 'Promień wybuchu'),
(51, 'Siła umysłu'),
(52, 'Unieruchomienie'),
(53, 'Zaklęcie broni'),
(54, 'Zmiana stron'),
(55, 'Odesłanie małego demona'),
(56, 'Spętanie demona'),
(57, 'Strefa demonicznej ochrony'),
(58, 'Wezwanie rumaka'),
(59, 'Wezwanie strażnika'),
(60, 'Powstrzymanie niestabilności demona'),
(61, 'Przyzwanie energii'),
(62, 'Przyzwanie małych demonów'),
(63, 'Strefa likwidacji demonów'),
(64, 'Wezwanie magicznego wsparcia'),
(65, 'Odesłanie demonicznej hordy'),
(66, 'Rozprzestrzenienie obłędu'),
(67, 'Wezwanie demonicznej hordy'),
(68, 'Wezwanie wielkiej potęgi'),
(69, 'Demoniczny portal'),
(70, 'Odesłanie wielkiego demona'),
(71, 'Przywołanie wielkiego demona'),
(72, 'Wezwanie ogromnej potęgi'),
(73, 'Chmura dymu'),
(74, 'Grad kamieni'),
(75, 'Magiczne światło'),
(76, 'Oddychanie pod wodą'),
(77, 'Oślepiający błysk'),
(78, 'Ręka ognia'),
(79, 'Spacer po wodzie'),
(80, 'Strefa ukrycia'),
(81, 'Gaszenie ognia'),
(82, 'Grzmot pioruna'),
(83, 'Odporność na ogień'),
(84, 'Przemieszczenie przedmiotu'),
(85, 'Rozniecenie ognia'),
(86, 'Rozstąpienie wód'),
(87, 'Uschnięcie roślin'),
(88, 'Wywołanie deszczu'),
(89, 'Burza pyłowa'),
(90, 'Eteryczna postać'),
(91, 'Kruszenie kamieni'),
(92, 'Morowe powietrze'),
(93, 'Odesłanie żywiołaka'),
(94, 'Ściana ognia'),
(95, 'Tworzenie lotnych piasków'),
(96, 'Zionięcie ogniem'),
(97, 'Odesłanie żywiołaków'),
(98, 'Ożywienie wody'),
(99, 'Przyzwanie roju'),
(100, 'Przyzwanie żywiołaka'),
(101, 'Tunel w skale'),
(102, 'Wezwanie hordy żywiołaków'),
(103, 'Żywopłot cierni'),
(104, 'Dezorientacja wroga'),
(105, 'Iluzja fantomu'),
(106, 'Osłona działalności'),
(107, 'Powielenie obrazu'),
(108, 'Przybranie iluzorycznego wyglądu'),
(109, 'Halucynacja'),
(110, 'Iluzoryczne budynki'),
(111, 'Iluzoryczne lasy'),
(112, 'Negacja ataku'),
(113, 'Rozproszenie iluzji'),
(114, 'Widmowy wygląd'),
(115, 'Dezorientacja'),
(116, 'Iluzja potężnego wyglądu'),
(117, 'Iluzoryczny wróg'),
(118, 'Zniknięcie'),
(119, 'Iluzja mroku'),
(120, 'Iluzoryczna armia'),
(121, 'Teleportacja'),
(122, 'Zniszczenie iluzji'),
(123, 'Przyzwanie szkieleta-bohatera'),
(124, 'Przyzwanie szkieletów'),
(125, 'Ręka śmierci'),
(126, 'Strefa życia'),
(127, 'Zniszczenie ożywieńca'),
(128, 'Kontrolowanie ożywieńców'),
(129, 'Ręka pyłu'),
(130, 'Rozproszenie kontroli'),
(131, 'Stabilizacja'),
(132, 'Wezwanie szkieleta-mniejszego herosa'),
(133, 'Ożywienie zmarłych'),
(134, 'Unicestwienie ożywieńców'),
(135, 'Wezwanie hordy szkieletów'),
(136, 'Życie po śmierci'),
(137, 'Całkowita kontrola'),
(138, 'Przekleństwo ożywienia'),
(139, 'Wezwanie szkieleta-większego herosa'),
(140, 'Wiatr śmierci'),
(141, 'Leczenie zwierząt'),
(142, 'Odtruwanie'),
(143, 'Odwszawianie'),
(144, 'Władanie zwierzętami'),
(145, 'Burza gradowa'),
(146, 'Splątanie cierni'),
(147, 'Władanie gigantycznymi zwierzętami'),
(148, 'Zmiana postaci'),
(149, 'Czerpanie mocy ziemi'),
(150, 'Ożywienie Drzewa'),
(151, 'Rozkład'),
(152, 'Strefa czystości'),
(153, 'Tworzenie bagna'),
(154, 'Tworzenie świętego gaju'),
(155, 'Burzenie ścian');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `casts_type`
--

CREATE TABLE `casts_type` (
  `id` int(1) NOT NULL,
  `type` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `casts_type`
--

INSERT INTO `casts_type` (`id`, `type`) VALUES
(1, 'Prosta'),
(2, 'Wojenna'),
(3, 'Demoniczna'),
(4, 'Elementalna'),
(5, 'Iluzyjna'),
(6, 'Nekromantyczna'),
(7, 'Druidyczna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `char_inv`
--

CREATE TABLE `char_inv` (
  `id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `inv` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `char_inv`
--

INSERT INTO `char_inv` (`id`, `char_id`, `inv`) VALUES
(1676, 51, 24),
(1675, 51, 110),
(1674, 51, 40),
(1673, 51, 74),
(1672, 51, 120),
(1671, 51, 119),
(1670, 51, 127),
(190, 4, 61),
(191, 4, 15),
(192, 4, 215),
(193, 4, 74),
(194, 4, 24),
(195, 4, 110),
(196, 4, 186),
(197, 4, 197),
(198, 4, 132),
(199, 4, 169),
(1669, 51, 214),
(1668, 51, 15),
(1667, 51, 215),
(1666, 51, 216),
(1655, 50, 74),
(1654, 50, 120),
(1653, 50, 119),
(1652, 50, 127),
(1651, 50, 214),
(1650, 50, 15),
(1649, 50, 215),
(1648, 50, 216),
(235, 6, 274),
(236, 6, 109),
(237, 6, 215),
(238, 6, 15),
(239, 6, 20),
(240, 6, 127),
(241, 6, 119),
(242, 6, 120),
(243, 6, 121),
(244, 6, 108),
(245, 6, 74),
(246, 6, 110),
(247, 6, 24),
(248, 6, 32),
(249, 6, 76),
(883, 27, 121),
(882, 27, 120),
(881, 27, 119),
(880, 27, 127),
(879, 27, 20),
(878, 27, 15),
(877, 27, 215),
(876, 27, 109),
(875, 27, 61),
(1200, 24, 110),
(1204, 24, 97),
(1203, 24, 82),
(1202, 24, 89),
(1201, 24, 24),
(1199, 24, 40),
(1198, 24, 74),
(1197, 24, 120),
(1196, 24, 119),
(1195, 24, 127),
(1194, 24, 214),
(1193, 24, 15),
(1665, 51, 114),
(1664, 51, 75),
(1663, 50, 109),
(1642, 3, 112),
(1641, 3, 61),
(1640, 3, 94),
(1639, 3, 55),
(1638, 3, 240),
(1637, 3, 24),
(1636, 3, 110),
(1635, 3, 74),
(1634, 3, 108),
(1633, 3, 121),
(1192, 24, 215),
(1191, 24, 216),
(1190, 24, 112),
(1189, 24, 75),
(1662, 50, 61),
(1661, 50, 47),
(1660, 50, 37),
(1659, 50, 54),
(884, 27, 108),
(885, 27, 74),
(886, 27, 110),
(887, 27, 24),
(888, 27, 82),
(889, 27, 36),
(890, 27, 169),
(891, 27, 72),
(1632, 3, 120),
(1631, 3, 119),
(1205, 24, 47),
(1206, 24, 32),
(1658, 50, 24),
(1657, 50, 110),
(1656, 50, 40),
(1630, 3, 127),
(1629, 3, 20),
(1628, 3, 15),
(1627, 3, 215);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `char_skills`
--

CREATE TABLE `char_skills` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `profId` int(2) DEFAULT NULL,
  `skill_id` int(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `char_skills`
--

INSERT INTO `char_skills` (`id`, `char_id`, `profId`, `skill_id`) VALUES
(1880, 51, 65, 108),
(1879, 51, 65, 23),
(1878, 51, 65, 28),
(1877, 51, 65, 87),
(1876, 51, 65, 33),
(1875, 51, 65, 26),
(1874, 51, 65, 9),
(71, 4, 3, 17),
(72, 4, 3, 113),
(73, 4, 3, 19),
(74, 4, 3, 62),
(75, 4, 3, 68),
(76, 4, 3, 80),
(77, 4, 3, 83),
(773, 27, 37, 94),
(772, 27, 37, 101),
(108, 6, 7, 2),
(109, 6, 7, 6),
(110, 6, 7, 10),
(111, 6, 7, 14),
(112, 6, 7, 18),
(113, 6, 7, 19),
(114, 6, 7, 74),
(115, 6, 7, 79),
(116, 6, 7, 80),
(117, 6, 7, 83),
(118, 6, 7, 101),
(119, 6, 7, 106),
(120, 6, 7, 124),
(121, 6, 7, 128),
(1126, 24, 2, 55),
(1125, 24, 2, 12),
(1124, 24, 2, 135),
(1123, 24, 2, 62),
(1122, 24, 2, 68),
(1121, 24, 2, 37),
(1120, 24, 2, 137),
(1119, 24, 2, 119),
(774, 27, 37, 18),
(775, 27, 37, 19),
(776, 27, 37, 148),
(777, 27, 37, 82),
(778, 27, 37, 12),
(779, 27, 37, 169),
(1885, 51, 65, 132),
(1884, 51, 65, 8),
(1883, 51, 65, 5),
(1882, 51, 65, 2),
(1881, 51, 65, 44),
(1873, 51, 65, 37),
(1872, 50, 44, 4),
(1871, 50, 44, 60),
(1870, 50, 44, 82),
(1869, 50, 44, 7),
(1868, 50, 44, 157),
(1867, 50, 44, 71),
(1866, 50, 44, 95),
(1865, 50, 44, 11),
(1864, 50, 44, 2),
(1850, 3, 46, 100),
(1849, 3, 46, 6),
(1848, 3, 46, 129),
(1847, 3, 46, 153),
(1846, 3, 46, 55),
(1845, 3, 46, 67),
(1844, 3, 46, 62),
(1843, 3, 46, 55),
(1842, 3, 46, 11),
(1841, 3, 46, 1),
(1118, 24, 2, 71),
(1117, 24, 2, 107),
(1116, 24, 2, 128),
(1115, 24, 2, 124),
(1114, 24, 2, 60),
(1113, 24, 2, 82),
(1112, 24, 2, 19),
(1111, 24, 2, 106),
(1127, 24, 2, 11),
(1128, 24, 2, 134);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `char_spells`
--

CREATE TABLE `char_spells` (
  `id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `spell` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=FIXED;

--
-- Zrzut danych tabeli `char_spells`
--

INSERT INTO `char_spells` (`id`, `char_id`, `spell`) VALUES
(25, 3, 17),
(24, 3, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `name` char(40) COLLATE utf8_polish_ci NOT NULL,
  `raceID` int(1) NOT NULL,
  `genderID` int(1) NOT NULL,
  `classID` int(1) NOT NULL,
  `natureID` int(1) NOT NULL,
  `age` int(3) NOT NULL,
  `amount` int(1) UNSIGNED NOT NULL,
  `height` int(3) NOT NULL,
  `weight` int(3) NOT NULL,
  `hair` char(20) COLLATE utf8_polish_ci NOT NULL,
  `eyes` char(15) COLLATE utf8_polish_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `sz` int(3) NOT NULL,
  `ww` int(3) NOT NULL,
  `us` int(3) NOT NULL,
  `s` int(3) NOT NULL,
  `wt` int(3) NOT NULL,
  `zw` int(3) NOT NULL,
  `i` int(3) NOT NULL,
  `a` int(3) NOT NULL,
  `zr` int(3) NOT NULL,
  `cp` int(3) NOT NULL,
  `intel` int(3) NOT NULL,
  `op` int(3) NOT NULL,
  `sw` int(3) NOT NULL,
  `ogd` int(3) NOT NULL,
  `add_zw` int(11) NOT NULL,
  `dp` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `family` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `origin` varchar(80) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `characters`
--

INSERT INTO `characters` (`id`, `userID`, `name`, `raceID`, `genderID`, `classID`, `natureID`, `age`, `amount`, `height`, `weight`, `hair`, `eyes`, `description`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `i`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`, `add_zw`, `dp`, `exp`, `family`, `origin`) VALUES
(2, 7, 'Piotr', 1, 1, 1, 1, 20, 2, 112, 22, 'czarny', 'zielone', 'on', 3, 33, 25, 4, 3, 7, 29, 1, 25, 38, 34, 31, 20, 32, 2, 2, 0, '', ''),
(3, 1, 'Rolania Kira', 2, 1, 2, 3, 117, 1, 176, 76, 'Blond', 'Zielone', 'Łysy, broda, małe dłonie', 3, 42, 40, 3, 4, 10, 68, 1, 39, 38, 51, 55, 37, 41, 2, 2, 23, 'brak', 'z dupy'),
(4, 7, 'Onomatopeja', 2, 2, 3, 1, 26, 2, 111, 33, 'blond', 'biale', 'ona', 3, 42, 26, 4, 4, 4, 65, 1, 36, 48, 49, 56, 30, 40, 2, 2, 0, '', ''),
(50, 1, 'gjkdhl', 2, 1, 1, 1, 80, 1, 321, 23, 'trytr', 'fdhgd', 'hgdg', 3, 35, 34, 2, 4, 4, 61, 1, 42, 41, 53, 51, 40, 38, 1, 1, 0, 'hgf', 'jhfj hfhj'),
(6, 1, 'Hierofant Krolli', 4, 1, 2, 3, 121, 3, 186, 86, 'Brązowe', 'Niebieskie', 'Długie, kręcone włosy, tatuaż na przedramieniu prawym', 5, 42, 21, 3, 6, 8, 27, 1, 14, 4, 31, 50, 43, 14, 4, 2, 0, 'Siaba daba da', 'Ore Ore'),
(51, 8, 'fdsaf', 1, 1, 1, 1, 30, 3, 432, 32, 'brak', 'gfd', 'gryby zgred co już zbledł', 3, 34, 27, 3, 4, 7, 32, 1, 32, 31, 24, 28, 24, 28, 1, 1, 25, 'gfhgfd', 'hfgdsdf'),
(27, 1, 'Sakuriti', 1, 1, 2, 2, 37, 6, 180, 89, 'Brąz', 'Zieleń', 'Haahaha.. Nie wiem', 5, 28, 31, 2, 3, 7, 27, 1, 24, 34, 35, 37, 27, 29, 2, 1, 0, 'Daleka :P', 'Omen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `charakter`
--

CREATE TABLE `charakter` (
  `natureID` int(2) NOT NULL,
  `natureName` char(15) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `charakter`
--

INSERT INTO `charakter` (`natureID`, `natureName`) VALUES
(1, 'Praworządny'),
(2, 'Dobry'),
(3, 'Neutralny'),
(4, 'Zły'),
(5, 'Chaotyczny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) CHARACTER SET latin1 NOT NULL,
  `ip_address` varchar(45) CHARACTER SET latin1 NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('7ee978877e485f6f5e2f5ff4ea6458424df30b18', '77.253.124.134', 1515689006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353638383730313b757365727c733a323a226161223b7573657249447c733a313a2231223b),
('d2afd60db758864a9f646208c00ccdcf9952c974', '77.253.124.134', 1515689329, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353638393031343b757365727c733a323a226161223b7573657249447c733a313a2231223b705f69647c733a323a223530223b),
('c0a2cd0bf9b08ab37baf6046c160c1b31692ef5b', '77.253.124.134', 1515689592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353638393334303b757365727c733a323a226161223b7573657249447c733a313a2231223b),
('9acb1a5596a706b01c00c7d3bd64c0380d396ecf', '77.253.124.134', 1515688519, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353638383235313b757365727c733a323a226161223b7573657249447c733a313a2231223b705f69647c733a323a223530223b),
('0c2nt2n0sag2jneuksb03u8pr1tiuj6e', '::1', 1517860916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373836303739323b757365727c733a323a226161223b7573657249447c733a313a2231223b705f69647c733a313a2233223b),
('sf6j6l7jdrjm2qtaqrovpg1rit7tut9c', '::1', 1517859811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373835393831303b),
('847eda7e4517b24d33e8b3986a82a8eed8aef4cd', '213.180.203.10', 1517782638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373738323633383b),
('ompsk7n0fkeso82qfv6m18p83djgovmj', '::1', 1517825889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373832353838383b),
('5c5u76oursrtc0a1s78b6lllvi48eom1', '::1', 1517831468, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373833313433313b757365727c733a323a226161223b7573657249447c733a313a2231223b),
('d3707034002073ef7595b03e5a63df632cc1ad37', '213.180.203.10', 1517782638, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373738323633373b),
('3a10pn8ht9k7fs2lt0hah24ibj0vdq99', '::1', 1517742162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373734313938373b757365727c733a323a226161223b7573657249447c733a313a2231223b),
('d4e890493fcc36af77a99e6d2991ba7180bd2682', '213.180.203.10', 1517605285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373630353238353b),
('dhqpgjolsi779472n55pibspji5fh9pd', '::1', 1517739335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373733393332343b757365727c733a323a226161223b7573657249447c733a313a2231223b),
('9317a4d5ec641ad0df0dabd8a8d42c63be23c993', '95.108.213.20', 1517605285, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373630353238353b),
('377db61987ca33955d62a6c500f5307f7a848410', '87.250.224.53', 1517605165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373630353136353b),
('18d9324a8c2b2ebcf0741105fb37e955cba6d13b', '5.45.207.51', 1517605165, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373630353136353b),
('51b9845ab3a8a173591525b7214e609b52aa1101', '141.8.142.7', 1517418815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373431383831353b),
('8fce9b41c862a1c993b5091e1b64098bbc167b62', '213.180.203.10', 1517418815, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373431383831353b),
('38e3ee223e7e9955db2c4618dd118f0a0811842c', '87.250.224.52', 1517257836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373235373833363b),
('502baa131e09776ea92fc5a262177d3536e6149c', '95.108.213.20', 1517257836, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373235373833363b),
('c974ca53f1e0e9c5ce066a301ed89eee644c83f4', '213.180.203.10', 1517100393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373130303339333b),
('7d69bf68f7da5c74c83c20582c16ebc503d960a8', '95.108.213.20', 1517100393, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531373130303339333b),
('bbbcfea4c48ee7733418f02bf00638516a4e3fab', '95.108.213.20', 1516907529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363930373532393b),
('026809909672454c7b730eb185e3b762902e03a1', '213.180.203.10', 1516936521, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363933363532303b),
('5946645e771bff435522f1867d47eb54efbb242e', '213.180.203.10', 1516907529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363930373532393b),
('6668c77e08634ef1766807f1b86b6df15101a0dc', '213.180.203.10', 1516725499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363732353439393b),
('a374fe747822db4691ea501f27d179f2f908dd3f', '213.180.203.10', 1516618959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363631383935393b),
('6e1fb18a0359a07ee4b180ca29621677ae9acb1d', '95.108.213.20', 1516725499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363732353439393b),
('7ca2eb88f75e7e9a0e17f61b41dc06e99a0fd2e8', '141.8.142.19', 1516560145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363536303134353b),
('dfe591dc2ac31e0f234a4567d311c69d5ab7639e', '87.250.224.47', 1516560145, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363536303134353b),
('eea4ec1042617c50c6b8d4ce5782cca6cccaeb91', '87.250.224.53', 1516377899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363337373839393b),
('9b320a4e75de9b55b12e359fea5c574860ee8620', '37.9.113.193', 1516377899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363337373839393b),
('1dbdf5066f03a80a4229ea8f4a23b7cca00e0524', '5.45.207.43', 1516033608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363033333630383b),
('fd951f66db2d0c084ab47a907d24e2adf1e206e4', '141.8.132.31', 1516227528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363232373532383b),
('7531da136b6afa42a330b8c2f1a2f43cb3ca3219', '141.8.142.2', 1516227528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363232373532383b),
('c6a37be9b6f2dc348edb847974e6949bb8f236f9', '87.250.224.110', 1516033608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531363033333630383b),
('b49ed8f31f0f3265c015ff3552f74bfbe9a60ca8', '87.250.224.52', 1515862011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353836323031313b),
('93e7ee396b9d1952b0f0ed806339f5fe55785024', '95.108.213.20', 1515862011, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353836323031313b),
('49c20095af82358556c738b528f6b08bb9d15809', '95.108.213.29', 1515693434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353639333433343b),
('2ace350ab0738dd06c73ae38e9c6e609f924657f', '77.253.124.134', 1515690324, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353639303133393b757365727c733a363a22717171717171223b7573657249447c733a313a2238223b705f69647c733a323a223531223b),
('4057c00534283e4f3248069fdd0fa5e4b4d4c5b2', '94.254.132.246', 1515692005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353639323030353b757365727c733a323a226161223b7573657249447c733a313a2231223b705f69647c733a313a2236223b),
('cc5188571e7a4533d1dc56905f18cf5e6633a1f4', '141.8.132.16', 1515693434, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353639333433333b),
('8d097f312ef0ce03f44de0405e68833e93fa4dce', '94.254.132.246', 1515689985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353638393933313b757365727c733a323a226161223b7573657249447c733a313a2231223b705f69647c733a313a2236223b),
('159f78d80b16525dadcd061c946432feaf4dc672', '77.253.124.134', 1515689657, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353638393634343b757365727c733a323a226161223b7573657249447c733a313a2231223b705f69647c733a313a2236223b),
('627253f913c9a338dd04d151f329fa71b4f0fb24', '77.253.124.134', 1515689417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531353638393431373b);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `classes`
--

CREATE TABLE `classes` (
  `classID` int(2) NOT NULL,
  `className` char(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `classes`
--

INSERT INTO `classes` (`classID`, `className`) VALUES
(1, 'Wojownik'),
(2, 'Ranger'),
(3, 'Łotr'),
(4, 'Uczony'),
(8, 'dupek');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `classes_items_group`
--

CREATE TABLE `classes_items_group` (
  `id` int(11) NOT NULL,
  `classes_id` int(11) NOT NULL,
  `item_group_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `classes_items_group`
--

INSERT INTO `classes_items_group` (`id`, `classes_id`, `item_group_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `current_schematic`
--

CREATE TABLE `current_schematic` (
  `id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `sz` int(11) NOT NULL,
  `ww` int(11) NOT NULL,
  `us` int(11) NOT NULL,
  `s` int(11) NOT NULL,
  `wt` int(11) NOT NULL,
  `zw` int(11) NOT NULL,
  `i` int(11) NOT NULL,
  `a` int(11) NOT NULL,
  `zr` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  `intel` int(11) NOT NULL,
  `op` int(11) NOT NULL,
  `sw` int(11) NOT NULL,
  `ogd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `current_schematic`
--

INSERT INTO `current_schematic` (`id`, `char_id`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `i`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`) VALUES
(1, 3, 37, 42, 50, 3, 4, 10, 68, 1, 39, 38, 51, 55, 37, 41),
(2, 48, 4, 34, 32, 3, 3, 7, 28, 1, 32, 42, 31, 38, 34, 30),
(3, 2, 3, 29, 30, 3, 3, 5, 37, 2, 30, 16, 30, 33, 20, 31),
(4, 4, 3, 29, 30, 3, 3, 5, 37, 2, 30, 16, 30, 33, 20, 31),
(5, 27, 3, 29, 30, 3, 3, 5, 37, 2, 30, 16, 30, 33, 20, 31),
(6, 6, 3, 29, 30, 3, 3, 5, 37, 2, 30, 16, 30, 33, 20, 31),
(51, 51, 3, 44, 27, 3, 4, 7, 32, 1, 32, 31, 24, 28, 24, 28),
(0, 50, 3, 45, 34, 2, 4, 4, 61, 1, 42, 41, 53, 51, 40, 38),
(33, 49, 3, 41, 31, 2, 4, 5, 70, 1, 46, -76, 53, 51, 40, 40);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `exit_professions`
--

CREATE TABLE `exit_professions` (
  `id` int(11) NOT NULL,
  `profession_id` int(11) NOT NULL,
  `exit_profession` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `exit_professions`
--

INSERT INTO `exit_professions` (`id`, `profession_id`, `exit_profession`) VALUES
(1, 1, 131),
(2, 1, 68),
(3, 1, 166),
(4, 1, 52),
(5, 2, 28),
(6, 2, 3),
(7, 2, 139),
(8, 2, 118),
(9, 2, 164),
(10, 3, 2),
(11, 3, 117),
(12, 4, 77),
(13, 5, 0),
(14, 6, 0),
(15, 7, 166),
(16, 8, 115),
(17, 9, 0),
(18, 10, 0),
(19, 11, 166),
(20, 12, 35),
(21, 13, 0),
(22, 14, 0),
(23, 15, 0),
(24, 16, 0),
(25, 17, 0),
(26, 18, 0),
(27, 19, 0),
(28, 20, 138),
(29, 21, 77),
(30, 22, 39),
(31, 23, 0),
(32, 24, 138),
(33, 25, 44),
(34, 25, 45),
(35, 25, 172),
(36, 26, 28),
(37, 26, 40),
(38, 26, 2),
(39, 26, 67),
(40, 26, 27),
(41, 26, 125),
(42, 27, 26),
(43, 27, 2),
(44, 27, 171),
(45, 28, 26),
(46, 28, 29),
(47, 28, 38),
(48, 28, 2),
(49, 28, 3),
(50, 28, 164),
(51, 28, 171),
(52, 29, 166),
(53, 29, 115),
(54, 30, 162),
(55, 30, 140),
(56, 31, 165),
(57, 31, 45),
(58, 31, 118),
(59, 31, 73),
(60, 31, 169),
(61, 31, 37),
(62, 32, 73),
(63, 32, 171),
(64, 33, 79),
(65, 33, 135),
(66, 33, 129),
(67, 34, 44),
(68, 34, 135),
(69, 34, 64),
(70, 34, 73),
(71, 35, 166),
(72, 35, 12),
(73, 35, 131),
(74, 36, 68),
(75, 36, 94),
(76, 36, 147),
(77, 36, 158),
(78, 36, 161),
(79, 36, 92),
(80, 36, 73),
(81, 37, 75),
(82, 37, 164),
(83, 37, 42),
(84, 37, 117),
(85, 37, 45),
(86, 37, 168),
(87, 38, 45),
(88, 38, 2),
(89, 38, 42),
(90, 39, 166),
(91, 40, 26),
(92, 40, 2),
(93, 40, 171),
(94, 41, 80),
(95, 41, 2),
(96, 41, 139),
(97, 41, 38),
(98, 42, 92),
(99, 42, 94),
(100, 42, 162),
(101, 42, 118),
(102, 42, 161),
(103, 42, 117),
(104, 42, 73),
(105, 43, 49),
(106, 43, 121),
(107, 44, 37),
(108, 44, 45),
(109, 44, 42),
(110, 44, 118),
(111, 45, 44),
(112, 45, 139),
(113, 45, 2),
(114, 45, 118),
(115, 45, 135),
(116, 45, 138),
(117, 46, 38),
(118, 46, 26),
(119, 46, 2),
(120, 46, 3),
(121, 46, 171),
(122, 47, 53),
(123, 47, 132),
(124, 47, 119),
(125, 47, 29),
(126, 48, 49),
(127, 48, 137),
(128, 48, 129),
(129, 48, 38),
(130, 48, 2),
(131, 48, 61),
(132, 48, 79),
(133, 48, 80),
(134, 49, 2),
(135, 49, 115),
(136, 49, 166),
(137, 50, 2),
(138, 50, 171),
(139, 50, 53),
(140, 51, 44),
(141, 51, 70),
(142, 51, 64),
(143, 52, 34),
(144, 52, 86),
(145, 52, 73),
(146, 52, 171),
(147, 53, 85),
(148, 53, 47),
(149, 53, 135),
(150, 54, 42),
(151, 54, 139),
(152, 54, 171),
(153, 55, 2),
(154, 55, 53),
(155, 55, 85),
(156, 56, 44),
(157, 56, 135),
(158, 57, 92),
(159, 57, 44),
(160, 57, 45),
(161, 58, 47),
(162, 58, 85),
(163, 58, 53),
(164, 58, 33),
(165, 59, 129),
(166, 59, 116),
(167, 59, 93),
(168, 59, 137),
(169, 60, 49),
(170, 60, 77),
(171, 60, 28),
(172, 60, 59),
(173, 61, 38),
(174, 61, 139),
(175, 61, 2),
(176, 62, 37),
(177, 62, 61),
(178, 62, 165),
(179, 62, 138),
(180, 62, 162),
(181, 63, 44),
(182, 63, 64),
(183, 63, 134),
(184, 63, 117),
(185, 64, 63),
(186, 64, 44),
(187, 64, 51),
(188, 64, 45),
(189, 65, 66),
(190, 65, 83),
(191, 65, 56),
(192, 65, 170),
(193, 65, 140),
(194, 66, 166),
(195, 67, 171),
(196, 67, 26),
(197, 67, 2),
(198, 68, 88),
(199, 68, 51),
(200, 68, 136),
(201, 68, 166),
(202, 68, 52),
(203, 68, 56),
(204, 68, 7),
(205, 69, 56),
(206, 69, 166),
(207, 69, 95),
(208, 69, 34),
(209, 69, 51),
(210, 69, 7),
(211, 69, 66),
(212, 70, 56),
(213, 70, 166),
(214, 70, 51),
(215, 70, 131),
(216, 71, 44),
(217, 71, 2),
(218, 71, 33),
(219, 71, 67),
(220, 71, 135),
(221, 72, 49),
(222, 72, 166),
(223, 73, 161),
(224, 73, 34),
(225, 73, 53),
(226, 74, 139),
(227, 74, 171),
(228, 75, 170),
(229, 75, 45),
(230, 75, 165),
(231, 75, 37),
(232, 76, 169),
(233, 77, 44),
(234, 77, 166),
(235, 77, 2),
(236, 77, 138),
(237, 78, 44),
(238, 78, 135),
(239, 79, 136),
(240, 79, 135),
(241, 80, 135),
(242, 80, 59),
(243, 80, 33),
(244, 81, 44),
(245, 81, 135),
(246, 82, 70),
(247, 82, 26),
(248, 83, 56),
(249, 83, 137),
(250, 83, 93),
(251, 83, 49),
(252, 83, 132),
(253, 83, 77),
(254, 84, 44),
(255, 84, 138),
(256, 84, 64),
(257, 85, 119),
(258, 85, 47),
(259, 85, 117),
(260, 85, 55),
(261, 85, 53),
(262, 85, 29),
(263, 86, 117),
(264, 86, 162),
(265, 86, 161),
(266, 86, 37),
(267, 86, 94),
(268, 86, 45),
(269, 86, 92),
(270, 84, 45),
(271, 87, 37),
(272, 87, 92),
(273, 87, 162),
(274, 87, 119),
(275, 87, 117),
(276, 88, 89),
(277, 88, 95),
(278, 89, 90),
(279, 89, 95),
(280, 90, 91),
(281, 91, 95),
(282, 92, 94),
(283, 92, 162),
(284, 92, 87),
(285, 92, 161),
(286, 93, 129),
(287, 93, 133),
(288, 94, 92),
(289, 94, 162),
(290, 94, 87),
(291, 95, 96),
(292, 95, 99),
(293, 95, 103),
(294, 95, 107),
(295, 95, 111),
(296, 96, 97),
(297, 96, 99),
(298, 96, 103),
(299, 96, 107),
(300, 96, 111),
(301, 97, 98),
(302, 97, 99),
(303, 97, 103),
(304, 97, 107),
(305, 97, 111),
(306, 98, 99),
(307, 98, 103),
(308, 98, 107),
(309, 98, 111),
(310, 99, 100),
(311, 99, 107),
(312, 99, 111),
(313, 99, 96),
(314, 100, 101),
(315, 100, 107),
(316, 100, 111),
(317, 100, 96),
(318, 101, 102),
(319, 101, 107),
(320, 101, 111),
(321, 101, 96),
(322, 102, 107),
(323, 102, 111),
(324, 102, 96),
(325, 103, 104),
(326, 103, 107),
(327, 103, 96),
(328, 104, 105),
(329, 105, 107),
(330, 105, 96),
(331, 106, 107),
(332, 106, 96),
(333, 107, 108),
(334, 107, 99),
(335, 107, 103),
(336, 107, 111),
(337, 107, 96),
(338, 108, 109),
(339, 108, 99),
(340, 108, 103),
(341, 108, 111),
(342, 108, 96),
(343, 109, 110),
(344, 109, 99),
(345, 109, 103),
(346, 109, 111),
(347, 109, 96),
(348, 110, 99),
(349, 110, 103),
(350, 110, 111),
(351, 110, 96),
(352, 111, 99),
(353, 111, 96),
(354, 111, 112),
(355, 112, 113),
(356, 112, 99),
(357, 112, 96),
(358, 113, 114),
(359, 113, 99),
(360, 113, 96),
(361, 114, 99),
(362, 114, 96),
(363, 115, 42),
(364, 115, 118),
(365, 116, 136),
(366, 116, 77),
(367, 117, 162),
(368, 117, 118),
(369, 117, 85),
(370, 118, 115),
(371, 118, 139),
(372, 118, 162),
(373, 118, 171),
(374, 119, 132),
(375, 119, 47),
(376, 119, 120),
(377, 120, 47),
(378, 120, 133),
(379, 121, 122),
(380, 121, 130),
(381, 121, 115),
(382, 122, 123),
(383, 122, 130),
(384, 122, 115),
(385, 123, 124),
(386, 123, 130),
(387, 123, 115),
(388, 124, 130),
(389, 124, 115),
(390, 125, 126),
(391, 126, 127),
(392, 127, 128),
(393, 128, 173),
(394, 129, 133),
(395, 130, 43),
(396, 130, 141),
(397, 131, 35),
(398, 131, 68),
(399, 132, 133),
(400, 132, 120),
(401, 133, 162),
(402, 133, 132),
(403, 133, 119),
(404, 133, 167),
(405, 134, 118),
(406, 134, 138),
(407, 137, 77),
(408, 135, 77),
(409, 135, 33),
(410, 136, 135),
(411, 136, 77),
(412, 137, 115),
(413, 137, 129),
(414, 137, 29),
(415, 138, 135),
(416, 138, 118),
(417, 139, 170),
(418, 139, 162),
(419, 139, 118),
(420, 140, 162),
(421, 140, 141),
(422, 141, 140),
(423, 141, 43),
(424, 141, 162),
(425, 141, 130),
(426, 142, 86),
(427, 143, 0),
(428, 144, 0),
(429, 145, 36),
(430, 146, 133),
(431, 146, 116),
(432, 147, 0),
(433, 148, 0),
(434, 149, 0),
(435, 150, 0),
(436, 151, 0),
(437, 152, 136),
(438, 152, 116),
(439, 153, 0),
(440, 154, 129),
(441, 155, 0),
(442, 156, 115),
(443, 157, 0),
(444, 158, 36),
(445, 159, 0),
(446, 160, 0),
(447, 161, 92),
(448, 161, 36),
(449, 161, 94),
(450, 161, 42),
(451, 161, 73),
(452, 162, 163),
(453, 163, 92),
(454, 163, 37),
(455, 163, 133),
(456, 163, 66),
(457, 163, 94),
(458, 163, 118),
(459, 163, 140),
(460, 163, 165),
(461, 163, 118),
(462, 163, 75),
(463, 164, 168),
(464, 164, 42),
(465, 164, 118),
(466, 165, 170),
(467, 165, 168),
(468, 165, 162),
(469, 165, 130),
(470, 165, 141),
(471, 166, 115),
(472, 166, 167),
(473, 167, 168),
(474, 168, 42),
(475, 168, 118),
(476, 168, 130),
(477, 169, 0),
(478, 170, 168),
(479, 170, 139),
(480, 170, 162),
(481, 171, 133),
(482, 171, 118),
(483, 171, 37),
(484, 171, 162),
(485, 174, 32),
(486, 174, 65);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gender`
--

CREATE TABLE `gender` (
  `genderID` int(1) NOT NULL,
  `genderName` char(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gender`
--

INSERT INTO `gender` (`genderID`, `genderName`) VALUES
(1, 'Mężczyzna'),
(2, 'Kobieta');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `item` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `items_group_id` int(11) DEFAULT NULL,
  `meele` int(2) DEFAULT NULL,
  `ranged` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `items`
--

INSERT INTO `items` (`id`, `item`, `items_group_id`, `meele`, `ranged`) VALUES
(1, 'Dobre wino (butelka)', 4, 0, 0),
(2, 'Domowe wino (butelka)', 4, 0, 0),
(3, 'Jedzenie na  dzień (gotowy posiłek)', 4, 0, 0),
(4, 'Obrok dla konia (1 dzień)', 4, 0, 0),
(5, 'Oddzielny pokój (4 osoby)', NULL, 0, 0),
(6, 'Piwo (1/2 l)', 4, 0, 0),
(7, 'Wspólna sala w zajeździe (noc)', NULL, 0, 0),
(8, 'Wspólna sala w zajeździe z łóżkiem (noc)', NULL, 0, 0),
(9, 'Stajnia (1 koń, 1 noc)', NULL, 0, 0),
(10, 'Wódka (butelka)', 4, 0, 0),
(11, 'Żelazne racje (na tydzień)', 4, 0, 0),
(12, 'Bryczesy', 4, 0, 0),
(13, 'Buty', 4, 0, 0),
(14, 'Buty jeździeckie i ostrogi', 4, 0, 0),
(15, 'Buty skórzane (długie)', 4, 0, 0),
(16, 'Chałat', 4, 0, 0),
(17, 'Chusta na szyję', 4, 0, 0),
(18, 'Chusteczka do nosa (jedwabne)', 4, 0, 0),
(19, 'Kapelusz (szerokie rondo, zdobiony)', 4, 0, 0),
(20, 'Kapelusz (zwyczajny)', 4, 0, 0),
(21, 'Kaptur / Maska', 4, 0, 0),
(22, 'Koszula', 4, 0, 0),
(23, 'Kubrak przeszywany', 4, 0, 0),
(24, 'Pas', 4, 0, 0),
(25, 'Peleryna', 4, 0, 0),
(26, 'Płaszcz ciężki', 4, 0, 0),
(27, 'Suknia', 4, 0, 0),
(28, 'Szaty kapłańskie', 4, 0, 0),
(29, 'Tunika', 4, 0, 0),
(30, 'Czepiec kolczy', 5, 0, 0),
(31, 'Czepiec skórzany', 5, 0, 0),
(32, 'Kaftan skórzany', 5, 0, 0),
(33, 'Kaftan kolczy', 5, 0, 0),
(34, 'Kaftan kolczy z rękawami', 5, 0, 0),
(35, 'Kolczuga', 5, 0, 0),
(36, 'Koszulka kolcza', 5, 0, 0),
(37, 'Kurtka skórzana', 5, 0, 0),
(38, 'Nagolenniki kolcze (para)', 5, 0, 0),
(39, 'Naramienniki kolcze (para)', 5, 0, 0),
(40, 'Hełm otwarty', 5, 0, 0),
(41, 'Hełm rycerski', 5, 0, 0),
(42, 'Napierśnik', 5, 0, 0),
(43, 'Naplecznik', 5, 0, 0),
(44, 'Nagolenniki płytowe (para)', 5, 0, 0),
(45, 'Naramienniki płytowe (para)', 5, 0, 0),
(46, 'Rękawice (para)', 5, 0, 0),
(47, 'Tarcza', 5, 0, 0),
(48, 'Tarcza bez okuć (na 1 przygodę)', 5, 0, 0),
(49, 'Bicz', 1, 18, 0),
(50, 'Buzdygan', 1, 1, 0),
(51, 'Garota', 1, 17, 0),
(52, 'Hak', 1, 17, 0),
(53, 'Halabarda', 1, 7, 0),
(54, 'Kastet', 1, 17, 0),
(55, 'Kij', 1, 8, 0),
(56, 'Kopia', 1, 15, 0),
(57, 'Korbacz', 1, 9, 0),
(58, 'Korbacz dwuręczny', 2, 10, 0),
(59, 'Łamacz mieczy', 1, 14, 0),
(60, 'Maczuga dwuręczna', 2, 6, 0),
(61, 'Miecz', 1, 1, 0),
(62, 'Miecz dwuręczny', 2, 6, 0),
(63, 'Miecz półtoraręczny', 1, 5, 0),
(64, 'Młot bojowy', 1, 1, 0),
(65, 'Młot bojowy dwuręczny', 2, 6, 0),
(66, 'Nadziak', 1, 1, 0),
(67, 'Pałka drewniana', 1, 1, 0),
(68, 'Pałasz', 1, 1, 0),
(69, 'Pochwa na miecz', 4, 0, 0),
(70, 'Puklerz', 1, 12, 0),
(71, 'Rapier', 1, 11, 0),
(72, 'Sieć', 1, 16, 0),
(73, 'Szpada', 1, 11, 0),
(74, 'Sztylet / Nóż', 1, 2, 0),
(75, 'Topór bojowy', 1, 1, 0),
(76, 'Topór bojowy dwuręczny', 2, 6, 0),
(77, 'Topór jeździecki', 1, 1, 0),
(78, 'Włócznia', 1, 3, 0),
(79, 'Bolas', 3, 0, 35),
(80, 'Bełty do kuszy (5)', 4, 0, 0),
(81, 'Dmuchawka', 3, 0, 33),
(82, 'Kołczan na 30 strzał', 4, 0, 0),
(83, 'Kusza', 3, 0, 23),
(84, 'Kusza powtarzalna', 3, 0, 24),
(85, 'Lasso', 3, 0, 34),
(86, 'Łuk długi', 3, 0, 21),
(87, 'Łuk elfi', 3, 0, 22),
(88, 'Łuk krótki', 3, 0, 19),
(89, 'Łuk zwykły', 3, 0, 20),
(90, 'Młot', 3, 0, 32),
(91, 'Nóż do rzucania', 3, 0, 31),
(92, 'Oszczep', 3, 0, 28),
(93, 'Pistolet strzałkowy', 3, 0, 25),
(94, 'Proca', 3, 0, 26),
(95, 'Proca drzewcowa', 3, 0, 27),
(96, 'Strzałka do rzucania', 3, 0, 30),
(97, 'Strzały (5)', 4, 0, 0),
(98, 'Toporek do rzucania', 3, 0, 32),
(99, 'Włócznia', 3, 0, 29),
(100, 'Bomba', 3, 0, 38),
(101, 'Kule do broni palnej (10)', 4, 0, 0),
(102, 'Pistolet', 3, 0, 36),
(103, 'Proch strzelniczy (ładunek)', 3, 0, 0),
(104, 'Rusznica', 3, 0, 37),
(105, 'Bukłak na wodę (5 l)', 4, 0, 0),
(106, 'Juk (pojemność 250)', 4, 0, 0),
(107, 'Flaszka metalowa (1/2 l)', 4, 0, 0),
(108, 'Manierka skórzana (1/2 l)', 4, 0, 0),
(109, 'Plecak (pojemność 250)', 4, 0, 0),
(110, 'Sakiewka (na 100 monet)', 4, 0, 0),
(111, 'Sakwa', 4, 0, 0),
(112, 'Torba na ramię (pojemność 200)', 4, 0, 0),
(113, 'Tuba skórzana', 4, 0, 0),
(114, 'Worek (pojemność 200)', 4, 0, 0),
(115, 'Drewno na opał (wiązka)', 4, 0, 0),
(116, 'Dzban (gliniany)', 4, 0, 0),
(117, 'Garnek kucharski', 4, 0, 0),
(118, 'Guzik (tuzin)', 4, 0, 0),
(119, 'Hubka i krzesiwo', 4, 0, 0),
(120, 'Koc', 4, 0, 0),
(121, 'Kociołek (1/2 l)', 4, 0, 0),
(122, 'Kości do gry (para)', 4, 0, 0),
(123, 'Kufel (cynowy)', 4, 0, 0),
(124, 'Materac z pierza', 4, 0, 0),
(125, 'Materac z włosia', 4, 0, 0),
(126, 'Sztućce (komplet dla jednej osoby) - drewniane', 4, 0, 0),
(127, 'Sztućce (komplet dla jednej osoby) - metalowe', 4, 0, 0),
(128, 'Sztućce (komplet dla jednej osoby) - srebrne', 4, 0, 0),
(130, 'Talia kart', 4, 0, 0),
(131, 'Lampa', 4, 0, 0),
(132, 'Latarnia', 4, 0, 0),
(133, 'Latarnia sztormowa', 4, 0, 0),
(134, 'Olej (1/2 l)', 4, 0, 0),
(135, 'Pochodnia', 4, 0, 0),
(136, 'Świeca (tuzin) - łojowa', 4, 0, 0),
(137, 'Świeca (tuzin) - woskowa', 4, 0, 0),
(138, 'Bęben', 4, 0, 0),
(139, 'Flet', 4, 0, 0),
(140, 'Flet klasyczny', 4, 0, 0),
(141, 'Harfa mała', 4, 0, 0),
(142, 'Harmonijka ustna', 4, 0, 0),
(143, 'Klawikord', 4, 0, 0),
(144, 'Lutnia', 4, 0, 0),
(145, 'Mandolina', 4, 0, 0),
(146, 'Róg', 4, 0, 0),
(147, 'Tamburyn', 4, 0, 0),
(148, 'Wiola', 4, 0, 0),
(149, 'Forma do monet (bez wzoru)', 4, 0, 0),
(150, 'Gwóźdź żelazny (12 cali)', 4, 0, 0),
(151, 'Haczyk na ryby i linka', 4, 0, 0),
(152, 'Hak', 4, 0, 0),
(153, 'Instrumenty medyczne', 4, 0, 0),
(154, 'Kajdany (para)', 4, 0, 0),
(155, 'Klin drewniany', 4, 0, 0),
(156, 'Łańcuch (metr)', 4, 0, 0),
(157, 'Łom', 4, 0, 0),
(158, 'Łopata (żelazna)', 4, 0, 0),
(159, 'Mapy nawigacyjne (drukowane)', 4, 0, 0),
(160, 'Narzędzia kowalskie (oprócz kuźni i miechów)', 4, 0, 0),
(161, 'Narzędzia grawerskie', 4, 0, 0),
(162, 'Narzędzia rzemieślnicze', 4, 0, 0),
(163, 'Piła', 4, 0, 0),
(164, 'Potrzask', 4, 0, 0),
(165, 'Przyrządy nawigacyjne', 4, 0, 0),
(166, 'Sidła (metalowe)', 4, 0, 0),
(167, 'Surowiec metalowy (gąska)', 4, 0, 0),
(168, 'Szkło powiększające', 4, 0, 0),
(169, 'Sznur (metr)', 4, 0, 0),
(170, 'Tyczka (metr)', 4, 0, 0),
(171, 'Wytrychy', 4, 0, 0),
(172, 'Książka ilumiowana', 4, 0, 0),
(173, 'Książka (drukowana)', 4, 0, 0),
(174, 'Papier (12 kartek)', 4, 0, 0),
(175, 'Pergamin (12 kartek)', 4, 0, 0),
(176, 'Przybory piśmiennicze', 4, 0, 0),
(177, 'Furmanka', 4, 0, 0),
(178, 'Łódka wiosłowa', 4, 0, 0),
(179, 'Łódź', 4, 0, 0),
(180, 'Powóz, kareta', 4, 0, 0),
(181, 'Wóz kryty', NULL, 0, 0),
(182, 'Lekki koń bojowy', 6, 0, 0),
(183, 'Koń wierzchowy', 6, 0, 0),
(184, 'Rumak', 6, 0, 0),
(185, 'Koń juczny', 6, 0, 0),
(186, 'Koń pociągowy', 6, 0, 0),
(187, 'Koza', 6, 0, 0),
(188, 'Krowa', 6, 0, 0),
(189, 'Kurczak', 6, 0, 0),
(190, 'Owca', 6, 0, 0),
(191, 'Pies', 6, 0, 0),
(192, 'Sokół', 6, 0, 0),
(193, 'Świnia', 6, 0, 0),
(194, 'Wół', 6, 0, 0),
(195, 'Dwukółka (1 dzień)', NULL, 0, 0),
(196, 'Łódź rzeczna', NULL, 0, 0),
(197, 'Furmanka / Wóz', NULL, 0, 0),
(198, 'Powóz / Kareta (za dzień)', NULL, 0, 0),
(199, 'Wóz kryty  3-konny (1 dzień)', NULL, 0, 0),
(200, 'Dom w mięście', NULL, 0, 0),
(201, 'Dom w mieście (dobrze urządzony)', NULL, 0, 0),
(202, 'Dom w mieście (luksusowy)', NULL, 0, 0),
(203, 'Mały pałac', NULL, 0, 0),
(204, 'Wiejski dom', NULL, 0, 0),
(205, 'Wiejska chata', NULL, 0, 0),
(206, 'Luksusowy dom z dużym ogrodem', NULL, 0, 0),
(207, 'Zamożny dworek szlachecki z dziedzińcem', NULL, 0, 0),
(208, 'Za wizytę', NULL, 0, 0),
(209, 'Tłuczek i moździeż', 4, 0, 0),
(210, 'Małe słoiczki', 4, 0, 0),
(211, 'Niedźwiedź', NULL, 0, 0),
(212, 'Kulka', 4, 0, 0),
(213, 'Drewniany kubek', 4, 0, 0),
(214, 'Dzbanek (cynowy)', 4, 0, 0),
(215, 'Ubranie', 4, 0, 0),
(216, 'Płaszcz z kapturem', 4, 0, 0),
(217, 'Kamasze', 4, 0, 0),
(218, 'Sandały', 4, 0, 0),
(219, 'Kłódka', 4, 0, 0),
(220, 'Flaszka ochronnego płynu', 4, 0, 0),
(221, 'Srebrna kulka na łańcuchu', 4, 0, 0),
(222, 'Drewniane kule', 4, 0, 0),
(223, 'Kawałek kredy', 4, 0, 0),
(224, 'Pacynka', 4, 0, 0),
(225, 'Różdźki', 4, 0, 0),
(226, 'Znak religii - mały srebrny sierp', 4, 0, 0),
(227, 'Siodło i uprząż', 4, 0, 0),
(228, 'Buty gońca', 4, 0, 0),
(229, 'Opaska na głowę', 4, 0, 0),
(230, 'Torba na narzędzia', 4, 0, 0),
(231, 'Dłuto', 4, 0, 0),
(232, 'Szczypce', 4, 0, 0),
(233, 'Gruby drut (metr)', 4, 0, 0),
(234, 'Pilnik', 4, 0, 0),
(235, 'Stalowy kołek', 4, 0, 0),
(236, 'Kilof', 4, 0, 0),
(237, 'Pierścień gildii', 4, 0, 0),
(238, 'Nuty', 4, 0, 0),
(239, 'Symbol religijny', 4, 0, 0),
(240, 'Fletnia Pana', 4, 0, 0),
(241, 'Liczydło', 4, 0, 0),
(242, 'Ulotka', 4, 0, 0),
(243, 'Jednoosobowy namiot', 4, 0, 0),
(244, 'Miska (do płukania)', 4, 0, 0),
(245, 'Muł', 6, 0, 0),
(246, 'Torba na rzemieniu zawierająca paczkę z 2 śniadaniem', 4, 0, 0),
(247, 'Flaszka herbaty ziołowej', 4, 0, 0),
(248, 'Liberia', 4, 0, 0),
(249, 'Drąg', 1, 1, 0),
(250, 'Ciężkie klucze na kółku', 4, 0, 0),
(251, 'Kiepskie wino (butelka)', 4, 0, 0),
(252, 'Pchły', 4, 0, 0),
(253, 'Martwy szczur', 4, 0, 0),
(254, 'Klejnoty', 4, 0, 0),
(255, 'Kości szachrajskie', 4, 0, 0),
(256, 'Kanoe', 4, 0, 0),
(257, 'Futrzana czapka', 4, 0, 0),
(258, 'Płaszcz przeciwdeszczowy', 4, 0, 0),
(259, 'Strój ze skóry', 4, 0, 0),
(260, 'Słój glininay', 4, 0, 0),
(261, 'Pijawki', 4, 0, 0),
(262, 'Garnki', 4, 0, 0),
(263, 'Rondle', 4, 0, 0),
(264, 'Małe noże', 4, 0, 0),
(265, 'Igły', 4, 0, 0),
(266, 'Szpulka kolorowych wstążek', 4, 0, 0),
(267, 'Przedmioty do przepowiadania przyszłości', 4, 0, 0),
(268, 'Cążki', 4, 0, 0),
(269, 'Torba z zasuszonymi ziołami', 4, 0, 0),
(270, 'Miska żebraka', 4, 0, 0),
(271, 'Nędzne odzienie', 4, 0, 0),
(272, 'Kiepska gorzała (butelka)', 4, 0, 0),
(273, 'Podła wódka (butelka)', 4, 0, 0),
(275, 'Młotek', 4, 0, 0),
(274, 'Maczuga', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `items_group`
--

CREATE TABLE `items_group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `items_group`
--

INSERT INTO `items_group` (`id`, `name`) VALUES
(1, 'Broń jednoręczna'),
(2, 'Broń dwuręczna'),
(3, 'Broń strzelecka'),
(4, 'Ekwipunek'),
(5, 'Zbroja'),
(6, 'Towarzysze');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria_potwora`
--

CREATE TABLE `kategoria_potwora` (
  `categoryID` int(2) UNSIGNED NOT NULL,
  `monsterCategory` char(25) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kategoria_potwora`
--

INSERT INTO `kategoria_potwora` (`categoryID`, `monsterCategory`) VALUES
(1, 'Humanoid'),
(2, 'Zwierzęta i potwory'),
(3, 'Ożywieńcy'),
(4, 'Ożywieńcy eteryczni'),
(5, 'Demony');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mod_broni`
--

CREATE TABLE `mod_broni` (
  `id` int(11) NOT NULL,
  `weapon_id` int(2) NOT NULL,
  `inic` varchar(7) COLLATE utf8_polish_ci NOT NULL,
  `mod_traf` varchar(7) COLLATE utf8_polish_ci NOT NULL,
  `obr` varchar(3) COLLATE utf8_polish_ci NOT NULL,
  `par` varchar(3) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `mod_broni`
--

INSERT INTO `mod_broni` (`id`, `weapon_id`, `inic`, `mod_traf`, `obr`, `par`) VALUES
(1, 1, '-', '-', '-', '-'),
(2, 2, '+10', '-', '-2', '-20'),
(3, 3, '+10/20', '+10', '-', '-'),
(4, 4, '-10', '-', '-2', '+10'),
(5, 5, '-10', '-', '+1', '-'),
(6, 6, '-10', '-', '+2', '-'),
(7, 7, '+10/20', '-10/0', '+2', '-'),
(8, 8, '-', '-', '-1', '-'),
(9, 9, '-', '-10', '+1', '-10'),
(10, 10, '-20', '-20', '+3', '-10'),
(11, 11, '+20', '-', '-1', '-'),
(12, 12, '-', '-', '-2', '+20'),
(13, 13, '-', '-', '-2', '-10'),
(14, 14, '-', '-', '-2', '-10'),
(15, 15, '+20', '+10', '+2', '-20'),
(16, 16, '-', '-10', '-', '-10'),
(17, 17, '-', '-10', '-1', '-'),
(18, 18, '-', '-10', '-2', '-20');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `modifier_ranged`
--

CREATE TABLE `modifier_ranged` (
  `id` int(11) NOT NULL,
  `weapon_id` int(11) NOT NULL,
  `s` int(11) NOT NULL,
  `l` int(11) NOT NULL,
  `m` int(11) NOT NULL,
  `SE` varchar(1) COLLATE utf8_polish_ci NOT NULL,
  `reload` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `modifier_ranged`
--

INSERT INTO `modifier_ranged` (`id`, `weapon_id`, `s`, `l`, `m`, `SE`, `reload`) VALUES
(1, 19, 16, 32, 150, '3', 1),
(2, 20, 24, 48, 250, '3', 1),
(3, 21, 32, 64, 300, '3', 1),
(4, 22, 32, 64, 300, '4', 1),
(5, 23, 32, 64, 300, '4', 2),
(6, 24, 32, 0, 100, '1', 10),
(7, 25, 16, 32, 50, '1', 2),
(8, 26, 24, 36, 150, '3', 1),
(9, 27, 24, 36, 200, '4', 2),
(10, 28, 8, 16, 50, 'S', 1),
(11, 29, 4, 8, 25, 'S', 1),
(12, 30, 4, 8, 20, 'S', 1),
(13, 31, 4, 8, 20, 'S', 1),
(14, 32, 4, 8, 20, 'S', 1),
(15, 33, 12, 24, 50, '1', 1),
(16, 34, 8, 16, 30, '-', 3),
(17, 35, 12, 24, 50, '1', 1),
(18, 36, 8, 16, 50, '3', 3),
(19, 37, 24, 48, 250, '3', 4),
(20, 38, 2, 6, 10, '6', 1),
(21, 39, 2, 6, 10, 'O', 1),
(22, 40, 2, 6, 10, 'S', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `monsters`
--

CREATE TABLE `monsters` (
  `monsterID` int(10) UNSIGNED NOT NULL,
  `monsterName` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `categoryID` int(2) UNSIGNED NOT NULL,
  `sz` tinyint(5) NOT NULL,
  `ww` tinyint(5) NOT NULL,
  `us` tinyint(5) NOT NULL,
  `s` tinyint(5) NOT NULL,
  `wt` tinyint(5) NOT NULL,
  `zw` tinyint(5) NOT NULL,
  `i` tinyint(5) NOT NULL,
  `a` tinyint(5) NOT NULL,
  `zr` tinyint(5) NOT NULL,
  `cp` tinyint(5) NOT NULL,
  `intel` tinyint(5) NOT NULL,
  `op` tinyint(5) NOT NULL,
  `sw` tinyint(5) NOT NULL,
  `ogd` tinyint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `monsters`
--

INSERT INTO `monsters` (`monsterID`, `monsterName`, `categoryID`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `i`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`) VALUES
(1, 'Człowiek', 1, 3, 33, 25, 3, 3, 7, 30, 1, 29, 29, 29, 29, 29, 29),
(2, 'Drzewiec', 1, 6, 79, 25, 6, 7, 36, 20, 4, 24, 89, 66, 89, 89, 24),
(3, 'Elf', 1, 4, 41, 34, 3, 3, 7, 60, 1, 43, 43, 66, 66, 43, 43),
(4, 'Fimir', 1, 4, 33, 9, 4, 3, 11, 20, 1, 18, 18, 14, 18, 18, 14),
(5, 'Gigant', 1, 6, 33, 25, 7, 7, 36, 20, 5, 14, 24, 14, 24, 24, 14),
(6, 'Gnom', 1, 4, 41, 25, 3, 2, 7, 30, 1, 29, 43, 29, 29, 43, 29),
(7, 'Goblin', 1, 4, 25, 25, 3, 3, 7, 20, 1, 18, 18, 18, 18, 18, 18),
(8, 'Halfling', 1, 3, 25, 34, 2, 2, 7, 50, 1, 43, 24, 29, 24, 43, 43),
(9, 'Hobgoblin', 1, 33, 14, 14, 3, 4, 7, 30, 1, 29, 29, 24, 24, 24, 18),
(10, 'Krasnolud', 1, 3, 41, 25, 3, 4, 7, 20, 1, 24, 66, 29, 66, 66, 24),
(11, 'Minotaur', 1, 6, 41, 25, 4, 4, 17, 30, 2, 18, 66, 18, 29, 24, 10),
(12, 'Ogr', 1, 6, 33, 17, 4, 5, 17, 30, 2, 18, 18, 14, 18, 29, 10),
(13, 'Ork', 1, 4, 33, 25, 3, 4, 7, 20, 1, 29, 29, 18, 29, 29, 18),
(14, 'Ork czarny', 1, 4, 33, 25, 4, 4, 7, 30, 1, 18, 29, 18, 29, 29, 14),
(15, 'Półork', 1, 4, 33, 25, 3, 3, 7, 30, 1, 29, 29, 42, 29, 29, 18),
(16, 'Reptilion', 1, 4, 33, 25, 3, 4, 12, 30, 1, 18, 89, 18, 89, 89, 10),
(17, 'Skaven', 1, 5, 33, 25, 3, 3, 7, 40, 1, 24, 24, 24, 18, 29, 14),
(18, 'Snotling', 1, 4, 17, 17, 1, 1, 3, 30, 1, 14, 14, 14, 14, 14, 14),
(19, 'Troglodyta', 1, 4, 33, 25, 4, 4, 10, 10, 2, 14, 89, 14, 89, 89, 10),
(20, 'Troll', 1, 6, 33, 9, 5, 4, 18, 10, 3, 14, 14, 14, 24, 24, 6),
(21, 'Wojownik Chaosu', 1, 4, 59, 49, 4, 3, 10, 60, 2, 89, 89, 89, 89, 89, 18),
(22, 'Zwierzoczłek Chaosu', 1, 4, 41, 25, 3, 4, 11, 30, 1, 30, 29, 24, 29, 24, 10),
(23, 'Ameba', 2, 4, 33, 0, 3, 5, 11, 30, 3, 0, 0, 0, 0, 0, 0),
(24, 'Amfisbena', 2, 4, 33, 0, 4, 3, 11, 60, 1, 0, 14, 5, 43, 43, 0),
(25, 'Bazyliszek', 2, 4, 33, 0, 5, 4, 11, 30, 3, 0, 14, 14, 14, 14, 0),
(26, 'Brzytwodziób', 2, 2, 33, 0, 1, 2, 5, 30, 1, 0, 14, 10, 14, 14, 0),
(27, 'Chimera', 2, 5, 41, 0, 6, 6, 41, 30, 6, 0, 89, 14, 89, 89, 0),
(28, 'Chłościel', 2, 0, 33, 0, 1, 3, 5, 0, 1, 0, 0, 0, 0, 0, 0),
(29, 'Czerw bagienny', 2, 6, 33, 0, 6, 4, 17, 30, 4, 0, 10, 10, 10, 10, 0),
(30, 'Doppelganger', 2, 4, 41, 33, 4, 3, 11, 30, 2, 33, 43, 29, 29, 29, 10),
(31, 'Dżabersmok', 2, 6, 79, 0, 5, 6, 47, 10, 4, 10, 89, 18, 89, 89, 0),
(32, 'Dzik', 2, 7, 33, 0, 3, 3, 11, 30, 1, 0, 10, 14, 14, 14, 0),
(33, 'Gryfon', 2, 6, 50, 0, 5, 5, 35, 80, 4, 0, 66, 14, 66, 66, 0),
(34, 'Grzyby i pleśnie', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'Harpia', 2, 4, 41, 25, 4, 4, 11, 20, 1, 33, 35, 14, 43, 66, 5),
(36, 'Hipogryf', 2, 6, 33, 0, 4, 5, 23, 80, 4, 0, 43, 14, 43, 43, 0),
(37, 'Hydra', 2, 6, 33, 0, 4, 6, 41, 30, 8, 0, 24, 14, 24, 24, 0),
(38, 'Kameleopji', 2, 3, 33, 0, 2, 2, 5, 30, 1, 14, 2, 14, 14, 0, 0),
(39, 'Koń', 2, 8, 33, 0, 3, 3, 5, 30, 0, 0, 10, 10, 10, 10, 0),
(40, 'Koń bojowy', 2, 8, 33, 0, 5, 3, 11, 30, 1, 0, 10, 10, 10, 10, 0),
(41, 'Kot dziki', 2, 8, 41, 0, 4, 3, 5, 30, 3, 0, 10, 10, 43, 43, 0),
(42, 'Krwawiec', 2, 0, 33, 0, 3, 3, 5, 60, 1, 0, 0, 0, 0, 20, 0),
(43, 'Gronostaje', 2, 6, 41, 0, 1, 1, 5, 40, 1, 0, 10, 10, 10, 10, 0),
(44, 'Lis', 2, 5, 33, 0, 1, 2, 5, 40, 1, 0, 14, 14, 14, 14, 0),
(45, 'Królik', 2, 7, 25, 0, 0, 1, 1, 30, 1, 0, 2, 2, 2, 2, 0),
(46, 'Kruk', 2, 2, 33, 0, 1, 1, 5, 30, 2, 0, 24, 2, 24, 24, 0),
(47, 'Wydra', 2, 6, 33, 0, 1, 2, 5, 40, 1, 0, 10, 10, 10, 10, 0),
(48, 'Wiewiórka', 2, 6, 25, 0, 0, 1, 1, 40, 1, 0, 2, 2, 2, 2, 0),
(49, 'Żaba', 2, 3, 0, 0, 1, 1, 1, 30, 0, 0, 6, 6, 6, 6, 0),
(50, 'Małżoszczęk', 2, 0, 33, 0, 0, 3, 11, 0, 0, 33, 0, 0, 3, 11, 0),
(51, 'Mantikora', 2, 5, 59, 34, 6, 6, 41, 40, 4, 0, 43, 24, 43, 43, 0),
(52, 'Mięsożerny chwytacz', 2, 7, 33, 0, 4, 5, 17, 10, 2, 0, 10, 5, 66, 89, 0),
(53, 'Niedźwiedź', 2, 4, 33, 0, 4, 4, 11, 30, 1, 0, 24, 10, 24, 24, 0),
(54, 'Nietoperz gigantyczny', 2, 1, 33, 0, 2, 2, 5, 30, 1, 0, 10, 14, 24, 24, 0),
(55, 'Nietoperz zwyczajny', 2, 0, 59, 0, 0, 1, 1, 30, 1, 0, 14, 5, 29, 29, 0),
(56, 'Orzeł', 2, 2, 67, 0, 5, 4, 17, 50, 2, 0, 43, 29, 43, 43, 0),
(57, 'Ośmiornica bagienna', 2, 3, 33, 0, 8, 8, 17, 60, 8, 0, 66, 2, 66, 66, 0),
(58, 'Pegaz', 2, 8, 33, 0, 4, 3, 5, 30, 1, 0, 10, 14, 10, 10, 0),
(59, 'Pies bojowy', 2, 6, 41, 0, 3, 3, 7, 30, 1, 0, 43, 14, 43, 43, 0),
(60, 'Pijawka gigantyczna', 2, 3, 33, 0, 2, 2, 5, 30, 1, 0, 14, 1, 14, 14, 0),
(61, 'Skorpion gigantyczny', 2, 5, 33, 0, 5, 4, 17, 10, 3, 0, 43, 2, 24, 6, 0),
(62, 'Smok', 2, 6, 59, 0, 7, 7, 59, 30, 6, 0, 89, 41, 89, 89, 24),
(63, 'Sowa', 2, 2, 59, 0, 5, 4, 17, 50, 2, 0, 66, 43, 66, 89, 43),
(64, 'Szczur gigantyczny', 2, 6, 25, 0, 3, 3, 5, 30, 1, 0, 14, 14, 18, 18, 0),
(65, 'Szczur skalny', 2, 6, 25, 0, 2, 2, 5, 30, 1, 0, 14, 14, 18, 18, 0),
(66, 'Szczur zwyczajny', 2, 4, 33, 0, 0, 1, 1, 30, 1, 0, 14, 10, 14, 14, 0),
(67, 'Wąż gigantyczny', 2, 3, 33, 25, 3, 3, 5, 60, 1, 0, 24, 6, 43, 43, 0),
(68, 'Gigantyczny grzechotnik', 2, 3, 33, 0, 3, 3, 5, 10, 1, 0, 24, 6, 66, 66, 0),
(69, 'Wąż skalny', 2, 3, 33, 0, 3, 3, 11, 60, 1, 0, 24, 6, 43, 43, 0),
(70, 'Żmija', 2, 3, 33, 0, 1, 2, 3, 30, 1, 0, 24, 10, 24, 24, 0),
(71, 'Wilk Chaosu', 2, 9, 50, 0, 4, 4, 17, 40, 2, 0, 66, 29, 29, 29, 0),
(72, 'Wilk Wielki', 2, 9, 41, 0, 3, 3, 5, 30, 1, 0, 10, 14, 14, 14, 0),
(73, 'Wilk stadny', 2, 9, 33, 0, 2, 2, 5, 30, 3, 0, 10, 10, 14, 14, 0),
(74, 'Wyvern', 2, 4, 25, 0, 5, 6, 17, 10, 3, 0, 14, 14, 14, 14, 0),
(75, 'Złotoczerw', 2, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(76, 'Zoat', 2, 7, 59, 25, 5, 5, 18, 50, 2, 43, 89, 89, 89, 89, 43),
(77, 'Bizon', 2, 7, 33, 0, 5, 5, 17, 30, 1, 0, 18, 10, 14, 14, 0),
(78, 'Łoś', 2, 7, 33, 0, 3, 3, 11, 30, 1, 0, 6, 6, 6, 6, 0),
(79, 'Żłów smoczy', 2, 6, 33, 0, 4, 4, 17, 30, 2, 0, 29, 10, 29, 29, 0),
(80, 'Żuk gigantyczny', 2, 5, 33, 0, 3, 3, 11, 10, 2, 0, 43, 2, 24, 6, 0),
(81, 'Jednorożec', 2, 8, 50, 0, 3, 3, 17, 40, 2, 0, 89, 18, 89, 89, 0),
(82, 'Pająkk gigantyczny', 2, 5, 33, 0, 5, 4, 17, 10, 2, 0, 43, 2, 24, 6, 0),
(83, 'Gnilec', 3, 4, 33, 0, 3, 3, 11, 40, 3, 0, 29, 10, 29, 29, 0),
(84, 'Ghoul', 3, 4, 25, 0, 3, 4, 5, 30, 2, 43, 6, 18, 43, 43, 0),
(85, 'Licz', 3, 4, 41, 25, 4, 4, 23, 60, 4, 43, 89, 89, 89, 89, 0),
(86, 'Mumia', 3, 2, 33, 0, 4, 5, 23, 30, 2, 24, 89, 43, 43, 89, 0),
(87, 'Wampir', 3, 0, 30, 30, 3, 3, 15, 30, 3, 20, 20, 20, 20, 20, 20),
(88, 'Zombi', 3, 4, 25, 0, 3, 3, 5, 10, 1, 10, 10, 14, 14, 14, 0),
(89, 'Bagienny ognik', 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90, 'Duch', 4, 4, 25, 0, 0, 3, 17, 30, 1, 0, 18, 18, 18, 18, 29),
(91, 'Upiór', 4, 4, 17, 0, 3, 4, 11, 30, 2, 0, 18, 18, 18, 18, 0),
(92, 'Widmo', 4, 4, 41, 0, 0, 4, 23, 40, 4, 0, 18, 18, 18, 18, 29),
(93, 'Zjawa', 4, 4, 33, 0, 0, 4, 17, 30, 1, 18, 18, 18, 18, 18, 0),
(94, 'Żywiołaki', 4, 9, 90, 90, 9, 9, 90, 90, 9, 90, 90, 90, 90, 90, 0),
(95, 'Baalrukh', 5, 6, 90, 93, 7, 7, 89, 100, 10, 89, 89, 89, 89, 89, 18),
(96, 'Demon Wielki', 5, 6, 90, 93, 7, 7, 59, 100, 10, 89, 89, 89, 89, 89, 89),
(97, 'Demon mniejszy', 5, 4, 50, 42, 4, 3, 5, 60, 2, 89, 89, 89, 89, 89, 14),
(98, 'Demoniczny sługa', 5, 8, 33, 0, 4, 3, 5, 30, 1, 0, 10, 10, 10, 10, 0),
(99, 'Mabrothax', 5, 6, 90, 93, 10, 10, 59, 100, 10, 89, 89, 89, 89, 89, 0),
(100, 'Mardagg', 5, 6, 90, 93, 10, 10, 67, 100, 10, 89, 89, 89, 89, 89, 0),
(101, 'Viydagg', 5, 6, 90, 93, 10, 10, 67, 100, 10, 89, 89, 89, 89, 89, 0),
(102, 'Czerw słoneczny', 2, 1, 33, 0, 4, 4, 11, 60, 0, 0, 14, 14, 14, 14, 0),
(103, 'Goblin mniejszy', 1, 4, 25, 25, 2, 2, 5, 40, 1, 24, 18, 18, 18, 18, 18);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `placement`
--

CREATE TABLE `placement` (
  `placement_id` int(11) NOT NULL,
  `placement_name` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `placement`
--

INSERT INTO `placement` (`placement_id`, `placement_name`) VALUES
(1, 'ekwipunek'),
(2, 'b_reczna'),
(3, 'br_strzelecka'),
(4, 'wierzchowiec'),
(5, 'cialo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `profession_name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `advancement` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `professions`
--

INSERT INTO `professions` (`id`, `profession_name`, `class_id`, `advancement`) VALUES
(1, 'Aptekarz', 4, 0),
(2, 'Banita', 1, 0),
(3, 'Bydłokrad', 3, 0),
(4, 'Cyrkowiec - akrobata', 3, 0),
(5, 'Cyrkowiec - aktor', 3, 0),
(6, 'Cyrkowiec - treser', 3, 0),
(7, 'Cyrkowiec - bentlarz', 3, 0),
(8, 'Cyrkowiec - komik', 3, 0),
(9, 'Cyrkowiec - eskapolog', 3, 0),
(10, 'Cyrkowiec - połykacz ognia', 3, 0),
(11, 'Cyrkowiec - jasnowidz', 3, 0),
(12, 'Cyrkowiec - hipnotyzer', 3, 0),
(13, 'Cyrkowiec - parodysta', 3, 0),
(14, 'Cyrkowiec - trefniś', 3, 0),
(15, 'Cyrkowiec - żongler', 3, 0),
(16, 'Cyrkowiec - miotacz noży', 3, 0),
(17, 'Cyrkowiec - malarz uliczny', 3, 0),
(18, 'Cyrkowiec - wierszokleta', 3, 0),
(19, 'Cyrkowiec - śpiewak', 3, 0),
(20, 'Cyrkowiec - siłacz', 3, 0),
(21, 'Cyrkowiec - linoskoczek', 3, 0),
(22, 'Cyrkowiec - trubadur', 3, 0),
(23, 'Cyrkowiec - brzuchomówca', 3, 0),
(24, 'Cyrkowiec - Zapaśnik', 3, 0),
(25, 'Czeladnik', 4, 0),
(26, 'Druid', 4, 0),
(27, 'Drwal', 2, 0),
(28, 'Gajowy', 2, 0),
(29, 'Gawędziarz', 3, 0),
(30, 'Giermek', 1, 0),
(31, 'Gladiator', 1, 0),
(32, 'Goniec', 2, 0),
(33, 'Handlarz', 4, 0),
(34, 'Hiena cmentarna', 3, 0),
(35, 'Hipnotyzer', 4, 0),
(36, 'Inżynier', 4, 0),
(37, 'Łowca nagród', 2, 0),
(38, 'Milicjant', 1, 0),
(39, 'Minstrel', 3, 0),
(40, 'Myśliwy', 2, 0),
(41, 'Mytnik', 2, 0),
(42, 'Najemnik', 1, 0),
(43, 'Nowicjusz', 4, 0),
(44, 'Ochroniarz', 1, 0),
(45, 'Oprych', 3, 0),
(46, 'Pasterz', 2, 0),
(47, 'Pilot', 2, 0),
(48, 'Poborca podatkowy', 4, 0),
(49, 'Podżegacz', 3, 0),
(50, 'Poganiacz mułów', 2, 0),
(51, 'Porywacz zwłok', 3, 0),
(52, 'Poszukiwacz złota', 2, 0),
(53, 'Przemytnik', 3, 0),
(54, 'Przepatrywacz', 2, 0),
(55, 'Przewoźnik', 2, 0),
(56, 'Rajfur', 3, 0),
(57, 'Robotnik', 1, 0),
(58, 'Rybak', 2, 0),
(59, 'Skryba', 4, 0),
(60, 'Sługa', 1, 0),
(61, 'Strażnik dróg', 2, 0),
(62, 'Strażnik miejski', 1, 0),
(63, 'Strażnik więzienny', 3, 0),
(64, 'Szczurołap', 2, 0),
(65, 'Szlachcic', 1, 0),
(66, 'Szuler', 3, 0),
(67, 'Traper', 2, 0),
(68, 'Uczeń alchemika', 4, 0),
(69, 'Uczeń czarodzieja', 4, 0),
(70, 'Uczeń medyka', 4, 0),
(71, 'Wędrowny kramarz', 3, 0),
(72, 'Wieszczek', 4, 0),
(73, 'Wojownik podziemny', 1, 0),
(74, 'Woźnica', 2, 0),
(75, 'Zabijaka', 1, 0),
(76, 'Zabójca trolli', 1, 0),
(77, 'Złodziej - zwykły', 3, 0),
(78, 'Złodziej - włamywacz', 3, 0),
(79, 'Złodziej - skrawarz', 3, 0),
(80, 'Złodziej - malwersant', 3, 0),
(81, 'Złodziej - kieszonkowiec', 3, 0),
(82, 'Zielarz', 4, 0),
(83, 'Żak', 4, 0),
(84, 'Żebrak', 3, 0),
(85, 'Żeglarz', 1, 0),
(86, 'Żołnierz', 1, 0),
(87, 'Żołnierz okrętowy', 1, 0),
(88, 'Alchemik - poz. 1', 0, 1),
(89, 'Alchemik - poz. 2', 0, 1),
(90, 'Alchemik - poz. 3', 0, 1),
(91, 'Alchemik - poz. 4', 0, 1),
(92, 'Balistyk', 0, 1),
(93, 'Bakałarz', 0, 1),
(94, 'Bombardier', 0, 1),
(95, 'Czarodziej - poz. 1', 0, 1),
(96, 'Czarodziej - poz. 2', 0, 1),
(97, 'Czarodziej - poz. 3', 0, 1),
(98, 'Czarodziej - poz. 4', 0, 1),
(99, 'Demonolog - poz. 1', 0, 1),
(100, 'Demonolog - poz. 2', 0, 1),
(101, 'Demonolog - poz. 3', 0, 1),
(102, 'Demonolog - poz. 4', 0, 1),
(103, 'Elementalista - poz. 1', 0, 1),
(104, 'Elementalista - poz. 2', 0, 1),
(105, 'Elementalista - poz. 3', 0, 1),
(106, 'Elementalista - poz. 4', 0, 1),
(107, 'Iluzjonista - poz. 1', 0, 1),
(108, 'Iluzjonista - poz. 2', 0, 1),
(109, 'Iluzjonista - poz. 3', 0, 1),
(110, 'Iluzjonista - poz. 4', 0, 1),
(111, 'Nekromanta - poz. 1', 0, 1),
(112, 'Nekromanta - poz. 2', 0, 1),
(113, 'Nekromanta - poz. 3', 0, 1),
(114, 'Nekromanta - poz. 4', 0, 1),
(115, 'Demagog', 0, 1),
(116, 'Fałszesz', 0, 1),
(117, 'Handlarz niewolników', 0, 1),
(118, 'Herszt banitów', 0, 1),
(119, 'Bosman', 0, 1),
(120, 'Kapitan', 0, 1),
(121, 'Kapłan - poz. 1', 0, 1),
(122, 'Kapłan - poz. 2', 0, 1),
(123, 'Kapłan - poz. 3', 0, 1),
(124, 'Kapłan - poz. 4', 0, 1),
(125, 'Kapłan druidzki - poz. 1', 0, 1),
(126, 'Kapłan druidzki - poz. 2', 0, 1),
(127, 'Kapłan druidzki - poz. 3', 0, 1),
(128, 'Kapłan druidzki - poz. 4', 0, 1),
(129, 'Kupiec', 0, 1),
(130, 'Łowca czarownic', 0, 1),
(131, 'Medyk', 0, 1),
(132, 'Nawigator', 0, 1),
(133, 'Odkrywca', 0, 1),
(134, 'Oprawca', 0, 1),
(135, 'Paser', 0, 1),
(136, 'Podrabiacz monet', 0, 1),
(137, 'Prawnik', 0, 1),
(138, 'Reketer', 0, 1),
(139, 'Rozbójnik', 0, 1),
(140, 'Rycerz najemny', 0, 1),
(141, 'Rycerz zakonny', 0, 1),
(142, 'Rzemieślnik - płatnerz', 0, 1),
(143, 'Rzemieślnik - kowal', 0, 1),
(144, 'Rzemieślnik - piwowar', 0, 1),
(145, 'Rzemieślnik - cieśla', 0, 1),
(146, 'Rzemieślnik - kaligraf', 0, 1),
(147, 'Rzemieślnik - stolarz', 0, 1),
(148, 'Rzemieślnik - kołodziej', 0, 1),
(149, 'Rzemieślnik - sklepikarz', 0, 1),
(150, 'Rzemieślnik - szewc', 0, 1),
(151, 'Rzemieślnik - bednarz', 0, 1),
(152, 'Rzemieślnik - grawer', 0, 1),
(153, 'Rzemieślnik - szklarz', 0, 1),
(154, 'Rzemieślnik - złotnik', 0, 1),
(155, 'Rzemieślnik - garncarz', 0, 1),
(156, 'Rzemieślnik - drukarz', 0, 1),
(157, 'Rzemieślnik - szkutnik', 0, 1),
(158, 'Rzemieślnik - kamieniarz', 0, 1),
(159, 'Rzemieślnik - krawiec', 0, 1),
(160, 'Rzemieślnik - grabarz', 0, 1),
(161, 'Saper', 0, 1),
(162, 'Sierżant najemników', 0, 1),
(163, 'Kapitan najemników', 0, 1),
(164, 'Strzelec', 0, 1),
(165, 'Szampierz', 0, 1),
(166, 'Szarlatan', 0, 1),
(167, 'Szpieg', 0, 1),
(168, 'Zabójca', 0, 1),
(169, 'Zabójca gigantów', 0, 1),
(170, 'Zwadźca', 0, 1),
(171, 'Zwiadowca', 0, 1),
(182, 'aa', 3, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `professions_inventory`
--

CREATE TABLE `professions_inventory` (
  `id` int(11) NOT NULL,
  `profession_id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `options` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `professions_inventory`
--

INSERT INTO `professions_inventory` (`id`, `profession_id`, `inventory_id`, `quality`, `options`) VALUES
(1, 1, 209, 1, 0),
(2, 1, 210, 0, 0),
(3, 2, 89, 1, 0),
(4, 2, 82, 1, 0),
(5, 2, 97, 6, 0),
(6, 2, 47, 1, 0),
(7, 2, 32, 1, 0),
(8, 3, 186, 1, 0),
(9, 3, 197, 1, 0),
(10, 3, 132, 1, 0),
(11, 3, 61, 1, 0),
(12, 3, 75, 1, 0),
(13, 3, 274, 1, 0),
(14, 3, 169, 10, 0),
(15, 6, 183, 1, 1),
(16, 6, 211, 1, 1),
(17, 6, 191, 4, 1),
(18, 7, 212, 3, 0),
(19, 7, 213, 3, 0),
(20, 7, 130, 1, 0),
(21, 9, 156, 4, 0),
(22, 9, 219, 4, 0),
(23, 10, 220, 1, 0),
(24, 12, 221, 1, 0),
(25, 15, 220, 6, 0),
(26, 16, 91, 6, 0),
(27, 17, 223, 6, 0),
(28, 18, 173, 4, 0),
(29, 21, 169, 6, 0),
(30, 22, 138, 1, 1),
(31, 22, 146, 1, 1),
(32, 22, 144, 1, 1),
(33, 23, 224, 1, 0),
(34, 25, 61, 1, 1),
(35, 25, 75, 1, 1),
(36, 25, 274, 1, 1),
(37, 25, 162, 1, 0),
(38, 26, 112, 1, 1),
(39, 26, 114, 1, 1),
(40, 26, 225, 1, 0),
(41, 26, 226, 1, 0),
(42, 26, 55, 1, 0),
(43, 27, 37, 1, 0),
(44, 27, 76, 1, 0),
(45, 28, 37, 1, 0),
(46, 28, 89, 1, 1),
(47, 28, 83, 1, 1),
(48, 28, 82, 1, 0),
(49, 28, 61, 1, 1),
(50, 28, 75, 1, 1),
(51, 28, 274, 1, 1),
(52, 28, 164, 1, 0),
(53, 29, 215, 1, 0),
(54, 29, 19, 1, 0),
(55, 30, 36, 1, 0),
(56, 30, 183, 1, 0),
(57, 30, 227, 1, 0),
(58, 30, 47, 1, 0),
(59, 31, 47, 1, 0),
(60, 31, 36, 1, 0),
(61, 31, 57, 1, 0),
(62, 31, 54, 1, 0),
(63, 31, 58, 1, 1),
(64, 31, 60, 1, 1),
(65, 31, 62, 1, 1),
(66, 31, 65, 1, 1),
(67, 32, 228, 1, 0),
(68, 32, 229, 1, 0),
(69, 32, 215, 1, 0),
(70, 33, 32, 1, 0),
(71, 34, 157, 1, 0),
(72, 34, 61, 1, 1),
(73, 34, 75, 1, 1),
(74, 34, 274, 1, 1),
(75, 34, 169, 10, 0),
(76, 34, 114, 4, 0),
(77, 34, 132, 1, 0),
(78, 34, 37, 1, 0),
(79, 35, 221, 1, 0),
(80, 36, 61, 1, 1),
(81, 36, 75, 1, 1),
(82, 36, 37, 1, 0),
(83, 36, 230, 1, 0),
(84, 36, 275, 4, 0),
(85, 36, 150, 60, 0),
(86, 36, 231, 4, 0),
(87, 36, 232, 1, 0),
(88, 36, 233, 10, 0),
(89, 36, 163, 1, 0),
(90, 36, 234, 1, 0),
(91, 36, 235, 6, 0),
(92, 36, 75, 1, 0),
(93, 36, 236, 1, 0),
(94, 36, 237, 1, 0),
(95, 37, 89, 1, 1),
(96, 37, 83, 1, 1),
(97, 37, 82, 1, 0),
(98, 37, 61, 1, 1),
(99, 37, 274, 1, 1),
(100, 37, 75, 1, 1),
(101, 37, 36, 1, 0),
(102, 37, 169, 1, 0),
(103, 37, 72, 1, 0),
(104, 37, 154, 4, 1),
(105, 38, 89, 1, 1),
(106, 38, 83, 1, 1),
(107, 38, 82, 1, 0),
(108, 38, 36, 1, 0),
(109, 38, 47, 1, 0),
(110, 38, 99, 1, 0),
(111, 39, 144, 1, 1),
(112, 39, 154, 1, 1),
(113, 39, 238, 1, 0),
(114, 39, 215, 1, 0),
(115, 40, 61, 1, 1),
(116, 40, 75, 1, 1),
(117, 40, 274, 1, 1),
(118, 40, 89, 1, 1),
(119, 40, 83, 1, 1),
(120, 40, 82, 1, 0),
(121, 41, 47, 1, 0),
(122, 41, 61, 1, 1),
(123, 41, 75, 1, 1),
(124, 41, 274, 1, 1),
(125, 41, 36, 1, 0),
(126, 42, 89, 1, 1),
(127, 42, 83, 1, 1),
(128, 42, 82, 1, 0),
(129, 42, 36, 1, 1),
(130, 42, 42, 1, 1),
(131, 42, 47, 1, 0),
(132, 43, 28, 1, 0),
(133, 43, 239, 1, 0),
(134, 44, 54, 1, 0),
(135, 44, 37, 1, 0),
(136, 44, 47, 1, 0),
(137, 45, 89, 1, 1),
(138, 45, 83, 1, 1),
(139, 45, 82, 1, 0),
(140, 45, 67, 1, 0),
(141, 45, 21, 1, 0),
(142, 45, 37, 1, 0),
(143, 45, 47, 1, 0),
(144, 46, 61, 1, 1),
(145, 46, 75, 1, 1),
(146, 46, 274, 1, 1),
(147, 46, 240, 1, 0),
(148, 46, 55, 1, 0),
(149, 46, 94, 1, 0),
(150, 47, 132, 2, 0),
(151, 47, 32, 1, 0),
(152, 47, 169, 10, 0),
(153, 47, 178, 1, 0),
(154, 48, 37, 1, 0),
(155, 48, 61, 1, 1),
(156, 48, 75, 1, 1),
(157, 48, 274, 1, 1),
(158, 48, 176, 1, 0),
(159, 48, 241, 1, 0),
(160, 49, 61, 1, 1),
(161, 49, 75, 1, 1),
(162, 49, 274, 1, 1),
(163, 49, 37, 1, 0),
(164, 49, 242, 20, 0),
(165, 50, 216, 1, 0),
(166, 50, 19, 1, 0),
(167, 50, 61, 1, 1),
(168, 50, 75, 1, 1),
(169, 50, 274, 1, 1),
(170, 50, 49, 1, 0),
(171, 51, 216, 1, 0),
(172, 51, 61, 1, 1),
(173, 51, 75, 1, 1),
(174, 51, 274, 1, 1),
(175, 51, 132, 1, 0),
(176, 51, 114, 1, 0),
(177, 51, 158, 1, 0),
(178, 52, 236, 1, 0),
(179, 52, 158, 1, 0),
(180, 52, 114, 1, 0),
(181, 52, 243, 1, 0),
(182, 52, 244, 1, 0),
(183, 52, 245, 1, 0),
(184, 53, 186, 1, 0),
(185, 53, 181, 1, 0),
(186, 53, 61, 1, 1),
(187, 53, 75, 1, 1),
(188, 53, 274, 1, 1),
(189, 53, 37, 1, 0),
(190, 53, 178, 1, 0),
(191, 54, 47, 1, 0),
(192, 54, 169, 10, 1),
(193, 54, 89, 1, 1),
(194, 54, 83, 1, 1),
(195, 54, 82, 1, 0),
(196, 54, 183, 1, 0),
(197, 54, 227, 1, 0),
(198, 55, 61, 1, 1),
(199, 55, 75, 1, 1),
(200, 55, 274, 1, 1),
(201, 55, 37, 1, 1),
(202, 55, 178, 1, 0),
(203, 56, 61, 1, 1),
(204, 56, 75, 1, 1),
(205, 56, 274, 1, 1),
(206, 56, 37, 1, 0),
(207, 57, 246, 1, 0),
(208, 57, 247, 1, 0),
(209, 57, 37, 1, 0),
(210, 58, 37, 1, 0),
(211, 58, 178, 1, 0),
(212, 59, 176, 1, 0),
(213, 60, 248, 1, 0),
(214, 60, 67, 1, 0),
(215, 61, 37, 1, 0),
(216, 61, 47, 1, 0),
(217, 61, 169, 10, 0),
(218, 61, 183, 1, 0),
(219, 61, 227, 1, 0),
(220, 61, 89, 1, 1),
(221, 61, 83, 1, 1),
(222, 61, 82, 1, 0),
(223, 62, 37, 1, 0),
(224, 62, 67, 1, 0),
(225, 62, 132, 1, 0),
(226, 62, 249, 1, 0),
(227, 63, 67, 1, 0),
(228, 63, 250, 1, 0),
(229, 63, 251, 1, 0),
(230, 63, 252, 1, 0),
(231, 64, 170, 2, 0),
(232, 64, 253, 6, 0),
(233, 64, 164, 6, 0),
(234, 64, 191, 1, 0),
(235, 64, 94, 1, 0),
(236, 65, 254, 1, 0),
(237, 65, 183, 1, 0),
(238, 65, 215, 1, 0),
(239, 66, 61, 1, 1),
(240, 66, 75, 1, 1),
(241, 66, 274, 1, 1),
(242, 66, 37, 1, 0),
(243, 66, 130, 1, 0),
(244, 66, 122, 1, 0),
(245, 66, 255, 1, 0),
(246, 67, 178, 1, 1),
(247, 67, 256, 1, 1),
(248, 67, 164, 4, 0),
(249, 67, 169, 10, 0),
(250, 67, 37, 1, 0),
(251, 67, 257, 1, 0),
(252, 67, 259, 1, 0),
(253, 67, 89, 1, 1),
(254, 67, 83, 1, 1),
(255, 67, 82, 1, 0),
(256, 70, 61, 1, 1),
(257, 70, 75, 1, 1),
(258, 70, 274, 1, 1),
(259, 70, 153, 1, 0),
(260, 70, 260, 1, 0),
(261, 70, 261, 6, 0),
(262, 71, 132, 1, 0),
(263, 71, 181, 1, 0),
(264, 71, 186, 1, 0),
(265, 71, 124, 1, 0),
(266, 71, 120, 4, 0),
(267, 71, 114, 4, 0),
(268, 71, 262, 4, 0),
(269, 71, 263, 4, 0),
(270, 71, 264, 12, 0),
(271, 71, 265, 300, 0),
(272, 71, 266, 6, 0),
(273, 71, 119, 1, 0),
(274, 74, 120, 4, 0),
(275, 71, 169, 10, 0),
(276, 72, 267, 1, 0),
(277, 73, 169, 10, 0),
(278, 73, 52, 1, 0),
(279, 73, 107, 1, 0),
(280, 73, 33, 1, 0),
(281, 73, 47, 1, 0),
(282, 73, 83, 1, 0),
(283, 73, 82, 1, 0),
(284, 73, 80, 6, 1),
(285, 74, 146, 1, 0),
(286, 74, 104, 1, 0),
(287, 74, 101, 1, 0),
(288, 74, 103, 6, 0),
(289, 74, 61, 1, 1),
(290, 74, 75, 1, 1),
(291, 74, 274, 1, 1),
(292, 74, 36, 1, 0),
(293, 75, 183, 1, 0),
(294, 75, 227, 1, 0),
(295, 75, 36, 1, 1),
(296, 75, 42, 1, 1),
(297, 75, 47, 1, 0),
(298, 76, 76, 1, 0),
(299, 77, 61, 1, 1),
(300, 77, 75, 1, 1),
(301, 77, 274, 1, 1),
(302, 77, 114, 1, 0),
(303, 78, 61, 1, 1),
(304, 78, 75, 1, 1),
(305, 78, 274, 1, 1),
(306, 78, 114, 215, 1),
(307, 78, 21, 1, 0),
(308, 78, 171, 1, 0),
(309, 78, 169, 10, 0),
(310, 79, 61, 1, 1),
(311, 79, 75, 1, 1),
(312, 79, 274, 1, 1),
(313, 79, 114, 1, 0),
(314, 79, 268, 1, 0),
(315, 79, 234, 1, 0),
(316, 80, 61, 1, 1),
(317, 80, 75, 1, 1),
(318, 80, 274, 1, 1),
(319, 80, 114, 1, 1),
(320, 81, 61, 1, 1),
(321, 81, 75, 1, 1),
(322, 81, 274, 1, 1),
(323, 81, 114, 1, 0),
(324, 82, 209, 1, 0),
(325, 82, 269, 1, 0),
(326, 83, 61, 1, 1),
(327, 83, 75, 1, 1),
(328, 83, 274, 1, 1),
(329, 83, 176, 1, 0),
(330, 83, 173, 3, 0),
(331, 84, 270, 1, 0),
(332, 84, 55, 1, 0),
(333, 84, 271, 1, 0),
(334, 84, 272, 1, 0),
(335, 85, 273, 1, 0),
(336, 86, 36, 1, 0),
(337, 86, 47, 1, 0),
(338, 86, 89, 1, 1),
(339, 86, 83, 1, 1),
(340, 86, 82, 1, 0),
(341, 87, 89, 1, 1),
(342, 87, 83, 1, 1),
(343, 87, 82, 1, 0),
(344, 87, 169, 10, 0),
(345, 87, 52, 1, 0),
(346, 87, 36, 1, 0),
(347, 87, 47, 1, 0),
(396, 182, 191, 1, 0),
(395, 182, 54, 1, 0),
(394, 182, 55, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `professions_skills`
--

CREATE TABLE `professions_skills` (
  `id` int(11) NOT NULL,
  `profession_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `chance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `professions_skills`
--

INSERT INTO `professions_skills` (`id`, `profession_id`, `skill_id`, `chance`) VALUES
(1, 1, 15, 0),
(2, 1, 48, 0),
(3, 1, 47, 0),
(4, 1, 27, 0),
(5, 1, 59, 0),
(6, 1, 111, 0),
(7, 1, 139, 0),
(8, 2, 106, 0),
(9, 2, 19, 0),
(10, 2, 82, 0),
(11, 2, 60, 0),
(12, 2, 124, 0),
(13, 2, 128, 0),
(14, 2, 107, 0),
(15, 2, 71, 0),
(16, 2, 119, 0),
(17, 2, 137, 0),
(18, 2, 37, 6),
(19, 2, 68, 6),
(20, 2, 62, 5),
(21, 2, 135, 0),
(22, 2, 12, 5),
(23, 3, 68, 0),
(24, 3, 19, 0),
(25, 3, 148, 0),
(26, 3, 136, 5),
(27, 3, 62, 3),
(28, 4, 1, 0),
(29, 5, 2, 0),
(30, 6, 62, 0),
(31, 6, 100, 0),
(32, 7, 28, 0),
(33, 7, 131, 0),
(34, 8, 40, 0),
(35, 8, 9, 0),
(36, 9, 126, 0),
(37, 10, 66, 0),
(38, 11, 16, 0),
(39, 12, 34, 0),
(40, 13, 56, 0),
(41, 14, 93, 0),
(42, 15, 133, 0),
(43, 16, 152, 0),
(44, 17, 90, 0),
(45, 18, 44, 0),
(46, 19, 95, 0),
(47, 20, 81, 0),
(48, 21, 1, 0),
(49, 21, 119, 0),
(50, 22, 95, 0),
(51, 22, 55, 0),
(52, 23, 10, 0),
(53, 24, 127, 0),
(54, 25, 68, 0),
(55, 25, 4, 4),
(56, 25, 6, 4),
(57, 26, 62, 0),
(58, 26, 76, 0),
(59, 26, 101, 0),
(60, 26, 74, 0),
(61, 26, 170, 0),
(62, 27, 106, 0),
(63, 27, 19, 0),
(64, 27, 101, 0),
(65, 27, 128, 0),
(66, 27, 124, 0),
(67, 27, 74, 0),
(68, 27, 141, 0),
(69, 27, 136, 0),
(70, 27, 158, 6),
(71, 28, 19, 0),
(72, 28, 12, 0),
(73, 28, 106, 0),
(74, 28, 136, 50),
(75, 28, 128, 0),
(76, 28, 124, 0),
(77, 28, 100, 2),
(78, 29, 28, 0),
(79, 29, 109, 0),
(80, 29, 29, 0),
(81, 29, 26, 4),
(82, 29, 108, 0),
(83, 29, 44, 0),
(84, 29, 9, 0),
(85, 30, 62, 0),
(86, 30, 100, 0),
(87, 30, 107, 0),
(88, 30, 33, 0),
(89, 30, 37, 0),
(90, 30, 82, 0),
(91, 31, 71, 0),
(92, 31, 107, 0),
(93, 31, 82, 0),
(94, 31, 13, 0),
(95, 31, 142, 0),
(96, 31, 4, 5),
(97, 31, 6, 5),
(98, 32, 5, 0),
(99, 32, 104, 0),
(100, 32, 120, 0),
(101, 32, 124, 0),
(102, 32, 18, 6),
(103, 32, 89, 5),
(104, 32, 101, 5),
(105, 33, 85, 0),
(106, 33, 97, 0),
(107, 33, 54, 0),
(108, 33, 69, 4),
(109, 33, 28, 4),
(110, 34, 19, 0),
(111, 34, 124, 0),
(112, 34, 18, 0),
(113, 34, 105, 0),
(114, 34, 106, 0),
(115, 34, 160, 6),
(116, 34, 137, 5),
(117, 34, 85, 5),
(118, 35, 34, 0),
(119, 35, 122, 0),
(120, 36, 84, 0),
(121, 36, 68, 0),
(122, 36, 36, 0),
(123, 36, 23, 0),
(124, 36, 161, 0),
(125, 36, 128, 0),
(126, 36, 43, 0),
(127, 36, 124, 0),
(128, 36, 51, 5),
(129, 37, 101, 0),
(130, 37, 94, 0),
(131, 37, 18, 0),
(132, 37, 19, 0),
(133, 37, 148, 0),
(134, 37, 82, 0),
(135, 37, 12, 5),
(136, 38, 107, 0),
(137, 38, 82, 0),
(138, 38, 68, 5),
(139, 38, 62, 4),
(140, 38, 37, 4),
(141, 39, 108, 0),
(142, 39, 26, 0),
(143, 39, 55, 0),
(144, 39, 44, 0),
(145, 39, 95, 0),
(146, 40, 101, 0),
(147, 40, 19, 0),
(148, 40, 49, 0),
(149, 40, 106, 0),
(150, 40, 136, 0),
(151, 40, 158, 0),
(152, 40, 59, 4),
(153, 41, 85, 0),
(154, 41, 97, 0),
(155, 42, 71, 0),
(156, 42, 107, 0),
(157, 42, 135, 0),
(158, 42, 82, 0),
(159, 42, 60, 0),
(160, 42, 68, 6),
(161, 42, 62, 5),
(162, 42, 37, 4),
(163, 43, 23, 0),
(164, 43, 114, 0),
(165, 43, 138, 0),
(166, 43, 98, 0),
(167, 44, 71, 0),
(168, 44, 157, 0),
(169, 44, 7, 0),
(170, 44, 82, 0),
(171, 44, 60, 0),
(172, 44, 4, 5),
(173, 45, 18, 0),
(174, 45, 19, 0),
(175, 45, 60, 0),
(176, 46, 62, 0),
(177, 46, 67, 0),
(178, 46, 55, 0),
(179, 46, 153, 0),
(180, 46, 129, 6),
(181, 46, 6, 6),
(182, 46, 100, 5),
(183, 47, 120, 0),
(184, 47, 65, 0),
(185, 47, 116, 0),
(186, 47, 133, 0),
(187, 47, 53, 3),
(188, 48, 28, 0),
(189, 48, 54, 0),
(190, 48, 23, 0),
(191, 48, 30, 0),
(192, 48, 69, 5),
(193, 48, 24, 3),
(194, 49, 44, 0),
(195, 49, 23, 0),
(196, 50, 62, 0),
(197, 50, 142, 0),
(198, 50, 68, 6),
(199, 50, 100, 4),
(200, 51, 19, 0),
(201, 51, 18, 0),
(202, 51, 124, 4),
(203, 52, 51, 0),
(204, 52, 84, 0),
(205, 52, 62, 0),
(206, 52, 120, 0),
(207, 52, 115, 0),
(208, 52, 77, 5),
(209, 52, 49, 5),
(210, 52, 87, 5),
(211, 52, 41, 3),
(212, 53, 19, 0),
(213, 53, 18, 0),
(214, 53, 116, 0),
(215, 53, 68, 0),
(216, 53, 53, 5),
(217, 53, 137, 0),
(218, 53, 130, 0),
(219, 54, 37, 0),
(220, 54, 101, 0),
(221, 54, 19, 0),
(222, 54, 62, 0),
(223, 54, 120, 0),
(224, 54, 148, 0),
(225, 54, 162, 6),
(226, 55, 77, 0),
(227, 55, 120, 0),
(228, 55, 116, 0),
(229, 55, 115, 0),
(230, 55, 4, 5),
(231, 55, 53, 4),
(232, 55, 88, 4),
(233, 56, 70, 0),
(234, 56, 137, 0),
(235, 56, 7, 0),
(236, 56, 9, 4),
(237, 57, 119, 0),
(238, 57, 53, 6),
(239, 57, 95, 6),
(240, 57, 84, 5),
(241, 57, 68, 5),
(242, 57, 36, 4),
(243, 57, 6, 4),
(244, 57, 4, 4),
(245, 58, 77, 0),
(246, 58, 133, 0),
(247, 58, 65, 0),
(248, 58, 115, 5),
(249, 58, 88, 4),
(250, 58, 41, 1),
(251, 59, 23, 0),
(252, 59, 164, 0),
(253, 59, 138, 0),
(254, 59, 130, 5),
(255, 60, 107, 0),
(256, 60, 26, 4),
(257, 60, 28, 4),
(258, 60, 33, 4),
(259, 60, 62, 4),
(260, 60, 68, 4),
(261, 60, 31, 2),
(262, 60, 37, 2),
(263, 61, 37, 0),
(264, 62, 82, 0),
(265, 62, 60, 0),
(266, 63, 58, 0),
(267, 63, 59, 0),
(268, 63, 131, 0),
(269, 63, 18, 0),
(270, 63, 6, 5),
(271, 63, 4, 4),
(272, 63, 53, 4),
(273, 64, 100, 0),
(274, 64, 58, 0),
(275, 64, 59, 0),
(276, 64, 128, 0),
(277, 64, 124, 0),
(278, 64, 18, 0),
(279, 64, 153, 0),
(280, 65, 37, 0),
(281, 65, 9, 0),
(282, 65, 26, 0),
(283, 65, 33, 0),
(284, 65, 87, 0),
(285, 65, 28, 0),
(286, 65, 23, 0),
(287, 65, 108, 0),
(288, 65, 91, 5),
(289, 65, 44, 5),
(290, 65, 53, 4),
(291, 65, 143, 4),
(292, 65, 55, 2),
(293, 66, 91, 0),
(294, 66, 87, 0),
(295, 66, 131, 0),
(296, 67, 19, 0),
(297, 67, 128, 0),
(298, 67, 136, 0),
(299, 67, 120, 0),
(300, 67, 106, 0),
(301, 67, 124, 0),
(302, 67, 158, 0),
(303, 67, 116, 0),
(304, 68, 64, 0),
(305, 68, 85, 0),
(306, 68, 23, 0),
(307, 68, 15, 5),
(308, 69, 164, 0),
(309, 69, 78, 0),
(310, 69, 23, 0),
(311, 69, 138, 0),
(312, 69, 114, 5),
(313, 70, 23, 0),
(314, 70, 114, 0),
(315, 70, 138, 0),
(316, 70, 47, 5),
(317, 70, 48, 5),
(318, 70, 27, 5),
(319, 70, 111, 5),
(320, 71, 62, 0),
(321, 71, 28, 0),
(322, 71, 68, 0),
(323, 71, 85, 0),
(324, 71, 97, 0),
(325, 71, 129, 0),
(326, 71, 163, 0),
(327, 71, 157, 0),
(328, 71, 3, 2),
(329, 72, 164, 0),
(330, 72, 118, 0),
(331, 72, 123, 0),
(332, 72, 28, 5),
(333, 72, 44, 5),
(334, 72, 67, 5),
(335, 73, 120, 0),
(336, 73, 107, 0),
(337, 73, 82, 0),
(338, 73, 13, 0),
(339, 73, 119, 0),
(340, 73, 60, 0),
(341, 74, 68, 0),
(342, 74, 37, 0),
(343, 74, 55, 0),
(344, 74, 62, 0),
(345, 74, 156, 0),
(346, 75, 7, 0),
(347, 75, 82, 0),
(348, 75, 60, 0),
(349, 75, 107, 0),
(350, 75, 37, 0),
(351, 75, 13, 0),
(352, 75, 71, 0),
(353, 76, 7, 0),
(354, 76, 82, 0),
(355, 76, 71, 0),
(356, 76, 107, 0),
(357, 76, 141, 0),
(358, 77, 19, 0),
(359, 77, 18, 0),
(360, 77, 105, 0),
(361, 77, 137, 0),
(362, 77, 160, 0),
(363, 77, 85, 4),
(364, 78, 19, 0),
(365, 78, 18, 0),
(366, 78, 105, 0),
(367, 78, 137, 0),
(368, 78, 160, 0),
(369, 78, 85, 4),
(370, 78, 119, 0),
(371, 78, 124, 0),
(372, 78, 63, 0),
(373, 78, 121, 0),
(374, 79, 18, 0),
(375, 79, 19, 0),
(376, 79, 105, 0),
(377, 79, 137, 0),
(378, 79, 160, 0),
(379, 79, 85, 4),
(380, 79, 131, 0),
(381, 80, 19, 0),
(382, 80, 18, 0),
(383, 80, 105, 0),
(384, 80, 137, 0),
(385, 80, 160, 0),
(386, 80, 85, 4),
(387, 80, 131, 0),
(388, 80, 23, 5),
(389, 80, 30, 4),
(390, 81, 19, 0),
(391, 81, 18, 0),
(392, 81, 105, 0),
(393, 81, 137, 0),
(395, 81, 85, 4),
(396, 81, 104, 0),
(397, 81, 131, 0),
(398, 81, 25, 0),
(399, 82, 167, 0),
(400, 82, 47, 0),
(401, 82, 48, 0),
(402, 82, 129, 0),
(403, 82, 74, 0),
(404, 82, 23, 0),
(405, 82, 138, 0),
(406, 82, 111, 3),
(407, 83, 164, 0),
(408, 83, 23, 0),
(409, 83, 138, 0),
(410, 83, 53, 4),
(411, 83, 35, 3),
(412, 83, 3, 2),
(413, 83, 41, 2),
(414, 83, 74, 2),
(415, 83, 55, 2),
(416, 83, 130, 2),
(417, 84, 132, 0),
(418, 84, 137, 0),
(419, 84, 160, 0),
(420, 84, 19, 0),
(421, 84, 53, 4),
(422, 84, 105, 0),
(423, 85, 107, 0),
(424, 85, 133, 0),
(425, 85, 116, 0),
(426, 85, 65, 0),
(427, 85, 119, 0),
(428, 85, 82, 0),
(429, 85, 53, 6),
(430, 85, 7, 0),
(431, 85, 130, 0),
(432, 86, 71, 0),
(433, 86, 107, 0),
(434, 86, 82, 0),
(435, 86, 62, 5),
(436, 86, 37, 4),
(437, 86, 135, 0),
(438, 86, 7, 0),
(439, 87, 53, 0),
(440, 87, 107, 0),
(441, 87, 116, 0),
(442, 87, 60, 0),
(443, 87, 65, 4),
(444, 87, 82, 0),
(445, 87, 135, 0),
(446, 87, 71, 0),
(447, 2, 158, 3),
(448, 28, 159, 0),
(449, 31, 144, 0),
(450, 31, 141, 0),
(451, 31, 157, 0),
(452, 37, 169, 0),
(453, 54, 158, 6),
(454, 81, 160, 0),
(455, 82, 139, 0),
(497, 182, 131, 0),
(496, 182, 85, 0),
(495, 182, 41, 0),
(494, 182, 30, 0),
(493, 182, 29, 0),
(492, 182, 22, 0),
(491, 182, 18, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `professions_statistics`
--

CREATE TABLE `professions_statistics` (
  `id` int(11) NOT NULL,
  `sz` int(11) NOT NULL,
  `ww` int(11) NOT NULL,
  `us` int(11) NOT NULL,
  `s` int(11) NOT NULL,
  `wt` int(11) NOT NULL,
  `zw` int(11) NOT NULL,
  `ini` int(11) NOT NULL,
  `a` int(11) NOT NULL,
  `zr` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  `intel` int(11) NOT NULL,
  `op` int(11) NOT NULL,
  `sw` int(11) NOT NULL,
  `ogd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `professions_statistics`
--

INSERT INTO `professions_statistics` (`id`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `ini`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`) VALUES
(1, 0, 0, 0, 0, 0, 1, 0, 0, 10, 0, 10, 0, 0, 0),
(2, 0, 10, 10, 0, 0, 2, 10, 1, 0, 0, 0, 10, 0, 0),
(3, 0, 10, 10, 1, 0, 2, 10, 0, 0, 0, 0, 0, 0, 0),
(4, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(5, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(6, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(7, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(8, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(9, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(10, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(11, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(12, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(13, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(14, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(15, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(16, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(17, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(18, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(19, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(20, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(21, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(22, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(23, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(24, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 0, 0, 0, 10),
(25, 0, 0, 0, 0, 0, 1, 10, 0, 10, 0, 0, 10, 0, 0),
(26, 0, 10, 10, 0, 0, 1, 10, 0, 0, 0, 10, 10, 10, 0),
(27, 0, 10, 10, 1, 0, 2, 10, 0, 0, 0, 0, 10, 0, 0),
(28, 0, 0, 20, 1, 0, 2, 0, 0, 0, 0, 0, 10, 0, 0),
(29, 0, 10, 0, 0, 0, 1, 0, 0, 0, 10, 10, 10, 0, 10),
(30, 0, 10, 10, 0, 0, 2, 10, 1, 0, 10, 0, 0, 0, 10),
(31, 0, 20, 0, 0, 1, 2, 10, 0, 10, 0, 0, 10, 0, 0),
(32, 1, 20, 0, 1, 1, 1, 10, 0, 10, 0, 0, 10, 0, 0),
(33, 0, 10, 0, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 10),
(34, 0, 10, 0, 0, 0, 2, 10, 0, 10, 0, 0, 10, 10, 0),
(35, 0, 0, 0, 0, 0, 1, 10, 0, 10, 0, 10, 0, 0, 0),
(36, 0, 10, 10, 0, 0, 2, 0, 0, 10, 0, 10, 0, 0, 0),
(37, 0, 10, 10, 1, 0, 2, 10, 0, 0, 0, 0, 10, 0, 0),
(38, 0, 10, 10, 1, 0, 2, 10, 1, 0, 0, 0, 0, 0, 0),
(39, 0, 10, 10, 0, 0, 2, 10, 0, 20, 10, 10, 0, 0, 10),
(40, 0, 0, 20, 1, 0, 2, 10, 0, 0, 0, 0, 0, 10, 0),
(41, 0, 10, 10, 0, 0, 2, 10, 0, 0, 0, 0, 0, 0, 0),
(42, 0, 10, 10, 1, 0, 2, 10, 1, 0, 10, 0, 10, 0, 0),
(43, 0, 0, 0, 0, 0, 1, 10, 0, 0, 0, 0, 10, 10, 10),
(44, 0, 20, 0, 1, 0, 2, 10, 1, 0, 0, 0, 0, 0, 0),
(45, 0, 10, 10, 1, 0, 2, 10, 0, 0, 0, 0, 0, 0, 0),
(46, 0, 0, 20, 1, 0, 2, 10, 0, 0, 0, 0, 0, 0, 0),
(47, 0, 0, 0, 0, 0, 1, 10, 0, 10, 0, 0, 10, 0, 10),
(48, 0, 10, 0, 0, 0, 2, 10, 0, 0, 0, 10, 10, 0, 0),
(49, 0, 10, 10, 0, 0, 2, 10, 0, 0, 10, 0, 0, 0, 10),
(50, 0, 10, 0, 0, 0, 2, 0, 0, 0, 0, 10, 10, 0, 0),
(51, 0, 10, 10, 0, 0, 2, 10, 0, 0, 0, 0, 10, 0, 0),
(52, 0, 10, 10, 1, 1, 2, 0, 1, 0, 0, 0, 10, 0, 0),
(53, 0, 10, 10, 0, 0, 2, 10, 0, 0, 0, 0, 0, 0, 10),
(54, 0, 10, 10, 1, 0, 2, 10, 0, 0, 0, 10, 10, 0, 0),
(55, 0, 10, 10, 0, 0, 2, 10, 0, 0, 0, 0, 10, 0, 0),
(56, 0, 10, 10, 0, 0, 2, 10, 0, 0, 0, 0, 0, 0, 10),
(57, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(58, 0, 0, 0, 1, 0, 1, 0, 0, 10, 0, 0, 0, 0, 0),
(59, 0, 0, 0, 0, 0, 1, 10, 0, 0, 10, 0, 0, 10, 10),
(60, 0, 10, 0, 0, 0, 2, 10, 0, 0, 0, 0, 0, 10, 0),
(61, 0, 10, 10, 1, 0, 2, 10, 0, 0, 10, 0, 0, 0, 0),
(62, 0, 10, 10, 1, 0, 2, 10, 1, 0, 0, 0, 0, 0, 0),
(63, 0, 10, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 10, 0),
(64, 0, 10, 10, 0, 0, 1, 0, 0, 10, 0, 0, 10, 0, 0),
(65, 0, 10, 10, 0, 0, 2, 10, 0, 10, 20, 0, 10, 0, 10),
(66, 0, 0, 10, 0, 0, 2, 10, 0, 10, 0, 10, 0, 0, 10),
(67, 0, 10, 10, 1, 0, 2, 10, 0, 10, 0, 0, 0, 0, 0),
(68, 0, 0, 0, 0, 0, 1, 0, 0, 10, 0, 10, 0, 0, 0),
(69, 0, 0, 0, 0, 0, 1, 0, 0, 10, 0, 10, 0, 10, 0),
(70, 0, 0, 0, 0, 0, 1, 10, 0, 0, 0, 10, 10, 0, 0),
(71, 0, 10, 10, 1, 0, 2, 10, 0, 0, 0, 0, 0, 0, 10),
(72, 0, 0, 0, 0, 0, 1, 0, 0, 0, 10, 0, 10, 10, 10),
(73, 0, 10, 0, 1, 1, 2, 10, 1, 0, 10, 0, 10, 0, 0),
(74, 0, 10, 10, 0, 0, 2, 10, 0, 0, 0, 0, 10, 0, 0),
(75, 0, 10, 0, 1, 0, 2, 10, 1, 0, 0, 0, 20, 0, 0),
(76, 0, 10, 10, 1, 0, 4, 10, 1, 10, 0, 0, 20, 0, 0),
(77, 0, 10, 10, 0, 0, 2, 10, 0, 10, 0, 0, 0, 0, 10),
(78, 0, 10, 10, 0, 0, 2, 10, 0, 10, 0, 0, 0, 0, 10),
(79, 0, 10, 10, 0, 0, 2, 10, 0, 10, 0, 0, 0, 0, 10),
(80, 0, 10, 10, 0, 0, 2, 10, 0, 10, 0, 0, 0, 0, 10),
(81, 0, 10, 10, 0, 0, 2, 10, 0, 10, 0, 0, 0, 0, 10),
(82, 0, 0, 0, 0, 0, 1, 0, 0, 10, 0, 10, 0, 0, 0),
(83, 0, 0, 0, 0, 0, 1, 10, 0, 0, 0, 10, 10, 0, 10),
(84, 0, 10, 10, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0),
(85, 0, 10, 10, 1, 0, 2, 10, 1, 0, 0, 0, 0, 0, 0),
(86, 0, 10, 10, 0, 0, 2, 10, 1, 0, 10, 0, 0, 0, 0),
(87, 0, 10, 10, 1, 0, 2, 10, 1, 0, 0, 0, 10, 0, 0),
(88, 0, 0, 0, 0, 0, 2, 10, 0, 10, 0, 10, 0, 0, 0),
(89, 0, 10, 10, 1, 1, 3, 20, 0, 20, 10, 20, 10, 10, 0),
(90, 0, 10, 10, 1, 1, 4, 30, 0, 30, 20, 30, 20, 20, 0),
(91, 0, 10, 10, 1, 1, 4, 40, 0, 40, 30, 30, 30, 30, 0),
(92, 0, 10, 20, 1, 1, 2, 20, 0, 10, 10, 20, 10, 10, 0),
(93, 0, 10, 10, 0, 0, 2, 30, 0, 10, 0, 30, 10, 30, 10),
(94, 0, 10, 20, 1, 1, 2, 20, 0, 10, 30, 10, 20, 10, 20),
(95, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 10, 0, 0, 0),
(96, 0, 10, 10, 1, 1, 3, 20, 0, 10, 10, 20, 10, 10, 0),
(97, 0, 10, 10, 1, 1, 4, 30, 0, 20, 20, 30, 20, 20, 0),
(98, 0, 10, 10, 1, 1, 4, 40, 0, 30, 30, 30, 30, 30, 0),
(99, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 10, 0, 0, 0),
(100, 0, 10, 10, 1, 1, 3, 20, 0, 10, 10, 20, 10, 10, 0),
(101, 0, 10, 10, 1, 1, 4, 30, 0, 20, 20, 30, 20, 20, 0),
(102, 0, 10, 10, 1, 1, 4, 40, 0, 30, 30, 30, 30, 30, 0),
(103, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 10, 0, 0, 0),
(104, 0, 10, 10, 1, 1, 3, 20, 0, 10, 10, 20, 10, 10, 0),
(105, 0, 10, 10, 1, 1, 4, 30, 0, 20, 20, 30, 20, 20, 0),
(106, 0, 10, 10, 1, 1, 4, 40, 0, 30, 30, 30, 30, 30, 0),
(107, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 10, 0, 0, 0),
(108, 0, 10, 10, 1, 1, 3, 20, 0, 10, 10, 20, 10, 10, 0),
(109, 0, 10, 10, 1, 1, 4, 30, 0, 20, 20, 30, 20, 20, 0),
(110, 0, 10, 10, 1, 1, 4, 40, 0, 30, 30, 30, 30, 30, 0),
(111, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 10, 0, 0, 0),
(112, 0, 10, 10, 1, 1, 3, 20, 0, 10, 10, 20, 10, 10, 0),
(113, 0, 10, 10, 1, 1, 4, 30, 0, 20, 20, 30, 20, 20, 0),
(114, 0, 10, 10, 1, 1, 4, 40, 0, 30, 30, 30, 30, 30, 0),
(115, 0, 10, 10, 0, 1, 3, 20, 1, 0, 30, 10, 20, 20, 40),
(116, 0, 20, 20, 1, 1, 3, 20, 1, 40, 10, 30, 30, 20, 20),
(117, 0, 20, 20, 2, 0, 4, 20, 0, 0, 10, 0, 20, 10, 0),
(118, 0, 20, 30, 1, 3, 5, 20, 2, 10, 30, 10, 10, 0, 10),
(119, 0, 20, 10, 1, 1, 4, 10, 1, 10, 10, 10, 10, 10, 10),
(120, 0, 30, 20, 1, 1, 6, 20, 2, 30, 30, 20, 30, 20, 30),
(121, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 10, 0, 0, 0),
(122, 0, 10, 10, 1, 1, 3, 20, 0, 10, 10, 20, 10, 10, 0),
(123, 0, 10, 10, 1, 1, 4, 30, 0, 20, 20, 30, 20, 20, 0),
(124, 0, 10, 10, 1, 1, 4, 40, 0, 30, 30, 30, 30, 30, 0),
(125, 0, 0, 0, 0, 0, 2, 10, 0, 0, 0, 0, 10, 10, 10),
(126, 0, 10, 10, 1, 1, 3, 20, 0, 10, 10, 10, 10, 20, 10),
(127, 0, 10, 10, 1, 1, 4, 20, 0, 20, 20, 20, 20, 30, 20),
(128, 0, 10, 10, 1, 1, 4, 30, 0, 30, 30, 30, 30, 30, 30),
(129, 0, 10, 10, 1, 1, 2, 20, 0, 10, 30, 30, 20, 20, 20),
(130, 0, 30, 30, 1, 1, 6, 30, 2, 20, 20, 10, 10, 40, 10),
(131, 0, 0, 0, 1, 1, 3, 10, 0, 30, 20, 30, 20, 20, 10),
(132, 0, 10, 0, 1, 1, 3, 20, 0, 10, 20, 30, 10, 20, 10),
(133, 0, 20, 20, 1, 1, 6, 0, 1, 20, 20, 30, 20, 20, 20),
(134, 0, 10, 0, 2, 0, 4, 10, 0, 10, 10, 10, 10, 20, 0),
(135, 0, 20, 20, 1, 0, 4, 20, 1, 10, 10, 0, 10, 10, 10),
(136, 0, 20, 20, 1, 0, 3, 20, 0, 20, 10, 10, 10, 10, 10),
(137, 0, 0, 0, 0, 1, 2, 10, 0, 10, 30, 40, 30, 30, 10),
(138, 0, 20, 20, 1, 1, 3, 10, 1, 0, 10, 0, 10, 0, 0),
(139, 0, 20, 20, 1, 1, 2, 40, 1, 30, 0, 20, 20, 20, 30),
(140, 0, 30, 0, 3, 1, 4, 20, 2, 0, 30, 10, 30, 0, 10),
(141, 0, 30, 30, 1, 2, 8, 30, 2, 20, 20, 20, 20, 20, 20),
(142, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(143, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(144, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(145, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(146, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(147, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(148, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(149, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(150, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(151, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(152, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(153, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(154, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(155, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(156, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(157, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(158, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(159, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(160, 0, 0, 0, 1, 1, 2, 20, 0, 20, 10, 0, 10, 10, 10),
(161, 0, 10, 10, 1, 1, 2, 0, 0, 10, 20, 10, 10, 0, 0),
(162, 0, 20, 20, 1, 1, 4, 20, 1, 10, 10, 10, 10, 10, 10),
(163, 0, 30, 30, 2, 2, 6, 20, 2, 10, 40, 0, 30, 10, 20),
(164, 0, 0, 40, 1, 1, 4, 20, 1, 30, 10, 10, 30, 10, 20),
(165, 0, 40, 0, 1, 1, 6, 20, 2, 10, 0, 10, 10, 0, 0),
(166, 0, 10, 10, 0, 1, 4, 20, 0, 20, 20, 20, 20, 20, 30),
(167, 0, 20, 20, 0, 1, 4, 20, 1, 20, 10, 20, 40, 0, 20),
(168, 0, 30, 30, 1, 1, 6, 30, 3, 30, 20, 20, 20, 20, 20),
(169, 0, 40, 0, 3, 3, 8, 20, 2, 10, 0, 0, 30, 0, 0),
(170, 0, 30, 30, 1, 3, 3, 20, 1, 0, 10, 30, 30, 20, 0),
(171, 0, 20, 20, 1, 1, 6, 20, 1, 10, 10, 10, 10, 10, 0),
(182, 0, 0, 10, 1, 1, 4, 10, 0, 10, 0, 10, 10, 10, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `race_add_skill`
--

CREATE TABLE `race_add_skill` (
  `id` int(11) NOT NULL,
  `raceID` int(11) NOT NULL,
  `min_age` int(3) NOT NULL,
  `max_age` int(4) NOT NULL,
  `add_skill` int(1) NOT NULL,
  `action` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `race_add_skill`
--

INSERT INTO `race_add_skill` (`id`, `raceID`, `min_age`, `max_age`, `add_skill`, `action`) VALUES
(1, 1, 21, 30, 1, 1),
(2, 1, 31, 40, 2, 1),
(3, 1, 41, 50, 1, 1),
(4, 1, 61, 70, 1, 2),
(5, 1, 71, 80, 2, 2),
(6, 2, 41, 90, 1, 1),
(7, 2, 91, 140, 2, 1),
(8, 2, 141, 190, 3, 1),
(9, 2, 191, 200, 2, 1),
(10, 2, 201, 210, 1, 1),
(11, 3, 41, 70, 1, 1),
(12, 3, 101, 120, 1, 2),
(13, 3, 121, 140, 2, 2),
(14, 4, 41, 70, 1, 1),
(15, 4, 71, 100, 2, 1),
(16, 4, 101, 130, 1, 1),
(17, 4, 171, 190, 1, 2),
(18, 4, 190, 200, 2, 2),
(24, 6, 0, 0, 0, 0),
(23, 6, 0, 0, 0, 0),
(22, 6, 16, 27, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `race_age`
--

CREATE TABLE `race_age` (
  `id` int(11) NOT NULL,
  `raceID` int(11) NOT NULL,
  `min_age` int(11) NOT NULL,
  `max_age` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `race_age`
--

INSERT INTO `race_age` (`id`, `raceID`, `min_age`, `max_age`) VALUES
(1, 1, 16, 80),
(2, 2, 16, 210),
(3, 3, 16, 140),
(4, 4, 16, 200),
(14, 6, 16, 38);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `race_skills`
--

CREATE TABLE `race_skills` (
  `id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `options` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `race_skills`
--

INSERT INTO `race_skills` (`id`, `race_id`, `skill_id`, `options`) VALUES
(1, 2, 11, 0),
(2, 2, 55, 1),
(3, 2, 95, 1),
(4, 2, 96, 1),
(5, 4, 32, 0),
(6, 4, 43, 1),
(7, 4, 51, 1),
(8, 3, 31, 0),
(9, 3, 153, 1),
(10, 3, 19, 1),
(16, 6, 3, 0),
(15, 6, 2, 0),
(14, 6, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rasa`
--

CREATE TABLE `rasa` (
  `raceID` int(1) NOT NULL,
  `raceName` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `sz` tinyint(3) NOT NULL,
  `ww` tinyint(3) NOT NULL,
  `us` tinyint(3) NOT NULL,
  `s` tinyint(3) NOT NULL,
  `wt` tinyint(3) NOT NULL,
  `zw` tinyint(3) NOT NULL,
  `i` tinyint(3) NOT NULL,
  `a` tinyint(3) NOT NULL,
  `zr` tinyint(3) NOT NULL,
  `cp` tinyint(3) NOT NULL,
  `intel` tinyint(3) NOT NULL,
  `op` tinyint(3) NOT NULL,
  `sw` tinyint(3) NOT NULL,
  `ogd` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rasa`
--

INSERT INTO `rasa` (`raceID`, `raceName`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `i`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`) VALUES
(1, 'Człowiek', 2, 20, 20, 1, 1, 4, 20, 1, 20, 20, 20, 20, 20, 20),
(2, 'Elf', 2, 30, 20, 1, 1, 3, 50, 1, 30, 30, 40, 40, 30, 30),
(3, 'Halfling', 2, 10, 20, 0, 0, 3, 40, 1, 30, 10, 20, 10, 30, 30),
(4, 'Krasnolud', 2, 30, 10, 1, 2, 5, 10, 1, 10, 40, 20, 40, 40, 10),
(6, 'wud', 1, 10, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `secret_language`
--

CREATE TABLE `secret_language` (
  `id` int(11) NOT NULL,
  `laguage_type` varchar(15) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `secret_language`
--

INSERT INTO `secret_language` (`id`, `laguage_type`) VALUES
(1, 'bitewny'),
(2, 'rangerów'),
(3, 'złodziei'),
(4, 'klasyczny'),
(5, 'gildii');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `skills_chance`
--

CREATE TABLE `skills_chance` (
  `id` int(11) NOT NULL,
  `chance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `skills_chance`
--

INSERT INTO `skills_chance` (`id`, `chance`) VALUES
(1, 5),
(2, 10),
(3, 20),
(4, 25),
(5, 50),
(6, 75);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `special_weapon`
--

CREATE TABLE `special_weapon` (
  `id` int(11) NOT NULL,
  `weapon_type` varchar(25) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `special_weapon`
--

INSERT INTO `special_weapon` (`id`, `weapon_type`) VALUES
(1, 'drzewcowa'),
(2, 'dwuręczna'),
(3, 'korbacz'),
(4, 'szermiercza'),
(5, 'parująca'),
(6, 'lanca'),
(7, 'sieć'),
(8, 'bomby'),
(9, 'zapalające'),
(10, 'lasso'),
(11, 'długi łuk'),
(12, 'kusza samopowtarzalna'),
(13, 'kusza pistoletowa'),
(14, 'rzucana'),
(15, 'proca');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `speed`
--

CREATE TABLE `speed` (
  `id` int(2) NOT NULL,
  `speed` int(2) NOT NULL,
  `carefully` float NOT NULL,
  `normal` float NOT NULL,
  `run` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `speed`
--

INSERT INTO `speed` (`id`, `speed`, `carefully`, `normal`, `run`) VALUES
(1, 1, 2, 4, 16),
(2, 2, 4, 8, 32),
(3, 3, 6, 12, 48),
(4, 4, 8, 16, 64),
(5, 5, 10, 20, 80),
(6, 6, 12, 24, 96),
(7, 7, 14, 28, 112),
(8, 8, 16, 32, 128),
(9, 9, 18, 36, 144),
(10, 10, 20, 40, 160),
(11, 11, 22, 44, 176),
(12, 12, 24, 48, 192),
(13, 13, 26, 52, 208),
(14, 14, 28, 56, 224),
(15, 15, 30, 60, 240),
(16, 16, 32, 64, 256),
(17, 17, 34, 68, 272),
(18, 18, 36, 72, 288),
(19, 19, 38, 76, 304),
(20, 20, 40, 80, 320),
(21, 1, 12, 24, 96),
(22, 2, 24, 48, 192),
(23, 3, 36, 72, 288),
(24, 4, 48, 96, 384),
(25, 5, 60, 12, 480),
(26, 6, 72, 144, 576),
(27, 7, 84, 168, 672),
(28, 8, 96, 192, 768),
(29, 9, 108, 216, 864),
(30, 10, 120, 240, 960),
(31, 11, 132, 264, 1056),
(32, 12, 144, 288, 1152),
(33, 13, 156, 312, 1248),
(34, 14, 168, 336, 1344),
(35, 15, 180, 360, 1440),
(36, 16, 192, 384, 1536),
(37, 17, 204, 408, 1632),
(38, 18, 216, 432, 1728),
(39, 19, 228, 456, 1824),
(40, 20, 240, 280, 1920),
(41, 1, 0.8, 1.6, 5.5),
(42, 2, 1.6, 2.7, 11.3),
(43, 3, 2, 4.3, 16.8),
(44, 4, 2.7, 5.5, 22.2),
(45, 5, 3.5, 7, 28),
(46, 6, 4.3, 8.2, 33.5),
(47, 7, 4.7, 9.8, 39),
(48, 8, 5.6, 11.6, 46),
(49, 9, 6.4, 12.8, 51.6),
(50, 10, 7.2, 14.4, 57.2),
(51, 11, 8, 15.6, 63.2),
(52, 12, 8.4, 17.2, 68.8),
(53, 13, 9.2, 18.8, 74.4),
(54, 14, 10, 20, 80),
(55, 15, 10.8, 21.6, 86),
(56, 16, 11.6, 22.8, 91.6),
(57, 17, 12.4, 24.4, 97.2),
(58, 18, 12.8, 25.6, 103.2),
(59, 19, 13.6, 27.2, 108.8),
(60, 20, 14.4, 28.8, 114.4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `spells`
--

CREATE TABLE `spells` (
  `id` int(11) NOT NULL,
  `spell_name_id` int(11) NOT NULL,
  `spell_type` int(11) NOT NULL,
  `spell_lvl` int(11) NOT NULL,
  `spell_cost_pm` int(11) NOT NULL,
  `spell_duration` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `spell_range` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `spell_components` varchar(256) COLLATE utf8_polish_ci NOT NULL,
  `spell_effect` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `spells`
--

INSERT INTO `spells` (`id`, `spell_name_id`, `spell_type`, `spell_lvl`, `spell_cost_pm`, `spell_duration`, `spell_range`, `spell_components`, `spell_effect`) VALUES
(1, 1, 1, 0, 1, '1 godzina', 'nieistotny', '2 świeliki', '153'),
(2, 2, 1, 0, 1, 'co najmniej 1 tura', 'słuch', 'język dowolnej istoty', '153'),
(3, 3, 1, 0, 1, '1 runda', 'słuch', 'mała tuba', '153'),
(4, 4, 1, 0, 3, '> 1 tydzień', '1 metr', 'odrobina kleju', '153'),
(5, 5, 1, 0, 2, 'do aktywacji', 'dotyk', 'mały dzwoneczek', '153'),
(6, 6, 1, 0, 1, 'dopóki nie zostanie zgaszony', 'osoba rzucająca', 'żadne', '153'),
(7, 7, 1, 0, 3, 'chwila', '1 metr', 'mały srebrny kluczyk', '153'),
(8, 8, 1, 0, 1, 'co najmniej 1 godzina', 'dotyk', 'dowolny wybrany przedmiot', '153/154'),
(9, 9, 1, 0, 1, 'do czasu rozporszenia', '12', 'włosy, paznokcie itp. ofiary', '154'),
(10, 10, 1, 0, 1, '1 godzina', 'osoba rzucająca', 'kawałek zwierzęcego futra', '154'),
(11, 11, 1, 0, 1, '1 godzina', 'osoba rzucająca', 'kulka wosku', '154'),
(12, 12, 1, 0, 1, '1 godzina', 'osoba rzucająca', 'płonąca pochodznia', '154'),
(13, 13, 1, 0, 2, 'nieistotny', 'osoba rzucająca', 'żadne', '154'),
(14, 14, 1, 0, 2, 'K6 tur', 'dotyk', 'odrobina puchu', '155'),
(15, 15, 1, 0, 1, 'chwila', 'dotyk', 'żadne', '155'),
(16, 16, 1, 0, 3, 'co najmniej 1 tydzień', '1 metr', 'mały zamek', '155'),
(17, 17, 1, 0, 1, '1 godzina', 'osoba rzucająca', 'miniaturowy parasol', '155'),
(18, 18, 2, 1, 2, '1 godzina/poziom', 'osoba rzucająca', 'para magnesów', '155'),
(19, 19, 2, 1, 4, 'K6 rund', '24 metry', 'fiolka alkoholu', '155'),
(20, 20, 2, 1, 3, 'do czasu otrzymania ran', 'jedna osoba', 'kawałek płótna opatrunkowego', '155/156'),
(21, 21, 2, 1, 3, '1 runda', 'osoba rzucająca', 'pióro skrzydła drapieżnego ptaka', '156'),
(22, 22, 2, 1, 2, 'K6 x 10/ poziom rzucającego', 'zobacz opis', 'ogon skorpiona', '156'),
(23, 23, 2, 1, 1, 'chwila', '48 metrów', 'kula siarki', '156'),
(24, 24, 2, 1, 2, 'dopóki osoba rzucająca czas jest skocnterowana', '48 metrów', 'zwierzęcy pęcherz', '156'),
(25, 25, 2, 1, 2, 'K6 x 10 tur lub do zranienia rzucajacego ', 'osoba rzucająca', 'mały srebrny młoteczek', '156'),
(26, 26, 2, 1, 1, 'do następnego wschodu słońca', 'osoba rzucająca', 'skalp giganta', '156'),
(27, 27, 2, 1, 4, '1K6 rund', '48 metrów', 'dowolna część martwego goblinoida', '156'),
(28, 28, 2, 2, 3, '1 godzina / poziom', 'osoba rzucająca', 'mały, żelazny pierściań', '156/157'),
(29, 29, 2, 2, 4, '2K6 rund', 'zasięg wzroku', 'kula wełnianej waty', '157'),
(30, 30, 2, 2, 2, 'chwila', '48 metrów', 'kamerton', '157'),
(31, 31, 2, 2, 4, 'do końca starcia', '48 metró', 'kość szczękowa muła', '157'),
(32, 32, 2, 2, 3, '1 godzina / poziom', 'osoba rzucająca', 'mały srebrny pentagram', '157'),
(33, 33, 2, 2, 3, '1 godzina / poziom', 'osoba rzucająca', '1 / 2 litra smoczej krwi ', '157'),
(34, 34, 2, 2, 3, 'chwila', 'dotyk', 'kosmyk włosów giganta', '157'),
(35, 35, 2, 2, 4, '3K6 rund', '48 metrów', 'kosmyk sierści zwierzoczłeka', '157/158'),
(36, 36, 2, 2, 3, '2K6 rund', '48 metrów', 'ząb smoka', '158'),
(37, 37, 2, 2, 4, '3K6 rund ', '48 metrów', 'krew gigantycznego pająka', '158'),
(38, 38, 2, 3, 8, 'do następnego wschodu słońca', 'zobacz opis', 'dębowa gałązka', '158'),
(39, 39, 2, 3, 8, '2K6 rund', '24 metry', 'skorupa dowolnego żówia', '158'),
(40, 40, 2, 3, 6, 'co najmniej 1 runda', 'zasięg wzroku', 'miecz', '158'),
(41, 41, 2, 3, 5, 'jedno przekazanie', '4 metry', 'takie jak dla przekazywanej Aury', '158'),
(42, 42, 2, 3, 6, '1 godzina', '48 metrów', 'magiczna strzała', '158'),
(43, 43, 2, 3, 4, 'chwila', '48 metrów', 'szklana kula', '159'),
(44, 44, 2, 3, 6, '3K6 rund', '48 metrów', 'krew dowolnego demona', '159'),
(45, 45, 2, 3, 5, '3k6 rund', '48 metrów', 'mózg giganta', '159'),
(46, 46, 2, 3, 6, 'chwila', 'zasięg wzroku', 'ręka nekromanty lub demonologa', '159'),
(47, 47, 2, 3, 5, '3K6 rund', '48 metrów', 'czaszka dowolnej istoty', '159'),
(48, 48, 2, 4, 16, '1 godzina / poziom', 'osoba rzucająca', 'kawałek skóry smoka ( >= 15 x 15 cm)', '159'),
(49, 49, 2, 4, 10, 'do otrzymania kolejnych obrażeń', 'dotyk', 'przysadka trolla', '159'),
(50, 50, 2, 4, 10, 'chwila', '48 metrów', 'proch strzelniczy (na 10 strzałów)', '159/160'),
(51, 51, 2, 4, 6, 'do następnego wschodu słońca', 'osoba rzucająca', 'odpowiednio do zwiększenia: CP - serce lwa; Int - mózg gigantycznej sowy; Op - głowa wilka; SW - oczy gigantycznego pająka; Ogd - język gigantycznego węża', '160'),
(52, 52, 2, 4, 12, 'k6 tur', '48 metrów', 'oczy bazyliszka', '160'),
(53, 53, 2, 4, 8, 'do następnego wschodu słońca', 'dotyk', 'dowolna broń', '160'),
(54, 54, 2, 4, 8, '1 godzina', '48 metrów', 'serce doppelgangera', '160'),
(55, 55, 3, 1, 1, 'chwila', '24 metry', 'religijny symbol dobra lub prawości, pobłogosławiony przez kapłana tej samej religii', '162'),
(56, 56, 3, 1, 3, '6 rund', '48 metrów', 'czaszka Wojownika Chaosu opasana stalową obręczą', '162'),
(57, 57, 3, 1, 2, '1 godzina / poziom', 'osoba rzucająca', 'miniaturowy pentagram, wykonany ze szczerego złota (wartość - 500 zk)', '162'),
(58, 58, 3, 1, 1, '2 godziny / poziom', 'nieistotny', 'kawałek kości udowej zwierzoczłeka', '162'),
(59, 59, 3, 1, 3, '1 godzina / poziom', 'nieistotny', 'serce człowieka lub półczłowieka złożonego w rytualnej ofierze', '162'),
(60, 60, 3, 2, 3, 'do następnego okresu niestabilności', '48 metrów', 'krew nowo narodzonego dziecka', '162'),
(61, 61, 3, 2, 3, 'zróżnicowany', 'nieistotny', 'dowolny magiczny eliksir, bądź serce demonologa', '162/163'),
(62, 62, 3, 2, 5, '1 godzina / poziom', 'nieistotny', '6 serc rytualnych ofiar z ludzi lub półludzi', '163'),
(63, 63, 3, 2, 5, '1 godzina / poziom', 'nieistotny', 'krew dowolnego demona', '163'),
(64, 64, 3, 2, 4, 'do następnego wschodu słońca', 'zróżnicowany', 'dowolny magiczny pergamin albo serce demonicznego sługi', '163/165'),
(65, 65, 3, 3, 10, 'chwila', '48 metrów', '1 / 2 litra posoki dowolnego wielkiego demona', '165'),
(66, 66, 3, 3, 8, '10K6 rund', '24 metry', 'mózg lunatyka', '165'),
(67, 67, 3, 3, 8, '1 godzina / poziom', 'niesitotny', '36 ludzkich lub półludzkich serc złożonych w rytualnej ofierze ', '165'),
(68, 68, 3, 3, 6, '6K6 rund', 'nieistotny', 'serce małego demona', '165'),
(69, 69, 3, 4, 20, '10K6 tur', '48 metrów', 'dowolny magiczny pierścień', '165'),
(70, 70, 3, 4, 25, 'chwila', '24 metry', 'część ciała kapłana w dobrym charakterze', '165'),
(71, 71, 3, 4, 25, 'do chwili wykonania zadania', 'nieistonty', 'czyste serce dobrego kapłana, zabitego w rytualnej ofierze', '166'),
(72, 72, 3, 4, 40, 'do następnego wschodu słońca', 'nieistotny', 'serce wielkiego demona', '166'),
(73, 73, 4, 1, 2, 'K6 rund', '0', 'szmata nasączona olejem', '166/167'),
(74, 74, 4, 1, 3, 'chwila', '48 metrów', 'garść otoczaków', '167'),
(75, 75, 4, 1, 1, 'do rozproszenia przez osobę, która go rzuciła', 'osoba rzucająca', 'świetlik', '167'),
(76, 76, 4, 1, 1, 'do następnego wschodu słońca', 'dotyk', 'rybia ikra', '167'),
(77, 77, 4, 1, 2, '1 runda', '12 metrów', 'opiłki magnezu', '167'),
(78, 78, 4, 1, 1, '1 godzina / poziom', 'osoba rzucająca', 'odrobina fosforu', '167'),
(79, 79, 4, 1, 2, 'do zejścia osoby rzucającej czar na ląd', 'osoba rzucająca', 'żuk wodny', '167'),
(80, 80, 4, 1, 3, '1 godzina / poziom', '0', 'fragment ubrania', '167'),
(81, 81, 4, 2, 3, 'chwila', '200 metrów', 'kropla wody', '167'),
(82, 82, 4, 2, 5, 'chwila', 'nieistotny', '2 klocki drewna', '168'),
(83, 83, 4, 2, 3, '1 godzina / poziom', 'osoba rzucająca', 'płomienny opał (wartość - 50 zk)', '168'),
(84, 84, 4, 2, 3, 'chwila', '24 / 12 metrów', 'pióro', '168'),
(85, 85, 4, 2, 4, 'chwila', '48 metrów', 'smocza łuska', '168'),
(86, 86, 4, 2, 4, 'do chwili rozproszenia lub oddalenia się', '48 metrów', 'małe drewniane wiosło', '168'),
(87, 87, 4, 3, 4, 'chwila', '48 metrów', 'cząstka odchodów ogara', '168'),
(88, 88, 4, 2, 4, '1 runda', '100 metrów', 'kropla wody', '168'),
(89, 89, 4, 3, 5, '1 godzina', '48 metrów', 'grzechotka z gigantycznego grzechotnika', '169'),
(90, 90, 4, 3, 7, 'do rozporoszenia', 'osoba rzucająca', 'odrobina babiego lata', '169'),
(91, 91, 4, 3, 9, '1 godzina / poziom', 'osoba rzucająca', 'kość szczękowa trolla', '169'),
(92, 92, 4, 3, 8, '2K6 rund', '48 metrów', 'zepsute jajko', '169'),
(93, 93, 4, 3, 10, 'chwila', '24 metry', 'dla odpowiednich żywiołaków: woda dla żywiołaka ognia, siarka dla żywiołaka wody, mały kamień dla żywiołaka powietrza, latawiec dla żywiołaka ziemi', '169'),
(94, 94, 4, 3, 5, 'co najmniej 1 runda', 'osoba rzucająca', 'płonąca wstążka', '169/170'),
(95, 95, 4, 3, 9, '1 godzina / poziom', '48 metrów', 'oko ośmiornicy bagiennej', '170'),
(96, 96, 4, 3, 10, '3 zionięcia lub 1 dzień', '24 metry', 'język smoka', '170'),
(97, 155, 4, 4, 16, 'chwila', '24 metry', 'tarczyca giganta', '170'),
(98, 97, 4, 4, 24, 'chwila', '48 metrów', 'dla odpowiednich żywiołaków: woda dla żywiołaka ognia, siarka dla żywiołaka wody, mały kamień dla żywiołaka powietrza, latawiec dla żywiołaka ziemi', '170'),
(99, 98, 4, 4, 16, '1 godzina', '48 metrów', 'zbiornik wody o średnicy co najmniej 12 metrów', '170'),
(100, 99, 4, 4, 12, 'co najmniej 1 godzina', 'bliski', 'dwie istoty z tych, które mają być wezwane', '171'),
(101, 100, 4, 4, 18, 'co najmniej 1 godzin', 'osoba rzucająca', 'patrz opis', '171'),
(102, 101, 4, 4, 18, 'co najmniej 1 tura', 'nieistotny', 'żołądek trolla', '171'),
(103, 102, 4, 4, 30, 'co najmniej 1 godzina', 'osoba rzucająca', 'patrz Przyzwanie żywiołaka', '171'),
(104, 103, 4, 4, 14, '6 godzin', '48 metrów', 'ogon mantikory', '171'),
(105, 104, 5, 1, 4, '1 runda', '24 metry', 'mały sztuczny ogień', '172'),
(106, 105, 5, 1, 2, '1 godzina / poziom', 'osoba rzucająca', 'posrebrzane lusterko', '172'),
(107, 106, 5, 1, 1, '2 do 12 rund', 'osoba rzucająca', 'kawałek owczego runa', '172'),
(108, 107, 5, 1, 2, '1 godzina / poziom', 'osoba rzucająca', 'mała figurka osoby rzucającej czar', '172'),
(109, 108, 5, 1, 1, '5 do 30 minut', 'osobisty', 'maska osoby lub istoty, która będzie wyobrażana', '172'),
(110, 109, 5, 2, 4, 'chwila', '48 metrów', 'gliniany model wybranej istoty (patrz opis)', '173'),
(111, 110, 5, 2, 2, 'do poruszenia się osoby rzucającej czar', '1200 metrow', 'małe modele budynków', '173'),
(112, 111, 5, 2, 5, 'do poruszenia się osoby rzucającej czar', '1200 metrów', 'mały model drzew', '173'),
(113, 112, 5, 2, 8, 'chwila', 'osoba rzucająca', 'klepsydra ze sproszkowanymi diamentami zamiast piasku (wartość 100 zk)', '173'),
(114, 113, 5, 2, 3, 'chwila', '48 metrów', 'szkło powiększające', '173'),
(115, 114, 5, 2, 3, '5 do 30 minut', 'osoba rzucająca', 'całun z ożywieńca', '173'),
(116, 115, 5, 3, 8, '1 runda', 'zasięg wzroku', 'oczy chimery', '173/174'),
(117, 116, 5, 3, 6, '5 do 30 minut', 'osoba rzucająca', 'maska', '174'),
(118, 117, 5, 3, 6, '1 godzina / poziom', '48 metrów', 'ząb pijawki-kameleona', '174'),
(119, 118, 5, 3, 6, 'K6 rund', 'osoba rzucająca', 'złota obręcz o średnicy co najmniej 15 centymetrów', '174'),
(120, 119, 5, 4, 15, '2 godziny', '96 metrów', 'kula smoły', '174'),
(121, 120, 5, 4, 12, 'co najmniej 1 godzina', 'zasięg wzroku', 'małe figurki, przedstawiające wybrany przez rzucającego oddział', '174'),
(122, 121, 5, 4, 20, '2K6 rund', 'osoba rzucajaca', 'eliksir latania, albo dłoń dowolnego demona', '175'),
(123, 122, 5, 4, 8, 'chwila', '1200 metrów', 'kryształowy pryzmat', '175'),
(124, 123, 6, 1, 4, 'do następnego wschodu słońca', 'nieistotny', 'szkielet, zwłoki albo zaczarowana czaszka', '176'),
(125, 124, 6, 1, 4, 'do następnego wschodu słońa', 'nieistotny', 'szkielet, zwłoki, albo zaczarowana czaszka', '176'),
(126, 125, 6, 1, 1, 'aż nekromanta zostanie ranny', 'dotyk', 'fragment całunu, ściągniętego ze zwłok', '176'),
(127, 126, 6, 1, 4, '1 godzina / poziom', 'nieistotny', 'święta relikwia', '176'),
(128, 127, 6, 1, 2, 'chwila', '24 metry', 'grobowy pył lub woda, błogosławiona przez kapłana', '176'),
(129, 128, 6, 2, 3, 'chwila', '48 metrów', 'religijny symbol albo deska z trumny', '176/177'),
(130, 129, 6, 2, 3, 'aż nekromanta zostanie ranny', 'nieistotny', 'prawa ręka powieszonego mordercy', '177'),
(131, 130, 6, 2, 3, '1 godzina / poziom', 'nieistotny', 'mózg maga', '177'),
(132, 131, 6, 2, 2, 'do następnego okresu niestabilności', '48 metrów', '1 /2 litra krwi', '177'),
(133, 132, 6, 2, 8, 'do następnego wschodu słońca', 'nieistotny', 'szkielet, zwłoki albo zaczarowana czaszka', '177'),
(134, 133, 6, 3, 12, 'do następnego wschodu słońca', 'dokoła maga', 'żadne', '177'),
(135, 134, 6, 3, 12, 'chwila', '24 metry', 'skóra zdarta ze świeżych zwłok', '177'),
(136, 135, 6, 3, 12, 'do następnego wschodu słońca', 'nieistotny', 'cmentarz bądź zaklęte kości palców 6 szkieletów', '178'),
(137, 136, 6, 3, 10, '1 godzina', 'osoba rzucająca', 'świeże ludzki serce', '178'),
(138, 137, 6, 4, 12, 'do następnego wschodu słońca', '2400 metrów', 'esencja z wampira', '178'),
(139, 138, 6, 4, 12, 'do zniszczenia lub rozproszenia istoty', '48 metrow', 'ususzona ręka licza', '178'),
(140, 139, 6, 4, 12, 'do następnego wschodu słońca', 'nieistotny', 'zaklęta czaszka legendarnego bohatera', '178'),
(141, 140, 6, 4, 35, 'chwila', '2800 metrów', 'zaklęty proch z 5 mumii', '178'),
(142, 141, 7, 1, 1, 'chwila', 'dotyk', 'gałązka jemioły', '180'),
(143, 142, 7, 1, 1, 'chwila', 'dotyk', 'sproszkowany malachit', '180'),
(144, 143, 7, 1, 1, 'chwila', 'dotyk', 'szczypta pieprzu', '180'),
(145, 144, 7, 1, 1, 'co najmniej 1 tura', '6 metrów', 'ząb dowolnego zwierzęcia', '180'),
(146, 145, 7, 2, 4, 'co najmniej 1 runda', '48 metrów', 'garstka żwiru z białego kwarcu', '180'),
(147, 146, 7, 2, 2, 'co najmniej 1 tura', '24 metry', 'dzika róża albo jeżyna', '180'),
(148, 147, 7, 2, 2, 'co najmniej 1 tura', '12 metrów', 'ząb gigantycznego zwierzęcia', '180'),
(149, 148, 7, 2, 12, 'co najmniej 1 tura', 'osoba rzucająca', 'skóra zwierzęcia, w które postać zamierza się przemienić', '180/181'),
(150, 149, 7, 3, 3, 'zróżnicowany', 'osoba rzucająca', 'kamienny krąg', '181'),
(151, 150, 7, 3, 10, 'co najmniej 1 runda', 'dotyk', 'nasienie lub owoc z tego samego gatunku drzewa, co to, które ma zostać ożywione', '181'),
(152, 151, 7, 3, 6, 'chwila', '48 metrów', 'ususzony liść', '181'),
(153, 152, 7, 3, 3, '1 godzina', 'osoba rzucająca', 'sztylet z brązu', '181'),
(154, 153, 7, 4, 6, '3 tury', '48 metry', 'kula błota', '181'),
(155, 154, 7, 4, 6, 'zróżnicowany', '0', 'odpowiednie miejsce i złoty sierp', '181');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `things_types`
--

CREATE TABLE `things_types` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `things_types`
--

INSERT INTO `things_types` (`id`, `name`) VALUES
(1, 'Utrzymanie'),
(2, 'Ubranie'),
(3, 'Pancerz'),
(4, 'Broń ręczna'),
(5, 'Broń strzelecka'),
(6, 'Broń palna'),
(7, 'Plecaki, worki'),
(8, 'Sprzęty domowe'),
(9, 'Oświetlenie'),
(10, 'Instrumenty'),
(11, 'Narzędzia'),
(12, 'Piśmiennictwo'),
(13, 'Pojazdy'),
(14, 'Wierzchowce'),
(15, 'Zwierzęta domowe'),
(16, 'Koszty podrózy'),
(17, 'Mieszkania'),
(18, 'Usługi medyczne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trades`
--

CREATE TABLE `trades` (
  `id` int(3) NOT NULL,
  `name` int(3) NOT NULL,
  `type` int(2) NOT NULL,
  `price` varchar(15) COLLATE utf8_polish_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL,
  `availability` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `trades`
--

INSERT INTO `trades` (`id`, `name`, `type`, `price`, `weight`, `availability`) VALUES
(1, 1, 1, '25/-', 5, 4),
(2, 2, 1, '4/-', 5, 5),
(3, 3, 1, '3/- do 7/-', 10, 6),
(4, 4, 1, '7/6', 50, 6),
(5, 5, 1, '30/-', 0, 5),
(6, 6, 1, '9p', 2, 6),
(7, 7, 1, '2/-', 0, 6),
(8, 8, 1, '3/-', 0, 6),
(9, 9, 1, '1/6', 0, 6),
(10, 10, 1, '10/-', 5, 4),
(11, 11, 1, '3 zk', 50, 5),
(12, 12, 2, '2 zk', 4, 6),
(13, 13, 2, '6 zk', 5, 6),
(14, 14, 2, '12 zk', 12, 4),
(15, 15, 2, '9 zk', 10, 5),
(16, 16, 2, '50/-', 3, 6),
(17, 17, 2, '6/-', 0, 6),
(18, 18, 2, '4 zk', 0, 5),
(19, 19, 2, '5 zk', 5, 6),
(20, 20, 2, '10/-', 1, 6),
(21, 21, 2, '25/-', 2, 5),
(22, 22, 2, '2 zk', 2, 6),
(23, 23, 2, '6 zk', 4, 6),
(24, 24, 2, '10/-', 1, 6),
(25, 25, 2, '5 zk', 10, 6),
(26, 26, 2, '10 zk', 15, 6),
(27, 27, 2, '7 zk', 6, 6),
(28, 28, 2, '13 zk', 20, 4),
(29, 29, 2, '5 zk', 4, 6),
(30, 30, 3, '25 zk', 30, 4),
(31, 31, 3, '10 zk', 10, 5),
(32, 32, 3, '17 zk', 50, 5),
(33, 33, 3, '115 zk', 80, 4),
(34, 34, 3, '130 zk', 100, 4),
(35, 35, 3, '95 zk', 80, 4),
(36, 36, 3, '80 zk', 60, 4),
(37, 37, 3, '12 zk', 40, 5),
(38, 38, 3, '55 zk', 60, 3),
(39, 39, 3, '20 zk', 40, 2),
(40, 40, 3, '2 zk', 30, 5),
(41, 41, 3, '30 zk', 40, 3),
(42, 42, 3, '70 zk', 75, 3),
(43, 43, 3, '50 zk', 75, 3),
(44, 44, 3, '70 zk', 60, 3),
(45, 45, 3, '60 zk', 30, 3),
(46, 46, 3, '30 zk', 10, 3),
(47, 47, 3, '18 zk', 50, 5),
(48, 48, 3, '10/-', 50, 6),
(49, 49, 4, '15/-', 30, 4),
(50, 50, 4, '7 zk', 50, 5),
(51, 51, 4, '1 zk', 1, 2),
(52, 52, 4, '1 zk', 1, 4),
(53, 53, 4, '8 zk', 175, 5),
(54, 54, 4, '1 zk', 1, 5),
(55, 55, 4, '3/-', 50, 6),
(56, 56, 4, '50/-', 100, 2),
(57, 57, 4, '10 zk', 60, 3),
(58, 58, 4, '20 zk', 120, 2),
(59, 59, 4, '5 zk', 40, 3),
(60, 60, 4, '15 zk', 100, 3),
(61, 61, 4, '14 zk', 60, 5),
(62, 62, 4, '35 zk', 250, 4),
(63, 63, 4, '20 zk', 10, 5),
(64, 64, 4, '8 zk', 75, 3),
(65, 65, 4, '15 zk', 200, 2),
(66, 66, 4, '9 zk', 60, 2),
(67, 67, 4, '2/-', 40, 6),
(68, 68, 4, '14 zk', 50, 3),
(69, 69, 4, '1-10 zk', 20, 5),
(70, 70, 4, '2 zk', 10, 4),
(71, 71, 4, '20 zk', 40, 3),
(72, 72, 4, '30/-', 30, 2),
(73, 73, 4, '18 zk', 40, 2),
(74, 74, 4, '3 zk', 10, 5),
(75, 75, 4, '6 zk', 50, 5),
(76, 76, 4, '12 zk', 75, 4),
(77, 77, 4, '7 zk', 75, 2),
(78, 78, 4, '35/-', 50, 5),
(79, 79, 5, '7/-', 20, 3),
(80, 80, 5, '2 zk', 10, 4),
(81, 81, 5, '10 zk', 15, 1),
(82, 82, 5, '15/-', 15, 5),
(83, 83, 5, '16 zk', 120, 4),
(84, 84, 5, '100 zk', 150, 1),
(85, 85, 5, '1 zk', 10, 6),
(86, 86, 5, '15 zk', 90, 4),
(87, 87, 5, '30 zk', 100, 1),
(88, 88, 5, '7 zk', 75, 5),
(89, 89, 5, '11 zk', 80, 5),
(90, 90, 5, '8 zk', 75, 3),
(91, 91, 5, '4 zk', 10, 4),
(92, 92, 5, '25/-', 30, 4),
(93, 93, 5, '10 zk', 25, 2),
(94, 94, 5, '2/-', 10, 5),
(95, 95, 5, '6/-', 30, 2),
(96, 96, 5, '2 zk', 10, 2),
(97, 97, 5, '30/-', 10, 5),
(98, 98, 5, '5 zk', 40, 4),
(99, 99, 5, '35/-', 50, 5),
(100, 100, 6, '75 zk', 20, 1),
(101, 101, 6, '1 zk', 10, 3),
(102, 102, 6, '150 zk', 25, 1),
(103, 103, 6, '5 zk', 1, 2),
(104, 104, 6, '75 zk', 50, 1),
(105, 105, 7, '8/-', 100, 6),
(106, 106, 7, '2 zk', 5, 4),
(107, 107, 7, '50/-', 15, 3),
(108, 108, 7, '15/-', 5, 4),
(109, 109, 7, '30/-', 20, 6),
(110, 110, 7, '2/-', 1, 6),
(111, 111, 7, '5/-', 1, 6),
(112, 112, 7, '6/-', 5, 6),
(113, 113, 7, '1 zk', 2, 3),
(114, 114, 7, '16/-', 7, 6),
(115, 115, 8, '2/-', 5, 6),
(116, 116, 8, '3/6', 10, 6),
(117, 117, 8, '1 zk', 20, 6),
(118, 118, 8, '2/-', 2, 5),
(119, 119, 8, '30/-', 5, 6),
(120, 120, 8, '2 zk', 10, 6),
(121, 121, 8, '30/-', 10, 6),
(122, 122, 8, '6/-', 0, 6),
(123, 123, 8, '1 zk', 5, 6),
(124, 124, 8, '12 zk', 350, 3),
(125, 125, 8, '8 zk', 400, 4),
(126, 126, 8, '5/-', 2, 6),
(127, 127, 8, '3 zk', 4, 5),
(128, 128, 8, '15 zk', 3, 3),
(130, 130, 8, '1 zk', 1, 6),
(131, 131, 9, '5/-', 20, 6),
(132, 132, 9, '12 zk', 20, 4),
(133, 133, 9, '20 zk', 30, 3),
(134, 134, 9, '8/-', 5, 6),
(135, 135, 9, '1/-', 5, 6),
(136, 136, 9, '6/-', 5, 6),
(137, 137, 9, '36/-', 5, 4),
(138, 138, 10, '30/-', 50, 4),
(139, 139, 10, '20 zk', 10, 2),
(140, 140, 10, '3 zk', 5, 4),
(141, 141, 10, '20 zk', 50, 2),
(142, 142, 10, '8/-', 1, 4),
(143, 143, 10, '250 zk', 1200, 2),
(144, 144, 10, '80 zk', 30, 3),
(145, 145, 10, '23 zk', 15, 3),
(146, 146, 10, '10 zk', 30, 4),
(147, 147, 10, '1 zk', 5, 4),
(148, 148, 10, '25 zk', 30, 4),
(149, 149, 11, '10 zk', 5, 2),
(150, 150, 11, '10/-', 5, 5),
(151, 151, 11, '3/-', 2, 5),
(152, 152, 11, '4 zk', 20, 4),
(153, 153, 11, '50 zk', 50, 2),
(154, 154, 11, '5 zk', 20, 4),
(155, 155, 11, '8 p', 2, 6),
(156, 156, 44, '30/-', 50, 4),
(157, 157, 11, '5 zk', 20, 4),
(158, 158, 11, '25/-', 20, 5),
(159, 159, 11, '25 zk', 5, 2),
(160, 160, 11, '50 zk', 100, 2),
(161, 161, 11, '50 zk', 20, 2),
(162, 162, 11, '50', 40, 2),
(163, 163, 11, '7 zk', 10, 5),
(164, 164, 11, '8 zk', 100, 4),
(165, 165, 11, '50 zk', 20, 2),
(166, 166, 11, '1 zk', 5, 5),
(167, 167, 11, '26/-', 20, 4),
(168, 168, 11, '75 zk', 5, 1),
(169, 169, 11, '5/-', 10, 4),
(170, 170, 11, '1/6', 10, 6),
(171, 171, 11, '10 zk', 20, 4),
(172, 172, 12, '350 zk', 50, 2),
(173, 173, 12, '40 zk', 35, 3),
(174, 174, 12, '12/-', 0, 2),
(175, 175, 12, '12 p', 0, 3),
(176, 176, 12, '10 zk', 5, 4),
(177, 177, 13, '(K6x10)+40 zk', 0, 5),
(178, 178, 13, '(K6x10)+60 zk', 900, 4),
(179, 179, 13, '600 zk', 0, 2),
(180, 180, 13, '1000 zk', 0, 2),
(181, 181, 13, '(K8x10)+60 zk', 0, 5),
(182, 182, 14, '575-1150 zk', 0, 3),
(183, 183, 14, '60-480 zk', 0, 5),
(184, 184, 14, '960-4750 zk', 0, 6),
(185, 185, 15, '30-60 zk', 0, 6),
(186, 186, 15, '50-75 zk', 0, 6),
(187, 187, 15, '40/- - 50/-', 0, 6),
(188, 188, 15, '40-60 zk', 0, 6),
(189, 189, 15, '1/-', 0, 6),
(190, 190, 15, '54/- - 62/-', 0, 6),
(191, 191, 15, 'K6 zk', 0, 6),
(192, 192, 15, '40-70 zk', 0, 2),
(193, 193, 15, '80/- - 90/-', 0, 6),
(194, 194, 15, '60-80 zk', 0, 6),
(195, 195, 16, '3 zk', 0, 6),
(196, 196, 16, '5/-', 0, 6),
(197, 197, 16, '15/-', 0, 6),
(198, 198, 16, '7 zk', 0, 4),
(199, 199, 16, '4 zk', 0, 5),
(200, 200, 17, '450 zk', 0, 5),
(201, 201, 17, '1 500 zk', 0, 4),
(202, 202, 17, '2 400 zk', 0, 4),
(203, 203, 17, '30 000 zk', 0, 1),
(204, 204, 17, '270 zk', 0, 5),
(205, 205, 17, '90 zk', 0, 5),
(206, 206, 17, '4 800 zk', 0, 2),
(207, 207, 17, '21 600 zk', 0, 2),
(208, 208, 18, '3 zk', 0, 5),
(209, 209, 0, '0', 5, 0),
(210, 210, 0, '0', 4, 0),
(211, 211, 0, '0', 0, 0),
(212, 212, 0, '0', 1, 0),
(213, 213, 0, '0', 5, 0),
(214, 214, 0, '0', 10, 0),
(215, 215, 0, '0', 5, 0),
(216, 216, 0, '0', 12, 0),
(217, 217, 0, '0', 5, 0),
(218, 218, 0, '0', 2, 0),
(219, 219, 0, '0', 1, 0),
(220, 220, 0, '0', 5, 0),
(221, 221, 0, '0', 1, 0),
(222, 222, 0, '0', 1, 0),
(223, 223, 0, '0', 1, 0),
(224, 224, 0, '0', 1, 0),
(225, 225, 0, '0', 5, 0),
(226, 226, 0, '0', 1, 0),
(227, 227, 0, '0', 40, 0),
(228, 228, 0, '0', 2, 0),
(229, 229, 0, '0', 1, 0),
(230, 230, 0, '0', 5, 0),
(231, 231, 0, '0', 1, 0),
(232, 232, 0, '0', 1, 0),
(233, 233, 0, '0', 1, 0),
(234, 234, 0, '0', 1, 0),
(235, 235, 0, '0', 1, 0),
(236, 236, 0, '0', 10, 0),
(237, 237, 0, '0', 1, 0),
(238, 238, 0, '0', 2, 0),
(239, 239, 0, '0', 1, 0),
(240, 240, 0, '0', 5, 0),
(241, 241, 0, '0', 2, 0),
(242, 242, 0, '0', 1, 0),
(243, 243, 0, '0', 30, 0),
(244, 244, 0, '0', 2, 0),
(245, 245, 0, '0', 0, 0),
(246, 246, 0, '0', 8, 0),
(247, 247, 0, '0', 5, 0),
(248, 248, 0, '0', 5, 0),
(249, 249, 0, '0', 50, 0),
(250, 250, 0, '0', 15, 0),
(251, 251, 0, '0', 5, 0),
(252, 252, 0, '0', 1, 0),
(253, 253, 0, '0', 1, 0),
(254, 254, 0, '0', 5, 0),
(255, 255, 0, '0', 0, 0),
(256, 256, 0, '0', 900, 0),
(257, 257, 0, '0', 5, 0),
(258, 258, 0, '0', 12, 0),
(259, 259, 0, '0', 20, 0),
(260, 260, 0, '0', 10, 0),
(261, 261, 0, '0', 1, 0),
(262, 262, 0, '0', 50, 0),
(263, 263, 0, '0', 10, 0),
(264, 264, 0, '0', 5, 0),
(265, 265, 0, '0', 0, 0),
(266, 266, 0, '0', 1, 0),
(267, 267, 0, '0', 10, 0),
(268, 268, 0, '0', 1, 0),
(269, 269, 0, '0', 10, 0),
(270, 270, 0, '0', 2, 0),
(271, 271, 0, '0', 2, 0),
(272, 272, 0, '0', 5, 0),
(273, 273, 0, '0', 5, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `umiejetnosci`
--

CREATE TABLE `umiejetnosci` (
  `skillid` int(3) UNSIGNED NOT NULL,
  `skillName` varchar(40) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `umiejetnosci`
--

INSERT INTO `umiejetnosci` (`skillid`, `skillName`) VALUES
(1, 'Akrobatyka'),
(2, 'Aktorstwo'),
(3, 'Astronomia'),
(4, 'Bardzo silny'),
(5, 'Bardzo szybki'),
(6, 'Bardzo wytrzymały'),
(7, 'Bijatyka'),
(8, 'Błaznowanie'),
(9, 'Błyskotliwość'),
(10, 'Brzuchomówstwo'),
(11, 'Bystry wzrok'),
(12, 'Celne strzelanie'),
(13, 'Celny cios'),
(14, 'Charakteryzacja'),
(15, 'Chemia'),
(16, 'Chiromancja'),
(17, 'Chirurgia'),
(18, 'Cichy chód w mieście'),
(19, 'Cichy chód na wsi'),
(20, 'Człowiek-guma'),
(21, 'Czuły słuch'),
(22, 'Czytanie z warg'),
(23, 'Czytanie/pisanie'),
(24, 'Defraudacja'),
(25, 'Doliniarstwo'),
(26, 'Etykieta'),
(27, 'Farmacja'),
(28, 'Gadanina'),
(29, 'Gawędziarstwo'),
(30, 'Geniusz arytmetyczny'),
(31, 'Gotowanie'),
(32, 'Górnictwo'),
(33, 'Heraldyka'),
(34, 'Hipnoza'),
(35, 'Historia'),
(36, 'Inżynieria'),
(37, 'Jeździectwo'),
(39, 'Jubilerstwo'),
(40, 'Kamieniarstwo'),
(41, 'Kartografia'),
(42, 'Komedianctwo'),
(43, 'Kowalstwo'),
(44, 'Krasomówstwo'),
(45, 'Krawiectwo'),
(46, 'Kryptografia'),
(47, 'Leczenie chorób'),
(48, 'Leczenie ran'),
(49, 'Łowiectwo'),
(50, 'Medytacja'),
(51, 'Metalurgia'),
(52, 'Mimika'),
(53, 'Mocna głowa'),
(54, 'Monetoznwstwo'),
(55, 'Muzykalność'),
(56, 'Naśladownictwo'),
(57, 'Oburęczność'),
(58, 'Odporność na choroby'),
(59, 'Odporność na trucizny'),
(60, 'Ogłuszenie'),
(61, 'Opanowanie runów'),
(62, 'Opieka nad zwierzętami'),
(63, 'Otwieranie zamków'),
(64, 'Piwowarstwo'),
(65, 'Pływanie'),
(66, 'Połykanie ognia'),
(67, 'Posłuch u zwierząt'),
(68, 'Powożenie'),
(69, 'Prawo'),
(70, 'Przekupstwo'),
(71, 'Rozbrajanie'),
(72, 'Rozpoznawanie magicznych przedmiotów'),
(73, 'Rozpoznawanie ożywieńców'),
(74, 'Rozpoznawanie roślin'),
(75, 'Rozpoznawanie runów'),
(76, 'Różdżkarstwo'),
(77, 'Rybactwo'),
(78, 'Rzucanie czarów'),
(81, 'Siłacz'),
(82, 'Silny cios'),
(84, 'Stolarstwo'),
(85, 'Szacowanie'),
(86, 'Szaleńczy atak'),
(87, 'Szczęście'),
(88, 'Szkutnictwo'),
(89, 'Szósty zmysł'),
(90, 'Sztuka'),
(91, 'Szulerstwo'),
(92, 'Szybki refleks'),
(93, 'Szyderstwo'),
(94, 'Śledzenie'),
(95, 'Śpiew'),
(96, 'Taniec'),
(97, 'Targowanie się'),
(98, 'Teologia'),
(99, 'Torturowanie'),
(100, 'Tresura'),
(101, 'Tropienie'),
(102, 'Tworzenie magicznych pergaminów'),
(103, 'Tworzenie magicznych przedmiotów'),
(104, 'Ucieczka'),
(105, 'Ukrywanie się w mieście'),
(106, 'Ukrywanie się na wsi'),
(107, 'Uniki'),
(108, 'Urok osobisty'),
(109, 'Uwodzenie'),
(110, 'Uzdolnienia językowe'),
(111, 'Warzenie trucizn'),
(112, 'Widzenie w ciemnościach'),
(113, 'Wiedza o demonach'),
(114, 'Wiedza o magicznych pergaminach'),
(115, 'Wiedza o rzekach'),
(116, 'Wiosłowanie'),
(117, 'Woltyżerka'),
(118, 'Wróżenie'),
(119, 'Wspinaczka'),
(120, 'Wyczucie kierunku'),
(121, 'Wyczucie magicznego alarmu'),
(122, 'Wykrywanie istot magicznych'),
(123, 'Wykrywanie magii'),
(124, 'Wykrywanie pułapek'),
(125, 'Wytwarzanie eliksirów'),
(126, 'Wyzwalanie się z więzów'),
(127, 'Zapasy'),
(128, 'Zastawianie pułapek'),
(129, 'Zielarstwo'),
(130, 'Znajomość języka obcego'),
(131, 'Zwinne palce'),
(132, 'Żebractwo'),
(133, 'Żeglowanie'),
(134, 'Żonglerka'),
(135, 'Sekretny język - bitewny'),
(136, 'Sekretny język - rangerów'),
(137, 'Sekretny język - złodziei'),
(138, 'Sekretny język - klasyczny'),
(139, 'Sekretny język - gildii'),
(140, 'Specjalna broń - drzewcowa'),
(141, 'Specjalna broń - dwuręczna'),
(142, 'Specjalna broń - korbacz'),
(143, 'Specjalna broń - szermiercza'),
(144, 'Specjalna broń - parująca'),
(145, 'Specjalna broń - lanca'),
(146, 'Specjalna broń - bomby'),
(147, 'Specjalna broń - zapalające'),
(148, 'Specjalna broń - lasso'),
(149, 'Specjalna broń - długi łuk'),
(150, 'Specjalna broń - kusza samopowtarzalna'),
(151, 'Specjalna broń - kusza pistoletowa'),
(152, 'Specjalna broń - rzucana'),
(153, 'Specjalna broń - proca'),
(154, 'Specjalna broń - dmuchawka'),
(155, 'Specjalna broń - artyleria'),
(156, 'Specjalna broń - palna'),
(157, 'Specjalna broń - uliczna'),
(158, 'Sekretne znaki drwala'),
(159, 'Sekretne znaki kłusownika'),
(160, 'Sekretne znaki złodziei'),
(161, 'Sekretne znaki krasnoludzkiej gildii'),
(162, 'Sekretne znaki zwiadowcy'),
(163, 'Sekretne znaki wędrownych kramarzy'),
(164, 'Język tajemny - magiczny'),
(165, 'Język tajemny - kransoludzki'),
(166, 'Język tajemny - elfi'),
(167, 'Język tajemny - druidyczny'),
(168, 'Język tajemny - demoniczny'),
(169, 'Specjalna broń - sieć'),
(170, 'Sekretne znaki druidów');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `name` char(20) COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `pass` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL,
  `mail` char(30) COLLATE utf8_polish_ci NOT NULL,
  `type` varchar(5) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`userID`, `name`, `login`, `pass`, `mail`, `type`) VALUES
(1, 'aa', 'aa', 'fa6977c99b809db68e1c56888ec38bd004719b39', 'a@b.c', 'admin'),
(5, 'pawel', 'pawel123', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 's@s.w', 'gracz'),
(6, 'pawel', 'pablodx', 'da4e0ef4210a629beee48a7efc7745b3771f2fbb', 'pablo-dx@o2.pl', 'gracz'),
(7, 'Piotr', 'Dreddenoth', 'aa85952100c1695d3b81c0ce6744d58b61fd2687', 'Piotr_18@o2.pl', 'gracz'),
(8, 'gfv', 'qqqqqq', 'fa6977c99b809db68e1c56888ec38bd004719b39', 'q@q.q', 'gracz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weapon_type`
--

CREATE TABLE `weapon_type` (
  `id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `weapon_type`
--

INSERT INTO `weapon_type` (`id`, `name`) VALUES
(1, 'onehand'),
(2, 'twohand'),
(3, 'ranged'),
(4, 'firearm');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weapon_type_name`
--

CREATE TABLE `weapon_type_name` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_polish_ci NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci ROW_FORMAT=DYNAMIC;

--
-- Zrzut danych tabeli `weapon_type_name`
--

INSERT INTO `weapon_type_name` (`id`, `name`, `type`) VALUES
(1, 'Jednoręczna', 1),
(2, 'Nóż/Sztylet', 1),
(3, 'Włócznia', 1),
(4, 'Improwizowana', 1),
(5, 'Bastard', 1),
(6, 'Dwuręczna', 2),
(7, 'Halabarda', 2),
(8, 'Kij', 1),
(9, 'Korbacz', 1),
(10, 'Korbacz dwuręczny', 2),
(11, 'Rapier', 1),
(12, 'Puklerz', 1),
(13, 'Lewak', 1),
(14, 'Łamacz mieczy', 1),
(15, 'Kopia', 1),
(16, 'Sieć', 2),
(17, 'Broń uliczna', 1),
(18, 'Bicz', 1),
(19, 'Krótki łuk', 3),
(20, 'Zwykły łuk', 3),
(21, 'Długi łuk', 3),
(22, 'Elfi łuk', 3),
(23, 'Kusza', 3),
(24, 'Kusza samopowtarzalna', 3),
(25, 'Pistolet strzałkowy', 3),
(26, 'Proca', 3),
(27, 'Proca drzewcowa', 3),
(28, 'Oszczep', 3),
(29, 'Włócznia', 3),
(30, 'Strzałka', 3),
(31, 'Rzucany nóż', 3),
(32, 'Rzucany topór', 3),
(33, 'Dmuchawka', 3),
(34, 'Lasso', 3),
(35, 'Bolas', 3),
(36, 'Pistolet', 4),
(37, 'Rusznica', 4),
(38, 'Bomba', 4),
(39, 'Bomba zapalająca', 4),
(40, 'Improwizowana', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_album`
--

CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_album_gallery`
--

CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_gallery`
--

CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) NOT NULL,
  `gallery_source` varchar(256) NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wp_bwg_gallery`
--

INSERT INTO `wp_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`) VALUES
(1, 'skansen', 'skansen', '', '', '/thumb/woz_3.jpg', '', 1, 1, 1, '', '', 12, ''),
(2, 'wip', 'wip', '', '', '', '/thumb/wip04.jpg', 2, 1, 1, '', '', 12, ''),
(3, 'borysew', 'borysew', '', '', '', '/thumb/bor67.jpg', 3, 1, 1, '', '', 12, ''),
(4, 'bieszczady', 'bieszczady', '', '', '', '/thumb/bieszczady259.jpg', 4, 1, 1, '', '', 12, ''),
(5, 'zamek_grodno', 'zamek_grodno', '', '', '', '/thumb/zamek_g127.jpg', 5, 1, 1, '', '', 12, ''),
(6, 'breslau', 'breslau', '', '', '', '/thumb/breslau140.jpg', 6, 1, 1, '', '', 12, ''),
(7, 'lublin', 'lublin', '', '', '', '/thumb/lublin153.jpg', 7, 1, 1, '', '', 12, ''),
(8, 'polcon', 'polcon', '', '', '', '/thumb/polcon028.jpg', 8, 1, 1, '', '', 12, ''),
(9, 'llf', 'llf', '', '', '', '/thumb/llf073.jpg', 9, 1, 1, '', '', 12, ''),
(10, 'botanik', 'botanik', '', '', '', '/thumb/botanik006.jpg', 10, 1, 1, '', '', 12, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_image`
--

CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  `pricelist_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wp_bwg_image`
--

INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`) VALUES
(1, 1, '', 'woz 3', '/woz_3.jpg', '/thumb/woz_3.jpg', '', '', '16 September 2017, 20:45', '180 KB', 'jpg', '1024 x 575 px', 1, 110, 1, 0, 0, 0, 0, '', 0),
(2, 1, '', 'ziemianka', '/ziemianka.jpg', '/thumb/ziemianka.jpg', '', '', '16 September 2017, 20:45', '191 KB', 'jpg', '1024 x 575 px', 1, 109, 1, 0, 0, 0, 0, '', 0),
(3, 1, '', 'widok 9', '/widok_9.jpg', '/thumb/widok_9.jpg', '', '', '16 September 2017, 20:45', '117 KB', 'jpg', '1024 x 575 px', 1, 108, 1, 0, 0, 0, 0, '', 0),
(4, 1, '', 'woz 4', '/woz_4.jpg', '/thumb/woz_4.jpg', '', '', '16 September 2017, 20:45', '156 KB', 'jpg', '1024 x 575 px', 1, 107, 1, 0, 0, 0, 0, '', 0),
(5, 1, '', 'woz 2', '/woz_2.jpg', '/thumb/woz_2.jpg', '', '', '16 September 2017, 20:45', '183 KB', 'jpg', '1024 x 575 px', 1, 106, 1, 0, 0, 0, 0, '', 0),
(6, 1, '', 'zak rym kol 1', '/zak_rym_kol_1.jpg', '/thumb/zak_rym_kol_1.jpg', '', '', '16 September 2017, 20:45', '145 KB', 'jpg', '1024 x 768 px', 1, 105, 1, 0, 0, 0, 0, '', 0),
(7, 1, '', 'wychodek 1', '/wychodek_1.jpg', '/thumb/wychodek_1.jpg', '', '', '16 September 2017, 20:45', '97 KB', 'jpg', '323 x 575 px', 1, 104, 1, 0, 0, 0, 0, '', 0),
(8, 1, '', 'widok 8', '/widok_8.jpg', '/thumb/widok_8.jpg', '', '', '16 September 2017, 20:45', '159 KB', 'jpg', '1024 x 575 px', 1, 103, 1, 0, 0, 0, 0, '', 0),
(9, 1, '', 'woz 1', '/woz_1.jpg', '/thumb/woz_1.jpg', '', '', '16 September 2017, 20:45', '143 KB', 'jpg', '1024 x 575 px', 1, 102, 1, 0, 0, 0, 0, '', 0),
(10, 1, '', 'widok 6', '/widok_6.jpg', '/thumb/widok_6.jpg', '', '', '16 September 2017, 20:45', '116 KB', 'jpg', '1024 x 575 px', 1, 101, 1, 0, 0, 0, 0, '', 0),
(11, 1, '', 'widok 7', '/widok_7.jpg', '/thumb/widok_7.jpg', '', '', '16 September 2017, 20:45', '132 KB', 'jpg', '1024 x 575 px', 1, 100, 1, 0, 0, 0, 0, '', 0),
(12, 1, '', 'widok 4', '/widok_4.jpg', '/thumb/widok_4.jpg', '', '', '16 September 2017, 20:45', '140 KB', 'jpg', '1024 x 575 px', 1, 99, 1, 0, 0, 0, 0, '', 0),
(13, 1, '', 'widok 5', '/widok_5.jpg', '/thumb/widok_5.jpg', '', '', '16 September 2017, 20:45', '187 KB', 'jpg', '1024 x 575 px', 1, 98, 1, 0, 0, 0, 0, '', 0),
(14, 1, '', 'ule 1', '/ule_1.jpg', '/thumb/ule_1.jpg', '', '', '16 September 2017, 20:45', '152 KB', 'jpg', '1024 x 575 px', 1, 97, 1, 0, 0, 0, 0, '', 0),
(15, 1, '', 'widok 1', '/widok_1.jpg', '/thumb/widok_1.jpg', '', '', '16 September 2017, 20:45', '191 KB', 'jpg', '1024 x 575 px', 1, 96, 1, 0, 0, 0, 0, '', 0),
(16, 1, '', 'widok 3', '/widok_3.jpg', '/thumb/widok_3.jpg', '', '', '16 September 2017, 20:45', '142 KB', 'jpg', '1024 x 575 px', 1, 95, 1, 0, 0, 0, 0, '', 0),
(17, 1, '', 'uprzeze 1', '/uprzeze_1.jpg', '/thumb/uprzeze_1.jpg', '', '', '16 September 2017, 20:45', '152 KB', 'jpg', '1024 x 768 px', 1, 94, 1, 0, 0, 0, 0, '', 0),
(18, 1, '', 'widok 2', '/widok_2.jpg', '/thumb/widok_2.jpg', '', '', '16 September 2017, 20:45', '165 KB', 'jpg', '1024 x 575 px', 1, 93, 1, 0, 0, 0, 0, '', 0),
(19, 1, '', 'stolarnia 1', '/stolarnia_1.jpg', '/thumb/stolarnia_1.jpg', '', '', '16 September 2017, 20:45', '207 KB', 'jpg', '1024 x 575 px', 1, 92, 1, 0, 0, 0, 0, '', 0),
(20, 1, '', 'studnia 5', '/studnia_5.jpg', '/thumb/studnia_5.jpg', '', '', '16 September 2017, 20:45', '109 KB', 'jpg', '323 x 575 px', 1, 91, 1, 0, 0, 0, 0, '', 0),
(21, 1, '', 'studnia 4', '/studnia_4.jpg', '/thumb/studnia_4.jpg', '', '', '16 September 2017, 20:45', '192 KB', 'jpg', '1024 x 575 px', 1, 90, 1, 0, 0, 0, 0, '', 0),
(22, 1, '', 'studnia 3', '/studnia_3.jpg', '/thumb/studnia_3.jpg', '', '', '16 September 2017, 20:45', '220 KB', 'jpg', '1024 x 575 px', 1, 89, 1, 0, 0, 0, 0, '', 0),
(23, 1, '', 'studnia 6', '/studnia_6.jpg', '/thumb/studnia_6.jpg', '', '', '16 September 2017, 20:45', '96 KB', 'jpg', '323 x 575 px', 1, 88, 1, 0, 0, 0, 0, '', 0),
(24, 1, '', 'stodola 8', '/stodola_8.jpg', '/thumb/stodola_8.jpg', '', '', '16 September 2017, 20:45', '176 KB', 'jpg', '1024 x 575 px', 1, 87, 1, 0, 0, 0, 0, '', 0),
(25, 1, '', 'studnia 1', '/studnia_1.jpg', '/thumb/studnia_1.jpg', '', '', '16 September 2017, 20:45', '159 KB', 'jpg', '1024 x 575 px', 1, 86, 1, 0, 0, 0, 0, '', 0),
(26, 1, '', 'studnia 2', '/studnia_2.jpg', '/thumb/studnia_2.jpg', '', '', '16 September 2017, 20:45', '83 KB', 'jpg', '323 x 575 px', 1, 85, 1, 0, 0, 0, 0, '', 0),
(27, 1, '', 'stodola 6', '/stodola_6.jpg', '/thumb/stodola_6.jpg', '', '', '16 September 2017, 20:44', '188 KB', 'jpg', '1024 x 575 px', 1, 84, 1, 0, 0, 0, 0, '', 0),
(28, 1, '', 'stodola 5', '/stodola_5.jpg', '/thumb/stodola_5.jpg', '', '', '16 September 2017, 20:44', '189 KB', 'jpg', '1024 x 575 px', 1, 83, 1, 0, 0, 0, 0, '', 0),
(29, 1, '', 'stodola 4', '/stodola_4.jpg', '/thumb/stodola_4.jpg', '', '', '16 September 2017, 20:44', '156 KB', 'jpg', '1024 x 575 px', 1, 82, 1, 0, 0, 0, 0, '', 0),
(30, 1, '', 'stodola 7', '/stodola_7.jpg', '/thumb/stodola_7.jpg', '', '', '16 September 2017, 20:44', '158 KB', 'jpg', '1024 x 575 px', 1, 81, 1, 0, 0, 0, 0, '', 0),
(31, 1, '', 'stodola 3', '/stodola_3.jpg', '/thumb/stodola_3.jpg', '', '', '16 September 2017, 20:44', '185 KB', 'jpg', '1024 x 575 px', 1, 80, 1, 0, 0, 0, 0, '', 0),
(32, 1, '', 'stodola 2', '/stodola_2.jpg', '/thumb/stodola_2.jpg', '', '', '16 September 2017, 20:44', '200 KB', 'jpg', '1024 x 575 px', 1, 79, 1, 0, 0, 0, 0, '', 0),
(33, 1, '', 'stodola 1', '/stodola_1.jpg', '/thumb/stodola_1.jpg', '', '', '16 September 2017, 20:44', '178 KB', 'jpg', '1024 x 575 px', 1, 78, 1, 0, 0, 0, 0, '', 0),
(34, 1, '', 'sanie 1', '/sanie_1.jpg', '/thumb/sanie_1.jpg', '', '', '16 September 2017, 20:44', '121 KB', 'jpg', '767 x 575 px', 1, 77, 1, 0, 0, 0, 0, '', 0),
(35, 1, '', 'reflektor 2', '/reflektor_2.jpg', '/thumb/reflektor_2.jpg', '', '', '16 September 2017, 20:44', '96 KB', 'jpg', '767 x 575 px', 1, 76, 1, 0, 0, 0, 0, '', 0),
(36, 1, '', 'pole 2', '/pole_2.jpg', '/thumb/pole_2.jpg', '', '', '16 September 2017, 20:44', '205 KB', 'jpg', '1024 x 575 px', 1, 75, 1, 0, 0, 0, 0, '', 0),
(37, 1, '', 'pole 1', '/pole_1.jpg', '/thumb/pole_1.jpg', '', '', '16 September 2017, 20:44', '216 KB', 'jpg', '1024 x 575 px', 1, 74, 1, 0, 0, 0, 0, '', 0),
(38, 1, '', 'powoz 4', '/powoz_4.jpg', '/thumb/powoz_4.jpg', '', '', '16 September 2017, 20:44', '90 KB', 'jpg', '767 x 575 px', 1, 73, 1, 0, 0, 0, 0, '', 0),
(39, 1, '', 'reflektor 1', '/reflektor_1.jpg', '/thumb/reflektor_1.jpg', '', '', '16 September 2017, 20:44', '70 KB', 'jpg', '431 x 575 px', 1, 72, 1, 0, 0, 0, 0, '', 0),
(40, 1, '', 'powoz 5', '/powoz_5.jpg', '/thumb/powoz_5.jpg', '', '', '16 September 2017, 20:44', '115 KB', 'jpg', '767 x 575 px', 1, 71, 1, 0, 0, 0, 0, '', 0),
(41, 1, '', 'powoz 2', '/powoz_2.jpg', '/thumb/powoz_2.jpg', '', '', '16 September 2017, 20:44', '123 KB', 'jpg', '767 x 575 px', 1, 70, 1, 0, 0, 0, 0, '', 0),
(42, 1, '', 'powoz 3', '/powoz_3.jpg', '/thumb/powoz_3.jpg', '', '', '16 September 2017, 20:44', '113 KB', 'jpg', '767 x 575 px', 1, 69, 1, 0, 0, 0, 0, '', 0),
(43, 1, '', 'powoz 1', '/powoz_1.jpg', '/thumb/powoz_1.jpg', '', '', '16 September 2017, 20:44', '154 KB', 'jpg', '1024 x 768 px', 1, 68, 1, 0, 0, 0, 0, '', 0),
(44, 1, '', 'podworze 4', '/podworze_4.jpg', '/thumb/podworze_4.jpg', '', '', '16 September 2017, 20:44', '143 KB', 'jpg', '1024 x 575 px', 1, 67, 1, 0, 0, 0, 0, '', 0),
(45, 1, '', 'podworze 3', '/podworze_3.jpg', '/thumb/podworze_3.jpg', '', '', '16 September 2017, 20:44', '213 KB', 'jpg', '1024 x 575 px', 1, 66, 1, 0, 0, 0, 0, '', 0),
(46, 1, '', 'podworze 2', '/podworze_2.jpg', '/thumb/podworze_2.jpg', '', '', '16 September 2017, 20:44', '214 KB', 'jpg', '1024 x 575 px', 1, 65, 1, 0, 0, 0, 0, '', 0),
(47, 1, '', 'podworze 1', '/podworze_1.jpg', '/thumb/podworze_1.jpg', '', '', '16 September 2017, 20:44', '200 KB', 'jpg', '1024 x 575 px', 1, 64, 1, 0, 0, 0, 0, '', 0),
(48, 1, '', 'PH 9', '/PH_9.jpg', '/thumb/PH_9.jpg', '', '', '16 September 2017, 20:44', '195 KB', 'jpg', '1024 x 575 px', 1, 63, 1, 0, 0, 0, 0, '', 0),
(49, 1, '', 'plot 1', '/plot_1.jpg', '/thumb/plot_1.jpg', '', '', '16 September 2017, 20:44', '186 KB', 'jpg', '1024 x 575 px', 1, 62, 1, 0, 0, 0, 0, '', 0),
(50, 1, '', 'PH 10', '/PH_10.jpg', '/thumb/PH_10.jpg', '', '', '16 September 2017, 20:44', '178 KB', 'jpg', '1024 x 575 px', 1, 61, 1, 0, 0, 0, 0, '', 0),
(51, 1, '', 'plug 1', '/plug_1.jpg', '/thumb/plug_1.jpg', '', '', '16 September 2017, 20:44', '122 KB', 'jpg', '1024 x 575 px', 1, 60, 1, 0, 0, 0, 0, '', 0),
(52, 1, '', 'plot 3', '/plot_3.jpg', '/thumb/plot_3.jpg', '', '', '16 September 2017, 20:44', '159 KB', 'jpg', '1024 x 575 px', 1, 59, 1, 0, 0, 0, 0, '', 0),
(53, 1, '', 'plot 2', '/plot_2.jpg', '/thumb/plot_2.jpg', '', '', '16 September 2017, 20:44', '194 KB', 'jpg', '1024 x 575 px', 1, 58, 1, 0, 0, 0, 0, '', 0),
(54, 1, '', 'PH 6', '/PH_6.jpg', '/thumb/PH_6.jpg', '', '', '16 September 2017, 20:44', '137 KB', 'jpg', '1024 x 575 px', 1, 57, 1, 0, 0, 0, 0, '', 0),
(55, 1, '', 'PH 7', '/PH_7.jpg', '/thumb/PH_7.jpg', '', '', '16 September 2017, 20:44', '149 KB', 'jpg', '1024 x 575 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(56, 1, '', 'PH 8', '/PH_8.jpg', '/thumb/PH_8.jpg', '', '', '16 September 2017, 20:44', '116 KB', 'jpg', '1024 x 575 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(57, 1, '', 'PH 5', '/PH_5.jpg', '/thumb/PH_5.jpg', '', '', '16 September 2017, 20:44', '122 KB', 'jpg', '1024 x 575 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(58, 1, '', 'PH 3', '/PH_3.jpg', '/thumb/PH_3.jpg', '', '', '16 September 2017, 20:44', '148 KB', 'jpg', '1024 x 575 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(59, 1, '', 'ogrod 1', '/ogrod_1.jpg', '/thumb/ogrod_1.jpg', '', '', '16 September 2017, 20:43', '112 KB', 'jpg', '767 x 575 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(60, 1, '', 'PH 4', '/PH_4.jpg', '/thumb/PH_4.jpg', '', '', '16 September 2017, 20:43', '151 KB', 'jpg', '1024 x 575 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(61, 1, '', 'obora 1', '/obora_1.jpg', '/thumb/obora_1.jpg', '', '', '16 September 2017, 20:43', '192 KB', 'jpg', '1024 x 575 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(62, 1, '', 'PH 2', '/PH_2.jpg', '/thumb/PH_2.jpg', '', '', '16 September 2017, 20:43', '154 KB', 'jpg', '1024 x 575 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(63, 1, '', 'mlyn 5', '/mlyn_5.jpg', '/thumb/mlyn_5.jpg', '', '', '16 September 2017, 20:43', '132 KB', 'jpg', '1024 x 575 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(64, 1, '', 'PH 1', '/PH_1.jpg', '/thumb/PH_1.jpg', '', '', '16 September 2017, 20:43', '138 KB', 'jpg', '1024 x 575 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(65, 1, '', 'krowa 1', '/krowa_1.jpg', '/thumb/krowa_1.jpg', '', '', '16 September 2017, 20:43', '162 KB', 'jpg', '1024 x 575 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(66, 1, '', 'mlyn 6', '/mlyn_6.jpg', '/thumb/mlyn_6.jpg', '', '', '16 September 2017, 20:43', '67 KB', 'jpg', '431 x 575 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(67, 1, '', 'mlyn 4', '/mlyn_4.jpg', '/thumb/mlyn_4.jpg', '', '', '16 September 2017, 20:43', '125 KB', 'jpg', '1024 x 575 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(68, 1, '', 'lampa 1', '/lampa_1.jpg', '/thumb/lampa_1.jpg', '', '', '16 September 2017, 20:43', '81 KB', 'jpg', '323 x 575 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(69, 1, '', 'mlyn 2', '/mlyn_2.jpg', '/thumb/mlyn_2.jpg', '', '', '16 September 2017, 20:43', '127 KB', 'jpg', '1024 x 575 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(70, 1, '', 'mlyn 3', '/mlyn_3.jpg', '/thumb/mlyn_3.jpg', '', '', '16 September 2017, 20:43', '94 KB', 'jpg', '323 x 575 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(71, 1, '', 'kuznia 4', '/kuznia_4.jpg', '/thumb/kuznia_4.jpg', '', '', '16 September 2017, 20:43', '127 KB', 'jpg', '1024 x 575 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(72, 1, '', 'kwiaty 1', '/kwiaty_1.jpg', '/thumb/kwiaty_1.jpg', '', '', '16 September 2017, 20:43', '217 KB', 'jpg', '1024 x 575 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(73, 1, '', 'mlyn 1', '/mlyn_1.jpg', '/thumb/mlyn_1.jpg', '', '', '16 September 2017, 20:43', '84 KB', 'jpg', '323 x 575 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(74, 1, '', 'kuznia 5', '/kuznia_5.jpg', '/thumb/kuznia_5.jpg', '', '', '16 September 2017, 20:43', '63 KB', 'jpg', '431 x 575 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(75, 1, '', 'kuznia 3', '/kuznia_3.jpg', '/thumb/kuznia_3.jpg', '', '', '16 September 2017, 20:43', '130 KB', 'jpg', '1024 x 575 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(76, 1, '', 'kosciol', '/kosciol.jpg', '/thumb/kosciol.jpg', '', '', '16 September 2017, 20:43', '89 KB', 'jpg', '323 x 575 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(77, 1, '', 'kuznia 1', '/kuznia_1.jpg', '/thumb/kuznia_1.jpg', '', '', '16 September 2017, 20:43', '115 KB', 'jpg', '1024 x 575 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(78, 1, '', 'kuznia 2', '/kuznia_2.jpg', '/thumb/kuznia_2.jpg', '', '', '16 September 2017, 20:43', '128 KB', 'jpg', '1024 x 575 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(79, 1, '', 'kierat 1', '/kierat_1.jpg', '/thumb/kierat_1.jpg', '', '', '16 September 2017, 20:43', '171 KB', 'jpg', '1024 x 575 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(80, 1, '', 'koza 2', '/koza_2.jpg', '/thumb/koza_2.jpg', '', '', '16 September 2017, 20:43', '152 KB', 'jpg', '1024 x 575 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(81, 1, '', 'koza 3', '/koza_3.jpg', '/thumb/koza_3.jpg', '', '', '16 September 2017, 20:43', '162 KB', 'jpg', '1024 x 575 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(82, 1, '', 'koza 1', '/koza_1.jpg', '/thumb/koza_1.jpg', '', '', '16 September 2017, 20:43', '149 KB', 'jpg', '1024 x 575 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(83, 1, '', 'karmik', '/karmik.jpg', '/thumb/karmik.jpg', '', '', '16 September 2017, 20:43', '75 KB', 'jpg', '323 x 575 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(84, 1, '', 'koryto 1', '/koryto_1.jpg', '/thumb/koryto_1.jpg', '', '', '16 September 2017, 20:43', '184 KB', 'jpg', '1024 x 575 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(85, 1, '', 'kaplica 1', '/kaplica_1.jpg', '/thumb/kaplica_1.jpg', '', '', '16 September 2017, 20:43', '202 KB', 'jpg', '1024 x 575 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(86, 1, '', 'dworek 6', '/dworek_6.jpg', '/thumb/dworek_6.jpg', '', '', '16 September 2017, 20:43', '138 KB', 'jpg', '767 x 575 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(87, 1, '', 'dworek 2', '/dworek_2.jpg', '/thumb/dworek_2.jpg', '', '', '16 September 2017, 20:43', '250 KB', 'jpg', '1024 x 575 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(88, 1, '', 'dworek 1', '/dworek_1.jpg', '/thumb/dworek_1.jpg', '', '', '16 September 2017, 20:43', '215 KB', 'jpg', '1024 x 575 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(89, 1, '', 'dworek 5', '/dworek_5.jpg', '/thumb/dworek_5.jpg', '', '', '16 September 2017, 20:43', '145 KB', 'jpg', '767 x 575 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(90, 1, '', 'chustawka', '/chustawka.jpg', '/thumb/chustawka.jpg', '', '', '16 September 2017, 20:43', '183 KB', 'jpg', '1024 x 575 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(91, 1, '', 'dworek 4', '/dworek_4.jpg', '/thumb/dworek_4.jpg', '', '', '16 September 2017, 20:43', '166 KB', 'jpg', '1024 x 575 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(92, 1, '', 'dworek 3', '/dworek_3.jpg', '/thumb/dworek_3.jpg', '', '', '16 September 2017, 20:43', '141 KB', 'jpg', '1024 x 575 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(93, 1, '', 'chata 15', '/chata_15.jpg', '/thumb/chata_15.jpg', '', '', '16 September 2017, 20:42', '181 KB', 'jpg', '1024 x 575 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(94, 1, '', 'chata 16', '/chata_16.jpg', '/thumb/chata_16.jpg', '', '', '16 September 2017, 20:42', '147 KB', 'jpg', '767 x 575 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(95, 1, '', 'dach 1', '/dach_1.jpg', '/thumb/dach_1.jpg', '', '', '16 September 2017, 20:42', '74 KB', 'jpg', '431 x 575 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(96, 1, '', 'chata 14', '/chata_14.jpg', '/thumb/chata_14.jpg', '', '', '16 September 2017, 20:42', '177 KB', 'jpg', '1024 x 575 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(97, 1, '', 'chata 6', '/chata_6.jpg', '/thumb/chata_6.jpg', '', '', '16 September 2017, 20:42', '186 KB', 'jpg', '1024 x 575 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(98, 1, '', 'chata 13', '/chata_13.jpg', '/thumb/chata_13.jpg', '', '', '16 September 2017, 20:42', '121 KB', 'jpg', '1024 x 575 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(99, 1, '', 'chata 10', '/chata_10.jpg', '/thumb/chata_10.jpg', '', '', '16 September 2017, 20:42', '195 KB', 'jpg', '1024 x 575 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(100, 1, '', 'chata 9', '/chata_9.jpg', '/thumb/chata_9.jpg', '', '', '16 September 2017, 20:42', '214 KB', 'jpg', '1024 x 575 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(101, 1, '', 'chata 11', '/chata_11.jpg', '/thumb/chata_11.jpg', '', '', '16 September 2017, 20:42', '175 KB', 'jpg', '1024 x 575 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(102, 1, '', 'chata 12', '/chata_12.jpg', '/thumb/chata_12.jpg', '', '', '16 September 2017, 20:42', '88 KB', 'jpg', '323 x 575 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(103, 1, '', 'chata 5', '/chata_5.jpg', '/thumb/chata_5.jpg', '', '', '16 September 2017, 20:42', '196 KB', 'jpg', '1024 x 575 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(104, 1, '', 'chata 8', '/chata_8.jpg', '/thumb/chata_8.jpg', '', '', '16 September 2017, 20:42', '130 KB', 'jpg', '1024 x 575 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(105, 1, '', 'chata 7', '/chata_7.jpg', '/thumb/chata_7.jpg', '', '', '16 September 2017, 20:42', '191 KB', 'jpg', '1024 x 575 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(106, 1, '', 'chata 1', '/chata_1.jpg', '/thumb/chata_1.jpg', '', '', '16 September 2017, 20:42', '209 KB', 'jpg', '1024 x 575 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(107, 1, '', 'budynek 1', '/budynek_1.jpg', '/thumb/budynek_1.jpg', '', '', '16 September 2017, 20:42', '200 KB', 'jpg', '1024 x 575 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(108, 1, '', 'chata 4', '/chata_4.jpg', '/thumb/chata_4.jpg', '', '', '16 September 2017, 20:42', '147 KB', 'jpg', '1024 x 575 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(109, 1, '', 'chata 3', '/chata_3.jpg', '/thumb/chata_3.jpg', '', '', '16 September 2017, 20:42', '179 KB', 'jpg', '1024 x 575 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(110, 1, '', 'chata 2', '/chata_2.jpg', '/thumb/chata_2.jpg', '', '', '16 September 2017, 20:42', '113 KB', 'jpg', '1024 x 575 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(111, 2, '', 'wip04', '/wip04.jpg', '/thumb/wip04.jpg', '', '', '16 September 2017, 21:05', '114 KB', 'JPG', '1200 x 900 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(112, 2, '', 'wip07', '/wip07.jpg', '/thumb/wip07.jpg', '', '', '16 September 2017, 21:05', '153 KB', 'JPG', '1200 x 900 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(113, 2, '', 'wip02', '/wip02.jpg', '/thumb/wip02.jpg', '', '', '16 September 2017, 21:05', '157 KB', 'JPG', '1200 x 900 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(114, 2, '', 'wip09', '/wip09.jpg', '/thumb/wip09.jpg', '', '', '16 September 2017, 21:05', '143 KB', 'JPG', '1200 x 900 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(115, 2, '', 'wip03', '/wip03.jpg', '/thumb/wip03.jpg', '', '', '16 September 2017, 21:05', '206 KB', 'JPG', '1200 x 900 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(116, 2, '', 'wip08', '/wip08.jpg', '/thumb/wip08.jpg', '', '', '16 September 2017, 21:05', '146 KB', 'JPG', '1200 x 900 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(117, 2, '', 'wip01', '/wip01.jpg', '/thumb/wip01.jpg', '', '', '16 September 2017, 21:05', '210 KB', 'JPG', '1200 x 900 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(118, 2, '', 'wip05', '/wip05.jpg', '/thumb/wip05.jpg', '', '', '16 September 2017, 21:05', '188 KB', 'JPG', '1200 x 900 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(119, 2, '', 'wip10', '/wip10.jpg', '/thumb/wip10.jpg', '', '', '16 September 2017, 21:05', '149 KB', 'JPG', '1200 x 900 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(120, 2, '', 'wip13', '/wip13.jpg', '/thumb/wip13.jpg', '', '', '16 September 2017, 21:05', '126 KB', 'JPG', '1200 x 900 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(121, 2, '', 'wip11', '/wip11.jpg', '/thumb/wip11.jpg', '', '', '16 September 2017, 21:05', '123 KB', 'JPG', '1200 x 900 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(122, 2, '', 'wip16', '/wip16.jpg', '/thumb/wip16.jpg', '', '', '16 September 2017, 21:05', '133 KB', 'JPG', '1200 x 900 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(123, 2, '', 'wip14', '/wip14.jpg', '/thumb/wip14.jpg', '', '', '16 September 2017, 21:05', '138 KB', 'JPG', '1200 x 900 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(124, 2, '', 'wip12', '/wip12.jpg', '/thumb/wip12.jpg', '', '', '16 September 2017, 21:05', '138 KB', 'JPG', '1200 x 900 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(125, 2, '', 'wip19', '/wip19.jpg', '/thumb/wip19.jpg', '', '', '16 September 2017, 21:06', '109 KB', 'JPG', '1200 x 900 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(126, 2, '', 'wip22', '/wip22.jpg', '/thumb/wip22.jpg', '', '', '16 September 2017, 21:06', '136 KB', 'JPG', '1200 x 900 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(127, 2, '', 'wip25', '/wip25.jpg', '/thumb/wip25.jpg', '', '', '16 September 2017, 21:06', '133 KB', 'JPG', '1200 x 900 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(128, 2, '', 'wip06', '/wip06.jpg', '/thumb/wip06.jpg', '', '', '16 September 2017, 21:06', '141 KB', 'JPG', '1200 x 900 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(129, 2, '', 'wip26', '/wip26.jpg', '/thumb/wip26.jpg', '', '', '16 September 2017, 21:06', '98 KB', 'JPG', '1200 x 900 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(130, 2, '', 'wip18', '/wip18.jpg', '/thumb/wip18.jpg', '', '', '16 September 2017, 21:06', '201 KB', 'JPG', '1200 x 900 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(131, 2, '', 'wip20', '/wip20.jpg', '/thumb/wip20.jpg', '', '', '16 September 2017, 21:06', '192 KB', 'JPG', '1200 x 900 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(132, 2, '', 'wip24', '/wip24.jpg', '/thumb/wip24.jpg', '', '', '16 September 2017, 21:06', '145 KB', 'JPG', '1200 x 900 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(133, 2, '', 'wip23', '/wip23.jpg', '/thumb/wip23.jpg', '', '', '16 September 2017, 21:06', '132 KB', 'JPG', '1200 x 900 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(134, 2, '', 'wip15', '/wip15.jpg', '/thumb/wip15.jpg', '', '', '16 September 2017, 21:06', '126 KB', 'JPG', '1200 x 900 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(135, 2, '', 'wip17', '/wip17.jpg', '/thumb/wip17.jpg', '', '', '16 September 2017, 21:06', '126 KB', 'JPG', '1200 x 900 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(136, 2, '', 'wip21', '/wip21.jpg', '/thumb/wip21.jpg', '', '', '16 September 2017, 21:06', '138 KB', 'JPG', '1200 x 900 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(137, 3, '', 'bor67', '/bor67.jpg', '/thumb/bor67.jpg', '', '', '16 September 2017, 21:15', '197 KB', 'JPG', '1200 x 900 px', 1, 67, 1, 0, 0, 0, 0, '', 0),
(138, 3, '', 'bor66', '/bor66.jpg', '/thumb/bor66.jpg', '', '', '16 September 2017, 21:15', '132 KB', 'JPG', '1200 x 900 px', 1, 66, 1, 0, 0, 0, 0, '', 0),
(139, 3, '', 'bor65', '/bor65.jpg', '/thumb/bor65.jpg', '', '', '16 September 2017, 21:15', '108 KB', 'JPG', '1200 x 900 px', 1, 65, 1, 0, 0, 0, 0, '', 0),
(140, 3, '', 'bor63', '/bor63.jpg', '/thumb/bor63.jpg', '', '', '16 September 2017, 21:15', '124 KB', 'JPG', '1200 x 900 px', 1, 64, 1, 0, 0, 0, 0, '', 0),
(141, 3, '', 'bor62', '/bor62.jpg', '/thumb/bor62.jpg', '', '', '16 September 2017, 21:15', '111 KB', 'JPG', '1200 x 900 px', 1, 63, 1, 0, 0, 0, 0, '', 0),
(142, 3, '', 'bor64', '/bor64.jpg', '/thumb/bor64.jpg', '', '', '16 September 2017, 21:15', '126 KB', 'JPG', '1200 x 900 px', 1, 62, 1, 0, 0, 0, 0, '', 0),
(143, 3, '', 'bor52', '/bor52.jpg', '/thumb/bor52.jpg', '', '', '16 September 2017, 21:14', '135 KB', 'JPG', '1200 x 900 px', 1, 61, 1, 0, 0, 0, 0, '', 0),
(144, 3, '', 'bor55', '/bor55.jpg', '/thumb/bor55.jpg', '', '', '16 September 2017, 21:14', '134 KB', 'JPG', '1200 x 900 px', 1, 60, 1, 0, 0, 0, 0, '', 0),
(145, 3, '', 'bor57', '/bor57.jpg', '/thumb/bor57.jpg', '', '', '16 September 2017, 21:14', '119 KB', 'JPG', '1200 x 900 px', 1, 59, 1, 0, 0, 0, 0, '', 0),
(146, 3, '', 'bor59', '/bor59.jpg', '/thumb/bor59.jpg', '', '', '16 September 2017, 21:14', '146 KB', 'JPG', '1200 x 900 px', 1, 58, 1, 0, 0, 0, 0, '', 0),
(147, 3, '', 'bor60', '/bor60.jpg', '/thumb/bor60.jpg', '', '', '16 September 2017, 21:14', '140 KB', 'JPG', '1200 x 900 px', 1, 57, 1, 0, 0, 0, 0, '', 0),
(148, 3, '', 'bor61', '/bor61.jpg', '/thumb/bor61.jpg', '', '', '16 September 2017, 21:15', '141 KB', 'JPG', '1200 x 900 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(149, 3, '', 'bor53', '/bor53.jpg', '/thumb/bor53.jpg', '', '', '16 September 2017, 21:14', '153 KB', 'JPG', '1200 x 900 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(150, 3, '', 'bor58', '/bor58.jpg', '/thumb/bor58.jpg', '', '', '16 September 2017, 21:14', '110 KB', 'JPG', '1200 x 900 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(151, 3, '', 'bor56', '/bor56.jpg', '/thumb/bor56.jpg', '', '', '16 September 2017, 21:14', '148 KB', 'JPG', '1200 x 900 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(152, 3, '', 'bor54', '/bor54.jpg', '/thumb/bor54.jpg', '', '', '16 September 2017, 21:14', '125 KB', 'JPG', '1200 x 900 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(153, 3, '', 'bor45', '/bor45.jpg', '/thumb/bor45.jpg', '', '', '16 September 2017, 21:14', '156 KB', 'JPG', '1200 x 900 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(154, 3, '', 'bor51', '/bor51.jpg', '/thumb/bor51.jpg', '', '', '16 September 2017, 21:14', '131 KB', 'JPG', '1200 x 900 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(155, 3, '', 'bor46', '/bor46.jpg', '/thumb/bor46.jpg', '', '', '16 September 2017, 21:14', '122 KB', 'JPG', '1200 x 900 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(156, 3, '', 'bor43', '/bor43.jpg', '/thumb/bor43.jpg', '', '', '16 September 2017, 21:14', '148 KB', 'JPG', '1200 x 900 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(157, 3, '', 'bor50', '/bor50.jpg', '/thumb/bor50.jpg', '', '', '16 September 2017, 21:14', '149 KB', 'JPG', '1200 x 900 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(158, 3, '', 'bor48', '/bor48.jpg', '/thumb/bor48.jpg', '', '', '16 September 2017, 21:14', '153 KB', 'JPG', '1200 x 900 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(159, 3, '', 'bor49', '/bor49.jpg', '/thumb/bor49.jpg', '', '', '16 September 2017, 21:14', '184 KB', 'JPG', '1200 x 900 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(160, 3, '', 'bor47', '/bor47.jpg', '/thumb/bor47.jpg', '', '', '16 September 2017, 21:14', '209 KB', 'JPG', '1200 x 900 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(161, 3, '', 'bor44', '/bor44.jpg', '/thumb/bor44.jpg', '', '', '16 September 2017, 21:14', '158 KB', 'JPG', '1200 x 900 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(162, 3, '', 'bor42', '/bor42.jpg', '/thumb/bor42.jpg', '', '', '16 September 2017, 21:14', '83 KB', 'JPG', '1200 x 900 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(163, 3, '', 'bor41', '/bor41.jpg', '/thumb/bor41.jpg', '', '', '16 September 2017, 21:14', '119 KB', 'JPG', '1200 x 900 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(164, 3, '', 'bor39', '/bor39.jpg', '/thumb/bor39.jpg', '', '', '16 September 2017, 21:13', '109 KB', 'JPG', '1200 x 900 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(165, 3, '', 'bor37', '/bor37.jpg', '/thumb/bor37.jpg', '', '', '16 September 2017, 21:13', '79 KB', 'JPG', '1200 x 900 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(166, 3, '', 'bor31', '/bor31.jpg', '/thumb/bor31.jpg', '', '', '16 September 2017, 21:13', '146 KB', 'JPG', '1200 x 900 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(167, 3, '', 'bor26', '/bor26.jpg', '/thumb/bor26.jpg', '', '', '16 September 2017, 21:13', '149 KB', 'JPG', '1200 x 900 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(168, 3, '', 'bor32', '/bor32.jpg', '/thumb/bor32.jpg', '', '', '16 September 2017, 21:13', '136 KB', 'JPG', '1200 x 900 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(169, 3, '', 'bor30', '/bor30.jpg', '/thumb/bor30.jpg', '', '', '16 September 2017, 21:13', '146 KB', 'JPG', '1200 x 900 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(170, 3, '', 'bor35', '/bor35.jpg', '/thumb/bor35.jpg', '', '', '16 September 2017, 21:13', '91 KB', 'JPG', '1200 x 900 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(171, 3, '', 'bor36', '/bor36.jpg', '/thumb/bor36.jpg', '', '', '16 September 2017, 21:13', '170 KB', 'JPG', '1200 x 900 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(172, 3, '', 'bor38', '/bor38.jpg', '/thumb/bor38.jpg', '', '', '16 September 2017, 21:13', '146 KB', 'JPG', '1200 x 900 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(173, 3, '', 'bor40', '/bor40.jpg', '/thumb/bor40.jpg', '', '', '16 September 2017, 21:13', '134 KB', 'JPG', '1200 x 900 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(174, 3, '', 'bor33', '/bor33.jpg', '/thumb/bor33.jpg', '', '', '16 September 2017, 21:13', '111 KB', 'JPG', '1200 x 900 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(175, 3, '', 'bor34', '/bor34.jpg', '/thumb/bor34.jpg', '', '', '16 September 2017, 21:13', '96 KB', 'JPG', '1200 x 900 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(176, 3, '', 'bor29', '/bor29.jpg', '/thumb/bor29.jpg', '', '', '16 September 2017, 21:13', '132 KB', 'JPG', '1200 x 900 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(177, 3, '', 'bor27', '/bor27.jpg', '/thumb/bor27.jpg', '', '', '16 September 2017, 21:13', '207 KB', 'JPG', '1200 x 900 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(178, 3, '', 'bor28', '/bor28.jpg', '/thumb/bor28.jpg', '', '', '16 September 2017, 21:13', '146 KB', 'JPG', '1200 x 900 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(179, 3, '', 'bor21', '/bor21.jpg', '/thumb/bor21.jpg', '', '', '16 September 2017, 21:13', '105 KB', 'JPG', '1200 x 900 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(180, 3, '', 'bor22', '/bor22.jpg', '/thumb/bor22.jpg', '', '', '16 September 2017, 21:13', '148 KB', 'JPG', '1200 x 900 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(181, 3, '', 'bor18', '/bor18.jpg', '/thumb/bor18.jpg', '', '', '16 September 2017, 21:13', '132 KB', 'JPG', '1200 x 900 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(182, 3, '', 'bor25', '/bor25.jpg', '/thumb/bor25.jpg', '', '', '16 September 2017, 21:13', '173 KB', 'JPG', '1200 x 900 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(183, 3, '', 'bor23', '/bor23.jpg', '/thumb/bor23.jpg', '', '', '16 September 2017, 21:13', '145 KB', 'JPG', '1200 x 900 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(184, 3, '', 'bor24', '/bor24.jpg', '/thumb/bor24.jpg', '', '', '16 September 2017, 21:13', '127 KB', 'JPG', '1200 x 900 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(185, 3, '', 'bor16', '/bor16.jpg', '/thumb/bor16.jpg', '', '', '16 September 2017, 21:13', '143 KB', 'JPG', '1200 x 900 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(186, 3, '', 'bor13', '/bor13.jpg', '/thumb/bor13.jpg', '', '', '16 September 2017, 21:12', '122 KB', 'JPG', '1200 x 900 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(187, 3, '', 'bor1', '/bor1.jpg', '/thumb/bor1.jpg', '', '', '16 September 2017, 21:12', '152 KB', 'JPG', '1200 x 900 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(188, 3, '', 'bor17', '/bor17.jpg', '/thumb/bor17.jpg', '', '', '16 September 2017, 21:13', '135 KB', 'JPG', '1200 x 900 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(189, 3, '', 'bor19', '/bor19.jpg', '/thumb/bor19.jpg', '', '', '16 September 2017, 21:13', '142 KB', 'JPG', '1200 x 900 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(190, 3, '', 'bor9', '/bor9.jpg', '/thumb/bor9.jpg', '', '', '16 September 2017, 21:12', '124 KB', 'JPG', '1200 x 900 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(191, 3, '', 'bor4', '/bor4.jpg', '/thumb/bor4.jpg', '', '', '16 September 2017, 21:12', '143 KB', 'JPG', '1200 x 900 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(192, 3, '', 'bor20', '/bor20.jpg', '/thumb/bor20.jpg', '', '', '16 September 2017, 21:13', '111 KB', 'JPG', '1200 x 900 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(193, 3, '', 'bor15', '/bor15.jpg', '/thumb/bor15.jpg', '', '', '16 September 2017, 21:12', '169 KB', 'JPG', '1200 x 900 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(194, 3, '', 'bor10', '/bor10.jpg', '/thumb/bor10.jpg', '', '', '16 September 2017, 21:12', '106 KB', 'JPG', '1200 x 900 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(195, 3, '', 'bor12', '/bor12.jpg', '/thumb/bor12.jpg', '', '', '16 September 2017, 21:12', '103 KB', 'JPG', '1200 x 900 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(196, 3, '', 'bor14', '/bor14.jpg', '/thumb/bor14.jpg', '', '', '16 September 2017, 21:12', '149 KB', 'JPG', '1200 x 900 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(197, 3, '', 'bor3', '/bor3.jpg', '/thumb/bor3.jpg', '', '', '16 September 2017, 21:12', '138 KB', 'JPG', '1200 x 900 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(198, 3, '', 'bor7', '/bor7.jpg', '/thumb/bor7.jpg', '', '', '16 September 2017, 21:12', '158 KB', 'JPG', '1200 x 900 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(199, 3, '', 'bor2', '/bor2.jpg', '/thumb/bor2.jpg', '', '', '16 September 2017, 21:12', '137 KB', 'JPG', '1200 x 900 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(200, 3, '', 'bor5', '/bor5.jpg', '/thumb/bor5.jpg', '', '', '16 September 2017, 21:12', '153 KB', 'JPG', '1200 x 900 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(201, 3, '', 'bor8', '/bor8.jpg', '/thumb/bor8.jpg', '', '', '16 September 2017, 21:12', '109 KB', 'JPG', '1200 x 900 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(202, 3, '', 'bor11', '/bor11.jpg', '/thumb/bor11.jpg', '', '', '16 September 2017, 21:12', '81 KB', 'JPG', '1200 x 900 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(203, 3, '', 'bor6', '/bor6.jpg', '/thumb/bor6.jpg', '', '', '16 September 2017, 21:12', '177 KB', 'JPG', '1200 x 900 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(205, 4, '', 'bieszczady317', '/bieszczady317.jpg', '/thumb/bieszczady317.jpg', '', '', '16 September 2017, 21:44', '188 KB', 'jpg', '1200 x 900 px', 1, 312, 1, 0, 0, 0, 0, '', 0),
(206, 4, '', 'bieszczady316', '/bieszczady316.jpg', '/thumb/bieszczady316.jpg', '', '', '16 September 2017, 21:44', '192 KB', 'jpg', '1200 x 900 px', 1, 311, 1, 0, 0, 0, 0, '', 0),
(207, 4, '', 'bieszczady315', '/bieszczady315.jpg', '/thumb/bieszczady315.jpg', '', '', '16 September 2017, 21:44', '89 KB', 'jpg', '1200 x 900 px', 1, 310, 1, 0, 0, 0, 0, '', 0),
(208, 4, '', 'bieszczady314', '/bieszczady314.jpg', '/thumb/bieszczady314.jpg', '', '', '16 September 2017, 21:44', '72 KB', 'jpg', '1200 x 900 px', 1, 309, 1, 0, 0, 0, 0, '', 0),
(209, 4, '', 'bieszczady313', '/bieszczady313.jpg', '/thumb/bieszczady313.jpg', '', '', '16 September 2017, 21:44', '78 KB', 'jpg', '1200 x 900 px', 1, 308, 1, 0, 0, 0, 0, '', 0),
(210, 4, '', 'bieszczady312', '/bieszczady312.jpg', '/thumb/bieszczady312.jpg', '', '', '16 September 2017, 21:44', '106 KB', 'jpg', '1200 x 900 px', 1, 307, 1, 0, 0, 0, 0, '', 0),
(211, 4, '', 'bieszczady311', '/bieszczady311.jpg', '/thumb/bieszczady311.jpg', '', '', '16 September 2017, 21:44', '87 KB', 'jpg', '1200 x 900 px', 1, 306, 1, 0, 0, 0, 0, '', 0),
(212, 4, '', 'bieszczady310', '/bieszczady310.jpg', '/thumb/bieszczady310.jpg', '', '', '16 September 2017, 21:44', '142 KB', 'jpg', '1200 x 900 px', 1, 305, 1, 0, 0, 0, 0, '', 0),
(213, 4, '', 'bieszczady309', '/bieszczady309.jpg', '/thumb/bieszczady309.jpg', '', '', '16 September 2017, 21:44', '130 KB', 'jpg', '1200 x 900 px', 1, 304, 1, 0, 0, 0, 0, '', 0),
(214, 4, '', 'bieszczady308', '/bieszczady308.jpg', '/thumb/bieszczady308.jpg', '', '', '16 September 2017, 21:44', '223 KB', 'jpg', '1200 x 900 px', 1, 303, 1, 0, 0, 0, 0, '', 0),
(215, 4, '', 'bieszczady307', '/bieszczady307.jpg', '/thumb/bieszczady307.jpg', '', '', '16 September 2017, 21:44', '210 KB', 'jpg', '1200 x 900 px', 1, 302, 1, 0, 0, 0, 0, '', 0),
(216, 4, '', 'bieszczady306', '/bieszczady306.jpg', '/thumb/bieszczady306.jpg', '', '', '16 September 2017, 21:44', '170 KB', 'jpg', '1200 x 900 px', 1, 301, 1, 0, 0, 0, 0, '', 0),
(217, 4, '', 'bieszczady305', '/bieszczady305.jpg', '/thumb/bieszczady305.jpg', '', '', '16 September 2017, 21:44', '123 KB', 'jpg', '1200 x 900 px', 1, 300, 1, 0, 0, 0, 0, '', 0),
(218, 4, '', 'bieszczady304', '/bieszczady304.jpg', '/thumb/bieszczady304.jpg', '', '', '16 September 2017, 21:44', '115 KB', 'jpg', '1200 x 900 px', 1, 299, 1, 0, 0, 0, 0, '', 0),
(219, 4, '', 'bieszczady303', '/bieszczady303.jpg', '/thumb/bieszczady303.jpg', '', '', '16 September 2017, 21:44', '193 KB', 'jpg', '1200 x 900 px', 1, 298, 1, 0, 0, 0, 0, '', 0),
(220, 4, '', 'bieszczady302', '/bieszczady302.jpg', '/thumb/bieszczady302.jpg', '', '', '16 September 2017, 21:44', '241 KB', 'jpg', '1200 x 900 px', 1, 297, 1, 0, 0, 0, 0, '', 0),
(221, 4, '', 'bieszczady301', '/bieszczady301.jpg', '/thumb/bieszczady301.jpg', '', '', '16 September 2017, 21:44', '234 KB', 'jpg', '1200 x 900 px', 1, 296, 1, 0, 0, 0, 0, '', 0),
(222, 4, '', 'bieszczady300', '/bieszczady300.jpg', '/thumb/bieszczady300.jpg', '', '', '16 September 2017, 21:44', '241 KB', 'jpg', '1200 x 900 px', 1, 295, 1, 0, 0, 0, 0, '', 0),
(223, 4, '', 'bieszczady299', '/bieszczady299.jpg', '/thumb/bieszczady299.jpg', '', '', '16 September 2017, 21:44', '244 KB', 'jpg', '1200 x 900 px', 1, 294, 1, 0, 0, 0, 0, '', 0),
(224, 4, '', 'bieszczady298', '/bieszczady298.jpg', '/thumb/bieszczady298.jpg', '', '', '16 September 2017, 21:44', '240 KB', 'jpg', '1200 x 900 px', 1, 293, 1, 0, 0, 0, 0, '', 0),
(225, 4, '', 'bieszczady297', '/bieszczady297.jpg', '/thumb/bieszczady297.jpg', '', '', '16 September 2017, 21:43', '181 KB', 'jpg', '1200 x 900 px', 1, 292, 1, 0, 0, 0, 0, '', 0),
(226, 4, '', 'bieszczady296', '/bieszczady296.jpg', '/thumb/bieszczady296.jpg', '', '', '16 September 2017, 21:43', '183 KB', 'jpg', '1200 x 900 px', 1, 291, 1, 0, 0, 0, 0, '', 0),
(227, 4, '', 'bieszczady295', '/bieszczady295.jpg', '/thumb/bieszczady295.jpg', '', '', '16 September 2017, 21:43', '154 KB', 'jpg', '1200 x 900 px', 1, 290, 1, 0, 0, 0, 0, '', 0),
(228, 4, '', 'bieszczady294', '/bieszczady294.jpg', '/thumb/bieszczady294.jpg', '', '', '16 September 2017, 21:43', '217 KB', 'jpg', '1200 x 900 px', 1, 289, 1, 0, 0, 0, 0, '', 0),
(229, 4, '', 'bieszczady293', '/bieszczady293.jpg', '/thumb/bieszczady293.jpg', '', '', '16 September 2017, 21:43', '184 KB', 'jpg', '1200 x 900 px', 1, 288, 1, 0, 0, 0, 0, '', 0),
(230, 4, '', 'bieszczady292', '/bieszczady292.jpg', '/thumb/bieszczady292.jpg', '', '', '16 September 2017, 21:43', '138 KB', 'jpg', '1200 x 900 px', 1, 287, 1, 0, 0, 0, 0, '', 0),
(231, 4, '', 'bieszczady291', '/bieszczady291.jpg', '/thumb/bieszczady291.jpg', '', '', '16 September 2017, 21:43', '207 KB', 'jpg', '1200 x 900 px', 1, 286, 1, 0, 0, 0, 0, '', 0),
(232, 4, '', 'bieszczady290', '/bieszczady290.jpg', '/thumb/bieszczady290.jpg', '', '', '16 September 2017, 21:43', '200 KB', 'jpg', '1200 x 900 px', 1, 285, 1, 0, 0, 0, 0, '', 0),
(233, 4, '', 'bieszczady289', '/bieszczady289.jpg', '/thumb/bieszczady289.jpg', '', '', '16 September 2017, 21:43', '178 KB', 'jpg', '1200 x 900 px', 1, 284, 1, 0, 0, 0, 0, '', 0),
(234, 4, '', 'bieszczady288', '/bieszczady288.jpg', '/thumb/bieszczady288.jpg', '', '', '16 September 2017, 21:43', '155 KB', 'jpg', '1200 x 900 px', 1, 283, 1, 0, 0, 0, 0, '', 0),
(235, 4, '', 'bieszczady287', '/bieszczady287.jpg', '/thumb/bieszczady287.jpg', '', '', '16 September 2017, 21:43', '195 KB', 'jpg', '1200 x 900 px', 1, 282, 1, 0, 0, 0, 0, '', 0),
(236, 4, '', 'bieszczady286', '/bieszczady286.jpg', '/thumb/bieszczady286.jpg', '', '', '16 September 2017, 21:43', '178 KB', 'jpg', '1200 x 900 px', 1, 281, 1, 0, 0, 0, 0, '', 0),
(237, 4, '', 'bieszczady285', '/bieszczady285.jpg', '/thumb/bieszczady285.jpg', '', '', '16 September 2017, 21:43', '219 KB', 'jpg', '1200 x 900 px', 1, 280, 1, 0, 0, 0, 0, '', 0),
(238, 4, '', 'bieszczady284', '/bieszczady284.jpg', '/thumb/bieszczady284.jpg', '', '', '16 September 2017, 21:43', '177 KB', 'jpg', '1200 x 900 px', 1, 279, 1, 0, 0, 0, 0, '', 0),
(239, 4, '', 'bieszczady282', '/bieszczady282.jpg', '/thumb/bieszczady282.jpg', '', '', '16 September 2017, 21:43', '182 KB', 'jpg', '1200 x 900 px', 1, 278, 1, 0, 0, 0, 0, '', 0),
(240, 4, '', 'bieszczady283', '/bieszczady283.jpg', '/thumb/bieszczady283.jpg', '', '', '16 September 2017, 21:43', '200 KB', 'jpg', '1200 x 900 px', 1, 277, 1, 0, 0, 0, 0, '', 0),
(241, 4, '', 'bieszczady281', '/bieszczady281.jpg', '/thumb/bieszczady281.jpg', '', '', '16 September 2017, 21:43', '185 KB', 'jpg', '1200 x 900 px', 1, 276, 1, 0, 0, 0, 0, '', 0),
(242, 4, '', 'bieszczady280', '/bieszczady280.jpg', '/thumb/bieszczady280.jpg', '', '', '16 September 2017, 21:42', '131 KB', 'jpg', '1200 x 900 px', 1, 275, 1, 0, 0, 0, 0, '', 0),
(243, 4, '', 'bieszczady279', '/bieszczady279.jpg', '/thumb/bieszczady279.jpg', '', '', '16 September 2017, 21:42', '139 KB', 'jpg', '1200 x 900 px', 1, 274, 1, 0, 0, 0, 0, '', 0),
(244, 4, '', 'bieszczady278', '/bieszczady278.jpg', '/thumb/bieszczady278.jpg', '', '', '16 September 2017, 21:42', '152 KB', 'jpg', '1200 x 900 px', 1, 273, 1, 0, 0, 0, 0, '', 0),
(245, 4, '', 'bieszczady277', '/bieszczady277.jpg', '/thumb/bieszczady277.jpg', '', '', '16 September 2017, 21:42', '148 KB', 'jpg', '1200 x 900 px', 1, 272, 1, 0, 0, 0, 0, '', 0),
(246, 4, '', 'bieszczady276', '/bieszczady276.jpg', '/thumb/bieszczady276.jpg', '', '', '16 September 2017, 21:42', '202 KB', 'jpg', '1200 x 900 px', 1, 271, 1, 0, 0, 0, 0, '', 0),
(247, 4, '', 'bieszczady275', '/bieszczady275.jpg', '/thumb/bieszczady275.jpg', '', '', '16 September 2017, 21:42', '197 KB', 'jpg', '1200 x 900 px', 1, 270, 1, 0, 0, 0, 0, '', 0),
(248, 4, '', 'bieszczady274', '/bieszczady274.jpg', '/thumb/bieszczady274.jpg', '', '', '16 September 2017, 21:42', '261 KB', 'jpg', '1200 x 900 px', 1, 269, 1, 0, 0, 0, 0, '', 0),
(249, 4, '', 'bieszczady273', '/bieszczady273.jpg', '/thumb/bieszczady273.jpg', '', '', '16 September 2017, 21:42', '235 KB', 'jpg', '1200 x 900 px', 1, 268, 1, 0, 0, 0, 0, '', 0),
(250, 4, '', 'bieszczady272', '/bieszczady272.jpg', '/thumb/bieszczady272.jpg', '', '', '16 September 2017, 21:42', '234 KB', 'jpg', '1200 x 900 px', 1, 267, 1, 0, 0, 0, 0, '', 0),
(251, 4, '', 'bieszczady271', '/bieszczady271.jpg', '/thumb/bieszczady271.jpg', '', '', '16 September 2017, 21:42', '205 KB', 'jpg', '1200 x 900 px', 1, 266, 1, 0, 0, 0, 0, '', 0),
(252, 4, '', 'bieszczady270', '/bieszczady270.jpg', '/thumb/bieszczady270.jpg', '', '', '16 September 2017, 21:42', '194 KB', 'jpg', '1200 x 900 px', 1, 265, 1, 0, 0, 0, 0, '', 0),
(253, 4, '', 'bieszczady269', '/bieszczady269.jpg', '/thumb/bieszczady269.jpg', '', '', '16 September 2017, 21:42', '138 KB', 'jpg', '1200 x 900 px', 1, 264, 1, 0, 0, 0, 0, '', 0),
(254, 4, '', 'bieszczady268', '/bieszczady268.jpg', '/thumb/bieszczady268.jpg', '', '', '16 September 2017, 21:42', '187 KB', 'jpg', '1200 x 900 px', 1, 263, 1, 0, 0, 0, 0, '', 0),
(255, 4, '', 'bieszczady267', '/bieszczady267.jpg', '/thumb/bieszczady267.jpg', '', '', '16 September 2017, 21:42', '183 KB', 'jpg', '1200 x 900 px', 1, 262, 1, 0, 0, 0, 0, '', 0),
(256, 4, '', 'bieszczady266', '/bieszczady266.jpg', '/thumb/bieszczady266.jpg', '', '', '16 September 2017, 21:41', '147 KB', 'jpg', '1200 x 900 px', 1, 261, 1, 0, 0, 0, 0, '', 0),
(257, 4, '', 'bieszczady265', '/bieszczady265.jpg', '/thumb/bieszczady265.jpg', '', '', '16 September 2017, 21:41', '138 KB', 'jpg', '1200 x 900 px', 1, 260, 1, 0, 0, 0, 0, '', 0),
(258, 4, '', 'bieszczady264', '/bieszczady264.jpg', '/thumb/bieszczady264.jpg', '', '', '16 September 2017, 21:41', '148 KB', 'jpg', '1200 x 900 px', 1, 259, 1, 0, 0, 0, 0, '', 0),
(259, 4, '', 'bieszczady263', '/bieszczady263.jpg', '/thumb/bieszczady263.jpg', '', '', '16 September 2017, 21:41', '161 KB', 'jpg', '1200 x 900 px', 1, 258, 1, 0, 0, 0, 0, '', 0),
(260, 4, '', 'bieszczady262', '/bieszczady262.jpg', '/thumb/bieszczady262.jpg', '', '', '16 September 2017, 21:41', '153 KB', 'jpg', '1200 x 900 px', 1, 257, 1, 0, 0, 0, 0, '', 0),
(261, 4, '', 'bieszczady261', '/bieszczady261.jpg', '/thumb/bieszczady261.jpg', '', '', '16 September 2017, 21:42', '204 KB', 'jpg', '1200 x 900 px', 1, 256, 1, 0, 0, 0, 0, '', 0),
(262, 4, '', 'bieszczady260', '/bieszczady260.jpg', '/thumb/bieszczady260.jpg', '', '', '16 September 2017, 21:41', '184 KB', 'jpg', '1200 x 900 px', 1, 255, 1, 0, 0, 0, 0, '', 0),
(263, 4, '', 'bieszczady259', '/bieszczady259.jpg', '/thumb/bieszczady259.jpg', '', '', '16 September 2017, 21:41', '211 KB', 'jpg', '1200 x 900 px', 1, 254, 1, 0, 0, 0, 0, '', 0),
(264, 4, '', 'bieszczady258', '/bieszczady258.jpg', '/thumb/bieszczady258.jpg', '', '', '16 September 2017, 21:41', '211 KB', 'jpg', '1200 x 900 px', 1, 253, 1, 0, 0, 0, 0, '', 0),
(265, 4, '', 'bieszczady257', '/bieszczady257.jpg', '/thumb/bieszczady257.jpg', '', '', '16 September 2017, 21:41', '173 KB', 'jpg', '1200 x 900 px', 1, 252, 1, 0, 0, 0, 0, '', 0),
(266, 4, '', 'bieszczady256', '/bieszczady256.jpg', '/thumb/bieszczady256.jpg', '', '', '16 September 2017, 21:41', '233 KB', 'jpg', '1200 x 900 px', 1, 251, 1, 0, 0, 0, 0, '', 0),
(267, 4, '', 'bieszczady255', '/bieszczady255.jpg', '/thumb/bieszczady255.jpg', '', '', '16 September 2017, 21:41', '218 KB', 'jpg', '1200 x 900 px', 1, 250, 1, 0, 0, 0, 0, '', 0),
(268, 4, '', 'bieszczady254', '/bieszczady254.jpg', '/thumb/bieszczady254.jpg', '', '', '16 September 2017, 21:41', '262 KB', 'jpg', '1200 x 900 px', 1, 249, 1, 0, 0, 0, 0, '', 0),
(269, 4, '', 'bieszczady253', '/bieszczady253.jpg', '/thumb/bieszczady253.jpg', '', '', '16 September 2017, 21:41', '246 KB', 'jpg', '1200 x 900 px', 1, 248, 1, 0, 0, 0, 0, '', 0),
(270, 4, '', 'bieszczady252', '/bieszczady252.jpg', '/thumb/bieszczady252.jpg', '', '', '16 September 2017, 21:41', '194 KB', 'jpg', '1200 x 900 px', 1, 247, 1, 0, 0, 0, 0, '', 0),
(271, 4, '', 'bieszczady251', '/bieszczady251.jpg', '/thumb/bieszczady251.jpg', '', '', '16 September 2017, 21:41', '198 KB', 'jpg', '1200 x 900 px', 1, 246, 1, 0, 0, 0, 0, '', 0),
(272, 4, '', 'bieszczady250', '/bieszczady250.jpg', '/thumb/bieszczady250.jpg', '', '', '16 September 2017, 21:41', '223 KB', 'jpg', '1200 x 900 px', 1, 245, 1, 0, 0, 0, 0, '', 0),
(273, 4, '', 'bieszczady249', '/bieszczady249.jpg', '/thumb/bieszczady249.jpg', '', '', '16 September 2017, 21:40', '206 KB', 'jpg', '1200 x 900 px', 1, 244, 1, 0, 0, 0, 0, '', 0),
(274, 4, '', 'bieszczady248', '/bieszczady248.jpg', '/thumb/bieszczady248.jpg', '', '', '16 September 2017, 21:40', '244 KB', 'jpg', '1200 x 900 px', 1, 243, 1, 0, 0, 0, 0, '', 0),
(275, 4, '', 'bieszczady247', '/bieszczady247.jpg', '/thumb/bieszczady247.jpg', '', '', '16 September 2017, 21:41', '267 KB', 'jpg', '1200 x 900 px', 1, 242, 1, 0, 0, 0, 0, '', 0),
(276, 4, '', 'bieszczady246', '/bieszczady246.jpg', '/thumb/bieszczady246.jpg', '', '', '16 September 2017, 21:40', '143 KB', 'jpg', '1200 x 900 px', 1, 241, 1, 0, 0, 0, 0, '', 0),
(277, 4, '', 'bieszczady245', '/bieszczady245.jpg', '/thumb/bieszczady245.jpg', '', '', '16 September 2017, 21:40', '195 KB', 'jpg', '1200 x 900 px', 1, 240, 1, 0, 0, 0, 0, '', 0),
(278, 4, '', 'bieszczady244', '/bieszczady244.jpg', '/thumb/bieszczady244.jpg', '', '', '16 September 2017, 21:40', '212 KB', 'jpg', '1200 x 900 px', 1, 239, 1, 0, 0, 0, 0, '', 0),
(279, 4, '', 'bieszczady243', '/bieszczady243.jpg', '/thumb/bieszczady243.jpg', '', '', '16 September 2017, 21:40', '166 KB', 'jpg', '1200 x 900 px', 1, 238, 1, 0, 0, 0, 0, '', 0),
(280, 4, '', 'bieszczady242', '/bieszczady242.jpg', '/thumb/bieszczady242.jpg', '', '', '16 September 2017, 21:40', '183 KB', 'jpg', '1200 x 900 px', 1, 237, 1, 0, 0, 0, 0, '', 0),
(281, 4, '', 'bieszczady241', '/bieszczady241.jpg', '/thumb/bieszczady241.jpg', '', '', '16 September 2017, 21:40', '188 KB', 'jpg', '1200 x 900 px', 1, 236, 1, 0, 0, 0, 0, '', 0),
(282, 4, '', 'bieszczady240', '/bieszczady240.jpg', '/thumb/bieszczady240.jpg', '', '', '16 September 2017, 21:40', '137 KB', 'jpg', '1200 x 900 px', 1, 235, 1, 0, 0, 0, 0, '', 0),
(283, 4, '', 'bieszczady239', '/bieszczady239.jpg', '/thumb/bieszczady239.jpg', '', '', '16 September 2017, 21:40', '196 KB', 'jpg', '1200 x 900 px', 1, 234, 1, 0, 0, 0, 0, '', 0),
(284, 4, '', 'bieszczady238', '/bieszczady238.jpg', '/thumb/bieszczady238.jpg', '', '', '16 September 2017, 21:40', '148 KB', 'jpg', '1200 x 900 px', 1, 233, 1, 0, 0, 0, 0, '', 0),
(285, 4, '', 'bieszczady237', '/bieszczady237.jpg', '/thumb/bieszczady237.jpg', '', '', '16 September 2017, 21:40', '174 KB', 'jpg', '1200 x 900 px', 1, 232, 1, 0, 0, 0, 0, '', 0),
(286, 4, '', 'bieszczady236', '/bieszczady236.jpg', '/thumb/bieszczady236.jpg', '', '', '16 September 2017, 21:40', '169 KB', 'jpg', '1200 x 900 px', 1, 231, 1, 0, 0, 0, 0, '', 0),
(287, 4, '', 'bieszczady235', '/bieszczady235.jpg', '/thumb/bieszczady235.jpg', '', '', '16 September 2017, 21:40', '190 KB', 'jpg', '1200 x 900 px', 1, 230, 1, 0, 0, 0, 0, '', 0),
(288, 4, '', 'bieszczady234', '/bieszczady234.jpg', '/thumb/bieszczady234.jpg', '', '', '16 September 2017, 21:40', '203 KB', 'jpg', '1200 x 900 px', 1, 229, 1, 0, 0, 0, 0, '', 0),
(289, 4, '', 'bieszczady233', '/bieszczady233.jpg', '/thumb/bieszczady233.jpg', '', '', '16 September 2017, 21:39', '166 KB', 'jpg', '1200 x 900 px', 1, 228, 1, 0, 0, 0, 0, '', 0),
(290, 4, '', 'bieszczady231', '/bieszczady231.jpg', '/thumb/bieszczady231.jpg', '', '', '16 September 2017, 21:39', '237 KB', 'jpg', '1200 x 900 px', 1, 227, 1, 0, 0, 0, 0, '', 0),
(291, 4, '', 'bieszczady232', '/bieszczady232.jpg', '/thumb/bieszczady232.jpg', '', '', '16 September 2017, 21:39', '243 KB', 'jpg', '1200 x 900 px', 1, 226, 1, 0, 0, 0, 0, '', 0),
(292, 4, '', 'bieszczady230', '/bieszczady230.jpg', '/thumb/bieszczady230.jpg', '', '', '16 September 2017, 21:39', '254 KB', 'jpg', '1200 x 900 px', 1, 225, 1, 0, 0, 0, 0, '', 0),
(293, 4, '', 'bieszczady229', '/bieszczady229.jpg', '/thumb/bieszczady229.jpg', '', '', '16 September 2017, 21:39', '213 KB', 'jpg', '1200 x 900 px', 1, 224, 1, 0, 0, 0, 0, '', 0),
(294, 4, '', 'bieszczady228', '/bieszczady228.jpg', '/thumb/bieszczady228.jpg', '', '', '16 September 2017, 21:39', '219 KB', 'jpg', '1200 x 900 px', 1, 223, 1, 0, 0, 0, 0, '', 0),
(295, 4, '', 'bieszczady227', '/bieszczady227.jpg', '/thumb/bieszczady227.jpg', '', '', '16 September 2017, 21:39', '79 KB', 'jpg', '1200 x 900 px', 1, 222, 1, 0, 0, 0, 0, '', 0),
(296, 4, '', 'bieszczady226', '/bieszczady226.jpg', '/thumb/bieszczady226.jpg', '', '', '16 September 2017, 21:39', '82 KB', 'jpg', '1200 x 900 px', 1, 221, 1, 0, 0, 0, 0, '', 0),
(297, 4, '', 'bieszczady225', '/bieszczady225.jpg', '/thumb/bieszczady225.jpg', '', '', '16 September 2017, 21:39', '112 KB', 'jpg', '1200 x 900 px', 1, 220, 1, 0, 0, 0, 0, '', 0),
(298, 4, '', 'bieszczady224', '/bieszczady224.jpg', '/thumb/bieszczady224.jpg', '', '', '16 September 2017, 21:39', '99 KB', 'jpg', '1200 x 900 px', 1, 219, 1, 0, 0, 0, 0, '', 0),
(299, 4, '', 'bieszczady223', '/bieszczady223.jpg', '/thumb/bieszczady223.jpg', '', '', '16 September 2017, 21:39', '94 KB', 'jpg', '1200 x 900 px', 1, 218, 1, 0, 0, 0, 0, '', 0),
(300, 4, '', 'bieszczady222', '/bieszczady222.jpg', '/thumb/bieszczady222.jpg', '', '', '16 September 2017, 21:39', '250 KB', 'jpg', '1200 x 900 px', 1, 217, 1, 0, 0, 0, 0, '', 0),
(301, 4, '', 'bieszczady221', '/bieszczady221.jpg', '/thumb/bieszczady221.jpg', '', '', '16 September 2017, 21:39', '146 KB', 'jpg', '1200 x 900 px', 1, 216, 1, 0, 0, 0, 0, '', 0),
(302, 4, '', 'bieszczady220', '/bieszczady220.jpg', '/thumb/bieszczady220.jpg', '', '', '16 September 2017, 21:39', '142 KB', 'jpg', '1200 x 900 px', 1, 215, 1, 0, 0, 0, 0, '', 0),
(303, 4, '', 'bieszczady219', '/bieszczady219.jpg', '/thumb/bieszczady219.jpg', '', '', '16 September 2017, 21:39', '97 KB', 'jpg', '1200 x 900 px', 1, 214, 1, 0, 0, 0, 0, '', 0);
INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`) VALUES
(304, 4, '', 'bieszczady218', '/bieszczady218.jpg', '/thumb/bieszczady218.jpg', '', '', '16 September 2017, 21:38', '142 KB', 'jpg', '1200 x 900 px', 1, 213, 1, 0, 0, 0, 0, '', 0),
(305, 4, '', 'bieszczady217', '/bieszczady217.jpg', '/thumb/bieszczady217.jpg', '', '', '16 September 2017, 21:39', '260 KB', 'jpg', '1200 x 900 px', 1, 212, 1, 0, 0, 0, 0, '', 0),
(306, 4, '', 'bieszczady216', '/bieszczady216.jpg', '/thumb/bieszczady216.jpg', '', '', '16 September 2017, 21:39', '204 KB', 'jpg', '1200 x 900 px', 1, 211, 1, 0, 0, 0, 0, '', 0),
(307, 4, '', 'bieszczady215', '/bieszczady215.jpg', '/thumb/bieszczady215.jpg', '', '', '16 September 2017, 21:38', '77 KB', 'jpg', '1200 x 900 px', 1, 210, 1, 0, 0, 0, 0, '', 0),
(308, 4, '', 'bieszczady214', '/bieszczady214.jpg', '/thumb/bieszczady214.jpg', '', '', '16 September 2017, 21:38', '83 KB', 'jpg', '1200 x 900 px', 1, 209, 1, 0, 0, 0, 0, '', 0),
(309, 4, '', 'bieszczady213', '/bieszczady213.jpg', '/thumb/bieszczady213.jpg', '', '', '16 September 2017, 21:38', '111 KB', 'jpg', '1200 x 900 px', 1, 208, 1, 0, 0, 0, 0, '', 0),
(310, 4, '', 'bieszczady212', '/bieszczady212.jpg', '/thumb/bieszczady212.jpg', '', '', '16 September 2017, 21:38', '213 KB', 'jpg', '1200 x 900 px', 1, 207, 1, 0, 0, 0, 0, '', 0),
(311, 4, '', 'bieszczady211', '/bieszczady211.jpg', '/thumb/bieszczady211.jpg', '', '', '16 September 2017, 21:38', '129 KB', 'jpg', '1200 x 900 px', 1, 206, 1, 0, 0, 0, 0, '', 0),
(312, 4, '', 'bieszczady210', '/bieszczady210.jpg', '/thumb/bieszczady210.jpg', '', '', '16 September 2017, 21:38', '101 KB', 'jpg', '1200 x 900 px', 1, 205, 1, 0, 0, 0, 0, '', 0),
(313, 4, '', 'bieszczady209', '/bieszczady209.jpg', '/thumb/bieszczady209.jpg', '', '', '16 September 2017, 21:38', '136 KB', 'jpg', '1200 x 900 px', 1, 204, 1, 0, 0, 0, 0, '', 0),
(314, 4, '', 'bieszczady208', '/bieszczady208.jpg', '/thumb/bieszczady208.jpg', '', '', '16 September 2017, 21:38', '142 KB', 'jpg', '1200 x 900 px', 1, 203, 1, 0, 0, 0, 0, '', 0),
(315, 4, '', 'bieszczady207', '/bieszczady207.jpg', '/thumb/bieszczady207.jpg', '', '', '16 September 2017, 21:38', '118 KB', 'jpg', '1200 x 900 px', 1, 202, 1, 0, 0, 0, 0, '', 0),
(316, 4, '', 'bieszczady206', '/bieszczady206.jpg', '/thumb/bieszczady206.jpg', '', '', '16 September 2017, 21:38', '150 KB', 'jpg', '1200 x 900 px', 1, 201, 1, 0, 0, 0, 0, '', 0),
(317, 4, '', 'bieszczady205', '/bieszczady205.jpg', '/thumb/bieszczady205.jpg', '', '', '16 September 2017, 21:38', '145 KB', 'jpg', '1200 x 900 px', 1, 200, 1, 0, 0, 0, 0, '', 0),
(318, 4, '', 'bieszczady204', '/bieszczady204.jpg', '/thumb/bieszczady204.jpg', '', '', '16 September 2017, 21:38', '135 KB', 'jpg', '1200 x 900 px', 1, 199, 1, 0, 0, 0, 0, '', 0),
(319, 4, '', 'bieszczady203', '/bieszczady203.jpg', '/thumb/bieszczady203.jpg', '', '', '16 September 2017, 21:38', '143 KB', 'jpg', '1200 x 900 px', 1, 198, 1, 0, 0, 0, 0, '', 0),
(320, 4, '', 'bieszczady202', '/bieszczady202.jpg', '/thumb/bieszczady202.jpg', '', '', '16 September 2017, 21:38', '177 KB', 'jpg', '1200 x 900 px', 1, 197, 1, 0, 0, 0, 0, '', 0),
(321, 4, '', 'bieszczady200', '/bieszczady200.jpg', '/thumb/bieszczady200.jpg', '', '', '16 September 2017, 21:38', '102 KB', 'jpg', '1200 x 900 px', 1, 196, 1, 0, 0, 0, 0, '', 0),
(322, 4, '', 'bieszczady201', '/bieszczady201.jpg', '/thumb/bieszczady201.jpg', '', '', '16 September 2017, 21:38', '134 KB', 'jpg', '1200 x 900 px', 1, 195, 1, 0, 0, 0, 0, '', 0),
(323, 4, '', 'bieszczady199', '/bieszczady199.jpg', '/thumb/bieszczady199.jpg', '', '', '16 September 2017, 21:38', '166 KB', 'jpg', '1200 x 900 px', 1, 194, 1, 0, 0, 0, 0, '', 0),
(324, 4, '', 'bieszczady198', '/bieszczady198.jpg', '/thumb/bieszczady198.jpg', '', '', '16 September 2017, 21:38', '119 KB', 'jpg', '1200 x 900 px', 1, 193, 1, 0, 0, 0, 0, '', 0),
(325, 4, '', 'bieszczady197', '/bieszczady197.jpg', '/thumb/bieszczady197.jpg', '', '', '16 September 2017, 21:37', '125 KB', 'jpg', '1200 x 900 px', 1, 192, 1, 0, 0, 0, 0, '', 0),
(326, 4, '', 'bieszczady196', '/bieszczady196.jpg', '/thumb/bieszczady196.jpg', '', '', '16 September 2017, 21:38', '147 KB', 'jpg', '1200 x 900 px', 1, 191, 1, 0, 0, 0, 0, '', 0),
(327, 4, '', 'bieszczady195', '/bieszczady195.jpg', '/thumb/bieszczady195.jpg', '', '', '16 September 2017, 21:37', '123 KB', 'jpg', '1200 x 900 px', 1, 190, 1, 0, 0, 0, 0, '', 0),
(328, 4, '', 'bieszczady194', '/bieszczady194.jpg', '/thumb/bieszczady194.jpg', '', '', '16 September 2017, 21:37', '100 KB', 'jpg', '1200 x 900 px', 1, 189, 1, 0, 0, 0, 0, '', 0),
(329, 4, '', 'bieszczady193', '/bieszczady193.jpg', '/thumb/bieszczady193.jpg', '', '', '16 September 2017, 21:37', '111 KB', 'jpg', '1200 x 900 px', 1, 188, 1, 0, 0, 0, 0, '', 0),
(330, 4, '', 'bieszczady192', '/bieszczady192.jpg', '/thumb/bieszczady192.jpg', '', '', '16 September 2017, 21:37', '108 KB', 'jpg', '1200 x 900 px', 1, 187, 1, 0, 0, 0, 0, '', 0),
(331, 4, '', 'bieszczady191', '/bieszczady191.jpg', '/thumb/bieszczady191.jpg', '', '', '16 September 2017, 21:37', '159 KB', 'jpg', '1200 x 900 px', 1, 186, 1, 0, 0, 0, 0, '', 0),
(332, 4, '', 'bieszczady190', '/bieszczady190.jpg', '/thumb/bieszczady190.jpg', '', '', '16 September 2017, 21:37', '131 KB', 'jpg', '1200 x 900 px', 1, 185, 1, 0, 0, 0, 0, '', 0),
(333, 4, '', 'bieszczady189', '/bieszczady189.jpg', '/thumb/bieszczady189.jpg', '', '', '16 September 2017, 21:38', '272 KB', 'jpg', '1200 x 900 px', 1, 184, 1, 0, 0, 0, 0, '', 0),
(334, 4, '', 'bieszczady188', '/bieszczady188.jpg', '/thumb/bieszczady188.jpg', '', '', '16 September 2017, 21:37', '75 KB', 'jpg', '1200 x 900 px', 1, 183, 1, 0, 0, 0, 0, '', 0),
(335, 4, '', 'bieszczady187', '/bieszczady187.jpg', '/thumb/bieszczady187.jpg', '', '', '16 September 2017, 21:37', '118 KB', 'jpg', '1200 x 900 px', 1, 182, 1, 0, 0, 0, 0, '', 0),
(336, 4, '', 'bieszczady186', '/bieszczady186.jpg', '/thumb/bieszczady186.jpg', '', '', '16 September 2017, 21:37', '203 KB', 'jpg', '1200 x 900 px', 1, 181, 1, 0, 0, 0, 0, '', 0),
(337, 4, '', 'bieszczady185', '/bieszczady185.jpg', '/thumb/bieszczady185.jpg', '', '', '16 September 2017, 21:37', '167 KB', 'jpg', '1200 x 900 px', 1, 180, 1, 0, 0, 0, 0, '', 0),
(338, 4, '', 'bieszczady184', '/bieszczady184.jpg', '/thumb/bieszczady184.jpg', '', '', '16 September 2017, 21:37', '126 KB', 'jpg', '1200 x 900 px', 1, 179, 1, 0, 0, 0, 0, '', 0),
(339, 4, '', 'bieszczady183', '/bieszczady183.jpg', '/thumb/bieszczady183.jpg', '', '', '16 September 2017, 21:37', '83 KB', 'jpg', '1200 x 900 px', 1, 178, 1, 0, 0, 0, 0, '', 0),
(340, 4, '', 'bieszczady182', '/bieszczady182.jpg', '/thumb/bieszczady182.jpg', '', '', '16 September 2017, 21:37', '140 KB', 'jpg', '1200 x 900 px', 1, 177, 1, 0, 0, 0, 0, '', 0),
(341, 4, '', 'bieszczady181', '/bieszczady181.jpg', '/thumb/bieszczady181.jpg', '', '', '16 September 2017, 21:37', '140 KB', 'jpg', '1200 x 900 px', 1, 176, 1, 0, 0, 0, 0, '', 0),
(342, 4, '', 'bieszczady180', '/bieszczady180.jpg', '/thumb/bieszczady180.jpg', '', '', '16 September 2017, 21:37', '108 KB', 'jpg', '1200 x 900 px', 1, 175, 1, 0, 0, 0, 0, '', 0),
(343, 4, '', 'bieszczady179', '/bieszczady179.jpg', '/thumb/bieszczady179.jpg', '', '', '16 September 2017, 21:37', '253 KB', 'jpg', '1200 x 900 px', 1, 174, 1, 0, 0, 0, 0, '', 0),
(344, 4, '', 'bieszczady178', '/bieszczady178.jpg', '/thumb/bieszczady178.jpg', '', '', '16 September 2017, 21:37', '185 KB', 'jpg', '1200 x 900 px', 1, 173, 1, 0, 0, 0, 0, '', 0),
(345, 4, '', 'bieszczady177', '/bieszczady177.jpg', '/thumb/bieszczady177.jpg', '', '', '16 September 2017, 21:37', '159 KB', 'jpg', '1200 x 900 px', 1, 172, 1, 0, 0, 0, 0, '', 0),
(346, 4, '', 'bieszczady176', '/bieszczady176.jpg', '/thumb/bieszczady176.jpg', '', '', '16 September 2017, 21:36', '230 KB', 'jpg', '1200 x 900 px', 1, 171, 1, 0, 0, 0, 0, '', 0),
(347, 4, '', 'bieszczady175', '/bieszczady175.jpg', '/thumb/bieszczady175.jpg', '', '', '16 September 2017, 21:37', '188 KB', 'jpg', '1200 x 900 px', 1, 170, 1, 0, 0, 0, 0, '', 0),
(348, 4, '', 'bieszczady174', '/bieszczady174.jpg', '/thumb/bieszczady174.jpg', '', '', '16 September 2017, 21:37', '189 KB', 'jpg', '1200 x 900 px', 1, 169, 1, 0, 0, 0, 0, '', 0),
(349, 4, '', 'bieszczady173', '/bieszczady173.jpg', '/thumb/bieszczady173.jpg', '', '', '16 September 2017, 21:36', '211 KB', 'jpg', '1200 x 900 px', 1, 168, 1, 0, 0, 0, 0, '', 0),
(350, 4, '', 'bieszczady172', '/bieszczady172.jpg', '/thumb/bieszczady172.jpg', '', '', '16 September 2017, 21:36', '138 KB', 'jpg', '1200 x 900 px', 1, 167, 1, 0, 0, 0, 0, '', 0),
(351, 4, '', 'bieszczady171', '/bieszczady171.jpg', '/thumb/bieszczady171.jpg', '', '', '16 September 2017, 21:36', '131 KB', 'jpg', '1200 x 900 px', 1, 166, 1, 0, 0, 0, 0, '', 0),
(352, 4, '', 'bieszczady170', '/bieszczady170.jpg', '/thumb/bieszczady170.jpg', '', '', '16 September 2017, 21:36', '151 KB', 'jpg', '1200 x 900 px', 1, 165, 1, 0, 0, 0, 0, '', 0),
(353, 4, '', 'bieszczady169', '/bieszczady169.jpg', '/thumb/bieszczady169.jpg', '', '', '16 September 2017, 21:36', '102 KB', 'jpg', '1200 x 900 px', 1, 164, 1, 0, 0, 0, 0, '', 0),
(354, 4, '', 'bieszczady168', '/bieszczady168.jpg', '/thumb/bieszczady168.jpg', '', '', '16 September 2017, 21:36', '113 KB', 'jpg', '1200 x 900 px', 1, 163, 1, 0, 0, 0, 0, '', 0),
(355, 4, '', 'bieszczady167', '/bieszczady167.jpg', '/thumb/bieszczady167.jpg', '', '', '16 September 2017, 21:36', '129 KB', 'jpg', '1200 x 900 px', 1, 162, 1, 0, 0, 0, 0, '', 0),
(356, 4, '', 'bieszczady166', '/bieszczady166.jpg', '/thumb/bieszczady166.jpg', '', '', '16 September 2017, 21:36', '190 KB', 'jpg', '1200 x 900 px', 1, 161, 1, 0, 0, 0, 0, '', 0),
(357, 4, '', 'bieszczady165', '/bieszczady165.jpg', '/thumb/bieszczady165.jpg', '', '', '16 September 2017, 21:36', '201 KB', 'jpg', '1200 x 900 px', 1, 160, 1, 0, 0, 0, 0, '', 0),
(358, 4, '', 'bieszczady164', '/bieszczady164.jpg', '/thumb/bieszczady164.jpg', '', '', '16 September 2017, 21:36', '226 KB', 'jpg', '1200 x 900 px', 1, 159, 1, 0, 0, 0, 0, '', 0),
(359, 4, '', 'bieszczady163', '/bieszczady163.jpg', '/thumb/bieszczady163.jpg', '', '', '16 September 2017, 21:36', '196 KB', 'jpg', '1200 x 900 px', 1, 158, 1, 0, 0, 0, 0, '', 0),
(360, 4, '', 'bieszczady162', '/bieszczady162.jpg', '/thumb/bieszczady162.jpg', '', '', '16 September 2017, 21:36', '137 KB', 'jpg', '1200 x 900 px', 1, 157, 1, 0, 0, 0, 0, '', 0),
(361, 4, '', 'bieszczady161', '/bieszczady161.jpg', '/thumb/bieszczady161.jpg', '', '', '16 September 2017, 21:36', '199 KB', 'jpg', '1200 x 900 px', 1, 156, 1, 0, 0, 0, 0, '', 0),
(362, 4, '', 'bieszczady160', '/bieszczady160.jpg', '/thumb/bieszczady160.jpg', '', '', '16 September 2017, 21:36', '202 KB', 'jpg', '1200 x 900 px', 1, 155, 1, 0, 0, 0, 0, '', 0),
(363, 4, '', 'bieszczady159', '/bieszczady159.jpg', '/thumb/bieszczady159.jpg', '', '', '16 September 2017, 21:36', '212 KB', 'jpg', '1200 x 900 px', 1, 154, 1, 0, 0, 0, 0, '', 0),
(364, 4, '', 'bieszczady158', '/bieszczady158.jpg', '/thumb/bieszczady158.jpg', '', '', '16 September 2017, 21:36', '169 KB', 'jpg', '1200 x 900 px', 1, 153, 1, 0, 0, 0, 0, '', 0),
(365, 4, '', 'bieszczady157', '/bieszczady157.jpg', '/thumb/bieszczady157.jpg', '', '', '16 September 2017, 21:36', '186 KB', 'jpg', '1200 x 900 px', 1, 152, 1, 0, 0, 0, 0, '', 0),
(366, 4, '', 'bieszczady156', '/bieszczady156.jpg', '/thumb/bieszczady156.jpg', '', '', '16 September 2017, 21:36', '198 KB', 'jpg', '1200 x 900 px', 1, 151, 1, 0, 0, 0, 0, '', 0),
(367, 4, '', 'bieszczady155', '/bieszczady155.jpg', '/thumb/bieszczady155.jpg', '', '', '16 September 2017, 21:35', '173 KB', 'jpg', '1200 x 900 px', 1, 150, 1, 0, 0, 0, 0, '', 0),
(368, 4, '', 'bieszczady154', '/bieszczady154.jpg', '/thumb/bieszczady154.jpg', '', '', '16 September 2017, 21:35', '193 KB', 'jpg', '1200 x 900 px', 1, 149, 1, 0, 0, 0, 0, '', 0),
(369, 4, '', 'bieszczady153', '/bieszczady153.jpg', '/thumb/bieszczady153.jpg', '', '', '16 September 2017, 21:35', '193 KB', 'jpg', '1200 x 900 px', 1, 148, 1, 0, 0, 0, 0, '', 0),
(370, 4, '', 'bieszczady152', '/bieszczady152.jpg', '/thumb/bieszczady152.jpg', '', '', '16 September 2017, 21:36', '147 KB', 'jpg', '1200 x 900 px', 1, 147, 1, 0, 0, 0, 0, '', 0),
(371, 4, '', 'bieszczady151', '/bieszczady151.jpg', '/thumb/bieszczady151.jpg', '', '', '16 September 2017, 21:35', '234 KB', 'jpg', '1200 x 900 px', 1, 146, 1, 0, 0, 0, 0, '', 0),
(372, 4, '', 'bieszczady150', '/bieszczady150.jpg', '/thumb/bieszczady150.jpg', '', '', '16 September 2017, 21:35', '167 KB', 'jpg', '1200 x 900 px', 1, 145, 1, 0, 0, 0, 0, '', 0),
(373, 4, '', 'bieszczady149', '/bieszczady149.jpg', '/thumb/bieszczady149.jpg', '', '', '16 September 2017, 21:35', '236 KB', 'jpg', '1200 x 900 px', 1, 144, 1, 0, 0, 0, 0, '', 0),
(374, 4, '', 'bieszczady148', '/bieszczady148.jpg', '/thumb/bieszczady148.jpg', '', '', '16 September 2017, 21:35', '236 KB', 'jpg', '1200 x 900 px', 1, 143, 1, 0, 0, 0, 0, '', 0),
(375, 4, '', 'bieszczady147', '/bieszczady147.jpg', '/thumb/bieszczady147.jpg', '', '', '16 September 2017, 21:35', '98 KB', 'jpg', '1200 x 900 px', 1, 142, 1, 0, 0, 0, 0, '', 0),
(376, 4, '', 'bieszczady146', '/bieszczady146.jpg', '/thumb/bieszczady146.jpg', '', '', '16 September 2017, 21:35', '133 KB', 'jpg', '1200 x 900 px', 1, 141, 1, 0, 0, 0, 0, '', 0),
(377, 4, '', 'bieszczady145', '/bieszczady145.jpg', '/thumb/bieszczady145.jpg', '', '', '16 September 2017, 21:35', '160 KB', 'jpg', '1200 x 900 px', 1, 140, 1, 0, 0, 0, 0, '', 0),
(378, 4, '', 'bieszczady144', '/bieszczady144.jpg', '/thumb/bieszczady144.jpg', '', '', '16 September 2017, 21:35', '206 KB', 'jpg', '1200 x 900 px', 1, 139, 1, 0, 0, 0, 0, '', 0),
(379, 4, '', 'bieszczady142', '/bieszczady142.jpg', '/thumb/bieszczady142.jpg', '', '', '16 September 2017, 21:34', '178 KB', 'jpg', '1200 x 900 px', 1, 138, 1, 0, 0, 0, 0, '', 0),
(380, 4, '', 'bieszczady141', '/bieszczady141.jpg', '/thumb/bieszczady141.jpg', '', '', '16 September 2017, 21:34', '122 KB', 'jpg', '1200 x 900 px', 1, 137, 1, 0, 0, 0, 0, '', 0),
(381, 4, '', 'bieszczady143', '/bieszczady143.jpg', '/thumb/bieszczady143.jpg', '', '', '16 September 2017, 21:35', '168 KB', 'jpg', '1200 x 900 px', 1, 136, 1, 0, 0, 0, 0, '', 0),
(382, 4, '', 'bieszczady134', '/bieszczady134.jpg', '/thumb/bieszczady134.jpg', '', '', '16 September 2017, 21:34', '209 KB', 'jpg', '1200 x 900 px', 1, 135, 1, 0, 0, 0, 0, '', 0),
(383, 4, '', 'bieszczady133', '/bieszczady133.jpg', '/thumb/bieszczady133.jpg', '', '', '16 September 2017, 21:34', '130 KB', 'jpg', '1200 x 900 px', 1, 134, 1, 0, 0, 0, 0, '', 0),
(384, 4, '', 'bieszczady132', '/bieszczady132.jpg', '/thumb/bieszczady132.jpg', '', '', '16 September 2017, 21:34', '192 KB', 'jpg', '1200 x 900 px', 1, 133, 1, 0, 0, 0, 0, '', 0),
(385, 4, '', 'bieszczady130', '/bieszczady130.jpg', '/thumb/bieszczady130.jpg', '', '', '16 September 2017, 21:34', '251 KB', 'jpg', '1200 x 900 px', 1, 132, 1, 0, 0, 0, 0, '', 0),
(386, 4, '', 'bieszczady131', '/bieszczady131.jpg', '/thumb/bieszczady131.jpg', '', '', '16 September 2017, 21:34', '247 KB', 'jpg', '1200 x 900 px', 1, 131, 1, 0, 0, 0, 0, '', 0),
(387, 4, '', 'bieszczady129', '/bieszczady129.jpg', '/thumb/bieszczady129.jpg', '', '', '16 September 2017, 21:34', '192 KB', 'jpg', '1200 x 900 px', 1, 130, 1, 0, 0, 0, 0, '', 0),
(388, 4, '', 'bieszczady128', '/bieszczady128.jpg', '/thumb/bieszczady128.jpg', '', '', '16 September 2017, 21:34', '152 KB', 'jpg', '1200 x 900 px', 1, 129, 1, 0, 0, 0, 0, '', 0),
(389, 4, '', 'bieszczady127', '/bieszczady127.jpg', '/thumb/bieszczady127.jpg', '', '', '16 September 2017, 21:34', '158 KB', 'jpg', '1200 x 900 px', 1, 128, 1, 0, 0, 0, 0, '', 0),
(390, 4, '', 'bieszczady126', '/bieszczady126.jpg', '/thumb/bieszczady126.jpg', '', '', '16 September 2017, 21:34', '141 KB', 'jpg', '1200 x 900 px', 1, 127, 1, 0, 0, 0, 0, '', 0),
(391, 4, '', 'bieszczady125', '/bieszczady125.jpg', '/thumb/bieszczady125.jpg', '', '', '16 September 2017, 21:34', '105 KB', 'jpg', '1200 x 900 px', 1, 126, 1, 0, 0, 0, 0, '', 0),
(392, 4, '', 'bieszczady124', '/bieszczady124.jpg', '/thumb/bieszczady124.jpg', '', '', '16 September 2017, 21:34', '121 KB', 'jpg', '1200 x 900 px', 1, 125, 1, 0, 0, 0, 0, '', 0),
(393, 4, '', 'bieszczady123', '/bieszczady123.jpg', '/thumb/bieszczady123.jpg', '', '', '16 September 2017, 21:34', '210 KB', 'jpg', '1200 x 900 px', 1, 124, 1, 0, 0, 0, 0, '', 0),
(394, 4, '', 'bieszczady122', '/bieszczady122.jpg', '/thumb/bieszczady122.jpg', '', '', '16 September 2017, 21:34', '139 KB', 'jpg', '1200 x 900 px', 1, 123, 1, 0, 0, 0, 0, '', 0),
(395, 4, '', 'bieszczady121', '/bieszczady121.jpg', '/thumb/bieszczady121.jpg', '', '', '16 September 2017, 21:34', '60 KB', 'jpg', '1200 x 900 px', 1, 122, 1, 0, 0, 0, 0, '', 0),
(396, 4, '', 'bieszczady120', '/bieszczady120.jpg', '/thumb/bieszczady120.jpg', '', '', '16 September 2017, 21:34', '127 KB', 'jpg', '1200 x 900 px', 1, 121, 1, 0, 0, 0, 0, '', 0),
(397, 4, '', 'bieszczady119', '/bieszczady119.jpg', '/thumb/bieszczady119.jpg', '', '', '16 September 2017, 21:34', '79 KB', 'jpg', '1200 x 900 px', 1, 120, 1, 0, 0, 0, 0, '', 0),
(398, 4, '', 'bieszczady118', '/bieszczady118.jpg', '/thumb/bieszczady118.jpg', '', '', '16 September 2017, 21:33', '46 KB', 'jpg', '1200 x 900 px', 1, 119, 1, 0, 0, 0, 0, '', 0),
(399, 4, '', 'bieszczady117', '/bieszczady117.jpg', '/thumb/bieszczady117.jpg', '', '', '16 September 2017, 21:34', '109 KB', 'jpg', '1200 x 900 px', 1, 118, 1, 0, 0, 0, 0, '', 0),
(400, 4, '', 'bieszczady116', '/bieszczady116.jpg', '/thumb/bieszczady116.jpg', '', '', '16 September 2017, 21:34', '91 KB', 'jpg', '1200 x 900 px', 1, 117, 1, 0, 0, 0, 0, '', 0),
(401, 4, '', 'bieszczady115', '/bieszczady115.jpg', '/thumb/bieszczady115.jpg', '', '', '16 September 2017, 21:33', '86 KB', 'jpg', '1200 x 900 px', 1, 116, 1, 0, 0, 0, 0, '', 0),
(402, 4, '', 'bieszczady114', '/bieszczady114.jpg', '/thumb/bieszczady114.jpg', '', '', '16 September 2017, 21:33', '133 KB', 'jpg', '1200 x 900 px', 1, 115, 1, 0, 0, 0, 0, '', 0),
(403, 4, '', 'bieszczady113', '/bieszczady113.jpg', '/thumb/bieszczady113.jpg', '', '', '16 September 2017, 21:33', '93 KB', 'jpg', '1200 x 900 px', 1, 114, 1, 0, 0, 0, 0, '', 0),
(404, 4, '', 'bieszczady112', '/bieszczady112.jpg', '/thumb/bieszczady112.jpg', '', '', '16 September 2017, 21:33', '87 KB', 'jpg', '1200 x 900 px', 1, 113, 1, 0, 0, 0, 0, '', 0),
(405, 4, '', 'bieszczady111', '/bieszczady111.jpg', '/thumb/bieszczady111.jpg', '', '', '16 September 2017, 21:33', '153 KB', 'jpg', '1200 x 900 px', 1, 112, 1, 0, 0, 0, 0, '', 0),
(406, 4, '', 'bieszczady110', '/bieszczady110.jpg', '/thumb/bieszczady110.jpg', '', '', '16 September 2017, 21:33', '182 KB', 'jpg', '1200 x 900 px', 1, 111, 1, 0, 0, 0, 0, '', 0),
(407, 4, '', 'bieszczady109', '/bieszczady109.jpg', '/thumb/bieszczady109.jpg', '', '', '16 September 2017, 21:33', '104 KB', 'jpg', '1200 x 900 px', 1, 110, 1, 0, 0, 0, 0, '', 0),
(408, 4, '', 'bieszczady108', '/bieszczady108.jpg', '/thumb/bieszczady108.jpg', '', '', '16 September 2017, 21:33', '110 KB', 'jpg', '1200 x 900 px', 1, 109, 1, 0, 0, 0, 0, '', 0),
(409, 4, '', 'bieszczady107', '/bieszczady107.jpg', '/thumb/bieszczady107.jpg', '', '', '16 September 2017, 21:33', '140 KB', 'jpg', '1200 x 900 px', 1, 108, 1, 0, 0, 0, 0, '', 0),
(410, 4, '', 'bieszczady106', '/bieszczady106.jpg', '/thumb/bieszczady106.jpg', '', '', '16 September 2017, 21:33', '117 KB', 'jpg', '1200 x 900 px', 1, 107, 1, 0, 0, 0, 0, '', 0),
(411, 4, '', 'bieszczady105', '/bieszczady105.jpg', '/thumb/bieszczady105.jpg', '', '', '16 September 2017, 21:33', '128 KB', 'jpg', '1200 x 900 px', 1, 106, 1, 0, 0, 0, 0, '', 0),
(412, 4, '', 'bieszczady104', '/bieszczady104.jpg', '/thumb/bieszczady104.jpg', '', '', '16 September 2017, 21:33', '95 KB', 'jpg', '1200 x 900 px', 1, 105, 1, 0, 0, 0, 0, '', 0),
(413, 4, '', 'bieszczady103', '/bieszczady103.jpg', '/thumb/bieszczady103.jpg', '', '', '16 September 2017, 21:33', '181 KB', 'jpg', '1200 x 900 px', 1, 104, 1, 0, 0, 0, 0, '', 0),
(414, 4, '', 'bieszczady102', '/bieszczady102.jpg', '/thumb/bieszczady102.jpg', '', '', '16 September 2017, 21:33', '223 KB', 'jpg', '1200 x 900 px', 1, 103, 1, 0, 0, 0, 0, '', 0),
(415, 4, '', 'bieszczady101', '/bieszczady101.jpg', '/thumb/bieszczady101.jpg', '', '', '16 September 2017, 21:33', '90 KB', 'jpg', '1200 x 900 px', 1, 102, 1, 0, 0, 0, 0, '', 0),
(416, 4, '', 'bieszczady100', '/bieszczady100.jpg', '/thumb/bieszczady100.jpg', '', '', '16 September 2017, 21:33', '125 KB', 'jpg', '1200 x 900 px', 1, 101, 1, 0, 0, 0, 0, '', 0),
(417, 4, '', 'bieszczady24', '/bieszczady24.jpg', '/thumb/bieszczady24.jpg', '', '', '16 September 2017, 21:29', '137 KB', 'jpg', '1200 x 900 px', 1, 100, 1, 0, 0, 0, 0, '', 0),
(418, 4, '', 'bieszczady099', '/bieszczady099.jpg', '/thumb/bieszczady099.jpg', '', '', '16 September 2017, 21:33', '166 KB', 'jpg', '1200 x 900 px', 1, 99, 1, 0, 0, 0, 0, '', 0),
(419, 4, '', 'bieszczady098', '/bieszczady098.jpg', '/thumb/bieszczady098.jpg', '', '', '16 September 2017, 21:33', '120 KB', 'jpg', '1200 x 900 px', 1, 98, 1, 0, 0, 0, 0, '', 0),
(420, 4, '', 'bieszczady097', '/bieszczady097.jpg', '/thumb/bieszczady097.jpg', '', '', '16 September 2017, 21:33', '123 KB', 'jpg', '1200 x 900 px', 1, 97, 1, 0, 0, 0, 0, '', 0),
(421, 4, '', 'bieszczady096', '/bieszczady096.jpg', '/thumb/bieszczady096.jpg', '', '', '16 September 2017, 21:33', '115 KB', 'jpg', '1200 x 900 px', 1, 96, 1, 0, 0, 0, 0, '', 0),
(422, 4, '', 'bieszczady095', '/bieszczady095.jpg', '/thumb/bieszczady095.jpg', '', '', '16 September 2017, 21:33', '165 KB', 'jpg', '1200 x 900 px', 1, 95, 1, 0, 0, 0, 0, '', 0),
(423, 4, '', 'bieszczady094', '/bieszczady094.jpg', '/thumb/bieszczady094.jpg', '', '', '16 September 2017, 21:32', '102 KB', 'jpg', '1200 x 900 px', 1, 94, 1, 0, 0, 0, 0, '', 0),
(424, 4, '', 'bieszczady093', '/bieszczady093.jpg', '/thumb/bieszczady093.jpg', '', '', '16 September 2017, 21:32', '84 KB', 'jpg', '1200 x 900 px', 1, 93, 1, 0, 0, 0, 0, '', 0),
(425, 4, '', 'bieszczady092', '/bieszczady092.jpg', '/thumb/bieszczady092.jpg', '', '', '16 September 2017, 21:32', '116 KB', 'jpg', '1200 x 900 px', 1, 92, 1, 0, 0, 0, 0, '', 0),
(426, 4, '', 'bieszczady091', '/bieszczady091.jpg', '/thumb/bieszczady091.jpg', '', '', '16 September 2017, 21:32', '115 KB', 'jpg', '1200 x 900 px', 1, 91, 1, 0, 0, 0, 0, '', 0),
(427, 4, '', 'bieszczady090', '/bieszczady090.jpg', '/thumb/bieszczady090.jpg', '', '', '16 September 2017, 21:32', '116 KB', 'jpg', '1200 x 900 px', 1, 90, 1, 0, 0, 0, 0, '', 0),
(428, 4, '', 'bieszczady089', '/bieszczady089.jpg', '/thumb/bieszczady089.jpg', '', '', '16 September 2017, 21:32', '155 KB', 'jpg', '1200 x 900 px', 1, 89, 1, 0, 0, 0, 0, '', 0),
(429, 4, '', 'bieszczady088', '/bieszczady088.jpg', '/thumb/bieszczady088.jpg', '', '', '16 September 2017, 21:32', '152 KB', 'jpg', '1200 x 900 px', 1, 88, 1, 0, 0, 0, 0, '', 0),
(430, 4, '', 'bieszczady087', '/bieszczady087.jpg', '/thumb/bieszczady087.jpg', '', '', '16 September 2017, 21:32', '220 KB', 'jpg', '1200 x 900 px', 1, 87, 1, 0, 0, 0, 0, '', 0),
(431, 4, '', 'bieszczady086', '/bieszczady086.jpg', '/thumb/bieszczady086.jpg', '', '', '16 September 2017, 21:32', '252 KB', 'jpg', '1200 x 900 px', 1, 86, 1, 0, 0, 0, 0, '', 0),
(432, 4, '', 'bieszczady085', '/bieszczady085.jpg', '/thumb/bieszczady085.jpg', '', '', '16 September 2017, 21:32', '211 KB', 'jpg', '1200 x 900 px', 1, 85, 1, 0, 0, 0, 0, '', 0),
(433, 4, '', 'bieszczady084', '/bieszczady084.jpg', '/thumb/bieszczady084.jpg', '', '', '16 September 2017, 21:32', '178 KB', 'jpg', '1200 x 900 px', 1, 84, 1, 0, 0, 0, 0, '', 0),
(434, 4, '', 'bieszczady083', '/bieszczady083.jpg', '/thumb/bieszczady083.jpg', '', '', '16 September 2017, 21:32', '215 KB', 'jpg', '1200 x 900 px', 1, 83, 1, 0, 0, 0, 0, '', 0),
(435, 4, '', 'bieszczady082', '/bieszczady082.jpg', '/thumb/bieszczady082.jpg', '', '', '16 September 2017, 21:32', '178 KB', 'jpg', '1200 x 900 px', 1, 82, 1, 0, 0, 0, 0, '', 0),
(436, 4, '', 'bieszczady081', '/bieszczady081.jpg', '/thumb/bieszczady081.jpg', '', '', '16 September 2017, 21:32', '232 KB', 'jpg', '1200 x 900 px', 1, 81, 1, 0, 0, 0, 0, '', 0),
(437, 4, '', 'bieszczady080', '/bieszczady080.jpg', '/thumb/bieszczady080.jpg', '', '', '16 September 2017, 21:32', '99 KB', 'jpg', '1200 x 900 px', 1, 80, 1, 0, 0, 0, 0, '', 0),
(438, 4, '', 'bieszczady079', '/bieszczady079.jpg', '/thumb/bieszczady079.jpg', '', '', '16 September 2017, 21:31', '153 KB', 'jpg', '1200 x 900 px', 1, 79, 1, 0, 0, 0, 0, '', 0),
(439, 4, '', 'bieszczady078', '/bieszczady078.jpg', '/thumb/bieszczady078.jpg', '', '', '16 September 2017, 21:32', '180 KB', 'jpg', '1200 x 900 px', 1, 78, 1, 0, 0, 0, 0, '', 0),
(440, 4, '', 'bieszczady077', '/bieszczady077.jpg', '/thumb/bieszczady077.jpg', '', '', '16 September 2017, 21:31', '243 KB', 'jpg', '1200 x 900 px', 1, 77, 1, 0, 0, 0, 0, '', 0),
(441, 4, '', 'bieszczady076', '/bieszczady076.jpg', '/thumb/bieszczady076.jpg', '', '', '16 September 2017, 21:31', '235 KB', 'jpg', '1200 x 900 px', 1, 76, 1, 0, 0, 0, 0, '', 0),
(442, 4, '', 'bieszczady075', '/bieszczady075.jpg', '/thumb/bieszczady075.jpg', '', '', '16 September 2017, 21:32', '189 KB', 'jpg', '1200 x 900 px', 1, 75, 1, 0, 0, 0, 0, '', 0),
(443, 4, '', 'bieszczady074', '/bieszczady074.jpg', '/thumb/bieszczady074.jpg', '', '', '16 September 2017, 21:31', '127 KB', 'jpg', '1200 x 900 px', 1, 74, 1, 0, 0, 0, 0, '', 0),
(444, 4, '', 'bieszczady073', '/bieszczady073.jpg', '/thumb/bieszczady073.jpg', '', '', '16 September 2017, 21:31', '250 KB', 'jpg', '1200 x 900 px', 1, 73, 1, 0, 0, 0, 0, '', 0),
(445, 4, '', 'bieszczady072', '/bieszczady072.jpg', '/thumb/bieszczady072.jpg', '', '', '16 September 2017, 21:31', '92 KB', 'jpg', '1200 x 900 px', 1, 72, 1, 0, 0, 0, 0, '', 0),
(446, 4, '', 'bieszczady071', '/bieszczady071.jpg', '/thumb/bieszczady071.jpg', '', '', '16 September 2017, 21:31', '80 KB', 'jpg', '1200 x 900 px', 1, 71, 1, 0, 0, 0, 0, '', 0),
(447, 4, '', 'bieszczady070', '/bieszczady070.jpg', '/thumb/bieszczady070.jpg', '', '', '16 September 2017, 21:31', '80 KB', 'jpg', '1200 x 900 px', 1, 70, 1, 0, 0, 0, 0, '', 0),
(448, 4, '', 'bieszczady069', '/bieszczady069.jpg', '/thumb/bieszczady069.jpg', '', '', '16 September 2017, 21:31', '59 KB', 'jpg', '1200 x 900 px', 1, 69, 1, 0, 0, 0, 0, '', 0),
(449, 4, '', 'bieszczady068', '/bieszczady068.jpg', '/thumb/bieszczady068.jpg', '', '', '16 September 2017, 21:31', '70 KB', 'jpg', '1200 x 900 px', 1, 68, 1, 0, 0, 0, 0, '', 0),
(450, 4, '', 'bieszczady067', '/bieszczady067.jpg', '/thumb/bieszczady067.jpg', '', '', '16 September 2017, 21:31', '198 KB', 'jpg', '1200 x 900 px', 1, 67, 1, 0, 0, 0, 0, '', 0),
(451, 4, '', 'bieszczady066', '/bieszczady066.jpg', '/thumb/bieszczady066.jpg', '', '', '16 September 2017, 21:31', '184 KB', 'jpg', '1200 x 900 px', 1, 66, 1, 0, 0, 0, 0, '', 0),
(452, 4, '', 'bieszczady065', '/bieszczady065.jpg', '/thumb/bieszczady065.jpg', '', '', '16 September 2017, 21:31', '183 KB', 'jpg', '1200 x 900 px', 1, 65, 1, 0, 0, 0, 0, '', 0),
(453, 4, '', 'bieszczady064', '/bieszczady064.jpg', '/thumb/bieszczady064.jpg', '', '', '16 September 2017, 21:31', '191 KB', 'jpg', '1200 x 900 px', 1, 64, 1, 0, 0, 0, 0, '', 0),
(454, 4, '', 'bieszczady063', '/bieszczady063.jpg', '/thumb/bieszczady063.jpg', '', '', '16 September 2017, 21:31', '190 KB', 'jpg', '1200 x 900 px', 1, 63, 1, 0, 0, 0, 0, '', 0),
(455, 4, '', 'bieszczady062', '/bieszczady062.jpg', '/thumb/bieszczady062.jpg', '', '', '16 September 2017, 21:31', '162 KB', 'jpg', '1200 x 900 px', 1, 62, 1, 0, 0, 0, 0, '', 0),
(456, 4, '', 'bieszczady061', '/bieszczady061.jpg', '/thumb/bieszczady061.jpg', '', '', '16 September 2017, 21:31', '177 KB', 'jpg', '1200 x 900 px', 1, 61, 1, 0, 0, 0, 0, '', 0),
(457, 4, '', 'bieszczady060', '/bieszczady060.jpg', '/thumb/bieszczady060.jpg', '', '', '16 September 2017, 21:31', '130 KB', 'jpg', '1200 x 900 px', 1, 60, 1, 0, 0, 0, 0, '', 0),
(458, 4, '', 'bieszczady059', '/bieszczady059.jpg', '/thumb/bieszczady059.jpg', '', '', '16 September 2017, 21:31', '212 KB', 'jpg', '1200 x 900 px', 1, 59, 1, 0, 0, 0, 0, '', 0),
(459, 4, '', 'bieszczady058', '/bieszczady058.jpg', '/thumb/bieszczady058.jpg', '', '', '16 September 2017, 21:30', '118 KB', 'jpg', '1200 x 900 px', 1, 58, 1, 0, 0, 0, 0, '', 0),
(460, 4, '', 'bieszczady057', '/bieszczady057.jpg', '/thumb/bieszczady057.jpg', '', '', '16 September 2017, 21:31', '170 KB', 'jpg', '1200 x 900 px', 1, 57, 1, 0, 0, 0, 0, '', 0),
(461, 4, '', 'bieszczady056', '/bieszczady056.jpg', '/thumb/bieszczady056.jpg', '', '', '16 September 2017, 21:31', '168 KB', 'jpg', '1200 x 900 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(462, 4, '', 'bieszczady055', '/bieszczady055.jpg', '/thumb/bieszczady055.jpg', '', '', '16 September 2017, 21:30', '88 KB', 'jpg', '1200 x 900 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(463, 4, '', 'bieszczady054', '/bieszczady054.jpg', '/thumb/bieszczady054.jpg', '', '', '16 September 2017, 21:30', '146 KB', 'jpg', '1200 x 900 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(464, 4, '', 'bieszczady053', '/bieszczady053.jpg', '/thumb/bieszczady053.jpg', '', '', '16 September 2017, 21:30', '86 KB', 'jpg', '1200 x 900 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(465, 4, '', 'bieszczady052', '/bieszczady052.jpg', '/thumb/bieszczady052.jpg', '', '', '16 September 2017, 21:30', '178 KB', 'jpg', '1200 x 900 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(466, 4, '', 'bieszczady051', '/bieszczady051.jpg', '/thumb/bieszczady051.jpg', '', '', '16 September 2017, 21:30', '186 KB', 'jpg', '1200 x 900 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(467, 4, '', 'bieszczady050', '/bieszczady050.jpg', '/thumb/bieszczady050.jpg', '', '', '16 September 2017, 21:30', '166 KB', 'jpg', '1200 x 900 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(468, 4, '', 'bieszczady049', '/bieszczady049.jpg', '/thumb/bieszczady049.jpg', '', '', '16 September 2017, 21:30', '182 KB', 'jpg', '1200 x 900 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(469, 4, '', 'bieszczady048', '/bieszczady048.jpg', '/thumb/bieszczady048.jpg', '', '', '16 September 2017, 21:30', '155 KB', 'jpg', '1200 x 900 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(470, 4, '', 'bieszczady047', '/bieszczady047.jpg', '/thumb/bieszczady047.jpg', '', '', '16 September 2017, 21:30', '237 KB', 'jpg', '1200 x 900 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(471, 4, '', 'bieszczady046', '/bieszczady046.jpg', '/thumb/bieszczady046.jpg', '', '', '16 September 2017, 21:30', '87 KB', 'jpg', '1200 x 900 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(472, 4, '', 'bieszczady045', '/bieszczady045.jpg', '/thumb/bieszczady045.jpg', '', '', '16 September 2017, 21:30', '100 KB', 'jpg', '1200 x 900 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(473, 4, '', 'bieszczady044', '/bieszczady044.jpg', '/thumb/bieszczady044.jpg', '', '', '16 September 2017, 21:30', '118 KB', 'jpg', '1200 x 900 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(474, 4, '', 'bieszczady043', '/bieszczady043.jpg', '/thumb/bieszczady043.jpg', '', '', '16 September 2017, 21:30', '79 KB', 'jpg', '1200 x 900 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(475, 4, '', 'bieszczady042', '/bieszczady042.jpg', '/thumb/bieszczady042.jpg', '', '', '16 September 2017, 21:30', '101 KB', 'jpg', '1200 x 900 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(476, 4, '', 'bieszczady041', '/bieszczady041.jpg', '/thumb/bieszczady041.jpg', '', '', '16 September 2017, 21:30', '95 KB', 'jpg', '1200 x 900 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(477, 4, '', 'bieszczady040', '/bieszczady040.jpg', '/thumb/bieszczady040.jpg', '', '', '16 September 2017, 21:30', '92 KB', 'jpg', '1200 x 900 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(478, 4, '', 'bieszczady039', '/bieszczady039.jpg', '/thumb/bieszczady039.jpg', '', '', '16 September 2017, 21:30', '163 KB', 'jpg', '1200 x 900 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(479, 4, '', 'bieszczady038', '/bieszczady038.jpg', '/thumb/bieszczady038.jpg', '', '', '16 September 2017, 21:30', '176 KB', 'jpg', '1200 x 900 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(480, 4, '', 'bieszczady037', '/bieszczady037.jpg', '/thumb/bieszczady037.jpg', '', '', '16 September 2017, 21:29', '54 KB', 'jpg', '1200 x 900 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(481, 4, '', 'bieszczady036', '/bieszczady036.jpg', '/thumb/bieszczady036.jpg', '', '', '16 September 2017, 21:30', '157 KB', 'jpg', '1200 x 900 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(482, 4, '', 'bieszczady035', '/bieszczady035.jpg', '/thumb/bieszczady035.jpg', '', '', '16 September 2017, 21:30', '231 KB', 'jpg', '1200 x 900 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(483, 4, '', 'bieszczady034', '/bieszczady034.jpg', '/thumb/bieszczady034.jpg', '', '', '16 September 2017, 21:29', '120 KB', 'jpg', '1200 x 900 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(484, 4, '', 'bieszczady033', '/bieszczady033.jpg', '/thumb/bieszczady033.jpg', '', '', '16 September 2017, 21:30', '201 KB', 'jpg', '1200 x 900 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(485, 4, '', 'bieszczady032', '/bieszczady032.jpg', '/thumb/bieszczady032.jpg', '', '', '16 September 2017, 21:29', '92 KB', 'jpg', '1200 x 900 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(486, 4, '', 'bieszczady031', '/bieszczady031.jpg', '/thumb/bieszczady031.jpg', '', '', '16 September 2017, 21:29', '213 KB', 'jpg', '1200 x 900 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(487, 4, '', 'bieszczady030', '/bieszczady030.jpg', '/thumb/bieszczady030.jpg', '', '', '16 September 2017, 21:29', '172 KB', 'jpg', '1200 x 900 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(488, 4, '', 'bieszczady029', '/bieszczady029.jpg', '/thumb/bieszczady029.jpg', '', '', '16 September 2017, 21:29', '96 KB', 'jpg', '1200 x 900 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(489, 4, '', 'bieszczady027', '/bieszczady027.jpg', '/thumb/bieszczady027.jpg', '', '', '16 September 2017, 21:29', '141 KB', 'jpg', '1200 x 900 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(490, 4, '', 'bieszczady028', '/bieszczady028.jpg', '/thumb/bieszczady028.jpg', '', '', '16 September 2017, 21:29', '163 KB', 'jpg', '1200 x 900 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(491, 4, '', 'bieszczady026', '/bieszczady026.jpg', '/thumb/bieszczady026.jpg', '', '', '16 September 2017, 21:29', '227 KB', 'jpg', '1200 x 900 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(492, 4, '', 'bieszczady025', '/bieszczady025.jpg', '/thumb/bieszczady025.jpg', '', '', '16 September 2017, 21:29', '221 KB', 'jpg', '1200 x 900 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(493, 4, '', 'bieszczady024', '/bieszczady024.jpg', '/thumb/bieszczady024.jpg', '', '', '16 September 2017, 21:29', '209 KB', 'jpg', '1200 x 900 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(494, 4, '', 'bieszczady023', '/bieszczady023.jpg', '/thumb/bieszczady023.jpg', '', '', '16 September 2017, 21:29', '61 KB', 'jpg', '1200 x 900 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(495, 4, '', 'bieszczady022', '/bieszczady022.jpg', '/thumb/bieszczady022.jpg', '', '', '16 September 2017, 21:29', '133 KB', 'jpg', '1200 x 900 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(496, 4, '', 'bieszczady021', '/bieszczady021.jpg', '/thumb/bieszczady021.jpg', '', '', '16 September 2017, 21:29', '229 KB', 'jpg', '1200 x 900 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(497, 4, '', 'bieszczady020', '/bieszczady020.jpg', '/thumb/bieszczady020.jpg', '', '', '16 September 2017, 21:29', '197 KB', 'jpg', '1200 x 900 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(498, 4, '', 'bieszczady019', '/bieszczady019.jpg', '/thumb/bieszczady019.jpg', '', '', '16 September 2017, 21:29', '82 KB', 'jpg', '1200 x 900 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(499, 4, '', 'bieszczady018', '/bieszczady018.jpg', '/thumb/bieszczady018.jpg', '', '', '16 September 2017, 21:29', '144 KB', 'jpg', '1200 x 900 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(500, 4, '', 'bieszczady017', '/bieszczady017.jpg', '/thumb/bieszczady017.jpg', '', '', '16 September 2017, 21:28', '68 KB', 'jpg', '1200 x 900 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(501, 4, '', 'bieszczady016', '/bieszczady016.jpg', '/thumb/bieszczady016.jpg', '', '', '16 September 2017, 21:29', '127 KB', 'jpg', '1200 x 900 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(502, 4, '', 'bieszczady015', '/bieszczady015.jpg', '/thumb/bieszczady015.jpg', '', '', '16 September 2017, 21:28', '68 KB', 'jpg', '1200 x 900 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(503, 4, '', 'bieszczady014', '/bieszczady014.jpg', '/thumb/bieszczady014.jpg', '', '', '16 September 2017, 21:28', '219 KB', 'jpg', '1200 x 900 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(504, 4, '', 'bieszczady013', '/bieszczady013.jpg', '/thumb/bieszczady013.jpg', '', '', '16 September 2017, 21:28', '202 KB', 'jpg', '1200 x 900 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(505, 4, '', 'bieszczady012', '/bieszczady012.jpg', '/thumb/bieszczady012.jpg', '', '', '16 September 2017, 21:28', '62 KB', 'jpg', '1200 x 900 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(506, 4, '', 'bieszczady011', '/bieszczady011.jpg', '/thumb/bieszczady011.jpg', '', '', '16 September 2017, 21:28', '81 KB', 'jpg', '1200 x 900 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(507, 4, '', 'bieszczady010', '/bieszczady010.jpg', '/thumb/bieszczady010.jpg', '', '', '16 September 2017, 21:28', '87 KB', 'jpg', '1200 x 900 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(508, 4, '', 'bieszczady009', '/bieszczady009.jpg', '/thumb/bieszczady009.jpg', '', '', '16 September 2017, 21:28', '223 KB', 'jpg', '1200 x 900 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(509, 4, '', 'bieszczady008', '/bieszczady008.jpg', '/thumb/bieszczady008.jpg', '', '', '16 September 2017, 21:28', '213 KB', 'jpg', '1200 x 900 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(510, 4, '', 'bieszczady007', '/bieszczady007.jpg', '/thumb/bieszczady007.jpg', '', '', '16 September 2017, 21:28', '95 KB', 'jpg', '1200 x 900 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(511, 4, '', 'bieszczady006', '/bieszczady006.jpg', '/thumb/bieszczady006.jpg', '', '', '16 September 2017, 21:28', '151 KB', 'jpg', '1200 x 900 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(512, 4, '', 'bieszczady005', '/bieszczady005.jpg', '/thumb/bieszczady005.jpg', '', '', '16 September 2017, 21:28', '228 KB', 'jpg', '1200 x 900 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(513, 4, '', 'bieszczady004', '/bieszczady004.jpg', '/thumb/bieszczady004.jpg', '', '', '16 September 2017, 21:28', '111 KB', 'jpg', '1200 x 900 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(514, 4, '', 'bieszczady003', '/bieszczady003.jpg', '/thumb/bieszczady003.jpg', '', '', '16 September 2017, 21:28', '97 KB', 'jpg', '1200 x 900 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(515, 4, '', 'bieszczady002', '/bieszczady002.jpg', '/thumb/bieszczady002.jpg', '', '', '16 September 2017, 21:28', '151 KB', 'jpg', '1200 x 900 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(516, 4, '', 'bieszczady001', '/bieszczady001.jpg', '/thumb/bieszczady001.jpg', '', '', '16 September 2017, 21:28', '80 KB', 'jpg', '1200 x 900 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(517, 5, '', 'zamek g127', '/zamek_g127.jpg', '/thumb/zamek_g127.jpg', '', '', '17 September 2017, 22:06', '207 KB', 'JPG', '1200 x 900 px', 1, 129, 1, 0, 0, 0, 0, '', 0),
(518, 5, '', 'zamek g129', '/zamek_g129.jpg', '/thumb/zamek_g129.jpg', '', '', '17 September 2017, 22:06', '131 KB', 'JPG', '1200 x 900 px', 1, 128, 1, 0, 0, 0, 0, '', 0),
(519, 5, '', 'zamek g125', '/zamek_g125.jpg', '/thumb/zamek_g125.jpg', '', '', '17 September 2017, 22:06', '216 KB', 'JPG', '900 x 1200 px', 1, 127, 1, 0, 0, 0, 0, '', 0),
(520, 5, '', 'zamek g128', '/zamek_g128.jpg', '/thumb/zamek_g128.jpg', '', '', '17 September 2017, 22:06', '170 KB', 'JPG', '1200 x 900 px', 1, 126, 1, 0, 0, 0, 0, '', 0),
(521, 5, '', 'zamek g126', '/zamek_g126.jpg', '/thumb/zamek_g126.jpg', '', '', '17 September 2017, 22:06', '184 KB', 'JPG', '900 x 1200 px', 1, 125, 1, 0, 0, 0, 0, '', 0),
(522, 5, '', 'zamek g124', '/zamek_g124.jpg', '/thumb/zamek_g124.jpg', '', '', '17 September 2017, 22:06', '120 KB', 'JPG', '1200 x 900 px', 1, 124, 1, 0, 0, 0, 0, '', 0),
(523, 5, '', 'zamek g123', '/zamek_g123.jpg', '/thumb/zamek_g123.jpg', '', '', '17 September 2017, 22:06', '102 KB', 'JPG', '1200 x 900 px', 1, 123, 1, 0, 0, 0, 0, '', 0),
(524, 5, '', 'zamek g121', '/zamek_g121.jpg', '/thumb/zamek_g121.jpg', '', '', '17 September 2017, 22:06', '110 KB', 'JPG', '1200 x 900 px', 1, 122, 1, 0, 0, 0, 0, '', 0),
(525, 5, '', 'zamek g122', '/zamek_g122.jpg', '/thumb/zamek_g122.jpg', '', '', '17 September 2017, 22:06', '129 KB', 'JPG', '900 x 1200 px', 1, 121, 1, 0, 0, 0, 0, '', 0),
(526, 5, '', 'zamek g118', '/zamek_g118.jpg', '/thumb/zamek_g118.jpg', '', '', '17 September 2017, 22:06', '173 KB', 'JPG', '1200 x 900 px', 1, 120, 1, 0, 0, 0, 0, '', 0),
(527, 5, '', 'zamek g119', '/zamek_g119.jpg', '/thumb/zamek_g119.jpg', '', '', '17 September 2017, 22:06', '113 KB', 'JPG', '1200 x 900 px', 1, 119, 1, 0, 0, 0, 0, '', 0),
(528, 5, '', 'zamek g120', '/zamek_g120.jpg', '/thumb/zamek_g120.jpg', '', '', '17 September 2017, 22:06', '96 KB', 'JPG', '1200 x 900 px', 1, 118, 1, 0, 0, 0, 0, '', 0),
(529, 5, '', 'zamek g117', '/zamek_g117.jpg', '/thumb/zamek_g117.jpg', '', '', '17 September 2017, 22:06', '93 KB', 'JPG', '1200 x 900 px', 1, 117, 1, 0, 0, 0, 0, '', 0),
(530, 5, '', 'zamek g113', '/zamek_g113.jpg', '/thumb/zamek_g113.jpg', '', '', '17 September 2017, 22:06', '216 KB', 'JPG', '1200 x 900 px', 1, 116, 1, 0, 0, 0, 0, '', 0),
(531, 5, '', 'zamek g114', '/zamek_g114.jpg', '/thumb/zamek_g114.jpg', '', '', '17 September 2017, 22:06', '154 KB', 'JPG', '1200 x 900 px', 1, 115, 1, 0, 0, 0, 0, '', 0),
(532, 5, '', 'zamek g115', '/zamek_g115.jpg', '/thumb/zamek_g115.jpg', '', '', '17 September 2017, 22:06', '145 KB', 'JPG', '900 x 1200 px', 1, 114, 1, 0, 0, 0, 0, '', 0),
(533, 5, '', 'zamek g111', '/zamek_g111.jpg', '/thumb/zamek_g111.jpg', '', '', '17 September 2017, 22:06', '115 KB', 'JPG', '1200 x 900 px', 1, 113, 1, 0, 0, 0, 0, '', 0),
(534, 5, '', 'zamek g116', '/zamek_g116.jpg', '/thumb/zamek_g116.jpg', '', '', '17 September 2017, 22:06', '92 KB', 'JPG', '1200 x 900 px', 1, 112, 1, 0, 0, 0, 0, '', 0),
(535, 5, '', 'zamek g105', '/zamek_g105.jpg', '/thumb/zamek_g105.jpg', '', '', '17 September 2017, 22:05', '207 KB', 'JPG', '1200 x 900 px', 1, 111, 1, 0, 0, 0, 0, '', 0),
(536, 5, '', 'zamek g110', '/zamek_g110.jpg', '/thumb/zamek_g110.jpg', '', '', '17 September 2017, 22:05', '99 KB', 'JPG', '1200 x 900 px', 1, 110, 1, 0, 0, 0, 0, '', 0),
(537, 5, '', 'zamek g112', '/zamek_g112.jpg', '/thumb/zamek_g112.jpg', '', '', '17 September 2017, 22:05', '87 KB', 'JPG', '1200 x 900 px', 1, 109, 1, 0, 0, 0, 0, '', 0),
(538, 5, '', 'zamek g108', '/zamek_g108.jpg', '/thumb/zamek_g108.jpg', '', '', '17 September 2017, 22:05', '139 KB', 'JPG', '1200 x 900 px', 1, 108, 1, 0, 0, 0, 0, '', 0),
(539, 5, '', 'zamek g109', '/zamek_g109.jpg', '/thumb/zamek_g109.jpg', '', '', '17 September 2017, 22:05', '120 KB', 'JPG', '900 x 1200 px', 1, 107, 1, 0, 0, 0, 0, '', 0),
(540, 5, '', 'zamek g107', '/zamek_g107.jpg', '/thumb/zamek_g107.jpg', '', '', '17 September 2017, 22:05', '87 KB', 'JPG', '1200 x 900 px', 1, 106, 1, 0, 0, 0, 0, '', 0),
(541, 5, '', 'zamek g102', '/zamek_g102.jpg', '/thumb/zamek_g102.jpg', '', '', '17 September 2017, 22:05', '110 KB', 'JPG', '1200 x 900 px', 1, 105, 1, 0, 0, 0, 0, '', 0),
(542, 5, '', 'zamek g106', '/zamek_g106.jpg', '/thumb/zamek_g106.jpg', '', '', '17 September 2017, 22:05', '67 KB', 'JPG', '1200 x 900 px', 1, 104, 1, 0, 0, 0, 0, '', 0),
(543, 5, '', 'zamek g100', '/zamek_g100.jpg', '/thumb/zamek_g100.jpg', '', '', '17 September 2017, 22:05', '165 KB', 'JPG', '1200 x 900 px', 1, 103, 1, 0, 0, 0, 0, '', 0),
(544, 5, '', 'zamek g104', '/zamek_g104.jpg', '/thumb/zamek_g104.jpg', '', '', '17 September 2017, 22:05', '102 KB', 'JPG', '1200 x 900 px', 1, 102, 1, 0, 0, 0, 0, '', 0),
(545, 5, '', 'zamek g098', '/zamek_g098.jpg', '/thumb/zamek_g098.jpg', '', '', '17 September 2017, 22:05', '114 KB', 'JPG', '1200 x 900 px', 1, 101, 1, 0, 0, 0, 0, '', 0),
(546, 5, '', 'zamek g103', '/zamek_g103.jpg', '/thumb/zamek_g103.jpg', '', '', '17 September 2017, 22:05', '99 KB', 'JPG', '1200 x 900 px', 1, 100, 1, 0, 0, 0, 0, '', 0),
(547, 5, '', 'zamek g101', '/zamek_g101.jpg', '/thumb/zamek_g101.jpg', '', '', '17 September 2017, 22:05', '68 KB', 'JPG', '1200 x 900 px', 1, 99, 1, 0, 0, 0, 0, '', 0),
(548, 5, '', 'zamek g099', '/zamek_g099.jpg', '/thumb/zamek_g099.jpg', '', '', '17 September 2017, 22:05', '114 KB', 'JPG', '1200 x 900 px', 1, 98, 1, 0, 0, 0, 0, '', 0),
(549, 5, '', 'zamek g097', '/zamek_g097.jpg', '/thumb/zamek_g097.jpg', '', '', '17 September 2017, 22:05', '92 KB', 'JPG', '900 x 1200 px', 1, 97, 1, 0, 0, 0, 0, '', 0),
(550, 5, '', 'zamek g094', '/zamek_g094.jpg', '/thumb/zamek_g094.jpg', '', '', '17 September 2017, 22:05', '51 KB', 'JPG', '1200 x 900 px', 1, 96, 1, 0, 0, 0, 0, '', 0),
(551, 5, '', 'zamek g096', '/zamek_g096.jpg', '/thumb/zamek_g096.jpg', '', '', '17 September 2017, 22:05', '74 KB', 'JPG', '1200 x 900 px', 1, 95, 1, 0, 0, 0, 0, '', 0),
(552, 5, '', 'zamek g095', '/zamek_g095.jpg', '/thumb/zamek_g095.jpg', '', '', '17 September 2017, 22:05', '90 KB', 'JPG', '1200 x 900 px', 1, 94, 1, 0, 0, 0, 0, '', 0),
(553, 5, '', 'zamek g091', '/zamek_g091.jpg', '/thumb/zamek_g091.jpg', '', '', '17 September 2017, 22:05', '96 KB', 'JPG', '1200 x 900 px', 1, 93, 1, 0, 0, 0, 0, '', 0),
(554, 5, '', 'zamek g090', '/zamek_g090.jpg', '/thumb/zamek_g090.jpg', '', '', '17 September 2017, 22:05', '101 KB', 'JPG', '900 x 1200 px', 1, 92, 1, 0, 0, 0, 0, '', 0),
(555, 5, '', 'zamek g093', '/zamek_g093.jpg', '/thumb/zamek_g093.jpg', '', '', '17 September 2017, 22:05', '66 KB', 'JPG', '900 x 1200 px', 1, 91, 1, 0, 0, 0, 0, '', 0),
(556, 5, '', 'zamek g092', '/zamek_g092.jpg', '/thumb/zamek_g092.jpg', '', '', '17 September 2017, 22:05', '85 KB', 'JPG', '1200 x 900 px', 1, 90, 1, 0, 0, 0, 0, '', 0),
(557, 5, '', 'zamek g088', '/zamek_g088.jpg', '/thumb/zamek_g088.jpg', '', '', '17 September 2017, 22:05', '115 KB', 'JPG', '1200 x 900 px', 1, 89, 1, 0, 0, 0, 0, '', 0),
(558, 5, '', 'zamek g089', '/zamek_g089.jpg', '/thumb/zamek_g089.jpg', '', '', '17 September 2017, 22:05', '93 KB', 'JPG', '1200 x 900 px', 1, 88, 1, 0, 0, 0, 0, '', 0),
(559, 5, '', 'zamek g085', '/zamek_g085.jpg', '/thumb/zamek_g085.jpg', '', '', '17 September 2017, 22:04', '123 KB', 'JPG', '1200 x 900 px', 1, 87, 1, 0, 0, 0, 0, '', 0),
(560, 5, '', 'zamek g087', '/zamek_g087.jpg', '/thumb/zamek_g087.jpg', '', '', '17 September 2017, 22:04', '109 KB', 'JPG', '1200 x 900 px', 1, 86, 1, 0, 0, 0, 0, '', 0),
(561, 5, '', 'zamek g083', '/zamek_g083.jpg', '/thumb/zamek_g083.jpg', '', '', '17 September 2017, 22:04', '55 KB', 'JPG', '1200 x 900 px', 1, 85, 1, 0, 0, 0, 0, '', 0),
(562, 5, '', 'zamek g084', '/zamek_g084.jpg', '/thumb/zamek_g084.jpg', '', '', '17 September 2017, 22:04', '59 KB', 'JPG', '1200 x 900 px', 1, 84, 1, 0, 0, 0, 0, '', 0),
(563, 5, '', 'zamek g086', '/zamek_g086.jpg', '/thumb/zamek_g086.jpg', '', '', '17 September 2017, 22:04', '64 KB', 'JPG', '1200 x 900 px', 1, 83, 1, 0, 0, 0, 0, '', 0),
(564, 5, '', 'zamek g079', '/zamek_g079.jpg', '/thumb/zamek_g079.jpg', '', '', '17 September 2017, 22:04', '82 KB', 'JPG', '1200 x 900 px', 1, 82, 1, 0, 0, 0, 0, '', 0),
(565, 5, '', 'zamek g081', '/zamek_g081.jpg', '/thumb/zamek_g081.jpg', '', '', '17 September 2017, 22:04', '79 KB', 'JPG', '1200 x 900 px', 1, 81, 1, 0, 0, 0, 0, '', 0),
(566, 5, '', 'zamek g082', '/zamek_g082.jpg', '/thumb/zamek_g082.jpg', '', '', '17 September 2017, 22:04', '51 KB', 'JPG', '1200 x 900 px', 1, 80, 1, 0, 0, 0, 0, '', 0),
(567, 5, '', 'zamek g075', '/zamek_g075.jpg', '/thumb/zamek_g075.jpg', '', '', '17 September 2017, 22:04', '82 KB', 'JPG', '1200 x 900 px', 1, 79, 1, 0, 0, 0, 0, '', 0),
(568, 5, '', 'zamek g080', '/zamek_g080.jpg', '/thumb/zamek_g080.jpg', '', '', '17 September 2017, 22:04', '83 KB', 'JPG', '1200 x 900 px', 1, 78, 1, 0, 0, 0, 0, '', 0),
(569, 5, '', 'zamek g078', '/zamek_g078.jpg', '/thumb/zamek_g078.jpg', '', '', '17 September 2017, 22:04', '61 KB', 'JPG', '1200 x 900 px', 1, 77, 1, 0, 0, 0, 0, '', 0),
(570, 5, '', 'zamek g077', '/zamek_g077.jpg', '/thumb/zamek_g077.jpg', '', '', '17 September 2017, 22:04', '72 KB', 'JPG', '1200 x 900 px', 1, 76, 1, 0, 0, 0, 0, '', 0),
(571, 5, '', 'zamek g076', '/zamek_g076.jpg', '/thumb/zamek_g076.jpg', '', '', '17 September 2017, 22:04', '81 KB', 'JPG', '1200 x 900 px', 1, 75, 1, 0, 0, 0, 0, '', 0),
(572, 5, '', 'zamek g073', '/zamek_g073.jpg', '/thumb/zamek_g073.jpg', '', '', '17 September 2017, 22:04', '131 KB', 'JPG', '1200 x 900 px', 1, 74, 1, 0, 0, 0, 0, '', 0),
(573, 5, '', 'zamek g074', '/zamek_g074.jpg', '/thumb/zamek_g074.jpg', '', '', '17 September 2017, 22:04', '93 KB', 'JPG', '900 x 1200 px', 1, 73, 1, 0, 0, 0, 0, '', 0),
(574, 5, '', 'zamek g069', '/zamek_g069.jpg', '/thumb/zamek_g069.jpg', '', '', '17 September 2017, 22:04', '64 KB', 'JPG', '1200 x 900 px', 1, 72, 1, 0, 0, 0, 0, '', 0),
(575, 5, '', 'zamek g070', '/zamek_g070.jpg', '/thumb/zamek_g070.jpg', '', '', '17 September 2017, 22:04', '68 KB', 'JPG', '900 x 1200 px', 1, 71, 1, 0, 0, 0, 0, '', 0),
(576, 5, '', 'zamek g068', '/zamek_g068.jpg', '/thumb/zamek_g068.jpg', '', '', '17 September 2017, 22:04', '106 KB', 'JPG', '1200 x 900 px', 1, 70, 1, 0, 0, 0, 0, '', 0),
(577, 5, '', 'zamek g072', '/zamek_g072.jpg', '/thumb/zamek_g072.jpg', '', '', '17 September 2017, 22:04', '71 KB', 'JPG', '900 x 1200 px', 1, 69, 1, 0, 0, 0, 0, '', 0),
(578, 5, '', 'zamek g071', '/zamek_g071.jpg', '/thumb/zamek_g071.jpg', '', '', '17 September 2017, 22:04', '58 KB', 'JPG', '900 x 1200 px', 1, 68, 1, 0, 0, 0, 0, '', 0),
(579, 5, '', 'zamek g066', '/zamek_g066.jpg', '/thumb/zamek_g066.jpg', '', '', '17 September 2017, 22:04', '82 KB', 'JPG', '1200 x 900 px', 1, 67, 1, 0, 0, 0, 0, '', 0),
(580, 5, '', 'zamek g067', '/zamek_g067.jpg', '/thumb/zamek_g067.jpg', '', '', '17 September 2017, 22:04', '66 KB', 'JPG', '900 x 1200 px', 1, 66, 1, 0, 0, 0, 0, '', 0),
(581, 5, '', 'zamek g063', '/zamek_g063.jpg', '/thumb/zamek_g063.jpg', '', '', '17 September 2017, 22:04', '119 KB', 'JPG', '1200 x 900 px', 1, 65, 1, 0, 0, 0, 0, '', 0),
(582, 5, '', 'zamek g065', '/zamek_g065.jpg', '/thumb/zamek_g065.jpg', '', '', '17 September 2017, 22:04', '109 KB', 'JPG', '1200 x 900 px', 1, 64, 1, 0, 0, 0, 0, '', 0),
(583, 5, '', 'zamek g064', '/zamek_g064.jpg', '/thumb/zamek_g064.jpg', '', '', '17 September 2017, 22:04', '58 KB', 'JPG', '1200 x 900 px', 1, 63, 1, 0, 0, 0, 0, '', 0),
(584, 5, '', 'zamek g062', '/zamek_g062.jpg', '/thumb/zamek_g062.jpg', '', '', '17 September 2017, 22:04', '184 KB', 'JPG', '1200 x 900 px', 1, 62, 1, 0, 0, 0, 0, '', 0),
(585, 5, '', 'zamek g059', '/zamek_g059.jpg', '/thumb/zamek_g059.jpg', '', '', '17 September 2017, 22:04', '89 KB', 'JPG', '1200 x 900 px', 1, 61, 1, 0, 0, 0, 0, '', 0);
INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`) VALUES
(586, 5, '', 'zamek g058', '/zamek_g058.jpg', '/thumb/zamek_g058.jpg', '', '', '17 September 2017, 22:04', '88 KB', 'JPG', '1200 x 900 px', 1, 60, 1, 0, 0, 0, 0, '', 0),
(587, 5, '', 'zamek g060', '/zamek_g060.jpg', '/thumb/zamek_g060.jpg', '', '', '17 September 2017, 22:04', '106 KB', 'JPG', '1200 x 900 px', 1, 59, 1, 0, 0, 0, 0, '', 0),
(588, 5, '', 'zamek g061', '/zamek_g061.jpg', '/thumb/zamek_g061.jpg', '', '', '17 September 2017, 22:04', '105 KB', 'JPG', '1200 x 900 px', 1, 58, 1, 0, 0, 0, 0, '', 0),
(589, 5, '', 'zamek g057', '/zamek_g057.jpg', '/thumb/zamek_g057.jpg', '', '', '17 September 2017, 22:04', '81 KB', 'JPG', '1200 x 900 px', 1, 57, 1, 0, 0, 0, 0, '', 0),
(590, 5, '', 'zamek g055', '/zamek_g055.jpg', '/thumb/zamek_g055.jpg', '', '', '17 September 2017, 22:03', '134 KB', 'JPG', '1200 x 900 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(591, 5, '', 'zamek g054', '/zamek_g054.jpg', '/thumb/zamek_g054.jpg', '', '', '17 September 2017, 22:03', '73 KB', 'JPG', '1200 x 900 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(592, 5, '', 'zamek g052', '/zamek_g052.jpg', '/thumb/zamek_g052.jpg', '', '', '17 September 2017, 22:03', '95 KB', 'JPG', '900 x 1200 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(593, 5, '', 'zamek g053', '/zamek_g053.jpg', '/thumb/zamek_g053.jpg', '', '', '17 September 2017, 22:03', '94 KB', 'JPG', '1200 x 900 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(594, 5, '', 'zamek g051', '/zamek_g051.jpg', '/thumb/zamek_g051.jpg', '', '', '17 September 2017, 22:03', '107 KB', 'JPG', '1200 x 900 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(595, 5, '', 'zamek g056', '/zamek_g056.jpg', '/thumb/zamek_g056.jpg', '', '', '17 September 2017, 22:03', '84 KB', 'JPG', '1200 x 900 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(596, 5, '', 'zamek g050', '/zamek_g050.jpg', '/thumb/zamek_g050.jpg', '', '', '17 September 2017, 22:03', '92 KB', 'JPG', '900 x 1200 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(597, 5, '', 'zamek g049', '/zamek_g049.jpg', '/thumb/zamek_g049.jpg', '', '', '17 September 2017, 22:03', '80 KB', 'JPG', '900 x 1200 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(598, 5, '', 'zamek g047', '/zamek_g047.jpg', '/thumb/zamek_g047.jpg', '', '', '17 September 2017, 22:03', '111 KB', 'JPG', '1200 x 900 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(599, 5, '', 'zamek g048', '/zamek_g048.jpg', '/thumb/zamek_g048.jpg', '', '', '17 September 2017, 22:03', '79 KB', 'JPG', '1200 x 900 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(600, 5, '', 'zamek g045', '/zamek_g045.jpg', '/thumb/zamek_g045.jpg', '', '', '17 September 2017, 22:03', '96 KB', 'JPG', '1200 x 900 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(601, 5, '', 'zamek g046', '/zamek_g046.jpg', '/thumb/zamek_g046.jpg', '', '', '17 September 2017, 22:03', '102 KB', 'JPG', '1200 x 900 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(602, 5, '', 'zamek g044', '/zamek_g044.jpg', '/thumb/zamek_g044.jpg', '', '', '17 September 2017, 22:03', '119 KB', 'JPG', '900 x 1200 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(603, 5, '', 'zamek g042', '/zamek_g042.jpg', '/thumb/zamek_g042.jpg', '', '', '17 September 2017, 22:03', '118 KB', 'JPG', '1200 x 900 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(604, 5, '', 'zamek g043', '/zamek_g043.jpg', '/thumb/zamek_g043.jpg', '', '', '17 September 2017, 22:03', '141 KB', 'JPG', '1200 x 900 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(605, 5, '', 'zamek g041', '/zamek_g041.jpg', '/thumb/zamek_g041.jpg', '', '', '17 September 2017, 22:03', '143 KB', 'JPG', '1200 x 900 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(606, 5, '', 'zamek g040', '/zamek_g040.jpg', '/thumb/zamek_g040.jpg', '', '', '17 September 2017, 22:03', '109 KB', 'JPG', '1200 x 900 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(607, 5, '', 'zamek g037', '/zamek_g037.jpg', '/thumb/zamek_g037.jpg', '', '', '17 September 2017, 22:03', '105 KB', 'JPG', '1200 x 900 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(608, 5, '', 'zamek g038', '/zamek_g038.jpg', '/thumb/zamek_g038.jpg', '', '', '17 September 2017, 22:03', '124 KB', 'JPG', '1200 x 900 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(609, 5, '', 'zamek g039', '/zamek_g039.jpg', '/thumb/zamek_g039.jpg', '', '', '17 September 2017, 22:03', '110 KB', 'JPG', '1200 x 900 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(610, 5, '', 'zamek g036', '/zamek_g036.jpg', '/thumb/zamek_g036.jpg', '', '', '17 September 2017, 22:03', '126 KB', 'JPG', '1200 x 900 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(611, 5, '', 'zamek g033', '/zamek_g033.jpg', '/thumb/zamek_g033.jpg', '', '', '17 September 2017, 22:03', '97 KB', 'JPG', '1200 x 900 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(612, 5, '', 'zamek g035', '/zamek_g035.jpg', '/thumb/zamek_g035.jpg', '', '', '17 September 2017, 22:03', '121 KB', 'JPG', '1200 x 900 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(613, 5, '', 'zamek g032', '/zamek_g032.jpg', '/thumb/zamek_g032.jpg', '', '', '17 September 2017, 22:03', '101 KB', 'JPG', '1200 x 900 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(614, 5, '', 'zamek g034', '/zamek_g034.jpg', '/thumb/zamek_g034.jpg', '', '', '17 September 2017, 22:03', '100 KB', 'JPG', '1200 x 900 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(615, 5, '', 'zamek g031', '/zamek_g031.jpg', '/thumb/zamek_g031.jpg', '', '', '17 September 2017, 22:03', '153 KB', 'JPG', '1200 x 900 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(616, 5, '', 'zamek g027', '/zamek_g027.jpg', '/thumb/zamek_g027.jpg', '', '', '17 September 2017, 22:02', '129 KB', 'JPG', '1200 x 900 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(617, 5, '', 'zamek g030', '/zamek_g030.jpg', '/thumb/zamek_g030.jpg', '', '', '17 September 2017, 22:02', '124 KB', 'jpg', '1200 x 900 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(618, 5, '', 'zamek g026', '/zamek_g026.jpg', '/thumb/zamek_g026.jpg', '', '', '17 September 2017, 22:02', '110 KB', 'jpg', '1200 x 900 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(619, 5, '', 'zamek g029', '/zamek_g029.jpg', '/thumb/zamek_g029.jpg', '', '', '17 September 2017, 22:02', '91 KB', 'jpg', '900 x 1200 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(620, 5, '', 'zamek g028', '/zamek_g028.jpg', '/thumb/zamek_g028.jpg', '', '', '17 September 2017, 22:02', '79 KB', 'jpg', '1200 x 900 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(621, 5, '', 'zamek g025', '/zamek_g025.jpg', '/thumb/zamek_g025.jpg', '', '', '17 September 2017, 22:02', '112 KB', 'jpg', '1200 x 900 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(622, 5, '', 'zamek g023', '/zamek_g023.jpg', '/thumb/zamek_g023.jpg', '', '', '17 September 2017, 22:02', '221 KB', 'jpg', '900 x 1200 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(623, 5, '', 'zamek g024', '/zamek_g024.jpg', '/thumb/zamek_g024.jpg', '', '', '17 September 2017, 22:02', '181 KB', 'jpg', '900 x 1200 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(624, 5, '', 'zamek g020', '/zamek_g020.jpg', '/thumb/zamek_g020.jpg', '', '', '17 September 2017, 22:02', '189 KB', 'jpg', '1200 x 900 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(625, 5, '', 'zamek g022', '/zamek_g022.jpg', '/thumb/zamek_g022.jpg', '', '', '17 September 2017, 22:02', '180 KB', 'jpg', '1200 x 900 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(626, 5, '', 'zamek g021', '/zamek_g021.jpg', '/thumb/zamek_g021.jpg', '', '', '17 September 2017, 22:02', '220 KB', 'jpg', '1200 x 900 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(627, 5, '', 'zamek g018', '/zamek_g018.jpg', '/thumb/zamek_g018.jpg', '', '', '17 September 2017, 22:02', '145 KB', 'jpg', '900 x 1200 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(628, 5, '', 'zamek g019', '/zamek_g019.jpg', '/thumb/zamek_g019.jpg', '', '', '17 September 2017, 22:02', '171 KB', 'jpg', '900 x 1200 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(629, 5, '', 'zamek g016', '/zamek_g016.jpg', '/thumb/zamek_g016.jpg', '', '', '17 September 2017, 22:02', '173 KB', 'jpg', '1200 x 900 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(630, 5, '', 'zamek g017', '/zamek_g017.jpg', '/thumb/zamek_g017.jpg', '', '', '17 September 2017, 22:02', '144 KB', 'jpg', '1200 x 900 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(631, 5, '', 'zamek g015', '/zamek_g015.jpg', '/thumb/zamek_g015.jpg', '', '', '17 September 2017, 22:02', '114 KB', 'jpg', '900 x 1200 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(632, 5, '', 'zamek g011', '/zamek_g011.jpg', '/thumb/zamek_g011.jpg', '', '', '17 September 2017, 22:02', '135 KB', 'jpg', '1200 x 900 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(633, 5, '', 'zamek g014', '/zamek_g014.jpg', '/thumb/zamek_g014.jpg', '', '', '17 September 2017, 22:02', '165 KB', 'jpg', '1200 x 900 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(634, 5, '', 'zamek g012', '/zamek_g012.jpg', '/thumb/zamek_g012.jpg', '', '', '17 September 2017, 22:02', '199 KB', 'jpg', '1200 x 900 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(635, 5, '', 'zamek g013', '/zamek_g013.jpg', '/thumb/zamek_g013.jpg', '', '', '17 September 2017, 22:02', '152 KB', 'jpg', '1200 x 900 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(636, 5, '', 'zamek g005', '/zamek_g005.jpg', '/thumb/zamek_g005.jpg', '', '', '17 September 2017, 22:01', '184 KB', 'jpg', '1200 x 900 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(637, 5, '', 'zamek g007', '/zamek_g007.jpg', '/thumb/zamek_g007.jpg', '', '', '17 September 2017, 22:01', '149 KB', 'jpg', '1200 x 900 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(638, 5, '', 'zamek g010', '/zamek_g010.jpg', '/thumb/zamek_g010.jpg', '', '', '17 September 2017, 22:01', '234 KB', 'jpg', '1200 x 900 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(639, 5, '', 'zamek g009', '/zamek_g009.jpg', '/thumb/zamek_g009.jpg', '', '', '17 September 2017, 22:01', '208 KB', 'jpg', '1200 x 900 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(640, 5, '', 'zamek g008', '/zamek_g008.jpg', '/thumb/zamek_g008.jpg', '', '', '17 September 2017, 22:01', '151 KB', 'jpg', '1200 x 900 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(641, 5, '', 'zamek g006', '/zamek_g006.jpg', '/thumb/zamek_g006.jpg', '', '', '17 September 2017, 22:01', '188 KB', 'jpg', '1200 x 900 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(642, 5, '', 'zamek g001', '/zamek_g001.jpg', '/thumb/zamek_g001.jpg', '', '', '17 September 2017, 22:01', '205 KB', 'jpg', '1200 x 900 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(643, 5, '', 'zamek g004', '/zamek_g004.jpg', '/thumb/zamek_g004.jpg', '', '', '17 September 2017, 22:01', '217 KB', 'jpg', '1200 x 900 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(644, 5, '', 'zamek g003', '/zamek_g003.jpg', '/thumb/zamek_g003.jpg', '', '', '17 September 2017, 22:01', '227 KB', 'jpg', '1200 x 900 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(645, 5, '', 'zamek g002', '/zamek_g002.jpg', '/thumb/zamek_g002.jpg', '', '', '17 September 2017, 22:01', '181 KB', 'jpg', '1200 x 900 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(646, 6, '', 'breslau140', '/breslau140.jpg', '/thumb/breslau140.jpg', '', '', '18 September 2017, 07:43', '130 KB', 'JPG', '1200 x 900 px', 1, 141, 1, 0, 0, 0, 0, '', 0),
(647, 6, '', 'breslau141', '/breslau141.jpg', '/thumb/breslau141.jpg', '', '', '18 September 2017, 07:43', '158 KB', 'JPG', '1200 x 900 px', 1, 140, 1, 0, 0, 0, 0, '', 0),
(648, 6, '', 'breslau142', '/breslau142.jpg', '/thumb/breslau142.jpg', '', '', '18 September 2017, 07:43', '162 KB', 'JPG', '1200 x 900 px', 1, 139, 1, 0, 0, 0, 0, '', 0),
(649, 6, '', 'breslau139', '/breslau139.jpg', '/thumb/breslau139.jpg', '', '', '18 September 2017, 07:43', '95 KB', 'JPG', '1200 x 900 px', 1, 138, 1, 0, 0, 0, 0, '', 0),
(650, 6, '', 'breslau131', '/breslau131.jpg', '/thumb/breslau131.jpg', '', '', '18 September 2017, 07:43', '186 KB', 'JPG', '1200 x 900 px', 1, 137, 1, 0, 0, 0, 0, '', 0),
(651, 6, '', 'breslau138', '/breslau138.jpg', '/thumb/breslau138.jpg', '', '', '18 September 2017, 07:43', '118 KB', 'JPG', '1200 x 900 px', 1, 136, 1, 0, 0, 0, 0, '', 0),
(652, 6, '', 'breslau137', '/breslau137.jpg', '/thumb/breslau137.jpg', '', '', '18 September 2017, 07:43', '167 KB', 'JPG', '1200 x 900 px', 1, 135, 1, 0, 0, 0, 0, '', 0),
(653, 6, '', 'breslau133', '/breslau133.jpg', '/thumb/breslau133.jpg', '', '', '18 September 2017, 07:43', '158 KB', 'JPG', '1200 x 900 px', 1, 134, 1, 0, 0, 0, 0, '', 0),
(654, 6, '', 'breslau136', '/breslau136.jpg', '/thumb/breslau136.jpg', '', '', '18 September 2017, 07:43', '167 KB', 'JPG', '1200 x 900 px', 1, 133, 1, 0, 0, 0, 0, '', 0),
(655, 6, '', 'breslau134', '/breslau134.jpg', '/thumb/breslau134.jpg', '', '', '18 September 2017, 07:43', '173 KB', 'JPG', '1200 x 900 px', 1, 132, 1, 0, 0, 0, 0, '', 0),
(656, 6, '', 'breslau135', '/breslau135.jpg', '/thumb/breslau135.jpg', '', '', '18 September 2017, 07:43', '183 KB', 'JPG', '1200 x 900 px', 1, 131, 1, 0, 0, 0, 0, '', 0),
(657, 6, '', 'breslau128', '/breslau128.jpg', '/thumb/breslau128.jpg', '', '', '18 September 2017, 07:43', '132 KB', 'JPG', '1200 x 900 px', 1, 130, 1, 0, 0, 0, 0, '', 0),
(658, 6, '', 'breslau129', '/breslau129.jpg', '/thumb/breslau129.jpg', '', '', '18 September 2017, 07:43', '110 KB', 'JPG', '1200 x 900 px', 1, 129, 1, 0, 0, 0, 0, '', 0),
(659, 6, '', 'breslau127', '/breslau127.jpg', '/thumb/breslau127.jpg', '', '', '18 September 2017, 07:43', '134 KB', 'JPG', '1200 x 900 px', 1, 128, 1, 0, 0, 0, 0, '', 0),
(660, 6, '', 'breslau130', '/breslau130.jpg', '/thumb/breslau130.jpg', '', '', '18 September 2017, 07:43', '107 KB', 'JPG', '1200 x 900 px', 1, 127, 1, 0, 0, 0, 0, '', 0),
(661, 6, '', 'breslau132', '/breslau132.jpg', '/thumb/breslau132.jpg', '', '', '18 September 2017, 07:43', '76 KB', 'JPG', '1200 x 900 px', 1, 126, 1, 0, 0, 0, 0, '', 0),
(662, 6, '', 'breslau124', '/breslau124.jpg', '/thumb/breslau124.jpg', '', '', '18 September 2017, 07:42', '148 KB', 'JPG', '1200 x 900 px', 1, 125, 1, 0, 0, 0, 0, '', 0),
(663, 6, '', 'breslau123', '/breslau123.jpg', '/thumb/breslau123.jpg', '', '', '18 September 2017, 07:42', '122 KB', 'JPG', '1200 x 900 px', 1, 124, 1, 0, 0, 0, 0, '', 0),
(664, 6, '', 'breslau126', '/breslau126.jpg', '/thumb/breslau126.jpg', '', '', '18 September 2017, 07:42', '196 KB', 'JPG', '1200 x 900 px', 1, 123, 1, 0, 0, 0, 0, '', 0),
(665, 6, '', 'breslau122', '/breslau122.jpg', '/thumb/breslau122.jpg', '', '', '18 September 2017, 07:42', '168 KB', 'JPG', '1200 x 900 px', 1, 122, 1, 0, 0, 0, 0, '', 0),
(666, 6, '', 'breslau125', '/breslau125.jpg', '/thumb/breslau125.jpg', '', '', '18 September 2017, 07:42', '149 KB', 'JPG', '1200 x 900 px', 1, 121, 1, 0, 0, 0, 0, '', 0),
(667, 6, '', 'breslau120', '/breslau120.jpg', '/thumb/breslau120.jpg', '', '', '18 September 2017, 07:42', '144 KB', 'JPG', '1200 x 900 px', 1, 120, 1, 0, 0, 0, 0, '', 0),
(668, 6, '', 'breslau121', '/breslau121.jpg', '/thumb/breslau121.jpg', '', '', '18 September 2017, 07:42', '131 KB', 'JPG', '1200 x 900 px', 1, 119, 1, 0, 0, 0, 0, '', 0),
(669, 6, '', 'breslau119', '/breslau119.jpg', '/thumb/breslau119.jpg', '', '', '18 September 2017, 07:42', '149 KB', 'JPG', '1200 x 900 px', 1, 118, 1, 0, 0, 0, 0, '', 0),
(670, 6, '', 'breslau118', '/breslau118.jpg', '/thumb/breslau118.jpg', '', '', '18 September 2017, 07:42', '173 KB', 'JPG', '1200 x 900 px', 1, 117, 1, 0, 0, 0, 0, '', 0),
(671, 6, '', 'breslau116', '/breslau116.jpg', '/thumb/breslau116.jpg', '', '', '18 September 2017, 07:42', '246 KB', 'JPG', '1200 x 900 px', 1, 116, 1, 0, 0, 0, 0, '', 0),
(672, 6, '', 'breslau113', '/breslau113.jpg', '/thumb/breslau113.jpg', '', '', '18 September 2017, 07:42', '197 KB', 'JPG', '1200 x 900 px', 1, 115, 1, 0, 0, 0, 0, '', 0),
(673, 6, '', 'breslau117', '/breslau117.jpg', '/thumb/breslau117.jpg', '', '', '18 September 2017, 07:42', '152 KB', 'JPG', '1200 x 900 px', 1, 114, 1, 0, 0, 0, 0, '', 0),
(674, 6, '', 'breslau114', '/breslau114.jpg', '/thumb/breslau114.jpg', '', '', '18 September 2017, 07:42', '152 KB', 'JPG', '1200 x 900 px', 1, 113, 1, 0, 0, 0, 0, '', 0),
(675, 6, '', 'breslau115', '/breslau115.jpg', '/thumb/breslau115.jpg', '', '', '18 September 2017, 07:42', '175 KB', 'JPG', '1200 x 900 px', 1, 112, 1, 0, 0, 0, 0, '', 0),
(676, 6, '', 'breslau111', '/breslau111.jpg', '/thumb/breslau111.jpg', '', '', '18 September 2017, 07:42', '112 KB', 'JPG', '1200 x 900 px', 1, 111, 1, 0, 0, 0, 0, '', 0),
(677, 6, '', 'breslau112', '/breslau112.jpg', '/thumb/breslau112.jpg', '', '', '18 September 2017, 07:42', '142 KB', 'JPG', '1200 x 900 px', 1, 110, 1, 0, 0, 0, 0, '', 0),
(678, 6, '', 'breslau109', '/breslau109.jpg', '/thumb/breslau109.jpg', '', '', '18 September 2017, 07:42', '203 KB', 'JPG', '1200 x 900 px', 1, 109, 1, 0, 0, 0, 0, '', 0),
(679, 6, '', 'breslau108', '/breslau108.jpg', '/thumb/breslau108.jpg', '', '', '18 September 2017, 07:42', '103 KB', 'JPG', '1200 x 900 px', 1, 108, 1, 0, 0, 0, 0, '', 0),
(680, 6, '', 'breslau104', '/breslau104.jpg', '/thumb/breslau104.jpg', '', '', '18 September 2017, 07:42', '158 KB', 'JPG', '1200 x 900 px', 1, 107, 1, 0, 0, 0, 0, '', 0),
(681, 6, '', 'breslau107', '/breslau107.jpg', '/thumb/breslau107.jpg', '', '', '18 September 2017, 07:42', '196 KB', 'JPG', '1200 x 900 px', 1, 106, 1, 0, 0, 0, 0, '', 0),
(682, 6, '', 'breslau110', '/breslau110.jpg', '/thumb/breslau110.jpg', '', '', '18 September 2017, 07:41', '97 KB', 'JPG', '1200 x 900 px', 1, 105, 1, 0, 0, 0, 0, '', 0),
(683, 6, '', 'breslau106', '/breslau106.jpg', '/thumb/breslau106.jpg', '', '', '18 September 2017, 07:41', '136 KB', 'JPG', '1200 x 900 px', 1, 104, 1, 0, 0, 0, 0, '', 0),
(684, 6, '', 'breslau103', '/breslau103.jpg', '/thumb/breslau103.jpg', '', '', '18 September 2017, 07:41', '158 KB', 'JPG', '1200 x 900 px', 1, 103, 1, 0, 0, 0, 0, '', 0),
(685, 6, '', 'breslau105', '/breslau105.jpg', '/thumb/breslau105.jpg', '', '', '18 September 2017, 07:41', '169 KB', 'JPG', '1200 x 900 px', 1, 102, 1, 0, 0, 0, 0, '', 0),
(686, 6, '', 'breslau102', '/breslau102.jpg', '/thumb/breslau102.jpg', '', '', '18 September 2017, 07:41', '138 KB', 'JPG', '1200 x 900 px', 1, 101, 1, 0, 0, 0, 0, '', 0),
(687, 6, '', 'breslau100', '/breslau100.jpg', '/thumb/breslau100.jpg', '', '', '18 September 2017, 07:41', '125 KB', 'JPG', '1200 x 900 px', 1, 100, 1, 0, 0, 0, 0, '', 0),
(688, 6, '', 'breslau098', '/breslau098.jpg', '/thumb/breslau098.jpg', '', '', '18 September 2017, 07:41', '135 KB', 'JPG', '1200 x 900 px', 1, 99, 1, 0, 0, 0, 0, '', 0),
(689, 6, '', 'breslau101', '/breslau101.jpg', '/thumb/breslau101.jpg', '', '', '18 September 2017, 07:41', '105 KB', 'JPG', '1200 x 900 px', 1, 98, 1, 0, 0, 0, 0, '', 0),
(690, 6, '', 'breslau099', '/breslau099.jpg', '/thumb/breslau099.jpg', '', '', '18 September 2017, 07:41', '121 KB', 'JPG', '1200 x 900 px', 1, 97, 1, 0, 0, 0, 0, '', 0),
(691, 6, '', 'breslau095', '/breslau095.jpg', '/thumb/breslau095.jpg', '', '', '18 September 2017, 07:41', '138 KB', 'JPG', '1200 x 900 px', 1, 96, 1, 0, 0, 0, 0, '', 0),
(692, 6, '', 'breslau096', '/breslau096.jpg', '/thumb/breslau096.jpg', '', '', '18 September 2017, 07:41', '105 KB', 'JPG', '1200 x 900 px', 1, 95, 1, 0, 0, 0, 0, '', 0),
(693, 6, '', 'breslau097', '/breslau097.jpg', '/thumb/breslau097.jpg', '', '', '18 September 2017, 07:41', '93 KB', 'JPG', '1200 x 900 px', 1, 94, 1, 0, 0, 0, 0, '', 0),
(694, 6, '', 'breslau090', '/breslau090.jpg', '/thumb/breslau090.jpg', '', '', '18 September 2017, 07:41', '128 KB', 'JPG', '1200 x 900 px', 1, 93, 1, 0, 0, 0, 0, '', 0),
(695, 6, '', 'breslau091', '/breslau091.jpg', '/thumb/breslau091.jpg', '', '', '18 September 2017, 07:41', '105 KB', 'JPG', '1200 x 900 px', 1, 92, 1, 0, 0, 0, 0, '', 0),
(696, 6, '', 'breslau094', '/breslau094.jpg', '/thumb/breslau094.jpg', '', '', '18 September 2017, 07:41', '94 KB', 'JPG', '1200 x 900 px', 1, 91, 1, 0, 0, 0, 0, '', 0),
(697, 6, '', 'breslau093', '/breslau093.jpg', '/thumb/breslau093.jpg', '', '', '18 September 2017, 07:41', '123 KB', 'JPG', '1200 x 900 px', 1, 90, 1, 0, 0, 0, 0, '', 0),
(698, 6, '', 'breslau092', '/breslau092.jpg', '/thumb/breslau092.jpg', '', '', '18 September 2017, 07:41', '99 KB', 'JPG', '1200 x 900 px', 1, 89, 1, 0, 0, 0, 0, '', 0),
(699, 6, '', 'breslau089', '/breslau089.jpg', '/thumb/breslau089.jpg', '', '', '18 September 2017, 07:41', '155 KB', 'JPG', '1200 x 900 px', 1, 88, 1, 0, 0, 0, 0, '', 0),
(700, 6, '', 'breslau086', '/breslau086.jpg', '/thumb/breslau086.jpg', '', '', '18 September 2017, 07:41', '138 KB', 'JPG', '1200 x 900 px', 1, 87, 1, 0, 0, 0, 0, '', 0),
(701, 6, '', 'breslau088', '/breslau088.jpg', '/thumb/breslau088.jpg', '', '', '18 September 2017, 07:41', '116 KB', 'JPG', '1200 x 900 px', 1, 86, 1, 0, 0, 0, 0, '', 0),
(702, 6, '', 'breslau087', '/breslau087.jpg', '/thumb/breslau087.jpg', '', '', '18 September 2017, 07:41', '156 KB', 'JPG', '1200 x 900 px', 1, 85, 1, 0, 0, 0, 0, '', 0),
(703, 6, '', 'breslau083', '/breslau083.jpg', '/thumb/breslau083.jpg', '', '', '18 September 2017, 07:41', '143 KB', 'JPG', '1200 x 900 px', 1, 84, 1, 0, 0, 0, 0, '', 0),
(704, 6, '', 'breslau085', '/breslau085.jpg', '/thumb/breslau085.jpg', '', '', '18 September 2017, 07:40', '171 KB', 'JPG', '1200 x 900 px', 1, 83, 1, 0, 0, 0, 0, '', 0),
(705, 6, '', 'breslau082', '/breslau082.jpg', '/thumb/breslau082.jpg', '', '', '18 September 2017, 07:40', '114 KB', 'JPG', '1200 x 900 px', 1, 82, 1, 0, 0, 0, 0, '', 0),
(706, 6, '', 'breslau084', '/breslau084.jpg', '/thumb/breslau084.jpg', '', '', '18 September 2017, 07:40', '94 KB', 'JPG', '1200 x 900 px', 1, 81, 1, 0, 0, 0, 0, '', 0),
(707, 6, '', 'breslau081', '/breslau081.jpg', '/thumb/breslau081.jpg', '', '', '18 September 2017, 07:40', '144 KB', 'JPG', '1200 x 900 px', 1, 80, 1, 0, 0, 0, 0, '', 0),
(708, 6, '', 'breslau080', '/breslau080.jpg', '/thumb/breslau080.jpg', '', '', '18 September 2017, 07:40', '107 KB', 'JPG', '1200 x 900 px', 1, 79, 1, 0, 0, 0, 0, '', 0),
(709, 6, '', 'breslau079', '/breslau079.jpg', '/thumb/breslau079.jpg', '', '', '18 September 2017, 07:40', '89 KB', 'JPG', '1200 x 900 px', 1, 78, 1, 0, 0, 0, 0, '', 0),
(710, 6, '', 'breslau076', '/breslau076.jpg', '/thumb/breslau076.jpg', '', '', '18 September 2017, 07:40', '87 KB', 'JPG', '1200 x 900 px', 1, 77, 1, 0, 0, 0, 0, '', 0),
(711, 6, '', 'breslau078', '/breslau078.jpg', '/thumb/breslau078.jpg', '', '', '18 September 2017, 07:40', '86 KB', 'JPG', '1200 x 900 px', 1, 76, 1, 0, 0, 0, 0, '', 0),
(712, 6, '', 'breslau075', '/breslau075.jpg', '/thumb/breslau075.jpg', '', '', '18 September 2017, 07:40', '108 KB', 'JPG', '1200 x 900 px', 1, 75, 1, 0, 0, 0, 0, '', 0),
(713, 6, '', 'breslau077', '/breslau077.jpg', '/thumb/breslau077.jpg', '', '', '18 September 2017, 07:40', '145 KB', 'JPG', '1200 x 900 px', 1, 74, 1, 0, 0, 0, 0, '', 0),
(714, 6, '', 'breslau072', '/breslau072.jpg', '/thumb/breslau072.jpg', '', '', '18 September 2017, 07:40', '146 KB', 'JPG', '1200 x 900 px', 1, 73, 1, 0, 0, 0, 0, '', 0),
(715, 6, '', 'breslau074', '/breslau074.jpg', '/thumb/breslau074.jpg', '', '', '18 September 2017, 07:40', '157 KB', 'JPG', '1200 x 900 px', 1, 72, 1, 0, 0, 0, 0, '', 0),
(716, 6, '', 'breslau073', '/breslau073.jpg', '/thumb/breslau073.jpg', '', '', '18 September 2017, 07:40', '117 KB', 'JPG', '1200 x 900 px', 1, 71, 1, 0, 0, 0, 0, '', 0),
(717, 6, '', 'breslau071', '/breslau071.jpg', '/thumb/breslau071.jpg', '', '', '18 September 2017, 07:40', '131 KB', 'JPG', '1200 x 900 px', 1, 70, 1, 0, 0, 0, 0, '', 0),
(718, 6, '', 'breslau067', '/breslau067.jpg', '/thumb/breslau067.jpg', '', '', '18 September 2017, 07:40', '179 KB', 'JPG', '1200 x 900 px', 1, 69, 1, 0, 0, 0, 0, '', 0),
(719, 6, '', 'breslau070', '/breslau070.jpg', '/thumb/breslau070.jpg', '', '', '18 September 2017, 07:40', '144 KB', 'JPG', '1200 x 900 px', 1, 68, 1, 0, 0, 0, 0, '', 0),
(720, 6, '', 'breslau066', '/breslau066.jpg', '/thumb/breslau066.jpg', '', '', '18 September 2017, 07:40', '136 KB', 'JPG', '1200 x 900 px', 1, 67, 1, 0, 0, 0, 0, '', 0),
(721, 6, '', 'breslau069', '/breslau069.jpg', '/thumb/breslau069.jpg', '', '', '18 September 2017, 07:40', '94 KB', 'JPG', '1200 x 900 px', 1, 66, 1, 0, 0, 0, 0, '', 0),
(722, 6, '', 'breslau065', '/breslau065.jpg', '/thumb/breslau065.jpg', '', '', '18 September 2017, 07:40', '155 KB', 'JPG', '1200 x 900 px', 1, 65, 1, 0, 0, 0, 0, '', 0),
(723, 6, '', 'breslau063', '/breslau063.jpg', '/thumb/breslau063.jpg', '', '', '18 September 2017, 07:40', '136 KB', 'JPG', '1200 x 900 px', 1, 64, 1, 0, 0, 0, 0, '', 0),
(724, 6, '', 'breslau062', '/breslau062.jpg', '/thumb/breslau062.jpg', '', '', '18 September 2017, 07:40', '107 KB', 'JPG', '1200 x 900 px', 1, 63, 1, 0, 0, 0, 0, '', 0),
(725, 6, '', 'breslau064', '/breslau064.jpg', '/thumb/breslau064.jpg', '', '', '18 September 2017, 07:40', '119 KB', 'JPG', '1200 x 900 px', 1, 62, 1, 0, 0, 0, 0, '', 0),
(726, 6, '', 'breslau061', '/breslau061.jpg', '/thumb/breslau061.jpg', '', '', '18 September 2017, 07:40', '126 KB', 'JPG', '1200 x 900 px', 1, 61, 1, 0, 0, 0, 0, '', 0),
(727, 6, '', 'breslau050', '/breslau050.jpg', '/thumb/breslau050.jpg', '', '', '18 September 2017, 07:40', '173 KB', 'JPG', '1200 x 900 px', 1, 60, 1, 0, 0, 0, 0, '', 0),
(728, 6, '', 'breslau060', '/breslau060.jpg', '/thumb/breslau060.jpg', '', '', '18 September 2017, 07:39', '78 KB', 'JPG', '1200 x 900 px', 1, 59, 1, 0, 0, 0, 0, '', 0),
(729, 6, '', 'breslau059', '/breslau059.jpg', '/thumb/breslau059.jpg', '', '', '18 September 2017, 07:39', '102 KB', 'JPG', '1200 x 900 px', 1, 58, 1, 0, 0, 0, 0, '', 0),
(730, 6, '', 'breslau058', '/breslau058.jpg', '/thumb/breslau058.jpg', '', '', '18 September 2017, 07:39', '84 KB', 'JPG', '1200 x 900 px', 1, 57, 1, 0, 0, 0, 0, '', 0),
(731, 6, '', 'breslau055', '/breslau055.jpg', '/thumb/breslau055.jpg', '', '', '18 September 2017, 07:39', '126 KB', 'JPG', '1200 x 900 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(732, 6, '', 'breslau057', '/breslau057.jpg', '/thumb/breslau057.jpg', '', '', '18 September 2017, 07:39', '110 KB', 'JPG', '1200 x 900 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(733, 6, '', 'breslau056', '/breslau056.jpg', '/thumb/breslau056.jpg', '', '', '18 September 2017, 07:39', '106 KB', 'JPG', '1200 x 900 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(734, 6, '', 'breslau053', '/breslau053.jpg', '/thumb/breslau053.jpg', '', '', '18 September 2017, 07:39', '134 KB', 'JPG', '1200 x 900 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(735, 6, '', 'breslau054', '/breslau054.jpg', '/thumb/breslau054.jpg', '', '', '18 September 2017, 07:39', '134 KB', 'JPG', '1200 x 900 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(736, 6, '', 'breslau052', '/breslau052.jpg', '/thumb/breslau052.jpg', '', '', '18 September 2017, 07:39', '91 KB', 'JPG', '1200 x 900 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(737, 6, '', 'breslau051', '/breslau051.jpg', '/thumb/breslau051.jpg', '', '', '18 September 2017, 07:39', '134 KB', 'JPG', '1200 x 900 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(738, 6, '', 'breslau048', '/breslau048.jpg', '/thumb/breslau048.jpg', '', '', '18 September 2017, 07:39', '166 KB', 'JPG', '1200 x 900 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(739, 6, '', 'breslau047', '/breslau047.jpg', '/thumb/breslau047.jpg', '', '', '18 September 2017, 07:39', '122 KB', 'JPG', '1200 x 900 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(740, 6, '', 'breslau049', '/breslau049.jpg', '/thumb/breslau049.jpg', '', '', '18 September 2017, 07:39', '137 KB', 'JPG', '1200 x 900 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(741, 6, '', 'breslau046', '/breslau046.jpg', '/thumb/breslau046.jpg', '', '', '18 September 2017, 07:39', '108 KB', 'JPG', '1200 x 900 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(742, 6, '', 'breslau044', '/breslau044.jpg', '/thumb/breslau044.jpg', '', '', '18 September 2017, 07:39', '100 KB', 'JPG', '1200 x 900 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(743, 6, '', 'breslau045', '/breslau045.jpg', '/thumb/breslau045.jpg', '', '', '18 September 2017, 07:39', '130 KB', 'JPG', '1200 x 900 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(744, 6, '', 'breslau043', '/breslau043.jpg', '/thumb/breslau043.jpg', '', '', '18 September 2017, 07:39', '105 KB', 'JPG', '1200 x 900 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(745, 6, '', 'breslau038', '/breslau038.jpg', '/thumb/breslau038.jpg', '', '', '18 September 2017, 07:39', '127 KB', 'JPG', '1200 x 900 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(746, 6, '', 'breslau040', '/breslau040.jpg', '/thumb/breslau040.jpg', '', '', '18 September 2017, 07:39', '104 KB', 'jpg', '1200 x 900 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(747, 6, '', 'breslau041', '/breslau041.jpg', '/thumb/breslau041.jpg', '', '', '18 September 2017, 07:39', '110 KB', 'jpg', '1200 x 900 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(748, 6, '', 'breslau042', '/breslau042.jpg', '/thumb/breslau042.jpg', '', '', '18 September 2017, 07:39', '134 KB', 'jpg', '1200 x 900 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(749, 6, '', 'breslau039', '/breslau039.jpg', '/thumb/breslau039.jpg', '', '', '18 September 2017, 07:39', '153 KB', 'jpg', '1200 x 900 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(750, 6, '', 'breslau037', '/breslau037.jpg', '/thumb/breslau037.jpg', '', '', '18 September 2017, 07:39', '115 KB', 'jpg', '1200 x 900 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(751, 6, '', 'breslau035', '/breslau035.jpg', '/thumb/breslau035.jpg', '', '', '18 September 2017, 07:39', '134 KB', 'jpg', '1200 x 900 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(752, 6, '', 'breslau036', '/breslau036.jpg', '/thumb/breslau036.jpg', '', '', '18 September 2017, 07:39', '159 KB', 'jpg', '1200 x 900 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(753, 6, '', 'breslau033', '/breslau033.jpg', '/thumb/breslau033.jpg', '', '', '18 September 2017, 07:38', '175 KB', 'jpg', '1200 x 900 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(754, 6, '', 'breslau034', '/breslau034.jpg', '/thumb/breslau034.jpg', '', '', '18 September 2017, 07:38', '161 KB', 'jpg', '1200 x 900 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(755, 6, '', 'breslau027', '/breslau027.jpg', '/thumb/breslau027.jpg', '', '', '18 September 2017, 07:38', '181 KB', 'jpg', '1200 x 900 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(756, 6, '', 'breslau031', '/breslau031.jpg', '/thumb/breslau031.jpg', '', '', '18 September 2017, 07:38', '141 KB', 'jpg', '1200 x 900 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(757, 6, '', 'breslau032', '/breslau032.jpg', '/thumb/breslau032.jpg', '', '', '18 September 2017, 07:38', '150 KB', 'jpg', '1200 x 900 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(758, 6, '', 'breslau030', '/breslau030.jpg', '/thumb/breslau030.jpg', '', '', '18 September 2017, 07:38', '116 KB', 'jpg', '1200 x 900 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(759, 6, '', 'breslau028', '/breslau028.jpg', '/thumb/breslau028.jpg', '', '', '18 September 2017, 07:38', '184 KB', 'jpg', '1200 x 900 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(760, 6, '', 'breslau029', '/breslau029.jpg', '/thumb/breslau029.jpg', '', '', '18 September 2017, 07:38', '166 KB', 'jpg', '1200 x 900 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(761, 6, '', 'breslau026', '/breslau026.jpg', '/thumb/breslau026.jpg', '', '', '18 September 2017, 07:38', '168 KB', 'jpg', '1200 x 900 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(762, 6, '', 'breslau025', '/breslau025.jpg', '/thumb/breslau025.jpg', '', '', '18 September 2017, 07:38', '235 KB', 'jpg', '1200 x 900 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(763, 6, '', 'breslau021', '/breslau021.jpg', '/thumb/breslau021.jpg', '', '', '18 September 2017, 07:38', '162 KB', 'jpg', '1200 x 900 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(764, 6, '', 'breslau023', '/breslau023.jpg', '/thumb/breslau023.jpg', '', '', '18 September 2017, 07:38', '170 KB', 'jpg', '1200 x 900 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(765, 6, '', 'breslau022', '/breslau022.jpg', '/thumb/breslau022.jpg', '', '', '18 September 2017, 07:38', '174 KB', 'jpg', '1200 x 900 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(766, 6, '', 'breslau020', '/breslau020.jpg', '/thumb/breslau020.jpg', '', '', '18 September 2017, 07:38', '169 KB', 'jpg', '1200 x 900 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(767, 6, '', 'breslau024', '/breslau024.jpg', '/thumb/breslau024.jpg', '', '', '18 September 2017, 07:38', '177 KB', 'jpg', '1200 x 900 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(768, 6, '', 'breslau019', '/breslau019.jpg', '/thumb/breslau019.jpg', '', '', '18 September 2017, 07:38', '206 KB', 'jpg', '1200 x 900 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(769, 6, '', 'breslau017', '/breslau017.jpg', '/thumb/breslau017.jpg', '', '', '18 September 2017, 07:38', '213 KB', 'jpg', '1200 x 900 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(770, 6, '', 'breslau012', '/breslau012.jpg', '/thumb/breslau012.jpg', '', '', '18 September 2017, 07:37', '168 KB', 'jpg', '1200 x 900 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(771, 6, '', 'breslau018', '/breslau018.jpg', '/thumb/breslau018.jpg', '', '', '18 September 2017, 07:37', '138 KB', 'jpg', '1200 x 900 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(772, 6, '', 'breslau015', '/breslau015.jpg', '/thumb/breslau015.jpg', '', '', '18 September 2017, 07:37', '167 KB', 'jpg', '1200 x 900 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(773, 6, '', 'breslau016', '/breslau016.jpg', '/thumb/breslau016.jpg', '', '', '18 September 2017, 07:37', '169 KB', 'jpg', '1200 x 900 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(774, 6, '', 'breslau014', '/breslau014.jpg', '/thumb/breslau014.jpg', '', '', '18 September 2017, 07:37', '138 KB', 'jpg', '1200 x 900 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(775, 6, '', 'breslau013', '/breslau013.jpg', '/thumb/breslau013.jpg', '', '', '18 September 2017, 07:37', '157 KB', 'jpg', '1200 x 900 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(776, 6, '', 'breslau008', '/breslau008.jpg', '/thumb/breslau008.jpg', '', '', '18 September 2017, 07:37', '176 KB', 'jpg', '1200 x 900 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(777, 6, '', 'breslau010', '/breslau010.jpg', '/thumb/breslau010.jpg', '', '', '18 September 2017, 07:37', '129 KB', 'jpg', '1200 x 900 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(778, 6, '', 'breslau011', '/breslau011.jpg', '/thumb/breslau011.jpg', '', '', '18 September 2017, 07:37', '155 KB', 'jpg', '1200 x 900 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(779, 6, '', 'breslau009', '/breslau009.jpg', '/thumb/breslau009.jpg', '', '', '18 September 2017, 07:37', '151 KB', 'jpg', '1200 x 900 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(780, 6, '', 'breslau007', '/breslau007.jpg', '/thumb/breslau007.jpg', '', '', '18 September 2017, 07:37', '137 KB', 'jpg', '1200 x 900 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(781, 6, '', 'breslau005', '/breslau005.jpg', '/thumb/breslau005.jpg', '', '', '18 September 2017, 07:37', '138 KB', 'jpg', '1200 x 900 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(782, 6, '', 'breslau002', '/breslau002.jpg', '/thumb/breslau002.jpg', '', '', '18 September 2017, 07:37', '113 KB', 'jpg', '1200 x 900 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(783, 6, '', 'breslau004', '/breslau004.jpg', '/thumb/breslau004.jpg', '', '', '18 September 2017, 07:37', '100 KB', 'jpg', '1200 x 900 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(784, 6, '', 'breslau003', '/breslau003.jpg', '/thumb/breslau003.jpg', '', '', '18 September 2017, 07:37', '118 KB', 'jpg', '1200 x 900 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(785, 6, '', 'breslau001', '/breslau001.jpg', '/thumb/breslau001.jpg', '', '', '18 September 2017, 07:37', '80 KB', 'jpg', '1200 x 900 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(786, 6, '', 'breslau006', '/breslau006.jpg', '/thumb/breslau006.jpg', '', '', '18 September 2017, 07:37', '176 KB', 'jpg', '1200 x 900 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(787, 7, '', 'lublin153', '/lublin153.jpg', '/thumb/lublin153.jpg', '', '', '19 September 2017, 05:58', '150 KB', 'JPG', '900 x 1200 px', 1, 187, 1, 0, 0, 0, 0, '', 0),
(1062, 9, '', 'llf014', '/llf014.jpg', '/thumb/llf014.jpg', '', '', '07 October 2017, 08:33', '170 KB', 'JPG', '800 x 600 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(788, 7, '', 'lublin186', '/lublin186.jpg', '/thumb/lublin186.jpg', '', '', '19 September 2017, 05:58', '102 KB', 'JPG', '800 x 600 px', 1, 186, 1, 0, 0, 0, 0, '', 0),
(789, 7, '', 'lublin187', '/lublin187.jpg', '/thumb/lublin187.jpg', '', '', '19 September 2017, 05:58', '47 KB', 'JPG', '800 x 600 px', 1, 185, 1, 0, 0, 0, 0, '', 0),
(1061, 9, '', 'llf016', '/llf016.jpg', '/thumb/llf016.jpg', '', '', '07 October 2017, 08:33', '153 KB', 'JPG', '800 x 600 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(790, 7, '', 'lublin185', '/lublin185.jpg', '/thumb/lublin185.jpg', '', '', '19 September 2017, 05:58', '115 KB', 'JPG', '800 x 600 px', 1, 184, 1, 0, 0, 0, 0, '', 0),
(791, 7, '', 'lublin183', '/lublin183.jpg', '/thumb/lublin183.jpg', '', '', '19 September 2017, 05:58', '56 KB', 'JPG', '800 x 600 px', 1, 183, 1, 0, 0, 0, 0, '', 0),
(1060, 9, '', 'llf017', '/llf017.jpg', '/thumb/llf017.jpg', '', '', '07 October 2017, 08:33', '120 KB', 'JPG', '800 x 600 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(792, 7, '', 'lublin184', '/lublin184.jpg', '/thumb/lublin184.jpg', '', '', '19 September 2017, 05:58', '57 KB', 'JPG', '800 x 600 px', 1, 182, 1, 0, 0, 0, 0, '', 0),
(793, 7, '', 'lublin182', '/lublin182.jpg', '/thumb/lublin182.jpg', '', '', '19 September 2017, 05:58', '67 KB', 'JPG', '800 x 600 px', 1, 181, 1, 0, 0, 0, 0, '', 0),
(1059, 9, '', 'llf013', '/llf013.jpg', '/thumb/llf013.jpg', '', '', '07 October 2017, 08:33', '123 KB', 'JPG', '800 x 600 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(794, 7, '', 'lublin179', '/lublin179.jpg', '/thumb/lublin179.jpg', '', '', '19 September 2017, 05:58', '140 KB', 'JPG', '800 x 600 px', 1, 180, 1, 0, 0, 0, 0, '', 0),
(795, 7, '', 'lublin150', '/lublin150.jpg', '/thumb/lublin150.jpg', '', '', '19 September 2017, 05:58', '181 KB', 'JPG', '900 x 1200 px', 1, 179, 1, 0, 0, 0, 0, '', 0),
(1058, 9, '', 'llf019', '/llf019.jpg', '/thumb/llf019.jpg', '', '', '07 October 2017, 08:33', '102 KB', 'JPG', '800 x 600 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(796, 7, '', 'lublin181', '/lublin181.jpg', '/thumb/lublin181.jpg', '', '', '19 September 2017, 05:58', '99 KB', 'JPG', '800 x 600 px', 1, 178, 1, 0, 0, 0, 0, '', 0),
(797, 7, '', 'lublin180', '/lublin180.jpg', '/thumb/lublin180.jpg', '', '', '19 September 2017, 05:58', '98 KB', 'JPG', '800 x 600 px', 1, 177, 1, 0, 0, 0, 0, '', 0),
(1057, 9, '', 'llf020', '/llf020.jpg', '/thumb/llf020.jpg', '', '', '07 October 2017, 08:34', '128 KB', 'JPG', '800 x 600 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(798, 7, '', 'lublin177', '/lublin177.jpg', '/thumb/lublin177.jpg', '', '', '19 September 2017, 05:58', '85 KB', 'JPG', '800 x 600 px', 1, 176, 1, 0, 0, 0, 0, '', 0),
(799, 7, '', 'lublin178', '/lublin178.jpg', '/thumb/lublin178.jpg', '', '', '19 September 2017, 05:58', '74 KB', 'JPG', '800 x 600 px', 1, 175, 1, 0, 0, 0, 0, '', 0),
(1056, 9, '', 'llf025', '/llf025.jpg', '/thumb/llf025.jpg', '', '', '07 October 2017, 08:34', '93 KB', 'JPG', '800 x 600 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(800, 7, '', 'lublin176', '/lublin176.jpg', '/thumb/lublin176.jpg', '', '', '19 September 2017, 05:58', '59 KB', 'JPG', '800 x 600 px', 1, 174, 1, 0, 0, 0, 0, '', 0),
(801, 7, '', 'lublin168', '/lublin168.jpg', '/thumb/lublin168.jpg', '', '', '19 September 2017, 05:58', '148 KB', 'JPG', '800 x 600 px', 1, 173, 1, 0, 0, 0, 0, '', 0),
(1055, 9, '', 'llf023', '/llf023.jpg', '/thumb/llf023.jpg', '', '', '07 October 2017, 08:34', '77 KB', 'JPG', '800 x 600 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(802, 7, '', 'lublin175', '/lublin175.jpg', '/thumb/lublin175.jpg', '', '', '19 September 2017, 05:58', '96 KB', 'JPG', '800 x 600 px', 1, 172, 1, 0, 0, 0, 0, '', 0),
(803, 7, '', 'lublin173', '/lublin173.jpg', '/thumb/lublin173.jpg', '', '', '19 September 2017, 05:58', '116 KB', 'JPG', '800 x 600 px', 1, 171, 1, 0, 0, 0, 0, '', 0),
(1054, 9, '', 'llf024', '/llf024.jpg', '/thumb/llf024.jpg', '', '', '07 October 2017, 08:34', '81 KB', 'JPG', '800 x 600 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(804, 7, '', 'lublin174', '/lublin174.jpg', '/thumb/lublin174.jpg', '', '', '19 September 2017, 05:58', '77 KB', 'JPG', '800 x 600 px', 1, 170, 1, 0, 0, 0, 0, '', 0),
(805, 7, '', 'lublin172', '/lublin172.jpg', '/thumb/lublin172.jpg', '', '', '19 September 2017, 05:58', '112 KB', 'JPG', '800 x 600 px', 1, 169, 1, 0, 0, 0, 0, '', 0),
(1053, 9, '', 'llf018', '/llf018.jpg', '/thumb/llf018.jpg', '', '', '07 October 2017, 08:34', '141 KB', 'JPG', '800 x 600 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(806, 7, '', 'lublin171', '/lublin171.jpg', '/thumb/lublin171.jpg', '', '', '19 September 2017, 05:58', '91 KB', 'JPG', '800 x 600 px', 1, 168, 1, 0, 0, 0, 0, '', 0),
(807, 7, '', 'lublin167', '/lublin167.jpg', '/thumb/lublin167.jpg', '', '', '19 September 2017, 05:58', '125 KB', 'JPG', '800 x 600 px', 1, 167, 1, 0, 0, 0, 0, '', 0),
(1052, 9, '', 'llf022', '/llf022.jpg', '/thumb/llf022.jpg', '', '', '07 October 2017, 08:34', '79 KB', 'JPG', '800 x 600 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(808, 7, '', 'lublin170', '/lublin170.jpg', '/thumb/lublin170.jpg', '', '', '19 September 2017, 05:58', '75 KB', 'JPG', '800 x 600 px', 1, 166, 1, 0, 0, 0, 0, '', 0),
(809, 7, '', 'lublin169', '/lublin169.jpg', '/thumb/lublin169.jpg', '', '', '19 September 2017, 05:58', '66 KB', 'JPG', '800 x 600 px', 1, 165, 1, 0, 0, 0, 0, '', 0),
(1051, 9, '', 'llf021', '/llf021.jpg', '/thumb/llf021.jpg', '', '', '07 October 2017, 08:34', '103 KB', 'JPG', '800 x 600 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(810, 7, '', 'lublin166', '/lublin166.jpg', '/thumb/lublin166.jpg', '', '', '19 September 2017, 05:58', '108 KB', 'JPG', '800 x 600 px', 1, 164, 1, 0, 0, 0, 0, '', 0),
(811, 7, '', 'lublin165', '/lublin165.jpg', '/thumb/lublin165.jpg', '', '', '19 September 2017, 05:58', '76 KB', 'JPG', '800 x 600 px', 1, 163, 1, 0, 0, 0, 0, '', 0),
(1050, 9, '', 'llf027', '/llf027.jpg', '/thumb/llf027.jpg', '', '', '07 October 2017, 08:34', '73 KB', 'JPG', '800 x 600 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(812, 7, '', 'lublin159', '/lublin159.jpg', '/thumb/lublin159.jpg', '', '', '19 September 2017, 05:58', '106 KB', 'JPG', '800 x 600 px', 1, 162, 1, 0, 0, 0, 0, '', 0),
(813, 7, '', 'lublin164', '/lublin164.jpg', '/thumb/lublin164.jpg', '', '', '19 September 2017, 05:57', '57 KB', 'JPG', '450 x 600 px', 1, 161, 1, 0, 0, 0, 0, '', 0),
(1049, 9, '', 'llf029', '/llf029.jpg', '/thumb/llf029.jpg', '', '', '07 October 2017, 08:34', '86 KB', 'JPG', '800 x 600 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(814, 7, '', 'lublin162', '/lublin162.jpg', '/thumb/lublin162.jpg', '', '', '19 September 2017, 05:57', '143 KB', 'JPG', '800 x 600 px', 1, 160, 1, 0, 0, 0, 0, '', 0),
(815, 7, '', 'lublin163', '/lublin163.jpg', '/thumb/lublin163.jpg', '', '', '19 September 2017, 05:57', '62 KB', 'JPG', '800 x 600 px', 1, 159, 1, 0, 0, 0, 0, '', 0),
(1048, 9, '', 'llf026', '/llf026.jpg', '/thumb/llf026.jpg', '', '', '07 October 2017, 08:34', '94 KB', 'JPG', '800 x 600 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(816, 7, '', 'lublin160', '/lublin160.jpg', '/thumb/lublin160.jpg', '', '', '19 September 2017, 05:57', '93 KB', 'JPG', '800 x 600 px', 1, 158, 1, 0, 0, 0, 0, '', 0),
(817, 7, '', 'lublin161', '/lublin161.jpg', '/thumb/lublin161.jpg', '', '', '19 September 2017, 05:57', '88 KB', 'JPG', '800 x 600 px', 1, 157, 1, 0, 0, 0, 0, '', 0),
(1047, 9, '', 'llf032', '/llf032.jpg', '/thumb/llf032.jpg', '', '', '07 October 2017, 08:34', '77 KB', 'JPG', '800 x 600 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(818, 7, '', 'lublin157', '/lublin157.jpg', '/thumb/lublin157.jpg', '', '', '19 September 2017, 05:57', '96 KB', 'JPG', '800 x 600 px', 1, 156, 1, 0, 0, 0, 0, '', 0),
(819, 7, '', 'lublin156', '/lublin156.jpg', '/thumb/lublin156.jpg', '', '', '19 September 2017, 05:57', '135 KB', 'JPG', '800 x 600 px', 1, 155, 1, 0, 0, 0, 0, '', 0),
(1046, 9, '', 'llf031', '/llf031.jpg', '/thumb/llf031.jpg', '', '', '07 October 2017, 08:34', '78 KB', 'JPG', '800 x 600 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(820, 7, '', 'lublin158', '/lublin158.jpg', '/thumb/lublin158.jpg', '', '', '19 September 2017, 05:57', '53 KB', 'JPG', '800 x 600 px', 1, 154, 1, 0, 0, 0, 0, '', 0),
(821, 7, '', 'lublin154', '/lublin154.jpg', '/thumb/lublin154.jpg', '', '', '19 September 2017, 05:57', '125 KB', 'JPG', '800 x 600 px', 1, 153, 1, 0, 0, 0, 0, '', 0),
(1045, 9, '', 'llf030', '/llf030.jpg', '/thumb/llf030.jpg', '', '', '07 October 2017, 08:34', '88 KB', 'JPG', '800 x 600 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(822, 7, '', 'lublin155', '/lublin155.jpg', '/thumb/lublin155.jpg', '', '', '19 September 2017, 05:57', '100 KB', 'JPG', '800 x 600 px', 1, 152, 1, 0, 0, 0, 0, '', 0),
(823, 7, '', 'lublin152', '/lublin152.jpg', '/thumb/lublin152.jpg', '', '', '19 September 2017, 05:57', '131 KB', 'JPG', '800 x 600 px', 1, 151, 1, 0, 0, 0, 0, '', 0),
(1044, 9, '', 'llf035', '/llf035.jpg', '/thumb/llf035.jpg', '', '', '07 October 2017, 08:34', '85 KB', 'JPG', '800 x 600 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(824, 7, '', 'lublin151', '/lublin151.jpg', '/thumb/lublin151.jpg', '', '', '19 September 2017, 05:57', '187 KB', 'JPG', '800 x 600 px', 1, 150, 1, 0, 0, 0, 0, '', 0),
(825, 7, '', 'lublin149', '/lublin149.jpg', '/thumb/lublin149.jpg', '', '', '19 September 2017, 05:57', '110 KB', 'JPG', '450 x 600 px', 1, 149, 1, 0, 0, 0, 0, '', 0),
(1043, 9, '', 'llf034', '/llf034.jpg', '/thumb/llf034.jpg', '', '', '07 October 2017, 08:34', '92 KB', 'JPG', '800 x 600 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(826, 7, '', 'lublin145', '/lublin145.jpg', '/thumb/lublin145.jpg', '', '', '19 September 2017, 05:57', '109 KB', 'JPG', '800 x 600 px', 1, 148, 1, 0, 0, 0, 0, '', 0),
(827, 7, '', 'lublin144', '/lublin144.jpg', '/thumb/lublin144.jpg', '', '', '19 September 2017, 05:57', '149 KB', 'JPG', '800 x 600 px', 1, 147, 1, 0, 0, 0, 0, '', 0),
(1042, 9, '', 'llf028', '/llf028.jpg', '/thumb/llf028.jpg', '', '', '07 October 2017, 08:34', '81 KB', 'JPG', '800 x 600 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(828, 7, '', 'lublin147', '/lublin147.jpg', '/thumb/lublin147.jpg', '', '', '19 September 2017, 05:57', '126 KB', 'JPG', '800 x 600 px', 1, 146, 1, 0, 0, 0, 0, '', 0),
(829, 7, '', 'lublin148', '/lublin148.jpg', '/thumb/lublin148.jpg', '', '', '19 September 2017, 05:57', '76 KB', 'JPG', '800 x 600 px', 1, 145, 1, 0, 0, 0, 0, '', 0),
(1041, 9, '', 'llf036', '/llf036.jpg', '/thumb/llf036.jpg', '', '', '07 October 2017, 08:34', '78 KB', 'JPG', '800 x 600 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(830, 7, '', 'lublin146', '/lublin146.jpg', '/thumb/lublin146.jpg', '', '', '19 September 2017, 05:57', '72 KB', 'JPG', '450 x 600 px', 1, 144, 1, 0, 0, 0, 0, '', 0),
(831, 7, '', 'lublin127', '/lublin127.jpg', '/thumb/lublin127.jpg', '', '', '19 September 2017, 05:57', '72 KB', 'JPG', '900 x 1200 px', 1, 143, 1, 0, 0, 0, 0, '', 0),
(1040, 9, '', 'llf033', '/llf033.jpg', '/thumb/llf033.jpg', '', '', '07 October 2017, 08:34', '83 KB', 'JPG', '800 x 600 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(832, 7, '', 'lublin143', '/lublin143.jpg', '/thumb/lublin143.jpg', '', '', '19 September 2017, 05:57', '118 KB', 'JPG', '800 x 600 px', 1, 142, 1, 0, 0, 0, 0, '', 0),
(833, 7, '', 'lublin142', '/lublin142.jpg', '/thumb/lublin142.jpg', '', '', '19 September 2017, 05:57', '112 KB', 'JPG', '800 x 600 px', 1, 141, 1, 0, 0, 0, 0, '', 0),
(1039, 9, '', 'llf038', '/llf038.jpg', '/thumb/llf038.jpg', '', '', '07 October 2017, 08:34', '88 KB', 'JPG', '800 x 600 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(834, 7, '', 'lublin141', '/lublin141.jpg', '/thumb/lublin141.jpg', '', '', '19 September 2017, 05:57', '121 KB', 'JPG', '800 x 600 px', 1, 140, 1, 0, 0, 0, 0, '', 0),
(835, 7, '', 'lublin137', '/lublin137.jpg', '/thumb/lublin137.jpg', '', '', '19 September 2017, 05:57', '128 KB', 'JPG', '800 x 600 px', 1, 139, 1, 0, 0, 0, 0, '', 0),
(1038, 9, '', 'llf039', '/llf039.jpg', '/thumb/llf039.jpg', '', '', '07 October 2017, 08:34', '142 KB', 'JPG', '800 x 600 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(836, 7, '', 'lublin138', '/lublin138.jpg', '/thumb/lublin138.jpg', '', '', '19 September 2017, 05:57', '85 KB', 'JPG', '800 x 600 px', 1, 138, 1, 0, 0, 0, 0, '', 0),
(837, 7, '', 'lublin140', '/lublin140.jpg', '/thumb/lublin140.jpg', '', '', '19 September 2017, 05:57', '76 KB', 'JPG', '800 x 600 px', 1, 137, 1, 0, 0, 0, 0, '', 0),
(1037, 9, '', 'llf043', '/llf043.jpg', '/thumb/llf043.jpg', '', '', '07 October 2017, 08:34', '101 KB', 'JPG', '800 x 600 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(838, 7, '', 'lublin139', '/lublin139.jpg', '/thumb/lublin139.jpg', '', '', '19 September 2017, 05:57', '52 KB', 'JPG', '800 x 600 px', 1, 136, 1, 0, 0, 0, 0, '', 0),
(839, 7, '', 'lublin136', '/lublin136.jpg', '/thumb/lublin136.jpg', '', '', '19 September 2017, 05:57', '138 KB', 'JPG', '800 x 600 px', 1, 135, 1, 0, 0, 0, 0, '', 0),
(1036, 9, '', 'llf041', '/llf041.jpg', '/thumb/llf041.jpg', '', '', '07 October 2017, 08:34', '139 KB', 'JPG', '800 x 600 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(840, 7, '', 'lublin135', '/lublin135.jpg', '/thumb/lublin135.jpg', '', '', '19 September 2017, 05:57', '124 KB', 'JPG', '800 x 600 px', 1, 134, 1, 0, 0, 0, 0, '', 0),
(841, 7, '', 'lublin134', '/lublin134.jpg', '/thumb/lublin134.jpg', '', '', '19 September 2017, 05:57', '110 KB', 'JPG', '800 x 600 px', 1, 133, 1, 0, 0, 0, 0, '', 0),
(1035, 9, '', 'llf040', '/llf040.jpg', '/thumb/llf040.jpg', '', '', '07 October 2017, 08:34', '111 KB', 'JPG', '800 x 600 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(842, 7, '', 'lublin132', '/lublin132.jpg', '/thumb/lublin132.jpg', '', '', '19 September 2017, 05:57', '89 KB', 'JPG', '450 x 600 px', 1, 132, 1, 0, 0, 0, 0, '', 0),
(843, 7, '', 'lublin130', '/lublin130.jpg', '/thumb/lublin130.jpg', '', '', '19 September 2017, 05:57', '163 KB', 'JPG', '800 x 600 px', 1, 131, 1, 0, 0, 0, 0, '', 0),
(1034, 9, '', 'llf042', '/llf042.jpg', '/thumb/llf042.jpg', '', '', '07 October 2017, 08:34', '59 KB', 'JPG', '800 x 600 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(844, 7, '', 'lublin129', '/lublin129.jpg', '/thumb/lublin129.jpg', '', '', '19 September 2017, 05:57', '138 KB', 'JPG', '800 x 600 px', 1, 130, 1, 0, 0, 0, 0, '', 0),
(845, 7, '', 'lublin133', '/lublin133.jpg', '/thumb/lublin133.jpg', '', '', '19 September 2017, 05:57', '65 KB', 'JPG', '800 x 600 px', 1, 129, 1, 0, 0, 0, 0, '', 0),
(1033, 9, '', 'llf037', '/llf037.jpg', '/thumb/llf037.jpg', '', '', '07 October 2017, 08:34', '93 KB', 'JPG', '800 x 600 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(846, 7, '', 'lublin131', '/lublin131.jpg', '/thumb/lublin131.jpg', '', '', '19 September 2017, 05:57', '87 KB', 'JPG', '800 x 600 px', 1, 128, 1, 0, 0, 0, 0, '', 0),
(847, 7, '', 'lublin128', '/lublin128.jpg', '/thumb/lublin128.jpg', '', '', '19 September 2017, 05:56', '136 KB', 'JPG', '800 x 600 px', 1, 127, 1, 0, 0, 0, 0, '', 0),
(1032, 9, '', 'llf044', '/llf044.jpg', '/thumb/llf044.jpg', '', '', '07 October 2017, 08:34', '118 KB', 'JPG', '800 x 600 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(848, 7, '', 'lublin121', '/lublin121.jpg', '/thumb/lublin121.jpg', '', '', '19 September 2017, 05:56', '97 KB', 'JPG', '800 x 600 px', 1, 126, 1, 0, 0, 0, 0, '', 0),
(849, 7, '', 'lublin125', '/lublin125.jpg', '/thumb/lublin125.jpg', '', '', '19 September 2017, 05:56', '79 KB', 'JPG', '800 x 600 px', 1, 125, 1, 0, 0, 0, 0, '', 0),
(1031, 9, '', 'llf046', '/llf046.jpg', '/thumb/llf046.jpg', '', '', '07 October 2017, 08:34', '112 KB', 'JPG', '800 x 600 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(850, 7, '', 'lublin126', '/lublin126.jpg', '/thumb/lublin126.jpg', '', '', '19 September 2017, 05:56', '96 KB', 'JPG', '800 x 600 px', 1, 124, 1, 0, 0, 0, 0, '', 0),
(851, 7, '', 'lublin123', '/lublin123.jpg', '/thumb/lublin123.jpg', '', '', '19 September 2017, 05:56', '87 KB', 'JPG', '800 x 600 px', 1, 123, 1, 0, 0, 0, 0, '', 0);
INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`) VALUES
(1030, 9, '', 'llf048', '/llf048.jpg', '/thumb/llf048.jpg', '', '', '07 October 2017, 08:34', '101 KB', 'JPG', '800 x 600 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(852, 7, '', 'lublin124', '/lublin124.jpg', '/thumb/lublin124.jpg', '', '', '19 September 2017, 05:56', '91 KB', 'JPG', '800 x 600 px', 1, 122, 1, 0, 0, 0, 0, '', 0),
(853, 7, '', 'lublin122', '/lublin122.jpg', '/thumb/lublin122.jpg', '', '', '19 September 2017, 05:56', '107 KB', 'JPG', '800 x 600 px', 1, 121, 1, 0, 0, 0, 0, '', 0),
(1029, 9, '', 'llf047', '/llf047.jpg', '/thumb/llf047.jpg', '', '', '07 October 2017, 08:34', '118 KB', 'JPG', '800 x 600 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(854, 7, '', 'lublin120', '/lublin120.jpg', '/thumb/lublin120.jpg', '', '', '19 September 2017, 05:56', '109 KB', 'JPG', '800 x 600 px', 1, 120, 1, 0, 0, 0, 0, '', 0),
(855, 7, '', 'lublin118', '/lublin118.jpg', '/thumb/lublin118.jpg', '', '', '19 September 2017, 05:56', '94 KB', 'JPG', '800 x 600 px', 1, 119, 1, 0, 0, 0, 0, '', 0),
(1028, 9, '', 'llf045', '/llf045.jpg', '/thumb/llf045.jpg', '', '', '07 October 2017, 08:34', '111 KB', 'JPG', '800 x 600 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(856, 7, '', 'lublin119', '/lublin119.jpg', '/thumb/lublin119.jpg', '', '', '19 September 2017, 05:56', '112 KB', 'JPG', '800 x 600 px', 1, 118, 1, 0, 0, 0, 0, '', 0),
(857, 7, '', 'lublin115', '/lublin115.jpg', '/thumb/lublin115.jpg', '', '', '19 September 2017, 05:56', '54 KB', 'JPG', '450 x 600 px', 1, 117, 1, 0, 0, 0, 0, '', 0),
(1027, 9, '', 'llf049', '/llf049.jpg', '/thumb/llf049.jpg', '', '', '07 October 2017, 08:34', '111 KB', 'JPG', '800 x 600 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(858, 7, '', 'lublin110', '/lublin110.jpg', '/thumb/lublin110.jpg', '', '', '19 September 2017, 05:56', '176 KB', 'jpg', '800 x 600 px', 1, 116, 1, 0, 0, 0, 0, '', 0),
(859, 7, '', 'lublin116', '/lublin116.jpg', '/thumb/lublin116.jpg', '', '', '19 September 2017, 05:56', '74 KB', 'jpg', '800 x 600 px', 1, 115, 1, 0, 0, 0, 0, '', 0),
(1026, 9, '', 'llf052', '/llf052.jpg', '/thumb/llf052.jpg', '', '', '07 October 2017, 08:34', '118 KB', 'JPG', '800 x 600 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(860, 7, '', 'lublin117', '/lublin117.jpg', '/thumb/lublin117.jpg', '', '', '19 September 2017, 05:56', '62 KB', 'jpg', '800 x 600 px', 1, 114, 1, 0, 0, 0, 0, '', 0),
(861, 7, '', 'lublin114', '/lublin114.jpg', '/thumb/lublin114.jpg', '', '', '19 September 2017, 05:56', '57 KB', 'jpg', '800 x 600 px', 1, 113, 1, 0, 0, 0, 0, '', 0),
(1025, 9, '', 'llf053', '/llf053.jpg', '/thumb/llf053.jpg', '', '', '07 October 2017, 08:34', '117 KB', 'JPG', '800 x 600 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(862, 7, '', 'lublin111', '/lublin111.jpg', '/thumb/lublin111.jpg', '', '', '19 September 2017, 05:56', '166 KB', 'jpg', '800 x 600 px', 1, 112, 1, 0, 0, 0, 0, '', 0),
(863, 7, '', 'lublin113', '/lublin113.jpg', '/thumb/lublin113.jpg', '', '', '19 September 2017, 05:56', '37 KB', 'jpg', '450 x 600 px', 1, 111, 1, 0, 0, 0, 0, '', 0),
(1024, 9, '', 'llf054', '/llf054.jpg', '/thumb/llf054.jpg', '', '', '07 October 2017, 08:34', '104 KB', 'JPG', '800 x 600 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(864, 7, '', 'lublin108', '/lublin108.jpg', '/thumb/lublin108.jpg', '', '', '19 September 2017, 05:56', '200 KB', 'jpg', '800 x 600 px', 1, 110, 1, 0, 0, 0, 0, '', 0),
(865, 7, '', 'lublin107', '/lublin107.jpg', '/thumb/lublin107.jpg', '', '', '19 September 2017, 05:56', '187 KB', 'jpg', '800 x 600 px', 1, 109, 1, 0, 0, 0, 0, '', 0),
(1023, 9, '', 'llf055', '/llf055.jpg', '/thumb/llf055.jpg', '', '', '07 October 2017, 08:34', '95 KB', 'JPG', '800 x 600 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(866, 7, '', 'lublin112', '/lublin112.jpg', '/thumb/lublin112.jpg', '', '', '19 September 2017, 05:56', '63 KB', 'jpg', '800 x 600 px', 1, 108, 1, 0, 0, 0, 0, '', 0),
(867, 7, '', 'lublin106', '/lublin106.jpg', '/thumb/lublin106.jpg', '', '', '19 September 2017, 05:56', '194 KB', 'jpg', '800 x 600 px', 1, 107, 1, 0, 0, 0, 0, '', 0),
(1022, 9, '', 'llf051', '/llf051.jpg', '/thumb/llf051.jpg', '', '', '07 October 2017, 08:34', '103 KB', 'JPG', '800 x 600 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(868, 7, '', 'lublin109', '/lublin109.jpg', '/thumb/lublin109.jpg', '', '', '19 September 2017, 05:56', '98 KB', 'jpg', '800 x 600 px', 1, 106, 1, 0, 0, 0, 0, '', 0),
(869, 7, '', 'lublin105', '/lublin105.jpg', '/thumb/lublin105.jpg', '', '', '19 September 2017, 05:56', '132 KB', 'jpg', '800 x 600 px', 1, 105, 1, 0, 0, 0, 0, '', 0),
(1021, 9, '', 'llf050', '/llf050.jpg', '/thumb/llf050.jpg', '', '', '07 October 2017, 08:34', '115 KB', 'JPG', '800 x 600 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(870, 7, '', 'lublin104', '/lublin104.jpg', '/thumb/lublin104.jpg', '', '', '19 September 2017, 05:56', '102 KB', 'jpg', '800 x 600 px', 1, 104, 1, 0, 0, 0, 0, '', 0),
(871, 7, '', 'lublin103', '/lublin103.jpg', '/thumb/lublin103.jpg', '', '', '19 September 2017, 05:56', '124 KB', 'jpg', '800 x 600 px', 1, 103, 1, 0, 0, 0, 0, '', 0),
(1020, 9, '', 'llf056', '/llf056.jpg', '/thumb/llf056.jpg', '', '', '07 October 2017, 08:34', '151 KB', 'JPG', '800 x 600 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(872, 7, '', 'lublin097', '/lublin097.jpg', '/thumb/lublin097.jpg', '', '', '19 September 2017, 05:56', '113 KB', 'jpg', '800 x 600 px', 1, 102, 1, 0, 0, 0, 0, '', 0),
(873, 7, '', 'lublin100', '/lublin100.jpg', '/thumb/lublin100.jpg', '', '', '19 September 2017, 05:56', '93 KB', 'jpg', '800 x 600 px', 1, 101, 1, 0, 0, 0, 0, '', 0),
(1019, 9, '', 'llf058', '/llf058.jpg', '/thumb/llf058.jpg', '', '', '07 October 2017, 08:34', '151 KB', 'JPG', '800 x 600 px', 1, 57, 1, 0, 0, 0, 0, '', 0),
(874, 7, '', 'lublin101', '/lublin101.jpg', '/thumb/lublin101.jpg', '', '', '19 September 2017, 05:56', '105 KB', 'jpg', '800 x 600 px', 1, 100, 1, 0, 0, 0, 0, '', 0),
(875, 7, '', 'lublin102', '/lublin102.jpg', '/thumb/lublin102.jpg', '', '', '19 September 2017, 05:56', '113 KB', 'jpg', '800 x 600 px', 1, 99, 1, 0, 0, 0, 0, '', 0),
(1018, 9, '', 'llf057', '/llf057.jpg', '/thumb/llf057.jpg', '', '', '07 October 2017, 08:34', '155 KB', 'JPG', '800 x 600 px', 1, 58, 1, 0, 0, 0, 0, '', 0),
(876, 7, '', 'lublin098', '/lublin098.jpg', '/thumb/lublin098.jpg', '', '', '19 September 2017, 05:56', '112 KB', 'jpg', '800 x 600 px', 1, 98, 1, 0, 0, 0, 0, '', 0),
(877, 7, '', 'lublin099', '/lublin099.jpg', '/thumb/lublin099.jpg', '', '', '19 September 2017, 05:56', '99 KB', 'jpg', '800 x 600 px', 1, 97, 1, 0, 0, 0, 0, '', 0),
(1017, 9, '', 'llf060', '/llf060.jpg', '/thumb/llf060.jpg', '', '', '07 October 2017, 08:34', '113 KB', 'JPG', '800 x 600 px', 1, 59, 1, 0, 0, 0, 0, '', 0),
(878, 7, '', 'lublin093', '/lublin093.jpg', '/thumb/lublin093.jpg', '', '', '19 September 2017, 05:56', '125 KB', 'jpg', '800 x 600 px', 1, 96, 1, 0, 0, 0, 0, '', 0),
(879, 7, '', 'lublin096', '/lublin096.jpg', '/thumb/lublin096.jpg', '', '', '19 September 2017, 05:56', '143 KB', 'jpg', '800 x 600 px', 1, 95, 1, 0, 0, 0, 0, '', 0),
(1016, 9, '', 'llf062', '/llf062.jpg', '/thumb/llf062.jpg', '', '', '07 October 2017, 08:34', '126 KB', 'JPG', '800 x 600 px', 1, 60, 1, 0, 0, 0, 0, '', 0),
(880, 7, '', 'lublin091', '/lublin091.jpg', '/thumb/lublin091.jpg', '', '', '19 September 2017, 05:56', '121 KB', 'jpg', '800 x 600 px', 1, 94, 1, 0, 0, 0, 0, '', 0),
(881, 7, '', 'lublin095', '/lublin095.jpg', '/thumb/lublin095.jpg', '', '', '19 September 2017, 05:56', '154 KB', 'jpg', '800 x 600 px', 1, 93, 1, 0, 0, 0, 0, '', 0),
(1015, 9, '', 'llf061', '/llf061.jpg', '/thumb/llf061.jpg', '', '', '07 October 2017, 08:34', '132 KB', 'JPG', '800 x 600 px', 1, 61, 1, 0, 0, 0, 0, '', 0),
(882, 7, '', 'lublin094', '/lublin094.jpg', '/thumb/lublin094.jpg', '', '', '19 September 2017, 05:56', '85 KB', 'jpg', '450 x 600 px', 1, 92, 1, 0, 0, 0, 0, '', 0),
(883, 7, '', 'lublin092', '/lublin092.jpg', '/thumb/lublin092.jpg', '', '', '19 September 2017, 05:56', '142 KB', 'jpg', '800 x 600 px', 1, 91, 1, 0, 0, 0, 0, '', 0),
(1014, 9, '', 'llf069', '/llf069.jpg', '/thumb/llf069.jpg', '', '', '07 October 2017, 08:35', '44 KB', 'JPG', '800 x 600 px', 1, 62, 1, 0, 0, 0, 0, '', 0),
(884, 7, '', 'lublin090', '/lublin090.jpg', '/thumb/lublin090.jpg', '', '', '19 September 2017, 05:56', '93 KB', 'jpg', '800 x 600 px', 1, 90, 1, 0, 0, 0, 0, '', 0),
(885, 7, '', 'lublin085', '/lublin085.jpg', '/thumb/lublin085.jpg', '', '', '19 September 2017, 05:56', '146 KB', 'jpg', '800 x 600 px', 1, 89, 1, 0, 0, 0, 0, '', 0),
(1013, 9, '', 'llf065', '/llf065.jpg', '/thumb/llf065.jpg', '', '', '07 October 2017, 08:34', '114 KB', 'JPG', '800 x 600 px', 1, 63, 1, 0, 0, 0, 0, '', 0),
(886, 7, '', 'lublin086', '/lublin086.jpg', '/thumb/lublin086.jpg', '', '', '19 September 2017, 05:55', '161 KB', 'jpg', '800 x 600 px', 1, 88, 1, 0, 0, 0, 0, '', 0),
(887, 7, '', 'lublin089', '/lublin089.jpg', '/thumb/lublin089.jpg', '', '', '19 September 2017, 05:55', '110 KB', 'jpg', '800 x 600 px', 1, 87, 1, 0, 0, 0, 0, '', 0),
(1012, 9, '', 'llf067', '/llf067.jpg', '/thumb/llf067.jpg', '', '', '07 October 2017, 08:34', '66 KB', 'JPG', '450 x 600 px', 1, 64, 1, 0, 0, 0, 0, '', 0),
(888, 7, '', 'lublin088', '/lublin088.jpg', '/thumb/lublin088.jpg', '', '', '19 September 2017, 05:55', '110 KB', 'jpg', '800 x 600 px', 1, 86, 1, 0, 0, 0, 0, '', 0),
(889, 7, '', 'lublin083', '/lublin083.jpg', '/thumb/lublin083.jpg', '', '', '19 September 2017, 05:55', '137 KB', 'jpg', '800 x 600 px', 1, 85, 1, 0, 0, 0, 0, '', 0),
(1011, 9, '', 'llf059', '/llf059.jpg', '/thumb/llf059.jpg', '', '', '07 October 2017, 08:34', '164 KB', 'JPG', '800 x 600 px', 1, 65, 1, 0, 0, 0, 0, '', 0),
(890, 7, '', 'lublin087', '/lublin087.jpg', '/thumb/lublin087.jpg', '', '', '19 September 2017, 05:55', '127 KB', 'jpg', '800 x 600 px', 1, 84, 1, 0, 0, 0, 0, '', 0),
(891, 7, '', 'lublin081', '/lublin081.jpg', '/thumb/lublin081.jpg', '', '', '19 September 2017, 05:55', '101 KB', 'jpg', '800 x 600 px', 1, 83, 1, 0, 0, 0, 0, '', 0),
(1010, 9, '', 'llf063', '/llf063.jpg', '/thumb/llf063.jpg', '', '', '07 October 2017, 08:34', '103 KB', 'JPG', '800 x 600 px', 1, 66, 1, 0, 0, 0, 0, '', 0),
(892, 7, '', 'lublin082', '/lublin082.jpg', '/thumb/lublin082.jpg', '', '', '19 September 2017, 05:55', '120 KB', 'jpg', '800 x 600 px', 1, 82, 1, 0, 0, 0, 0, '', 0),
(893, 7, '', 'lublin084', '/lublin084.jpg', '/thumb/lublin084.jpg', '', '', '19 September 2017, 05:55', '57 KB', 'jpg', '450 x 600 px', 1, 81, 1, 0, 0, 0, 0, '', 0),
(1009, 9, '', 'llf064', '/llf064.jpg', '/thumb/llf064.jpg', '', '', '07 October 2017, 08:34', '87 KB', 'JPG', '800 x 600 px', 1, 67, 1, 0, 0, 0, 0, '', 0),
(894, 7, '', 'lublin079', '/lublin079.jpg', '/thumb/lublin079.jpg', '', '', '19 September 2017, 05:55', '121 KB', 'jpg', '800 x 600 px', 1, 80, 1, 0, 0, 0, 0, '', 0),
(895, 7, '', 'lublin073', '/lublin073.jpg', '/thumb/lublin073.jpg', '', '', '19 September 2017, 05:55', '126 KB', 'jpg', '800 x 600 px', 1, 79, 1, 0, 0, 0, 0, '', 0),
(1008, 9, '', 'llf066', '/llf066.jpg', '/thumb/llf066.jpg', '', '', '07 October 2017, 08:35', '93 KB', 'JPG', '800 x 600 px', 1, 68, 1, 0, 0, 0, 0, '', 0),
(896, 7, '', 'lublin078', '/lublin078.jpg', '/thumb/lublin078.jpg', '', '', '19 September 2017, 05:55', '99 KB', 'jpg', '800 x 600 px', 1, 78, 1, 0, 0, 0, 0, '', 0),
(897, 7, '', 'lublin080', '/lublin080.jpg', '/thumb/lublin080.jpg', '', '', '19 September 2017, 05:55', '87 KB', 'jpg', '800 x 600 px', 1, 77, 1, 0, 0, 0, 0, '', 0),
(1007, 9, '', 'llf068', '/llf068.jpg', '/thumb/llf068.jpg', '', '', '07 October 2017, 08:35', '75 KB', 'JPG', '450 x 600 px', 1, 69, 1, 0, 0, 0, 0, '', 0),
(898, 7, '', 'lublin075', '/lublin075.jpg', '/thumb/lublin075.jpg', '', '', '19 September 2017, 05:55', '128 KB', 'jpg', '800 x 600 px', 1, 76, 1, 0, 0, 0, 0, '', 0),
(899, 7, '', 'lublin076', '/lublin076.jpg', '/thumb/lublin076.jpg', '', '', '19 September 2017, 05:55', '127 KB', 'jpg', '800 x 600 px', 1, 75, 1, 0, 0, 0, 0, '', 0),
(1006, 9, '', 'llf070', '/llf070.jpg', '/thumb/llf070.jpg', '', '', '07 October 2017, 08:35', '106 KB', 'JPG', '800 x 600 px', 1, 70, 1, 0, 0, 0, 0, '', 0),
(900, 7, '', 'lublin077', '/lublin077.jpg', '/thumb/lublin077.jpg', '', '', '19 September 2017, 05:55', '92 KB', 'jpg', '450 x 600 px', 1, 74, 1, 0, 0, 0, 0, '', 0),
(901, 7, '', 'lublin071', '/lublin071.jpg', '/thumb/lublin071.jpg', '', '', '19 September 2017, 05:55', '106 KB', 'jpg', '800 x 600 px', 1, 73, 1, 0, 0, 0, 0, '', 0),
(1005, 9, '', 'llf071', '/llf071.jpg', '/thumb/llf071.jpg', '', '', '07 October 2017, 08:35', '124 KB', 'JPG', '800 x 600 px', 1, 71, 1, 0, 0, 0, 0, '', 0),
(902, 7, '', 'lublin074', '/lublin074.jpg', '/thumb/lublin074.jpg', '', '', '19 September 2017, 05:55', '98 KB', 'jpg', '800 x 600 px', 1, 72, 1, 0, 0, 0, 0, '', 0),
(903, 7, '', 'lublin072', '/lublin072.jpg', '/thumb/lublin072.jpg', '', '', '19 September 2017, 05:55', '84 KB', 'jpg', '800 x 600 px', 1, 71, 1, 0, 0, 0, 0, '', 0),
(904, 7, '', 'lublin070', '/lublin070.jpg', '/thumb/lublin070.jpg', '', '', '19 September 2017, 05:55', '94 KB', 'jpg', '800 x 600 px', 1, 70, 1, 0, 0, 0, 0, '', 0),
(1004, 9, '', 'llf072', '/llf072.jpg', '/thumb/llf072.jpg', '', '', '07 October 2017, 08:35', '87 KB', 'JPG', '450 x 600 px', 1, 72, 1, 0, 0, 0, 0, '', 0),
(905, 7, '', 'lublin065', '/lublin065.jpg', '/thumb/lublin065.jpg', '', '', '19 September 2017, 05:55', '118 KB', 'jpg', '800 x 600 px', 1, 69, 1, 0, 0, 0, 0, '', 0),
(906, 7, '', 'lublin067', '/lublin067.jpg', '/thumb/lublin067.jpg', '', '', '19 September 2017, 05:55', '90 KB', 'jpg', '800 x 600 px', 1, 68, 1, 0, 0, 0, 0, '', 0),
(1003, 9, '', 'llf073', '/llf073.jpg', '/thumb/llf073.jpg', '', '', '07 October 2017, 08:35', '111 KB', 'JPG', '800 x 600 px', 1, 73, 1, 0, 0, 0, 0, '', 0),
(907, 7, '', 'lublin066', '/lublin066.jpg', '/thumb/lublin066.jpg', '', '', '19 September 2017, 05:55', '109 KB', 'jpg', '800 x 600 px', 1, 67, 1, 0, 0, 0, 0, '', 0),
(908, 7, '', 'lublin068', '/lublin068.jpg', '/thumb/lublin068.jpg', '', '', '19 September 2017, 05:55', '89 KB', 'jpg', '800 x 600 px', 1, 66, 1, 0, 0, 0, 0, '', 0),
(909, 7, '', 'lublin063', '/lublin063.jpg', '/thumb/lublin063.jpg', '', '', '19 September 2017, 05:55', '105 KB', 'jpg', '800 x 600 px', 1, 65, 1, 0, 0, 0, 0, '', 0),
(1002, 8, '', 'polcon001', '/polcon001.jpg', '/thumb/polcon001.jpg', '', '', '19 September 2017, 05:59', '172 KB', 'JPG', '800 x 600 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(910, 7, '', 'lublin069', '/lublin069.jpg', '/thumb/lublin069.jpg', '', '', '19 September 2017, 05:55', '61 KB', 'jpg', '450 x 600 px', 1, 64, 1, 0, 0, 0, 0, '', 0),
(911, 7, '', 'lublin062', '/lublin062.jpg', '/thumb/lublin062.jpg', '', '', '19 September 2017, 05:55', '92 KB', 'jpg', '800 x 600 px', 1, 63, 1, 0, 0, 0, 0, '', 0),
(1001, 8, '', 'polcon003', '/polcon003.jpg', '/thumb/polcon003.jpg', '', '', '19 September 2017, 05:59', '144 KB', 'JPG', '800 x 600 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(912, 7, '', 'lublin064', '/lublin064.jpg', '/thumb/lublin064.jpg', '', '', '19 September 2017, 05:55', '38 KB', 'jpg', '450 x 600 px', 1, 62, 1, 0, 0, 0, 0, '', 0),
(913, 7, '', 'lublin058', '/lublin058.jpg', '/thumb/lublin058.jpg', '', '', '19 September 2017, 05:55', '134 KB', 'jpg', '800 x 600 px', 1, 61, 1, 0, 0, 0, 0, '', 0),
(1000, 8, '', 'polcon002', '/polcon002.jpg', '/thumb/polcon002.jpg', '', '', '19 September 2017, 05:59', '153 KB', 'JPG', '800 x 600 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(914, 7, '', 'lublin061', '/lublin061.jpg', '/thumb/lublin061.jpg', '', '', '19 September 2017, 05:55', '134 KB', 'jpg', '800 x 600 px', 1, 60, 1, 0, 0, 0, 0, '', 0),
(915, 7, '', 'lublin060', '/lublin060.jpg', '/thumb/lublin060.jpg', '', '', '19 September 2017, 05:55', '109 KB', 'jpg', '800 x 600 px', 1, 59, 1, 0, 0, 0, 0, '', 0),
(916, 7, '', 'lublin056', '/lublin056.jpg', '/thumb/lublin056.jpg', '', '', '19 September 2017, 05:55', '141 KB', 'jpg', '800 x 600 px', 1, 58, 1, 0, 0, 0, 0, '', 0),
(999, 8, '', 'polcon004', '/polcon004.jpg', '/thumb/polcon004.jpg', '', '', '19 September 2017, 05:59', '142 KB', 'JPG', '800 x 600 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(917, 7, '', 'lublin059', '/lublin059.jpg', '/thumb/lublin059.jpg', '', '', '19 September 2017, 05:55', '90 KB', 'jpg', '800 x 600 px', 1, 57, 1, 0, 0, 0, 0, '', 0),
(918, 7, '', 'lublin055', '/lublin055.jpg', '/thumb/lublin055.jpg', '', '', '19 September 2017, 05:55', '130 KB', 'jpg', '800 x 600 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(998, 8, '', 'polcon007', '/polcon007.jpg', '/thumb/polcon007.jpg', '', '', '19 September 2017, 05:59', '167 KB', 'JPG', '800 x 600 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(919, 7, '', 'lublin057', '/lublin057.jpg', '/thumb/lublin057.jpg', '', '', '19 September 2017, 05:55', '114 KB', 'jpg', '800 x 600 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(920, 7, '', 'lublin053', '/lublin053.jpg', '/thumb/lublin053.jpg', '', '', '19 September 2017, 05:55', '129 KB', 'jpg', '800 x 600 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(921, 7, '', 'lublin054', '/lublin054.jpg', '/thumb/lublin054.jpg', '', '', '19 September 2017, 05:55', '91 KB', 'jpg', '800 x 600 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(997, 8, '', 'polcon006', '/polcon006.jpg', '/thumb/polcon006.jpg', '', '', '19 September 2017, 05:59', '125 KB', 'JPG', '450 x 600 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(922, 7, '', 'lublin052', '/lublin052.jpg', '/thumb/lublin052.jpg', '', '', '19 September 2017, 05:55', '95 KB', 'jpg', '800 x 600 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(923, 7, '', 'lublin051', '/lublin051.jpg', '/thumb/lublin051.jpg', '', '', '19 September 2017, 05:55', '132 KB', 'jpg', '800 x 600 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(996, 8, '', 'polcon009', '/polcon009.jpg', '/thumb/polcon009.jpg', '', '', '19 September 2017, 05:59', '122 KB', 'JPG', '800 x 600 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(924, 7, '', 'lublin046', '/lublin046.jpg', '/thumb/lublin046.jpg', '', '', '19 September 2017, 05:55', '120 KB', 'jpg', '800 x 600 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(925, 7, '', 'lublin048', '/lublin048.jpg', '/thumb/lublin048.jpg', '', '', '19 September 2017, 05:55', '161 KB', 'jpg', '800 x 600 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(926, 7, '', 'lublin049', '/lublin049.jpg', '/thumb/lublin049.jpg', '', '', '19 September 2017, 05:55', '113 KB', 'jpg', '800 x 600 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(995, 8, '', 'polcon005', '/polcon005.jpg', '/thumb/polcon005.jpg', '', '', '19 September 2017, 05:59', '143 KB', 'JPG', '800 x 600 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(927, 7, '', 'lublin047', '/lublin047.jpg', '/thumb/lublin047.jpg', '', '', '19 September 2017, 05:55', '126 KB', 'jpg', '800 x 600 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(928, 7, '', 'lublin050', '/lublin050.jpg', '/thumb/lublin050.jpg', '', '', '19 September 2017, 05:55', '98 KB', 'jpg', '800 x 600 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(994, 8, '', 'polcon008', '/polcon008.jpg', '/thumb/polcon008.jpg', '', '', '19 September 2017, 05:59', '149 KB', 'JPG', '800 x 600 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(929, 7, '', 'lublin044', '/lublin044.jpg', '/thumb/lublin044.jpg', '', '', '19 September 2017, 05:55', '130 KB', 'jpg', '800 x 600 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(930, 7, '', 'lublin043', '/lublin043.jpg', '/thumb/lublin043.jpg', '', '', '19 September 2017, 05:54', '139 KB', 'jpg', '450 x 600 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(993, 8, '', 'polcon010', '/polcon010.jpg', '/thumb/polcon010.jpg', '', '', '19 September 2017, 05:59', '147 KB', 'JPG', '800 x 600 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(931, 7, '', 'lublin045', '/lublin045.jpg', '/thumb/lublin045.jpg', '', '', '19 September 2017, 05:54', '141 KB', 'jpg', '800 x 600 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(932, 7, '', 'lublin040', '/lublin040.jpg', '/thumb/lublin040.jpg', '', '', '19 September 2017, 05:54', '118 KB', 'jpg', '800 x 600 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(992, 8, '', 'polcon011', '/polcon011.jpg', '/thumb/polcon011.jpg', '', '', '19 September 2017, 05:59', '137 KB', 'JPG', '800 x 600 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(933, 7, '', 'lublin041', '/lublin041.jpg', '/thumb/lublin041.jpg', '', '', '19 September 2017, 05:54', '109 KB', 'jpg', '800 x 600 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(934, 7, '', 'lublin039', '/lublin039.jpg', '/thumb/lublin039.jpg', '', '', '19 September 2017, 05:54', '126 KB', 'jpg', '800 x 600 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(935, 7, '', 'lublin042', '/lublin042.jpg', '/thumb/lublin042.jpg', '', '', '19 September 2017, 05:54', '54 KB', 'jpg', '450 x 600 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(991, 8, '', 'polcon016', '/polcon016.jpg', '/thumb/polcon016.jpg', '', '', '19 September 2017, 05:59', '63 KB', 'JPG', '800 x 600 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(936, 7, '', 'lublin038', '/lublin038.jpg', '/thumb/lublin038.jpg', '', '', '19 September 2017, 05:54', '137 KB', 'jpg', '800 x 600 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(937, 7, '', 'lublin036', '/lublin036.jpg', '/thumb/lublin036.jpg', '', '', '19 September 2017, 05:54', '96 KB', 'jpg', '800 x 600 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(990, 8, '', 'polcon013', '/polcon013.jpg', '/thumb/polcon013.jpg', '', '', '19 September 2017, 05:59', '121 KB', 'JPG', '800 x 600 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(938, 7, '', 'lublin037', '/lublin037.jpg', '/thumb/lublin037.jpg', '', '', '19 September 2017, 05:54', '41 KB', 'jpg', '800 x 600 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(939, 7, '', 'lublin030', '/lublin030.jpg', '/thumb/lublin030.jpg', '', '', '19 September 2017, 05:54', '124 KB', 'jpg', '800 x 600 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(989, 8, '', 'polcon015', '/polcon015.jpg', '/thumb/polcon015.jpg', '', '', '19 September 2017, 05:59', '129 KB', 'JPG', '800 x 600 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(940, 7, '', 'lublin034', '/lublin034.jpg', '/thumb/lublin034.jpg', '', '', '19 September 2017, 05:54', '132 KB', 'jpg', '800 x 600 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(941, 7, '', 'lublin032', '/lublin032.jpg', '/thumb/lublin032.jpg', '', '', '19 September 2017, 05:54', '120 KB', 'jpg', '450 x 600 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(942, 7, '', 'lublin031', '/lublin031.jpg', '/thumb/lublin031.jpg', '', '', '19 September 2017, 05:54', '113 KB', 'jpg', '800 x 600 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(988, 8, '', 'polcon019', '/polcon019.jpg', '/thumb/polcon019.jpg', '', '', '19 September 2017, 05:59', '36 KB', 'JPG', '450 x 600 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(943, 7, '', 'lublin035', '/lublin035.jpg', '/thumb/lublin035.jpg', '', '', '19 September 2017, 05:54', '76 KB', 'jpg', '800 x 600 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(944, 7, '', 'lublin027', '/lublin027.jpg', '/thumb/lublin027.jpg', '', '', '19 September 2017, 05:54', '184 KB', 'jpg', '800 x 600 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(987, 8, '', 'polcon018', '/polcon018.jpg', '/thumb/polcon018.jpg', '', '', '19 September 2017, 05:59', '56 KB', 'JPG', '800 x 600 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(945, 7, '', 'lublin033', '/lublin033.jpg', '/thumb/lublin033.jpg', '', '', '19 September 2017, 05:54', '104 KB', 'jpg', '800 x 600 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(946, 7, '', 'lublin029', '/lublin029.jpg', '/thumb/lublin029.jpg', '', '', '19 September 2017, 05:54', '150 KB', 'jpg', '800 x 600 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(986, 8, '', 'polcon017', '/polcon017.jpg', '/thumb/polcon017.jpg', '', '', '19 September 2017, 05:59', '61 KB', 'JPG', '800 x 600 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(947, 7, '', 'lublin028', '/lublin028.jpg', '/thumb/lublin028.jpg', '', '', '19 September 2017, 05:54', '149 KB', 'jpg', '800 x 600 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(948, 7, '', 'lublin026', '/lublin026.jpg', '/thumb/lublin026.jpg', '', '', '19 September 2017, 05:54', '103 KB', 'jpg', '450 x 600 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(985, 8, '', 'polcon014', '/polcon014.jpg', '/thumb/polcon014.jpg', '', '', '19 September 2017, 05:59', '135 KB', 'JPG', '800 x 600 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(949, 7, '', 'lublin022', '/lublin022.jpg', '/thumb/lublin022.jpg', '', '', '19 September 2017, 05:54', '158 KB', 'jpg', '800 x 600 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(950, 7, '', 'lublin024', '/lublin024.jpg', '/thumb/lublin024.jpg', '', '', '19 September 2017, 05:54', '191 KB', 'jpg', '800 x 600 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(984, 8, '', 'polcon021', '/polcon021.jpg', '/thumb/polcon021.jpg', '', '', '19 September 2017, 05:59', '51 KB', 'JPG', '800 x 600 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(951, 7, '', 'lublin025', '/lublin025.jpg', '/thumb/lublin025.jpg', '', '', '19 September 2017, 05:54', '141 KB', 'jpg', '800 x 600 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(952, 7, '', 'lublin023', '/lublin023.jpg', '/thumb/lublin023.jpg', '', '', '19 September 2017, 05:54', '141 KB', 'jpg', '800 x 600 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(983, 8, '', 'polcon020', '/polcon020.jpg', '/thumb/polcon020.jpg', '', '', '19 September 2017, 05:59', '54 KB', 'JPG', '800 x 600 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(953, 7, '', 'lublin021', '/lublin021.jpg', '/thumb/lublin021.jpg', '', '', '19 September 2017, 05:54', '117 KB', 'jpg', '800 x 600 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(954, 7, '', 'lublin018', '/lublin018.jpg', '/thumb/lublin018.jpg', '', '', '19 September 2017, 05:54', '232 KB', 'jpg', '800 x 600 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(982, 8, '', 'polcon022', '/polcon022.jpg', '/thumb/polcon022.jpg', '', '', '19 September 2017, 05:59', '45 KB', 'JPG', '800 x 600 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(955, 7, '', 'lublin020', '/lublin020.jpg', '/thumb/lublin020.jpg', '', '', '19 September 2017, 05:54', '159 KB', 'jpg', '800 x 600 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(956, 7, '', 'lublin019', '/lublin019.jpg', '/thumb/lublin019.jpg', '', '', '19 September 2017, 05:54', '114 KB', 'jpg', '800 x 600 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(981, 8, '', 'polcon023', '/polcon023.jpg', '/thumb/polcon023.jpg', '', '', '19 September 2017, 05:59', '48 KB', 'JPG', '800 x 600 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(957, 7, '', 'lublin014', '/lublin014.jpg', '/thumb/lublin014.jpg', '', '', '19 September 2017, 05:54', '190 KB', 'jpg', '800 x 600 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(958, 7, '', 'lublin017', '/lublin017.jpg', '/thumb/lublin017.jpg', '', '', '19 September 2017, 05:54', '153 KB', 'jpg', '450 x 600 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(980, 8, '', 'polcon025', '/polcon025.jpg', '/thumb/polcon025.jpg', '', '', '19 September 2017, 05:59', '69 KB', 'JPG', '800 x 600 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(959, 7, '', 'lublin010', '/lublin010.jpg', '/thumb/lublin010.jpg', '', '', '19 September 2017, 05:54', '198 KB', 'jpg', '800 x 600 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(960, 7, '', 'lublin016', '/lublin016.jpg', '/thumb/lublin016.jpg', '', '', '19 September 2017, 05:54', '180 KB', 'jpg', '800 x 600 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(979, 8, '', 'polcon027', '/polcon027.jpg', '/thumb/polcon027.jpg', '', '', '19 September 2017, 05:59', '67 KB', 'JPG', '800 x 600 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(961, 7, '', 'lublin011', '/lublin011.jpg', '/thumb/lublin011.jpg', '', '', '19 September 2017, 05:54', '162 KB', 'jpg', '800 x 600 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(962, 7, '', 'lublin015', '/lublin015.jpg', '/thumb/lublin015.jpg', '', '', '19 September 2017, 05:54', '147 KB', 'jpg', '800 x 600 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(978, 8, '', 'polcon024', '/polcon024.jpg', '/thumb/polcon024.jpg', '', '', '19 September 2017, 05:59', '60 KB', 'JPG', '800 x 600 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(963, 7, '', 'lublin013', '/lublin013.jpg', '/thumb/lublin013.jpg', '', '', '19 September 2017, 05:54', '190 KB', 'jpg', '800 x 600 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(964, 7, '', 'lublin012', '/lublin012.jpg', '/thumb/lublin012.jpg', '', '', '19 September 2017, 05:54', '156 KB', 'jpg', '800 x 600 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(965, 7, '', 'lublin005', '/lublin005.jpg', '/thumb/lublin005.jpg', '', '', '19 September 2017, 05:54', '112 KB', 'jpg', '800 x 600 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(977, 8, '', 'polcon012', '/polcon012.jpg', '/thumb/polcon012.jpg', '', '', '19 September 2017, 05:59', '160 KB', 'JPG', '800 x 600 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(966, 7, '', 'lublin002', '/lublin002.jpg', '/thumb/lublin002.jpg', '', '', '19 September 2017, 05:54', '129 KB', 'jpg', '800 x 600 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(967, 7, '', 'lublin009', '/lublin009.jpg', '/thumb/lublin009.jpg', '', '', '19 September 2017, 05:53', '89 KB', 'jpg', '800 x 600 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(976, 8, '', 'polcon029', '/polcon029.jpg', '/thumb/polcon029.jpg', '', '', '19 September 2017, 05:59', '51 KB', 'JPG', '800 x 600 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(968, 7, '', 'lublin008', '/lublin008.jpg', '/thumb/lublin008.jpg', '', '', '19 September 2017, 05:53', '132 KB', 'jpg', '800 x 600 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(969, 7, '', 'lublin003', '/lublin003.jpg', '/thumb/lublin003.jpg', '', '', '19 September 2017, 05:53', '111 KB', 'jpg', '800 x 600 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(975, 8, '', 'polcon026', '/polcon026.jpg', '/thumb/polcon026.jpg', '', '', '19 September 2017, 05:59', '68 KB', 'JPG', '800 x 600 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(970, 7, '', 'lublin004', '/lublin004.jpg', '/thumb/lublin004.jpg', '', '', '19 September 2017, 05:53', '92 KB', 'jpg', '800 x 600 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(971, 7, '', 'lublin001', '/lublin001.jpg', '/thumb/lublin001.jpg', '', '', '19 September 2017, 05:53', '128 KB', 'jpg', '800 x 600 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(974, 8, '', 'polcon028', '/polcon028.jpg', '/thumb/polcon028.jpg', '', '', '19 September 2017, 05:59', '59 KB', 'JPG', '800 x 600 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(972, 7, '', 'lublin007', '/lublin007.jpg', '/thumb/lublin007.jpg', '', '', '19 September 2017, 05:53', '93 KB', 'jpg', '450 x 600 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(973, 7, '', 'lublin006', '/lublin006.jpg', '/thumb/lublin006.jpg', '', '', '19 September 2017, 05:53', '107 KB', 'jpg', '800 x 600 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(1063, 9, '', 'llf009', '/llf009.jpg', '/thumb/llf009.jpg', '', '', '07 October 2017, 08:33', '129 KB', 'JPG', '800 x 600 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(1064, 9, '', 'llf006', '/llf006.jpg', '/thumb/llf006.jpg', '', '', '07 October 2017, 08:33', '83 KB', 'JPG', '800 x 600 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(1065, 9, '', 'llf012', '/llf012.jpg', '/thumb/llf012.jpg', '', '', '07 October 2017, 08:33', '87 KB', 'JPG', '800 x 600 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(1066, 9, '', 'llf007', '/llf007.jpg', '/thumb/llf007.jpg', '', '', '07 October 2017, 08:33', '91 KB', 'JPG', '800 x 600 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(1067, 9, '', 'llf011', '/llf011.jpg', '/thumb/llf011.jpg', '', '', '07 October 2017, 08:33', '120 KB', 'JPG', '800 x 600 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(1068, 9, '', 'llf015', '/llf015.jpg', '/thumb/llf015.jpg', '', '', '07 October 2017, 08:33', '121 KB', 'JPG', '800 x 600 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(1069, 9, '', 'llf010', '/llf010.jpg', '/thumb/llf010.jpg', '', '', '07 October 2017, 08:33', '110 KB', 'JPG', '800 x 600 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(1070, 9, '', 'llf001', '/llf001.jpg', '/thumb/llf001.jpg', '', '', '07 October 2017, 08:33', '43 KB', 'JPG', '800 x 600 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(1071, 9, '', 'llf003', '/llf003.jpg', '/thumb/llf003.jpg', '', '', '07 October 2017, 08:33', '91 KB', 'JPG', '800 x 600 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(1072, 9, '', 'llf005', '/llf005.jpg', '/thumb/llf005.jpg', '', '', '07 October 2017, 08:33', '110 KB', 'JPG', '800 x 600 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(1073, 9, '', 'llf008', '/llf008.jpg', '/thumb/llf008.jpg', '', '', '07 October 2017, 08:33', '66 KB', 'JPG', '800 x 600 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(1074, 9, '', 'llf004', '/llf004.jpg', '/thumb/llf004.jpg', '', '', '07 October 2017, 08:33', '68 KB', 'JPG', '800 x 600 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(1075, 9, '', 'llf002', '/llf002.jpg', '/thumb/llf002.jpg', '', '', '07 October 2017, 08:33', '118 KB', 'JPG', '800 x 600 px', 1, 1, 1, 0, 0, 0, 0, '', 0),
(1076, 10, '', 'botanik055', '/botanik055.jpg', '/thumb/botanik055.jpg', '', '', '22 October 2017, 06:53', '176 KB', 'JPG', '800 x 600 px', 1, 56, 1, 0, 0, 0, 0, '', 0),
(1077, 10, '', 'botanik053', '/botanik053.jpg', '/thumb/botanik053.jpg', '', '', '22 October 2017, 06:53', '118 KB', 'JPG', '450 x 600 px', 1, 55, 1, 0, 0, 0, 0, '', 0),
(1078, 10, '', 'botanik054', '/botanik054.jpg', '/thumb/botanik054.jpg', '', '', '22 October 2017, 06:53', '126 KB', 'JPG', '800 x 600 px', 1, 54, 1, 0, 0, 0, 0, '', 0),
(1079, 10, '', 'botanik056', '/botanik056.jpg', '/thumb/botanik056.jpg', '', '', '22 October 2017, 06:53', '179 KB', 'JPG', '800 x 600 px', 1, 53, 1, 0, 0, 0, 0, '', 0),
(1080, 10, '', 'botanik052', '/botanik052.jpg', '/thumb/botanik052.jpg', '', '', '22 October 2017, 06:53', '116 KB', 'JPG', '800 x 600 px', 1, 52, 1, 0, 0, 0, 0, '', 0),
(1081, 10, '', 'botanik051', '/botanik051.jpg', '/thumb/botanik051.jpg', '', '', '22 October 2017, 06:53', '180 KB', 'JPG', '800 x 600 px', 1, 51, 1, 0, 0, 0, 0, '', 0),
(1082, 10, '', 'botanik044', '/botanik044.jpg', '/thumb/botanik044.jpg', '', '', '22 October 2017, 06:52', '181 KB', 'JPG', '800 x 600 px', 1, 50, 1, 0, 0, 0, 0, '', 0),
(1083, 10, '', 'botanik045', '/botanik045.jpg', '/thumb/botanik045.jpg', '', '', '22 October 2017, 06:52', '188 KB', 'JPG', '800 x 600 px', 1, 49, 1, 0, 0, 0, 0, '', 0),
(1084, 10, '', 'botanik047', '/botanik047.jpg', '/thumb/botanik047.jpg', '', '', '22 October 2017, 06:52', '206 KB', 'JPG', '800 x 600 px', 1, 48, 1, 0, 0, 0, 0, '', 0),
(1085, 10, '', 'botanik049', '/botanik049.jpg', '/thumb/botanik049.jpg', '', '', '22 October 2017, 06:52', '177 KB', 'JPG', '800 x 600 px', 1, 47, 1, 0, 0, 0, 0, '', 0),
(1086, 10, '', 'botanik048', '/botanik048.jpg', '/thumb/botanik048.jpg', '', '', '22 October 2017, 06:52', '193 KB', 'JPG', '800 x 600 px', 1, 46, 1, 0, 0, 0, 0, '', 0),
(1087, 10, '', 'botanik050', '/botanik050.jpg', '/thumb/botanik050.jpg', '', '', '22 October 2017, 06:52', '195 KB', 'JPG', '800 x 600 px', 1, 45, 1, 0, 0, 0, 0, '', 0),
(1088, 10, '', 'botanik046', '/botanik046.jpg', '/thumb/botanik046.jpg', '', '', '22 October 2017, 06:52', '192 KB', 'JPG', '800 x 600 px', 1, 44, 1, 0, 0, 0, 0, '', 0),
(1089, 10, '', 'botanik042', '/botanik042.jpg', '/thumb/botanik042.jpg', '', '', '22 October 2017, 06:52', '198 KB', 'JPG', '800 x 600 px', 1, 43, 1, 0, 0, 0, 0, '', 0),
(1090, 10, '', 'botanik043', '/botanik043.jpg', '/thumb/botanik043.jpg', '', '', '22 October 2017, 06:52', '120 KB', 'JPG', '800 x 600 px', 1, 42, 1, 0, 0, 0, 0, '', 0),
(1091, 10, '', 'botanik032', '/botanik032.jpg', '/thumb/botanik032.jpg', '', '', '22 October 2017, 06:52', '131 KB', 'JPG', '800 x 600 px', 1, 41, 1, 0, 0, 0, 0, '', 0),
(1092, 10, '', 'botanik040', '/botanik040.jpg', '/thumb/botanik040.jpg', '', '', '22 October 2017, 06:52', '200 KB', 'JPG', '800 x 600 px', 1, 40, 1, 0, 0, 0, 0, '', 0),
(1093, 10, '', 'botanik041', '/botanik041.jpg', '/thumb/botanik041.jpg', '', '', '22 October 2017, 06:52', '127 KB', 'JPG', '800 x 600 px', 1, 39, 1, 0, 0, 0, 0, '', 0),
(1094, 10, '', 'botanik034', '/botanik034.jpg', '/thumb/botanik034.jpg', '', '', '22 October 2017, 06:52', '155 KB', 'JPG', '800 x 600 px', 1, 38, 1, 0, 0, 0, 0, '', 0),
(1095, 10, '', 'botanik037', '/botanik037.jpg', '/thumb/botanik037.jpg', '', '', '22 October 2017, 06:52', '66 KB', 'JPG', '800 x 600 px', 1, 37, 1, 0, 0, 0, 0, '', 0),
(1096, 10, '', 'botanik035', '/botanik035.jpg', '/thumb/botanik035.jpg', '', '', '22 October 2017, 06:52', '145 KB', 'JPG', '800 x 600 px', 1, 36, 1, 0, 0, 0, 0, '', 0),
(1097, 10, '', 'botanik039', '/botanik039.jpg', '/thumb/botanik039.jpg', '', '', '22 October 2017, 06:52', '99 KB', 'JPG', '800 x 600 px', 1, 35, 1, 0, 0, 0, 0, '', 0),
(1098, 10, '', 'botanik038', '/botanik038.jpg', '/thumb/botanik038.jpg', '', '', '22 October 2017, 06:52', '134 KB', 'JPG', '800 x 600 px', 1, 34, 1, 0, 0, 0, 0, '', 0),
(1099, 10, '', 'botanik036', '/botanik036.jpg', '/thumb/botanik036.jpg', '', '', '22 October 2017, 06:52', '141 KB', 'JPG', '800 x 600 px', 1, 33, 1, 0, 0, 0, 0, '', 0),
(1100, 10, '', 'botanik031', '/botanik031.jpg', '/thumb/botanik031.jpg', '', '', '22 October 2017, 06:52', '146 KB', 'JPG', '800 x 600 px', 1, 32, 1, 0, 0, 0, 0, '', 0),
(1101, 10, '', 'botanik033', '/botanik033.jpg', '/thumb/botanik033.jpg', '', '', '22 October 2017, 06:52', '134 KB', 'JPG', '800 x 600 px', 1, 31, 1, 0, 0, 0, 0, '', 0),
(1102, 10, '', 'botanik030', '/botanik030.jpg', '/thumb/botanik030.jpg', '', '', '22 October 2017, 06:52', '146 KB', 'JPG', '800 x 600 px', 1, 30, 1, 0, 0, 0, 0, '', 0),
(1103, 10, '', 'botanik020', '/botanik020.jpg', '/thumb/botanik020.jpg', '', '', '22 October 2017, 06:52', '154 KB', 'JPG', '800 x 600 px', 1, 29, 1, 0, 0, 0, 0, '', 0),
(1104, 10, '', 'botanik028', '/botanik028.jpg', '/thumb/botanik028.jpg', '', '', '22 October 2017, 06:52', '124 KB', 'JPG', '800 x 600 px', 1, 28, 1, 0, 0, 0, 0, '', 0),
(1105, 10, '', 'botanik029', '/botanik029.jpg', '/thumb/botanik029.jpg', '', '', '22 October 2017, 06:52', '118 KB', 'JPG', '800 x 600 px', 1, 27, 1, 0, 0, 0, 0, '', 0),
(1106, 10, '', 'botanik026', '/botanik026.jpg', '/thumb/botanik026.jpg', '', '', '22 October 2017, 06:52', '100 KB', 'JPG', '800 x 600 px', 1, 26, 1, 0, 0, 0, 0, '', 0),
(1107, 10, '', 'botanik025', '/botanik025.jpg', '/thumb/botanik025.jpg', '', '', '22 October 2017, 06:52', '156 KB', 'JPG', '800 x 600 px', 1, 25, 1, 0, 0, 0, 0, '', 0),
(1108, 10, '', 'botanik022', '/botanik022.jpg', '/thumb/botanik022.jpg', '', '', '22 October 2017, 06:52', '201 KB', 'JPG', '800 x 600 px', 1, 24, 1, 0, 0, 0, 0, '', 0),
(1109, 10, '', 'botanik023', '/botanik023.jpg', '/thumb/botanik023.jpg', '', '', '22 October 2017, 06:52', '203 KB', 'JPG', '800 x 600 px', 1, 23, 1, 0, 0, 0, 0, '', 0),
(1110, 10, '', 'botanik024', '/botanik024.jpg', '/thumb/botanik024.jpg', '', '', '22 October 2017, 06:52', '177 KB', 'JPG', '800 x 600 px', 1, 22, 1, 0, 0, 0, 0, '', 0),
(1111, 10, '', 'botanik027', '/botanik027.jpg', '/thumb/botanik027.jpg', '', '', '22 October 2017, 06:52', '136 KB', 'JPG', '800 x 600 px', 1, 21, 1, 0, 0, 0, 0, '', 0),
(1112, 10, '', 'botanik021', '/botanik021.jpg', '/thumb/botanik021.jpg', '', '', '22 October 2017, 06:52', '141 KB', 'JPG', '450 x 600 px', 1, 20, 1, 0, 0, 0, 0, '', 0),
(1113, 10, '', 'botanik018', '/botanik018.jpg', '/thumb/botanik018.jpg', '', '', '22 October 2017, 06:51', '132 KB', 'JPG', '800 x 600 px', 1, 19, 1, 0, 0, 0, 0, '', 0),
(1114, 10, '', 'botanik019', '/botanik019.jpg', '/thumb/botanik019.jpg', '', '', '22 October 2017, 06:51', '74 KB', 'JPG', '800 x 600 px', 1, 18, 1, 0, 0, 0, 0, '', 0),
(1115, 10, '', 'botanik015', '/botanik015.jpg', '/thumb/botanik015.jpg', '', '', '22 October 2017, 06:51', '136 KB', 'JPG', '800 x 600 px', 1, 17, 1, 0, 0, 0, 0, '', 0),
(1116, 10, '', 'botanik016', '/botanik016.jpg', '/thumb/botanik016.jpg', '', '', '22 October 2017, 06:51', '110 KB', 'JPG', '800 x 600 px', 1, 16, 1, 0, 0, 0, 0, '', 0),
(1117, 10, '', 'botanik017', '/botanik017.jpg', '/thumb/botanik017.jpg', '', '', '22 October 2017, 06:51', '73 KB', 'JPG', '800 x 600 px', 1, 15, 1, 0, 0, 0, 0, '', 0),
(1118, 10, '', 'botanik010', '/botanik010.jpg', '/thumb/botanik010.jpg', '', '', '22 October 2017, 06:51', '82 KB', 'JPG', '800 x 600 px', 1, 14, 1, 0, 0, 0, 0, '', 0),
(1119, 10, '', 'botanik004', '/botanik004.jpg', '/thumb/botanik004.jpg', '', '', '22 October 2017, 06:51', '195 KB', 'JPG', '800 x 600 px', 1, 13, 1, 0, 0, 0, 0, '', 0),
(1120, 10, '', 'botanik014', '/botanik014.jpg', '/thumb/botanik014.jpg', '', '', '22 October 2017, 06:51', '94 KB', 'JPG', '800 x 600 px', 1, 12, 1, 0, 0, 0, 0, '', 0),
(1121, 10, '`', 'botanik011', '/botanik011.jpg', '/thumb/botanik011.jpg', '', '`', '22 October 2017, 06:51', '126 KB', 'JPG', '800 x 600 px', 1, 11, 1, 0, 0, 0, 0, '', 0),
(1122, 10, '', 'botanik013', '/botanik013.jpg', '/thumb/botanik013.jpg', '', '', '22 October 2017, 06:51', '86 KB', 'JPG', '800 x 600 px', 1, 10, 1, 0, 0, 0, 0, '', 0),
(1123, 10, '', 'botanik012', '/botanik012.jpg', '/thumb/botanik012.jpg', '', '', '22 October 2017, 06:51', '137 KB', 'JPG', '800 x 600 px', 1, 9, 1, 0, 0, 0, 0, '', 0),
(1124, 10, '', 'botanik009', '/botanik009.jpg', '/thumb/botanik009.jpg', '', '', '22 October 2017, 06:51', '116 KB', 'JPG', '800 x 600 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(1125, 10, '', 'botanik006', '/botanik006.jpg', '/thumb/botanik006.jpg', '', '', '22 October 2017, 06:51', '124 KB', 'JPG', '800 x 600 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(1126, 10, '', 'botanik008', '/botanik008.jpg', '/thumb/botanik008.jpg', '', '', '22 October 2017, 06:51', '105 KB', 'JPG', '800 x 600 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(1127, 10, '', 'botanik007', '/botanik007.jpg', '/thumb/botanik007.jpg', '', '', '22 October 2017, 06:51', '155 KB', 'JPG', '800 x 600 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(1128, 10, '', 'botanik001', '/botanik001.jpg', '/thumb/botanik001.jpg', '', '', '22 October 2017, 06:51', '93 KB', 'JPG', '800 x 600 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(1129, 10, '', 'botanik005', '/botanik005.jpg', '/thumb/botanik005.jpg', '', '', '22 October 2017, 06:51', '100 KB', 'JPG', '800 x 600 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(1130, 10, '', 'botanik002', '/botanik002.jpg', '/thumb/botanik002.jpg', '', '', '22 October 2017, 06:51', '115 KB', 'JPG', '800 x 600 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(1131, 10, '', 'botanik003', '/botanik003.jpg', '/thumb/botanik003.jpg', '', '', '22 October 2017, 06:51', '109 KB', 'JPG', '800 x 600 px', 1, 1, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_image_comment`
--

CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_image_rate`
--

CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_image_tag`
--

CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_shortcode`
--

CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"1\" sort_by=\"random\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(2, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"2\" sort_by=\"random\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(3, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"3\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(4, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"4\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(5, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"5\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(6, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"6\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(7, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"7\" sort_by=\"filename\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(8, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"8\" sort_by=\"filename\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(9, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"9\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(10, ' gallery_type=\"thumbnails\" theme_id=\"1\" gallery_id=\"10\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" show_sort_images=\"0\" search_box_width=\"180\" image_column_number=\"5\" images_per_page=\"30\" image_title=\"none\" image_enable_page=\"1\" thumb_width=\"180\" thumb_height=\"90\" load_more_image_count=\"30\" show_tag_box=\"0\" tag=\"0\" show_gallery_description=\"0\" showthumbs_name=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"0\" popup_autoplay=\"0\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_interval=\"5\" popup_enable_filmstrip=\"0\" popup_filmstrip_height=\"70\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"0\" popup_enable_rate=\"0\" popup_enable_comment=\"1\" popup_hit_counter=\"0\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" show_tag_box=\"0\" popup_effect_duration=\"1\" watermark_type=\"none\" watermark_link=\"https://web-dorado.com\"'),
(11, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"1\" tag=\"0\" gallery_type=\"thumbnails\"'),
(12, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"2\" tag=\"0\" gallery_type=\"thumbnails\"'),
(13, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"3\" tag=\"0\" gallery_type=\"thumbnails\"'),
(14, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"4\" tag=\"0\" gallery_type=\"thumbnails\"'),
(15, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"5\" tag=\"0\" gallery_type=\"thumbnails\"'),
(16, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"6\" tag=\"0\" gallery_type=\"thumbnails\"'),
(17, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"7\" tag=\"0\" gallery_type=\"thumbnails\"'),
(18, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"8\" tag=\"0\" gallery_type=\"thumbnails\"'),
(19, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"9\" tag=\"0\" gallery_type=\"thumbnails\"'),
(20, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"10\" tag=\"0\" gallery_type=\"thumbnails\"');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_bwg_theme`
--

CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `options` longtext NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Theme 1', '{\"thumb_margin\":4,\"thumb_padding\":0,\"thumb_border_radius\":\"0\",\"thumb_border_width\":0,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"CCCCCC\",\"thumb_bg_color\":\"FFFFFF\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"0px 0px 0px #888888\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"scale\",\"thumb_hover_effect_value\":\"1.1\",\"thumb_transition\":1,\"thumb_title_font_color\":\"CCCCCC\",\"thumb_title_font_style\":\"segoe ui\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"2px\",\"thumb_title_shadow\":\"0px 0px 0px #888888\",\"thumb_gal_title_font_color\":\"CCCCCC\",\"thumb_gal_title_font_style\":\"segoe ui\",\"thumb_gal_title_font_size\":16,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"solid\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FFFFFF\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_bg_color\":\"000000\",\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":100,\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_transparent\":65,\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_close_btn_transparent\":100,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_width\":2,\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"0\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_width\":20,\"lightbox_close_btn_height\":20,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":0,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_width\":40,\"lightbox_rl_btn_size\":20,\"lightbox_close_rl_btn_hover_color\":\"CCCCCC\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":400,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_style\":\"segoe ui\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"616161\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_padding\":\"2px\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_color\":\"383838\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"CCCCCC\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"3B3B3B\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"solid\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_rl_btn_style\":\"fa-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_bg_transparent\":100,\"album_compact_back_font_color\":\"000000\",\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_back_font_size\":16,\"album_compact_back_font_weight\":\"bold\",\"album_compact_back_padding\":\"0\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"2px\",\"album_compact_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":0,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":0,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"CCCCCC\",\"album_compact_thumb_bg_color\":\"FFFFFF\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_thumb_bg_transparent\":0,\"album_compact_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"scale\",\"album_compact_thumb_hover_effect_value\":\"1.1\",\"album_compact_thumb_transition\":0,\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":0,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":0,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"CCCCCC\",\"album_extended_thumb_bg_color\":\"FFFFFF\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":0,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"scale\",\"album_extended_thumb_hover_effect_value\":\"1.1\",\"album_extended_thumb_transition\":0,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":20,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0 0 0 0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"solid\",\"album_extended_div_separator_color\":\"E0E0E0\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":1,\"album_extended_thumb_div_border_style\":\"solid\",\"album_extended_thumb_div_border_color\":\"E8E8E8\",\"album_extended_thumb_div_padding\":\"5px\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"solid\",\"album_extended_text_div_border_color\":\"E8E8E8\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"F2D22E\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"masonry_thumb_padding\":4,\"masonry_thumb_border_radius\":\"0\",\"masonry_thumb_border_width\":0,\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_transparent\":100,\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"scale\",\"masonry_thumb_hover_effect_value\":\"1.1\",\"masonry_thumb_transition\":0,\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"0px 0px 0px #000000\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_width\":40,\"slideshow_close_rl_btn_hover_color\":\"CCCCCC\",\"slideshow_filmstrip_pos\":\"top\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_border_style\":\"solid\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_rl_bg_color\":\"3B3B3B\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"0 0 0 0\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":12,\"slideshow_dots_height\":12,\"slideshow_dots_border_radius\":\"5px\",\"slideshow_dots_background_color\":\"F2D22E\",\"slideshow_dots_margin\":3,\"slideshow_dots_active_background_color\":\"FFFFFF\",\"slideshow_dots_active_border_width\":1,\"slideshow_dots_active_border_color\":\"000000\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_style\":\"fa-chevron\",\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"0\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"solid\",\"blog_style_border_color\":\"F5F5F5\",\"blog_style_bg_color\":\"FFFFFF\",\"blog_style_transparent\":80,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_color\":\"B3AFAF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_font_size\":20,\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"0\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"F5F5F5\",\"image_browser_bg_color\":\"EBEBEB\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"0px 5px 0px 5px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"EBEBEB\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":15,\"image_browser_img_font_family\":\"segoe ui\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":2,\"image_browser_full_border_style\":\"none\",\"image_browser_full_border_color\":\"F7F7F7\",\"image_browser_full_bg_color\":\"F5F5F5\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"lightbox_info_pos\":\"top\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_width\":1,\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_margin\":\"15px\",\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_style\":\"segoe ui\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":18,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_style\":\"segoe ui\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_description_font_size\":14,\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_align\":\"right\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_width\":1,\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":14,\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":16,\"album_masonry_back_font_weight\":\"bold\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"2px\",\"album_masonry_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":0,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":0,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"CCCCCC\",\"album_masonry_thumb_bg_color\":\"FFFFFF\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":0,\"album_masonry_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"scale\",\"album_masonry_thumb_hover_effect_value\":\"1.1\",\"album_masonry_thumb_transition\":0,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_border_radius\":\"0\",\"mosaic_thumb_border_width\":0,\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_transparent\":100,\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"scale\",\"mosaic_thumb_hover_effect_value\":\"1.1\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":100,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_width\":40,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"segoe ui\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"white\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":1}', 1),
(2, 'Theme 2', '{\"thumb_margin\":4,\"thumb_padding\":4,\"thumb_border_radius\":\"0\",\"thumb_border_width\":5,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"FFFFFF\",\"thumb_bg_color\":\"E8E8E8\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"0px 0px 0px #888888\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"rotate\",\"thumb_hover_effect_value\":\"2deg\",\"thumb_transition\":1,\"thumb_title_font_color\":\"CCCCCC\",\"thumb_title_font_style\":\"segoe ui\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"5px\",\"thumb_title_shadow\":\"\",\"thumb_gal_title_font_color\":\"CCCCCC\",\"thumb_gal_title_font_style\":\"segoe ui\",\"thumb_gal_title_font_size\":16,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"none\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FCFCFC\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_bg_color\":\"000000\",\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":80,\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_transparent\":80,\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_close_btn_transparent\":95,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_width\":0,\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_width\":20,\"lightbox_close_btn_height\":20,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":2,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_width\":40,\"lightbox_rl_btn_size\":20,\"lightbox_close_rl_btn_hover_color\":\"FFFFFF\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":400,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_style\":\"segoe ui\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"333333\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_padding\":\"3px\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_color\":\"2B2B2B\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"FFFFFF\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"2B2B2B\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_rl_btn_style\":\"fa-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_bg_transparent\":100,\"album_compact_back_font_color\":\"000000\",\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_back_font_size\":14,\"album_compact_back_font_weight\":\"normal\",\"album_compact_back_padding\":\"0\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"5px\",\"album_compact_title_shadow\":\"\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":4,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":1,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"000000\",\"album_compact_thumb_bg_color\":\"E8E8E8\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_thumb_bg_transparent\":100,\"album_compact_thumb_box_shadow\":\"\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"rotate\",\"album_compact_thumb_hover_effect_value\":\"2deg\",\"album_compact_thumb_transition\":1,\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":4,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":4,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"E8E8E8\",\"album_extended_thumb_bg_color\":\"E8E8E8\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":100,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"rotate\",\"album_extended_thumb_hover_effect_value\":\"2deg\",\"album_extended_thumb_transition\":0,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":16,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"none\",\"album_extended_div_separator_color\":\"CCCCCC\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_color\":\"CCCCCC\",\"album_extended_thumb_div_padding\":\"0\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_color\":\"CCCCCC\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"FFC933\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"masonry_thumb_padding\":4,\"masonry_thumb_border_radius\":\"2px\",\"masonry_thumb_border_width\":1,\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_transparent\":80,\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"rotate\",\"masonry_thumb_hover_effect_value\":\"2deg\",\"masonry_thumb_transition\":0,\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_width\":40,\"slideshow_close_rl_btn_hover_color\":\"DBDBDB\",\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_rl_bg_color\":\"303030\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"5px 10px 5px 10px\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":10,\"slideshow_dots_height\":10,\"slideshow_dots_border_radius\":\"10px\",\"slideshow_dots_background_color\":\"292929\",\"slideshow_dots_margin\":1,\"slideshow_dots_active_background_color\":\"292929\",\"slideshow_dots_active_border_width\":2,\"slideshow_dots_active_border_color\":\"FFC933\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_style\":\"fa-chevron\",\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"4px\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"none\",\"blog_style_border_color\":\"CCCCCC\",\"blog_style_bg_color\":\"E8E8E8\",\"blog_style_transparent\":70,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_color\":\"A1A1A1\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_font_size\":20,\"blog_style_image_title_align\":\"top\",\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"2px\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"E8E8E8\",\"image_browser_bg_color\":\"E8E8E8\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"24px 0px 0px 0px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"E8E8E8\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":14,\"image_browser_img_font_family\":\"segoe ui\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":1,\"image_browser_full_border_style\":\"solid\",\"image_browser_full_border_color\":\"EDEDED\",\"image_browser_full_bg_color\":\"FFFFFF\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"lightbox_info_pos\":\"top\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_width\":1,\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_margin\":\"15px\",\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_style\":\"segoe ui\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":18,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_style\":\"segoe ui\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_description_font_size\":14,\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_align\":\"right\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_width\":1,\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":14,\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":14,\"album_masonry_back_font_weight\":\"normal\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"5px\",\"album_masonry_title_shadow\":\"\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":1,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"000000\",\"album_masonry_thumb_bg_color\":\"E8E8E8\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":100,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"rotate\",\"album_masonry_thumb_hover_effect_value\":\"2deg\",\"album_masonry_thumb_transition\":1,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_border_radius\":\"2px\",\"mosaic_thumb_border_width\":1,\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_transparent\":80,\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"rotate\",\"mosaic_thumb_hover_effect_value\":\"2deg\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":100,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_width\":40,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"segoe ui\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"white\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":1}', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://przezobiektyw.c0.pl', 'yes'),
(2, 'home', 'http://przezobiektyw.c0.pl', 'yes'),
(3, 'blogname', 'przezobiektyw', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pablo-dx@o2.pl', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:142:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"bwg_tag/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"bwg_tag/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"bwg_tag/([^/]+)/embed/?$\";s:40:\"index.php?bwg_tag=$matches[1]&embed=true\";s:28:\"bwg_tag/([^/]+)/trackback/?$\";s:34:\"index.php?bwg_tag=$matches[1]&tb=1\";s:36:\"bwg_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?bwg_tag=$matches[1]&paged=$matches[2]\";s:43:\"bwg_tag/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?bwg_tag=$matches[1]&cpage=$matches[2]\";s:32:\"bwg_tag/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?bwg_tag=$matches[1]&page=$matches[2]\";s:24:\"bwg_tag/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"bwg_tag/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"bwg_tag/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"bwg_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"bwg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"bwg_gallery/([^/]+)/embed/?$\";s:44:\"index.php?bwg_gallery=$matches[1]&embed=true\";s:32:\"bwg_gallery/([^/]+)/trackback/?$\";s:38:\"index.php?bwg_gallery=$matches[1]&tb=1\";s:40:\"bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&paged=$matches[2]\";s:47:\"bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&cpage=$matches[2]\";s:36:\"bwg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?bwg_gallery=$matches[1]&page=$matches[2]\";s:28:\"bwg_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"bwg_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"bwg_album/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"bwg_album/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"bwg_album/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"bwg_album/([^/]+)/embed/?$\";s:42:\"index.php?bwg_album=$matches[1]&embed=true\";s:30:\"bwg_album/([^/]+)/trackback/?$\";s:36:\"index.php?bwg_album=$matches[1]&tb=1\";s:38:\"bwg_album/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&paged=$matches[2]\";s:45:\"bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_album/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?bwg_album=$matches[1]&page=$matches[2]\";s:26:\"bwg_album/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"bwg_album/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"bwg_album/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=58&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:\"photo-gallery/photo-gallery.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:88:\"/profiles/p/pa/pab/pablodx/przezobiektyw.c0.pl/wp-content/themes/twentyfifteen/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'twentyfifteen', 'yes'),
(41, 'stylesheet', 'twentyfifteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:4;a:4:{s:5:\"title\";s:11:\"Znajdź nas\";s:4:\"text\";s:174:\"<strong>Adres</strong>\nul. Marszałkowska 1\nWarszawa, 00-500\n\n<strong>Godziny</strong>\nPoniedziałek&mdash;piątek: 9:00&ndash;17:00\nSobota &amp; Niedziela: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:10:\"O witrynie\";s:4:\"text\";s:105:\"Może to być dobre miejsce, aby przedstawić siebie i swoją witrynę lub wymienić zaangażowane osoby.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(149, '_site_transient_timeout_wporg_theme_feature_list', '1505512862', 'no'),
(84, 'page_on_front', '58', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'pl_PL', 'yes'),
(95, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:4;a:1:{s:5:\"title\";s:6:\"Szukaj\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(189, '_site_transient_timeout_available_translations', '1505642993', 'no'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'cron', 'a:4:{i:1515610051;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1515610067;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1515615084;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1505501937;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}}}}', 'yes'),
(127, 'can_compress_scripts', '0', 'no'),
(124, '_site_transient_timeout_browser_3d5f26438973a3d90b630a57c59a2f98', '1506106068', 'no'),
(125, '_site_transient_browser_3d5f26438973a3d90b630a57c59a2f98', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"60.0.3112.113\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(352, '_site_transient_timeout_theme_roots', '1515584338', 'no'),
(353, '_site_transient_theme_roots', 'a:3:{s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(292, '_site_transient_timeout_community-events-e014c22858d170a9a4bbe4fecbe7ce57', '1508698168', 'no'),
(293, '_site_transient_community-events-e014c22858d170a9a4bbe4fecbe7ce57', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:11:\"87.205.37.0\";}s:6:\"events\";a:0:{}}', 'no'),
(297, '_transient_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1508654969', 'no'),
(298, '_transient_timeout_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '1508698169', 'no'),
(299, '_transient_dash_v2_5ed7e1a5d79caaf375d35c33f6782653', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\'>WordPress 4.9 Beta 2</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\'>WordPress 4.9 Beta 2</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\'>WordPress 4.8.2 – Wydanie poprawiające bezpieczeństwo i błędy</a></li><li><a class=\'rsswidget\' href=\'https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/\'>Zrób jedną rzecz i zmień przyszłość WordCampa</a></li></ul></div>', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(190, '_site_transient_available_translations', 'a:109:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-04 12:02:13\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-29 08:49:40\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 18:40:55\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.1/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-09 09:24:45\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-04 16:58:43\";s:12:\"english_name\";s:7:\"Bengali\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-05 09:44:12\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-04 20:20:28\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-08 21:01:45\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 08:46:26\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:12:\"Čeština‎\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-05 16:03:49\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-27 19:10:04\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-14 20:03:25\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-09 11:53:31\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/4.8.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-09 11:51:58\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-04 15:29:24\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:51:51\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 19:47:01\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 10:03:08\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:53:43\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-25 17:31:04\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-02 03:57:05\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 10:38:53\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-13 17:00:30\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_CO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-15 07:20:23\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_ES.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"es\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:54:37\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-28 20:09:49\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 15:12:02\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_MX.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-30 16:09:17\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_VE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-01 04:48:11\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/es_AR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"es\";i:2;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 16:37:11\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-28 12:06:36\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-09 15:50:45\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 11:00:29\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:37:07\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-13 19:34:52\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 09:14:18\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 12:45:35\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-31 06:54:10\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-12 21:37:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:29:26\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-16 20:58:54\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:39\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:45:08\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-04-13 13:55:54\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-10 18:53:47\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-03 23:23:50\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-06-12 09:20:11\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-22 15:33:00\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.1/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-07 02:07:59\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 10:48:16\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:25\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 11:02:15\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-03-17 20:40:40\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:3:\"4.8\";s:7:\"updated\";s:19:\"2017-07-05 19:40:47\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/4.8/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-03-05 09:45:10\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.18\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-02 21:02:39\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 08:47:10\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-27 16:44:39\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-30 07:58:32\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/4.8.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-16 14:42:46\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-01 07:32:10\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.1/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-06 08:34:38\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.18\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-26 21:35:20\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-10 19:12:13\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-05 18:31:50\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/4.8.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-09 07:52:59\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-29 20:32:20\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-09 13:26:18\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-12 12:51:50\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"4.7.5\";s:7:\"updated\";s:19:\"2017-04-24 08:35:30\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 12:07:44\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-13 13:05:53\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:48:43\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-31 11:38:12\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-05 09:23:39\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:9:\"Uyƣurqə\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-10 15:50:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-07-28 14:27:29\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-11 16:54:43\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-13 04:19:14\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-04 07:53:05\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-09-12 11:35:05\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"4.8.1\";s:7:\"updated\";s:19:\"2017-08-14 16:47:28\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.1/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(296, '_transient_timeout_feed_mod_a421d6f32723068ab074a40017a9e1f9', '1508698169', 'no'),
(294, '_transient_timeout_feed_a421d6f32723068ab074a40017a9e1f9', '1508698169', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(295, '_transient_feed_a421d6f32723068ab074a40017a9e1f9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"Polska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://pl.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 07:03:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"pl-PL\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=4.9-beta3-41966\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 07:03:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Wersje testowe\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1235\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:433:\"WordPress 4.9 Beta 2 jest już dostępny! Oprogramowanie jest wciąż w fazie tworzenia, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę WordPress Beta Tester (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo pobierz wersję beta (zip). Więcej informacji na temat [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1781:\"<p>WordPress 4.9 Beta 2 jest już dostępny!</p>\n<p><strong>Oprogramowanie jest wciąż w fazie tworzenia</strong>, dlatego nie zalecamy jego używania w witrynie produkcyjnej. Zastanów się nad środowiskiem testowym i tam sprawdzaj do woli. Aby przetestować WordPress 4.9, wypróbuj wtyczkę <a href=\"https://pl.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> (regularnie aktualizuje one do  &#8222;krawych nocnych wydań&#8221;) albo <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">pobierz wersję beta</a> (zip).</p>\n<p>Więcej informacji na temat tego, co nowego w wersji 4.9, znajdziesz w blogu we wpisie <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> (po angielsku). Od tego czasu dokonaliśmy <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 zmian</a> w wersji Beta 2.</p>\n<p><a href=\"https://translate.wordpress.org/locale/pl/default/wp/dev\">Pomóż nam przetłumaczyć WordPress na język polski</a>!</p>\n<p><strong>Jeśli widzisz błąd</strong>, napisz wiadomość na forum <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta</a>. Jeżeli coś nie działa, to chcielibyśm się tego dowiedzieć właśnie do ciebie! Jeśli czujesz się na siłach, żeby napisać raport zawierający opis jak powtórzyć błąd to  skorzystaj z serwisu <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac</a>. Na nim też znajdziesz <a href=\"https://core.trac.wordpress.org/tickets/major\">listę znanych błędów</a>.</p>\n<p><em>Przetestujmy razem:</em><br />\n<em> edytowanie kodu, przełączniki tematyczne,</em><br />\n<em> widgety, harmonogramowanie.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"https://pl.wordpress.org/2017/10/12/wordpress-4-9-beta-2/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.8.2 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Sep 2017 11:37:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://pl.wordpress.org/?p=1213\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:476:\"WordPress 4.8.2 jest już dostępny. Wersja poprawia bezpieczeństwo wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn. WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem: $wpdb-&#62; prepare() mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3051:\"<p>WordPress 4.8.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> wszystkich poprzednich wersji i zdecydowanie zachęcamy do natychmiastowej aktualizacji witryn.</p>\n<p>WordPress w wersji 4.8.1 i starsze mają następujące problemy z bezpieczeństwem:</p>\n<ol>\n<li><strong>$wpdb-&gt; prepare()</strong> mogło tworzyć nieoczekiwane i niebezpieczne zapytania prowadzące do potencjalnego wstrzyknięcia kod SQL (SQLi). Core WordPressa nie jest bezpośrednio narażony na ten problem, ale poprawiono proces tworzenia zapytań aby zapobiegać podatności we wtyczkach i motywach. Zgłoszone przez <a href=\"https://hackerone.com/slavco\">Slavco</a></li>\n<li>Wykryto podatność na cross-site scripting (XSS) w używaniu oEmbed. Zgłoszone przez xknown zespołu ds. Zabezpieczeń WordPress.</li>\n<li>W edytorze wizualnym wykryto lukę w zabezpieczeniach skryptów przed cross-site scripting (XSS) Zgłoszone przez <a href=\"https://twitter.com/brutelogic\">Rodolfo Assis (@brutelogic)</a> Sucuri Security.</li>\n<li>W kodzie do rozpakowywania wykryto lukę w zabezpieczeniach ścieżki do pliku. Zgłoszone przez <a href=\"https://hackerone.com/noxrnet\">Alex Chapman (noxrnet)</a>.</li>\n<li>W edytorze wtyczek wykryto luka w zabezpieczeniach cross-site scripting (XSS). Zgłoszone przez 陈瑞琦 (Chen Ruiqi).</li>\n<li>Na ekranie użytkownika i terminach edycji zostały wykryte otwarte przekierowanie. Zgłoszone przez <a href=\"https://hackerone.com/ysx\">Yasin Soliman (ysx)</a>.</li>\n<li>Odkryto lukę w zabezpieczeniach ścieżki na ekranie personalizacji witryny. Zgłoszone przez Weston Ruter z zespołu ds. Bezpieczeństwa WordPress.</li>\n<li>Wykryto podatność na cross-site scripting (XSS)  w nazwach szablonów. Zgłoszone przez <a href=\"https://hackerone.com/sikic\">Luka (sikic)</a>.</li>\n<li>Wykryto podatność na cross-site scripting (XSS) w linkach modalnych. Zgłoszone przez <a href=\"https://hackerone.com/qasuar\">Anas Roubi (qasuar)</a>.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za praktykowanie <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawnienia (en)</a>.</p>\n<p>Oprócz powyższych kwestii związanych z bezpieczeństwem, WordPress 4.8.2 zawiera 6 poprawek utrzymaniowych serii 4.8. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.8.2\">notce wydania wersji (en)</a> oraz na <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">liście zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/wordpress-4.8.2-pl_PL.zip\">Pobierz WordPress 4.8.2</a> lub przejdź do Panel → Aktualizacje i kliknij przycisk &#8222;Aktualizuj teraz&#8221;. Strony obsługujące automatyczne aktualizacje w tle już zaczynają aktualizować się do wersji 4.8.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do wydania 4.8.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/09/22/wordpress-4-8-2-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"Zrób jedną rzecz i zmień przyszłość WordCampa\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 15 Jun 2017 04:11:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=977\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:435:\"Ósmy polski WordCamp już za nami. Polska społeczność rozrasta się z roku na rok, co bardzo cieszy, ale niejednokrotnie stanowi wyzwanie dla organizatorów spotkań. Chcemy lepiej odpowiadać na potrzeby polskich twórców i użytkowników WordPressa. Dlatego przygotowaliśmy krótką ankietę na temat WordCampa. Chcemy poznać Was lepiej, dowiedzieć się, kim jesteście i jakie macie oczekiwania względem kolejnych [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Katarzyna Gajewska\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:815:\"<p>Ósmy polski WordCamp już za nami. Polska społeczność rozrasta się z roku na rok, co bardzo cieszy, ale niejednokrotnie stanowi wyzwanie dla organizatorów spotkań.</p>\n<p>Chcemy lepiej odpowiadać na potrzeby polskich twórców i użytkowników WordPressa. Dlatego przygotowaliśmy krótką ankietę na temat WordCampa. Chcemy poznać Was lepiej, dowiedzieć się, kim jesteście i jakie macie oczekiwania względem kolejnych edycji WordCampa w Polsce. Wypełnienie ankiety nie zajmie Wam więcej niż 5 minut.</p>\n<p><a href=\"https://goo.gl/forms/VPY4xtO9KF6fuDnm1\" target=\"_blank\" rel=\"noopener\"><strong>Wypełnij ankietę na temat polskiej społeczności WordPressowej</strong></a>.</p>\n<p>Dziękujemy Wam za wypełnienie ankiety!</p>\n<p><em>Organizatorzy polskich WordUpów i WordCamp Polska</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://pl.wordpress.org/2017/06/15/zrob-cos-dla-wordpressa/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.7.5 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/05/17/wordpress-4-7-5-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://pl.wordpress.org/2017/05/17/wordpress-4-7-5-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 May 2017 00:14:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=907\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:490:\"WordPress 4.7.5 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersji 4.7.4 i wcześniejszych posiada sześć problemów z bezpieczeństwem: Niewystarczająca weryfikacja przekierowań w klasie HTTP. Zgłosił to Ronni Skansing. Niewłaściwa obsługa wartości danych meta wpisów w API XML-RPC. Zgłosił to Sam Thomas. Brak sprawdzania uprawnień dla [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2591:\"<p>WordPress 4.7.5 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-907\"></span></p>\n<p>WordPress w wersji 4.7.4 i wcześniejszych posiada sześć problemów z bezpieczeństwem:</p>\n<ol>\n<li>Niewystarczająca weryfikacja przekierowań w klasie HTTP. Zgłosił to <a href=\"https://dk.linkedin.com/in/ronni-skansing-36143b65\">Ronni Skansing</a>.</li>\n<li>Niewłaściwa obsługa wartości danych meta wpisów w API XML-RPC. Zgłosił to <a href=\"https://hackerone.com/jazzy2fives\">Sam Thomas</a>.</li>\n<li>Brak sprawdzania uprawnień dla danych meta wpisów w API XML-RPC. Zgłosił to <a href=\"https://profiles.wordpress.org/vortfu\">Ben Bidner</a> z Zespołu Bezpieczeństwa WordPressa.</li>\n<li>Podatność typu Cross Site Request Forgery (CRSF) została wykryta w formularzu zapytania o dane dostępu do systemu plików. Zgłosił to <a href=\"https://twitter.com/yorickkoster\">Yorick Koster</a>.</li>\n<li>Wykryto podatność typu cross-site scripting (XSS). Objawia się podczas próby wgrania bardzo dużych plików. Zgłosił to <a href=\"https://dk.linkedin.com/in/ronni-skansing-36143b65\">Ronni Skansing</a>.</li>\n<li>Wykryto podatność typu cross-site scripting (XSS). Ma ona związek z mechanizmem Personalizacji witryn. Zgłosił to <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a> z Zespołu Bezpieczeństwa WordPressa.</li>\n</ol>\n<p>Dziękujemy zgłaszającym za <a href=\"https://make.wordpress.org/core/handbook/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> problemów z bezpieczeństwem.</p>\n<p>Oprócz powyższych problemów z bezpieczeństwem, WordPress 4.7.5 naprawia także 3 błędy z wersji 4.7. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.7.5\">notatkach do wydania</a> oraz <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.5&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">liście przeprowadzonych zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.7.5</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.7.5.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/05/17/wordpress-4-7-5-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.7.4 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"https://pl.wordpress.org/2017/04/20/wordpress-4-7-4-wydanie-poprawiajace-bezpieczenstwo-i-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:104:\"https://pl.wordpress.org/2017/04/20/wordpress-4-7-4-wydanie-poprawiajace-bezpieczenstwo-i-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Apr 2017 18:42:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=858\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:490:\"Po niemal 60 milionach pobrań WordPressa 4.7 z radością ogłaszamy dostępność wersji 4.7.4 &#8211; wydania poprawiającego błędy i bezpieczeństwo. Wydanie to zawiera 47 poprawek błędów oraz usprawnień. W szczególności naprawiony został brak kompatybilności między nadchodzącą wersją przeglądarki Chrome i edytorem wizualnym, jak również poprawiono braki w spójności obsługi mediów, a także wprowadzono dalsze ulepszenia API REST. Więcej informacji [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4736:\"<p>Po niemal 60 milionach pobrań WordPressa 4.7 z radością ogłaszamy dostępność wersji 4.7.4 &#8211; <strong>wydania poprawiającego błędy i bezpieczeństwo.</strong></p>\n<p><span id=\"more-858\"></span></p>\n<p>Wydanie to zawiera 47 poprawek błędów oraz usprawnień. W szczególności naprawiony został brak kompatybilności między nadchodzącą wersją przeglądarki Chrome i edytorem wizualnym, jak również poprawiono braki w spójności obsługi mediów, a także wprowadzono dalsze ulepszenia API REST. Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.7.4\">notatkach do wydania</a> oraz <a href=\"https://core.trac.wordpress.org/log/branches/4.7?rev=40487&amp;stop_rev=40224\">liście przeprowadzonych zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPressa 4.7.4</a> lub udaj się do sekcji <strong>Kokpit → Aktualizacje</strong> panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.7.4:<br />\n<a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/aussieguy123/\">aussieguy123</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">Blobfolio</a>, <a href=\"https://profiles.wordpress.org/boldwater/\">boldwater</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/chesio/\">chesio</a>, <a href=\"https://profiles.wordpress.org/curdin/\">Curdin Krummenacher</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber/\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/nerrad/\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/davidbenton/\">davidbenton</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/eclev91/\">eclev91</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/ghosttoast/\">Gustave F. Gerhardt</a>, <a href=\"https://profiles.wordpress.org/ig_communitysites/\">ig_communitysites</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/joedolson/\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/karinedo/\">karinedo</a>, <a href=\"https://profiles.wordpress.org/lukasbesch/\">lukasbesch</a>, <a href=\"https://profiles.wordpress.org/maguiar/\">maguiar</a>, <a href=\"https://profiles.wordpress.org/matheusgimenez/\">MatheusGimenez</a>, <a href=\"https://profiles.wordpress.org/mboynes/\">Matthew Boynes</a>, <a href=\"https://profiles.wordpress.org/mattwiebe/\">Matt Wiebe</a>, <a href=\"https://profiles.wordpress.org/mayurk/\">Mayur Keshwani</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/delawski/\">Piotr Delawski</a>, <a href=\"https://profiles.wordpress.org/pratikshrestha/\">Pratik Shrestha</a>, <a href=\"https://profiles.wordpress.org/programmin/\">programmin</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/sagarkbhatt/\">sagarkbhatt</a>, <a href=\"https://profiles.wordpress.org/sagarprajapati/\">Sagar Prajapati</a>, <a href=\"https://profiles.wordpress.org/sboisvert/\">sboisvert</a>, <a href=\"https://profiles.wordpress.org/wonderboymusic/\">Scott Taylor</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/cybr/\">Sybre Waaijer</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford/\">Timmy Crawford</a>, <a href=\"https://profiles.wordpress.org/vortfu/\">vortfu</a> oraz <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://pl.wordpress.org/2017/04/20/wordpress-4-7-4-wydanie-poprawiajace-bezpieczenstwo-i-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WordCamp Lublin 2017 zaprasza!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://pl.wordpress.org/2017/03/22/wordcamp-lublin-2017-zaprasza/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://pl.wordpress.org/2017/03/22/wordcamp-lublin-2017-zaprasza/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Mar 2017 13:27:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Wydarzenia\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=760\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:423:\"W dniach 2-4 czerwca br. odbędzie się kolejna edycja polskiego WordCampa &#8211; konferencji poświęconej WordPressowi. Tym razem programiści, koderzy, blogerzy i inne osoby korzystające na co dzień z WordPressa spotkają się w Lublinie. W ramach konferencji odbędą się: 2 czerwca: contributor day Contributor Day to specjalne spotkanie podczas którego każdy będzie miał możliwość dołączenia do [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1614:\"<p>W dniach 2-4 czerwca br. odbędzie się kolejna edycja polskiego WordCampa &#8211; konferencji poświęconej WordPressowi. Tym razem programiści, koderzy, blogerzy i inne osoby korzystające na co dzień z WordPressa spotkają się w Lublinie.</p>\n<p>W ramach konferencji odbędą się:</p>\n<h2>2 czerwca: contributor day</h2>\n<p><a href=\"https://2017.lublin.wordcamp.org/czym-jest-contributor-day/\">Contributor Day</a> to specjalne spotkanie podczas którego każdy będzie miał możliwość dołączenia do osób tworzących zarówno WordPressa jak i powiązanych z nim projektów. Oznacza to również, że będzie to świetna okazja do wspólnej pracy nad polskimi tłumaczeniami.</p>\n<h2>3-4 czerwca: prelekcje i warsztaty</h2>\n<p>Podczas prezentacji i warsztatów będzie można nabyć solidną porcję wiedzy od najlepszych ekspertów WordPressa z kraju i z zagranicy. Dodatkowo, uczestnicy będą mogli wziąć udział w specjalnie przygotowanej grze konferencyjnej oraz wieczornej imprezie integracyjnej.</p>\n<p>WordCamp organizowany jest przez społeczność WordPressa, w tym także przez Ciebie! Jeśli chciałbyś pomóc &#8211; wystąpić na scenie, poprowadzić warsztaty lub zostać sponsorem koniecznie daj znać:</p>\n<ul>\n<li><a href=\"https://2017.lublin.wordcamp.org/zostan-prelegentem/\">zgłoszenia prelegentów i osób prowadzących warsztaty</a></li>\n<li><a href=\"https://2017.lublin.wordcamp.org/zostan-sponsorem/\">zgłoszenia sponsorów</a></li>\n</ul>\n<p>Po więcej informacji zapraszamy na oficjalną stronę: <a href=\"https://2017.lublin.wordcamp.org/\">WordCamp Lublin 2017</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://pl.wordpress.org/2017/03/22/wordcamp-lublin-2017-zaprasza/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress 4.7.3 – Wydanie poprawiające bezpieczeństwo i błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://pl.wordpress.org/2017/03/07/wordpress-4-7-3-wydanie/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://pl.wordpress.org/2017/03/07/wordpress-4-7-3-wydanie/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 Mar 2017 07:29:45 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=753\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:474:\"WordPress 4.7.3 jest już dostępny. Wersja poprawia bezpieczeństwo we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn. WordPress 4.7.2 oraz wcześniejsze posiadają sześć podatności: Cross-site scripting (XSS) za pomocą metadanych plików multimedialnych. Zgłoszone przez Chris Andrè Dale, Yorick Koster, and Simon P. Briggs. Znaki kontrolne mogą oszukać walidacji adresu URL przekierowania. Zgłoszone przez Daniel [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6307:\"<p>WordPress 4.7.3 jest już dostępny. Wersja poprawia <strong>bezpieczeństwo</strong> we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn.</p>\n<p>WordPress 4.7.2 oraz wcześniejsze posiadają sześć podatności:</p>\n<ol>\n<li>Cross-site scripting (XSS) za pomocą metadanych plików multimedialnych. Zgłoszone przez <a href=\"https://www.securesolutions.no/\">Chris Andrè Dale</a>, <a href=\"https://twitter.com/yorickkoster\">Yorick Koster</a>, and Simon P. Briggs.</li>\n<li>Znaki kontrolne mogą oszukać walidacji adresu URL przekierowania. Zgłoszone przez <a href=\"http://www.danielchatfield.com/\">Daniel Chatfield</a>.</li>\n<li>Pliki niezwiązane z wtyczką, mogą być usuwane korzystając z funkcjonalności usunięcia wtyczki. Zgłoszone przez <a href=\"http://b.360.cn/\">xuliang</a>.</li>\n<li>Cross-site scripting (XSS) za pośrednictwem adresu URL YouTube. Zgłoszone przez <a href=\"https://twitter.com/marcs0h\">Marc Montpas</a>.</li>\n<li>Cross-site scripting (XSS) poprzez nazwę taksonomii. Zgłoszone przez <a href=\"https://profiles.wordpress.org/deltamgm2\">Delta</a>.</li>\n<li>Cross-site request forgery (CSRF) w Press This! co prowadzi do nadmiernego wykorzystania zasobów serwera. Zgłoszone przez Sipke Mellema.</li>\n</ol>\n<p>Dziękujemy raportującym za głoszenia zgodne z praktyką <a href=\"//make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawniania</a> (tekst po angielsku).</p>\n<p>W uzupełnieniu do powyższych kwestii bezpieczeństwa, WordPress 4.7.3 zawiera 39 poprawek serwisowych dla serii 4.7. Aby uzyskać więcej informacji, zobacz <a href=\"https://codex.wordpress.org/Version_4.7.3\">informacje o wydaniu</a> (tekst po angielsku) oraz zapoznaj się z <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.7.3&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">listą zmian</a>.</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPress 4.7.3</a> lub przejdź do kokpitu → Aktualizacje i kliknij „Zaktualizuj teraz”. Witryny które obsługują automatyczne aktualizacje powinny już być uaktualnione do WordPressa 4.7.3.</p>\n<p>Dziekujemy wszystkim, którzy dołożyli się do wydania 4.7.3: <a href=\"https://profiles.wordpress.org/aaroncampbell/\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/xknown/\">Alex Concha</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/asalce/\">asalce</a>, <a href=\"https://profiles.wordpress.org/blobfolio/\">blobfolio</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/bradyvercher/\">Brady Vercher</a>, <a href=\"https://profiles.wordpress.org/drrobotnik/\">Brandon Lavigne</a>, <a href=\"https://profiles.wordpress.org/bhargavbhandari90/\">Bunty</a>, <a href=\"https://profiles.wordpress.org/ccprog/\">ccprog</a>, <a href=\"https://profiles.wordpress.org/ketuchetan/\">chetansatasiya</a>, <a href=\"https://profiles.wordpress.org/davidakennedy/\">David A. Kennedy</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dhanendran/\">Dhanendran</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling (ocean90)</a>, <a href=\"https://profiles.wordpress.org/drivingralle/\">Drivingralle</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella Van Dorpe</a>, <a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/iandunn/\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ipstenu/\">Ipstenu (Mika Epstein)</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jazbek/\">jazbek</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/jpry/\">Jeremy Pry</a>, <a href=\"https://profiles.wordpress.org/joehoyle/\">Joe Hoyle</a>, <a href=\"https://profiles.wordpress.org/joemcgill/\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion/\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby/\">John James Jacoby</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/ryelle/\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/markoheijnen/\">Marko Heijnen</a>, <a href=\"https://profiles.wordpress.org/matheusgimenez/\">MatheusGimenez</a>, <a href=\"https://profiles.wordpress.org/mnelson4/\">Mike Nelson</a>, <a href=\"https://profiles.wordpress.org/mikeschroder/\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/codegeass/\">Muhammet Arslan</a>, <a href=\"https://profiles.wordpress.org/celloexpressions/\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/swissspidy/\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/pbearne/\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pavelevap/\">pavelevap</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/rachelbaker/\">Rachel Baker</a>, <a href=\"https://profiles.wordpress.org/reldev/\">reldev</a>, <a href=\"https://profiles.wordpress.org/sanchothefat/\">Robert O’Rourke</a>, <a href=\"https://profiles.wordpress.org/welcher/\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/sanketparmar/\">Sanket Parmar</a>, <a href=\"https://profiles.wordpress.org/seanchayes/\">Sean Hayes</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/triplejumper12/\">triplejumper12</a>, <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>, and <a href=\"https://profiles.wordpress.org/wpfo/\">wpfo</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://pl.wordpress.org/2017/03/07/wordpress-4-7-3-wydanie/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress 4.7.2 – Wydanie poprawiające bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2017/01/29/wordpress-4-7-2-wydanie-poprawiajace-bezpieczenstwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://pl.wordpress.org/2017/01/29/wordpress-4-7-2-wydanie-poprawiajace-bezpieczenstwo/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 29 Jan 2017 08:46:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=739\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:483:\"WordPress 4.7.2 jest już dostępny. Wersja poprawia bezpieczeństwo we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn. WordPress 4.7.1 oraz wcześniejsze wersje posiadają następujące podaności: Interfejs użytkownika służący do przypisywania taksonomii w &#8222;Press This&#8221; jest widoczny dla użytkowników, którzy nie mają uprawnień, aby go używać. Zgłoszone przez Davida Herrera Alley Interactive. Klasa WP_Query [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Marcin Pietrzak\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1642:\"<p>WordPress 4.7.2 jest już dostępny. Wersja <strong>poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach, a my zachęcamy do niezwłocznej aktualizacji witryn.</p>\n<p>WordPress 4.7.1 oraz wcześniejsze wersje posiadają następujące podaności:</p>\n<ol>\n<li>Interfejs użytkownika służący do przypisywania taksonomii w &#8222;Press This&#8221; jest widoczny dla użytkowników, którzy nie mają uprawnień, aby go używać. Zgłoszone przez Davida Herrera <a href=\"https://www.alleyinteractive.com/\">Alley Interactive</a>.</li>\n<li>Klasa <code>WP_Query</code> jest podatna na SQL injection (SQLi) podczas przetwarzania niebezpiecznych danych. Sam WordPress nie jest bezpośrednio narażony na ten problem, ale dodaliśmy zabezpieczenie, aby zapobiec przypadkowemu użycia podaności we wtyczkach i motywach. Zgłoszone przez <a href=\"https://github.com/mjangda\">Mo Jangda</a> (batmoo).</li>\n<li>Podatność cross-site scripting (XSS) została odkryta w tabeli z listą wpisów. Zgłoszone przez <a href=\"https://iandunn.name/\">Ian Dunn</a> z WordPress Security Team.</li>\n</ol>\n<p>Dziękujemy raportującym za głoszenia zgodne z praktyką <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialnego ujawniania</a> (tekst po angielsku).</p>\n<p><a href=\"https://pl.wordpress.org/\">Pobierz WordPress 4.7.2</a> lub przejdź do kokpitu → Aktualizacje i kliknij &#8222;Zaktualizuj teraz&#8221;. Witryny które obsługują automatyczne aktualizacje powinny już być uaktualnione do WordPressa 4.7.2.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do 4.7.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2017/01/29/wordpress-4-7-2-wydanie-poprawiajace-bezpieczenstwo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"WordPress 4.5.2 – Wydanie poprawiające bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://pl.wordpress.org/2016/05/12/wordpress-4-5-2-wydanie-poprawiajace-bezpieczenstwo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://pl.wordpress.org/2016/05/12/wordpress-4-5-2-wydanie-poprawiajace-bezpieczenstwo/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 May 2016 11:04:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:15:\"Bezpieczeństwo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=718\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:435:\"WordPress 4.5.2 jest już dostępny. To wydanie poprawia bezpieczeństwo we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji. WordPress w wersjach 4.5.1 i wcześniejszych jest podatny na atak metodą SOME przez błąd bezpieczeństwa w Plupload – zewnętrznej bibliotece, której WordPress używa do wgrywania plików. WordPress w wersjach 4.2 do 4.5.1 jest podatny na atak [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2085:\"<p>WordPress 4.5.2 jest już dostępny. <strong>To wydanie poprawia bezpieczeństwo</strong> we wszystkich poprzednich wersjach systemu. Zalecane jest natychmiastowe przeprowadzenie aktualizacji.</p>\n<p><span id=\"more-718\"></span></p>\n<p>WordPress w wersjach 4.5.1 i wcześniejszych jest podatny na atak metodą <abbr title=\"Same-Origin Method Execution\">SOME</abbr> przez błąd bezpieczeństwa w Plupload – zewnętrznej bibliotece, której WordPress używa do wgrywania plików. WordPress w wersjach 4.2 do 4.5.1 jest podatny na atak metodą reflected XSS przez użycie specjalnie spreparowanych adresów URI dla MediaElement.js – zewnętrznej biblioteki, używanej przez odtwarzacze mediów. Biblioteki MediaElement.js i Plupload także zostały zaktualizowane przez ich autorów w celu poprawienia tych błędów bezpieczeństwa.</p>\n<p>Obydwa problemy zostały wykryli i zgłosili: Mario Heiderich, Masato Kinugawa i Filedescriptor z <a href=\"https://cure53.de/\">Cure53</a>. Dziękujemy zespołowi za <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">odpowiedzialne ujawnienie</a> tych problemów, a także zespołom bibliotek Plupload i MediaElement.js za ścisłą współpracę z nami w celu usunięcia tych błędów.</p>\n<p><a href=\"https://wordpress.org/download/\">Pobierz WordPressa 4.5.2</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Informujemy także, że publiczny rozgłos uzyskały ostatnio problemy bezpieczeństwa wykryte w bibliotece przetwarzającej obrazy ImageMagick, używanej przez wielu dostawców hostingowych, którą może wykorzystywać również WordPress. Nasze aktualne stanowisko na temat tych problemów oraz zalecenia można poznać <a href=\"https://make.wordpress.org/core/2016/05/06/imagemagick-vulnerability-information/\">czytając ten wpis na blogu o tworzeniu rdzenia systemu</a> (w języku angielskim).</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://pl.wordpress.org/2016/05/12/wordpress-4-5-2-wydanie-poprawiajace-bezpieczenstwo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"12\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 4.5.1 – Wydanie poprawiające błędy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://pl.wordpress.org/2016/04/26/wordpress-4-5-1-wydanie-poprawiajace-bledy/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://pl.wordpress.org/2016/04/26/wordpress-4-5-1-wydanie-poprawiajace-bledy/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 26 Apr 2016 15:32:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Wydanie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://pl.wordpress.org/?p=726\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:457:\"Po około sześciu milionach pobrań WordPressa 4.5 z przyjemnością oznajmiamy dostępność aktualizacji poprawiającej błędy &#8211; WordPressa w wersji 4.5.1. To wydanie naprawia 12 błędów, w tym: problem z klasą singular, który psuł witryny używające motywu Twenty Eleven, brak kompatybilności edytora wizualnego z pewnymi wersjami przeglądarki Chrome, a także błąd w Imagick, który mógł powodować niewłaściwe wgrywanie [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Krzysztof Trynkiewicz (Sukces Strony)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2252:\"<p>Po około sześciu milionach pobrań WordPressa 4.5 z przyjemnością oznajmiamy dostępność aktualizacji poprawiającej błędy &#8211; WordPressa w wersji 4.5.1.</p>\n<p><span id=\"more-726\"></span></p>\n<p>To wydanie naprawia 12 błędów, w tym: problem z klasą singular, który psuł witryny używające motywu Twenty Eleven, brak kompatybilności edytora wizualnego z pewnymi wersjami przeglądarki Chrome, a także błąd w Imagick, który mógł powodować niewłaściwe wgrywanie plików mediów. To wydanie poprawiające błędy naprawia łącznie 12 problemów występujących w wersji 4.5 WordPressa. <span style=\"line-height: 1.5\">Więcej informacji można znaleźć w <a href=\"https://codex.wordpress.org/Version_4.5.1\">notatkach do wydania</a> oraz <a href=\"https://core.trac.wordpress.org/log/branches/4.5?rev=37295&amp;stop_rev=37182\">liście przeprowadzonych zmian</a>.</span></p>\n<p><a href=\"https://wordpress.org/download/\">Pobierz WordPressa 4.5.1</a> lub udaj się do sekcji Kokpit → Aktualizacje panelu administracyjnego i po prostu kliknij przycisk „Zaktualizuj teraz”. Witryny, które obsługują automatyczne aktualizacje, rozpoczęły już ich przeprowadzanie.</p>\n<p>Dziękujemy wszystkim, którzy przyczynili się do powstania wersji 4.5.1:</p>\n<p><a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/pento\">Gary Pendergast</a>, <a href=\"https://profiles.wordpress.org/gblsm\">gblsm</a>, <a href=\"https://profiles.wordpress.org/helen\">Helen Hou-Sandi</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a> oraz <a href=\"https://profiles.wordpress.org/WiZZarD_\">Pieter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://pl.wordpress.org/2016/04/26/wordpress-4-5-1-wydanie-poprawiajace-bledy/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:30:\"https://pl.wordpress.org/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Sun, 22 Oct 2017 06:49:29 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Thu, 12 Oct 2017 07:03:53 GMT\";s:4:\"link\";s:61:\"<https://pl.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(166, 'wd_bwg_version', '1.3.58', 'no'),
(167, 'wd_bwg_theme_version', '1.0.0', 'no'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(169, 'widget_bwp_gallery', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(170, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(171, '_transient_timeout_plugin_slugs', '1506372829', 'no'),
(172, '_transient_plugin_slugs', 'a:3:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:31:\"photo-gallery/photo-gallery.php\";}', 'no'),
(173, 'bwg_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:9:\"9/30/2017\";s:3:\"int\";i:14;}}', 'yes'),
(141, 'theme_mods_twentyfifteen', 'a:14:{s:18:\"custom_css_post_id\";i:-1;s:16:\"header_textcolor\";s:5:\"blank\";s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:4;s:6:\"social\";i:0;}s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:4:\"fill\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:5:\"cover\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:16:\"background_color\";s:6:\"111111\";s:17:\"sidebar_textcolor\";s:7:\"#bebebe\";s:23:\"header_background_color\";s:7:\"#202020\";s:12:\"color_scheme\";s:4:\"dark\";s:12:\"header_image\";s:13:\"remove-header\";}', 'yes'),
(142, 'theme_mods_twentysixteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(144, 'current_theme', 'Twenty Fifteen', 'yes'),
(145, 'theme_switched', '', 'yes'),
(146, 'theme_switched_via_customizer', '', 'yes'),
(147, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:4;}}', 'yes'),
(148, 'customize_stashed_theme_mods', 'a:1:{s:15:\"twentyseventeen\";a:8:{s:23:\"nav_menu_locations[top]\";a:4:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-1;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}s:26:\"nav_menu_locations[social]\";a:4:{s:15:\"starter_content\";b:1;s:5:\"value\";i:-5;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}s:7:\"panel_1\";a:4:{s:15:\"starter_content\";b:1;s:5:\"value\";i:11;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}s:7:\"panel_2\";a:4:{s:15:\"starter_content\";b:1;s:5:\"value\";i:8;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}s:7:\"panel_3\";a:4:{s:15:\"starter_content\";b:1;s:5:\"value\";i:10;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}s:7:\"panel_4\";a:4:{s:15:\"starter_content\";b:1;s:5:\"value\";i:9;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}s:16:\"header_textcolor\";a:3:{s:5:\"value\";s:5:\"blank\";s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}s:11:\"colorscheme\";a:3:{s:5:\"value\";s:4:\"dark\";s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;}}}', 'no'),
(150, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:\"Layout\";a:7:{i:0;s:11:\"grid-layout\";i:1;s:10:\"one-column\";i:2;s:11:\"two-columns\";i:3;s:13:\"three-columns\";i:4;s:12:\"four-columns\";i:5;s:12:\"left-sidebar\";i:6;s:13:\"right-sidebar\";}s:8:\"Features\";a:20:{i:0;s:19:\"accessibility-ready\";i:1;s:10:\"buddypress\";i:2;s:17:\"custom-background\";i:3;s:13:\"custom-colors\";i:4;s:13:\"custom-header\";i:5;s:11:\"custom-menu\";i:6;s:12:\"editor-style\";i:7;s:21:\"featured-image-header\";i:8;s:15:\"featured-images\";i:9;s:15:\"flexible-header\";i:10;s:14:\"footer-widgets\";i:11;s:20:\"front-page-post-form\";i:12;s:19:\"full-width-template\";i:13;s:12:\"microformats\";i:14;s:12:\"post-formats\";i:15;s:20:\"rtl-language-support\";i:16;s:11:\"sticky-post\";i:17;s:13:\"theme-options\";i:18;s:17:\"threaded-comments\";i:19;s:17:\"translation-ready\";}s:7:\"Subject\";a:9:{i:0;s:4:\"blog\";i:1;s:10:\"e-commerce\";i:2;s:9:\"education\";i:3;s:13:\"entertainment\";i:4;s:14:\"food-and-drink\";i:5;s:7:\"holiday\";i:6;s:4:\"news\";i:7;s:11:\"photography\";i:8;s:9:\"portfolio\";}}', 'no'),
(160, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1505604910', 'no'),
(161, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4378;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2503;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2373;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2296;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1832;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1603;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1590;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1440;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1356;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1351;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1344;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1277;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1273;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1135;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1056;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1050;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:998;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:945;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:818;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:815;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:808;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:774;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:772;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:670;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:670;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:664;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:654;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:645;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:645;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:636;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:624;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:610;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:594;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:594;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:589;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:583;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:576;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:574;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:561;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:557;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:543;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:535;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:524;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:517;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:505;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:502;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:495;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:488;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:477;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:475;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:473;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:469;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:448;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:444;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:442;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:440;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:440;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:435;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:420;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:418;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:410;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:407;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:405;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:405;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:401;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:396;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:385;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:383;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:381;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:370;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:353;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:344;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:340;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:332;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:332;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:330;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:330;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:330;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:326;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:326;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:321;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:321;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:321;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:312;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:302;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:300;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:293;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:292;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:291;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:286;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:286;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:284;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:283;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:279;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:277;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:274;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:272;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:272;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:271;}}', 'no'),
(291, '_site_transient_browser_ae7243d6fcce16c4a1bb2c2339d3a779', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"61.0.3163.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(174, 'bwg_subscribe_done', '1', 'yes'),
(239, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:14:\"pablo-dx@o2.pl\";s:7:\"version\";s:5:\"4.8.4\";s:9:\"timestamp\";i:1513461410;}', 'no'),
(290, '_site_transient_timeout_browser_ae7243d6fcce16c4a1bb2c2339d3a779', '1509259766', 'no'),
(355, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515582541;s:8:\"response\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:7:\"default\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";s:7:\"default\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"photo-gallery/photo-gallery.php\";O:8:\"stdClass\":11:{s:2:\"id\";s:27:\"w.org/plugins/photo-gallery\";s:4:\"slug\";s:13:\"photo-gallery\";s:6:\"plugin\";s:31:\"photo-gallery/photo-gallery.php\";s:11:\"new_version\";s:6:\"1.3.67\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/photo-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/photo-gallery.1.3.67.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-128x128.png?rev=1508783\";s:7:\"default\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-128x128.png?rev=1508783\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/photo-gallery/assets/banner-772x250.jpg?rev=1505235\";s:7:\"default\";s:68:\"https://ps.w.org/photo-gallery/assets/banner-772x250.jpg?rev=1505235\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.1\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:7:\"default\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";}s:7:\"banners\";a:2:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";s:7:\"default\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(329, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-4.9.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.1\";s:7:\"version\";s:5:\"4.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1515582537;s:15:\"version_checked\";s:5:\"4.8.4\";s:12:\"translations\";a:0:{}}', 'no'),
(354, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1515582542;s:7:\"checked\";a:3:{s:13:\"twentyfifteen\";s:3:\"1.8\";s:15:\"twentyseventeen\";s:3:\"1.3\";s:13:\"twentysixteen\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.1.9.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.4.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.4.zip\";}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(268, 91, '_menu_item_xfn', ''),
(162, 52, '_menu_item_target', ''),
(163, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(164, 52, '_menu_item_xfn', ''),
(165, 52, '_menu_item_url', ''),
(175, 56, '_menu_item_object', 'page'),
(176, 56, '_menu_item_target', ''),
(177, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(178, 56, '_menu_item_xfn', ''),
(179, 56, '_menu_item_url', ''),
(180, 58, '_edit_last', '1'),
(181, 58, '_edit_lock', '1506286284:1'),
(182, 59, '_menu_item_type', 'post_type'),
(183, 59, '_menu_item_menu_item_parent', '0'),
(184, 59, '_menu_item_object_id', '58'),
(185, 59, '_menu_item_object', 'page'),
(186, 59, '_menu_item_target', ''),
(187, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 59, '_menu_item_xfn', ''),
(189, 59, '_menu_item_url', ''),
(161, 52, '_menu_item_object', 'page'),
(143, 50, '_menu_item_menu_item_parent', '0'),
(144, 50, '_menu_item_object_id', '42'),
(145, 50, '_menu_item_object', 'page'),
(146, 50, '_menu_item_target', ''),
(147, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 50, '_menu_item_xfn', ''),
(149, 50, '_menu_item_url', ''),
(150, 51, '_menu_item_type', 'post_type'),
(151, 51, '_menu_item_menu_item_parent', '0'),
(152, 51, '_menu_item_object_id', '39'),
(153, 51, '_menu_item_object', 'page'),
(154, 51, '_menu_item_target', ''),
(155, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(156, 51, '_menu_item_xfn', ''),
(157, 51, '_menu_item_url', ''),
(158, 52, '_menu_item_type', 'post_type'),
(159, 52, '_menu_item_menu_item_parent', '0'),
(160, 52, '_menu_item_object_id', '31'),
(142, 50, '_menu_item_type', 'post_type'),
(136, 39, '_edit_last', '1'),
(137, 39, '_edit_lock', '1505631948:1'),
(138, 42, '_edit_last', '1'),
(139, 42, '_edit_lock', '1505631959:1'),
(135, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:575;s:4:\"file\";s:18:\"2017/09/mlyn_2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"mlyn_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"mlyn_2-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"mlyn_2-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"mlyn_2-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:18:\"mlyn_2-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:9:\"DSLR-A200\";s:7:\"caption\";s:8:\"SONY DSC\";s:17:\"created_timestamp\";s:10:\"1400355238\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:8:\"SONY DSC\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(134, 34, '_wp_attached_file', '2017/09/mlyn_2.jpg'),
(173, 56, '_menu_item_menu_item_parent', '0'),
(131, 31, '_edit_lock', '1505597000:1'),
(130, 31, '_edit_last', '1'),
(174, 56, '_menu_item_object_id', '54'),
(171, 54, '_edit_lock', '1505634847:1'),
(172, 56, '_menu_item_type', 'post_type'),
(170, 54, '_edit_last', '1'),
(231, 79, '_menu_item_menu_item_parent', '0'),
(230, 79, '_menu_item_type', 'post_type'),
(229, 78, '_edit_lock', '1505801706:1'),
(228, 78, '_edit_last', '1'),
(225, 75, '_menu_item_url', ''),
(224, 75, '_menu_item_xfn', ''),
(223, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(222, 75, '_menu_item_target', ''),
(221, 75, '_menu_item_object', 'page'),
(220, 75, '_menu_item_object_id', '74'),
(219, 75, '_menu_item_menu_item_parent', '0'),
(218, 75, '_menu_item_type', 'post_type'),
(217, 74, '_edit_lock', '1505721217:1'),
(216, 74, '_edit_last', '1'),
(215, 72, '_menu_item_url', ''),
(214, 72, '_menu_item_xfn', ''),
(213, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(212, 72, '_menu_item_target', ''),
(211, 72, '_menu_item_object', 'page'),
(210, 72, '_menu_item_object_id', '70'),
(209, 72, '_menu_item_menu_item_parent', '0'),
(208, 72, '_menu_item_type', 'post_type'),
(207, 70, '_edit_lock', '1505686684:1'),
(206, 70, '_edit_last', '1'),
(269, 91, '_menu_item_url', ''),
(192, 34, '_wp_attachment_is_custom_background', 'twentyfifteen'),
(267, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(195, 63, '_wp_attached_file', '2017/09/cropped-mlyn_2.jpg'),
(196, 63, '_wp_attachment_context', 'custom-header'),
(197, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:954;s:6:\"height\";i:1300;s:4:\"file\";s:26:\"2017/09/cropped-mlyn_2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-mlyn_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-mlyn_2-220x300.jpg\";s:5:\"width\";i:220;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"cropped-mlyn_2-768x1047.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1047;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"cropped-mlyn_2-751x1024.jpg\";s:5:\"width\";i:751;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-mlyn_2-825x510.jpg\";s:5:\"width\";i:825;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(264, 91, '_menu_item_object_id', '90'),
(265, 91, '_menu_item_object', 'page'),
(266, 91, '_menu_item_target', ''),
(263, 91, '_menu_item_menu_item_parent', '0'),
(262, 91, '_menu_item_type', 'post_type'),
(232, 79, '_menu_item_object_id', '78'),
(233, 79, '_menu_item_object', 'page'),
(234, 79, '_menu_item_target', ''),
(235, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(236, 79, '_menu_item_xfn', ''),
(237, 79, '_menu_item_url', ''),
(238, 81, '_edit_last', '1'),
(239, 81, '_edit_lock', '1505801745:1'),
(240, 82, '_menu_item_type', 'post_type'),
(241, 82, '_menu_item_menu_item_parent', '0'),
(242, 82, '_menu_item_object_id', '81'),
(243, 82, '_menu_item_object', 'page'),
(244, 82, '_menu_item_target', ''),
(245, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(246, 82, '_menu_item_xfn', ''),
(247, 82, '_menu_item_url', ''),
(261, 90, '_edit_lock', '1508658558:1'),
(260, 90, '_edit_last', '1'),
(250, 86, '_edit_last', '1'),
(251, 86, '_edit_lock', '1507365647:1'),
(252, 87, '_menu_item_type', 'post_type'),
(253, 87, '_menu_item_menu_item_parent', '0'),
(254, 87, '_menu_item_object_id', '86'),
(255, 87, '_menu_item_object', 'page'),
(256, 87, '_menu_item_target', ''),
(257, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 87, '_menu_item_xfn', ''),
(259, 87, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(87, 1, '2017-10-07 10:43:05', '2017-10-07 08:43:05', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/10/07/87/', 4, 'nav_menu_item', '', 0),
(94, 1, '2017-10-22 10:24:33', '2017-10-22 08:24:33', '[Best_Wordpress_Gallery id=\"12\" gal_title=\"wip\"]', 'wip', '', 'publish', 'closed', 'closed', '', 'wip', '', '', '2017-10-22 10:24:33', '2017-10-22 08:24:33', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/wip/', 0, 'bwg_gallery', '', 0),
(95, 1, '2017-10-22 10:24:33', '2017-10-22 08:24:33', '[Best_Wordpress_Gallery id=\"13\" gal_title=\"borysew\"]', 'borysew', '', 'publish', 'closed', 'closed', '', 'borysew', '', '', '2017-10-22 10:24:33', '2017-10-22 08:24:33', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/borysew/', 0, 'bwg_gallery', '', 0),
(96, 1, '2017-10-22 10:24:33', '2017-10-22 08:24:33', '[Best_Wordpress_Gallery id=\"14\" gal_title=\"bieszczady\"]', 'bieszczady', '', 'publish', 'closed', 'closed', '', 'bieszczady', '', '', '2017-10-22 10:24:33', '2017-10-22 08:24:33', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/bieszczady/', 0, 'bwg_gallery', '', 0),
(97, 1, '2017-10-22 10:24:34', '2017-10-22 08:24:34', '[Best_Wordpress_Gallery id=\"15\" gal_title=\"zamek_grodno\"]', 'zamek_grodno', '', 'publish', 'closed', 'closed', '', 'zamek_grodno', '', '', '2017-10-22 10:24:34', '2017-10-22 08:24:34', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/zamek_grodno/', 0, 'bwg_gallery', '', 0),
(98, 1, '2017-10-22 10:24:34', '2017-10-22 08:24:34', '[Best_Wordpress_Gallery id=\"16\" gal_title=\"breslau\"]', 'breslau', '', 'publish', 'closed', 'closed', '', 'breslau', '', '', '2017-10-22 10:24:34', '2017-10-22 08:24:34', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/breslau/', 0, 'bwg_gallery', '', 0),
(99, 1, '2017-10-22 10:24:34', '2017-10-22 08:24:34', '[Best_Wordpress_Gallery id=\"17\" gal_title=\"lublin\"]', 'lublin', '', 'publish', 'closed', 'closed', '', 'lublin', '', '', '2017-10-22 10:24:34', '2017-10-22 08:24:34', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/lublin/', 0, 'bwg_gallery', '', 0),
(100, 1, '2017-10-22 10:24:34', '2017-10-22 08:24:34', '[Best_Wordpress_Gallery id=\"18\" gal_title=\"polcon\"]', 'polcon', '', 'publish', 'closed', 'closed', '', 'polcon', '', '', '2017-10-22 10:24:34', '2017-10-22 08:24:34', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/polcon/', 0, 'bwg_gallery', '', 0),
(101, 1, '2017-10-22 10:24:34', '2017-10-22 08:24:34', '[Best_Wordpress_Gallery id=\"19\" gal_title=\"llf\"]', 'llf', '', 'publish', 'closed', 'closed', '', 'llf', '', '', '2017-10-22 10:24:34', '2017-10-22 08:24:34', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/llf/', 0, 'bwg_gallery', '', 0),
(102, 1, '2017-10-22 10:24:34', '2017-10-22 08:24:34', '[Best_Wordpress_Gallery id=\"20\" gal_title=\"botanik\"]', 'botanik', '', 'publish', 'closed', 'closed', '', 'botanik', '', '', '2017-10-22 10:24:34', '2017-10-22 08:24:34', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/botanik/', 0, 'bwg_gallery', '', 0),
(76, 1, '2017-09-18 09:55:55', '2017-09-18 07:55:55', '[Best_Wordpress_Gallery id=\"6\" gal_title=\"breslau\"]', 'Wrocław - zoo', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-09-18 09:55:55', '2017-09-18 07:55:55', '', 74, 'http://przezobiektyw.c0.pl/2017/09/18/74-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2017-09-18 09:55:55', '2017-09-18 07:55:55', '', 'Wrocław – zoo', '', 'publish', 'closed', 'closed', '', '75', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/18/75/', 9, 'nav_menu_item', '', 0),
(74, 1, '2017-09-18 09:55:55', '2017-09-18 07:55:55', '[Best_Wordpress_Gallery id=\"6\" gal_title=\"breslau\"]', 'Wrocław - zoo', '', 'publish', 'closed', 'closed', '', 'wroclaw-zoo', '', '', '2017-09-18 09:55:55', '2017-09-18 07:55:55', '', 0, 'http://przezobiektyw.c0.pl/?page_id=74', 0, 'page', '', 0),
(31, 1, '2017-09-16 23:25:16', '2017-09-16 21:25:16', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"skansen\"]\r\n\r\n&nbsp;', 'Muzeum wsi mazowieckiej w Sierpcu', '', 'publish', 'closed', 'closed', '', 'muzeum-wsi-mazowieckiej-w-sierpcu', '', '', '2017-09-16 23:25:16', '2017-09-16 21:25:16', '', 0, 'http://przezobiektyw.c0.pl/?page_id=31', 0, 'page', '', 0),
(32, 1, '2017-09-16 22:11:45', '2017-09-16 20:11:45', '', 'Muzeum wsi mazowieckiej w Sierpcu', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-09-16 22:11:45', '2017-09-16 20:11:45', '', 31, 'http://przezobiektyw.c0.pl/2017/09/16/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-09-16 22:17:03', '2017-09-16 20:17:03', '', '', '', 'inherit', 'open', 'closed', '', 'sony-dsc', '', '', '2017-09-16 22:39:09', '2017-09-16 20:39:09', '', 31, 'http://przezobiektyw.c0.pl/wp-content/uploads/2017/09/mlyn_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2017-09-16 22:34:58', '2017-09-16 20:34:58', '<img class=\"alignleft wp-image-34 size-medium\" src=\"http://przezobiektyw.c0.pl/wp-content/uploads/2017/09/mlyn_2-300x168.jpg\" alt=\"\" width=\"300\" height=\"168\" />\r\n\r\n&nbsp;', 'Muzeum wsi mazowieckiej w Sierpcu', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-09-16 22:34:58', '2017-09-16 20:34:58', '', 31, 'http://przezobiektyw.c0.pl/2017/09/16/31-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-09-16 22:51:36', '2017-09-16 20:51:36', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"skansen\"]\r\n\r\n&nbsp;', 'Muzeum wsi mazowieckiej w Sierpcu', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-09-16 22:51:36', '2017-09-16 20:51:36', '', 31, 'http://przezobiektyw.c0.pl/2017/09/16/31-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-09-16 22:40:12', '2017-09-16 20:40:12', '<img class=\"alignnone size-medium wp-image-34\" src=\"http://przezobiektyw.c0.pl/wp-content/uploads/2017/09/mlyn_2-300x168.jpg\" alt=\"\" width=\"300\" height=\"168\" />[Best_Wordpress_Gallery id=\"1\" gal_title=\"All Galleries\"]\r\n\r\n&nbsp;', 'Muzeum wsi mazowieckiej w Sierpcu', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-09-16 22:40:12', '2017-09-16 20:40:12', '', 31, 'http://przezobiektyw.c0.pl/2017/09/16/31-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-09-17 09:08:09', '2017-09-17 07:08:09', '[Best_Wordpress_Gallery id=\"2\" gal_title=\"wip\"]', 'Wille i pałace w Łodzi', '', 'publish', 'closed', 'closed', '', 'wille-i-palace-w-lodzi', '', '', '2017-09-17 09:08:09', '2017-09-17 07:08:09', '', 0, 'http://przezobiektyw.c0.pl/?page_id=39', 0, 'page', '', 0),
(40, 1, '2017-09-16 23:04:31', '2017-09-16 21:04:31', '', 'Wille i pałace w Łodzi', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-09-16 23:04:31', '2017-09-16 21:04:31', '', 39, 'http://przezobiektyw.c0.pl/2017/09/16/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-09-16 23:10:13', '2017-09-16 21:10:13', '[Best_Wordpress_Gallery id=\"2\" gal_title=\"wip\"]', 'Wille i pałace w Łodzi', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2017-09-16 23:10:13', '2017-09-16 21:10:13', '', 39, 'http://przezobiektyw.c0.pl/2017/09/16/39-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-09-16 22:31:45', '2017-09-16 20:31:45', '<img class=\"alignleft wp-image-34 size-medium\" src=\"http://przezobiektyw.c0.pl/wp-content/uploads/2017/09/mlyn_2-300x168.jpg\" alt=\"\" width=\"300\" height=\"168\" />\r\n<blockquote><b>Muzeum Wsi Mazowieckiej w Sierpcu</b> – skansen założony 24 marca 1971 w Sierpcu, jako regionalne muzeum etnograficzne (założycielem była Powiatowa Rada Narodowa w Sierpcu). Park Etnograficzny powołano w 1975 na terenie resztówki dworskiej Bojanowo. Pierwsze obiekty sprowadzono w latach 1977-1978. Obecna nazwa obowiązuje od 1987<sup id=\"cite_ref-1\" class=\"reference\"><a href=\"https://pl.wikipedia.org/wiki/Muzeum_Wsi_Mazowieckiej_w_Sierpcu#cite_note-1\">[1]</a></sup>.\r\n\r\n&nbsp;\r\n\r\nNa terenie obejmującym 60,5 ha na styku rzek Sierpienicy i Skrwy, zgromadzono ponad 80 obiektów małej i dużej architektury. W skład ekspozycji wchodzi: 11 zagród chłopskich z przełomu XIX i XX wieku; zrekonstruowany dworek szlachecki; XVIII-wieczny kościół drewniany z miejscowości Drążdżewo; drewniany wiatrak reprezentujący najstarszy i najpopularniejszy na terenach Europy typ młynów wiatrowych, [koźlak]; wystawy stałe w Galerii rzeźby ludowej i Powozowni. Obecnie w Muzeum zgromadzonych jest ponad 13 000 eksponatów.\r\n\r\n&nbsp;\r\n\r\nUkład przestrzenny zrekonstruowanej na terenie skansenu wsi rzędowej nawiązuje do najczęściej występującego na ziemiach polskich typu osad rolniczych. Wygląd zagród wiernie odpowiada ich stanowi sprzed translokacji w czasach ich świetności. Sierpecki skansen ulega ciągłej rozbudowie, niebawem zwiedzający będą mieli okazję podziwiać kolejny rodzaj wsi - wieś przydrożną, w skład której wejdzie 38 obiektów, m.in. karczma, kuźnia, budynki plebańskie i kilka zagród.</blockquote>\r\n&nbsp;', 'Muzeum wsi mazowieckiej w Sierpcu', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2017-09-16 22:31:45', '2017-09-16 20:31:45', '', 31, 'http://przezobiektyw.c0.pl/2017/09/16/31-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2017-09-17 09:08:17', '2017-09-17 07:08:17', '[Best_Wordpress_Gallery id=\"3\" gal_title=\"borysew\"]', 'Zoo safari Borysew', '', 'publish', 'closed', 'closed', '', 'zoo-safari-borysew', '', '', '2017-09-17 09:08:17', '2017-09-17 07:08:17', '', 0, 'http://przezobiektyw.c0.pl/?page_id=42', 0, 'page', '', 0),
(43, 1, '2017-09-16 23:20:17', '2017-09-16 21:20:17', '[Best_Wordpress_Gallery id=\"3\" gal_title=\"borysew\"]', 'Zoo safari Borysew', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-09-16 23:20:17', '2017-09-16 21:20:17', '', 42, 'http://przezobiektyw.c0.pl/2017/09/16/42-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-10-22 10:24:33', '2017-10-22 08:24:33', '[Best_Wordpress_Gallery id=\"11\" gal_title=\"skansen\"]', 'skansen', '', 'publish', 'closed', 'closed', '', 'skansen', '', '', '2017-10-22 10:24:33', '2017-10-22 08:24:33', '', 0, 'http://przezobiektyw.c0.pl/bwg_gallery/skansen/', 0, 'bwg_gallery', '', 0),
(88, 1, '2017-10-07 10:43:05', '2017-10-07 08:43:05', '[Best_Wordpress_Gallery id=\"9\" gal_title=\"llf\"]', 'Łódzki Festiwal Świateł', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2017-10-07 10:43:05', '2017-10-07 08:43:05', '', 86, 'http://przezobiektyw.c0.pl/2017/10/07/86-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2017-09-16 23:25:30', '2017-09-16 21:25:30', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"skansen\"]\r\n\r\n&nbsp;', 'Muzeum wsi mazowieckiej w Sierpcu', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2017-09-16 23:25:30', '2017-09-16 21:25:30', '', 31, 'http://przezobiektyw.c0.pl/2017/09/16/31-autosave-v1/', 0, 'revision', '', 0),
(86, 1, '2017-10-07 10:43:05', '2017-10-07 08:43:05', '[Best_Wordpress_Gallery id=\"9\" gal_title=\"llf\"]', 'Łódzki Festiwal Świateł', '', 'publish', 'closed', 'closed', '', 'lodzki-festiwal-swiatel', '', '', '2017-10-07 10:43:05', '2017-10-07 08:43:05', '', 0, 'http://przezobiektyw.c0.pl/?page_id=86', 0, 'page', '', 0),
(50, 1, '2017-09-17 09:52:08', '2017-09-17 07:52:08', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/17/50/', 11, 'nav_menu_item', '', 0),
(51, 1, '2017-09-17 09:52:08', '2017-09-17 07:52:08', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/17/51/', 8, 'nav_menu_item', '', 0),
(52, 1, '2017-09-17 09:52:08', '2017-09-17 07:52:08', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/17/52/', 5, 'nav_menu_item', '', 0),
(54, 1, '2017-09-17 09:56:11', '2017-09-17 07:56:11', '[Best_Wordpress_Gallery id=\"4\" gal_title=\"bieszczady\"]', 'Bieszczady', '', 'publish', 'closed', 'closed', '', 'bieszczady', '', '', '2017-09-17 09:56:11', '2017-09-17 07:56:11', '', 0, 'http://przezobiektyw.c0.pl/?page_id=54', 0, 'page', '', 0),
(55, 1, '2017-09-17 09:55:56', '2017-09-17 07:55:56', '', 'Bieszczady', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-09-17 09:55:56', '2017-09-17 07:55:56', '', 54, 'http://przezobiektyw.c0.pl/2017/09/17/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-09-17 09:56:11', '2017-09-17 07:56:11', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/17/56/', 2, 'nav_menu_item', '', 0),
(57, 1, '2017-09-17 09:56:11', '2017-09-17 07:56:11', '[Best_Wordpress_Gallery id=\"4\" gal_title=\"bieszczady\"]', 'Bieszczady', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2017-09-17 09:56:11', '2017-09-17 07:56:11', '', 54, 'http://przezobiektyw.c0.pl/2017/09/17/54-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-09-17 10:02:02', '2017-09-17 08:02:02', 'Czasami na różne wyjazdy, a nawet bardzo często, bierze się ze sobą aparat. W obecnych czasach aparaty są w każdym telefonie komórkowym... ale nie o tym tutaj. Biorąc ze sobą aparat \"strzela się\" mnóstwo zdjęć. W jednym miejscu dwoje ludzi może zrobić różne zdjęcia. Wycieczki, na których byłem również oglądałem wiele rzeczy przez obiektyw. Tutaj zamieszczam to co zobaczyłem.\r\n\r\n&nbsp;\r\n\r\nZapraszam do oglądania...', 'Strona główna', '', 'publish', 'closed', 'closed', '', 'strona-glowna', '', '', '2017-09-24 22:53:43', '2017-09-24 20:53:43', '', 0, 'http://przezobiektyw.c0.pl/?page_id=58', 0, 'page', '', 0),
(59, 1, '2017-09-17 10:02:02', '2017-09-17 08:02:02', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/17/59/', 1, 'nav_menu_item', '', 0),
(60, 1, '2017-09-17 10:02:02', '2017-09-17 08:02:02', 'Czasami na różne wyjazdy, a nawet bardzo często, bierze się ze sobą aparat. W obecnych czasach aparaty są w każdym telefonie komórkowym... ale nie o tym tutaj. Biorąc ze sobą aparat \"strzela się\" mnóstwo zdjęć. W jednym miejscu dwoje ludzi może zrobić różne zdjęcia. Wycieczki, na których byłem również oglądałem wiele rzeczy przez obiektyw.\r\n\r\n&nbsp;\r\n\r\nZapraszam do oglądania...', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-09-17 10:02:02', '2017-09-17 08:02:02', '', 58, 'http://przezobiektyw.c0.pl/2017/09/17/58-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-09-17 10:15:01', '2017-09-17 08:15:01', '', 'cropped-mlyn_2.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-mlyn_2-jpg', '', '', '2017-09-17 10:15:01', '2017-09-17 08:15:01', '', 0, 'http://przezobiektyw.c0.pl/wp-content/uploads/2017/09/cropped-mlyn_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2017-09-18 00:20:21', '2017-09-17 22:20:21', '[Best_Wordpress_Gallery id=\"5\" gal_title=\"zamek_grodno\"]', 'Zamek Grodno', '', 'publish', 'closed', 'closed', '', 'zamek-grodno', '', '', '2017-09-18 00:20:21', '2017-09-17 22:20:21', '', 0, 'http://przezobiektyw.c0.pl/?page_id=70', 0, 'page', '', 0),
(71, 1, '2017-09-17 23:59:40', '2017-09-17 21:59:40', '', 'Zamek Grodno', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-09-17 23:59:40', '2017-09-17 21:59:40', '', 70, 'http://przezobiektyw.c0.pl/2017/09/17/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-09-18 00:20:21', '2017-09-17 22:20:21', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/18/72/', 10, 'nav_menu_item', '', 0),
(73, 1, '2017-09-18 00:20:21', '2017-09-17 22:20:21', '[Best_Wordpress_Gallery id=\"5\" gal_title=\"zamek_grodno\"]', 'Zamek Grodno', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-09-18 00:20:21', '2017-09-17 22:20:21', '', 70, 'http://przezobiektyw.c0.pl/2017/09/18/70-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2017-09-17 10:25:16', '2017-09-17 08:25:16', 'Czasami na różne wyjazdy, a nawet bardzo często, bierze się ze sobą aparat. W obecnych czasach aparaty są w każdym telefonie komórkowym... ale nie o tym tutaj. Biorąc ze sobą aparat \"strzela się\" mnóstwo zdjęć. W jednym miejscu dwoje ludzi może zrobić różne zdjęcia. Wycieczki, na których byłem również oglądałem wiele rzeczy przez obiektyw. Tutaj zamieszczam to co zobaczyłem.\r\n\r\n&nbsp;\r\n\r\nZapraszam do oglądania...', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-09-17 10:25:16', '2017-09-17 08:25:16', '', 58, 'http://przezobiektyw.c0.pl/2017/09/17/58-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-09-17 10:19:22', '2017-09-17 08:19:22', 'Czasami na różne wyjazdy, a nawet bardzo często, bierze się ze sobą aparat. W obecnych czasach aparaty są w każdym telefonie komórkowym... ale nie o tym tutaj. Biorąc ze sobą aparat \"strzela się\" mnóstwo zdjęć. W jednym miejscu dwoje ludzi może zrobić różne zdjęcia. Wycieczki, na których byłem również oglądałem wiele rzeczy przez obiektyw. Tutaj zamieszczam to co zobaczyłem.\r\n\r\n&nbsp;\r\n\r\nZapraszam do oglądania...\r\n\r\n<a href=\"http://przezobiektyw.c0.pl/muzeum-wsi-mazowieckiej-w-sierpcu/\">Muzeum wsi mazowieckiej w Sierpcu</a>\r\n\r\n<a href=\"http://przezobiektyw.c0.pl/zoo-safari-borysew/\">Zoo safari Borysew</a>\r\n\r\n<a href=\"http://przezobiektyw.c0.pl/bieszczady/\">Bieszczady</a>\r\n\r\n<a href=\"http://przezobiektyw.c0.pl/wille-i-palace-w-lodzi/\">Wille i pałace w Łodzi</a>\r\n\r\n&nbsp;', 'Strona główna', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2017-09-17 10:19:22', '2017-09-17 08:19:22', '', 58, 'http://przezobiektyw.c0.pl/2017/09/17/58-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-09-19 08:17:28', '2017-09-19 06:17:28', '[Best_Wordpress_Gallery id=\"7\" gal_title=\"lublin\"]', 'Lublin', '', 'publish', 'closed', 'closed', '', 'lublin', '', '', '2017-09-19 08:17:28', '2017-09-19 06:17:28', '', 0, 'http://przezobiektyw.c0.pl/?page_id=78', 0, 'page', '', 0),
(79, 1, '2017-09-19 08:17:28', '2017-09-19 06:17:28', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/19/79/', 3, 'nav_menu_item', '', 0),
(80, 1, '2017-09-19 08:17:28', '2017-09-19 06:17:28', '[Best_Wordpress_Gallery id=\"7\" gal_title=\"lublin\"]', 'Lublin', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-09-19 08:17:28', '2017-09-19 06:17:28', '', 78, 'http://przezobiektyw.c0.pl/2017/09/19/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2017-09-19 08:18:06', '2017-09-19 06:18:06', '[Best_Wordpress_Gallery id=\"8\" gal_title=\"polcon\"]', 'Polcon 2017', '', 'publish', 'closed', 'closed', '', 'polcon-2017', '', '', '2017-09-19 08:18:06', '2017-09-19 06:18:06', '', 0, 'http://przezobiektyw.c0.pl/?page_id=81', 0, 'page', '', 0),
(82, 1, '2017-09-19 08:18:06', '2017-09-19 06:18:06', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/09/19/82/', 7, 'nav_menu_item', '', 0),
(83, 1, '2017-09-19 08:18:06', '2017-09-19 06:18:06', '[Best_Wordpress_Gallery id=\"8\" gal_title=\"polcon\"]', 'Polcon 2017', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2017-09-19 08:18:06', '2017-09-19 06:18:06', '', 81, 'http://przezobiektyw.c0.pl/2017/09/19/81-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2017-10-22 09:51:38', '2017-10-22 07:51:38', '[Best_Wordpress_Gallery id=\"10\" gal_title=\"botanik\"]', 'Ogród botaniczny', '', 'publish', 'closed', 'closed', '', 'ogrod-botaniczny', '', '', '2017-10-22 09:51:38', '2017-10-22 07:51:38', '', 0, 'http://przezobiektyw.c0.pl/?page_id=90', 0, 'page', '', 0),
(91, 1, '2017-10-22 09:51:38', '2017-10-22 07:51:38', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2017-10-22 09:54:53', '2017-10-22 07:54:53', '', 0, 'http://przezobiektyw.c0.pl/2017/10/22/91/', 6, 'nav_menu_item', '', 0),
(92, 1, '2017-10-22 09:51:38', '2017-10-22 07:51:38', '[Best_Wordpress_Gallery id=\"10\" gal_title=\"botanik\"]', 'Ogród botaniczny', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2017-10-22 09:51:38', '2017-10-22 07:51:38', '', 90, 'http://przezobiektyw.c0.pl/2017/10/22/90-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(91, 4, 0),
(52, 4, 0),
(51, 4, 0),
(50, 4, 0),
(56, 4, 0),
(87, 4, 0),
(82, 4, 0),
(79, 4, 0),
(75, 4, 0),
(72, 4, 0),
(59, 4, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(4, 'Menu główne', 'menu-glowne', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'pablodx'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"c40a8b4276474c4ac9e1e56d9465f03a7744bd1a34f1cf6ad22e21c784be7b96\";a:4:{s:10:\"expiration\";i:1509864565;s:2:\"ip\";s:12:\"87.205.37.48\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1508654965;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '89'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"87.205.37.0\";}'),
(18, 1, 'wp_media_library_mode', 'list'),
(19, 1, 'nav_menu_recently_edited', '4'),
(20, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(22, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse&post_dfw=off&mfold=o'),
(23, 1, 'wp_user-settings-time', '1505720171');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pablodx', '$P$BITLWbyrjZBaO/sbJy2mXWxev1DCme/', 'pablodx', 'pablo-dx@o2.pl', '', '2017-09-15 18:47:31', '', 0, 'pablodx');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `armour`
--
ALTER TABLE `armour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `armour_placement`
--
ALTER TABLE `armour_placement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `availability`
--
ALTER TABLE `availability`
  ADD PRIMARY KEY (`lp`);

--
-- Indexes for table `basic_inv`
--
ALTER TABLE `basic_inv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casts_names`
--
ALTER TABLE `casts_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `casts_type`
--
ALTER TABLE `casts_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `char_inv`
--
ALTER TABLE `char_inv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `char_skills`
--
ALTER TABLE `char_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profeessionId` (`profId`),
  ADD KEY `char_id` (`char_id`) USING BTREE,
  ADD KEY `skillid` (`skill_id`);

--
-- Indexes for table `char_spells`
--
ALTER TABLE `char_spells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raceID` (`raceID`),
  ADD KEY `genderID` (`genderID`),
  ADD KEY `classID` (`classID`),
  ADD KEY `natureID` (`natureID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `charakter`
--
ALTER TABLE `charakter`
  ADD PRIMARY KEY (`natureID`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classID`);

--
-- Indexes for table `classes_items_group`
--
ALTER TABLE `classes_items_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `classes_id` (`classes_id`,`item_group_id`);

--
-- Indexes for table `current_schematic`
--
ALTER TABLE `current_schematic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exit_professions`
--
ALTER TABLE `exit_professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`genderID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`items_group_id`);

--
-- Indexes for table `items_group`
--
ALTER TABLE `items_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `kategoria_potwora`
--
ALTER TABLE `kategoria_potwora`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `mod_broni`
--
ALTER TABLE `mod_broni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modifier_ranged`
--
ALTER TABLE `modifier_ranged`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monsters`
--
ALTER TABLE `monsters`
  ADD PRIMARY KEY (`monsterID`),
  ADD KEY `id_cat` (`categoryID`);

--
-- Indexes for table `placement`
--
ALTER TABLE `placement`
  ADD PRIMARY KEY (`placement_id`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professions_inventory`
--
ALTER TABLE `professions_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professions_skills`
--
ALTER TABLE `professions_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professions_statistics`
--
ALTER TABLE `professions_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `race_add_skill`
--
ALTER TABLE `race_add_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `race_age`
--
ALTER TABLE `race_age`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `race_skills`
--
ALTER TABLE `race_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rasa`
--
ALTER TABLE `rasa`
  ADD PRIMARY KEY (`raceID`);

--
-- Indexes for table `secret_language`
--
ALTER TABLE `secret_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills_chance`
--
ALTER TABLE `skills_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_weapon`
--
ALTER TABLE `special_weapon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speed`
--
ALTER TABLE `speed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spells`
--
ALTER TABLE `spells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `things_types`
--
ALTER TABLE `things_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades`
--
ALTER TABLE `trades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umiejetnosci`
--
ALTER TABLE `umiejetnosci`
  ADD PRIMARY KEY (`skillid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `weapon_type`
--
ALTER TABLE `weapon_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weapon_type_name`
--
ALTER TABLE `weapon_type_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `armour`
--
ALTER TABLE `armour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT dla tabeli `armour_placement`
--
ALTER TABLE `armour_placement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `availability`
--
ALTER TABLE `availability`
  MODIFY `lp` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `basic_inv`
--
ALTER TABLE `basic_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT dla tabeli `casts_names`
--
ALTER TABLE `casts_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT dla tabeli `casts_type`
--
ALTER TABLE `casts_type`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `char_inv`
--
ALTER TABLE `char_inv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1677;
--
-- AUTO_INCREMENT dla tabeli `char_skills`
--
ALTER TABLE `char_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1886;
--
-- AUTO_INCREMENT dla tabeli `char_spells`
--
ALTER TABLE `char_spells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT dla tabeli `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT dla tabeli `charakter`
--
ALTER TABLE `charakter`
  MODIFY `natureID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `classes`
--
ALTER TABLE `classes`
  MODIFY `classID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `classes_items_group`
--
ALTER TABLE `classes_items_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `current_schematic`
--
ALTER TABLE `current_schematic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT dla tabeli `exit_professions`
--
ALTER TABLE `exit_professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;
--
-- AUTO_INCREMENT dla tabeli `gender`
--
ALTER TABLE `gender`
  MODIFY `genderID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT dla tabeli `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;
--
-- AUTO_INCREMENT dla tabeli `items_group`
--
ALTER TABLE `items_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `kategoria_potwora`
--
ALTER TABLE `kategoria_potwora`
  MODIFY `categoryID` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `mod_broni`
--
ALTER TABLE `mod_broni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT dla tabeli `modifier_ranged`
--
ALTER TABLE `modifier_ranged`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT dla tabeli `monsters`
--
ALTER TABLE `monsters`
  MODIFY `monsterID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT dla tabeli `placement`
--
ALTER TABLE `placement`
  MODIFY `placement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT dla tabeli `professions_inventory`
--
ALTER TABLE `professions_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT dla tabeli `professions_skills`
--
ALTER TABLE `professions_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;
--
-- AUTO_INCREMENT dla tabeli `professions_statistics`
--
ALTER TABLE `professions_statistics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
--
-- AUTO_INCREMENT dla tabeli `race_add_skill`
--
ALTER TABLE `race_add_skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT dla tabeli `race_age`
--
ALTER TABLE `race_age`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT dla tabeli `race_skills`
--
ALTER TABLE `race_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT dla tabeli `rasa`
--
ALTER TABLE `rasa`
  MODIFY `raceID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `secret_language`
--
ALTER TABLE `secret_language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `skills_chance`
--
ALTER TABLE `skills_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `special_weapon`
--
ALTER TABLE `special_weapon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT dla tabeli `speed`
--
ALTER TABLE `speed`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT dla tabeli `spells`
--
ALTER TABLE `spells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
--
-- AUTO_INCREMENT dla tabeli `things_types`
--
ALTER TABLE `things_types`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT dla tabeli `trades`
--
ALTER TABLE `trades`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
--
-- AUTO_INCREMENT dla tabeli `umiejetnosci`
--
ALTER TABLE `umiejetnosci`
  MODIFY `skillid` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `weapon_type`
--
ALTER TABLE `weapon_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `weapon_type_name`
--
ALTER TABLE `weapon_type_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1132;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;
--
-- AUTO_INCREMENT dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT dla tabeli `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;