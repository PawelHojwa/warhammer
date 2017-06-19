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
-- Struktura tabeli dla tabeli `umiejetnosci`
--

CREATE TABLE `umiejetnosci` (
  `skillid` int(3) UNSIGNED NOT NULL,
  `skillName` varchar(40) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

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
(38, 'Język tajemny'),
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
(79, 'Sekretne znaki'),
(80, 'Sekretny język'),
(81, 'Siłacz'),
(82, 'Silny cios'),
(83, 'Specjalna broń'),
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
(134, 'Żonglerka');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `umiejetnosci`
--
ALTER TABLE `umiejetnosci`
  ADD PRIMARY KEY (`skillid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `umiejetnosci`
--
ALTER TABLE `umiejetnosci`
  MODIFY `skillid` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
