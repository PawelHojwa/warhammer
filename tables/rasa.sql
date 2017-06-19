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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rasa`
--

INSERT INTO `rasa` (`raceID`, `raceName`, `sz`, `ww`, `us`, `s`, `wt`, `zw`, `i`, `a`, `zr`, `cp`, `intel`, `op`, `sw`, `ogd`) VALUES
(1, 'Człowiek', 2, 20, 20, 1, 1, 4, 20, 1, 20, 20, 20, 20, 20, 20),
(2, 'Elf', 2, 30, 20, 1, 1, 3, 50, 1, 30, 30, 40, 40, 30, 30),
(3, 'Halfling', 2, 10, 20, 0, 0, 3, 40, 1, 30, 10, 20, 10, 30, 30),
(4, 'Krasnolud', 2, 30, 10, 1, 2, 5, 10, 1, 10, 40, 20, 40, 40, 10);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `rasa`
--
ALTER TABLE `rasa`
  ADD PRIMARY KEY (`raceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `rasa`
--
ALTER TABLE `rasa`
  MODIFY `raceID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
