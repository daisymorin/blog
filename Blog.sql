-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : Dim 03 jan. 2021 à 10:46
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
-- Base de données : `Blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `id_articles` int(11) NOT NULL,
  `nameArticles` varchar(255) NOT NULL,
  `dateArticles` date NOT NULL,
  `resumeArticles` text NOT NULL,
  `resumeDetaille` text NOT NULL,
  `image_article` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Articles`
--

INSERT INTO `Articles` (`id_articles`, `nameArticles`, `dateArticles`, `resumeArticles`, `resumeDetaille`, `image_article`) VALUES
(1, 'Articles test', '2020-12-03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla interdum rutrum. Quisque non neque eu augue scelerisque accumsan vitae vitae lacus. Mauris ultrices, nunc a placerat rhoncus, arcu ante tempor urna, quis euismod nisi neque non quam. Sed ac vehicula enim, eleifend lacinia magna.', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla interdum rutrum. Quisque non neque eu augue scelerisque accumsan vitae vitae lacus. Mauris ultrices, nunc a placerat rhoncus, arcu ante tempor urna, quis euismod nisi neque non quam. Sed ac vehicula enim, eleifend lacinia magna. Maecenas malesuada condimentum odio, eget accumsan felis sodales aliquet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse mattis dolor magna, nec consectetur erat blandit at. Phasellus commodo lorem iaculis diam tincidunt fermentum. Etiam feugiat neque nunc, non ornare velit vehicula et. Integer enim erat, mollis quis risus ac, ultrices blandit sapien. Donec semper non libero sit amet congue. Vestibulum et est risus. Donec commodo malesuada accumsan. Vivamus mollis, lectus sit amet faucibus faucibus, quam velit accumsan lacus, ac viverra nulla turpis vitae lacus. Ut consectetur odio eget nibh aliquet venenatis. Duis non mi sit amet odio mollis tempor vel in odio.\r\n\r\nPellentesque euismod mollis aliquam. Integer quis neque elit. Aenean diam nulla, euismod ac mi ac, cursus vestibulum ex. Vivamus ut dolor in diam mollis semper. Aliquam placerat nulla vestibulum, pretium diam eget, vulputate velit. Fusce eu varius turpis. Nullam ultricies, lectus aliquam volutpat tempus, augue orci pulvinar arcu, in imperdiet enim metus eget arcu. Sed a quam vel mi eleifend laoreet. Curabitur placerat viverra dapibus. Pellentesque id mi sed magna imperdiet posuere. Donec nec nibh blandit, suscipit turpis ac, lobortis risus. Phasellus sit amet ligula sollicitudin, rhoncus metus vitae, pulvinar tortor. ', ''),
(2, 'article test 3', '2020-12-18', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eros sem, efficitur in dictum a, viverra tristique lectus. Phasellus scelerisque, sapien ac euismod laoreet, urna sem vehicula nisl, ut pretium arcu mi ut lectus. Vivamus ullamcorper viverra auctor. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eros sem, efficitur in dictum a, viverra tristique lectus. Phasellus scelerisque, sapien ac euismod laoreet, urna sem vehicula nisl, ut pretium arcu mi ut lectus. Vivamus ullamcorper viverra auctor. Sed in erat sit amet orci aliquam lacinia. Cras fermentum leo pellentesque pulvinar dictum. Praesent nec magna quis nibh auctor malesuada ac vitae augue. Quisque libero enim, pretium id quam in, lobortis viverra magna.', ''),
(5, 'Test Article Blog', '2020-12-26', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lorem in sapien placerat congue id quis tellus. Cras quam ligula, molestie vel augue quis, placerat dignissim eros. Integer dolor velit, sodales finibus justo ac, auctor porttitor velit. Vestibulum fermentum massa in ipsum ornare, suscipit rutrum lacus sollicitudin. Curabitur quis tincidunt libero, sit amet cursus nibh. In imperdiet in nisl vel mollis. Aenean tempor commodo turpis, vel dictum diam imperdiet at. Suspendisse vitae laoreet sem. Duis id nunc sit amet risus rhoncus sagittis vel sit amet ipsum. Vestibulum in pretium felis, ac efficitur neque. Aliquam urna risus, gravida ac leo sit amet, volutpat tincidunt orci. ', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lorem in sapien placerat congue id quis tellus. Cras quam ligula, molestie vel augue quis, placerat dignissim eros. Integer dolor velit, sodales finibus justo ac, auctor porttitor velit. Vestibulum fermentum massa in ipsum ornare, suscipit rutrum lacus sollicitudin. Curabitur quis tincidunt libero, sit amet cursus nibh. In imperdiet in nisl vel mollis. Aenean tempor commodo turpis, vel dictum diam imperdiet at. Suspendisse vitae laoreet sem. Duis id nunc sit amet risus rhoncus sagittis vel sit amet ipsum. Vestibulum in pretium felis, ac efficitur neque. Aliquam urna risus, gravida ac leo sit amet, volutpat tincidunt orci.\r\n\r\nPellentesque posuere rutrum sapien, non ullamcorper odio cursus nec. Vestibulum eleifend sit amet diam non congue. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse varius, massa vel aliquet cursus, ligula dolor tempus justo, eget sagittis purus orci id ante. Donec elementum aliquet interdum. Praesent fringilla sodales justo, ac varius ligula imperdiet sit amet. Etiam sit amet justo scelerisque nibh rutrum ultrices. Phasellus eget gravida ipsum. Curabitur cursus purus tortor, a sollicitudin mi gravida consequat. Phasellus egestas vel eros ac ultricies. Proin porttitor porta laoreet. Aenean faucibus turpis ipsum, et aliquet ante hendrerit sed. Curabitur euismod vulputate quam nec placerat. Cras sollicitudin vulputate velit, nec convallis sapien tristique vel. Ut semper lorem id aliquam malesuada.\r\n\r\nVestibulum lectus mi, finibus ut congue id, scelerisque vel est. Aenean vel lorem egestas, interdum velit sed, dictum nibh. In placerat sapien purus, vel feugiat nunc suscipit id. Curabitur sed ipsum vitae leo vehicula sodales vel quis lectus. In dictum augue elementum dolor fringilla semper. Cras sit amet mattis erat. Vestibulum maximus felis nec lacinia pulvinar. Nam molestie velit vel leo aliquam, vitae vehicula sem lacinia. Phasellus mattis mollis placerat. Pellentesque imperdiet, elit eu fermentum luctus, arcu eros rhoncus magna, sit amet tincidunt lectus tortor quis dui. Mauris at arcu faucibus, sollicitudin sapien quis, efficitur eros. Curabitur molestie magna sed ante laoreet tempus. Duis elementum facilisis dolor vitae pharetra. ', '');

-- --------------------------------------------------------

--
-- Structure de la table `Categories`
--

CREATE TABLE `Categories` (
  `id_cat` int(11) NOT NULL,
  `nameCategories` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categories_Articles`
--

CREATE TABLE `categories_Articles` (
  `id_articles` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id_users` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id_articles`);

--
-- Index pour la table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `categories_Articles`
--
ALTER TABLE `categories_Articles`
  ADD PRIMARY KEY (`id_articles`,`id_cat`),
  ADD KEY `fk_categories2Id` (`id_cat`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `id_articles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `categories_Articles`
--
ALTER TABLE `categories_Articles`
  ADD CONSTRAINT `fk_articles2Id` FOREIGN KEY (`id_articles`) REFERENCES `Articles` (`id_articles`),
  ADD CONSTRAINT `fk_categories2Id` FOREIGN KEY (`id_cat`) REFERENCES `Categories` (`id_cat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
