-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 23 nov. 2020 à 13:10
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `registrationdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`) VALUES
(4, 'steak', 'https://meatbasics101.com/wp-content/uploads/transform-cheap-steak-trick.jpg', 50),
(9, 'PANINI', 'https://www.tefal.fr/medias/?context=bWFzdGVyfHJvb3R8MjY5Mjh8aW1hZ2UvanBlZ3xoYTMvaDZhLzE0NDUxNjMyMjc1NDg2LmpwZ3w3YjMzM2QzMDlkNzMwMTFhMTg5MzkyMGJjZmVjYTcyYjQ2NmQ1YjU4YjlmMjlhYzhjMzJkZDI3NmRjZWZiMzQ3', 70),
(10, 'HUBERGUR', 'https://img.cuisineaz.com/610x610/2013-12-20/i99425-hamburger.jpg', 100),
(11, 'TAJIN', 'https://m.bettybossi.ch/static/rezepte/x/bb_bbzc090315_0022a_x.jpg', 150);

-- --------------------------------------------------------

--
-- Structure de la table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `num` int(11) NOT NULL,
  `zone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tbluser`
--

INSERT INTO `tbluser` (`id`, `firstname`, `lastname`, `num`, `zone`) VALUES
(8, 'Zineb', 'ELKHALLADI', 642358787, 'Safi'),
(9, 'Zineb', 'ELKHALLADI', 642358787, 'Safi'),
(10, 'omaymah', 'tanti', 63782999, 'Safi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
