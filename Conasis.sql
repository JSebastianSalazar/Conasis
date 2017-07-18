-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.13-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema conasis
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ conasis;
USE conasis;

--
-- Table structure for table `conasis`.`acceso`
--

DROP TABLE IF EXISTS `acceso`;
CREATE TABLE `acceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `nick` varchar(15) DEFAULT NULL,
  `clave` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `acceso_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`acceso`
--

/*!40000 ALTER TABLE `acceso` DISABLE KEYS */;
INSERT INTO `acceso` (`id`,`idUsuario`,`nick`,`clave`) VALUES 
 (53,58,'1017241873','766b80c8ec6ec6ad371f6b22e33a1dad'),
 (154,164,'1020478637','4d186321c1a7f0f354b297e8914ab240'),
 (155,165,'1128282990','43d69aac262e55bfcee9258227b581bf'),
 (157,167,'3412121','1b2c909dd7409cda7ae47d3457e64050'),
 (158,168,'334444333','4394a0ff9311f122eea69f3b3ac757f3'),
 (159,169,'457643333','eb640e164fde08ae949d0ed9a5ae6401'),
 (160,170,'8909767','ef823058974760b08e4fe0392e3e0740'),
 (161,175,'71725389','ab9a51396abcb72f850f765cf8520749'),
 (162,176,'567812121222','16f7b93df29fad3bd37670ea037484cf'),
 (163,177,'71230150','ebef88d21685e537d9d0ea3f018629ad'),
 (164,181,'98582870','b8e0ad9a00f345ce67d0f1c92619e30c'),
 (165,187,'15384541','75ddcce17f8e606285698de91e5c4b7b'),
 (166,194,'1128395832','cc038366127f8037afee85b56d351016'),
 (167,198,'8359510','43d5a98fdb29b62502ca0590fdfc4642');
/*!40000 ALTER TABLE `acceso` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`ambiente`
--

DROP TABLE IF EXISTS `ambiente`;
CREATE TABLE `ambiente` (
  `idAmbiente` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` varchar(20) DEFAULT NULL,
  `tipoAmbiente` varchar(20) DEFAULT NULL,
  `suministros` varchar(50) DEFAULT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idAmbiente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`ambiente`
--

/*!40000 ALTER TABLE `ambiente` DISABLE KEYS */;
INSERT INTO `ambiente` (`idAmbiente`,`capacidad`,`tipoAmbiente`,`suministros`,`observacion`) VALUES 
 (1,'28','informatica','computadores','ninguna'),
 (2,'20','Quimica','veinte cinceles ','Todo en orden  un computador pisado por aprendices '),
 (3,'30','Automatizacion','Arduinos','Todo en orden'),
 (4,'12','Casa','dos','Ninguna'),
 (5,'30','Informatica','Computadores','no hay cables utp'),
 (6,'35','Mixtos','Televisores mesas ','Ninguna'),
 (7,'32','Rectilínea uno','un televisor','Ninguna '),
 (8,'30','química','tv y portatiles','no hay'),
 (9,'32','Informatica','Computadores','Ninguna'),
 (10,'30','informatica','30 equipos','especial para adsi');
/*!40000 ALTER TABLE `ambiente` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
CREATE TABLE `asistencia` (
  `idAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `entradaSalida` varchar(1) DEFAULT NULL,
  `fechaHora` datetime DEFAULT NULL,
  `novedad` varchar(200) DEFAULT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idProgramacion` int(11) DEFAULT NULL,
  `horaEnClase` time DEFAULT NULL,
  PRIMARY KEY (`idAsistencia`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idProgramacion` (`idProgramacion`),
  CONSTRAINT `asistencia_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  CONSTRAINT `asistencia_ibfk_2` FOREIGN KEY (`idProgramacion`) REFERENCES `programacion` (`idProgramacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`asistencia`
--

/*!40000 ALTER TABLE `asistencia` DISABLE KEYS */;
INSERT INTO `asistencia` (`idAsistencia`,`entradaSalida`,`fechaHora`,`novedad`,`idUsuario`,`idProgramacion`,`horaEnClase`) VALUES 
 (24,'0','2016-09-20 07:43:51',NULL,186,4,NULL),
 (25,'1','2016-09-20 07:47:07',NULL,186,4,'00:03:16'),
 (33,'0','2016-07-12 06:00:00',NULL,188,7,'00:00:00'),
 (34,'0','2016-07-12 06:00:00',NULL,189,7,NULL),
 (35,'0','2016-07-12 06:00:00',NULL,190,7,NULL),
 (36,'0','2016-07-12 06:00:00',NULL,191,7,NULL),
 (37,'0','2016-07-12 06:00:00',NULL,192,7,NULL),
 (38,'3','2016-07-12 00:00:00',NULL,193,7,NULL),
 (40,'1','2016-07-12 12:00:00',NULL,188,7,'06:00:00'),
 (41,'1','2016-07-12 12:00:00',NULL,189,7,'06:00:00'),
 (42,'1','2016-07-12 12:00:00',NULL,192,7,'06:00:00'),
 (43,'1','2016-07-12 12:00:00',NULL,191,7,'06:00:00'),
 (44,'1','2016-07-12 12:00:00',NULL,190,7,'06:00:00'),
 (45,'3','2016-07-19 00:00:00',NULL,188,7,NULL),
 (46,'3','2016-07-19 00:00:00',NULL,189,7,NULL),
 (47,'3','2016-07-19 00:00:00',NULL,190,7,NULL),
 (48,'3','2016-07-19 00:00:00',NULL,191,7,NULL),
 (49,'3','2016-07-19 00:00:00',NULL,192,7,NULL);
INSERT INTO `asistencia` (`idAsistencia`,`entradaSalida`,`fechaHora`,`novedad`,`idUsuario`,`idProgramacion`,`horaEnClase`) VALUES 
 (50,'3','2016-07-19 00:00:00',NULL,193,7,NULL),
 (52,'1','2016-07-19 06:00:00',NULL,189,7,'06:00:00'),
 (53,'1','2016-07-19 06:00:00',NULL,190,7,'06:00:00'),
 (54,'1','2016-07-19 06:00:00',NULL,191,7,'06:00:00'),
 (55,'1','2016-07-19 06:00:00',NULL,192,7,'06:00:00'),
 (56,'1','2016-07-19 06:00:00',NULL,193,7,'06:00:00'),
 (57,'0','2016-07-26 06:00:00',NULL,188,7,'00:00:00'),
 (58,'0','2016-07-26 06:00:00',NULL,189,7,NULL),
 (59,'0','2016-07-26 06:00:00',NULL,190,7,NULL),
 (60,'0','2016-07-26 06:00:00',NULL,191,7,NULL),
 (61,'0','2016-07-26 06:00:00',NULL,192,7,NULL),
 (62,'0','2016-07-26 06:00:00',NULL,193,7,'00:00:00'),
 (64,'1','2016-07-19 12:00:00',NULL,188,7,'06:00:00'),
 (65,'1','2016-07-19 12:00:00',NULL,189,7,'06:00:00'),
 (67,'1','2016-07-19 12:00:00',NULL,190,7,'06:00:00'),
 (68,'1','2016-07-19 12:00:00',NULL,191,7,'06:00:00'),
 (69,'1','2016-07-19 12:00:00',NULL,192,7,'06:00:00'),
 (70,'1','2016-07-19 12:00:00',NULL,193,7,'06:00:00');
INSERT INTO `asistencia` (`idAsistencia`,`entradaSalida`,`fechaHora`,`novedad`,`idUsuario`,`idProgramacion`,`horaEnClase`) VALUES 
 (71,'0','2016-03-01 13:00:00',NULL,186,4,'00:00:00'),
 (72,'0','2016-03-01 13:00:00',NULL,205,4,NULL),
 (74,'1','2016-03-01 18:00:00',NULL,205,4,'05:00:00'),
 (75,'1','2016-03-01 18:00:00',NULL,186,4,'05:00:00'),
 (76,'0','2016-08-01 13:00:00',NULL,186,4,NULL),
 (77,'0','2016-08-01 13:00:00',NULL,205,4,NULL),
 (79,'1','2016-03-08 18:00:00',NULL,186,4,'05:00:00'),
 (80,'1','2016-03-08 18:00:00',NULL,205,4,'05:00:00'),
 (81,'0','2016-03-15 13:00:00',NULL,186,4,NULL),
 (82,'0','2016-03-15 13:00:00',NULL,205,4,NULL),
 (84,'1','2016-03-18 18:00:00',NULL,186,4,'05:00:00'),
 (85,'1','2016-03-18 18:00:00',NULL,205,4,'05:00:00'),
 (86,'0','2016-08-31 13:00:00',NULL,183,5,NULL),
 (87,'0','2016-08-31 13:00:00',NULL,184,5,NULL),
 (88,'0','2016-08-31 13:00:00',NULL,200,5,NULL),
 (89,'0','2016-08-31 13:00:00',NULL,201,5,NULL),
 (90,'0','2016-08-31 13:00:00',NULL,202,5,NULL),
 (91,'0','2016-08-31 13:00:00',NULL,203,5,NULL);
INSERT INTO `asistencia` (`idAsistencia`,`entradaSalida`,`fechaHora`,`novedad`,`idUsuario`,`idProgramacion`,`horaEnClase`) VALUES 
 (92,'0','2016-08-31 13:00:00',NULL,206,5,NULL),
 (93,'1','2016-08-31 18:00:00',NULL,183,5,'05:00:00'),
 (94,'1','2016-08-31 18:00:00',NULL,184,5,'05:00:00'),
 (95,'1','2016-08-31 18:00:00',NULL,200,5,'05:00:00'),
 (96,'1','2016-08-31 18:00:00',NULL,201,5,'05:00:00'),
 (97,'1','2016-08-31 18:00:00',NULL,202,5,'05:00:00'),
 (98,'1','2016-08-31 18:00:00',NULL,203,5,'05:00:00'),
 (99,'1','2016-08-31 18:00:00',NULL,206,5,'05:00:00'),
 (100,'0','2016-09-07 13:00:00',NULL,183,5,NULL),
 (101,'0','2016-09-07 13:00:00',NULL,184,5,NULL),
 (102,'0','2016-09-07 13:00:00',NULL,200,5,NULL),
 (103,'0','2016-09-07 13:00:00',NULL,201,5,NULL),
 (104,'3','2016-09-07 00:00:00',NULL,202,5,NULL),
 (106,'3','2016-09-07 00:00:00',NULL,206,5,NULL),
 (107,'1','2016-09-07 18:00:00',NULL,183,5,'05:00:00'),
 (108,'1','2016-09-07 18:00:00',NULL,184,5,'05:00:00'),
 (109,'1','2016-09-07 18:00:00',NULL,200,5,'05:00:00'),
 (110,'1','2016-09-07 18:00:00',NULL,201,5,'05:00:00');
INSERT INTO `asistencia` (`idAsistencia`,`entradaSalida`,`fechaHora`,`novedad`,`idUsuario`,`idProgramacion`,`horaEnClase`) VALUES 
 (111,'1','2016-09-07 18:00:00',NULL,202,5,'05:00:00'),
 (112,'1','2016-09-07 18:00:00',NULL,203,5,'05:00:00'),
 (113,'0','2016-09-27 09:41:12',NULL,186,4,NULL),
 (114,'3','2016-09-27 09:39:54',NULL,205,4,NULL),
 (116,'1','2016-09-27 09:43:06',NULL,186,4,'00:01:54');
/*!40000 ALTER TABLE `asistencia` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`barrio`
--

DROP TABLE IF EXISTS `barrio`;
CREATE TABLE `barrio` (
  `idBarrio` int(11) NOT NULL AUTO_INCREMENT,
  `nomBarrio` varchar(50) DEFAULT NULL,
  `idMunicipio` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBarrio`),
  KEY `idMunicipio` (`idMunicipio`),
  CONSTRAINT `barrio_ibfk_1` FOREIGN KEY (`idMunicipio`) REFERENCES `municipio` (`idMunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`barrio`
--

/*!40000 ALTER TABLE `barrio` DISABLE KEYS */;
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (1,'Popular',1),
 (2,'Santo domingo savio',1),
 (3,'Granizal',1),
 (4,'Moscu',1),
 (5,'Villa guadalupe',1),
 (6,'San pablo',1),
 (7,'Aldea pablo VI',1),
 (8,'La esperanza',1),
 (9,'El Comprimiso',1),
 (10,'La Avanzada',1),
 (11,'Carpinelo',1),
 (12,'Santa Cruz',1),
 (13,'La Isla',1),
 (14,'Playon De Los Comuneros',1),
 (15,'Pablo VI',1),
 (16,'La Frontera',1),
 (17,'La Francia',1),
 (18,'Andalucia',1),
 (19,'Villa Del Socorro',1),
 (20,'Villa Niza',1),
 (21,'Moscu n°1',1),
 (22,'La Rosa',1),
 (23,'La salle',1),
 (24,'Las Granjas',1),
 (25,'Campo Valdes',1),
 (26,'Santa Ines',1),
 (27,'El Raizal',1),
 (28,'EL Pomar',1),
 (29,'Manrrique',1),
 (30,'Versalles',1),
 (31,'La Cruz',1),
 (32,'La Honda',1),
 (33,'Oriente',1),
 (34,'San Jose La Cima',1),
 (35,'Aranjuez',1),
 (36,'Berlin',1),
 (37,'San Isidro',1),
 (38,'Palermo',1),
 (39,'Bermejal',1),
 (40,'Moravia',1),
 (41,'Sevilla',1),
 (42,'San Pedro',1),
 (43,'Las Esmeraldas',1),
 (44,'Piñuela',1);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (45,'Brasilia',1),
 (46,'Miranda',1),
 (47,'Castilla',1),
 (48,'Toscana',1),
 (49,'La paralela',1),
 (50,'Las Brisas',1),
 (51,'Florencia',1),
 (52,'Tejelo',1),
 (53,'Boyaca',1),
 (54,'Hector Abad Gómez ',1),
 (55,'Belarcazar',1),
 (56,'Girardot',1),
 (57,'Tricentenario',1),
 (58,'Fransisco Antonio  Zea',1),
 (59,'Alfonso Lopez',1),
 (60,'Caribe',1),
 (61,'EL Progreso',1),
 (62,'Doce De Octubre',1),
 (63,'Santander',1),
 (64,'Pedregal',1),
 (65,'La Ezperanza',1),
 (66,'San Martin De Porres',1),
 (67,'Kennedy',1),
 (68,'Picacho',1),
 (69,'Picachito',1),
 (70,'Mirador Del Doce',1),
 (71,'Progredo N°2',1),
 (72,'EL Triunfo',1),
 (73,'Robledo',1),
 (74,'Cerro Del Volador',1),
 (75,'San German',1),
 (76,'Facultad De Minas',1),
 (77,'Pilarica',1),
 (78,'Bosques De San Pablo',1),
 (79,'Altamira',1),
 (80,'Cordoba',1),
 (81,'Lopez De Mesa',1),
 (82,'El Diamante',1),
 (83,'Aures',1),
 (84,'Bello Horizonte',1),
 (85,'Villa Flora',1),
 (86,'Palenque',1);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (87,'Cucaracho',1),
 (88,'Fuente Clara',1),
 (89,'Santa Margarita',1),
 (90,'Olaya Herrera',1),
 (91,'Pajarito',1),
 (92,'Monte Claro',1),
 (93,'La Iguana',1),
 (94,'Villa Hermosa',1),
 (95,'La Mancion',1),
 (96,'San Miguel',1),
 (97,'La Ladera',1),
 (98,'Batallon Girardot',1),
 (99,'Llanaditas',1),
 (100,'Los Mangos',1),
 (101,'Enciso',1),
 (102,'Sucre',1),
 (103,'El Pinal',1),
 (104,'Trece De Octubre',1),
 (105,'La Libertad',1),
 (106,'Villatina',1),
 (107,'San Antonio',1),
 (108,'Las Estancias',1),
 (109,'Villa Turbay',1),
 (110,'La Sierra',1),
 (111,'Villa Lilian',1),
 (112,'Buenos Aires',1),
 (113,'Juan Pablo II',1),
 (114,'Barrios De Jesús',1),
 (115,'Bombona',1),
 (116,'Los Cerros De Vergel',1),
 (117,'Alejandro Chavarria',1),
 (118,'Miraflores',1),
 (119,'Cataluña',1),
 (120,'Milagrosa',1),
 (121,'Gerona',1),
 (122,'Salvador',1),
 (123,'Loreto',1),
 (124,'Asomadera',1),
 (125,'Ocho De Marzo',1),
 (126,'Candelaria',1),
 (127,'Prado',1);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (128,'Jesus Nazareno',1),
 (129,'Chagualo',1),
 (130,'Estacion Villa',1),
 (131,'San Benito',1),
 (132,'Guayaquil',1),
 (133,'Corazon De Jesus',1),
 (134,'Calle Nueva',1),
 (135,'Perpetuo Socorro',1),
 (136,'Barrio Colon',1),
 (137,'Las Palmas',1),
 (138,'Boston',1),
 (139,'Los Angeles',1),
 (140,'Villa Nueva',1),
 (141,'San Diego',1),
 (142,'Conquistadores',1),
 (143,'Laureles',1),
 (144,'Carlos E Restrepo',1),
 (145,'Suramericana',1),
 (146,'Naranjal',1),
 (147,'San Joaquin',1),
 (148,'Bolivariana',1),
 (149,'Las Acacias',1),
 (150,'La Castellana',1),
 (151,'Lorena',1),
 (152,'El Velodromo',1),
 (153,'Estadio',1),
 (154,'Los Colores',1),
 (155,'Floresta',1),
 (156,'Cuarta Brigada',1),
 (157,'America',1),
 (158,'Ferrini',1),
 (159,'Calasanz',1),
 (160,'Los Pinos',1),
 (161,'Floresta',1),
 (162,'Santa Lucia',1),
 (163,'Danubio',1),
 (164,'Campo Alegre',1),
 (165,'Santa Monica',1),
 (166,'Barrio Cristobal',1),
 (167,'Simon Bolivar',1),
 (168,'Santa Teresita ',1);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (169,'San Javier',1),
 (170,'El Pesebre',1),
 (171,'Blanquizal',1),
 (172,'Santa Rosa De Lima',1),
 (173,'Los Alcàzares',1),
 (174,'Metropolitano',1),
 (175,'La Pradera',1),
 (176,'Juan XIII - La Quiebra',1),
 (177,'La Divisa',1),
 (178,'Veinte de Julio',1),
 (179,'Belencito',1),
 (180,'Betania',1),
 (181,'El Corazón',1),
 (182,'Las Independencias',1),
 (183,'Nuevos Conquistadores',1),
 (184,'El Salado',1),
 (185,'Eduardo Santos',1),
 (186,'Peñitas',1),
 (187,'Antonio Nariño',1),
 (188,'Socorro',1),
 (189,'Poblado',1),
 (190,'Barrio Colombia',1),
 (191,'Simesa',1),
 (192,'Villa Carlota',1),
 (193,'Castropol',1),
 (194,'Lalinde',1),
 (195,'Las Lomas',1),
 (196,'Altos Del Poblado',1),
 (197,'El Tesoro',1),
 (198,'Los Naranjos',1),
 (199,'Los Balsos',1),
 (200,'San Lucas',1),
 (201,'El Diamante N°2',1),
 (202,'El Castilo',1),
 (203,'Alejandria',1),
 (204,'La Florida',1),
 (205,'Manila',1),
 (206,'Astorga',1),
 (207,'Patio Bonito',1),
 (208,'Aguacatala',1);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (209,'Santa Maria De Los Angeles',1),
 (210,'Guayabal',1),
 (211,'Tenche',1),
 (212,'Trinidad',1),
 (213,'Santa Fe',1),
 (214,'Shellmar',1),
 (215,'San Pablo',1),
 (216,'Juan Pablo II',1),
 (217,'Campo Amor',1),
 (218,'Cristo Rey',1),
 (219,'La Colina',1),
 (220,'Belen',1),
 (221,'Fatima',1),
 (222,'Rosales',1),
 (223,'Granada',1),
 (224,'San Bernardo',1),
 (225,'Las Playas',1),
 (226,'Diego Chavarria',1),
 (227,'La Mota',1),
 (228,'Rodeo',1),
 (229,'Rinco',1),
 (230,'La Loma De Los Bernal',1),
 (231,'La Gloria',1),
 (232,'Altavista',1),
 (233,'La Palma',1),
 (234,'Zafra',1),
 (235,'Los Alpes',1),
 (236,'Violetas',1),
 (237,'Las Mercedes',1),
 (238,'Nueva Villa De Aburra',1),
 (239,'Miravale',1),
 (240,'Los Almendros',1),
 (241,'Cerro Nutibara',1),
 (242,'Los Sauces',2),
 (243,' El Cafetero',2),
 (244,'La Pradera',2),
 (245,'La Esmeralda',2),
 (246,'La Maruchenga',2),
 (247,'José Antonio Galán',2),
 (248,'Salvador Allende',2),
 (249,'Barrio nuevo',2);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (250,'La cabañita',2),
 (251,'La cabaña',2),
 (252,'La madera',2),
 (253,'La florida',2),
 (254,'Gran avenida',2),
 (255,' San josé obrero',2),
 (256,'Villa de occidente',2),
 (257,'Molinares',2),
 (258,'San simón',2),
 (259,'Amazonia',2),
 (260,'Santa ana',2),
 (261,'Los búcaros',2),
 (262,' Serramonte',2),
 (263,'Salento',2),
 (264,'Suárez',2),
 (265,'Puerto bello',2),
 (266,'Rincón santo',2),
 (267,'Central',2),
 (268,'Espíritu santo',2),
 (269,'Centro',2),
 (270,'Pérez',2),
 (271,'Nazareth',2),
 (272,'La mesera',2),
 (273,'El rosario',2),
 (274,'El rosario',2),
 (275,'Andalucía',2),
 (276,'López de mesa',2),
 (277,'El cairo',2),
 (278,'La milagrosa',2),
 (279,'El congolo',2),
 (280,'Las granjas',2),
 (281,'Prado',2),
 (282,'Manchester',2),
 (283,'La estación',2),
 (284,'La cumbre',2),
 (285,'Altavista',2),
 (286,'El carmelo',2),
 (287,'Hato viejo',2),
 (288,'El porvenir',2),
 (289,'Briceño',2),
 (290,'Buenos Aires',2),
 (291,'El paraíso',2);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (292,'Riachuelo',2),
 (293,'Valadares',2),
 (294,'El Trapiche',2),
 (295,'Aralias',2),
 (296,'Urapanes',2),
 (297,'La primavera',2),
 (298,'Villa maría',2),
 (299,'Villa de confenalco',2),
 (300,'Bellavista',2),
 (301,'Playa rica',2),
 (302,'San gabriel',2),
 (303,'San Martín',2),
 (304,'Villa de sol',2),
 (305,'Tierradentro',2),
 (306,'Villa linda',2),
 (307,'Girasoles',2),
 (308,'Girasoles',2),
 (309,'Pachelly',2),
 (310,'Los alpes',2),
 (311,'El ducado',2),
 (312,'La aldea',2),
 (313,'La selva',2),
 (314,'El mirador',2),
 (315,' Niquía bifamiliares',2),
 (316,'Altos de niquía',2),
 (317,'Altos de quitasol',2),
 (318,'Ciudad niquía',2),
 (319,'Panamericano',2),
 (320,'Terranova ',2),
 (321,'Ciudadela del norte',2),
 (322,' Hermosa provincia',2),
 (323,'La navarra',2),
 (324,' El treból',2),
 (325,'El treból',2),
 (326,'Guasimalito',2),
 (327,'La virginia',2),
 (328,'Fontidueño',2),
 (329,'La mina',2),
 (330,' Alcalá',2),
 (331,'Los ciruelos',2);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (332,'Estación primera',2),
 (333,'Las vegas',2),
 (334,'La camila',2),
 (335,' Cinco estrellas',2),
 (336,'Marco fidel suárez',2),
 (337,'La gabriela',2),
 (338,'Velvedere',2),
 (339,'Acevedo',2),
 (340,'Zamora',2),
 (341,'Alpes del norte',2),
 (342,' Santa rita',2),
 (343,'Zona Industrial Nº1',3),
 (344,'Zona Industrial Nº2',3),
 (345,'San Juan Bautista',3),
 (346,'San José',3),
 (347,'Araucaria',3),
 (348,'La Gloria',3),
 (349,'Las Mercedes',3),
 (350,'Centro',3),
 (351,'Asturias',3),
 (352,'Los Naranjos',3),
 (353,'Villa Paula',3),
 (354,'Artex',3),
 (355,'Playa Rica',3),
 (356,'Satexco',3),
 (357,'San Isidro',3),
 (358,'La Santa Cruz',3),
 (359,'Santa Catalina',3),
 (360,'Samaria Robles de Sur',3),
 (361,'La Finca',3),
 (362,'Yarumito',3),
 (363,'El Palmar',3),
 (364,'Santa Ana',3),
 (365,'Samaria Nº1',3),
 (366,'Las Margaritas',3),
 (367,'Malta',3),
 (368,'Monte Verde',3),
 (369,'Camparola',3),
 (370,'San Pio X',3),
 (371,'La Palma',3);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (372,'Jardines Montesacro',3),
 (373,'Zona Industrial Nº3',3),
 (374,'Las Brisas',3),
 (375,'Pilsen',3),
 (376,'San Javier',3),
 (377,'Villa Lia',3),
 (378,'19 de Abril',3),
 (379,'San Gabriel',3),
 (380,'San Antonio',3),
 (381,'Triana',3),
 (382,'Ditaires',3),
 (383,'San Francisco',3),
 (384,'Glorieta Pilsen',3),
 (385,'Santa Maria Nº 1',3),
 (386,'Santa Maria Nº 2',3),
 (387,'Santa Maria Nº 3',3),
 (388,'La Esmeralda',3),
 (389,'Colon N° 2',3),
 (390,'Simón Bolivar',3),
 (391,'San Fernando',3),
 (392,'Entre colinas',3),
 (393,'Las Acacias',3),
 (394,'Las Américas',3),
 (395,'El Tablazo',3),
 (396,'Calatrava',3),
 (397,'Loma Linda	',3),
 (398,'Terranova Nº 1 y Nº 2',3),
 (399,'La Aldea',3),
 (400,'Balcones de Sevilla',3),
 (401,'Fátima',3),
 (402,'El Rosario',3),
 (403,'La Unión',3),
 (404,'Santa María La Nueva',3),
 (405,'La María',3),
 (406,'Los Olivares',3),
 (407,'Loma de los Zuleta',3),
 (408,'El Progreso',3),
 (409,'El Pedregal',3);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (410,'Los Gómez',3),
 (411,'El Ajizal',3),
 (412,'Porvenir',3),
 (413,'Barrios Unidos',4),
 (414,'Los Cerezos',4),
 (415,'Cristo Rey',4),
 (416,'Olaya Herrera',4),
 (417,'La Docena',4),
 (418,'La Inmaculada',4),
 (419,'Felipe Echavarría No. 1',4),
 (420,'Felipe Echavarría No. 2',4),
 (421,'La Chuscala',4),
 (422,'La Planta',4),
 (423,'Las Margaritas',4),
 (424,'La Acuarela y/o La Rivera',4),
 (425,'Zona Centro',4),
 (426,'Andalucía',4),
 (427,'La Goretty',4),
 (428,'El Socorro',4),
 (429,'Juan XXIII',4),
 (430,'Villa Capri',4),
 (431,'La Buena Esperanza',4),
 (432,'Fundadores',4),
 (433,'Centenario',4),
 (434,'Mandalay',4),
 (435,'La Playita',4),
 (436,'Bellavista',4),
 (437,'El Porvenir',4),
 (438,'El Cano',4),
 (439,'La Raya',4),
 (440,'Primavera',4),
 (441,'La Corrala',4),
 (442,'La Miel',4),
 (443,'La Valeria',4),
 (444,'La Corralita',4),
 (445,'Potrerillo',4),
 (446,'La Maní de Cardal',4),
 (447,'Sinífana',4),
 (448,'Cardalito',4);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (449,'Salinas',4),
 (450,'La Salada (P.A.)',4),
 (451,'La Salada (P.B.)',4),
 (452,'La Clara',4),
 (453,'La Quiebra',4),
 (454,'La Chuscala',4),
 (455,'El Raizal',4),
 (456,'Minas',4),
 (457,'Ancón San Martín',5),
 (458,'Bellavista',5),
 (459,'Camilo Torres',5),
 (460,'Caqueta',5),
 (461,'Centro',5),
 (462,'Chile',5),
 (463,'El Dorado',5),
 (464,'El Pedrero',5),
 (465,'Horizontes',5),
 (466,'Escobar',5),
 (467,'La Chinca',5),
 (468,'La Ferreira',5),
 (469,'La Ferreria',5),
 (470,'La Ospina',5),
 (471,'Las Brisas',5),
 (472,'Monterrey',5),
 (473,'Primavera',5),
 (474,'Quebrada Grande',5),
 (475,'San Agustín',5),
 (476,'San Andrés',5),
 (477,'San Cayetano',5),
 (478,'San Vicente',5),
 (479,'Zona Industrial',5),
 (480,'San José',5),
 (481,'Tierra Amarilla',5),
 (482,'El Guayabo',5),
 (483,'Pueblo Viejo',5),
 (484,'La Bermejala',5),
 (485,'Peñas Blancas',5),
 (486,'La Culebra',5),
 (487,'La Raya',5),
 (488,'La Tablacita',5),
 (489,'Juan XXIII',5);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (490,'San Isidro',5),
 (491,'Sagrada Familia',5),
 (492,'Aliadas Del Sur',6),
 (493,'Ancon Sur',6),
 (494,'Betania',6),
 (495,'Calle Del Banco',6),
 (496,'Calle Larga',6),
 (497,'El Carmelo II',6),
 (498,'Entreamigos',6),
 (499,'Holanda',6),
 (500,'La Barqueñera',6),
 (501,'La Florida',6),
 (502,'Lagos De La Doctora',6),
 (503,'Las Casitas',6),
 (504,'Los Alcazares',6),
 (505,'Los Arias',6),
 (506,'Manuel Restrepo',6),
 (507,'Maria Auxiliadora',6),
 (508,'Nuestra Señora De Los Dolores',6),
 (509,'Paso Ancho',6),
 (510,'Playas De Maria',6),
 (511,'Prados De Sabaneta',6),
 (512,'Promision',6),
 (513,'Restrepo Naranjo',6),
 (514,'Sabaneta Real',6),
 (515,'San Joaquin',6),
 (516,'San Rafael',6),
 (517,'Santa Ana',6),
 (518,'Tres Esquinas',6),
 (519,'Vegas De La Doctora',6),
 (520,'Vegas De San Jose',6),
 (521,'Villas Del Carmen',6),
 (522,'Virgen Del Carmen',6),
 (523,'Las Vegas',7),
 (524,'El Portal',7),
 (525,'La Magnolia ',7),
 (526,'San Marcos',7);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (527,'Pontevedra',7),
 (528,'Jardines',7),
 (529,'Villagrande',7),
 (530,'La Pradera',7),
 (531,'La Sebastiana',7),
 (532,'Las Flores',7),
 (533,'Uribe Ángel',7),
 (534,'Alto de Misael',7),
 (535,'Las Orquídeas',7),
 (536,'El Esmeraldal',7),
 (537,'Loma El Atravesado',7),
 (538,'San Mateo',7),
 (539,'Zuñiga',7),
 (540,'Bosques de Zuñiga',7),
 (541,'Loma de Las Brujas',7),
 (542,'La Pradera',7),
 (543,'El Chocho',7),
 (544,'La Inmaculada',7),
 (545,'El Chinguí',7),
 (546,'El Salado',7),
 (547,'La Mina',7),
 (548,'San Rafael',7),
 (549,'Las Antillas',7),
 (550,'El Trianón',7),
 (551,'Loma del Barro',7),
 (552,'La Paz',7),
 (553,'Las Casitas',7),
 (554,'Primavera',7),
 (555,'Milán-Vallejuelos',7),
 (556,'Alcalá',7),
 (557,'El Dorado',7),
 (558,'San José',7),
 (559,'Los Naranjos',7),
 (560,'Barrio Mesa',7),
 (561,'Zona Centro',7),
 (562,'Barrio Obrero',7),
 (563,'Bucarest',7),
 (564,'Las Palmas',7),
 (565,'El Vallano',7),
 (566,'El Escobero',7);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (567,'Santa Catalina',7),
 (568,'Perico',7),
 (569,'Pantanillo',7),
 (570,'El Recreo',8),
 (571,'Yarumito',8),
 (572,'Las Vegas',8),
 (573,'El Porvenir',8),
 (574,'Piedras Blancas',8),
 (575,'Barrio Obrero',8),
 (576,'Miraflores',8),
 (577,'Cristo Rey',8),
 (578,'San Francisco',8),
 (579,'La Azulita',8),
 (580,'El Pedregal',8),
 (581,'La Asunción',8),
 (582,'Fátima',8),
 (583,'El Mojón',8),
 (584,'El Tablazo-Canoas',8),
 (585,'María',8),
 (586,'La Pedrera',8),
 (587,'Villanueva',8),
 (588,'El Remanso',8),
 (589,'La Misericordia',8),
 (590,'Machado',8),
 (591,'San Juan',8),
 (592,'Simón Bolívar ',8),
 (593,'Portachuelo',9),
 (594,'San Esteban',9),
 (595,'La Holanda',9),
 (596,'La Mata',9),
 (597,'La Matica',9),
 (598,'El Socorro',9),
 (599,'Potrerito',9),
 (600,'La Palma',9),
 (601,'Mercedes Abrego',9),
 (602,'San Andrés',9),
 (603,'El Paraíso',9),
 (604,'El Totumo',9),
 (605,'Loma de los Ochoa',9),
 (606,'Juan Cojo',9),
 (607,'Las Cuchillas',9);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (608,'El Barro',9),
 (609,'El Cano',9),
 (610,'El Palmar',9),
 (611,'El Yarumo',9),
 (612,'San Diego',9),
 (613,'Jamundí\r\n',9),
 (614,'Encenillos',9),
 (615,'La Calera',9),
 (616,'Aguas Claras',10),
 (617,'Buenos Aires parte alta,',10),
 (618,'Buenos Aires baja',10),
 (619,'Buga',10),
 (620,'Cestillal',10),
 (621,'Chorrohondo',10),
 (622,' Corrientes',10),
 (623,'Dos Quebradas',10),
 (624,'El Cortado',10),
 (625,'El Guayabo',10),
 (626,'El Hoyo',10),
 (627,'El Salado',10),
 (628,'El Tablazo Hatillo',10),
 (629,' El Tablazo Popalito',10),
 (630,'El Tigre',10),
 (631,' El Viento',10),
 (632,'Filoverde',10),
 (633,'Graciano',10),
 (634,'Guayabal',10),
 (635,' Isaza',10),
 (636,'La Aguada',10),
 (637,'La Calda',10),
 (638,'La Cejita',10),
 (639,'Guayabal',10),
 (640,' La Chapa Alta',10),
 (641,'La Chorrera',10),
 (642,'La Cuesta',10),
 (643,'La Ese',10),
 (644,'La Herradura',10),
 (645,' La Montañita',10),
 (646,'La Montera',10),
 (647,'La Playa',10);
INSERT INTO `barrio` (`idBarrio`,`nomBarrio`,`idMunicipio`) VALUES 
 (648,' La Primavera',10),
 (649,' La Quiebra',10),
 (650,'La Tolda',10),
 (651,'Las Lajas',10),
 (652,'Las Peñas',10),
 (653,'Las Victorias',10),
 (654,'Matasanos',10),
 (655,'Mocorongo',10),
 (656,'Mocoronguito',10),
 (657,'Monte loro',10),
 (658,'Monterredondo',10),
 (659,'Pachohondo',10),
 (660,'Pantanillo',10),
 (661,'Platanito',10),
 (662,'Potrerito',10),
 (663,'Quintero',10),
 (664,'Quintero',10),
 (665,'Tamborcito',10),
 (666,'Ventanas',10),
 (667,'Volantín',10);
/*!40000 ALTER TABLE `barrio` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`comp_progra`
--

DROP TABLE IF EXISTS `comp_progra`;
CREATE TABLE `comp_progra` (
  `idCompeProgra` int(11) NOT NULL AUTO_INCREMENT,
  `idCompetencia` int(11) DEFAULT NULL,
  `idProgramacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCompeProgra`),
  KEY `idCompetencia` (`idCompetencia`),
  KEY `idProgramacion` (`idProgramacion`),
  CONSTRAINT `comp_progra_ibfk_1` FOREIGN KEY (`idCompetencia`) REFERENCES `competencias` (`idCompetencia`) ON DELETE CASCADE,
  CONSTRAINT `comp_progra_ibfk_2` FOREIGN KEY (`idProgramacion`) REFERENCES `programacion` (`idProgramacion`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`comp_progra`
--

/*!40000 ALTER TABLE `comp_progra` DISABLE KEYS */;
INSERT INTO `comp_progra` (`idCompeProgra`,`idCompetencia`,`idProgramacion`) VALUES 
 (1,3,1),
 (4,8,4),
 (5,6,5),
 (7,10,7),
 (8,7,8),
 (9,12,9);
/*!40000 ALTER TABLE `comp_progra` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`competencias`
--

DROP TABLE IF EXISTS `competencias`;
CREATE TABLE `competencias` (
  `idCompetencia` int(11) NOT NULL AUTO_INCREMENT,
  `nomCompetencia` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idCompetencia`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`competencias`
--

/*!40000 ALTER TABLE `competencias` DISABLE KEYS */;
INSERT INTO `competencias` (`idCompetencia`,`nomCompetencia`) VALUES 
 (1,'analizar los requisitorios de alejo'),
 (3,'Aplicar buenas practicas de negociación '),
 (4,'Cuidar los viejitos'),
 (5,'CUidar los viejitos'),
 (6,'Promoción y prevención '),
 (7,'Diseño web'),
 (8,'Calidad'),
 (9,'Comprender textos en inglés en forma escrita y auditiva'),
 (10,'Construir el sistema que cumpla con los requisitos de la solución informática'),
 (11,'Fomentar practicas seguras y saludables en el ambiente de trabajo '),
 (12,'Asegurar la calidad de los ensayos '),
 (13,'competencia de prueba'),
 (14,'Gestión Humana'),
 (15,'diseño');
/*!40000 ALTER TABLE `competencias` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(8) DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEstado`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `estado_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`estado`
--

/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` (`idEstado`,`tipo`,`fecha`,`idUsuario`) VALUES 
 (155,'1','2016-09-11 20:29:09',164),
 (156,'2','2016-09-10 12:37:35',165),
 (158,'2','2016-09-11 18:35:45',167),
 (159,'1','2016-09-11 00:00:00',168),
 (160,'1','2016-09-11 08:52:57',58),
 (161,'2','2016-09-11 20:32:50',169),
 (162,'1','2016-09-11 00:00:00',170),
 (167,'1','2016-09-15 07:46:44',175),
 (168,'1','2016-09-15 00:00:00',176),
 (169,'1','2016-09-15 00:00:00',177),
 (175,'1','2016-09-19 00:00:00',183),
 (176,'1','2016-09-19 00:00:00',184),
 (177,'1','2016-09-19 00:00:00',185),
 (181,'1','2016-09-20 00:00:00',189),
 (182,'1','2016-09-20 00:00:00',190),
 (183,'1','2016-09-20 00:00:00',191),
 (184,'1','2016-09-20 00:00:00',192),
 (185,'1','2016-09-20 00:00:00',193),
 (186,'1','2016-09-20 00:00:00',194),
 (187,'1','2016-09-20 00:00:00',195),
 (189,'1','2016-09-23 00:00:00',197),
 (190,'1','2016-09-23 00:00:00',198),
 (192,'1','2016-09-26 00:00:00',200),
 (193,'1','2016-09-26 00:00:00',201),
 (194,'1','2016-09-26 00:00:00',202),
 (195,'1','2016-09-26 00:00:00',203);
INSERT INTO `estado` (`idEstado`,`tipo`,`fecha`,`idUsuario`) VALUES 
 (197,'1','2016-09-26 00:00:00',205),
 (198,'1','2016-09-26 00:00:00',206),
 (199,'1','2016-09-26 00:00:00',207),
 (200,'1','2016-09-27 06:38:33',181),
 (201,'1','2016-09-27 06:39:27',187),
 (202,'1','2016-09-27 00:00:00',208);
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`ficha`
--

DROP TABLE IF EXISTS `ficha`;
CREATE TABLE `ficha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeroFicha` varchar(10) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `jornada` varchar(13) DEFAULT NULL,
  `idPrograma` int(11) DEFAULT NULL,
  `gestor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPrograma` (`idPrograma`),
  CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`idPrograma`) REFERENCES `programas` (`idPrograma`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`ficha`
--

/*!40000 ALTER TABLE `ficha` DISABLE KEYS */;
INSERT INTO `ficha` (`id`,`numeroFicha`,`fechaInicio`,`fechaFinal`,`jornada`,`idPrograma`,`gestor`) VALUES 
 (3,'901528','2015-04-06','2017-04-06','Mañana',3,'edwy patiño'),
 (6,'1131795','2016-08-28','2016-10-01','Mañana',6,'Harol Mauricio Gomez Zapata'),
 (7,'956389','2015-07-06','2017-07-06','Tarde',4,'Johnattan Jaramillo'),
 (8,'1125972','2016-02-02','2018-02-02','Mixta',7,'Lina Gonzalez Morales'),
 (9,'1125964','2016-02-24','2018-02-24','Mixta',3,'Diego León Ramírez Bedoya'),
 (10,'1125946','2016-01-25','2018-01-25','Mixta',6,'Eldrin Willikam Berrio Leon'),
 (11,'956959','2015-07-07','2017-07-07','Tarde',4,'Lee  Jared Escobar Gomez'),
 (13,'1134341','2016-04-11','2018-04-11','Mixta',8,'Sebastian Salazar Goez'),
 (14,'1125894','2016-02-21','2018-02-21','Tarde',4,'emerson yepes');
/*!40000 ALTER TABLE `ficha` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`huella`
--

DROP TABLE IF EXISTS `huella`;
CREATE TABLE `huella` (
  `id` int(11) NOT NULL,
  `indiceDerecho` blob,
  `indiceIzquierdo` blob,
  `medioDerecho` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`huella`
--

/*!40000 ALTER TABLE `huella` DISABLE KEYS */;
/*!40000 ALTER TABLE `huella` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`logueo`
--

DROP TABLE IF EXISTS `logueo`;
CREATE TABLE `logueo` (
  `idLogueo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(6) DEFAULT NULL,
  `fechaHora` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idUsuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLogueo`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `logueo_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`logueo`
--

/*!40000 ALTER TABLE `logueo` DISABLE KEYS */;
/*!40000 ALTER TABLE `logueo` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`municipio`
--

DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `idMunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `nomMunicipio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idMunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`municipio`
--

/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` (`idMunicipio`,`nomMunicipio`) VALUES 
 (1,'Medellin'),
 (2,'Bello'),
 (3,'Itagui'),
 (4,'Caldas'),
 (5,'Estrella'),
 (6,'Sabaneta'),
 (7,'Envigado'),
 (8,'Copacabana'),
 (9,'Girardota'),
 (10,'Barbosa');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`programacion`
--

DROP TABLE IF EXISTS `programacion`;
CREATE TABLE `programacion` (
  `idProgramacion` int(11) NOT NULL AUTO_INCREMENT,
  `trimestre` varchar(1) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFinal` date DEFAULT NULL,
  `diaSemana` varchar(10) DEFAULT NULL,
  `horaIngreso` time DEFAULT NULL,
  `horaSalida` time DEFAULT NULL,
  `idAmbiente` int(11) DEFAULT NULL,
  `idFicha` int(11) DEFAULT NULL,
  PRIMARY KEY (`idProgramacion`),
  KEY `idFicha` (`idFicha`),
  KEY `idAmbiente` (`idAmbiente`),
  CONSTRAINT `programacion_ibfk_1` FOREIGN KEY (`idFicha`) REFERENCES `ficha` (`id`) ON DELETE CASCADE,
  CONSTRAINT `programacion_ibfk_2` FOREIGN KEY (`idAmbiente`) REFERENCES `ambiente` (`idAmbiente`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`programacion`
--

/*!40000 ALTER TABLE `programacion` DISABLE KEYS */;
INSERT INTO `programacion` (`idProgramacion`,`trimestre`,`fechaInicio`,`fechaFinal`,`diaSemana`,`horaIngreso`,`horaSalida`,`idAmbiente`,`idFicha`) VALUES 
 (1,'2','2016-08-28','2016-10-01','Martes','06:00:00','12:00:00',1,3),
 (4,'6','2016-03-01','2016-10-01','Martes','13:00:00','18:00:00',2,8),
 (5,'3','2016-08-31','2016-10-01','Miércoles','13:00:00','18:00:00',4,6),
 (7,'4','2016-07-12','2016-09-23','Martes','06:00:00','12:00:00',5,9),
 (8,'2','2016-07-07','2016-09-01','Miércoles','13:00:00','18:00:00',5,14),
 (9,'2','2016-09-12','2016-12-12','Martes','13:00:00','17:00:00',6,13);
/*!40000 ALTER TABLE `programacion` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`programas`
--

DROP TABLE IF EXISTS `programas`;
CREATE TABLE `programas` (
  `idPrograma` int(11) NOT NULL AUTO_INCREMENT,
  `nombrePrograma` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPrograma`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`programas`
--

/*!40000 ALTER TABLE `programas` DISABLE KEYS */;
INSERT INTO `programas` (`idPrograma`,`nombrePrograma`) VALUES 
 (3,'Análisis  y desarrollo de sistemas de información '),
 (4,'Multimedia'),
 (6,'Salud ocupacional'),
 (7,'Química textil '),
 (8,'Química aplicada a la industria'),
 (9,'xkdjfhjdhfd'),
 (10,'Sistemas de gestión ambiental '),
 (11,'adsi');
/*!40000 ALTER TABLE `programas` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`programaxcompetencia`
--

DROP TABLE IF EXISTS `programaxcompetencia`;
CREATE TABLE `programaxcompetencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPrograma` int(11) DEFAULT NULL,
  `idCompetencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPrograma` (`idPrograma`),
  KEY `idCompetencia` (`idCompetencia`),
  CONSTRAINT `programaxcompetencia_ibfk_1` FOREIGN KEY (`idPrograma`) REFERENCES `programas` (`idPrograma`),
  CONSTRAINT `programaxcompetencia_ibfk_2` FOREIGN KEY (`idCompetencia`) REFERENCES `competencias` (`idCompetencia`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`programaxcompetencia`
--

/*!40000 ALTER TABLE `programaxcompetencia` DISABLE KEYS */;
INSERT INTO `programaxcompetencia` (`id`,`idPrograma`,`idCompetencia`) VALUES 
 (2,3,3),
 (4,6,6),
 (5,4,7),
 (6,7,8),
 (7,3,9),
 (8,3,10),
 (9,6,11),
 (10,8,12),
 (11,9,13),
 (12,10,14),
 (13,11,15),
 (14,4,8);
/*!40000 ALTER TABLE `programaxcompetencia` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
CREATE TABLE `tipousuario` (
  `idTipoUsuario` varchar(1) NOT NULL,
  `usuario` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`tipousuario`
--

/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` (`idTipoUsuario`,`usuario`) VALUES 
 ('1','Administrador'),
 ('2','Instructor'),
 ('3','Secretaria'),
 ('4','Aprendiz');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numeroDoc` varchar(16) DEFAULT NULL,
  `tipoDoc` varchar(36) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `estrato` varchar(1) DEFAULT NULL,
  `genero` varchar(9) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `numeroFicha` varchar(10) DEFAULT NULL,
  `idTipoUsuario` varchar(1) DEFAULT NULL,
  `idBarrio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoUsuario` (`idTipoUsuario`),
  KEY `idBarrio` (`idBarrio`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`),
  CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`idBarrio`) REFERENCES `barrio` (`idBarrio`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id`,`numeroDoc`,`tipoDoc`,`nombre`,`apellido`,`foto`,`fechaNacimiento`,`email`,`estrato`,`genero`,`telefono`,`numeroFicha`,`idTipoUsuario`,`idBarrio`) VALUES 
 (58,'1017241873','1','sebas','salazar','Img\\1017241873.png','2016-08-31','jssm812@hotmail.com','','','2520642','','1',330),
 (164,'10120478637','CÃ©dula de ciudadanÃ­a','emerson','javid','Img\\10120478637.png','2016-08-28','emerson@hotmail.com',NULL,NULL,'33421321',NULL,'2',NULL),
 (165,'1128282990','Cédula de ciudadanía','alejandro','yepes','Img\\1128282990.png','2016-08-28','waagudelo09@misena.edu.co',NULL,NULL,'13121433',NULL,'3',NULL),
 (167,'3412121','Cédula de ciudadanía','sebas','sa','Img\\334444333.png','2016-08-28','sebas.salzar@hotmail.com',NULL,NULL,'213131',NULL,'2',NULL),
 (168,'334444333','Cédula de ciudadanía','Sebastian','Salazar Goez','Img\\334444333.png','2016-08-28','jsm@hotmail.com',NULL,NULL,'312312',NULL,'2',NULL),
 (169,'4576433332','cedula','emerson','gonzalez_morales','Img\\1017243804.png','1997-03-16','eme@gmail.com',NULL,NULL,'3137159111',NULL,'2',NULL),
 (170,'8909767','CÃ©dula de ciudadanÃ­a','emerson','yepes','Img\\10120478637.png','2016-08-28','marra@hotmail.com',NULL,NULL,'0000',NULL,'2',NULL);
INSERT INTO `usuario` (`id`,`numeroDoc`,`tipoDoc`,`nombre`,`apellido`,`foto`,`fechaNacimiento`,`email`,`estrato`,`genero`,`telefono`,`numeroFicha`,`idTipoUsuario`,`idBarrio`) VALUES 
 (175,'71725389','CÃ©dula de ciudadanÃ­a','Eldrin Willikam','Berrio Leon','Img\\71725389.png','1971-09-09','ewberrio@hotmail.com',NULL,NULL,'31224',NULL,'2',NULL),
 (176,'567812121222','CÃ©dula de ciudadanÃ­a','Lina','Gonzalez Morales','Img\\567812121222.jpg','2016-08-28','sebassalazar1402@gmail.com',NULL,NULL,'31431212',NULL,'2',NULL),
 (177,'71230150','CÃ©dula de ciudadanÃ­a','Edwin','Patiño','Img\\71230150.png','2016-09-13','reapp820@gmail.com',NULL,NULL,'503993443',NULL,'2',NULL),
 (181,'98582870','CÃ©dula de ciudadanÃ­a','Harol Mauricio','Gomez Zapata','Img\\98582870.png','1971-03-13','hgomezz@misena.edu.co',NULL,NULL,'2340711',NULL,'2',NULL),
 (182,'1234','1','jhgjgjgjhgjgjh','hgfhgfhfgh','Img\\1234.png','2016-09-18','lkjflksdjfa@akldjfal','2','0','65776765','1','4',433),
 (183,'1017240066','1','Cristina','Correa','Img\\1017240066.png','2016-09-18','criscorrea160@hotmaail.com','2','1','2335424','1131795','4',29),
 (184,'1033656686','1','elisabet','madrid','Img\\1033656686.png','1997-05-13','elimadrid1997@hotmail.com','2','1','2524803','1131795','4',188);
INSERT INTO `usuario` (`id`,`numeroDoc`,`tipoDoc`,`nombre`,`apellido`,`foto`,`fechaNacimiento`,`email`,`estrato`,`genero`,`telefono`,`numeroFicha`,`idTipoUsuario`,`idBarrio`) VALUES 
 (185,'1017243804','1','Stefania','Calle Alvarado','Img\\1017243804.png','1997-01-24','stefaniacallealvarado12@gmail.com','2','1','31478574','956389','4',169),
 (186,'1010074098','2','Melisa ','franco ochoa','Img\\1010074098.png','1999-03-28','franco.melissa99@gmail.com','2','1','4380587','1125972','4',62),
 (187,'15384541','CÃ©dula de ciudadanÃ­a','Diego León','Ramírez Bedoya','Img\\15384541.png','1975-11-02','diegoleonr@misena.edu.co',NULL,NULL,'5531206',NULL,'2',NULL),
 (188,'98123104374','2','Lised Carolina','tribiño velasquez','Img\\98123104374.png','1998-12-31','lised.98-121@hotmail.com','1','1','4966679','1125964','4',179),
 (189,'99051014290','2','Valentina ','Quintero Giraldo','Img\\99051014290.png','1999-05-10','valentiina655@gmail.com','2','1','3162521672','1125964','4',179),
 (190,'99062805893','2','ANA MYCHELL','SUESCA JARAMILLO','Img\\99062805893.png','1999-06-28','mychell.0628@gmail.com','2','1','3147191664','1125964','4',181),
 (191,'99020400990','2','Stefanny','Estrada Lopera','Img\\99020400990.png','1999-02-04','sel-120@hotmail.com','2','1','3148767734','1125964','4',179);
INSERT INTO `usuario` (`id`,`numeroDoc`,`tipoDoc`,`nombre`,`apellido`,`foto`,`fechaNacimiento`,`email`,`estrato`,`genero`,`telefono`,`numeroFicha`,`idTipoUsuario`,`idBarrio`) VALUES 
 (192,'8029902','1','john fernando','Ortiz taborda','Img\\8029902.png','1985-09-10','john.ortiz910@gmail.com','2','0','3205752400','1125964','4',62),
 (193,'1214739441','1','Farid Yesid ','Rico Furnieles','Img\\1214739441.png','2016-05-27','furn.-2@hotmail.com','2','0','320158538','1125964','4',112),
 (194,'1128395832','CÃ©dula de ciudadanÃ­a','Johnattan','Jaramillo','Img\\1128395832.png','1989-07-06','johnattandoblet@gmail.com',NULL,NULL,'3008745013',NULL,'2',NULL),
 (195,'1017260187','1','meliza','marin','Img\\1017260187.png','1998-06-05','melizamarin199815@hotmail.com','2','1','3016777271','1125946','4',126),
 (197,'1037615527','1','lorena','lopera henao','Img\\1037615527.png','1992-08-29','lorena-179@hotmail.com','4','1','3205823336','956959','4',250),
 (198,'8359510','CÃ©dula de ciudadanÃ­a','Lee  Jared','Escobar Gomez','Img\\8359510.png','1985-01-15','lesgo@misena.edu.co',NULL,NULL,'3136128119',NULL,'2',NULL),
 (200,'1214743235','1','Allisson ','Olarte Cardona','Img\\1214743235.png','1998-07-03','ali.ol1@outlook.com','3','1','3008357887','1131795','4',29);
INSERT INTO `usuario` (`id`,`numeroDoc`,`tipoDoc`,`nombre`,`apellido`,`foto`,`fechaNacimiento`,`email`,`estrato`,`genero`,`telefono`,`numeroFicha`,`idTipoUsuario`,`idBarrio`) VALUES 
 (201,'99053013038','1','Daniela','Meneses','Img\\99053013038.png','1999-05-30','danimeneses_d99@hptmail.com','2','1','3216366924','1131795','4',576),
 (202,'1036672916','1','Alejandra ','Restrepo Marin','Img\\1036672916.png','1997-03-14','alejiitha_12@hotmail.com','3','1','3137334747','1131795','4',365),
 (203,'1017155056','1','martha','suaza','Img\\1017155056.png','1987-10-22','marthasuaza@yahoo.com','3','1','3008215443','1131795','4',137),
 (204,'99100302655','2','Jimena Lulu','Duque Ramirez','Img\\99100302655.png','1984-10-03','jimenalulu.15@gmail.com','2','1','3105097498','1134341','4',339),
 (205,'98100357275','2','veronica ','vanegas ramirez ','Img\\98100357275.png','1998-10-03','verovanegasr@gmail.com','2','1','3234890451','1125972','4',63),
 (206,'1017217895','1','katherin lizeth','salas david','Img\\1017217895.png','1994-03-16','katherinsalas.D@hotmail.com','2','1','3117227206','1131795','4',120),
 (207,'98100352532','2','Alexandra ','Ramirez Orozco','Img\\98100352532.png','1998-10-03','alexaramirezorozco@gmail.com','2','1','3207739554','1125894','4',228);
INSERT INTO `usuario` (`id`,`numeroDoc`,`tipoDoc`,`nombre`,`apellido`,`foto`,`fechaNacimiento`,`email`,`estrato`,`genero`,`telefono`,`numeroFicha`,`idTipoUsuario`,`idBarrio`) VALUES 
 (208,'1020478190','1','Luisa Fernanda','Rincon Vasquez ','Img\\1020478190.png','1997-02-22','lv.zprlu@gmail.com','1','1','3108114063','1125894','4',313);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;


--
-- Table structure for table `conasis`.`usuarioxprogramacion`
--

DROP TABLE IF EXISTS `usuarioxprogramacion`;
CREATE TABLE `usuarioxprogramacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) DEFAULT NULL,
  `idProgramacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idProgramacion` (`idProgramacion`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `usuarioxprogramacion_ibfk_1` FOREIGN KEY (`idProgramacion`) REFERENCES `programacion` (`idProgramacion`) ON DELETE CASCADE,
  CONSTRAINT `usuarioxprogramacion_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conasis`.`usuarioxprogramacion`
--

/*!40000 ALTER TABLE `usuarioxprogramacion` DISABLE KEYS */;
INSERT INTO `usuarioxprogramacion` (`id`,`idUsuario`,`idProgramacion`) VALUES 
 (1,177,1),
 (4,168,4),
 (5,181,5),
 (7,187,7),
 (8,176,8),
 (9,164,9);
/*!40000 ALTER TABLE `usuarioxprogramacion` ENABLE KEYS */;


--
-- Procedure `conasis`.`ActualizarUsuario`
--

DROP PROCEDURE IF EXISTS `ActualizarUsuario`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ActualizarUsuario`(
in numeroDocPV varchar(16),
in numeroDocP  varchar(16),
 in tipoDocP varchar(36),
  in nombreP  varchar(50),
  in apellidoP  varchar(50),
 in fotoP  varchar(50),
 in fechaNacimientoP  date,
 in emailP  varchar(50),
in telefonoP  varchar(10),
 OUT retorno TinyInt)
begin
declare correoCon varchar(100);
                  declare cc varchar(15);
                  declare i int; 
                 select count(*) into cc from usuario where numeroDoc=numeroDocPV AND idTipoUsuario='2' ;
                   if(cc >0) THEN
                  

   select count(*) into correoCon from usuario where email=emailP AND  idTipoUsuario='2' ;
                   if (correoCon >0) THEN
                   set retorno =2;  
ELSE 
UPDATE usuario SET numeroDoc=numeroDocP,  tipoDoc=tipoDocP, nombre=nombreP ,apellido=apellidoP,foto=fotoP, fechaNacimiento=fechaNacimientoP,email=emailP,telefono=telefonoP where numeroDoc=numeroDocPV;
              
                 set  retorno = 0; 
                 END IF;
                 ELSE
                 set  retorno = 1; 
                 END IF;
                 END $$

DELIMITER ;

--
-- Procedure `conasis`.`configuracion`
--

DROP PROCEDURE IF EXISTS `configuracion`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `configuracion`(in estadoP  varchar(16),
 in cedulaP  varchar(16),
 OUT retorno TinyInt)
begin
declare cc varchar(15);
select count(*) into cc from usuario where numeroDoc=cedulaP;
if(cc>0)THEN
select (id) into cc from usuario where numeroDoc=cedulaP;
update estado   set tipo=estadoP where idUsuario=cc ;
set retorno=0;
else
set retorno=1;
end if;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`consulta`
--

DROP PROCEDURE IF EXISTS `consulta`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta`(in emailP varchar(50),
out retorno int)
begin
select (email) from usuario where email=emailP;
if(retorno >0)THEN
select email from usuario where email=emailP;
set retorno =0;
ELSE
set retorno =1;
end if;
end $$

DELIMITER ;

--
-- Procedure `conasis`.`eliminar`
--

DROP PROCEDURE IF EXISTS `eliminar`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminar`(
 in cedulaP  varchar(16),
 OUT retorno TinyInt)
begin
declare cc varchar(15);
select count(*) into cc from usuario where numeroDoc=cedulaP AND idTipoUsuario=2 ;
if(cc>0)THEN
select (id) into cc from usuario where numeroDoc=cedulaP AND idTipoUsuario=2 ;
update estado   set tipo=2 where idUsuario=cc ;
set retorno=0;
else
set retorno=1;
end if;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`eliminarProgramacion`
--

DROP PROCEDURE IF EXISTS `eliminarProgramacion`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarProgramacion`(in id int)
begin
delete from asistencia where idProgramacion = id;
delete from usuarioXprogramacion where idProgramacion = id;
delete from comp_progra where idProgramacion = id;
delete from programacion where idProgramacion = id;
end $$

DELIMITER ;

--
-- Procedure `conasis`.`estrato`
--

DROP PROCEDURE IF EXISTS `estrato`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `estrato`(IN ficha varchar(16), OUT uno int ,  OUT  dos  int , OUT tres int , OUT cuatro int , OUT cinco int , OUT  seis  int)
begin
                  declare uno1 int;
                  declare dos1 int; 
 declare tres1 int; 
declare cuatro1 int; 
declare cinco1 int; 
declare seis1 int; 
                  select count(estrato) into uno1 from usuario where estrato='1' AND numeroFicha=ficha;
                  select count(estrato) into dos1 from usuario where estrato='2' AND numeroFicha=ficha;
select count(estrato)into tres1 from usuario where estrato='3' AND numeroFicha=ficha;
select count(estrato) into cuatro1 from usuario where estrato='4' AND numeroFicha=ficha;
select count(estrato) into cinco1  from usuario where estrato='5' AND numeroFicha=ficha;
select count(estrato) into seis1  from usuario where estrato='6' AND numeroFicha=ficha;

                  set uno =uno1;
 set dos =dos1;
set tres = tres1;
set cuatro =cuatro1;
set cinco=cinco1;
set seis=seis1;
                 END $$

DELIMITER ;

--
-- Procedure `conasis`.`foto`
--

DROP PROCEDURE IF EXISTS `foto`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `foto`(in fotoP varchar(150), 
in numero varchar(15))
begin
update usuario set foto=fotoP   where numeroDoc=numero;
end $$

DELIMITER ;

--
-- Procedure `conasis`.`genero`
--

DROP PROCEDURE IF EXISTS `genero`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `genero`(in ficha varchar(16),
 OUT masculino int,
    OUT femenino int)
begin
                  declare m int;
                  declare f int; 
                  select count(genero ) into m from usuario where genero='0' AND numeroFicha=ficha;
                  select count(genero ) into f from usuario where genero='1' AND numeroFicha=ficha;
                 set masculino =m;
set femenino=f;
                 END $$

DELIMITER ;

--
-- Procedure `conasis`.`guardarFicha`
--

DROP PROCEDURE IF EXISTS `guardarFicha`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `guardarFicha`(
IN p_numFicha VARCHAR(10),
IN fI DATE,
in ff DATE,
in p_jornada varchar(13),
in p_idP INT,
iN p_gestor VARCHAR(50),
OUT retorno TINYINT)
BEGIN
DECLARE contador TINYINT;
SELECT COUNT(*) INTO contador from ficha WHERE numeroFicha=p_numFicha;
IF (contador > 0) then
SET retorno = 1;
ELSE
INSERT INTO Ficha (numeroFicha, fechaInicio, fechaFinal, jornada, idPrograma, gestor) 
values (p_numFicha,fi,ff,p_jornada,p_idP,p_gestor);
SET retorno = 0;
END IF;

END $$

DELIMITER ;

--
-- Procedure `conasis`.`guardarProgramacion`
--

DROP PROCEDURE IF EXISTS `guardarProgramacion`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `guardarProgramacion`(  in p_trimestre varchar(1),
					in p_fechaInicio date,
					in p_fechaFinal date,
					in p_dia varchar(10),
					in p_horaInicio time,
					in p_horaFinal time,
					in p_idAmbiente int,
					in p_idFicha int,
					in p_idUsuario int,
					in p_idCompetencia int,
					out p_respuesta int)
begin
DECLARE r1 INT;
DECLARE r2 INT;
DECLARE r3 INT;
DECLARE id INT;
SELECT COUNT(*) INTO r1 FROM programacion WHERE  idFicha=p_idFicha AND fechaInicio<=p_fechaInicio
						AND fechaFinal >= p_fechaInicio AND diaSemana=p_dia
						AND horaSalida > p_horaInicio;
IF (r1 > 0) THEN

SET p_respuesta = 1;
ELSE
SELECT COUNT(*) INTO r2 FROM programacion WHERE  idFicha<>p_idFicha AND fechaInicio<=p_fechaInicio
						AND fechaFinal >= p_fechaInicio AND diaSemana=p_dia
						AND horaSalida > p_horaInicio AND idAmbiente=p_idAmbiente;
IF (r2 > 0) THEN

SET p_respuesta = 2;
ELSE
SELECT COUNT(*) INTO r3 FROM programacion as p, usuarioXprogramacion as up WHERE 
						p.idProgramacion=up.idProgramacion
						AND p.idFicha<>p_idFicha AND p.fechaInicio<=p_fechaInicio
						AND p.fechaFinal >= p_fechaInicio AND p.diaSemana=p_dia
						AND p.horaSalida > p_horaInicio AND p.idAmbiente<>p_idAmbiente
						AND up.idUsuario=p_idUsuario;
IF (r3 > 0) THEN

SET p_respuesta = 3;
ELSE
INSERT INTO programacion (trimestre,fechaInicio,fechaFinal,diaSemana,horaIngreso,horaSalida,idAmbiente,idFicha) 
VALUES (p_trimestre, p_fechaInicio, p_fechaFinal, p_dia, p_horaInicio, p_horaFinal, p_idAmbiente,p_idFicha);
SELECT MAX(idProgramacion) INTO id FROM programacion;
INSERT INTO usuarioXprogramacion (idUsuario, idProgramacion) VALUES (p_idUsuario, id);
INSERT INTO comp_progra (idCompetencia,idProgramacion) VALUES (p_idCompetencia,id);

SET p_respuesta = 4;
END IF;
END IF;
END IF;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`insertAprendiz`
--

DROP PROCEDURE IF EXISTS `insertAprendiz`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertAprendiz`( in numeroDocP varchar(16),
 in tipoDocP varchar(36),
 in nombreP  varchar(50),
 in apellidoP  varchar(50),
in fotoP  varchar(50),
in fechaNacimientoP  date,
in emailP varchar(60),
in  estratoP varchar(11),
in generoP varchar(11),
in telefonoP varchar(12),
in numeroFichaP varchar(12),
in idTipoUsuarioP  varchar(1),
in barrioP int (11),
OUT retorno TinyInt)
begin
declare cc varchar(15);
declare i int; 
 select count(*) into cc from usuario where numeroDoc=numeroDocP limit 1;
if(cc >0) THEN
set  retorno = 1;
ELSE
insert into usuario
(numeroDoc,tipoDoc,nombre,apellido,foto,fechaNacimiento,email,estrato,genero,telefono,
numeroFicha,idTipoUsuario,idBarrio)values(numeroDocP,tipoDocP,nombreP, apellidoP,fotoP,
fechaNacimientoP,emailP,estratoP,generoP,telefonoP,numeroFichaP,idTipoUsuarioP,barrioP);
select max(id) into  i from usuario;  
               insert into  estado(tipo,fecha,idUsuario)values('1',date(now()),i);
                 set  retorno = 0;
                 END IF;
                 END $$

DELIMITER ;

--
-- Procedure `conasis`.`insertSecretaria`
--

DROP PROCEDURE IF EXISTS `insertSecretaria`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertSecretaria`(in numeroDocP  varchar(16),
 in tipoDocP varchar(36),
  in nombreP  varchar(50),
  in apellidoP  varchar(50),
 in fotoP  varchar(50),
 in fechaNacimientoP  date,
 in emailP  varchar(50),
in telefonoP  varchar(10),
in idTipoUsuarioP  varchar(1),
in  claveP varchar(100),
                  OUT retorno TinyInt)
begin
                  declare cc varchar(15);
                  declare i int; 
                 select count(*) into cc from usuario where numeroDoc=numeroDocP limit 1;
                   if(cc >0) THEN
                   set  retorno = 1;
                  ELSE
  insert into usuario(numeroDoc,tipoDoc,nombre,apellido,foto,fechaNacimiento,email,telefono,
           idTipoUsuario)values(numeroDocP,tipoDocP,nombreP,apellidoP,fotoP,fechaNacimientoP,emailP,
                  telefonoP,idTipoUsuarioP);
                  select max(id) into  i from usuario;  
                 insert into acceso(nick,clave,idUsuario)values(numeroDocP,claveP,i);
                 insert into  estado(tipo,fecha,idUsuario)values('1',date(now()),i);
                 set  retorno = 0;
                 END IF;
                 END $$

DELIMITER ;

--
-- Procedure `conasis`.`insertUsuario`
--

DROP PROCEDURE IF EXISTS `insertUsuario`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUsuario`(in numeroDocP  varchar(16),
 in tipoDocP varchar(36),
  in nombreP  varchar(50),
  in apellidoP  varchar(50),
 in fotoP  varchar(50),
 in fechaNacimientoP  date,
 in emailP  varchar(50),
in telefonoP  varchar(10),
in idTipoUsuarioP  varchar(1),
in  claveP varchar(100),
                  OUT retorno TinyInt)
begin
declare correoCon varchar(100);
                  declare cc varchar(15);
                  declare i int; 
                 select count(*) into cc from usuario where numeroDoc=numeroDocP limit 1;
                   if(cc >0) THEN
                   set  retorno = 1; 
                 ELSE
                   select count(*) into correoCon from usuario where email=emailP limit 1;
                   if (correoCon >0) THEN
                   set retorno =2; 
ELSE 
insert into usuario(numeroDoc,tipoDoc,nombre,apellido,foto,fechaNacimiento,email,telefono,
           idTipoUsuario)values(numeroDocP,tipoDocP,nombreP,apellidoP,fotoP,fechaNacimientoP,emailP,
                  telefonoP,idTipoUsuarioP);
                  select max(id) into  i from usuario;  
                 insert into acceso(nick,clave,idUsuario)values(numeroDocP,claveP,i);
                 insert into  estado(tipo,fecha,idUsuario)values('1',date(now()),i);
                 set  retorno = 0;   
                 END IF;
                 END IF;
                 END $$

DELIMITER ;

--
-- Procedure `conasis`.`logueo`
--

DROP PROCEDURE IF EXISTS `logueo`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `logueo`(
in p_nick varchar(15),
in p_clave varchar(70),
out retorno int,
out p_foto varchar(150),
out p_nombre varchar(50),
out p_apellido varchar(50),
out p_tipo int,
out idP1  int)
begin
DECLARE nom varchar(50);
DECLARE idp int;
DECLARE ape varchar(50);
DECLARE ft VARCHAR(70);
DECLARE tp INT;
DECLARE r1 INT;
DECLARE std VARCHAR(1);
DECLARE psw varchar(70);
SET @idp = 0;
SELECT MD5(p_clave) INTO psw;
select count(*) into r1 from acceso WHERE nick = p_nick  AND clave=psw;
select idUsuario into idp  from acceso WHERE nick = p_nick  AND clave=psw;
IF (r1 > 0) then
SELECT tipo into std from estado WHERE idUsuario=idp;
IF (std > 1) then
SET retorno = 2; 
ELSE
SELECT nombre into nom from usuario WHERE id=idp;
SET p_nombre = nom;
SELECT apellido into ape from usuario WHERE id=idp;
SET p_apellido = ape;
SELECT foto into ft from usuario WHERE id=idp;
SET p_foto = ft;
select t.idTipoUsuario into tp from tipoUsuario as t ,usuario as u where t.idTipoUsuario=u.idtipousuario and u.id=idp;
SET p_tipo = tp;
SET idP1 = idp;
SET retorno =1; 
END IF;
ELSE 

SET retorno = 0;
end if;
end $$

DELIMITER ;

--
-- Procedure `conasis`.`mensaje`
--

DROP PROCEDURE IF EXISTS `mensaje`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mensaje`(
in emailP  varchar(50),
out nombre varchar(20),
out psw1 varchar(90),
OUT retorno TinyInt)
begin
declare e varchar(15);
declare nm  varchar(50);
declare psw varchar(90);
select count(*) into e from usuario where email=emailP;
if(e>0)THEN
select (id) into e from usuario where email=emailP;
select nick into nm from acceso where  idUsuario=e;
 set nombre=nm;
select clave into psw from acceso where  idUsuario=e;
SELECT MD5(psw);
set psw1=psw;


set retorno=0;
else
set retorno=1;
end if;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`mensajeRecu`
--

DROP PROCEDURE IF EXISTS `mensajeRecu`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mensajeRecu`(in emailP  varchar(50),
in claveP varchar(110),
OUT retorno TinyInt)
begin
declare cc varchar(15);
declare clavePP varchar(100);
select MD5(claveP) into clavePP;
select count(*) into cc from usuario where email=emailP;
if(cc>0)THEN
select (id) into cc from usuario where email=emailP;
update acceso   set clave=clavePP  where idUsuario=cc ;
set retorno=0;
else
set retorno=1;
end if;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`modificarFicha`
--

DROP PROCEDURE IF EXISTS `modificarFicha`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarFicha`(
IN p_id INT,
IN p_numFicha VARCHAR(10),
IN fI DATE,
in ff DATE,
in p_jornada varchar(13),
in p_idP INT,
iN p_gestor VARCHAR(50),
OUT retorno TINYINT)
BEGIN
DECLARE contador TINYINT;
SELECT COUNT(id) INTO contador from ficha WHERE id=p_id;
IF (contador > 0) then
UPDATE ficha set numeroFicha = p_numFicha, fechaInicio = fi, fechaFinal = ff, jornada = p_jornada, idPrograma = p_idP, gestor = p_gestor
WHERE id=p_id;
SET retorno = 1;
ELSE
SET retorno = 0;
END IF;

END $$

DELIMITER ;

--
-- Procedure `conasis`.`modificarProgramacion`
--

DROP PROCEDURE IF EXISTS `modificarProgramacion`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `modificarProgramacion`(in p_idProgramacion int,
					in p_trimestre varchar(1),
					in p_fechaInicio date,
					in p_fechaFinal date,
					in p_dia varchar(10),
					in p_horaInicio time,
					in p_horaFinal time,
					in p_idAmbiente int,
					in p_idFicha int,
					in p_idUsuario int,
					in p_idCompetencia int,
					out p_respuesta int)
begin
DECLARE r1 INT;
DECLARE r2 INT;
DECLARE r3 INT;
DECLARE id INT;
SELECT COUNT(*) INTO r1 FROM programacion WHERE  idFicha=p_idFicha AND fechaInicio<=p_fechaInicio
						AND fechaFinal >= p_fechaInicio AND diaSemana=p_dia
						AND horaSalida > p_horaInicio;
IF (r1 > 0) THEN

SET p_respuesta = 1;
ELSE
SELECT COUNT(*) INTO r2 FROM programacion WHERE  idFicha<>p_idFicha AND fechaInicio<=p_fechaInicio
						AND fechaFinal >= p_fechaInicio AND diaSemana=p_dia
						AND horaSalida > p_horaInicio AND idAmbiente=p_idAmbiente;
IF (r2 > 0) THEN

SET p_respuesta = 2;
ELSE
SELECT COUNT(*) INTO r3 FROM programacion as p, usuarioXprogramacion as up WHERE 
						p.idProgramacion=up.idProgramacion
						AND p.idFicha<>p_idFicha AND p.fechaInicio<=p_fechaInicio
						AND p.fechaFinal >= p_fechaInicio AND p.diaSemana=p_dia
						AND p.horaSalida > p_horaInicio AND p.idAmbiente<>p_idAmbiente
						AND up.idUsuario=p_idUsuario;
IF (r3 > 0) THEN

SET p_respuesta = 3;
ELSE
UPDATE usuarioXprogramacion SET idUsuario=p_idUsuario where idProgramacion=p_idProgramacion;
UPDATE comp_progra SET idCompetencia=p_idCompetencia where idProgramacion=p_idProgramacion;
UPDATE programacion SET trimestre=p_trimestre,
				fechaInicio=p_fechaInicio,
				fechaFinal=p_fechaFinal,
				diaSemana=p_dia,
				horaIngreso=p_horaInicio,
				horaSalida=p_horaFinal,
				idAmbiente=p_idAmbiente,
				idFicha=p_idFicha
				where idProgramacion=p_idProgramacion;

SET p_respuesta = 4;
END IF;
END IF;
END IF;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`municipioestadistica`
--

DROP PROCEDURE IF EXISTS `municipioestadistica`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `municipioestadistica`(IN ficha varchar(16), OUT medellin1 int ,  OUT  bello1  int , OUT itagui1 int , OUT caldas1 int , OUT estrella1  int , OUT  sabaneta1  int, OUT  envigado1  int, OUT  copacabana1  int, OUT  girardota1  int, OUT  barbosa1  int)
begin 
  declare  medellin int;
                  declare bello  int; 
 declare itagui int; 
declare caldas int; 
declare estrella int; 
declare sabaneta int;
declare envigado int;
declare copacabana int;
declare girardota int ;
declare barbosao  int ;

SELECT count(m.idMunicipio) into medellin  FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=1  AND u.numeroFicha=ficha;


SELECT count(m.idMunicipio) into bello   FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=2  AND u.numeroFicha=ficha;


SELECT count(m.idMunicipio) into itagui  FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=3  AND u.numeroFicha=ficha;

SELECT count(m.idMunicipio) into caldas  FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=4  AND u.numeroFicha=ficha;

SELECT count(m.idMunicipio) into estrella  FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=5  AND u.numeroFicha=ficha;

SELECT count(m.idMunicipio) into sabaneta  FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=6  AND u.numeroFicha=ficha;

SELECT count(m.idMunicipio) into envigado FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=7  AND u.numeroFicha=ficha;

SELECT count(m.idMunicipio) into copacabana FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=8  AND u.numeroFicha=ficha;

SELECT count(m.idMunicipio) into  girardota FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=9  AND u.numeroFicha=ficha;

SELECT count(m.idMunicipio) into  barbosao  FROM municipio as m, barrio as b, usuario as u
WHERE m.idMunicipio=b.idMunicipio AND b.idBarrio=u.idBarrio AND m.idMunicipio=10  AND u.numeroFicha=ficha;


set medellin1= medellin;

set bello1 = bello;

set itagui1=itagui;

set caldas1=caldas;

set estrella1=estrella;

set sabaneta1 = sabaneta;

set envigado1=envigado;

set copacabana1=copacabana;
set girardota1=girardota;

set girardota1=girardota;
set barbosa1=barbosao;
end $$

DELIMITER ;

--
-- Procedure `conasis`.`tomaAsistencia`
--

DROP PROCEDURE IF EXISTS `tomaAsistencia`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tomaAsistencia`(
IN idPro INT,
IN ficha VARCHAR(10),
IN doc VARCHAR(15),
IN tipo VARCHAR(1),
OUT hora TIME,
OUT respuesta TINYINT,
OUT nom VARCHAR(50),
OUT ape VARCHAR(50),
OUT faltas INT,
OUT tiempo TIME,
OUT foto VARCHAR(500))
BEGIN
DECLARE idU INT; 
DECLARE vandera TINYINT; 
DECLARE canEntra TINYINT; 
DECLARE canSale TINYINT; 
DECLARE nom1 VARCHAR(50);
DECLARE ape1 VARCHAR(50);
DECLARE ft VARCHAR(500);
DECLARE ho TIME;
DECLARE flts INT;
DECLARE tmp TIME;

SELECT COUNT(*) INTO vandera 
FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;

IF vandera > 0 THEN 
	SELECT nombre INTO nom1
	FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
	SELECT apellido INTO ape1
	FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
	SELECT id INTO idU
	FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
	SET nom  = nom1;
	SET ape = ape1;
	SELECT foto INTO ft
	FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
	SET foto = ft;

	IF tipo = 0 THEN 
		SELECT COUNT(entradaSalida) INTO canEntra
		FROM asistencia
		WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=DATE(NOW()) AND entradaSalida='0';
			
			IF canEntra > 0 THEN 
				SET respuesta = 2; 
			ELSE 
				SELECT CURTIME() INTO ho; 
				SET hora = ho;
				UPDATE asistencia SET entradaSalida='0',fechaHora=now()
				WHERE entradaSalida='3' AND date(fechaHora)=date(now()) AND idUsuario=idU AND idProgramacion=idPro;

				SELECT COUNT(entradaSalida) INTO flts
				FROM asistencia WHERE idUsuario=idU AND idProgramacion=idPro AND entradaSalida='3';
				SET faltas = flts;
				SET respuesta = 3; 
			END IF; 
	ELSE



		SELECT COUNT(entradaSalida) INTO canEntra
		FROM asistencia
		WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=DATE(NOW()) AND entradaSalida='0';
			
			IF canEntra > 0 THEN 
				SELECT COUNT(entradaSalida) INTO canSale
				FROM asistencia
				WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=DATE(NOW()) AND entradaSalida='1';
				IF canSale > 0 THEN 
					SET respuesta = 4; 
				ELSE 
					SELECT CURTIME() INTO ho; 
					SET hora = ho;
					INSERT INTO asistencia (entradaSalida, fechaHora, idUsuario, idProgramacion)
					VALUES ('1',now(),idU,idPro);

			SELECT TIMEDIFF(TIME(NOW()),(SELECT TIME(fechaHora) from asistencia WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=date(now()) AND entradaSalida='0')) INTO tmp;
			SET tiempo = tmp;			
			UPDATE asistencia SET horaEnClase = tmp WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=date(now()) AND entradaSalida='1';

				
					SELECT COUNT(entradaSalida) INTO flts
					FROM asistencia WHERE idUsuario=idU AND idProgramacion=idPro AND entradaSalida='3';
					SET faltas = flts;
					SET respuesta = 5; 
				END IF; 

			ELSE 
				SET respuesta = 6; 
			END IF; 


	END IF; 
ELSE
	SET respuesta = 1; 
END IF; 

END $$

DELIMITER ;

--
-- Procedure `conasis`.`tomaAsistencia2`
--

DROP PROCEDURE IF EXISTS `tomaAsistencia2`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tomaAsistencia2`(IN `idPro` INT, IN `ficha` VARCHAR(10), IN `doc` VARCHAR(15), OUT `hora` TIME, OUT `respuesta` TINYINT, OUT `nom` VARCHAR(50), OUT `ape` VARCHAR(50), OUT `faltas` INT, OUT `fotoR` VARCHAR(500))
BEGIN
DECLARE idU INT; 
DECLARE vandera TINYINT; 
DECLARE canEntra TINYINT; 
DECLARE nom1 VARCHAR(50);
DECLARE ape1 VARCHAR(50);
DECLARE ft VARCHAR(500);
DECLARE ho TIME;
DECLARE flts INT;

SELECT COUNT(*) INTO vandera
FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;

IF vandera > 0 THEN 

SELECT id INTO idU FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
SELECT nombre INTO nom1 FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
SET nom  = nom1;
SELECT apellido INTO ape1 FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
SET ape = ape1;
SELECT foto INTO ft
FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
SET fotoR = ft;

SELECT COUNT(entradaSalida) INTO canEntra
FROM asistencia
WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=date(now()) AND entradaSalida='0';

IF canEntra > 0 THEN 
SET respuesta = 2; 
ELSE 
SELECT CURTIME() INTO ho;
SET hora = ho;
UPDATE asistencia SET entradaSalida='0',fechaHora=now()
WHERE entradaSalida='3' AND date(fechaHora)=date(now()) AND idUsuario=idU AND idProgramacion=idPro;

SELECT COUNT(entradaSalida) INTO flts
FROM asistencia WHERE idUsuario=idU AND idProgramacion=idPro AND entradaSalida='3';
SET faltas = flts;
SET respuesta = 3; 
END IF; 
ELSE
SET respuesta = 1; 
END IF;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`tomaAsistenciaSalida`
--

DROP PROCEDURE IF EXISTS `tomaAsistenciaSalida`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tomaAsistenciaSalida`(
IN idPro INT,
IN ficha VARCHAR(10),
IN doc VARCHAR(15),
OUT hora TIME,
OUT respuesta TINYINT,
OUT nom VARCHAR(50),
OUT ape VARCHAR(50),
OUT faltas INT,
OUT tiempo TIME,
OUT foto VARCHAR(500))
BEGIN
DECLARE idU INT; 
DECLARE vandera TINYINT; 
DECLARE canEntra TINYINT; 
DECLARE nom1 VARCHAR(50);
DECLARE ape1 VARCHAR(50);
DECLARE ft VARCHAR(500);
DECLARE ho TIME;
DECLARE flts INT;
DECLARE tmp TIME;

SELECT COUNT(*) INTO vandera
FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;

IF vandera > 0 THEN 
	
SELECT id INTO idU FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
			SELECT nombre INTO nom1 FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
			SET nom  = nom1;
			SELECT apellido INTO ape1 FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
			SET ape = ape1;
			SELECT foto INTO ft
			FROM usuario WHERE numeroDoc=doc AND numeroFicha=ficha;
			SET foto = ft;
	
	SELECT COUNT(entradaSalida) INTO canEntra
	FROM asistencia
	WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=date(now()) AND entradaSalida='0';
	
		IF canEntra > 0 THEN 

			SELECT COUNT(entradaSalida) INTO canEntra
			FROM asistencia
			WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=date(now()) AND entradaSalida='1';
	
			IF canEntra > 0 THEN 
				SET respuesta = 4; 
			ELSE
				SELECT CURTIME() INTO ho;
			SET hora = ho;
			INSERT INTO asistencia (entradaSalida, fechaHora, idUsuario, idProgramacion)
			VALUES ('1',now(),idU,idPro);

			SELECT TIMEDIFF(TIME(NOW()),(SELECT TIME(fechaHora) from asistencia WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=date(now()) AND entradaSalida='0')) INTO tmp;
			SET tiempo = tmp;			
			UPDATE asistencia SET horaEnClase = tmp WHERE idUsuario=idU AND idProgramacion=idPro AND DATE(fechaHora)=date(now()) AND entradaSalida='1';

			SELECT COUNT(entradaSalida) INTO flts
			FROM asistencia WHERE idUsuario=idU AND idProgramacion=idPro AND entradaSalida='3';
			SET faltas = flts;
			SET respuesta = 3; 
			END IF;
			
		ELSE 
			SET respuesta = 2; 
			
		END IF; 
ELSE
	SET respuesta = 1; 
END IF;
END $$

DELIMITER ;

--
-- Procedure `conasis`.`verificacionFichaAsistencia`
--

DROP PROCEDURE IF EXISTS `verificacionFichaAsistencia`;
DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `verificacionFichaAsistencia`(
in id int,
out retorno int)
BEGIN
DECLARE count int;
select count(idProgramacion) into count from asistencia where idProgramacion=id AND date(fechaHora)=date(now()) and entradaSalida='0';

IF count > 0 THEN
	select count(idProgramacion) into count from asistencia where idProgramacion=id AND date(fechaHora)=date(now()) and entradaSalida='1';
	IF count > 0 THEN
		SET retorno = 2;
	ELSE
		SET retorno = 1;
	END IF;
	ELSE
		SET retorno = 0;
END IF;
END $$

DELIMITER ;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
