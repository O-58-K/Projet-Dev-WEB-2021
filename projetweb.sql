-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 29 jan. 2021 à 00:04
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonces`
--

CREATE TABLE `annonces` (
  `id` int(3) NOT NULL,
  `Titre` varchar(50) NOT NULL,
  `Prix` int(11) NOT NULL,
  `Description` varchar(2000) DEFAULT NULL,
  `Statut` varchar(60) NOT NULL,
  `Photo` varchar(500) DEFAULT 'HeaderFooter/img/',
  `commentaires` varchar(150) DEFAULT NULL,
  `code` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `annonces`
--

INSERT INTO `annonces` (`id`, `Titre`, `Prix`, `Description`, `Statut`, `Photo`, `commentaires`, `code`) VALUES
(2715, 'GOW', 60, 'Jeu de combat extraordinaire', 'Plus que 10 en stock', 'https://c4.wallpaperflare.com/wallpaper/174/211/645/kratos-god-of-war-4-god-of-war-games-wallpaper-preview.jpg', 'Le jeu est très bien', 'ZY5QBDYSD45'),
(2764, 'Cyberpunk2077', 60, 'Jeu qui se passe dans le futur !', 'En stock', 'https://s1.gaming-cdn.com/images/products/840/screenshot/cyberpunk-2077-wallpaper-5.jpg', 'j\'aime beaucoup !', NULL),
(2768, 'Fallout 4', 30, 'Jeu Post-Apocalyptique', 'En stock', 'https://www.wallpapertip.com/wmimgs/2-24263_fallout-4-wallpaper-in-lone-wanderer-gif.jpg', 'Aucun commentaire', NULL),
(2769, 'Assassin\'s Creed Valhalla', 50, 'Jeu de Viking', 'En stock', 'https://wallpaperaccess.com/full/2702155.jpg', 'Jeu vraiment incroyable !', 'dr4r7d4g\r\n'),
(2770, 'Overwatch', 25, 'Jeu FPS', 'En stock', 'https://trumpwallpapers.com/wp-content/uploads/Overwatch-Wallpaper-01-1920-x-1080.png', 'Jeu vraiment insane !', 'dr58t7d4g\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(3) NOT NULL,
  `Titre` varchar(45) DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `Titre`, `Description`) VALUES
(2671, 'Bonjour', 'Le jeu est trop bien');

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `id` int(3) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `MotDePasse` varchar(70) NOT NULL,
  `Photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id`, `Prenom`, `Nom`, `Mail`, `MotDePasse`, `Photo`) VALUES
(2629, 'Okan', 'Vendeur', 'okan@mail.com', 'azertyu123', 'image6.jpg'),
(2668, 'Baptiste', 'Marie', 'baptiste@mail.com', 'azertyu123', 'image8.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annonces`
--
ALTER TABLE `annonces`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annonces`
--
ALTER TABLE `annonces`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2771;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2695;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2675;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
