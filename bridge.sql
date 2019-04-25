-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 25 avr. 2019 à 19:31
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bridge`
--

-- --------------------------------------------------------

--
-- Structure de la table `choix`
--

CREATE TABLE `choix` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` int(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `motif` varchar(225) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_reg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `model`
--

CREATE TABLE `model` (
  `id` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_eng` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `model`
--

INSERT INTO `model` (`id`, `id_plan`, `name`, `photo`, `date_eng`) VALUES
(1, 11, 'tghj', 'pont5.jpg', '2019-04-25 16:54:06');

-- --------------------------------------------------------

--
-- Structure de la table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_eng` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plan`
--

INSERT INTO `plan` (`id`, `name`, `photo`, `description`, `date_eng`) VALUES
(5, 'gyh', 'pont2.jpg', 'ghjkl', '2019-04-24 14:33:21'),
(7, 'sdf', 'pont5.jpg', 'zert(y-ui', '2019-04-24 15:40:25'),
(8, 'cc', 'pont7.jpg', 'sdghj', '2019-04-24 15:40:40'),
(10, 'dd', 'pont1.jpg', 'sffff', '2019-04-24 15:41:16'),
(11, 'dff', 'pont4.jpg', 'dfgh', '2019-04-24 15:41:31'),
(12, 'mde', 'pont6.jpg', 'je veux une photos simple', '2019-04-24 22:09:16');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `motif` varchar(255) NOT NULL,
  `date_eng` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `sujet`, `motif`, `date_eng`) VALUES
(1, 'silue', 'wondja', 'wondja@gmail.com', 'dgfhjklmÃ¹', 'fghjklm', '2019-04-24 15:08:20'),
(2, 'mo', 'wondja', 'koua@gmail.com', 'hrefdkp^pfgzeipojmlreizke', 'fghkl', '2019-04-24 15:23:36'),
(3, 'silue', 'wondja', 'silmal@gmail.com', 'qsdfghjkhghjgf', 'je vuex un motif de pont', '2019-04-25 16:49:29');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `choix`
--
ALTER TABLE `choix`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `choix`
--
ALTER TABLE `choix`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
