-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  lun. 01 juin 2020 à 22:11
-- Version du serveur :  5.7.28
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `backupfilrouge`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_libelle`) VALUES
(1, 'ac'),
(2, 'vulputate'),
(3, 'penatibus'),
(4, 'bibendum'),
(5, 'libero.'),
(6, 'lobortis'),
(7, 'nec,'),
(8, 'odio.'),
(9, 'euismod'),
(10, 'pede,');

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `cou_id` varchar(2) NOT NULL,
  `cou_name` varchar(50) NOT NULL,
  PRIMARY KEY (`cou_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`cou_id`, `cou_name`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `cus_id` int(11) NOT NULL,
  `cus_ref` varchar(12) NOT NULL,
  `cus_birthday` date NOT NULL,
  `cus_lastname` varchar(50) NOT NULL,
  `cus_firstname` varchar(50) NOT NULL,
  `cus_address` varchar(50) NOT NULL,
  `cus_zipcode` varchar(50) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_mail` varchar(200) NOT NULL,
  `cus_discount` int(11) NOT NULL,
  `cus_phone` int(11) NOT NULL,
  `cus_add_date` date NOT NULL,
  `cus_update` date DEFAULT NULL,
  `cou_id` varchar(2) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `typ_id` int(11) NOT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `cou_id` (`cou_id`),
  KEY `emp_id` (`emp_id`),
  KEY `typ_id` (`typ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_ref`, `cus_birthday`, `cus_lastname`, `cus_firstname`, `cus_address`, `cus_zipcode`, `cus_city`, `cus_mail`, `cus_discount`, `cus_phone`, `cus_add_date`, `cus_update`, `cou_id`, `emp_id`, `typ_id`) VALUES
(6, '82705981599', '1974-01-29', 'Kessie', 'Conley', '364-1765 Eget St.', '37028', 'Gambolò', 'auctor.nunc.nulla@ametconsectetuer.co.uk', 10, 587280067, '1990-07-25', NULL, 'GB', 12, 1),
(5, '02608544599', '2010-10-05', 'Neville', 'Workman', 'P.O. Box 554, 4718 Gravida Rd.', '82960', 'Londerzeel', 'eros.non.enim@venenatislacus.edu', 5, 447410630, '1996-05-08', NULL, 'US', 7, 1),
(4, '95591790499', '1968-09-15', 'Avram', 'Byers', 'Ap #904-2852 Blandit Av.', '95288', 'Spokane', 'magna.sed@Cras.org', 10, 972883888, '1988-08-27', NULL, 'CA', 13, 1),
(3, '87247846599', '1974-07-14', 'Hunter', 'Shelton', '837-5282 Dictum Road', '25755', 'Narbolia', 'Vivamus.euismod@justo.ca', 8, 425933049, '1989-10-02', NULL, 'KE', 9, 2),
(2, '84304857099', '1975-07-14', 'Amelia', 'Perry', 'Ap #240-3938 Vel Street', '25440', 'Soissons', 'eu.lacus.Quisque@metusfacilisis.edu', 8, 639997962, '2009-05-18', NULL, 'FR', 9, 2),
(1, '71879566399', '1996-03-12', 'Walker', 'Harding', 'P.O. Box 529, 2691 Mauris St.', '31730', 'Pariaman', 'Duis.dignissim.tempor@Maurisvestibulum.edu', 9, 510980593, '2002-03-09', NULL, 'GB', 11, 1),
(7, '37439451299', '1944-12-22', 'Xanthus', 'Perkins', 'P.O. Box 315, 5491 Fames Road', '48252', 'Nelson', 'lectus.Nullam.suscipit@auctorMauris.edu', 12, 362574572, '2016-02-13', NULL, 'GM', 10, 2),
(8, '28404771799', '1948-07-17', 'Yetta', 'Bruce', 'P.O. Box 507, 6462 A, Av.', '96707', 'Sivry-Rance', 'porttitor.tellus@egetlaoreetposuere.com', 13, 556119186, '1986-10-28', NULL, 'FR', 17, 1),
(9, '75388346099', '1962-01-26', 'Addison', 'Goodwin', 'P.O. Box 960, 1741 Amet Avenue', '83514', 'Taltal', 'mauris.ipsum@duiaugueeu.co.uk', 15, 682804311, '1989-03-06', NULL, 'GB', 16, 1),
(10, '01202269299', '1978-08-29', 'Inga', 'Haynes', '7022 Ultrices Ave', '23951', 'Bhir', 'nulla.Integer.vulputate@lectus.org', 11, 961370304, '1998-03-28', NULL, 'FR', 14, 2),
(11, '36423574399', '1959-08-18', 'Portia', 'Rosario', 'P.O. Box 283, 2645 Sagittis Rd.', '97621', 'Tomsk', 'tortor.Nunc@nislelementumpurus.co.uk', 25, 236956555, '2000-01-30', NULL, 'FR', 13, 2),
(12, '00352122799', '1982-05-06', 'Uriel', 'Terrell', 'Ap #552-4157 Velit. Rd.', '75414', 'Morrinsville', 'In@nonegestasa.ca', 76, 969863896, '1990-11-21', NULL, 'FR', 17, 2),
(13, '80773150699', '1991-09-15', 'Meredith', 'Flores', 'P.O. Box 909, 682 Arcu St.', '15141', 'Armidale', 'mus.Proin@scelerisque.edu', 58, 559948737, '1991-01-21', NULL, 'FR', 9, 2),
(14, '16413987899', '1976-11-11', 'Uriah', 'Conrad', '8630 Mauris Avenue', '08914', 'Malgesso', 'dolor.elit@Pellentesque.edu', 18, 283459348, '2015-01-05', NULL, 'FR', 12, 2),
(15, '64971955899', '1951-02-04', 'Madeson', 'Roman', 'Ap #714-3234 Euismod Av.', '67985', 'Rves', 'semper.et@tortorIntegeraliquam.edu', 15, 648764484, '1986-11-10', NULL, 'FR', 8, 1),
(16, '66850171799', '1972-03-01', 'Driscoll', 'Gilmore', 'P.O. Box 520, 467 Amet Ave', '64144', 'Jaboatão dos Guararapes', 'sodales.elit.erat@disparturient.net', 17, 387482469, '2002-12-02', NULL, 'FR', 8, 2),
(17, '07854527499', '1949-09-29', 'Francis', 'Garner', 'P.O. Box 174, 3074 Lacus. St.', '16604', 'Nevers', 'Curabitur.massa@aliquam.org', 10, 610359621, '1993-04-11', NULL, 'FR', 7, 2),
(18, '70293763199', '1961-06-14', 'Ferris', 'Conrad', 'Ap #642-6318 Varius Rd.', '28656', 'Kota', 'primis@liberodui.com', 14, 134228546, '2012-09-07', NULL, 'FR', 12, 1),
(19, '78283129799', '1950-07-15', 'Ruth', 'Lawrence', '861-521 Vitae, Road', '70757', 'Valéncia', 'elementum.sem@convallisconvallis.net', 15, 584642021, '1993-02-24', NULL, 'FR', 16, 1),
(20, '57857846299', '1973-05-28', 'Jack', 'Cote', 'P.O. Box 684, 4069 Lorem St.', '02985', 'Darwin', 'Cum@ametornare.org', 18, 188034368, '2005-04-29', NULL, 'FR', 7, 2);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `emp_id` int(11) NOT NULL,
  `emp_regNumber` int(11) NOT NULL,
  `emp_supervisor_id` int(11) DEFAULT NULL,
  `emp_lastname` varchar(50) NOT NULL,
  `emp_firstname` varchar(50) NOT NULL,
  `emp_address` varchar(100) DEFAULT NULL,
  `emp_zipcode` varchar(10) DEFAULT NULL,
  `emp_city` varchar(50) NOT NULL,
  `emp_mail` varchar(100) NOT NULL,
  `emp_phone` int(11) NOT NULL,
  `emp_salary` varchar(50) DEFAULT NULL,
  `emp_entry_date` date NOT NULL,
  `emp_children` int(11) NOT NULL,
  `emp_gender` varchar(1) NOT NULL,
  `emp_birthday` date NOT NULL,
  `pos_id` int(11) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `pos_id` (`pos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_regNumber`, `emp_supervisor_id`, `emp_lastname`, `emp_firstname`, `emp_address`, `emp_zipcode`, `emp_city`, `emp_mail`, `emp_phone`, `emp_salary`, `emp_entry_date`, `emp_children`, `emp_gender`, `emp_birthday`, `pos_id`) VALUES
(1, 564203, NULL, 'Caesar', 'Holman', 'P.O. Box 951, 164 Nec, Ave', '50284', 'Baltasound', 'mauris@magna.edu', 610753004, NULL, '2020-12-13', 2, 'M', '1969-12-31', 1),
(2, 564204, 1, 'Dexter', 'Scott', 'P.O. Box 659, 2036 Dis Av.', '29981', 'Skovorodino', 'lectus@etarcu.ca', 499699416, NULL, '2021-03-01', 2, 'F', '1969-12-31', 2),
(3, 564205, 1, 'Beverly', 'Sparks', '2176 Orci Avenue', '01785', 'Luik', 'arcu.Aliquam@diamluctuslobortis.org', 455823469, NULL, '2020-07-21', 0, 'M', '1969-12-31', 3),
(4, 564206, 1, 'Aladdin', 'Lopez', '505-980 Donec Street', '55896', 'Isla de Maipo', 'Nulla@lacinia.net', 290142899, NULL, '2019-09-22', 2, 'F', '1969-12-31', 4),
(5, 564207, 4, 'Sage', 'Olson', '3346 Senectus St.', '03120', 'Olen', 'amet.risus@euodioPhasellus.edu', 395133693, NULL, '2019-12-02', 2, 'F', '1985-12-31', 6),
(6, 564208, 4, 'Baker', 'Horne', '6494 Ipsum. Avenue', '56638', 'Marche-les-Dames', 'mus.Proin.vel@Vivamusmolestiedapibus.edu', 378618925, NULL, '2020-01-21', 1, 'M', '1990-12-31', 7),
(7, 564209, 4, 'Graiden', 'Macdonald', '9491 Convallis Av.', '17332', 'Meerdonk', 'metus.Aliquam.erat@loremfringilla.ca', 873412202, NULL, '2021-03-28', 0, 'F', '2000-12-31', 5),
(8, 564210, 4, 'Regina', 'Simon', '2440 Praesent Avenue', '20695', 'Wetaskiwin', 'sodales.purus@semperduilectus.org', 198740304, NULL, '2020-08-15', 3, 'M', '1979-12-31', 5),
(9, 564211, 4, 'Josiah', 'Pearson', '193-1179 Nostra, St.', '06235', 'Castello Tesino', 'sed@felispurus.net', 445369111, NULL, '2021-04-24', 1, 'F', '2002-12-31', 5),
(10, 564212, 4, 'Xandra', 'Sellers', 'Ap #793-3919 Fringilla Rd.', '94544', 'Vaux-sous-ChŽvremont', 'In.nec@dictummagnaUt.com', 102133110, NULL, '2019-10-13', 2, 'M', '1993-12-31', 5),
(11, 564213, 4, 'Linus', 'Walter', 'Ap #990-7424 Sed Rd.', '57668', 'Dumbarton', 'vulputate.lacus.Cras@antedictummi.net', 614857803, NULL, '2019-10-29', 3, 'F', '1999-12-31', 5),
(12, 564214, 4, 'Darrel', 'Crawford', '2119 Dolor. Av.', '54283', 'Mondolfo', 'Mauris.ut@sed.co.uk', 403658770, NULL, '2019-06-18', 1, 'M', '1996-12-31', 5),
(13, 564215, 4, 'Arthur', 'Erickson', '2933 Lacus, Rd.', '40024', 'Rocourt', 'mus@diamloremauctor.org', 249995431, NULL, '2021-04-14', 1, 'F', '2003-12-31', 5),
(14, 564216, 4, 'Amy', 'Richards', 'P.O. Box 627, 1797 Quis, Rd.', '46271', 'Westlock', 'eget@magna.ca', 312180581, NULL, '2020-06-29', 0, 'M', '1987-12-31', 5),
(15, 564217, 4, 'Clayton', 'Santana', '578-1012 Hymenaeos. Rd.', '65034', 'Mainz', 'tellus.Phasellus.elit@non.com', 604453851, NULL, '2019-06-08', 3, 'F', '1990-12-31', 5),
(16, 564218, 4, 'Steven', 'Fernandez', '312-2920 Nullam Ave', '85617', 'Arkhangelsk', 'ut@eusemPellentesque.ca', 292439349, NULL, '2020-09-17', 1, 'M', '1988-12-31', 5),
(17, 564219, 4, 'Susan', 'Howe', '723-6048 Sit Street', '79708', 'Chía', 'non@augueutlacus.edu', 363177632, NULL, '2019-06-12', 1, 'F', '2004-12-31', 5);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ord_id` int(11) NOT NULL,
  `ord_ref` varchar(10) DEFAULT NULL,
  `ord_date` date NOT NULL,
  `ord_payment` date DEFAULT NULL,
  `ord_ship` date DEFAULT NULL,
  `ord_reception` date DEFAULT NULL,
  `ord_status` varchar(50) DEFAULT NULL,
  `cus_id` int(11) NOT NULL,
  PRIMARY KEY (`ord_id`),
  KEY `cus_id` (`cus_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `ode_id` int(11) NOT NULL,
  `ode_unit_price_ht` decimal(10,0) NOT NULL,
  `ode_quantity` int(11) NOT NULL,
  `ode_discount` int(11) NOT NULL,
  `ord_id` int(11) NOT NULL,
  PRIMARY KEY (`ode_id`),
  KEY `ord_id` (`ord_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `pos_id` int(11) NOT NULL,
  `pos_libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`pos_id`, `pos_libelle`) VALUES
(1, 'Directeur'),
(2, 'RH'),
(3, 'Comptable'),
(4, 'Directeur commercial'),
(5, 'Commercial'),
(6, 'Community manager'),
(7, 'Chargé de la clientèle');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `pro_id` int(11) NOT NULL,
  `pro_ref` varchar(10) NOT NULL,
  `pro_ean` int(11) NOT NULL,
  `pro_name` varchar(50) NOT NULL,
  `pro_price` decimal(10,0) NOT NULL,
  `pro_stock` int(11) NOT NULL,
  `pro_stock_alert` int(11) NOT NULL,
  `pro_color` varchar(50) NOT NULL,
  `pro_description` varchar(1000) DEFAULT NULL,
  `pro_publish` int(11) NOT NULL,
  `pro_picture` varchar(10) NOT NULL,
  `pro_add` date NOT NULL,
  `pro_update` date DEFAULT NULL,
  `ode_id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `ode_id` (`ode_id`),
  KEY `sup_id` (`sup_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `sup_id` int(11) NOT NULL,
  `sup_ref` varchar(12) NOT NULL,
  `sup_birthday` date NOT NULL,
  `sup_name` varchar(50) NOT NULL,
  `sup_address` varchar(100) DEFAULT NULL,
  `sup_zipcode` varchar(10) DEFAULT NULL,
  `sup_city` varchar(50) NOT NULL,
  `sup_phone` int(11) NOT NULL,
  `sup_mail` varchar(100) DEFAULT NULL,
  `cou_id` varchar(2) NOT NULL,
  PRIMARY KEY (`sup_id`),
  KEY `cou_id` (`cou_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `sup_ref`, `sup_birthday`, `sup_name`, `sup_address`, `sup_zipcode`, `sup_city`, `sup_phone`, `sup_mail`, `cou_id`) VALUES
(1, '95253422099', '1987-03-16', 'Honorato G. Valdez', 'P.O. Box 977, 7297 Sed Rd.', '24672', 'Saltcoats', 406518327, 'Duis.at@lobortis.ca', 'CA'),
(2, '18848527199', '1940-12-20', 'Clark E. Carver', '3758 Et, Road', '75739', 'Épernay', 755683269, 'mi.pede.nonummy@egetodio.net', 'FR'),
(3, '47227834899', '1990-05-29', 'Jenna P. Todd', '2888 Tristique Rd.', '24440', 'Mostazal', 250555148, 'consectetuer.adipiscing@eget.edu', 'GB'),
(4, '70681968199', '1958-07-01', 'Keane Y. Bowman', 'P.O. Box 886, 5407 Fringilla Street', '24984', 'Groenlo', 812233729, 'Mauris.vestibulum@musDonecdignissim.ca', 'CA'),
(5, '51628603699', '1947-01-09', 'Uta W. George', '5419 Vel Av.', '63380', 'Sangerhausen', 817056290, 'tempus.lorem@non.ca', 'FR'),
(6, '83509079599', '1997-09-20', 'Haviva W. Fields', 'P.O. Box 990, 8735 Erat Av.', '19123', 'Ranchi', 648587578, 'justo@velitPellentesque.net', 'FR'),
(7, '80365565099', '1939-08-14', 'Bruno D. Roman', '9151 Amet Rd.', '50390', 'Biggleswade', 565641875, 'Nam.nulla.magna@Nullasemper.org', 'US'),
(8, '22387507999', '1980-12-11', 'Hilary R. Moreno', '8735 Cras Avenue', '96508', 'Los Vilos', 588436074, 'erat@fames.co.uk', 'GB'),
(9, '97542091399', '1960-12-30', 'Lucy O. Chandler', 'P.O. Box 369, 4318 Eu, Av.', '82422', 'Santipur', 490438765, 'fermentum.metus.Aenean@afelis.co.uk', 'GB'),
(10, '15247084299', '2010-02-11', 'Barry X. Patton', 'Ap #852-489 Sed, Av.', '07072', 'Ratlam', 817377169, 'sociis.natoque.penatibus@ut.edu', 'US'),
(11, '10912539099', '1956-12-31', 'Christian V. Carver', '695-9715 Montes, Rd.', '84503', 'Wood Buffalo', 253890046, 'eu@placeratorcilacus.com', 'RU'),
(12, '07899772099', '1970-03-26', 'Elvis N. Carey', '337-8903 Natoque St.', '39109', 'Coreglia Antelminelli', 469086509, 'tempus@dolordolortempus.edu', 'FR'),
(13, '17303774699', '1985-10-09', 'Catherine P. Keller', 'Ap #907-4738 Scelerisque St.', '31484', 'Halle', 793871543, 'molestie.arcu@lacus.ca', 'FR'),
(14, '61997661199', '1943-02-12', 'Maisie D. Dillard', '289-5539 Porttitor Road', '97358', 'Hillsboro', 117158170, 'Proin.velit@in.org', 'KE'),
(15, '40660317299', '2014-04-02', 'Garrett F. Kidd', '6669 Imperdiet Ave', '66268', 'Merksem', 980499234, 'aliquet.Proin.velit@Nuncmaurissapien.co.uk', 'US'),
(16, '03693628099', '1976-10-24', 'Uriah P. York', '321-3479 Auctor St.', '18449', 'Clare', 824996105, 'dui@volutpatornare.edu', 'FR'),
(17, '10958993399', '2015-06-10', 'Ava V. Vincent', 'Ap #404-7408 Neque. Road', '72136', 'Bergerac', 351605724, 'et@gravidasitamet.com', 'FR'),
(18, '54628842299', '1985-08-18', 'Emily N. Gamble', 'Ap #943-623 Urna Road', '27508', 'Midlands', 274943463, 'in.aliquet.lobortis@Donecvitaeerat.co.uk', 'FR'),
(19, '45515769799', '1972-10-13', 'Zahir V. Mayo', '7751 Feugiat. St.', '17355', 'Quenast', 340829239, 'adipiscing@placerataugue.net', 'FR'),
(20, '12592451799', '1958-10-23', 'Zorita Z. Mcleod', '233-3265 Nulla Ave', '22765', 'Armento', 889052916, 'sit.amet@afeugiattellus.ca', 'FR');

-- --------------------------------------------------------

--
-- Structure de la table `typecustomer`
--

DROP TABLE IF EXISTS `typecustomer`;
CREATE TABLE IF NOT EXISTS `typecustomer` (
  `typ_id` int(11) NOT NULL,
  `typ_libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`typ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typecustomer`
--

INSERT INTO `typecustomer` (`typ_id`, `typ_libelle`) VALUES
(1, 'professionnel'),
(2, 'particulier');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
