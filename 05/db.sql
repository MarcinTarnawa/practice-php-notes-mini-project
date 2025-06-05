-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Cze 05, 2025 at 06:38 PM
-- Wersja serwera: 8.0.42
-- Wersja PHP: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `autor` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `blog` text COLLATE utf8mb4_0900_as_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Zrzut danych tabeli `blog`
--

INSERT INTO `blog` (`id`, `autor`, `blog`) VALUES
(1, '[quote]marcin[/qoute]', '[b]pogrubiony tekst[/b]'),
(2, '[quote]marcin[/quote]', 'teskt'),
(3, 'marcin', 'teskt\"[b]teskt[/b]\"'),
(4, 'marcin', 'teskt'),
(5, 'marcin', 'teskt'),
(6, 'marcin', 'teskt'),
(7, 'marcinek', 'teskt\"[b]teskt[/b]\"'),
(8, 'marcin', 'teskt'),
(9, 'marcin', 'teskt'),
(10, 'marcin', 'teskt'),
(11, '[b]marcin[/b]', '[quote]tekst[/quote]'),
(12, '[b]marcin[/b]', '[quote]tekst[/quote]');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
