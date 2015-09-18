-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 17 Septembre 2015 à 12:49
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `c2is`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`id`, `prenom`, `nom`, `image`, `description`) VALUES
(1, 'Albert', 'Camus', 'src/img/camus.jpg', 'Albert Camus, né le 7 novembre 1913 à Mondovi, près d''Annaba (anciennement Bône), en Algérie, et mort le 4 janvier 1960 à Villeblevin, dans l''Yonne en France, est un écrivain, philosophe, romancier, dramaturge, essayiste et nouvelliste français. Il est aussi journaliste militant engagé dans la Résistance française et, proche des courants libertaires, dans les combats moraux de l''après-guerre.'),
(2, 'Paulo', 'Coelho', 'src/img/coelho.jpg', 'Santiago, un jeune berger andalou, part à la recherche d''un trésor enfoui au pied des Pyramides. Lorsqu''il rencontre l''Alchimiste dans le désert, celui-ci lui apprend à écouter son cœur, à lire les signes du destin et, par-dessus tout, à aller au bout de son rêve. Merveilleux conte philosophique destiné à l''enfant qui sommeille en chaque être, ce livre a déjà marqué une génération de lecteurs. \r\n"Un auteur exceptionnel...\r\n'),
(3, 'Stephen', 'King', 'src/img/king.jpg', 'Lassé des aventures à l’eau de rose de Misery Chastain, l’écrivain à succès Paul Sheldon vient d’écrire le dernier volume de la série, dans lequel son héroïne trouve la mort. Suite à un accident, il se retrouve à la merci d’une infirmière, les jambes et le bassin brisés. Fervente admiratrice de son œuvre, Annie Wilkes a décidé de séquestrer l’écrivain pour l’obliger à ressusciter son personnage. Si les psychotiques en liberté peuvent s’en sortir tant bien que mal, s’ils se tirent même de très sales affaires, il arrive un moment où le contrôle de leur psychose devient de plus en plus difficile. Annie Wilkes semble se rapprocher chaque jour un peu plus de ce moment. Et quelque chose en elle le sait. Paul comprend que s’il veut sortir de là, il lui faut ruser et tuer… Avec un suspense brûlant et un climat de terreur, l’auteur de Misery s’impose plus que jamais comme le “King” de l’horreur.');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_auteur` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`id`, `id_auteur`, `titre`, `image`, `description`) VALUES
(1, 1, 'L’étranger', 'src/img/letranger.jpg', 'Quand la sonnerie a encore retenti, que la porte du box s''est ouverte, c''est le silence de la salle qui est monté vers moi, le silence, et cette singulière sensation que j''ai eue lorsque j''ai constaté que le jeune journaliste avait détourné les yeux. Je n''ai pas regardé du côté de Marie. Je n''en ai pas eu le temps parce que le président m''a dit dans une forme bizarre que j''aurais la tête tranchée sur une place publique au nom du peuple français...'),
(2, 1, ' La Peste', 'src/img/la-peste.jpg', '- Naturellement, vous savez ce que c''est, Rieux ? \r\n- J''attends le résultat des analyses. \r\n- Moi, je le sais. Et je n''ai pas besoin d''analyses. J''ai fait une partie de ma carrière en Chine, et j''ai vu quelques cas à Paris, il y a une vingtaine d''années. Seulement, on n''a pas osé leur donner un nom, sur le moment... Et puis, comme disait un confrère : " C''est impossible, tout le monde sait qu''elle a disparu de l''Occident. " Oui, tout le monde le savait, sauf les morts. Allons, Rieux, vous savez aussi bien que moi ce que c''est... \r\n- Oui, Castel, dit-il, c''est à peine croyable. Mais il semble bien que ce soit la peste.\r\n'),
(3, 2, 'L’alchimiste', 'src/img/alchimiste.jpg', 'Santiago, un jeune berger andalou, part à la recherche d''un trésor enfoui au pied des Pyramides. Lorsqu''il rencontre l''Alchimiste dans le désert, celui-ci lui apprend à écouter son cœur, à lire les signes du destin et, par-dessus tout, à aller au bout de son rêve. Merveilleux conte philosophique destiné à l''enfant qui sommeille en chaque être, ce livre a déjà marqué une génération de lecteurs. \r\n"Un auteur exceptionnel...\r\n'),
(4, 2, 'Comme le fleuve qui coule', 'src/img/comme_le_fleuve qui_coule.jpg', 'Réunit cent un textes courts, des réflexions sur la vie, des billets d''humeur, des anecdotes de voyage, des paraboles publiés entre 1998 et 2005 et dans lesquels P. Coelho dévoile son univers d''écrivain. Sous la plume de l''auteur, ils acquièrent une dimension de contes philosophiques et pédagogiques à l''usage de celui qui veut vivre en harmonie avec le monde.\r\n'),
(5, 3, 'Misery', 'src/img/misery.jpg', 'Lassé des aventures à l’eau de rose de Misery Chastain, l’écrivain à succès Paul Sheldon vient d’écrire le dernier volume de la série, dans lequel son héroïne trouve la mort. Suite à un accident, il se retrouve à la merci d’une infirmière, les jambes et le bassin brisés. Fervente admiratrice de son œuvre, Annie Wilkes a décidé de séquestrer l’écrivain pour l’obliger à ressusciter son personnage. Si les psychotiques en liberté peuvent s’en sortir tant bien que mal, s’ils se tirent même de très sales affaires, il arrive un moment où le contrôle de leur psychose devient de plus en plus difficile. Annie Wilkes semble se rapprocher chaque jour un peu plus de ce moment. Et quelque chose en elle le sait. Paul comprend que s’il veut sortir de là, il lui faut ruser et tuer… Avec un suspense brûlant et un climat de terreur, l’auteur de Misery s’impose plus que jamais comme le “King” de l’horreur.'),
(6, 3, 'Shining', 'src/img/shining.jpg', 'Situé dans les montagnes Rocheuses, l’Overlook Palace passe pour être l’un des plus beaux lieux du monde. Confort, luxe, volupté…\r\nL’hiver, l’hôtel est fermé.\r\nCoupé du monde par le froid et la neige. Alors, seul l’habite un gardien.\r\nCelui qui a été engagé cet hiver-là s’appelle Jack Torrance: c’est un alcoolique, un écrivain raté, qui tente d’échapper au désespoir. Avec lui vivent sa femme, Wendy, et leur enfant, Danny.\r\nDanny qui possède le don de voir, de ressusciter les choses et les êtres que l’on croit disparus.\r\nCe qu’il sent, lui, dans les cent dix chambres vides de l’Overlook Palace, c’est la présence du démon. \r\nCauchemar ou réalité, le corps de cette femme assassinée? Ces bruits de fête qui dérivent dans les couloirs ? Cette vie si étrange qui anime l’hôtel ? \r\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
