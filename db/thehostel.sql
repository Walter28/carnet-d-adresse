-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Ven 27 Janvier 2023 à 13:55
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `thehostel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categoriefood`
--

CREATE TABLE IF NOT EXISTS `categoriefood` (
  `ID` tinyint(5) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `categoriefood`
--

INSERT INTO `categoriefood` (`ID`, `categorie`) VALUES
(1, 'Boissons'),
(2, 'Dessert'),
(3, 'Legumes'),
(4, 'Viandes'),
(5, 'Chips');

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE IF NOT EXISTS `chambre` (
  `ID` tinyint(11) NOT NULL AUTO_INCREMENT,
  `nomChambre` varchar(50) NOT NULL,
  `prix` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `nbRoom` int(11) NOT NULL,
  `nbBain` int(11) NOT NULL,
  `statusChm` varchar(10) NOT NULL,
  `adult` int(11) NOT NULL,
  `kid` int(11) NOT NULL,
  `descript` varchar(255) NOT NULL,
  `photo1` varchar(100) NOT NULL,
  `photo2` varchar(100) NOT NULL,
  `photo3` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`,`numero`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `chambre`
--

INSERT INTO `chambre` (`ID`, `nomChambre`, `prix`, `numero`, `nbRoom`, `nbBain`, `statusChm`, `adult`, `kid`, `descript`, `photo1`, `photo2`, `photo3`) VALUES
(1, 'Mont Carlo', 100, 1, 1, 2, '-', 2, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint harum dolore eaque corrupti alias molestiae culpa cupiditate saepe eligendi voluptatibus veniam modi eum amet dolorem aperiam accusamus similique, nam numquam?', '63d3aff28c0dc5.16615797.jpg', '63d3aff28c3b60.27595053.jpg', '63d3aff28c7247.31458157.jpg'),
(2, 'Santa Monica', 200, 2, 3, 3, '-', 2, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sint harum dolore eaque corrupti alias molestiae culpa cupiditate saepe eligendi voluptatibus veniam modi eum amet dolorem aperiam accusamus similique, nam numquam?', '63d3b07554c436.68612144.jpg', '63d3b0755506e9.58713815.jpg', '63d3b0755537f5.10567626.jpg'),
(3, 'Corazon', 150, 3, 1, 2, '-', 2, 0, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi aut, dolores suscipit cum officiis dignissimos voluptatibus perspiciatis dolorem, saepe velit doloremque commodi, repellendus qui animi minus vitae accusamus ullam neque!', '63d3b11c56b195.77126555.jpg', '63d3b11c56dc80.89024517.jpg', '63d3b11c5711f4.07120284.jpg'),
(4, 'Mucha La Muerte', 500, 4, 3, 4, '-', 1, 0, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi aut, dolores suscipit cum officiis dignissimos voluptatibus perspiciatis dolorem, saepe velit doloremque commodi, repellendus qui animi minus vitae accusamus ullam neque!', '63d3b216db68c0.82680337.jpg', '63d3b216dbb607.93142692.jpg', '63d3b216dbefa6.25418112.jpg'),
(5, 'Pollos Hermanos', 700, 6, 4, 4, '-', 3, 3, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sequi aut, dolores suscipit cum officiis dignissimos voluptatibus perspiciatis dolorem, saepe velit doloremque commodi, repellendus qui animi minus vitae accusamus ullam neque!', '63d3b3549ef580.29184325.jpg', '63d3b3549f2e83.99231369.jpg', '63d3b3549f62a2.17164044.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nomClient` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `aPayer` varchar(3) NOT NULL,
  `chambreID` tinyint(4) NOT NULL,
  `dateIn` date NOT NULL,
  `dateOut` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `clientNom` varchar(50) NOT NULL,
  `food` varchar(50) NOT NULL,
  `heure` time NOT NULL,
  `qte` int(11) NOT NULL,
  `chamNum` int(11) NOT NULL,
  `statusCmd` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prix` int(11) NOT NULL,
  `categorieFoodID` tinyint(5) NOT NULL,
  `photoFood` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `restaurant`
--

INSERT INTO `restaurant` (`ID`, `nom`, `prix`, `categorieFoodID`, `photoFood`) VALUES
(1, 'Chili Cheese', 10, 3, '63d3aa9ab79d33.66639035.jpg'),
(2, 'Chawarma', 5, 5, '63d3aaddeaf506.15561192.jpg'),
(3, 'Choux', 2, 3, '63d3ab140eb710.86966149.jpg'),
(4, 'Burgeur', 3, 2, '63d3ab44bf5702.09674161.jpg'),
(5, 'Viande Russe', 5, 4, '63d3ab8c4a7c94.43562188.jpg'),
(6, 'Red Ernergy', 5, 1, '63d3acd22484d2.35653755.jpg'),
(7, 'Blue Energy', 5, 1, '63d3acfa610e08.99915011.jpg'),
(8, 'Green Energy', 5, 1, '63d3ad0ff1f409.63164529.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `rootuser`
--

CREATE TABLE IF NOT EXISTS `rootuser` (
  `username` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rootuser`
--

INSERT INTO `rootuser` (`username`, `email`, `pwd`) VALUES
('walter28', 'walterchristian28@gmail.com', '1234');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
