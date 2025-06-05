-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Maj 31, 2025 at 08:35 AM
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
-- Baza danych: `leftjoin`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `blog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `autor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `blog`
--

INSERT INTO `blog` (`id`, `blog`, `autor`) VALUES
(1, 'Exploring the Tatra Mountains: A Summer Journey', 1),
(2, 'My Top 5 Must-Read Books for Personal Growth', 2),
(3, 'The Art of Brewing Your Own Craft Beer at Home', 1),
(4, 'A Beginner\'s Guide to PHP Programming', 3),
(5, 'Delicious Vegan Recipes for Weeknight Dinners', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `blog_categories`
--

CREATE TABLE `blog_categories` (
  `blog_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `blog_categories`
--

INSERT INTO `blog_categories` (`blog_id`, `category_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(2, 3),
(4, 5),
(3, 6),
(5, 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `categories` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `categories`) VALUES
(1, 'journey'),
(2, 'hobby'),
(3, 'books'),
(4, 'military'),
(5, 'technology'),
(6, 'food');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'marcin'),
(3, 'anna');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor` (`autor`) USING BTREE;

--
-- Indeksy dla tabeli `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`blog_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`autor`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
