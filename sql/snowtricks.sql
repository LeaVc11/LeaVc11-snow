-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 08 mai 2023 à 21:09
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `snowtricks`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(4, 'Big Air', 'Big-Air'),
(5, 'Hip', 'Hip'),
(6, 'Step-up', 'Step-up'),
(7, 'Half-pipe', 'Half-pipe'),
(8, 'Quarter-pipe', 'Quarter-pipe'),
(9, 'Barre de slide', 'Barre-de-slide'),
(10, 'Waterslide', 'Waterslide'),
(11, 'Box', 'Box'),
(12, 'Wall', 'Wall'),
(13, 'Corner', 'Corner');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `trick_id` int(11) DEFAULT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `trick_id`, `message`, `created_at`, `updated_at`, `user_id`) VALUES
(54, 47, 'GÃƒÂ©nial', '2022-11-09 10:09:01', '2022-11-09 10:13:18', 10),
(55, 47, 'Discussion autour de la figure TRICK MUTE', '2022-11-10 10:08:51', '2022-11-10 10:08:51', 10),
(57, 47, 'Discussion autour de la figure TRICK MUTE', '2022-11-10 10:11:31', '2022-11-10 10:11:31', 9),
(58, 47, 'Discussion autour de la figure TRICK MUTE 2', '2022-11-10 10:11:41', '2022-11-10 10:11:41', 9),
(59, 47, 'Discussion autour de la figure TRICK MUTE 3', '2022-11-10 10:12:30', '2022-11-10 10:12:38', 9),
(60, 47, 'Discussion autour de la figure TRICK MUTE 4', '2022-11-10 10:13:00', '2022-11-10 10:13:00', 9),
(61, 47, 'Discussion autour de la figure TRICK MUTE 5', '2022-11-10 10:13:09', '2022-11-10 10:13:09', 9),
(62, 47, 'Discussion autour de la figure TRICK MUTE 6', '2022-11-10 10:13:22', '2022-11-10 10:13:36', 9),
(63, 47, 'Discussion autour de la figure TRICK MUTE 7', '2022-11-10 10:13:49', '2022-11-10 10:13:49', 9),
(64, 47, 'Discussion autour de la figure TRICK MUTE 8', '2022-11-10 10:13:57', '2022-11-10 10:13:57', 9),
(65, 47, 'Discussion autour de la figure TRICK MUTE 9', '2022-11-10 10:14:35', '2022-11-10 10:14:35', 9),
(66, 47, 'Discussion autour de la figure TRICK MUTE 10', '2022-11-10 10:14:50', '2022-11-10 10:14:50', 9),
(67, 47, 'Discussion autour de la figure TRICK MUTE 11', '2022-11-10 10:14:58', '2022-11-10 10:14:58', 9),
(68, 54, 'Trick gÃƒÂ©nial', '2022-11-18 19:00:24', '2022-11-18 19:00:24', 12);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `trick_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `trick_id`, `file_name`) VALUES
(96, 47, '637112205ec8b.jpg'),
(97, 52, '637112332818d.jpg'),
(98, 53, '637112531322e.jpg'),
(99, 54, '6371129036ca5.jpg'),
(100, 55, '637112aa80487.jpg'),
(101, 56, '637112bac40ea.jpg'),
(102, 57, '637112d4873f0.jpg'),
(103, 47, '63749f91953b1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `trick`
--

CREATE TABLE `trick` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trick`
--

INSERT INTO `trick` (`id`, `user_id`, `title`, `slug`, `description`, `category_id`, `created_at`, `updated_at`) VALUES
(47, 10, 'Trick Mute', 'Trick-Mute', 'saisie de la carre frontside de la planche entre les deux pieds avec la main avant.', 4, '2022-11-08 09:55:54', '2022-11-08 09:56:20'),
(52, 9, 'indy', 'indy', 'saisie de la carre frontside de la planche, entre les deux pieds, avec la main arriÃƒÂ¨re ;', 5, '2022-11-08 09:55:54', '2022-11-08 09:56:20'),
(53, 12, 'stalefish', 'stalefish', 'saisie de la carre backside de la planche entre les deux pieds avec la main arriÃƒÂ¨re ;', 4, '2022-11-08 09:55:54', '2022-11-08 09:56:20'),
(54, 10, 'tail grab', 'tail-grab', 'saisie de la partie arriÃƒÂ¨re de la planche, avec la main arriÃƒÂ¨re ;', 8, '2022-11-08 09:55:54', '2022-11-08 09:56:20'),
(55, 9, 'nose grab', 'nose-grab', 'saisie de la partie avant de la planche, avec la main avant ;', 9, '2022-11-08 09:55:54', '2022-11-08 09:56:20'),
(56, 12, 'japan air', 'japan-air', 'saisie de l\'avant de la planche, avec la main avant, du cÃƒÂ´tÃƒÂ© de la carre frontside.', 11, '2022-11-08 09:55:54', '2022-11-08 09:56:20'),
(57, 10, 'seat belt', 'seat-belt', 'saisie du carre frontside ÃƒÂ  l\'arriÃƒÂ¨re avec la main avant ;', 12, '2022-11-08 09:55:54', '2022-11-08 09:56:20');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`) VALUES
(9, 'vcarine@carine.fr', '[]', '$2y$13$OUSS9GYEMNgTsIeosGhGw.QY0DuS0vNS4CsVpVIE3zOlHvaNtb8sW', 'carine'),
(10, 'snowtrick42@gmail.com', '[]', '$2y$13$DBQEDHfJjtWzkMGev169quNn4F527qfXHUj8bQ.EW1FCJvOW8/MiW', 'john'),
(12, 'john@doe.fr', '[]', '$2y$13$9q1lDSdU9gr03P40mFKg7OWoptKOLScaTcK12bVMUbmTQnuw2pEYa', 'john1'),
(17, 'vcarine@carine.com', '[]', '$2y$13$URgF.EjV4THvja9ig6ASbOsVvFxsQdb8pVPPE7lXhl5cap9jTt6Ji', 'carine1');

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `trick_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `trick_id`, `link`) VALUES
(47, 47, 'https://www.youtube.com/watch?v=JJy39dO_PPE'),
(48, 52, 'https://www.youtube.com/watch?v=j6uAv1vFP_8'),
(49, 53, 'https://www.youtube.com/watch?v=jm19nEvmZgM'),
(50, 54, 'https://www.dailymotion.com/video/x7s1x5d'),
(51, 55, 'https://www.youtube.com/watch?v=JJy39dO_PPE'),
(52, 56, 'https://www.dailymotion.com/video/x7s1x5d'),
(53, 57, 'https://www.youtube.com/watch?v=jm19nEvmZgM');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CB281BE2E` (`trick_id`),
  ADD KEY `IDX_9474526CA76ED395` (`user_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045FB281BE2E` (`trick_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B9983CE5A76ED395` (`user_id`);

--
-- Index pour la table `trick`
--
ALTER TABLE `trick`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D8F0A91EA76ED395` (`user_id`),
  ADD KEY `IDX_D8F0A91E12469DE2` (`category_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CC7DA2CB281BE2E` (`trick_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `trick`
--
ALTER TABLE `trick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9474526CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045FB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);

--
-- Contraintes pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD CONSTRAINT `FK_B9983CE5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `trick`
--
ALTER TABLE `trick`
  ADD CONSTRAINT `FK_D8F0A91E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_D8F0A91EA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CB281BE2E` FOREIGN KEY (`trick_id`) REFERENCES `trick` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
