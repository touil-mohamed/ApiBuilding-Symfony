-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 25 avr. 2022 à 14:23
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ApiBuild`
--

-- --------------------------------------------------------

--
-- Structure de la table `Organisation`
--

CREATE TABLE `Organisation` (
  `id` int(35) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `zipcode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Organisation`
--

INSERT INTO `Organisation` (`id`, `nom`, `zipcode`) VALUES
(1, 'Square', 93000),
(2, 'Mirage', 77000),
(3, 'Sony', 59000),
(4, 'Samsung', 62000);

-- --------------------------------------------------------

--
-- Structure de la table `piece`
--

CREATE TABLE `piece` (
  `id` int(35) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `personnes` int(10) NOT NULL,
  `lien_building` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `piece`
--

INSERT INTO `piece` (`id`, `nom`, `personnes`, `lien_building`) VALUES
(1, 'Alpha', 4, 1),
(2, 'Oplo', 5, 2),
(3, 'Olo', 5, 3),
(4, 'opllla', 6, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Organisation`
--
ALTER TABLE `Organisation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `piece`
--
ALTER TABLE `piece`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lien_building` (`lien_building`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Organisation`
--
ALTER TABLE `Organisation`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `piece`
--
ALTER TABLE `piece`
  MODIFY `id` int(35) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `piece`
--
ALTER TABLE `piece`
  ADD CONSTRAINT `piece_ibfk_1` FOREIGN KEY (`lien_building`) REFERENCES `Organisation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
