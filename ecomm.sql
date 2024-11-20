-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Août 2024 à 11:31
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `ecomm`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(14, 12, 33, 1),
(15, 13, 33, 5),
(19, 9, 32, 1),
(20, 9, 35, 1),
(21, 9, 36, 1),
(22, 9, 31, 1),
(23, 9, 40, 1),
(24, 14, 36, 1),
(25, 14, 43, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Nyiragongo', 'laptops'),
(2, 'Le lac Kivu', 'desktop-pc'),
(3, 'La chaine de monsatge', 'tablets'),
(4, 'Gorille des montages', ''),
(5, 'Virunga SARL', '');

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(31, 1, 'Nyiragongo', '<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'nyiragongo', 153, 'nyiragongo_1723710308.jpg', '2024-08-27', 1),
(32, 4, 'Site Virunga 1', '<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<hr />\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'site-virunga-1', 79.99, 'site-virunga-1.jpg', '2024-08-26', 1),
(33, 4, 'Site Virunga 2', '<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<hr />\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'site-virunga-2', 79.99, 'site-virunga-2.jpg', '2024-08-26', 1),
(34, 2, 'Guest house', '', 'guest-house', 49.99, 'guest-house.jpg', '0000-00-00', 0),
(35, 2, 'Vie environante et guest house', '<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<hr />\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'vie-environante-et-guest-house', 39.99, 'vie-en-environante-et-guest-house.JPG', '2024-08-26', 1),
(36, 2, 'Guest house luxie 1', '<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'guest-house-luxie-1', 130, 'guest-house-luxie_1723711107.jpg', '2024-08-28', 1),
(37, 5, 'Hopital general de Mutwanga', '', 'hopital-general-de-mutwanga', 35, 'hopital-general-de-mutwanga.jpg', '0000-00-00', 0),
(38, 5, 'Rumangabo ', '', 'rumangabo', 350, 'rumangabo.jpg', '0000-00-00', 0),
(39, 5, 'Ecogarde', '<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'ecogarde', 99.99, 'ecogarde.jpg', '0000-00-00', 0),
(40, 1, 'gorille de montagnes', '<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'gorille-de-montagnes', 139.99, 'gorille-de-montagnes_1724803253.jpg', '2024-08-27', 1),
(41, 2, 'Guest house luxe 2', '<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'guest-house-luxe-2', 270, 'guest-house-luxe-2.jpg', '0000-00-00', 0),
(42, 1, 'Vie environante', '<hr />\r\n<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<hr />\r\n<hr />\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'vie-environante', 49.99, 'vie-environante_1724822514.jpg', '0000-00-00', 0),
(43, 2, 'Guest house luxe 3', '<hr />\r\n<hr />\r\n<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'guest-house-luxe-3', 99.99, 'guest-house-luxe-3.jpg', '2024-08-28', 1),
(44, 2, 'Guest house luxe 4', '<hr />\r\n<hr />\r\n<hr />\r\n<hr />\r\n<p>Le&nbsp;parc&nbsp; Nationnale de Virunga regorge plus de 15000 especes qui sont en voit de disparution &agrave; cause de la guerre qui ravage notre pays actuellement&nbsp;</p>\r\n\r\n<p>Nous denon&ccedil;ons toutes violations du patrimoine nationnale est&nbsp; nous acquisons les forces arm&eacute;es d&#39;en etre la casuse</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n\r\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia architecto, ipsa eaque deleniti, ut eius repellendus, praesentium necessitatibus vitae sint aut! Commodi animi reprehenderit fugiat et distinctio incidunt, laborum inventore?</p>\r\n', 'guest-house-luxe-4', 109, 'guest-house-luxe-4_1724823823.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$UgjvPgc.q4p/GCSUsDNyG.3rzI9GBonvRXsFmhG68jBoM8Jpij/A.', 1, 'Admin', 'Projects', '', '', 'user.png', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', '087436C2-117D-4377-8C36-7108E897B384 2.JPG', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'profile.jpg', 1, '', '', '2018-07-09'),
(13, 'muhesidray@gmail.com', '$2y$10$nAoOEC8LY96ZTyQqHxv0QOYcFbGxbR2IyHv2vYWMneLaJBQOyE8Me', 0, 'Richard', 'MUYISA ', 'France, Paris, Champs Ã©lisÃ©, NÂ°71', '+243 970 686 262', 'profile.jpg', 1, '', '', '2024-08-15'),
(14, 'jossylinebashonga@gmail.com', '$2y$10$9SXFgejrNfWckL9zpk58zOixTHwHI85MRhFjnb/UyOqTD7PqNBatG', 0, 'Jossyline', 'Bashonga', 'Q.Katindo', '', '5f116f0709219204674370.jpg', 1, '', '', '2024-08-28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
