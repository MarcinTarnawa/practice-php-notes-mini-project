-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Cze 04, 2025 at 08:23 AM
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
-- Baza danych: `posts`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_0900_as_cs NOT NULL,
  `blog` varchar(255) COLLATE utf8mb4_0900_as_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `name`, `blog`) VALUES
(1, 'jan', 'blog1'),
(2, 'marcin', 'blog2'),
(3, 'jan', 'blog3'),
(4, 'jan', 'blog4'),
(5, 'jan', 'blog4'),
(6, 'jan', 'blog6'),
(7, 'jan', 'blog1'),
(8, 'jan', 'blog'),
(9, 'jan', 'blog'),
(10, 'jan', 'blog'),
(11, 'jan2', 'blog'),
(12, 'janek', 'blog'),
(13, 'jan', 'blog'),
(14, 'jan', 'blog'),
(15, 'jan', 'blog'),
(16, 'jan', 'blog'),
(17, 'jan', 'blog'),
(18, 'jan', 'blog'),
(19, 'jan', 'blog'),
(20, 'zbychu', 'blog'),
(21, 'jan', 'blog'),
(22, 'jan', 'blog'),
(23, 'jan', 'blog'),
(24, 'jan', 'blog'),
(25, 'jan', 'blog'),
(26, 'jan', 'blog'),
(27, 'jan', 'blog'),
(28, 'jan', 'blog'),
(29, 'jan', 'blog'),
(30, 'jan', 'blog'),
(31, 'jan', 'blog'),
(32, 'jan', 'blog'),
(33, 'jan', 'blog'),
(34, 'jan', 'blog'),
(35, 'jan', 'blog'),
(36, 'jan', 'blog'),
(37, 'jan', 'blog'),
(38, 'jan', 'blog'),
(39, 'jan', 'blog'),
(40, 'jan', 'blog'),
(41, 'jan', 'blog'),
(42, 'jan', 'blog'),
(43, 'jan', 'blog'),
(44, 'jan', 'blog'),
(45, 'jan', 'blog'),
(46, 'jan', 'blog'),
(47, 'jan', 'blog'),
(48, 'jan', 'blog'),
(49, 'jan', 'blog'),
(50, 'jan', 'blog');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
