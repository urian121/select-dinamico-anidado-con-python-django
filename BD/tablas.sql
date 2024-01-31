
CREATE TABLE `tbl_departamentos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tbl_departamentos` (`id`, `departamento`)
VALUES
	(1,'Cundinamarca'),
	(2,'Bogotá D.C.'),
	(3,'Atlántico'),
	(4,'Tolima');



# Volcado de tabla tbl_municipios
# ------------------------------------------------------------

CREATE TABLE `tbl_municipios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `municipio` varchar(255) NOT NULL,
  `departamento_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_municipios_departamento_id_de4f44d6_fk_tbl_departamentos_id` (`departamento_id`),
  CONSTRAINT `tbl_municipios_departamento_id_de4f44d6_fk_tbl_departamentos_id` FOREIGN KEY (`departamento_id`) REFERENCES `tbl_departamentos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `tbl_municipios` (`id`, `municipio`, `departamento_id`)
VALUES
	(1,'Bogotá (Distrito Capital)',1),
	(2,'Zipaquirá',1),
	(3,'Chía',1),
	(4,'Girardot',1),
	(5,'Fusagasugá',1),
	(6,'Ibagué',4),
	(7,'Espinal',4),
	(8,'Melgar',4),
	(9,'Barranquilla',3),
	(10,'Soledad',3),
	(11,'Puerto Colombia',3),
	(12,'Bogotá D.C.',2);


# Volcado de tabla tbl_zonas
# ------------------------------------------------------------

CREATE TABLE `tbl_zonas` (
  `id_zona` int(11) NOT NULL AUTO_INCREMENT,
  `zona` varchar(255) NOT NULL,
  `municipio_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id_zona`),
  KEY `tbl_zonas_municipio_id_75729ba0_fk_tbl_municipios_id` (`municipio_id`),
  CONSTRAINT `tbl_zonas_municipio_id_75729ba0_fk_tbl_municipios_id` FOREIGN KEY (`municipio_id`) REFERENCES `tbl_municipios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `tbl_zonas` (`id_zona`, `zona`, `municipio_id`)
VALUES
	(1,'La Candelaria',1),
	(2,'Usaquén',1),
	(3,'Chapinero',1),
	(4,'Teusaquillo',1),
	(5,'Suba',1),
	(6,'Centro histórico',2),
	(7,'Barrio La Esperanza',2),
	(8,'Barrio El Recreo',2),
	(9,'Vereda San Jorge',2),
	(10,'Centro de Chía',3),
	(11,'Sabana de Bogotá ',3),
	(12,'Universidad de la Sabana',3),
	(13,'Briceño (zona residencial)',3),
	(14,'Centro de Fusagasugá',5),
	(15,'Vereda San José ',5),
	(16,'Vereda San Rafael ',5),
	(17,'Vereda El Oasis',5),
	(18,'Centro de Girardot',4),
	(19,'Flandes',4),
	(20,'Ricaurte',4),
	(21,'El Peñón',4),
	(22,'Nariño',4),
	(23,'Barrio El Salado',6),
	(24,'Jardín Botánico San Jorge',6),
	(25,'Centro de Espinal',7),
	(26,'Parque Municipal Las Delicias',7),
	(27,'El Salado',7),
	(28,'Club Campestre',8),
	(29,'Parque de la Vida',8),
	(30,'Barrio El Prado',9),
	(31,'Puerto Colombia',9),
	(32,'Centro de Soledad',10),
	(33,'Parque Bolívar',10),
	(34,'El Hipódromo',10),
	(35,'Malecón',11),
	(36,'Playa de Pradomar',11),
	(37,'Museo del Caribe Marítimo',11),
	(38,'Usaquén',12),
	(39,'Chapinero',12),
	(40,'Santa Fe',12),
	(41,'San Cristóbal',12),
	(42,'Usme',12),
	(43,'Tunjuelito',12),
	(44,'Bosa',12),
	(45,'Kennedy',12),
	(46,'Fontibón',12),
	(47,'Engativá',12),
	(48,'Suba',12),
	(49,'Barrios Unidos',12),
	(50,'Teusaquillo',12),
	(51,'Los Mártires',12),
	(52,'Antonio Nariño',12),
	(53,'Puente Aranda',12),
	(54,'Candelaria',12),
	(55,'Rafael Uribe Uribe',12),
	(56,'Ciudad Bolívar',12),
	(57,'Sumapaz',12),
	(58,'Soacha',12),
	(59,'Sabana de Bogotá',12);