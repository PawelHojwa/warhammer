-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Cze 2017, 17:58
-- Wersja serwera: 10.1.10-MariaDB
-- Wersja PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `warhammer`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `profesje`
--

CREATE TABLE `profesje` (
  `profID` int(2) NOT NULL,
  `professionName` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `classID` int(1) NOT NULL,
  `sz` tinyint(4) DEFAULT NULL,
  `ww` tinyint(4) DEFAULT NULL,
  `us` tinyint(4) DEFAULT NULL,
  `s` tinyint(4) DEFAULT NULL,
  `wt` tinyint(4) DEFAULT NULL,
  `zw` tinyint(4) DEFAULT NULL,
  `i` tinyint(4) DEFAULT NULL,
  `a` tinyint(4) DEFAULT NULL,
  `zr` tinyint(4) DEFAULT NULL,
  `cp` tinyint(4) DEFAULT NULL,
  `intel` varchar(4) COLLATE utf8_polish_ci DEFAULT NULL,
  `op` tinyint(4) DEFAULT NULL,
  `sw` tinyint(4) DEFAULT NULL,
  `ogd` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `profesje`
--

INSERT INTO `profesje` (`profID`, `professionName`, `classID`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `i`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`) VALUES
(1, 'Aptekarz', 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 10, NULL, '10', NULL, NULL, NULL),
(2, 'Banita', 1, NULL, 10, 10, NULL, NULL, 2, 10, 1, NULL, NULL, NULL, 10, NULL, NULL),
(3, 'Bydłokrad', 3, NULL, 10, 10, 1, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Cyrkowiec', 3, NULL, 10, 10, NULL, NULL, 2, NULL, NULL, 10, NULL, NULL, NULL, NULL, 10),
(5, 'Czeladnik', 4, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 10, NULL, NULL, 10, NULL, NULL),
(6, 'Druid', 4, NULL, 10, 10, NULL, NULL, 1, 10, NULL, NULL, NULL, '10', 10, 10, NULL),
(7, 'Drwal', 2, NULL, 10, 10, 1, NULL, 2, 10, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(8, 'Gajowy', 2, NULL, NULL, 20, 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(9, 'Gawędziarz', 3, NULL, 10, NULL, NULL, NULL, 1, NULL, NULL, NULL, 10, '10', 10, NULL, 10),
(10, 'Giermek', 1, NULL, 10, 10, NULL, NULL, 2, 10, 1, NULL, 10, NULL, NULL, NULL, 10),
(11, 'Gladiator', 1, NULL, 20, NULL, 1, 1, 2, 10, NULL, 10, NULL, NULL, 10, NULL, NULL),
(12, 'Goniec', 2, 1, 20, NULL, 1, 1, 1, 10, NULL, 10, NULL, NULL, 10, NULL, NULL),
(13, 'Handlarz', 4, NULL, 10, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '10', NULL, NULL, 10),
(14, 'Hiena cmentarna', 3, NULL, 10, NULL, NULL, NULL, 2, 10, NULL, 10, NULL, NULL, 10, 10, NULL),
(15, 'Hipnotyzer', 4, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 10, NULL, '10', NULL, NULL, NULL),
(16, 'Inżynier', 4, NULL, 10, 10, NULL, NULL, 2, NULL, NULL, 10, NULL, '10', NULL, NULL, NULL),
(17, 'Łowca nagród', 2, NULL, 10, 10, 1, NULL, 2, 10, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(18, 'Milicjant', 1, NULL, 10, 10, 1, NULL, 2, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Minstrel', 3, NULL, 10, 10, NULL, NULL, 2, 10, NULL, 20, 10, '10', NULL, NULL, 10),
(20, 'Myśliwy', 2, NULL, NULL, 20, 1, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, 10, NULL),
(21, 'Mytnik', 2, NULL, 10, 10, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Najemnik', 1, NULL, 10, 10, 1, NULL, 2, 10, 1, NULL, 10, NULL, 10, NULL, NULL),
(23, 'Nowicjusz', 4, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, NULL, 10, 10, 10),
(24, 'Ochroniarz', 1, NULL, 20, NULL, 1, NULL, 2, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Oprych', 3, NULL, 10, 10, 1, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Pasterz', 2, NULL, NULL, 20, 1, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Pilot', 2, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, 10, NULL, NULL, 10, NULL, 10),
(28, 'Poborca podatkowy', 4, NULL, 10, NULL, NULL, NULL, 2, 10, NULL, NULL, NULL, '10', 10, NULL, NULL),
(29, 'Podżegacz', 3, NULL, 10, 10, NULL, NULL, 2, 10, NULL, NULL, 10, NULL, NULL, NULL, 10),
(30, 'Poganiacz mułów', 2, NULL, 10, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '10', 10, NULL, NULL),
(31, 'Porywacz zwłok', 3, NULL, 10, 10, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(32, 'Poszukiwacz złota', 3, NULL, 10, 10, 1, 1, 2, NULL, 1, NULL, NULL, NULL, 10, NULL, NULL),
(33, 'Przemytnik', 3, NULL, 10, 10, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, 10),
(34, 'Przepatrywacz', 2, NULL, 10, 10, 1, NULL, 2, 10, NULL, NULL, NULL, '10', 10, NULL, NULL),
(35, 'Przewoźnik', 2, NULL, 10, 10, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(36, 'Rajfur', 3, NULL, 10, 10, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, 10),
(37, 'Robotnik', 1, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Rybak', 2, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL),
(39, 'Skryba', 4, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, 10, NULL, NULL, 10, 10),
(40, 'Sługa', 2, NULL, 10, NULL, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, 10, NULL),
(41, 'Strażnik dróg', 2, NULL, 10, 10, 1, NULL, 2, 10, NULL, NULL, 10, NULL, NULL, NULL, NULL),
(42, 'Strażnik miejski', 1, NULL, 10, 10, 1, NULL, 2, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Strażnik więzienny', 3, NULL, 10, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL),
(44, 'Szczurołap', 2, NULL, 10, 10, NULL, NULL, 1, NULL, NULL, 10, NULL, NULL, 10, NULL, NULL),
(45, 'Szlachcic', 1, NULL, 10, 10, NULL, NULL, 2, 10, NULL, 10, 20, NULL, 10, NULL, 10),
(46, 'Szuler', 3, NULL, NULL, 10, NULL, NULL, 2, 10, NULL, 10, NULL, '10', NULL, NULL, 10),
(47, 'Traper', 2, NULL, 10, 10, 1, NULL, 2, 10, NULL, 10, NULL, NULL, NULL, NULL, NULL),
(48, 'Uczeń alchemika', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, '10', NULL, NULL, NULL),
(49, 'Uczeń czarodzieja', 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 10, NULL, '10', NULL, 10, NULL),
(50, 'Uczeń medyka', 4, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '10', 10, NULL, NULL),
(51, 'Wędrowny kramarz', 3, NULL, 10, 10, 1, NULL, 2, 10, NULL, NULL, NULL, NULL, NULL, NULL, 10),
(52, 'Wieszczek', 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 10, NULL, NULL, 10, 10),
(53, 'Wojownik podziemny', 1, NULL, 10, NULL, 1, 1, 2, 10, 1, NULL, 10, NULL, 10, NULL, NULL),
(54, 'Woźnica', 2, NULL, 10, 10, NULL, NULL, 2, 10, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(55, 'Zabijaka', 1, NULL, 10, NULL, 1, NULL, 2, 10, 1, NULL, NULL, NULL, 20, NULL, NULL),
(56, 'Zabójca trolli', 1, NULL, 10, 10, 1, NULL, 4, 10, 1, 10, NULL, NULL, 20, NULL, NULL),
(57, 'Złodziej', 3, NULL, 10, 10, NULL, NULL, 2, 10, NULL, 10, NULL, NULL, NULL, NULL, 10),
(58, 'Zielarz', 4, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 10, NULL, '10', NULL, NULL, NULL),
(59, 'Żak', 4, NULL, NULL, NULL, NULL, NULL, 1, 10, NULL, NULL, NULL, '10', 10, NULL, 10),
(60, 'Żebrak', 3, NULL, 10, 10, NULL, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Żeglarz', 1, NULL, 10, 10, 1, NULL, 2, 10, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Żołnierz', 1, NULL, 10, 10, NULL, NULL, 2, 10, 1, NULL, 10, NULL, NULL, NULL, NULL),
(63, 'Żołnierz okrętowy', 1, NULL, 10, 10, 1, NULL, 2, 10, 1, NULL, NULL, NULL, 10, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `profesje`
--
ALTER TABLE `profesje`
  ADD PRIMARY KEY (`profID`),
  ADD KEY `c_id` (`classID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `profesje`
--
ALTER TABLE `profesje`
  MODIFY `profID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `profesje`
--
ALTER TABLE `profesje`
  ADD CONSTRAINT `profesje_ibfk_1` FOREIGN KEY (`classID`) REFERENCES `classes` (`classID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
