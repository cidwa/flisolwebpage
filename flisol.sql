create database flisol;
use flisol;

CREATE TABLE IF NOT EXISTS `talleres` (
  `idtaller` int(100) NOT NULL,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ponente` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `parewi` (
  `iddonador` int(100) NOT NULL,
`nombredonador` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoequipo` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ram` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
`procesador` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
`email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
PRIMARY KEY (iddonador)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE IF NOT EXISTS `participante` (
  `idparticipante` int(100) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(120)  NOT NULL,
	`correo` varchar(120) NOT NULL,
	`idtaller` int(100) NOT NULL,
PRIMARY KEY (idparticipante)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

insert into talleres values("1","Template para wordpress","Saúl Salomón Ramirez Zuñiga");
insert into talleres values("2","Aprender a usar Linux","Sergio");
insert into talleres values("3","R no estadistico","Oscar Caballero");
insert into talleres values("4","Aplicaciones Moviles con Cordova","Juan Carlos Gonzalez Aguilar");
insert into talleres values("5","Polymer y material design","Angel Barrera Santana");
insert into talleres values("6","Conociendo y manipulando los metadatos","Eduardo Espinoza ");
