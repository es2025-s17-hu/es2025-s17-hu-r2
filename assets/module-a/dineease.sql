-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: competitor_db:3306
-- Létrehozás ideje: 2024. Ápr 03. 23:12
-- Kiszolgáló verziója: 8.3.0
-- PHP verzió: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `5ubuuepk`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `plans`
--

CREATE TABLE `plans` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `monthlyFee` decimal(10,2) DEFAULT NULL,
  `yearlyFee` decimal(10,2) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `plans`
--

INSERT INTO `plans` (`id`, `name`, `monthlyFee`, `yearlyFee`, `description`) VALUES
(1, 'free', 0.00, 0.00, 'Ideal for restaurant owners who operate a single location with low traffic. This plan offers access to basic features suitable for managing minimal operational demands.'),
(2, 'professional', 50.00, 540.00, 'Designed for owners managing more than one restaurant with medium traffic. This plan provides advanced features and increased limits to efficiently handle greater operational complexity.'),
(3, 'enterprise', 100.00, 1080.00, 'Tailored for large restaurant chains, offering customized solutions that cater to high traffic needs. This plan ensures scalability, dedicated support, and the most comprehensive set of features.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `restaurants`
--

CREATE TABLE `restaurants` (
  `restaurant_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `cuisine` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zipCode` varchar(10) DEFAULT NULL,
  `countryCode` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `restaurants`
--

INSERT INTO `restaurants` (`restaurant_id`, `name`, `city`, `cuisine`, `address`, `zipCode`, `countryCode`) VALUES
(1, 'Szép Étterem', 'Budapest', 'Hungarian', 'Szentháromság u. 7.', '1014', 'HU'),
(2, 'La Piața', 'Bucharest', 'Romanian', 'Strada Smardan 30.', '030167', 'RO'),
(3, 'Gospoda Krakowska', 'Warsaw', 'Polish', 'ul. Foksal 17', '00-372', 'PL'),
(4, 'Fisherman\'s Hut', 'Budapest', 'Seafood', 'Szentháromság u. 7.', '1014', 'HU'),
(5, 'Casa del Gusto', 'Bucharest', 'Italian', 'Strada Smardan 30', '030167', 'RO'),
(6, 'Kék Duna Étterem', 'Budapest', 'Hungarian', 'Szentháromság u. 7', '1014', 'HU'),
(7, 'Brânza și Mămăligă', 'Cluj-Napoca', 'Romanian', 'Strada Universității 1', '400091', 'RO'),
(8, 'Czerwona Karczma', 'Krakow', 'Polish', 'Rynek Główny 23', '31-008', 'PL'),
(9, 'Móló Rózsa Étterem', 'Budapest', 'Seafood', 'Szentháromság u. 7.', '1014', 'HU'),
(10, 'Trattoria Bella', 'Varna', 'Italian', 'bul. Knyaz Boris I 65', '9002', 'BG'),
(11, 'Paradicsom Étterem', 'Szeged', 'Hungarian', 'Dugonics tér 12.', '6720', 'HU'),
(12, 'Sarmale Bistro', 'Timisoara', 'Romanian', 'Piața Unirii 5', '300035', 'RO'),
(13, 'Smaczne Pierogi', 'Wrocław', 'Polish', 'Rynek 9/11', '50-101', 'PL'),
(14, 'Halász Fogadó', 'Székesfehérvár', 'Seafood', 'Fő u. 17.', '8000', 'HU'),
(15, 'Vivace Ristorante', 'Bucharest', 'Italian', 'Strada Smardan 30', '030167', 'RO');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reviews`
--

CREATE TABLE `reviews` (
  `id` int NOT NULL,
  `restaurantId` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `reviews`
--

INSERT INTO `reviews` (`id`, `restaurantId`, `name`, `rating`, `comment`) VALUES
(1, 1, 'Anna Nagy', 4.8, 'Wonderful traditional Hungarian dishes!'),
(2, 2, 'Andrei Ionescu', 4.2, 'Delicious Romanian flavors in every bite.'),
(3, 3, 'Kasia Wójcik', 4.9, 'Authentic Polish cuisine, loved it!'),
(4, 4, 'Márton Szabó', 4.0, 'Great fish, friendly staff.'),
(5, 5, 'Aneta Nowak', 4.5, 'Tasty pizza and cozy atmosphere.'),
(6, 6, 'Péter Farkas', 4.6, 'Excellent service and tasty Hungarian dishes.'),
(7, 7, 'Cristina Avram', 4.3, 'Traditional Romanian food, good experience.'),
(8, 8, 'Jacek Nowak', 4.7, 'Loved the Polish atmosphere and food.'),
(9, 9, 'Beáta Kiss', 4.5, 'Fresh seafood, great location by the river.'),
(10, 10, 'Stefan Petrov', 4.1, 'Nice Italian restaurant, good pasta.'),
(11, 11, 'Andrea Kovács', 4.3, 'Classic Hungarian cuisine, worth a visit.'),
(12, 12, 'Radu Popescu', 4.7, 'Amazing Romanian food, will come again.'),
(13, 13, 'Monika Kowalska', 4.5, 'Polish pierogi were delicious, nice staff.'),
(14, 14, 'Tamás Varga', 4.4, 'Enjoyed the fish dishes, nice ambience.'),
(15, 15, 'Karolina Zawadzka', 4.8, 'Fantastic Italian food, great service.'),
(16, 1, 'Jordan Casey', 4.5, 'Great atmosphere and friendly staff.'),
(17, 2, 'Charlie Kim', 5.0, 'Best dining experience ever!'),
(18, 3, 'Taylor Morgan', 3.8, 'Good, but not great. Expected more.'),
(19, 4, 'Sam Rivera', 4.2, 'Lovely place, will visit again!'),
(20, 5, 'Jamie Lee', 4.0, 'Solid choice for a casual dinner.'),
(21, 6, 'Alex Jordan', 4.6, 'Impressive menu and quality.'),
(22, 7, 'Pat Kennedy', 4.9, 'Every dish was a delight!'),
(23, 8, 'Casey Smith', 4.3, 'Nice location, good for families.'),
(24, 9, 'Riley Brown', 3.9, 'Decent but could be better with fresher ingredients.'),
(25, 10, 'Jordan Parker', 4.1, 'A good spot for a quick meal, but not for a date.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Has full access to the system, with capabilities to manage all settings, user accounts, and data. Admins can also view and edit all restaurants, plans, and user roles, and have exclusive access to advanced configuration options.'),
(2, 'owner', 'Represents restaurant owners who can manage their restaurant listings, including creating, updating, and deleting information related to their own restaurants. Owners have access to view and purchase plans but cannot alter other user accounts or access system-wide settings.'),
(3, 'visitor', 'Standard users who can browse restaurant listings and information. Visitors can register to become users, make reservations, and provide reviews. They have limited access, with no capabilities to alter restaurant information or access administrative features.');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roleId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `roleId`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '$2b$10$DPXEXQTLJwHgP3LT8RWC8.aX7KcRbKv.A1yC8E5ARuB62vpcKOypG', 2),
(2, 'Jane', 'Doe', 'jane.doe@example.com', '$2b$10$N2xnrqd3/ZMc6cO1XYnRTekFiqZLQ4wZNIMUAur8thdcrcnXw7paa', 2),
(3, 'Michael', 'Smith', 'michael.smith@example.com', '$2b$10$4uwSF.Buk3MRXXC34.Yzhe8tOd1sSglnbavl4ABtfp5C7NLwfeSGe', 1),
(4, 'Sarah', 'Brown', 'sarah.brown@example.com', '$2b$10$rvjOqOsw2dQcu2MkHKTyuuuBkD/OcLcInu0v3DUDGEshh8PjenfLC', 3),
(5, 'Brian', 'Davis', 'brian.davis@example.com', '$2b$10$qupXOd5wn0Oc0ndVyVlI4.0HwRusTHGXrC4tiehNUXuOBcJ3RxOOm', 3),
(6, 'Lisa', 'Wilson', 'lisa.wilson@example.com', '$2b$10$Unnx0VQ1cVIUiyixN0LbqOpvmMernzdvKaPOqVdypXbbG.JCDmf.K', 2),
(7, 'James', 'Garcia', 'james.garcia@example.com', '$2b$10$UNuvnRK1.TEu80wvVIsVVuTgGGWfZ9LmuMMJr/NNWwuqNiQbxjOt6', 1),
(8, 'Linda', 'Martinez', 'linda.martinez@example.com', '$2b$10$p7ugUiYQltgFPJTR9hMm2uXN9kcl6Ds0nC3BU25PFj21JDuoqIKF.', 2),
(9, 'Robert', 'Robinson', 'robert.robinson@example.com', '$2b$10$myokXGZNH7oowxKqVHRrHeeI2hIxxCnC9Jmwxl8CTHOM7Uoq6mqNS', 3),
(10, 'Patricia', 'Clark', 'patricia.clark@example.com', '$2b$10$.AAOzD5AgiRNepvtRi0M0uc4gzuYHoanvNtOzYfYidw5tFkTrMXYa', 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- A tábla indexei `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurantId` (`restaurantId`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `roleId` (`roleId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`restaurantId`) REFERENCES `restaurants` (`restaurant_id`);

--
-- Megkötések a táblához `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
