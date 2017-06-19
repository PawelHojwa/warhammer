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
-- Struktura tabeli dla tabeli `char_skills`
--

CREATE TABLE `char_skills` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `profId` int(2) DEFAULT NULL,
  `skillid` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `char_skills`
--

INSERT INTO `char_skills` (`id`, `char_id`, `profId`, `skillid`) VALUES
(1, 23, 11, 7),
(2, 23, 11, 81),
(3, 23, 11, 89),
(4, 23, 11, 127),
(5, 23, 11, 4),
(6, 23, 11, 6),
(7, 23, 11, 13),
(8, 23, 11, 71),
(9, 23, 11, 82),
(10, 23, 11, 83),
(11, 23, 11, 107),
(12, 24, 1, 5),
(13, 24, 1, 7),
(14, 24, 1, 18),
(15, 24, 1, 20),
(16, 24, 1, 15),
(17, 24, 1, 27),
(18, 24, 1, 47),
(19, 24, 1, 48),
(20, 24, 1, 59),
(21, 24, 1, 80),
(22, 24, 1, 111);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `char_skills`
--
ALTER TABLE `char_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profeessionId` (`profId`),
  ADD KEY `char_id` (`char_id`) USING BTREE,
  ADD KEY `skillid` (`skillid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `char_skills`
--
ALTER TABLE `char_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `char_skills`
--
ALTER TABLE `char_skills`
  ADD CONSTRAINT `char_skills_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `characters` (`id`),
  ADD CONSTRAINT `char_skills_ibfk_2` FOREIGN KEY (`profId`) REFERENCES `profesje` (`profID`),
  ADD CONSTRAINT `char_skills_ibfk_3` FOREIGN KEY (`skillid`) REFERENCES `umiejetnosci` (`skillID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
