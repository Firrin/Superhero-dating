-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 27. 04 2018 kl. 10:55:54
-- Serverversion: 10.1.28-MariaDB
-- PHP-version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superhero_dating`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `comments`
--

CREATE TABLE `comments` (
  `Comment_id` int(11) NOT NULL,
  `Comment_to` int(11) NOT NULL,
  `Comment_from` int(11) NOT NULL,
  `Comment` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `super_heroes`
--

CREATE TABLE `super_heroes` (
  `User_id` int(11) NOT NULL,
  `Name` varchar(65) NOT NULL,
  `Age` int(11) NOT NULL,
  `superpower` varchar(256) DEFAULT NULL,
  `Picture` varchar(256) NOT NULL,
  `Likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `super_heroes`
--

INSERT INTO `super_heroes` (`User_id`, `Name`, `Age`, `superpower`, `Picture`, `Likes`) VALUES
(1, 'SuperMan', 30, 'Super Strength, super Speed, flying, alien', 'https://static1.squarespace.com/static/544a89a9e4b03e16957adb96/58cd89af1b631bf52d2103e4/58cd8cad5016e122307a1bdf/1489865904612/Superman-Print_8x10_sm.png?format=500w', 5),
(2, 'WonderWoman', 32, 'Superhuman strength, speed, durability, reflexes, and longevity', 'https://static1.squarespace.com/static/544a89a9e4b03e16957adb96/58cd89af1b631bf52d2103e4/58cda0f1d2b85767b563dedd/1489871092496/Wonder-Woman_Print_8x10_sm.png?format=500w', 69),
(3, 'Spiderman', 21, 'Genius-level intellect\r\nSuperhuman strength, speed, durability, and agility\r\nAbility to cling to most surfaces, Spider-sense', 'https://static1.squarespace.com/static/544a89a9e4b03e16957adb96/58cda1b420099e8bad6e497e/58cdaa1f20099e8bad6eb4eb/1489873441846/Spidey-Print_8x10_sm.png?format=500w', 4),
(4, 'The Flash', 28, 'Can move, think, and react at light speeds as well as having superhuman endurance that allows them to run incredible distances.', 'https://i.imgur.com/eShp8gG.png', 4),
(5, 'Iron man', 53, 'Genius-level intellect\r\nProficient scientist and engineer\r\nPowered armor suit:\r\nSupersonic flight', 'https://orig00.deviantart.net/a097/f/2016/131/b/1/chibi_ironman_by_dereklaufman-da236cr.png', 1),
(6, 'Supergirl', 29, 'Superhuman strength, speed, durability, and longevity\r\nFlight\r\nHeat vision\r\nFreezing breath', 'https://i.pinimg.com/originals/a9/a9/61/a9a961efc989b56392d8a3fccb80c776.jpg', 0),
(7, 'Batman', 45, 'Genius-level intellect\r\nPeak human physical condition\r\nSkilled martial artist\r\nUtilizes high-tech equipment and weapon', 'http://static1.squarespace.com/static/544a89a9e4b03e16957adb96/58cd89af1b631bf52d2103e4/58cd89e5e4fcb5076205f357/1489865216821/?format=1000w', 2),
(8, 'Green Arrow', 36, 'Expert archer\r\nSkilled hand-to-hand combatant\r\nUtilizes high-tech equipment, compound bow, and various types of arrows', 'https://i.pinimg.com/originals/2f/5d/a1/2f5da1a6a4a75b39f597b467bbfa54a8.jpg', 2),
(9, 'Aquaman', 38, 'Can talk to fish and breathe under water', 'https://i.pinimg.com/originals/c2/d3/59/c2d359e00d624205e734d88dc36a5799.jpg', 0),
(11, 'Catwoman', 28, 'Expert burglar\r\nSkilled hand-to-hand combatant\r\nSkilled gymnast\r\nUtilizes bullwhips, sharp retractable claws, and climbing piton', 'http://static1.squarespace.com/static/544a89a9e4b03e16957adb96/58cd89af1b631bf52d2103e4/58cd89c1bebafb2e39a46d0a/1489865180267/?format=1000w', 0),
(13, 'Harley Quinn', 27, 'Skilled gymnast\r\nImmunity to various toxins\r\nUtilizes weaponized props', 'https://i.pinimg.com/originals/a3/16/87/a31687e3728963cd20e99c97ce1807c1.png', 0),
(14, 'Black Widow', 33, 'Government treatments have slowed her aging, augmented her immune system and enhanced her physical durability.\r\n', 'https://img00.deviantart.net/8bd6/i/2013/257/9/5/black_widow_chibi_hetalia_style_by_artycomicfangirl-d6m94m9.jpg', 0),
(21, 'SquirrelGirl', 22, 'Can throw nuts', 'https://i.pinimg.com/originals/f1/75/28/f17528141c519191933df0984564b53c.jpg', 1),
(22, 'Marc', 23, 'Kan tilte 360 grader uden at vÃ¦lte', 'https://lh3.googleusercontent.com/Va7UwMMHsWRjXRYsDRmdUWWXyJsSv9LRIdTOXVsPCcmbDR8sRrOEN-k01HrXwSQf3KGNoA=s85', 0);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Comment_id`);

--
-- Indeks for tabel `super_heroes`
--
ALTER TABLE `super_heroes`
  ADD PRIMARY KEY (`User_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `Comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `super_heroes`
--
ALTER TABLE `super_heroes`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
