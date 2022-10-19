-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 19 oct. 2022 à 21:58
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `librairie`
--

-- --------------------------------------------------------

--
-- Structure de la table `librairies`
--

DROP TABLE IF EXISTS `librairies`;
CREATE TABLE IF NOT EXISTS `librairies` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) NOT NULL,
  `DateEmprunt` date DEFAULT NULL,
  `EstEmpruntee` tinyint(1) NOT NULL DEFAULT '0',
  `DateRetour` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `librairies`
--

INSERT INTO `librairies` (`Id`, `Titre`, `DateEmprunt`, `EstEmpruntee`, `DateRetour`) VALUES
(1, 'Le dernier message', '2022-09-30', 1, NULL),
(2, 'Outsider', '2021-12-09', 1, NULL),
(3, 'Le bleu du ciel', '2021-12-21', 0, '2021-12-22'),
(4, 'Le dernier lapon', '2022-10-17', 1, NULL),
(5, 'Carrie', '2021-11-14', 0, '2021-11-15'),
(6, '1991', '2022-10-05', 1, NULL),
(7, 'Tu fais quoi pour Noël ? Je t\'évite', '2021-12-03', 1, NULL),
(8, 'De force', '2022-01-10', 1, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
