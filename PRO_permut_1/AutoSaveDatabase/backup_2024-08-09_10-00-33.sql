-- Connection Information --
-- Host: db.3wa.io
-- User: kilianjanus
-- Password: 65c31ce01e7314f2e27acf9451035f58
-- Database: kilianjanus_permut

SET NAMES 'utf8';
SET CHARACTER SET utf8;
SET COLLATION_CONNECTION = 'utf8_general_ci';

-- Creating table `alertes` --
CREATE TABLE `alertes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oneLine` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `first_official` int(11) NOT NULL,
  `second_official` int(11) NOT NULL,
  `third_official` int(11) DEFAULT NULL,
  `fourth_official` int(11) DEFAULT NULL,
  `five_official` int(11) DEFAULT NULL,
  `statut_first_official` int(11) DEFAULT NULL,
  `statut_second_official` int(11) DEFAULT NULL,
  `statut_third_official` int(11) DEFAULT NULL,
  `statut_fourth_official` int(11) DEFAULT NULL,
  `statut_five_official` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `first_official` (`first_official`),
  KEY `second_official` (`second_official`),
  KEY `third_official` (`third_official`),
  KEY `fourth_official` (`fourth_official`),
  KEY `five_official` (`five_official`),
  KEY `statut_first_official` (`statut_first_official`),
  KEY `statut_second_official` (`statut_second_official`),
  KEY `statut_third_official` (`statut_third_official`),
  KEY `statut_fourth_official` (`statut_fourth_official`),
  KEY `statut_five_official` (`statut_five_official`),
  CONSTRAINT `alertes_ibfk_1` FOREIGN KEY (`first_official`) REFERENCES `users` (`id`),
  CONSTRAINT `alertes_ibfk_10` FOREIGN KEY (`statut_five_official`) REFERENCES `statutsalertes` (`id`),
  CONSTRAINT `alertes_ibfk_2` FOREIGN KEY (`second_official`) REFERENCES `users` (`id`),
  CONSTRAINT `alertes_ibfk_3` FOREIGN KEY (`third_official`) REFERENCES `users` (`id`),
  CONSTRAINT `alertes_ibfk_4` FOREIGN KEY (`fourth_official`) REFERENCES `users` (`id`),
  CONSTRAINT `alertes_ibfk_5` FOREIGN KEY (`five_official`) REFERENCES `users` (`id`),
  CONSTRAINT `alertes_ibfk_6` FOREIGN KEY (`statut_first_official`) REFERENCES `statutsalertes` (`id`),
  CONSTRAINT `alertes_ibfk_7` FOREIGN KEY (`statut_second_official`) REFERENCES `statutsalertes` (`id`),
  CONSTRAINT `alertes_ibfk_8` FOREIGN KEY (`statut_third_official`) REFERENCES `statutsalertes` (`id`),
  CONSTRAINT `alertes_ibfk_9` FOREIGN KEY (`statut_fourth_official`) REFERENCES `statutsalertes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
-- Inserting data into table `alertes` --
INSERT INTO `alertes` (`id`, `oneLine`, `first_official`, `second_official`, `third_official`, `fourth_official`, `five_official`, `statut_first_official`, `statut_second_official`, `statut_third_official`, `statut_fourth_official`, `statut_five_official`) VALUES ('16', '2024-07-24 08:16:07', '3', '4', '', '', '', '', '', '', '', '');

-- Creating table `contact` --
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiptDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `identity` varchar(100) NOT NULL,
  `email` int(150) NOT NULL,
  `story` longtext NOT NULL,
  `statut` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Non lu, 1 = Lu',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Creating table `departments` --
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
-- Inserting data into table `departments` --
INSERT INTO `departments` (`id`, `name`) VALUES ('1', 'Ain');
INSERT INTO `departments` (`id`, `name`) VALUES ('2', 'Aisne');
INSERT INTO `departments` (`id`, `name`) VALUES ('3', 'Allier');
INSERT INTO `departments` (`id`, `name`) VALUES ('4', 'Alpes-de-Haute-Provence');
INSERT INTO `departments` (`id`, `name`) VALUES ('5', 'Hautes-Alpes');
INSERT INTO `departments` (`id`, `name`) VALUES ('6', 'Alpes Maritimes');
INSERT INTO `departments` (`id`, `name`) VALUES ('7', 'Ardeche');
INSERT INTO `departments` (`id`, `name`) VALUES ('8', 'Ardennes');
INSERT INTO `departments` (`id`, `name`) VALUES ('9', 'Ariege');
INSERT INTO `departments` (`id`, `name`) VALUES ('10', 'Aube');
INSERT INTO `departments` (`id`, `name`) VALUES ('11', 'Aude');
INSERT INTO `departments` (`id`, `name`) VALUES ('12', 'Aveyron');
INSERT INTO `departments` (`id`, `name`) VALUES ('13', 'Bouches-du-Rhone');
INSERT INTO `departments` (`id`, `name`) VALUES ('14', 'Calvados');
INSERT INTO `departments` (`id`, `name`) VALUES ('15', 'Cantal');
INSERT INTO `departments` (`id`, `name`) VALUES ('16', 'Charente');
INSERT INTO `departments` (`id`, `name`) VALUES ('17', 'Charente-Maritime');
INSERT INTO `departments` (`id`, `name`) VALUES ('18', 'Cher');
INSERT INTO `departments` (`id`, `name`) VALUES ('19', 'Correze');
INSERT INTO `departments` (`id`, `name`) VALUES ('20', 'Corse-du-Sud - Haute Corse');
INSERT INTO `departments` (`id`, `name`) VALUES ('21', 'Cote-d Or');
INSERT INTO `departments` (`id`, `name`) VALUES ('22', 'Cotes d Armor');
INSERT INTO `departments` (`id`, `name`) VALUES ('23', 'Creuse');
INSERT INTO `departments` (`id`, `name`) VALUES ('24', 'Dordogne');
INSERT INTO `departments` (`id`, `name`) VALUES ('25', 'Doubs');
INSERT INTO `departments` (`id`, `name`) VALUES ('26', 'Drome');
INSERT INTO `departments` (`id`, `name`) VALUES ('27', 'Eure');
INSERT INTO `departments` (`id`, `name`) VALUES ('28', 'Eure-et-Loir');
INSERT INTO `departments` (`id`, `name`) VALUES ('29', 'Finistere');
INSERT INTO `departments` (`id`, `name`) VALUES ('30', 'Gard');
INSERT INTO `departments` (`id`, `name`) VALUES ('31', 'Haute Garonne');
INSERT INTO `departments` (`id`, `name`) VALUES ('32', 'Gers');
INSERT INTO `departments` (`id`, `name`) VALUES ('33', 'Gironde');
INSERT INTO `departments` (`id`, `name`) VALUES ('34', 'Herault');
INSERT INTO `departments` (`id`, `name`) VALUES ('35', 'Ille-et-Vilaine');
INSERT INTO `departments` (`id`, `name`) VALUES ('36', 'Indre');
INSERT INTO `departments` (`id`, `name`) VALUES ('37', 'Indre-et-Loire');
INSERT INTO `departments` (`id`, `name`) VALUES ('38', 'Isere');
INSERT INTO `departments` (`id`, `name`) VALUES ('39', 'Jura');
INSERT INTO `departments` (`id`, `name`) VALUES ('40', 'Landes');
INSERT INTO `departments` (`id`, `name`) VALUES ('41', 'Loir-et-Cher');
INSERT INTO `departments` (`id`, `name`) VALUES ('42', 'Loire');
INSERT INTO `departments` (`id`, `name`) VALUES ('43', 'Haute Loire');
INSERT INTO `departments` (`id`, `name`) VALUES ('44', 'Loire Atlantique');
INSERT INTO `departments` (`id`, `name`) VALUES ('45', 'Loiret');
INSERT INTO `departments` (`id`, `name`) VALUES ('46', 'Lot');
INSERT INTO `departments` (`id`, `name`) VALUES ('47', 'Lot-et-Garonne');
INSERT INTO `departments` (`id`, `name`) VALUES ('48', 'Lozere');
INSERT INTO `departments` (`id`, `name`) VALUES ('49', 'Maine-et-Loire');
INSERT INTO `departments` (`id`, `name`) VALUES ('50', 'Manche');
INSERT INTO `departments` (`id`, `name`) VALUES ('51', 'Marne');
INSERT INTO `departments` (`id`, `name`) VALUES ('52', 'Haute Marne');
INSERT INTO `departments` (`id`, `name`) VALUES ('53', 'Mayenne');
INSERT INTO `departments` (`id`, `name`) VALUES ('54', 'Meurthe-et-Moselle');
INSERT INTO `departments` (`id`, `name`) VALUES ('55', 'Meuse');
INSERT INTO `departments` (`id`, `name`) VALUES ('56', 'Morbihan');
INSERT INTO `departments` (`id`, `name`) VALUES ('57', 'Moselle');
INSERT INTO `departments` (`id`, `name`) VALUES ('58', 'Nievre');
INSERT INTO `departments` (`id`, `name`) VALUES ('59', 'Nord');
INSERT INTO `departments` (`id`, `name`) VALUES ('60', 'Oise');
INSERT INTO `departments` (`id`, `name`) VALUES ('61', 'Orne');
INSERT INTO `departments` (`id`, `name`) VALUES ('62', 'Pas-de-Calais');
INSERT INTO `departments` (`id`, `name`) VALUES ('63', 'Puy-de-Dome');
INSERT INTO `departments` (`id`, `name`) VALUES ('64', 'Pyrenees Atlantiques');
INSERT INTO `departments` (`id`, `name`) VALUES ('65', 'Hautes Pyrenees');
INSERT INTO `departments` (`id`, `name`) VALUES ('66', 'Pyrenees Orientales');
INSERT INTO `departments` (`id`, `name`) VALUES ('67', 'Bas-Rhin');
INSERT INTO `departments` (`id`, `name`) VALUES ('68', 'Haut-Rhin');
INSERT INTO `departments` (`id`, `name`) VALUES ('69', 'Rhone');
INSERT INTO `departments` (`id`, `name`) VALUES ('70', 'Haute Saone');
INSERT INTO `departments` (`id`, `name`) VALUES ('71', 'Saone-et-Loire');
INSERT INTO `departments` (`id`, `name`) VALUES ('72', 'Sarthe');
INSERT INTO `departments` (`id`, `name`) VALUES ('73', 'Savoie');
INSERT INTO `departments` (`id`, `name`) VALUES ('74', 'Haute Savoie');
INSERT INTO `departments` (`id`, `name`) VALUES ('75', 'Paris');
INSERT INTO `departments` (`id`, `name`) VALUES ('76', 'Seine Maritime');
INSERT INTO `departments` (`id`, `name`) VALUES ('77', 'Seine-et-Marne');
INSERT INTO `departments` (`id`, `name`) VALUES ('78', 'Yvelines');
INSERT INTO `departments` (`id`, `name`) VALUES ('79', 'Deux-Sevres');
INSERT INTO `departments` (`id`, `name`) VALUES ('80', 'Somme');
INSERT INTO `departments` (`id`, `name`) VALUES ('81', 'Tarn');
INSERT INTO `departments` (`id`, `name`) VALUES ('82', 'Tarn-et-Garonne');
INSERT INTO `departments` (`id`, `name`) VALUES ('83', 'Var');
INSERT INTO `departments` (`id`, `name`) VALUES ('84', 'Vaucluse');
INSERT INTO `departments` (`id`, `name`) VALUES ('85', 'Vendee');
INSERT INTO `departments` (`id`, `name`) VALUES ('86', 'Vienne');
INSERT INTO `departments` (`id`, `name`) VALUES ('87', 'Haute Vienne');
INSERT INTO `departments` (`id`, `name`) VALUES ('88', 'Vosges');
INSERT INTO `departments` (`id`, `name`) VALUES ('89', 'Yonne');
INSERT INTO `departments` (`id`, `name`) VALUES ('90', 'Territoire de Belfort');
INSERT INTO `departments` (`id`, `name`) VALUES ('91', 'Essonne');
INSERT INTO `departments` (`id`, `name`) VALUES ('92', 'Hauts-de-Seine');
INSERT INTO `departments` (`id`, `name`) VALUES ('93', 'Seine-St-Denis');
INSERT INTO `departments` (`id`, `name`) VALUES ('94', 'Val-de-Marne');
INSERT INTO `departments` (`id`, `name`) VALUES ('95', 'Val-D Oise');
INSERT INTO `departments` (`id`, `name`) VALUES ('96', 'Guadeloupe');
INSERT INTO `departments` (`id`, `name`) VALUES ('97', 'Martinique');
INSERT INTO `departments` (`id`, `name`) VALUES ('98', 'Guyane');
INSERT INTO `departments` (`id`, `name`) VALUES ('99', 'La Reunion');
INSERT INTO `departments` (`id`, `name`) VALUES ('100', 'SAINT-PIERRE-ET-MIQUELON');
INSERT INTO `departments` (`id`, `name`) VALUES ('101', 'MAYOTTE');
INSERT INTO `departments` (`id`, `name`) VALUES ('102', 'Autre département');

-- Creating table `grades` --
CREATE TABLE `grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(10) NOT NULL COMMENT 'Sigle du grade',
  `name` varchar(80) NOT NULL COMMENT 'Nom du grade',
  `id_sectors` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_sectors` (`id_sectors`),
  CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`id_sectors`) REFERENCES `sectors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
-- Inserting data into table `grades` --
INSERT INTO `grades` (`id`, `short_name`, `name`, `id_sectors`) VALUES ('1', 'ADS', 'Adjoint de Sécurité', '1');
INSERT INTO `grades` (`id`, `short_name`, `name`, `id_sectors`) VALUES ('2', 'GPX', 'Gardien de la Paix', '1');
INSERT INTO `grades` (`id`, `short_name`, `name`, `id_sectors`) VALUES ('3', 'BG', 'Brigadier de Police', '1');
INSERT INTO `grades` (`id`, `short_name`, `name`, `id_sectors`) VALUES ('4', 'B/C', 'Brigadier Chef de Police', '1');

-- Creating table `qualification` --
CREATE TABLE `qualification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `sectors_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sectors_id` (`sectors_id`),
  CONSTRAINT `qualification_ibfk_1` FOREIGN KEY (`sectors_id`) REFERENCES `sectors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
-- Inserting data into table `qualification` --
INSERT INTO `qualification` (`id`, `name`, `sectors_id`) VALUES ('1', 'APJ20', '1');
INSERT INTO `qualification` (`id`, `name`, `sectors_id`) VALUES ('2', 'OPJ16', '1');

-- Creating table `roles` --
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
-- Inserting data into table `roles` --
INSERT INTO `roles` (`id`, `name`) VALUES ('1', 'USER');
INSERT INTO `roles` (`id`, `name`) VALUES ('2', 'MODERATEUR');
INSERT INTO `roles` (`id`, `name`) VALUES ('3', 'ADMINISTRATEUR');

-- Creating table `sectors` --
CREATE TABLE `sectors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `activate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
-- Inserting data into table `sectors` --
INSERT INTO `sectors` (`id`, `name`, `activate`) VALUES ('1', 'POLICE', '1');
INSERT INTO `sectors` (`id`, `name`, `activate`) VALUES ('2', 'GENDARMERIE', '1');
INSERT INTO `sectors` (`id`, `name`, `activate`) VALUES ('3', 'PROFESSEURS', '1');
INSERT INTO `sectors` (`id`, `name`, `activate`) VALUES ('4', 'MEDECINS', '1');
INSERT INTO `sectors` (`id`, `name`, `activate`) VALUES ('5', 'INFIRMIERS', '1');

-- Creating table `services` --
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `dept` int(11) DEFAULT NULL,
  `id_sectors` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_sectors` (`id_sectors`),
  KEY `dept` (`dept`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`id_sectors`) REFERENCES `sectors` (`id`),
  CONSTRAINT `services_ibfk_2` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=952 DEFAULT CHARSET=utf8;
-- Inserting data into table `services` --
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('1', 'PARIS * Brigade criminelle', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('2', 'PARIS * Brigade des stups', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('3', 'PARIS * Brigade des mineurs', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('4', 'PARIS * Brigade de repression du banditisme', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('5', 'PARIS * Brigade de repression du proxenetisme', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('6', 'PARIS * 1er District de Police Judiciaire', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('7', 'PARIS * 2eme District de Police Judiciaire', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('8', 'PARIS * 3eme District de Police Judiciaire', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('9', 'PARIS * Service Departemental de Police Judiciaire 92 (Nanterre)', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('10', 'PARIS * Service Departemental de Police Judiciaire 93 (Bobigny)', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('11', 'PARIS * Service Departemental de Police Judiciaire 94 (Créteil)', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('12', 'PARIS * Affaires Economiques et Financieres', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('13', 'PARIS * DSPAP-DTSP75 - Surete territoriale', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('14', 'PARIS * DOSTL / Unite Soutien Operationnel', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('15', 'DZPAF - LILLE', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('16', 'DZPAF - METZ', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('17', 'DZPAF - RENNES', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('18', 'DZPAF - LYON', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('19', 'DZPAF - BORDEAUX', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('20', 'DZPAF - MARSEILLE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('21', 'DZPAF - LE LAMENTIN', '100', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('22', 'DZPAF - MARIGNANE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('23', 'DDPAF - SAINT-MALO', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('24', 'DDPAF - CALAIS', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('25', 'DDPAF - LILLE', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('26', 'DDPAF - BEAUVAIS', '60', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('27', 'DDPAF - LE HAVRE', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('28', 'DDPAF - CHERBOURG', '50', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('29', 'DDPAF - LONGWY', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('30', 'DDPAF - METZ', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('31', 'DDPAF - STRASBOURG', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('32', 'DDPAF - RENNES', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('33', 'DDPAF - NANTES', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('34', 'DDPAF - MULHOUSE', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('35', 'DDPAF - PONTARLIER', '25', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('36', 'DDPAF - BORDEAUX', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('37', 'DDPAF - CLERMONT-FERRAND', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('38', 'SPAF - LYON', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('39', 'DDPAF - PREVESSIN-MOENS', '1', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('40', 'DDPAF - ANNECY', '74', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('41', 'DDPAF - CHAMBERY', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('42', 'DDPAF - GAP', '5', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('43', 'DDPAF - NICE', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('44', 'DDPAF - NICE ( SPAFT MENTON )', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('45', 'DDPAF - HENDAYE', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('46', 'DDPAF - TOULOUSE', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('47', 'DDPAF - PERPIGNAN', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('48', 'DDPAF - PORT-LA-NOUVELLE', '11', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('49', 'DDPAF - MONTPELLIER', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('50', 'DDPAF - MARSEILLE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('51', 'DDPAF - TOULON', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('52', 'DDPAF - BASTIA', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('53', 'DDPAF - AJACCIO', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('54', 'DDPAF - CERGY-PONTOISE', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('55', 'DDPAF - ST-CYR L ECOLE', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('56', 'DDPAF - ROISSY CDG', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('57', 'DDPAF - ORLY', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('58', 'DDPAF - EVRY', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('59', 'DDPAF - STE-MARIE', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('60', 'DDPAF - ST-PIERRE', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('61', 'DDPAF - NOUMEA', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('62', 'DDPAF - CAYENNE', '98', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('63', 'DDPAF - LE LAMENTIN', '97', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('64', 'DDPAF - LES ABYMES', '97', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('65', 'DDPAF - PAMANDZI', '101', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('66', 'DDPAF - FAAA', '101', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('67', 'SPAF - MODANE', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('68', 'DDPAF - GAILLARD', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('69', 'DDPAF - MONTGENEVRE', '5', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('70', 'DDPAF - LE MESNIL AMELOT', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('71', 'DDPAF - MARIGNANE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('72', 'DDPAF - DUNKERQUE', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('73', 'SPAF - PERTHUS', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('74', 'SPAF - CERBERE', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('75', 'CRS 1 - VELIZY-VILLACOUBLAY', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('76', 'CRS 2 - VAUCRESSON', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('77', 'CRS 3 - QUINCY-SOUS-SENART', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('78', 'CRS 4 - LAGNY-SUR-MARNE', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('79', 'CRS 5 - MASSY', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('80', 'CRS 6 - SAINT-LAURENT-DU VAR', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('81', 'CRS 7 - DEUIL-LA-BARRE', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('82', 'CRS 8 - BIEVRES', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('83', 'CRS 9 - RENNES', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('84', 'CRS 10 - LE MANS', '72', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('85', 'CRS 11 - LAMBERSART (LILLE)', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('86', 'CRS 12 - LAMBERSART (LILLE)', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('87', 'CRS 13 - SAINT-BRIEUC', '22', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('88', 'CRS 14 - CENON (BORDEAUX)', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('89', 'CRS 15 - BETHUNE', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('90', 'CRS 16 - SAINT-OMER', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('91', 'CRS 17 - BERGERAC', '24', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('92', 'CRS 18 - POITIERS', '86', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('93', 'CRS 19 - LA ROCHELLE', '17', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('94', 'CRS 20 - LIMOGES', '87', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('95', 'CRS 21 - SAINT-QUENTIN', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('96', 'CRS 22 - PERIGUEUX', '24', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('97', 'CRS 23 - CHARLEVILLE-MEZIERES', '8', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('98', 'CRS 24 - BON-ENCONTRE (AGEN)', '47', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('99', 'CRS 25 - PAU', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('100', 'CRS 26 - TOULOUSE', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('101', 'CRS 27 - TOULOUSE', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('102', 'CRS 28 - MONTAUBAN', '82', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('103', 'CRS 29 - LANNEMEZAN', '65', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('104', 'CRS 30 - METZ', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('105', 'CRS 31 - DARNETAL (ROUEN)', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('106', 'CRS 32 - SAINTE-ADRESSE (LE HAVRE)', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('107', 'CRS 33 - REIMS', '51', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('108', 'CRS 34 - ROANNE', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('109', 'CRS 35 - TROYES', '10', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('110', 'CRS 36 - METZ ( Anciennement Thionville )', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('111', 'CRS 37 - STRASBOURG', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('112', 'CRS 38 - ILLZACH (MULHOUSE)', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('113', 'CRS 39 - JARVILLE-LA-MALGRANGE (NANCY)', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('114', 'CRS 40 - PLOMBIERES-LES-DIJONS', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('115', 'CRS 41 - SAINT-CYR-SUR-LOIRE (TOURS)', '37', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('116', 'CRS 42 - SAINT-HERBLAIN (NANTES)', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('117', 'CRS 43 - CHALON-SUR-SAONE', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('118', 'CRS 44 - JOIGNY', '89', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('119', 'CRS 45 - CHASSIEU', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('120', 'CRS 46 - SAINTE-FOI-LES-LYON', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('121', 'CRS 47 - GRENOBLE', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('122', 'CRS 48 - CHATEL-GUYON', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('123', 'CRS 49 - MONTELIMAR', '26', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('124', 'CRS 50 - LA TALAUDIERE (SAINT ETIENNE)', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('125', 'CRS 51 - SARAN', '45', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('126', 'CRS 52 - SANCERRE', '18', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('127', 'CRS 53 - MARSEILLE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('128', 'CRS 54 - MARSEILLE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('129', 'CRS 55 - MARSEILLE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('130', 'CRS 56 - MONTPELLIER', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('131', 'CRS 57 - CARCASSONNE', '11', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('132', 'CRS 58 - PERPIGNAN', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('133', 'CRS 59 - OLLIOULES (TOULON)', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('134', 'CRS 60 - MONTFAVET (AVIGNON)', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('135', 'CRS 61 - VELIZY-VILLACOUBLAY', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('136', 'DUMZ - Lambersart', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('137', 'DUMZ - St-Quentin', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('138', 'DUMZ - Rennes', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('139', 'DUMZ - Le Mans', '72', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('140', 'DUMZ - Rouen', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('141', 'DUMZ - Tours', '37', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('142', 'DUMZ - Nantes', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('143', 'DUMZ - Cenon', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('144', 'DUMZ - La Rochelle', '17', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('145', 'DUMZ - Pau', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('146', 'DUMZ - Toulouse', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('147', 'DUMZ - Marseille', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('148', 'DUMZ - Nice', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('149', 'DUMZ - Montpellier', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('150', 'DUMZ - Avignon', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('151', 'DUMZ - Lyon', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('152', 'DUMZ - Grenoble', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('153', 'DUMZ - Clermont-Ferrand', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('154', 'DUMZ - Chatel', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('155', 'DUMZ - Reims', '51', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('156', 'DUMZ - Mulhouse', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('157', 'DUMZ - Dijon', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('158', 'CRS AUTOROUTIERE - Lille', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('159', 'CRS AUTOROUTIERE - Lille - Section MOTO', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('160', 'CRS AUTOROUTIERE - Metz', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('161', 'CRS AUTOROUTIERE - Metz - Section MOTO', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('162', 'CRS AUTOROUTIERE - Nancy', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('163', 'CRS AUTOROUTIERE - Nancy - Section MOTO', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('164', 'CRS AUTOROUTIERE - Strasbourg', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('165', 'CRS AUTOROUTIERE - Strasbourg - Section MOTO', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('166', 'CRS AUTOROUTIERE - Bordeaux', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('167', 'CRS AUTOROUTIERE - Bordeaux - Section MOTO', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('168', 'CRS AUTOROUTIERE - Marseille', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('169', 'CRS AUTOROUTIERE - Marseille - Section MOTO', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('170', 'CRS AUTOROUTIERE - Ollioules', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('171', 'CRS AUTOROUTIERE - Ollioules - Section MOTO', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('172', 'CRS AUTOROUTIERE - Saint-Omer', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('173', 'CRS AUTOROUTIERE - Saint-Omer - Section MOTO', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('174', 'CRS AUTOROUTIERE - Bethune', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('175', 'CRS AUTOROUTIERE - Bethune - Section MOTO', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('176', 'CRS AUTOROUTIERE - St-Etienne', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('177', 'CRS AUTOROUTIERE - St-Etienne - Section MOTO', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('178', 'CRS AUTOROUTIERE - Lyon-Chassieu', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('179', 'CRS AUTOROUTIERE - Lyon-Chassieu - Section MOTO', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('180', 'CRS AUTOROUTIERE - Lagny-sur-Marne', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('181', 'CRS AUTOROUTIERE - Lagny-sur-Marne - Section MOTO', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('182', 'CRS AUTOROUTIERE - Vaucresson', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('183', 'CRS AUTOROUTIERE - Vaucresson - Section MOTO', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('184', 'CRS AUTOROUTIERE - Deuil-la-Barre', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('185', 'CRS AUTOROUTIERE - Deuil-la-Barre - Section MOTO', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('186', 'CRS AUTOROUTIERE - Massy', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('187', 'CRS AUTOROUTIERE - Massy - Section MOTO', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('188', 'FMU 01 - Bourg-en-Bresse', '1', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('189', 'FMU 02 - St Quentin', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('190', 'FMU 03 - Vichy', '3', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('191', 'FMU 06 - Nice', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('192', 'FMU 06 - Cannes', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('193', 'FMU 08 - Charleville-Mezieres', '8', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('194', 'FMU 10 - Troyes', '10', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('195', 'FMU 11 - Narbonne', '11', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('196', 'FMU 11 - Carcassone', '11', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('197', 'FMU 13 - Marseille', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('198', 'FMU 13 - Aix en Provence', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('199', 'FMU 13 - Martigues', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('200', 'FMU 14 - Caen', '14', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('201', 'FMU 16 - Angouleme', '16', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('202', 'FMU 17 - La Rochelle', '17', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('203', 'FMU 18 - Bourges', '18', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('204', 'FMU 19 - Brive-la-Gaillarde', '19', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('205', 'FMU 2A - Ajaccio', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('206', 'FMU 2B - Bastia', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('207', 'FMU 21 - Dijon', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('208', 'FMU 22 - Saint-Brieuc', '22', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('209', 'FMU 24 - Perigueux', '24', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('210', 'FMU 25 - Montbeliard', '25', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('211', 'FMU 25 - Besancon', '25', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('212', 'FMU 26 - Valence', '26', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('213', 'FMU 27 - Evreux', '27', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('214', 'FMU 28 - Dreux', '28', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('215', 'FMU 29 - Brest', '29', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('216', 'FMU 30 - Nimes', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('217', 'FMU 31 - Toulouse', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('218', 'FMU 33 - Bordeaux', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('219', 'FMU 34 - Montpellier', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('220', 'FMU 34 - Beziers', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('221', 'FMU 35 - Rennes', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('222', 'FMU 36 - Chateauroux', '36', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('223', 'FMU 37 - Tours', '37', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('224', 'FMU 38 - Grenoble', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('225', 'FMU 42 - Saint-Etienne', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('226', 'FMU 42 - Roanne', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('227', 'FMU 44 - Nantes', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('228', 'FMU 45 - Orleans', '45', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('229', 'FMU 47 - Agen', '47', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('230', 'FMU 49 - Angers', '49', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('231', 'FMU 50 - Cherbourg', '50', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('232', 'FMU 51 - Reims', '51', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('233', 'FMU 53 - Laval', '53', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('234', 'FMU 54 - Nancy', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('235', 'FMU 56 - Vannes', '56', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('236', 'FMU 56 - Lorient', '56', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('237', 'FMU 57 - Metz', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('238', 'FMU 59 - Dunkerque', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('239', 'FMU 59 - Douai', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('240', 'FMU 59 - Lille', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('241', 'FMU 59 - Valenciennes', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('242', 'FMU 60 - Beauvais', '60', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('243', 'FMU 61 - Alencon', '61', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('244', 'FMU 62 - Arras', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('245', 'FMUD 62 - Boulogne', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('246', 'FMU 62 - Lens', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('247', 'FMU 63 - Clermont-Fernand', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('248', 'FMU 64 - Pau', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('249', 'FMU 64 - Biarritz', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('250', 'FMU 64 - Bayonne', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('251', 'FMU 65 - Tarbes', '65', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('252', 'FMU 66 - Perpignan', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('253', 'FMU 67 - Strasbourg', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('254', 'FMU 68 - Mulhouse', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('255', 'FMU 69 - Lyon', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('256', 'FMU 71 - Macon', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('257', 'FMU 71 - Chalon-sur-Saone', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('258', 'BMU 71 - Montceau-les-Mines', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('259', 'FMU 72 - Le Mans', '72', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('260', 'FMU 73 - Chambery', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('261', 'FMU 74 - Annecy', '74', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('262', 'FMU 74 - Annemasse', '74', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('263', 'FMU 75 - Paris', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('264', 'FMU 76 - Rouen', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('265', 'FMU 77 - Melun - Meaux', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('266', 'FMU 78 - Le Chesnay', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('267', 'FMU 79 - Niort', '79', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('268', 'FMU 80 - Amiens', '80', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('269', 'FMU 81 - Albi', '81', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('270', 'FMU 82 - Montaubant', '82', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('271', 'FMU 83 - Toulon - Frejus', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('272', 'FMU 84 - Avignon', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('273', 'FMU 85 - La-Roche-sur-Yon', '85', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('274', 'FMU 86 - Poitiers', '86', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('275', 'FMU 87 - Limoges', '87', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('276', 'BMU 88 - Epinal', '88', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('277', 'FMU 89 - Auxerre', '89', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('278', 'FMU 90 - Belfort', '90', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('279', 'FMU 91 - Evry', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('280', 'FMU 92 - Nanterre', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('281', 'FMU 93 - Bobigny', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('282', 'FMU 94 - Creteil', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('283', 'FMU 95 - Cergy-Pontoise', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('284', 'CRA - COQUELLES (62)', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('285', 'CRA - LILLE . LESQUIN (59)', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('286', 'CRA - STRASBOURG . GEISPOLSHEM (67)', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('287', 'CRA - METZ (57)', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('288', 'CRA - MARSEILLE (13)', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('289', 'CRA - NICE (06)', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('290', 'CRA - PERPIGNAN (66)', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('291', 'CRA - SETE (34)', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('292', 'CRA - NIMES (30)', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('293', 'CRA - ROUEN . OISSEL (76)', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('294', 'CRA - RENNES . ST JACQUES DE LA LANDE (35)', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('295', 'CRA - LYON (69)', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('296', 'CRA - BORDEAUX (33)', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('297', 'CRA - HENDAYE (64)', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('298', 'CRA - TOULOUSE . CORNEBARRIEU (31)', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('299', 'CRA - LE MESNIL AMELOT (77)', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('300', 'CRA - PARIS . VINCENNES (75)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('301', 'CRA - PARIS DEPOT (75)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('302', 'CRA - PALAISEAU (91)', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('303', 'CRA - PLAISIR (78)', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('304', 'CRA - LES ABYMES (971)', '96', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('305', 'CRA - CAYENNE (973)', '98', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('306', 'CRA - PAMANDZI (976)', '101', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('307', 'CRA - LE CHAUDRON (974)', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('308', 'CCPD - TOURNAI', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('309', 'CCPD - LUXEMBOURG', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('310', 'CCPD - KEHL', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('311', 'CCPD - GENEVE - COINTRIN', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('312', 'CCDP - MODANE', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('313', 'CCPD - VINTIMILLE', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('314', 'CCPD - PERTHUS - LA JONQUERA', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('315', 'CCPD - MELLES PONT DU ROY', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('316', 'CCPD - CANFRANC - SOMPORT', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('317', 'CCPD - BIRIATOU - HENDAYE', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('318', 'BPA - TOUSSUS-LE-NOBLE (78)', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('319', 'BPA - ZONE NORD - LILLE (59)', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('320', 'BPA - ZONE EST - MARLY (57)', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('321', 'BPA - ZONE EST - DIJON (21)', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('322', 'BPA - ZONE SUD-EST - LYON.BRON (69)', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('323', 'BPA - ZONE SUD - AIX-EN-PROVENCE (13)', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('324', 'BPA - ZONE SUD - MONTPELLIER.MAUGIO (34)', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('325', 'BPA - ZONE SUD-OUEST - BORDEAUX (33)', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('326', 'BPA - ZONE SUD-OUEST - TOULOUSE.BLAGNAC (31)', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('327', 'BPA - ZONE OUEST - TOURS (37)', '37', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('328', 'BPA - ZONE OUEST - RENNES (35)', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('329', 'BCF - LILLE', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('330', 'BCF - METZ', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('331', 'BCF - RENNES', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('332', 'BCF - BORDEAUX', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('333', 'BCF - PARIS', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('334', 'BCF - LYON', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('335', 'BCF - MARSEILLE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('336', 'BCF - TOULON', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('337', 'BCF - NICE', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('338', 'BCF - PERPIGNAN', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('339', 'BMR - CALAIS', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('340', 'BMR - LILLE', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('341', 'BMR - CAEN', '14', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('342', 'BMR - LONGWY', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('343', 'BMR - METZ', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('344', 'BMR - STRASBOURG', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('345', 'BMR - RENNES', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('346', 'BMR - NANTES', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('347', 'BMR - MULHOUSE', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('348', 'BMR - PONTARLIER', '25', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('349', 'BMR - BORDEAUX', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('350', 'BMR - CLERMONT-FERRAND', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('351', 'BMR - LYON', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('352', 'BMR - PREVESSIN-MOENS', '1', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('353', 'BMR - ANNECY', '74', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('354', 'BMR - CHAMBERY', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('355', 'BMR - GAP', '5', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('356', 'BMR - NICE', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('357', 'BMR - HENDAYE', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('358', 'BMR - TOULOUSE', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('359', 'BMR - PERPIGNAN', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('360', 'BMR - ORLEANS', '45', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('361', 'BMR - MONTPELLIER', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('362', 'BMR - MARSEILLE', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('363', 'BMR - TOULON', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('364', 'BMR - BASTIA', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('365', 'BMR - AJACCIO', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('366', 'BMR - CERGY-PONTOISE', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('367', 'BMR - ST-CYR L ECOLE', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('368', 'BMR - ROISSY CDG', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('369', 'BMR - ORLY', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('370', 'BMR - EVRY', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('371', 'BMR - CHESSY', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('372', 'BMR - STE-MARIE', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('373', 'BMR - NOUMEA', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('374', 'BMR - CAYENNE', '98', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('375', 'BMR - LE LAMENTIN', '97', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('376', 'BMR - LES ABYMES', '96', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('377', 'BMR - PAMANDZI', '101', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('378', 'BMR - FAAA', '102', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('379', 'BMR - ST-ETIENNE', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('380', 'BMR - GRENOBLE', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('381', 'BMR - DIJON', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('382', 'BMR - NANCY', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('383', 'BMR - NIMES', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('384', 'BMR - AVIGNON', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('385', 'BMR - LIMOGES', '87', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('386', 'BMR - LE MESNIL AMELOT', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('387', 'CDI-06 (Nice)', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('388', 'GDSI-10 (Aude)', '10', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('389', 'CDI/CS-13 (Marseille)', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('390', 'SDI-27 (Evreux)', '27', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('391', 'SDI-29 (Quimper-Brest)', '29', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('392', 'BDI-30 (Nimes)', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('393', 'CSI-31 (Toulouse)', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('394', 'CDI-33 (Bordeaux)', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('395', 'SDI-38 (Grenoble)', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('396', 'CDI-57 (Metz)', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('397', 'CDI-59 (Lille)', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('398', 'CSI-67 (Strasbourg-Entzheim)', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('399', 'CDI-69 (Lyon)', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('400', 'CSI-75 (17e arr. de Paris)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('401', 'PP - DOPC - 11e CI', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('402', 'PP - DOPC - 12e CI', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('403', 'PP - DOPC - 21e CI', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('404', 'PP - DOPC - 22e CI', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('405', 'PP - DOPC - 23e CI', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('406', 'PP - DOPC - 31e CI', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('407', 'PP - DOPC - 32e CI', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('408', 'PP- DOPC - UMIP', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('409', 'PP- DOPC - SCCC', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('410', 'CDI-76 (Rouen-Le Havre)', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('411', 'CDI-77 (Meaux - Base nord)', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('412', 'CDI-77 (Vaux-le-Penil - Base sud)', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('413', 'CSI-78 (Limay)', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('414', 'SDI-83 (Toulon)', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('415', 'SDI-91.CS-91 (Evry et Grigny)', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('416', 'CSI-92 (Nanterre)', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('417', 'CSI-93 (Aulnay-sous-Bois)', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('418', 'CSI-94 (Creteil)', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('419', 'CDI-95/CS95 (Montmorency)', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('420', 'CDI-95/CS95 (Cergy)', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('421', 'CDI-971 (Pointe-a-Pitre)', '96', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('422', 'CDI-972 (Fort-de-France)', '97', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('423', 'CDI-973 (Cayenne)', '98', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('424', 'CDI-974 (Saint-Denis)', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('425', 'CSI (13) - Groupe MOTO', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('426', 'CSI (31) - Groupe MOTO', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('427', 'CSI (64) - Groupe MOTO', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('428', 'CSI (75) - Groupe MOTO', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('429', 'CSI (91) - Groupe MOTO', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('430', 'CSI (92) - Groupe MOTO', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('431', 'CSI (93) - Groupe MOTO', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('432', 'CSI (94) - Groupe MOTO', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('433', 'CSI (95) - Groupe MOTO', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('434', 'CSI (13)', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('435', 'CSI (31)', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('436', 'CSI (64)', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('437', 'CSI (75)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('438', 'CSI (91)', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('439', 'CSI (92)', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('440', 'CSI (93)', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('441', 'CSI (94)', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('442', 'CSI (95)', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('443', 'Abbeville', '80', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('444', 'Agde', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('445', 'Agen', '47', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('446', 'Aix-en-Provence', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('447', 'Aix-les-Bains', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('448', 'Ajaccio', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('449', 'Albertville', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('450', 'Albi', '81', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('451', 'Alencon', '61', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('452', 'Ales', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('453', 'Alfortville', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('454', 'Amiens', '80', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('455', 'Angers', '49', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('456', 'Angouleme', '16', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('457', 'Aniche', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('458', 'Annecy', '74', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('459', 'Annemasse', '74', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('460', 'Annonay', '7', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('461', 'Antibes', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('462', 'Antony', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('463', 'Arcachon', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('464', 'Argentan', '61', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('465', 'Argenteuil', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('466', 'Arles', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('467', 'Armentieres', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('468', 'Arpajon', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('469', 'Arras', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('470', 'Asnieres-sur-Seine', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('471', 'Athis-Mons', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('472', 'Aubagne', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('473', 'Aubenas', '7', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('474', 'Aubervilliers', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('475', 'Auch', '32', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('476', 'Auchel', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('477', 'Aulnay-sous-Bois', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('478', 'Aulnoye-Aymeries', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('479', 'Aurillac', '15', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('480', 'Auxerre', '89', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('481', 'Avignon', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('482', 'Avion', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('483', 'Bagneux', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('484', 'Bagnols-sur-Ceze', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('485', 'Bailleul', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('486', 'Bar-le-Duc', '55', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('487', 'Basse-Terre', '96', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('488', 'Bastia', '20', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('489', 'Bayonne', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('490', 'Beaucaire', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('491', 'Beaune', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('492', 'Beauvais', '60', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('493', 'Belfort', '90', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('494', 'Berck', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('495', 'Bergerac', '24', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('496', 'Besancon', '25', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('497', 'Bethune', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('498', 'Beziers', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('499', 'Bezons', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('500', 'Biarritz', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('501', 'Blagnac', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('502', 'Blois', '41', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('503', 'Bobigny', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('504', 'Bois-Colombes', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('505', 'Boissy-Saint-Leger', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('506', 'Bolbec Lillebonne', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('507', 'Bondy', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('508', 'Bordeaux', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('509', 'Boulogne-Billancourt', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('510', 'Boulogne-sur-Mer', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('511', 'Bourg-en-Bresse', '1', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('512', 'Bourges', '18', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('513', 'Bourgoin-Jallieu', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('514', 'Brest', '29', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('515', 'Briancon', '5', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('516', 'Briey', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('517', 'Brive-la-Gaillarde', '19', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('518', 'Bron', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('519', 'Bruay-la-Buissiere', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('520', 'Brunoy', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('521', 'Caen', '14', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('522', 'Cagnes-sur-Mer', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('523', 'Cahors', '46', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('524', 'Calais', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('525', 'Caluire-et-Cuire', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('526', 'Cambrai', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('527', 'Cannes', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('528', 'Capesterre-Belle-Eau', '96', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('529', 'Carcassonne', '11', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('530', 'Carmaux', '81', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('531', 'Carpentras', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('532', 'Carvin', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('533', 'Castelnaudary', '11', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('534', 'Castelsarrasin', '82', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('535', 'Castres', '81', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('536', 'Cavaillon', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('537', 'Cayenne', '98', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('538', 'Cergy', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('539', 'Chalons-en-Champagne', '51', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('540', 'Chalon-sur-Saone', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('541', 'Chambery', '73', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('542', 'Champigny-sur-Marne', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('543', 'Charenton-le-Pont', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('544', 'Charleville-Mezieres', '8', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('545', 'Chartres', '28', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('546', 'Chateauroux', '36', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('547', 'Chateau-Thierry', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('548', 'Chatellerault', '86', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('549', 'Chatenay-Malabry', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('550', 'Chaumont', '52', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('551', 'Chelles', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('552', 'Chennevieres-sur-Marne', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('553', 'Chenove', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('554', 'Cherbourg-Octeville', '50', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('555', 'Chessy', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('556', 'Choisy-le-Roi', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('557', 'Cholet', '49', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('558', 'Clamart', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('559', 'Clermont-Ferrand', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('560', 'Clichy-la-Garenne', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('561', 'Clichy-sous-Bois', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('562', 'Cognac', '16', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('563', 'Colmar', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('564', 'Colombes', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('565', 'Colomiers', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('566', 'Comines', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('567', 'Compiegne', '60', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('568', 'Concarneau', '29', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('569', 'Conde-sur-l Escaut', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('570', 'Conflans-en-Jarnisy', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('571', 'Conflans-Sainte-Honorine', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('572', 'Corbeil-Essonnes', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('573', 'Coulommiers', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('574', 'Courbevoie', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('575', 'Cournon-d Auvergne', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('576', 'Coutances', '50', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('577', 'Creil', '60', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('578', 'Creteil', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('579', 'Dammarie-les-Lys', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('580', 'Dax', '40', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('581', 'Deauville', '14', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('582', 'Decazeville', '12', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('583', 'Denain', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('584', 'Deuil-la-Barre', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('585', 'Dieppe', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('586', 'Digne-les-Bains', '4', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('587', 'Dijon', '21', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('588', 'Dives-sur-Mer', '14', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('589', 'Dole', '39', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('590', 'Dombasle-sur-Meurthe', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('591', 'Douai', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('592', 'Draguignan', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('593', 'Drancy', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('594', 'Draveil', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('595', 'Dreux', '28', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('596', 'Dunkerque', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('597', 'Eaubonne', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('598', 'Elancourt', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('599', 'Elbeuf', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('600', 'Enghien-Montmorency', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('601', 'Epernay', '51', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('602', 'Epinal', '88', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('603', 'Epinay-sur-Seine', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('604', 'Ermont', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('605', 'Etampes', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('606', 'Evreux', '27', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('607', 'Evry', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('608', 'Fecamp', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('609', 'Firminy', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('610', 'Flers', '61', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('611', 'Foix', '9', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('612', 'Fontainebleau', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('613', 'Fontenay-le-Fleury', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('614', 'Fontenay-sous-Bois', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('615', 'Forbach', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('616', 'Fort-de-France', '97', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('617', 'Fougeres', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('618', 'Fourmies', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('619', 'Franconville', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('620', 'Frejus', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('621', 'Freyming-Merlebach', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('622', 'Gagny', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('623', 'Gap', '5', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('624', 'Garges-les-Gonesse', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('625', 'Gennevilliers', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('626', 'Gerzat', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('627', 'Givors', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('628', 'Gonesse', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('629', 'Goussainville', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('630', 'Granville', '50', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('631', 'Grasse', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('632', 'Graulhet', '81', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('633', 'Gravelines', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('634', 'Grenoble', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('635', 'Grigny', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('636', 'Gueret', '23', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('637', 'Guilherand-Granges', '7', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('638', 'Guyancourt', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('639', 'Hagondange', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('640', 'Haguenau', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('641', 'Havre', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('642', 'Hayange', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('643', 'Hazebrouck', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('644', 'Hendaye', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('645', 'Henin-Beaumont', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('646', 'Herblay', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('647', 'Hericourt', '70', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('648', 'Honfleur', '14', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('649', 'Houilles', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('650', 'Hyeres', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('651', 'Issy-les-Moulineaux', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('652', 'Istres', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('653', 'Ivry-sur-Seine', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('654', 'Jeumont', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('655', 'Joue-les-Tours', '37', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('656', 'Juvisy-sur-Orge', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('657', 'L Hay-les-Roses', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('658', 'L Isle-Adam', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('659', 'La Baule-Escoublac', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('660', 'La Celle-Saint-Cloud', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('661', 'La Ciotat', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('662', 'La Courneuve', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('663', 'La Garde', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('664', 'La Garenne-Colombes', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('665', 'La Madeleine', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('666', 'La Rochelle', '17', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('667', 'La Roche-sur-Yon', '85', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('668', 'La Seyne-sur-Mer', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('669', 'Lagny-sur-Marne', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('670', 'Lannion', '22', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('671', 'Laon', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('672', 'Laval', '53', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('673', 'Le Blanc-Mesnil', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('674', 'Le Bouscat', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('675', 'Le Chambon-Feugerolles', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('676', 'Le Creusot', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('677', 'Le Kremlin-Bicetre', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('678', 'Le Lamentin', '97', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('679', 'Le Mans', '72', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('680', 'Le Port', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('681', 'Le Puy-en-Velay', '43', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('682', 'Le Raincy', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('683', 'Le Touquet-Paris-Plage', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('684', 'Le Vesinet', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('685', 'Leman - Thonon', '74', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('686', 'Lens', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('687', 'Les Lilas', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('688', 'Les Mureaux', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('689', 'Les Sables d Olonne', '85', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('690', 'Les Ulis', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('691', 'Levallois-Perret', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('692', 'Lievin', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('693', 'Lille', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('694', 'Limoges', '87', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('695', 'Lisieux', '14', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('696', 'Livry-Gargan', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('697', 'Lomme', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('698', 'Longjumeau', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('699', 'Longwy', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('700', 'Lons-le-Saunier', '39', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('701', 'Lorient', '56', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('702', 'Lourdes', '65', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('703', 'Louviers', '27', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('704', 'Luneville', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('705', 'Lyon 1/4', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('706', 'Lyon 2', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('707', 'Lyon 3 ( MontLuc )', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('708', 'Lyon 3/6', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('709', 'Lyon 5', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('710', 'Lyon 7', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('711', 'Lyon 8', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('712', 'Lyon 9', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('713', 'Macon', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('714', 'Maisons-Alfort', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('715', 'Maisons-Laffitte', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('716', 'Mantes-la-Jolie', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('717', 'Marcq-en-Baroeul', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('718', 'Marignane', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('719', 'Marles-les-Mines', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('720', 'Marly-le-Roi', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('721', 'Marseille', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('722', 'Martigues', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('723', 'Massy', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('724', 'Maubeuge', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('725', 'Mazamet', '81', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('726', 'Meaux', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('727', 'Melun Val-de-Seine', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('728', 'Mende', '48', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('729', 'Menton', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('730', 'Metz', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('731', 'Meudon', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('732', 'Meyzieu', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('733', 'Millau', '12', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('734', 'Mitry-Mory', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('735', 'Moissy-Cramayel Senart', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('736', 'Montargis', '45', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('737', 'Montauban', '82', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('738', 'Montbeliard', '25', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('739', 'Montbrison', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('740', 'Montceau-les-Mines', '71', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('741', 'Mont-de-Marsan', '40', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('742', 'Montelimar', '26', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('743', 'Montereau-Fault-Yonne', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('744', 'Montgeron', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('745', 'Montlucon', '3', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('746', 'Montpellier', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('747', 'Montreuil', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('748', 'Montrouge', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('749', 'Moret-sur-Loing', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('750', 'Morlaix', '29', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('751', 'Moulins', '3', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('752', 'Moyeuvre-Grande', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('753', 'Mulhouse', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('754', 'Nancy', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('755', 'Nanterre', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('756', 'Nantes', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('757', 'Narbonne', '11', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('758', 'Nemours', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('759', 'Neuilly-sur-Marne', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('760', 'Neuilly-sur-Seine', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('761', 'Nevers', '58', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('762', 'Nice', '6', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('763', 'Nimes', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('764', 'Niort', '79', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('765', 'Noeux-les-Mines', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('766', 'Nogent-sur-Marne', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('767', 'Noisiel', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('768', 'Noisy-le-Grand', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('769', 'Noisy-le-Sec', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('770', 'Ondaine', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('771', 'Orange', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('772', 'Orleans', '45', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('773', 'Oullins', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('774', 'Oyonnax', '1', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('775', 'Palaiseau', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('776', 'Pamiers', '9', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('777', 'Pantin', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('778', 'Paris (1er)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('779', 'Paris (2eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('780', 'Paris (3eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('781', 'Paris (4eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('782', 'Paris (5eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('783', 'Paris (6eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('784', 'Paris (7eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('785', 'Paris (8eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('786', 'Paris (9eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('787', 'Paris (10eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('788', 'Paris (11eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('789', 'Paris (12eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('790', 'DSPAP/SDRPT/BRF ( PARIS 12 )', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('791', 'Paris (13eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('792', 'Paris (14eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('793', 'Paris (15eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('794', 'Paris (16eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('795', 'Paris (17eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('796', 'Paris (18eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('797', 'Paris (19eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('798', 'Paris (20eme)', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('799', 'DSPAP/SDSS/SNA - SN75 - BAC 75J / BAC 75N', '75', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('800', 'DSPAP/SDSS/SNA - SN92 - BAC 92J / BAC 92N', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('801', 'DSPAP/SDSS/SNA - SN93 - BAC 93J / BAC 93N', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('802', 'DSPAP/SDSS/SNA - SN94 - BAC 94J / BAC 94N', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('803', 'Pau', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('804', 'Perigueux', '24', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('805', 'Perpignan', '66', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('806', 'Persan', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('807', 'Pertuis', '84', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('808', 'Pessac', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('809', 'Plaisir', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('810', 'Pointe-a-Pitre', '96', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('811', 'Poissy', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('812', 'Poitiers', '86', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('813', 'Pont-a-Mousson', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('814', 'Pontarlier', '25', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('815', 'Pontault-Combault', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('816', 'Port-Saint-Louis-du-Rhone', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('817', 'Privas', '7', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('818', 'Provins', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('819', 'Puteaux', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('820', 'Quievrechain', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('821', 'Quimper', '29', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('822', 'Rambouillet', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('823', 'Reims', '51', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('824', 'Remiremont', '88', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('825', 'Rennes', '35', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('826', 'Reze', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('827', 'Riom', '63', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('828', 'Rive-de-Gier', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('829', 'Roanne', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('830', 'Rochefort', '17', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('831', 'Rodez', '12', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('832', 'Roissy ( Aeroport )', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('833', 'Romans-sur-Isere', '26', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('834', 'Romorantin-Lanthenay', '41', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('835', 'Roncq', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('836', 'Rosny-sous-Bois', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('837', 'Roubaix', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('838', 'Rouen', '76', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('839', 'Royan', '17', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('840', 'Rueil-Malmaison', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('841', 'Saint-Amand-les-Eaux', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('842', 'Saint-Avold', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('843', 'Saint-Benoit', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('844', 'Saint-Brieuc', '22', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('845', 'Saint-Chamond', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('846', 'Saint-Cloud', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('847', 'Saint-Denis (93)', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('848', 'Saint-Denis (974)', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('849', 'Saint-Die-des-Vosges', '88', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('850', 'Saint-Dizier', '52', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('851', 'Sainte-Genevieve-des-Bois', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('852', 'Saintes', '17', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('853', 'Saint-Etienne', '42', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('854', 'Saint-Gaudens', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('855', 'Saint-Germain-en-Laye', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('856', 'Saint-Herblain', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('857', 'Saint-Jean-de-Luz', '64', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('858', 'Saint-Lo', '50', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('859', 'Saint-Louis', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('860', 'Saint-Malo', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('861', 'Saint-Maur-des-Fosses', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('862', 'Saint-Nazaire', '44', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('863', 'Saint-Omer', '62', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('864', 'Saint-Ouen', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('865', 'Saint-Pierre', '99', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('866', 'Saint-Priest', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('867', 'Saint-Quentin', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('868', 'Salon-de-Provence', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('869', 'Sanary-sur-Mer', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('870', 'Sannois', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('871', 'Sarcelles', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('872', 'Sarrebourg', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('873', 'Sarreguemines', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('874', 'Sartrouville', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('875', 'Saumur', '49', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('876', 'Savigny-le-Temple', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('877', 'Savigny-sur-Orge', '91', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('878', 'Sedan', '8', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('879', 'Selestat', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('880', 'Sens', '89', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('881', 'Septemes-les-Vallons', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('882', 'Sete', '34', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('883', 'Sevran', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('884', 'Sevres', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('885', 'Soissons', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('886', 'Somain', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('887', 'Stains', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('888', 'Strasbourg', '67', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('889', 'Suresnes', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('890', 'Talence', '33', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('891', 'Tarascon', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('892', 'Tarbes', '65', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('893', 'Taverny', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('894', 'Tergnier', '2', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('895', 'Thionville', '57', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('896', 'Thouars', '79', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('897', 'Toul', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('898', 'Toulon', '83', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('899', 'Toulouse', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('900', 'Tourcoing', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('901', 'Tournefeuille', '31', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('902', 'Tours', '37', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('903', 'Trappes', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('904', 'Troyes', '10', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('905', 'Tulle', '19', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('906', 'Ussel', '19', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('907', 'Valence', '26', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('908', 'Valenciennes', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('909', 'Vannes', '56', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('910', 'Vanves', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('911', 'Vaulx-en-Velin', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('912', 'Velizy-Villacoublay', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('913', 'Vendome', '41', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('914', 'Venissieux', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('915', 'Verdun', '55', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('916', 'Vernon', '27', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('917', 'Versailles', '78', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('918', 'Vesoul', '70', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('919', 'Vichy', '3', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('920', 'Vienne', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('921', 'Vierzon', '18', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('922', 'Villefranche-sur-Saone', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('923', 'Villeneuve-d Ascq', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('924', 'Villeneuve-la-Garenne', '92', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('925', 'Villeneuve-les-Avignon', '30', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('926', 'Villeneuve-Saint-Georges', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('927', 'Villeneuve-sur-Lot', '47', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('928', 'Villeparisis', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('929', 'Villepinte', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('930', 'Villerupt', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('931', 'Villeurbanne', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('932', 'Villiers-le-Bel', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('933', 'Vincennes', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('934', 'Vitrolles', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('935', 'Vitry-sur-Seine', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('936', 'Voiron', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('937', 'Wattignies', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('938', 'Wattrelos', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('939', 'Wittenheim', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('940', 'Villeparisis', '77', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('941', 'Villepinte', '93', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('942', 'Villerupt', '54', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('943', 'Villeurbanne', '69', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('944', 'Villiers-le-Bel', '95', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('945', 'Vincennes', '94', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('946', 'Vitrolles', '13', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('947', 'Vitry-sur-Seine', '38', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('948', 'Voiron', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('949', 'Wattignies', '59', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('950', 'Wattrelos', '68', '1');
INSERT INTO `services` (`id`, `name`, `dept`, `id_sectors`) VALUES ('951', 'Wittenheim', '59', '1');

-- Creating table `statuts` --
CREATE TABLE `statuts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
-- Inserting data into table `statuts` --
INSERT INTO `statuts` (`id`, `name`) VALUES ('1', 'EN ATTENTE CONFIRMATION EMAIL');
INSERT INTO `statuts` (`id`, `name`) VALUES ('2', 'EN ATTENTE DE FINALISATION D\'INSCRIPTION');
INSERT INTO `statuts` (`id`, `name`) VALUES ('3', 'EN ATTENTE DE VALIDATION');
INSERT INTO `statuts` (`id`, `name`) VALUES ('4', 'COMPTE ACTIF');
INSERT INTO `statuts` (`id`, `name`) VALUES ('5', 'COMPTE DANGEREUX');
INSERT INTO `statuts` (`id`, `name`) VALUES ('6', 'COMPTE SUSPICIEUX');
INSERT INTO `statuts` (`id`, `name`) VALUES ('7', 'EN ATTENTE SUITE A ALERTE');
INSERT INTO `statuts` (`id`, `name`) VALUES ('8', 'SUSPENDU APRES REFUS ALERTE');
INSERT INTO `statuts` (`id`, `name`) VALUES ('9', 'SUSPENDU APRES NON REPONSE A ALERTE');
INSERT INTO `statuts` (`id`, `name`) VALUES ('10', 'COMPTE INACTIF');
INSERT INTO `statuts` (`id`, `name`) VALUES ('11', 'COMPTE BANNI');

-- Creating table `statutsalertes` --
CREATE TABLE `statutsalertes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
-- Inserting data into table `statutsalertes` --
INSERT INTO `statutsalertes` (`id`, `name`) VALUES ('1', 'ACCEPTEE');
INSERT INTO `statutsalertes` (`id`, `name`) VALUES ('2', 'REFUSEE');
INSERT INTO `statutsalertes` (`id`, `name`) VALUES ('3', 'SANS REPONSE');

-- Creating table `users` --
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `password` varchar(60) NOT NULL,
  `matricule` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `roles_id` int(11) NOT NULL DEFAULT '1',
  `subscriptionEnd` datetime DEFAULT NULL,
  `statuts_id` int(11) NOT NULL DEFAULT '1',
  `sectors_id` int(11) NOT NULL,
  `limit_time` datetime DEFAULT '2000-01-01 00:00:00',
  `nbrMonthsRenewalsSubscription` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `roles_id` (`roles_id`),
  KEY `statuts_id` (`statuts_id`),
  KEY `sectors_id` (`sectors_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`statuts_id`) REFERENCES `statuts` (`id`),
  CONSTRAINT `users_ibfk_3` FOREIGN KEY (`sectors_id`) REFERENCES `sectors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
-- Inserting data into table `users` --
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('1', 'OOFTGlqBvMbLc88CaAR//GwvdVVVaEM2enVwcmJGajY4N05GcUE9PQ==', 'AiSm1JsfsVnanp/nOPbFn3dKbTJZUjhNb0N2dTNkdjFRUk1tdEE9PQ==', 'pierre@interieur.gouv.fr', '$2y$10$PRwurrlw8g9VElm68xJ9l.Eqh5QbKE0HOz3CyPOHVREyRR5RcR6fK', '000001', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('2', 'iKTcF1jqdLVRhfv1kJkT50pLeStMc2lWUVJCVWFWTENuR0NGWnc9PQ==', 'fyzYAO+8eZm98YtOulrYEjdmVDYzRVQ1aGtXMDNNSkZoSU5BUVE9PQ==', 'julien@interieur.gouv.fr', '$2y$10$/kvlISHFDFRV.1hRfxaGq.1WJxjsqe0CUxhnr1LGh/Ur/x31Xbrg2', '000002', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '2');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('3', 's1dfGEvIwAKdZxfGo5SNDEVwdVh6ZGV5RzQya0pZdThzZUNZbGc9PQ==', 'i1GtVb/lRLn0I7f+PJsSv1FxSVB4MWRSUm1PQ1NsL2swRlNJakE9PQ==', 'christophe@interieur.gouv.fr', '$2y$10$uzA6VWCmccd4ZlmDj8Lvs.nPrnZO8eeqCV90VtsIUgeTwFuGaqu7O', '000003', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '3');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('4', 'oIlP/2q3zBxNP4J+foehAUxIM25uWEZxYVJnUmxmdGxNQTMxZ2c9PQ==', 'Yf7Lk2ODvj9IWNxd2+7fdnBPaXRHb3FJYmpoLzR5SWFON25iNlE9PQ==', 'sebastien@interieur.gouv.fr', '$2y$10$0DY4PjGhXSf2ujI99Ee9heJDjn/9aFfSHGRB5dEcXm2JVmXXMcvRi', '000004', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '9', '1', '2000-01-01 00:00:00', '4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('5', 'EW1eQkppKiWqDRKHDZaol0h2TzVVWDVEWEFGZmo4QlJJSndIbEE9PQ==', '47CwiLLN5eBOLBMncKg9STRQSkV6UHFzVDlmeGsyVDFQSHVJc1E9PQ==', 'cyril@interieur.gouv.fr', '$2y$10$S54aA8pXX9LO6b.tnjjrReoRfwDNJSoSlOiRoa0qCvGQpq4o76SfK', '000005', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '5');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('6', 'rxOwyXsRKdqByJVnogvHomp0N29scmllTmVYeGphVzhsNzRGeEE9PQ==', 'kosEa7Mk6KIs7fKvuoD4UzRlNmc5WUJpK2IyYmUxc2dqUjBNL0E9PQ==', 'remi@interieur.gouv.fr', '$2y$10$hq1p44Y59ORKuMgZO3TZKe5YUfe1Gc6ALTq6Z8uvEtUWb1Ok5ZH0G', '000006', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('7', 'oKeBxes56xTFk8La6+r4EzBJVHBBdW1pTnVLZWVlYktIMEUva3c9PQ==', '36ZHIPCGINlL1Pe9NRpGdTJlVXRYMTU0eWNxRVRpWHRYMzlvc3c9PQ==', 'antonin@interieur.gouv.fr', '$2y$10$KOw8qDAvRPvw1pUWMoIIZ.C1IKXatSlDYrqiOc3CMXI58pM3AnGsK', '000007', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '7');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('8', 'm+XCjCUllLG6Fwf9ChsrbjE1b0lqMmhDY3ZsRTJHUnE3YmQzcXc9PQ==', 'kUhw3mAtRmNwSOf2SAezolNIR3hScGNDdlE2aXlybnJXa0dqNlE9PQ==', 'nicolas@interieur.gouv.fr', '$2y$10$lWqDF.o6.i/LpsH/aCq15.suUww06CNiSbMhMeSqqiKGJKyTPnV3q', '000008', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('9', 'YZgH0Z8EsK2smbWJRorZvzUzSUVlRm9sZlNSZDVsQVEveWhaVGc9PQ==', 'jAsv4sgJkXtyEuNP8zaxqnhKczVoMVdXc2JRME9jdXhQdzhvckE9PQ==', 'damien@interieur.gouv.fr', '$2y$10$iPRdPx385mE8PzZIwVcQTueVSjSzMH9RYRg2fN4G.dRMJeweKOvRC', '000009', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '9');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('10', '8HhZ1+eKd98t9fIyRrItj0xQZC84d0d2RWtuTEFvL25mek1JaEE9PQ==', 'Mlmyrr2gf0MNDO+jrkSvk1lJSVk0YXBQeVJpWHBONUlzL2gyc3c9PQ==', 'alain@interieur.gouv.fr', '$2y$10$eEZF5ypScQndl3/GcHrw9OLZ2jMBtR4qs.iLS2RdzUHImbEsT9132', '000010', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('11', 'ZARfC+nVloZad4/so63aCThEREw0N1RnY0ZrdnJqVDFWSGhoVEE9PQ==', '4o02duBfsjSTpMlvxHtmqDV1QnA1VVM2dmZweG1uYzZrODllWUE9PQ==', 'marie@interieur.gouv.fr', '$2y$10$TIKLEUicTvw4E/sSo8C37OfCwhOp9HoZTaxP5cD6FE.uvM26p09cK', '000011', '2024-07-21 19:22:23', '1', '2025-07-01 00:00:00', '4', '1', '2000-01-01 00:00:00', '11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('12', 'R6cKduCJ4pvqmSM3xth0W0xMaDZYUld6MExSeHVxNnV3Z0QrL1E9PQ==', 'PFjiPcD7PgWsWIEt6IuQ8UJmVWc0cHVrUXdkRmdJb2pPck1LVGc9PQ==', 'micke@interieur.gouv.fr', '$2y$10$TIKLEUicTvw4E/sSo8C37OfCwhOp9HoZTaxP5cD6FE.uvM26p09cK', '000012', '2024-07-21 19:22:23', '3', '', '1', '1', '', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('66', 'IcneBqu5w3ft/nQt54JKJzNFbktlS2JiaGdISTFMOXN0UHdmR0E9PQ==', 'pC/HFEIED822sOOSun5xMzM0aytmVmF2RmNpYjhtNFRickhhUGc9PQ==', 'dupond.jordan@interieur.gouv.fr', '$2y$10$lQLHtOyE7ROsPEHT5hT4pOFm0WnnkdO8cu.AXzlhZCzbUqL9ESPnm', '362975', '2024-07-22 19:22:23', '1', '2025-07-01 00:00:00', '11', '1', '2000-01-01 00:00:00', '4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('67', '846xqzZNTXj+0hxxVCbppUhCL2JLU0dTQ1QwZE9DSy90c3oxZlE9PQ==', 'bFZQHqGRcOcgYs2hDiiiIU5qV0JEdjc2NVFOUnJpOEJEaXR4K3c9PQ==', 'pierre2@interieur.gouv.fr', '$2y$10$AVdrQ8FvsNrKJlRZhT5mK.NuecpoZ/PsH7StW7BrIrvrUf/O./Maa', '000001', '2024-07-23 13:00:54', '1', '', '1', '1', '2000-01-01 00:00:00', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('68', 'Q5tHa9O2IkDqYlBBIVOAS3N4QmVWVFNJQUdQTWtycW9aY05jZXc9PQ==', 'a+2uw7Y0Ll5xiLDjCAmEsVd4SEptdDFsYlovb0NETjFFWi9NdHc9PQ==', 'fsdgdfsg@interieur.gouv.fr', '$2y$10$Jj4ag9hBDdaUDgg2K.fCcOITIv/0lM3b4QhTJn6yFddF//q6YlIi2', '252002', '2024-07-24 09:49:00', '1', '', '1', '1', '2000-01-01 00:00:00', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('69', 'IlAU9eJcTxmAU+VZPe31FEFWZ011TitzUG5lRmxTZmhzZ1BwU2c9PQ==', 'j3IElFkYJqbPRWlQ2Vh8vk5rdFJZbDZKZStBZStxV3haK0k3dUE9PQ==', 'kilian.janus@interieur.gouv.fr', '$2y$10$lcG7e56bcyPO4pS2g3RIx..JE6JdpnYPecj740S2y9GD2P6lAnuQC', '230619', '2024-08-07 09:33:23', '1', '', '1', '3', '2000-01-01 00:00:00', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('70', 'IlCKp+ljK71MNp1XL3+8VTBWNy9VTExKcTJmTXZSSHF4QjgrRmc9PQ==', 'urGOZp5hPiBelRk7bGPwrkh6eDkyK1JsVkRmV290UEN4SE5YVHc9PQ==', 'kiki@interieur.gouv.fr', '$2y$10$vD6d6QoSsqvVCQ8QWVURd.FMmZr0GUlW3PjGXSygzRs5fBnmHoeqy', '230629', '2024-08-07 09:38:09', '1', '', '1', '3', '2000-01-01 00:00:00', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('71', 'cBDae++kFNmesBT1L15LSjhxR2tYaVBEK2Q2bjcvUzFHU2xieGc9PQ==', 'NKNfxbxJYfb0C6r9BqwO2lVmTlFnbFMwWFVybmo1WkpxbmpLSUE9PQ==', 'mdp@interieur.gouv.fr', '$2y$10$CWF9tViKNX62YH0yl0TBTuWOPLycGtWOvl4gYLWmGrcuyl/DSZ8t2', '230698', '2024-08-07 09:53:22', '1', '', '1', '3', '2000-01-01 00:00:00', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('72', 'OwWo/lubbISUHgo9mSnGg0RtaG5rcmNHanloUnJuS28vZVZ1VXc9PQ==', 'O4msPs5xI4fNordh1eo+ZzhjL2VyMDhCbjEyd21FVjNKZ2VKUGc9PQ==', 'toto@interieur.gouv.fr', '$2y$10$GjaGxOQu./mxp15EHAxMvO6tjqsVa1AaIE9X8LvCs52.xParFqSqu', '1234567', '2024-08-07 09:58:01', '1', '', '1', '1', '2000-01-01 00:00:00', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `matricule`, `created_at`, `roles_id`, `subscriptionEnd`, `statuts_id`, `sectors_id`, `limit_time`, `nbrMonthsRenewalsSubscription`) VALUES ('73', 'mrOUFtwmbVVOMvwFHOEqslJVOTdhbm5DQWpPMUFwdGJLQzZKb2c9PQ==', 'WZlDcj208u8KCiN6Q5ZJ22MvK29lUWZmd05xR0V6dFJiWVNMS3c9PQ==', 'toto2@interieur.gouv.fr', '$2y$10$zPHJsloqI9VCzGg.qS0t6etGk15/m1TqHBhxxr1IY7UECBDzIK9qe', '2234567', '2024-08-07 09:59:14', '1', '', '1', '1', '2000-01-01 00:00:00', '0');

-- Creating table `usersDetails` --
CREATE TABLE `usersDetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `qualif` int(11) NOT NULL,
  `dept` int(11) NOT NULL,
  `poste` int(11) NOT NULL,
  `item_1` int(11) NOT NULL,
  `item_2` int(11) DEFAULT NULL,
  `item_3` int(11) DEFAULT NULL,
  `item_4` int(11) DEFAULT NULL,
  `item_5` int(11) DEFAULT NULL,
  `statutory` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `dept_affectation` (`dept`),
  KEY `grade` (`grade`),
  KEY `poste` (`poste`),
  KEY `item_1` (`item_1`),
  KEY `item_2` (`item_2`),
  KEY `item_3` (`item_3`),
  KEY `item_4` (`item_4`),
  KEY `item_5` (`item_5`),
  KEY `users_id` (`users_id`),
  KEY `qualif` (`qualif`),
  CONSTRAINT `usersDetails_ibfk_1` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  CONSTRAINT `usersDetails_ibfk_10` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  CONSTRAINT `usersDetails_ibfk_11` FOREIGN KEY (`qualif`) REFERENCES `qualification` (`id`),
  CONSTRAINT `usersDetails_ibfk_2` FOREIGN KEY (`grade`) REFERENCES `grades` (`id`),
  CONSTRAINT `usersDetails_ibfk_3` FOREIGN KEY (`poste`) REFERENCES `services` (`id`),
  CONSTRAINT `usersDetails_ibfk_4` FOREIGN KEY (`item_1`) REFERENCES `services` (`id`),
  CONSTRAINT `usersDetails_ibfk_5` FOREIGN KEY (`item_2`) REFERENCES `services` (`id`),
  CONSTRAINT `usersDetails_ibfk_6` FOREIGN KEY (`item_3`) REFERENCES `services` (`id`),
  CONSTRAINT `usersDetails_ibfk_7` FOREIGN KEY (`item_4`) REFERENCES `services` (`id`),
  CONSTRAINT `usersDetails_ibfk_8` FOREIGN KEY (`item_5`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
-- Inserting data into table `usersDetails` --
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('1', '1', '2', '1', '75', '2', '3', '13', '5', '34', '72', '2024-07-30 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('2', '2', '2', '1', '75', '5', '1', '2', '', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('3', '3', '2', '1', '69', '18', '931', '914', '', '', '', '2024-09-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('4', '4', '2', '1', '69', '931', '911', '18', '', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('5', '5', '2', '1', '75', '14', '12', '', '', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('6', '6', '2', '1', '75', '12', '7', '', '', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('7', '7', '2', '1', '75', '7', '18', '14', '', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('8', '8', '2', '1', '59', '15', '9', '10', '11', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('9', '9', '2', '1', '94', '11', '91', '58', '', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('10', '10', '2', '1', '91', '58', '55', '', '', '', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('11', '11', '2', '1', '78', '55', '12', '14', '13', '15', '', '2024-07-01 00:00:00', '');
INSERT INTO `usersDetails` (`id`, `users_id`, `grade`, `qualif`, `dept`, `poste`, `item_1`, `item_2`, `item_3`, `item_4`, `item_5`, `statutory`, `description`) VALUES ('12', '66', '2', '1', '69', '914', '18', '', '', '', '', '2024-07-21 19:28:02', '');

