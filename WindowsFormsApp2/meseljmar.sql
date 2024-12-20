-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 20. 10:49
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `meseljmar`
--
CREATE DATABASE IF NOT EXISTS `meseljmar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `meseljmar`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Password` varchar(36) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL,
  `UpdatedTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `data`
--

INSERT INTO `data` (`Id`, `FirstName`, `LastName`, `Password`, `CreatedTime`, `UpdatedTime`) VALUES
(1, 'Jack', 'Smith', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(2, 'Olivia', 'Johnson', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(3, 'Ethan', 'Williams', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(4, 'Isabella', 'Jones', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(5, 'Aiden', 'Brown', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(6, 'Sophia', 'Davis', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(7, 'Lucas', 'Miller', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(8, 'Mia', 'Wilson', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(9, 'Zoe', 'Moore', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(10, 'Gabriel', 'Taylor', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(11, 'Madeline', 'Anderson', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(12, 'Liam', 'Thomas', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(13, 'Ella', 'Jackson', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(14, 'James', 'White', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(15, 'Amelia', 'Harris', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(16, 'Noah', 'Martin', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(17, 'Lucas', 'Thompson', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(18, 'Benjamin', 'Garcia', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(19, 'Charlotte', 'Martinez', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(20, 'Grace', 'Robinson', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(21, 'Mason', 'Clark', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(22, 'Lily', 'Rodriguez', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(23, 'Samuel', 'Lewis', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(24, 'Chloe', 'Lee', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(25, 'William', 'Walker', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19'),
(26, 'Victoria', 'Hall', '1234', '2024-12-20 10:34:19', '2024-12-20 10:34:19');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `data`
--
ALTER TABLE `data`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
