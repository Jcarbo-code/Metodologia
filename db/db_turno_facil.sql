-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-10-2022 a las 20:04:02
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_turno_facil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medica`
--

CREATE TABLE `medica` (
  `especialidad` varchar(20) NOT NULL,
  `obra_social` varchar(10) NOT NULL,
  `personal_user` varchar(20) NOT NULL,
  `secretario_personal_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medica`
--

INSERT INTO `medica` (`especialidad`, `obra_social`, `personal_user`, `secretario_personal_user`) VALUES
('Rehabilitación', 'OSDE', 'claibyn', 'farlin'),
('Cardiología', 'OSECAC', 'cletus', 'eleanor'),
('Psiquiatría', 'IOMA', 'ema98', 'amenier'),
('Cardiología', 'OSDE', 'ferdina', 'farlin'),
('Pediatría', 'OSDE', 'fran67', 'amenier'),
('Geriatría', 'IOMA', 'jacket', 'eleanor'),
('Pediatría', 'AVALANT', 'seymurr', 'eleanor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `direccion` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `obra_social` varchar(10) DEFAULT NULL,
  `nro_afiliado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`dni`, `nombre`, `apellido`, `direccion`, `telefono`, `email`, `obra_social`, `nro_afiliado`) VALUES
(10556659, 'Olivette', 'Banger', '2020 Fairview Place', 2147483647, 'obanger1@irs.gov', 'OSDE', 2),
(14036504, 'Anabelle', 'Wetherick', '09 Nelson Plaza', 1101057437, 'awetherick8@ed.gov', 'AVALANT', 9),
(15398165, 'Rafael', 'Ellingham', '562 Comanche Circle', 2147483647, 'rellingham4@bandcamp.com', 'OSECAC', 5),
(16604723, 'Prescott', 'Jostan', '0 Troy Point', 1358814587, 'pjostan3@1und1.de', 'OSDE', 4),
(18577496, 'Matilda', 'Lewcock', '0463 Dexter Lane', 2147483647, 'mlewcock9@wsj.com', 'IOMA', 10),
(21491392, 'Ollie', 'Arderne', '6122 Village Road', 2147483647, 'oarderne5@tamu.edu', 'AVALANT', 6),
(41422393, 'Tiffany', 'Dresse', '3030 Garrison Center', 2147483647, 'tdresse2@fema.gov', 'IOMA', 3),
(57434950, 'Egor', 'Streatley', '028 Pennsylvania Cir', 2147483647, 'estreatley0@goo.ne', 'IOMA', 1),
(61012688, 'Odo', 'Missington', '116 Monica Trail', 2147483647, 'omissington7@about.me', 'IOMA', 8),
(75483944, 'Pasquale', 'Pogue', '1584 Little Fleur Pa', 2147483647, 'ppogue6@irs.gov', 'OSDE', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `user` varchar(20) NOT NULL,
  `password` varchar(80) NOT NULL,
  `tipo` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`user`, `password`, `tipo`, `nombre`) VALUES
('amenier', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 1, 'Annemarie'),
('claibyn', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 0, 'Claiborn'),
('cletus', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 0, 'Cletus'),
('eleanor', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 1, 'Eleanor'),
('ema98', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 0, 'Emanuel'),
('farlin', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 1, 'Farlie'),
('ferdina', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 0, 'Ferdinanda'),
('fran67', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 0, 'Frank'),
('jacket', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 0, 'Jacquette'),
('seymurr', '1234$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 0, 'Seymour');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretario`
--

CREATE TABLE `secretario` (
  `personal_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secretario`
--

INSERT INTO `secretario` (`personal_user`) VALUES
('amenier'),
('eleanor'),
('farlin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `paciente_dni` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `turno` char(1) NOT NULL COMMENT 'turno refiriendose a mañana y tarde\r\n',
  `medica_personal_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`paciente_dni`, `fecha`, `hora`, `turno`, `medica_personal_user`) VALUES
(10556659, '0000-00-00', '15:50:00', 't', 'fran67'),
(14036504, '0000-00-00', '12:00:00', 't', 'ema98'),
(15398165, '0000-00-00', '13:20:00', 't', 'claibyn'),
(16604723, '0000-00-00', '18:00:00', 't', 'fran67'),
(18577496, '0000-00-00', '10:00:00', 'm', 'claibyn'),
(21491392, '0000-00-00', '06:50:00', 'm', 'seymurr'),
(41422393, '0000-00-00', '09:30:00', 'm', 'jacket'),
(57434950, '0000-00-00', '11:00:00', 'm', 'ema98'),
(61012688, '0000-00-00', '11:00:00', 'm', 'ema98'),
(75483944, '0000-00-00', '09:20:00', 'm', 'cletus');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `medica`
--
ALTER TABLE `medica`
  ADD PRIMARY KEY (`personal_user`),
  ADD KEY `medica_secretario` (`secretario_personal_user`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `secretario`
--
ALTER TABLE `secretario`
  ADD PRIMARY KEY (`personal_user`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`paciente_dni`),
  ADD KEY `turnos_medica` (`medica_personal_user`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medica`
--
ALTER TABLE `medica`
  ADD CONSTRAINT `medica_personal` FOREIGN KEY (`personal_user`) REFERENCES `personal` (`user`),
  ADD CONSTRAINT `medica_secretario` FOREIGN KEY (`secretario_personal_user`) REFERENCES `secretario` (`personal_user`);

--
-- Filtros para la tabla `secretario`
--
ALTER TABLE `secretario`
  ADD CONSTRAINT `secretario_personal` FOREIGN KEY (`personal_user`) REFERENCES `personal` (`user`);

--
-- Filtros para la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD CONSTRAINT `turnos_medica` FOREIGN KEY (`medica_personal_user`) REFERENCES `medica` (`personal_user`),
  ADD CONSTRAINT `turnos_paciente` FOREIGN KEY (`paciente_dni`) REFERENCES `paciente` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
