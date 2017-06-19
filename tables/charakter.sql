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
-- Struktura tabeli dla tabeli `charakter`
--

CREATE TABLE `charakter` (
  `natureID` int(2) NOT NULL,
  `natureName` char(15) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `charakter`
--

INSERT INTO `charakter` (`natureID`, `natureName`) VALUES
(1, 'Praworządny'),
(2, 'Dobry'),
(3, 'Neutralny'),
(4, 'Zły'),
(5, 'Chaotyczny');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `charakter`
--
ALTER TABLE `charakter`
  ADD PRIMARY KEY (`natureID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `charakter`
--
ALTER TABLE `charakter`
  MODIFY `natureID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
