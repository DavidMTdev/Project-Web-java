-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 30 déc. 2019 à 17:08
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `webappjavaproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `register_date` date NOT NULL,
  `update_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `author`, `title`, `content`, `text`, `register_date`, `update_date`) VALUES
(2, 'david', 'un titre', 'une petite descripton', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum aliquet ac turpis vitae suscipit. Suspendisse potenti. Vivamus scelerisque tellus at gravida scelerisque. Pellentesque sed dui fermentum, vehicula ipsum eget, placerat nibh. Ut eu purus non turpis mollis semper ornare sed nisl. Sed varius metus vel ipsum tincidunt ornare. Phasellus eget eros porttitor, ullamcorper erat sit amet, iaculis risus. Duis vehicula elementum volutpat. Phasellus quis elementum velit, id feugiat felis. Ut rhoncus accumsan consequat. Nam ullamcorper aliquet quam eu fringilla. Maecenas eu tortor id sem posuere vehicula.\r\n\r\nIn placerat volutpat euismod. Fusce lacinia neque id ligula egestas porta. Mauris non nisl ut mi euismod maximus sit amet a leo. Fusce nec leo suscipit, dignissim nibh in, volutpat tortor. Nulla fermentum, mauris vel molestie viverra, dui neque vestibulum diam, eu volutpat urna lorem vel velit. In in iaculis purus. Quisque rutrum lacinia ante. Quisque orci ante, elementum a aliquet vitae, faucibus eget diam. Mauris vulputate libero sem, at rutrum nulla varius vel.\r\n\r\nSed vestibulum lectus quis mauris condimentum facilisis. Duis id est non urna consectetur sodales eget ut lacus. Nulla eu vehicula dui. Mauris vestibulum elementum magna. Integer tempus felis quis nisi vehicula, non volutpat ligula accumsan. Duis cursus ornare risus, quis interdum erat auctor eu. Aliquam et lobortis massa, at rutrum tortor. Proin convallis, ipsum at lobortis tincidunt, turpis orci dictum turpis, eget imperdiet est sapien id sem. Quisque nec magna id velit vestibulum dapibus eget vitae mi. Nullam sed dui eget arcu lacinia tempus. Integer placerat egestas urna, non congue ante tincidunt quis. Praesent quis maximus erat. Nulla nec diam convallis, lobortis ex vel, semper lorem. Vestibulum ac lectus et arcu ultrices condimentum a eget massa. Integer a arcu orci. Morbi dapibus augue nunc, nec volutpat augue tincidunt venenatis.', '2019-12-17', '2019-12-17'),
(4, 'leo', 'un autre article', 'un autre petit article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus convallis ligula in lacus finibus aliquet id vel magna. Vivamus laoreet velit ac mauris ultricies, a bibendum ex viverra. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent venenatis iaculis ligula et vestibulum. Pellentesque nec bibendum tellus. Aenean eleifend quis lorem ut mattis. Donec condimentum auctor sapien, suscipit posuere quam rhoncus vel. Nulla auctor ligula vel convallis facilisis. Vivamus eget mollis arcu. Sed id neque eu augue ultrices pretium in non arcu. Curabitur tempor velit quis arcu aliquet pretium. Morbi mattis nunc dui, sit amet vestibulum orci molestie ac.\r\n\r\nDonec vel dolor eu dolor fringilla dignissim sit amet ut nisi. Suspendisse nec eros eget lectus posuere faucibus eget in urna. Phasellus pulvinar fringilla odio, vel ornare felis euismod ut. In hendrerit sapien pretium nunc rutrum porta. Morbi arcu ipsum, consectetur pulvinar purus et, rhoncus hendrerit ex. Sed pretium pharetra metus, et euismod purus dapibus vel. Integer hendrerit lacus in turpis molestie ornare. Aenean convallis tempor lacus vitae vulputate. Sed in neque nec erat mollis lacinia eu ac quam. Suspendisse viverra tincidunt dignissim. Fusce arcu eros, condimentum in luctus at, porta nec nisl. Fusce non auctor quam, in scelerisque ex. Nulla ac tempor felis. Pellentesque eros tellus, tempus sed ante nec, accumsan venenatis velit.', '2019-12-23', '2019-12-23'),
(15, 'test', 'ezrzeraezarzear', 'erazrezarezarzae', 'erzaerzerzearzer', '2019-12-30', '2019-12-30');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'david', 'david'),
(2, 'leo', 'leo'),
(5, 'test', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
