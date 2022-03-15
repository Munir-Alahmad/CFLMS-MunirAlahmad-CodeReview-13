-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2022 at 11:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr13_muniralahmad_bigevents`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220312155609', '2022-03-12 16:56:30', 92);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `e_mail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_nr` int(11) NOT NULL,
  `adress` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `picture`, `capacity`, `e_mail`, `phone_nr`, `adress`, `url`, `type`) VALUES
(3, 'Müncher Philharmoniker', '2022-04-03 00:00:00', 'djgjfgjdjdrfr', 'event4-623113fbdccd7.jpg', 5, 'mron@gmail.com', 2147483647, 'Musikverein', 'dzjjdtdrfrjtdj.com', 'dance'),
(4, 'Game Of Thrones - The Concert Show', '2022-01-01 02:00:00', 'djgjfgjdjdrfrfrf', 'ass22-622f97b1379df.jpg', 9, 'monggg@gmail.com', 2147483647, 'The Music Of All Seasons', 'dzjjdtdjegegdj.com', 'adventure'),
(5, 'Rundfunk-Sinfonieorchester Berlin • Julia Fischer', '2021-01-01 07:00:00', 'djgjfgregrwgrgjdjd', 'bc1ce79a-d154-46cc-8861-c31674e12ed4-622f97bd333b4.jpg', 15, 'monnggg@gmail.com', 2147483647, 'Vienna Konzerthaus', 'dzjjdtdjtdrgrgj.com', 'riding'),
(6, 'Beethoven-Fries in der Secession', '2020-01-01 00:00:00', 'djgjfgjdjdetgerg', '2-622f97c98a662.jpg', 12, 'monngggg@gmail.com', 2147483647, 'Secession', 'dzjjdtdjtgegrdj.com', 'dance'),
(7, 'Geheimnis einer Unbekannten', '2018-01-01 00:00:00', 'djgjfgjdjdgg', 'event8-62311199999d9.jpg', 16, 'monnggggg@gmail.comg', 2147483647, 'Theater in der Josefstadt', 'dzjjdtdererjtdj.com', 'adventure'),
(8, 'Ostermarkt Schloss Schönbrunn 2022', '2019-01-01 00:00:00', 'jfgkgfkjhkhljfkl', 'event7-623113de9f65b.jpg', 50, 'mongggfff@gmail.com', 676582654, 'Schloss Schönbrunn', 'dzjjdtdfffererjtdj.com', 'dance'),
(9, 'ABBAMANIA - The Show', '2020-01-01 03:00:00', 'sgshb gnmhgm hm', 'event2-6230f80a5d468.jpg', 60, 'monnvvv@gmail.com', 2147483647, 'Wiener Stadthalle', 'dvsdvdvsv.com', 'adventure'),
(10, 'Benefizkonzert', '2022-01-01 00:00:00', 'yxbnfhg,  ffhjgk', 'descv12-622f97d706d6e-623114089f5e5.jpg', 40, 'mongggggg@gmail.com', 2147483647, 'Ernst-Happel-Stadion', 'dzjjdtdebbtbrerjtdj.com', 'adventure'),
(11, 'Wozzeck', '2022-04-01 13:00:00', 'asdtjfzug,hfujgilkjk uik', 'event3-623113bd85a15.jpg', 120, 'mongggvvv@gmail.com', 2147483647, 'Wiener Staatsoper', 'dzjjdtdererjtdjscscv.com', 'adventure');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
