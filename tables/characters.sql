-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Cze 2017, 17:57
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
  `nskill` int(1) UNSIGNED NOT NULL,
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
  `ogd` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `characters`
--

INSERT INTO `characters` (`id`, `userID`, `name`, `raceID`, `genderID`, `classID`, `natureID`, `age`, `nskill`, `height`, `weight`, `hair`, `eyes`, `description`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `i`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`) VALUES
(23, 1, 'Rothgar Fletcher', 1, 1, 1, 3, 33, 2, 176, 78, 'czarne', 'piwne', 'krótkie włosy, blizny na plecach', 3, 35, 30, 2, 4, 6, 21, 1, 28, 25, 28, 29, 20, 29),
(24, 1, 'fd', 2, 1, 1, 1, 133, 4, 324, 23, 'gfdsg', 'gfds', 'hgfdhg', 5, 43, 38, 3, 3, 5, 61, 1, 45, 42, 47, 59, 30, 50);

--
-- Indeksy dla zrzutów tabel
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `characters`
--
ALTER TABLE `characters`
  ADD CONSTRAINT `characters_ibfk_1` FOREIGN KEY (`raceID`) REFERENCES `rasa` (`raceID`),
  ADD CONSTRAINT `characters_ibfk_2` FOREIGN KEY (`genderID`) REFERENCES `gender` (`genderID`),
  ADD CONSTRAINT `characters_ibfk_3` FOREIGN KEY (`classID`) REFERENCES `classes` (`classID`),
  ADD CONSTRAINT `characters_ibfk_4` FOREIGN KEY (`natureID`) REFERENCES `charakter` (`natureID`),
  ADD CONSTRAINT `characters_ibfk_5` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
