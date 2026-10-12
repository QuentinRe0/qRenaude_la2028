-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : lun. 12 oct. 2026 à 09:56
-- Version du serveur : 11.5.2-MariaDB
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `la2028`
--

-- --------------------------------------------------------

--
-- Structure de la table `athlete`
--

DROP TABLE IF EXISTS `athlete`;
CREATE TABLE IF NOT EXISTS `athlete` (
                                         `id` int(11) NOT NULL AUTO_INCREMENT,
    `prenom` varchar(50) DEFAULT NULL,
    `nom` varchar(50) NOT NULL,
    `date_naiss` date DEFAULT NULL,
    `photo` varchar(250) DEFAULT NULL,
    `pays_id` int(11) NOT NULL,
    `sport_id` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `fk_ath_pays` (`pays_id`),
    KEY `fk_ath_sport` (`sport_id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `athlete`
--

INSERT INTO `athlete` (`id`, `prenom`, `nom`, `date_naiss`, `photo`, `pays_id`, `sport_id`) VALUES
                                                                                                (1, 'Teddy', 'Rinner', '1989-04-07', '/images/Teddy_Riner.jpg', 1, 1),
                                                                                                (2, 'Simone', 'Biles', '1997-03-14', '/images/Simone_Biles.jpg', 2, 3),
                                                                                                (3, 'Léon', 'Marchand', '2002-05-17', '/images/Leon_Marchand.jpg', 1, 2),
                                                                                                (4, 'Florent', 'Manaudou', '1990-11-12', '/images/Florent_Manaudou.jpg', 1, 2),
                                                                                                (5, 'Sasha', 'Zhoya', '2002-06-25', '/images/Sasha_Zhoya.jpg', 1, 4),
                                                                                                (6, 'Romane', 'Dicko', '1999-09-30', '/images/Romane_Dicko.jpg', 1, 1),
                                                                                                (7, 'Oriane', 'Bertone', '2005-03-10', '/images/Oriane_Bertone.jpg', 1, 5),
                                                                                                (8, 'Maxime', 'Grousset', '1999-04-24', '/images/Maxime_Grousset.jpg', 1, 2),
                                                                                                (9, 'Noah', 'Lyles', '1997-07-18', '/images/Noah_Lyles.jpg', 2, 4),
                                                                                                (10, 'Sha\'Carri', 'Richardson', '2000-03-25', '/images/Sha_Carri_Richardson.jpg', 2, 4),
(11, 'Bobby', 'Finke', '1999-11-08', '/images/Bobby_Finke.jpg', 2, 2),
(12, 'Colin', 'Duffy', '2003-12-10', '/images/Colin_Duffy.jpg', 2, 5),
(13, 'Kate', 'Douglass', '2001-11-17', '/images/Kate_Douglass.jpg', 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `epreuve`
--

DROP TABLE IF EXISTS `epreuve`;
CREATE TABLE IF NOT EXISTS `epreuve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `id_sport` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_epr_sport` (`id_sport`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `epreuve`
--

INSERT INTO `epreuve` (`id`, `nom`, `id_sport`) VALUES
(1, '200m brasse', 2),
(2, '200m papillon', 2);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(25) DEFAULT NULL,
  `nom` varchar(100) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `code`, `nom`, `photo`) VALUES
(1, 'FRA', 'France', '/images/pays/France.webp'),
(2, 'USA', 'United States of America', '/images/pays/United-States.webp'),
(3, 'ALB', 'Albania', NULL),
(4, 'ALG', 'Algeria', NULL),
(5, 'GER', 'Germany', NULL),
(6, 'AND', 'Andorra', NULL),
(7, 'ANG', 'Angola', NULL),
(8, 'ANT', 'Antigua and Barbuda', NULL),
(9, 'AHO', 'Netherlands Antilles', NULL),
(10, 'KSA', 'Saudi Arabia', NULL),
(11, 'ARG', 'Argentina', NULL),
(12, 'ARM', 'Armenia', NULL),
(13, 'ARU', 'Aruba', NULL),
(14, 'AUS', 'Australia', NULL),
(15, 'AUT', 'Austria', NULL),
(16, 'AZE', 'Azerbaijan', NULL),
(17, 'BAH', 'Bahamas', NULL),
(18, 'BRN', 'Bahrain', NULL),
(19, 'BAN', 'Bangladesh', NULL),
(20, 'BAR', 'Barbados', NULL),
(21, 'BLR', 'Belarus', NULL),
(22, 'BEL', 'Belgium', NULL),
(23, 'BIZ', 'Belize', NULL),
(24, 'BEN', 'Benin', NULL),
(25, 'BER', 'Bermuda', NULL),
(26, 'BHU', 'Bhutan', NULL),
(27, 'BOL', 'Bolivia', NULL),
(28, 'BIH', 'Bosnia and Herzegovina', NULL),
(29, 'BOT', 'Botswana', NULL),
(30, 'BRA', 'Brazil', NULL),
(31, 'BRU', 'Brunei Darussalam', NULL),
(32, 'BUL', 'Bulgaria', NULL),
(33, 'BUR', 'Burkina Faso', NULL),
(34, 'BDI', 'Burundi', NULL),
(35, 'CAY', 'Cayman Islands', NULL),
(36, 'CAM', 'Cambodia', NULL),
(37, 'CMR', 'Cameroon', NULL),
(38, 'CAN', 'Canada', NULL),
(39, 'CPV', 'Cape Verde', NULL),
(40, 'CAF', 'Central African Republic', NULL),
(41, 'CHI', 'Chile', NULL),
(42, 'CHN', 'People\'s Republic of China', NULL),
                                                                                                (43, 'CYP', 'Cyprus', NULL),
                                                                                                (44, 'COL', 'Colombia', NULL),
                                                                                                (45, 'COM', 'Comoros', NULL),
                                                                                                (46, 'CGO', 'Congo', NULL),
                                                                                                (47, 'COD', 'Democratic Republic of the Congo', NULL),
                                                                                                (48, 'COK', 'Cook Islands', NULL),
                                                                                                (49, 'KOR', 'Republic of Korea', NULL),
                                                                                                (50, 'ANZ', 'Australasia (1908-1912)', NULL),
                                                                                                (51, 'BOH', 'Bohemia (TCH since 1920)', NULL),
                                                                                                (52, 'HBR', 'British Honduras', NULL),
                                                                                                (53, 'BWI', 'British West Indies (BAR, JAM', NULL),
                                                                                                (54, 'BIR', 'Burma (until 1989)', NULL),
                                                                                                (55, 'CRC', 'Costa Rica', NULL),
                                                                                                (56, 'TCH', 'Czechoslovakia', NULL),
                                                                                                (57, 'YMD', 'Democratic Republic of Yemen', NULL),
                                                                                                (58, 'FRG', 'Federal Republic of Germany (1950-1990, &quot;GER&quot; since) ', NULL),
                                                                                                (59, 'GDR', 'German Democratic Republic (1955-1990, ', NULL),
                                                                                                (60, 'IOP', 'Independant Participant', NULL),
                                                                                                (61, 'IOA', 'Independent Olympic Athlete', NULL),
                                                                                                (62, 'MIX', 'Mixed NOCs', NULL),
                                                                                                (63, 'ZZX', 'Mixed team', NULL),
                                                                                                (64, 'ZZZ', 'Other countries', NULL),
                                                                                                (65, 'RHO', 'Rhodesia (until 1968)', NULL),
                                                                                                (66, 'RU1', 'Russia', NULL),
                                                                                                (67, 'SER', 'Serbia - Yougoslavie YUG since', NULL),
                                                                                                (68, 'SCG', 'Serbia and Montenegro', NULL),
                                                                                                (69, 'EUN', 'Unified Team (ex USSR)', NULL),
                                                                                                (70, 'EUA', 'United Team of Germany (1956,1960,1964)', NULL),
                                                                                                (71, 'URS', 'USSR', NULL),
                                                                                                (72, 'YUG', 'Yugoslavia', NULL),
                                                                                                (73, 'ZAI', 'Zaire (1971-1997)', NULL),
                                                                                                (74, 'CIV', 'C&#244;te d\'Ivoire', NULL),
(75, 'CRO', 'Croatia', NULL),
(76, 'CUB', 'Cuba', NULL),
(77, 'DEN', 'Denmark', NULL),
(78, 'DJI', 'Djibouti', NULL),
(79, 'DOM', 'Dominican Republic', NULL),
(80, 'DMA', 'Dominica', NULL),
(81, 'EGY', 'Egypt', NULL),
(82, 'ESA', 'El Salvador', NULL),
(83, 'UAE', 'United Arab Emirates', NULL),
(84, 'ECU', 'Ecuador', NULL),
(85, 'ERI', 'Eritrea', NULL),
(86, 'ESP', 'Spain', NULL),
(87, 'EST', 'Estonia', NULL),
(88, 'RSA', 'South Africa', NULL),
(89, 'ETH', 'Ethiopia', NULL),
(90, 'MKD', 'The Former Yugoslav Republic of Macedonia', NULL),
(91, 'FIJ', 'Fiji', NULL),
(92, 'FIN', 'Finland', NULL),
(93, 'AFG', 'Afghanistan', NULL),
(94, 'GAB', 'Gabon', NULL),
(95, 'GAM', 'Gambia', NULL),
(96, 'GEO', 'Georgia', NULL),
(97, 'GHA', 'Ghana', NULL),
(98, 'GBR', 'Great Britain', NULL),
(99, 'GRE', 'Greece', NULL),
(100, 'GRN', 'Grenada', NULL),
(101, 'GUM', 'Guam', NULL),
(102, 'GUA', 'Guatemala', NULL),
(103, 'GUI', 'Guinea', NULL),
(104, 'GBS', 'Guinea-Bissau', NULL),
(105, 'GEQ', 'Equatorial Guinea', NULL),
(106, 'GUY', 'Guyana', NULL),
(107, 'HAI', 'Haiti', NULL),
(108, 'HON', 'Honduras', NULL),
(109, 'HKG', 'Hong Kong, China', NULL),
(110, 'HUN', 'Hungary', NULL),
(111, 'IND', 'India', NULL),
(112, 'INA', 'Indonesia', NULL),
(113, 'IRI', 'Islamic Republic of Iran', NULL),
(114, 'IRQ', 'Iraq', NULL),
(115, 'IRL', 'Ireland', NULL),
(116, 'ISL', 'Iceland', NULL),
(117, 'ISR', 'Israel', NULL),
(118, 'ITA', 'Italy', NULL),
(119, 'JAM', 'Jamaica', NULL),
(120, 'JPN', 'Japan', NULL),
(121, 'JOR', 'Jordan', NULL),
(122, 'KAZ', 'Kazakhstan', NULL),
(123, 'KEN', 'Kenya', NULL),
(124, 'KGZ', 'Kyrgyzstan', NULL),
(125, 'KIR', 'Kiribati', NULL),
(126, 'KUW', 'Kuwait', NULL),
(127, 'LAO', 'Lao People\'s Democratic Republic', NULL),
                                                                                                (128, 'LES', 'Lesotho', NULL),
                                                                                                (129, 'LAT', 'Latvia', NULL),
                                                                                                (130, 'LIB', 'Lebanon', NULL),
                                                                                                (131, 'LBR', 'Liberia', NULL),
                                                                                                (132, 'LBA', 'Libya', NULL),
                                                                                                (133, 'LIE', 'Liechtenstein', NULL),
                                                                                                (134, 'LTU', 'Lithuania', NULL),
                                                                                                (135, 'LUX', 'Luxembourg', NULL),
                                                                                                (136, 'MAD', 'Madagascar', NULL),
                                                                                                (137, 'MAS', 'Malaysia', NULL),
                                                                                                (138, 'MAW', 'Malawi', NULL),
                                                                                                (139, 'MDV', 'Maldives', NULL),
                                                                                                (140, 'MLI', 'Mali', NULL),
                                                                                                (141, 'MLT', 'Malta', NULL),
                                                                                                (142, 'MAR', 'Morocco', NULL),
                                                                                                (143, 'MHL', 'Marshall Islands', NULL),
                                                                                                (144, 'MRI', 'Mauritius', NULL),
                                                                                                (145, 'MTN', 'Mauritania', NULL),
                                                                                                (146, 'MEX', 'Mexico', NULL),
                                                                                                (147, 'FSM', 'Federated States of Micronesia', NULL),
                                                                                                (148, 'MDA', 'Republic of Moldova', NULL),
                                                                                                (149, 'MON', 'Monaco', NULL),
                                                                                                (150, 'MGL', 'Mongolia', NULL),
                                                                                                (151, 'MNE', 'Montenegro', NULL),
                                                                                                (152, 'MOZ', 'Mozambique', NULL),
                                                                                                (153, 'MYA', 'Myanmar (ex Burma until 1989)', NULL),
                                                                                                (154, 'NAM', 'Namibia', NULL),
                                                                                                (155, 'NRU', 'Nauru', NULL),
                                                                                                (156, 'NEP', 'Nepal', NULL),
                                                                                                (157, 'NCA', 'Nicaragua', NULL),
                                                                                                (158, 'NIG', 'Niger', NULL),
                                                                                                (159, 'NGR', 'Nigeria', NULL),
                                                                                                (160, 'NOR', 'Norway', NULL),
                                                                                                (161, 'NZL', 'New Zealand', NULL),
                                                                                                (162, 'OMA', 'Oman', NULL),
                                                                                                (163, 'UGA', 'Uganda', NULL),
                                                                                                (164, 'UZB', 'Uzbekistan', NULL),
                                                                                                (165, 'PAK', 'Pakistan', NULL),
                                                                                                (166, 'PLW', 'Palau', NULL),
                                                                                                (167, 'PLE', 'Palestine', NULL),
                                                                                                (168, 'PAN', 'Panama', NULL),
                                                                                                (169, 'PNG', 'Papua New Guinea', NULL),
                                                                                                (170, 'PAR', 'Paraguay', NULL),
                                                                                                (171, 'NED', 'Netherlands', NULL),
                                                                                                (172, 'PER', 'Peru', NULL),
                                                                                                (173, 'PHI', 'Philippines', NULL),
                                                                                                (174, 'POL', 'Poland', NULL),
                                                                                                (175, 'PUR', 'Puerto Rico', NULL),
                                                                                                (176, 'POR', 'Portugal', NULL),
                                                                                                (177, 'QAT', 'Qatar', NULL),
                                                                                                (178, 'PRK', 'Democratic People\'s Republic of Korea', NULL),
(179, 'ROU', 'Romania', NULL),
(180, 'RUS', 'Russian Federation', NULL),
(181, 'RWA', 'Rwanda', NULL),
(182, 'SKN', 'Saint Kitts and Nevis', NULL),
(183, 'LCA', 'Saint Lucia', NULL),
(184, 'SMR', 'San Marino', NULL),
(185, 'VIN', 'St Vincent and the Grenadines', NULL),
(186, 'SOL', 'Solomon Islands', NULL),
(187, 'SAM', 'Samoa (until 1996 Western Samoa)', NULL),
(188, 'ASA', 'American Samoa', NULL),
(189, 'STP', 'Sao Tome and Principe', NULL),
(190, 'SEN', 'Senegal', NULL),
(191, 'SRB', 'Serbia', NULL),
(192, 'SEY', 'Seychelles', NULL),
(193, 'SLE', 'Sierra Leone', NULL),
(194, 'SIN', 'Singapore', NULL),
(195, 'SVK', 'Slovakia', NULL),
(196, 'SLO', 'Slovenia', NULL),
(197, 'SOM', 'Somalia', NULL),
(198, 'SUD', 'Sudan', NULL),
(199, 'SRI', 'Sri Lanka', NULL),
(200, 'SWE', 'Sweden', NULL),
(201, 'SUI', 'Switzerland', NULL),
(202, 'SUR', 'Suriname', NULL),
(203, 'SWZ', 'Swaziland', NULL),
(204, 'SYR', 'Syrian Arab Republic', NULL),
(205, 'TJK', 'Tajikistan', NULL),
(206, 'TPE', 'Chinese Taipei', NULL),
(207, 'TAN', 'United Republic of Tanzania', NULL),
(208, 'CHA', 'Chad', NULL),
(209, 'CZE', 'Czech Republic', NULL),
(210, 'THA', 'Thailand', NULL),
(211, 'TLS', 'Democratic Republic of Timor-Leste', NULL),
(212, 'TOG', 'Togo', NULL),
(213, 'TGA', 'Tonga', NULL),
(214, 'TTO', 'Trinidad and Tobago', NULL),
(215, 'TUN', 'Tunisia', NULL),
(216, 'TKM', 'Turkmenistan', NULL),
(217, 'TUR', 'Turkey', NULL),
(218, 'TUV', 'Tuvalu', NULL),
(219, 'UKR', 'Ukraine', NULL),
(220, 'URU', 'Uruguay', NULL),
(221, 'VAN', 'Vanuatu', NULL),
(222, 'VEN', 'Venezuela', NULL),
(223, 'IVB', 'Virgin Islands, British', NULL),
(224, 'ISV', 'Virgin Islands, US', NULL),
(225, 'VIE', 'Vietnam', NULL),
(226, 'YEM', 'Yemen', NULL),
(227, 'ZAM', 'Zambia', NULL),
(228, 'ZIM', 'Zimbabwe', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE IF NOT EXISTS `site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `emplacement` varchar(75) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `nom`, `emplacement`, `photo`) VALUES
(1, ' SoFi Stadium ', '1001 S. Stadium Drive\r\nInglewood, CA 90301', '/images/site/SoFi-Stadium.jpg'),
(2, ' Intuit Dome ', '3939 West 102nd Street\r\nInglewood, CA 90303', '/images/site/Intuit_Dome.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `sport`
--

DROP TABLE IF EXISTS `sport`;
CREATE TABLE IF NOT EXISTS `sport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_site-id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sport`
--

INSERT INTO `sport` (`id`, `nom`, `photo`, `site_id`) VALUES
(1, 'judo', '/images/sport/Judo.avif', NULL),
(2, 'natation', '/images/sport/natation.jpg', 1),
(3, 'gym', NULL, NULL),
(4, 'Athlétisme', NULL, NULL),
(5, 'Escalade', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sport-site`
--

DROP TABLE IF EXISTS `sport-site`;
CREATE TABLE IF NOT EXISTS `sport-site` (
  `sport_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  KEY `fk_sport_id` (`sport_id`),
  KEY `fk_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `sport-site`
--

INSERT INTO `sport-site` (`sport_id`, `site_id`) VALUES
(2, 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `athlete`
--
ALTER TABLE `athlete`
  ADD CONSTRAINT `fk_ath_pays` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `fk_ath_sport` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`id`);

--
-- Contraintes pour la table `epreuve`
--
ALTER TABLE `epreuve`
  ADD CONSTRAINT `fk_epr_sport` FOREIGN KEY (`id_sport`) REFERENCES `sport` (`id`);

--
-- Contraintes pour la table `sport`
--
ALTER TABLE `sport`
  ADD CONSTRAINT `fk_site-id` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `sport-site`
--
ALTER TABLE `sport-site`
  ADD CONSTRAINT `fk_site_id` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`),
  ADD CONSTRAINT `fk_sport_id` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
