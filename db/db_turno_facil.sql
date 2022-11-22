-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2022 at 09:36 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_turno_facil`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medica`
--

CREATE TABLE `medica` (
  `id_medico` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Especialidad` varchar(30) NOT NULL,
  `Obras_sociales` varchar(50) NOT NULL,
  `urgencia` int(11) NOT NULL DEFAULT '0',
  `id_secretaria` int(11) DEFAULT NULL,
  `hora_entrada` int(2) NOT NULL,
  `hora_salida` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `medica`
--

INSERT INTO `medica` (`id_medico`, `Nombre`, `Especialidad`, `Obras_sociales`, `urgencia`, `id_secretaria`, `hora_entrada`, `hora_salida`) VALUES
(2, 'Martina Garcia', 'Psicologia', 'IOMA', 1, 1,  12, 16),
(4, 'Juan Lopez', 'Psicologia', 'AVALANT', 1, 3,  9, 17),

(1, 'Laura Gomez', 'Rehabilitación', 'OSDE',  0, 1,  9, 17),
(3, 'Micaela Perez', 'Cardiología', 'OSECAC',  1, 1,  12, 16),
(5, 'Carla Rasmunsen', 'Psiquiatría', 'IOMA',  0, 3,  10, 16),
(7, 'Luciana Jensen', 'Cardiología', 'OSDE',  0, 3,  10, 16),
(8, 'Violeta Estoesel', 'Pediatría', 'OSDE',  1, 1,  10, 17),
(9, 'Berta Ramirez', 'Geriatría', 'IOMA',  1, 1,  10, 17),
(6, 'Hernan Hernandez', 'Pediatría', 'AVALANT',  0, 3,  8, 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `DNI` int(8) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `ObraSocial` varchar(10) NOT NULL,
  `NumeroAfiliado` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paciente`
--

INSERT INTO `paciente` (`DNI`, `Nombre`, `Direccion`, `Telefono`, `Email`, `ObraSocial`, `NumeroAfiliado`) VALUES
(11223344, 'Juan Perez', '1200 Durruti', '0800 112233', 'JuanPerez@hotmail.com', 'PAMI', 15388954),

(10556659, 'Olivette Banger', '2020 Fairview Place', '2147483647', 'obanger1@irs.gov', 'OSDE', 2),
(14036504, 'Anabelle Wetherick', '109 Nelson Plaza', '1101057437', 'awetherick8@ed.gov', 'AVALANT', 9),
(15398165, 'Rafael Ellingham', '562 Comanche Circle', '2147483647', 'rellingham4@bandcamp.com', 'OSECAC', 5),
(16604723, 'Prescott Jostan', '220 Troy Point', '1358814587', 'pjostan3@1und1.de', 'OSDE', 4),
(18577496, 'Matilda Lewcock', '463 Dexter Lane', '2147483647', 'mlewcock9@wsj.com', 'IOMA', 10),
(21491392, 'Ollie Arderne', '6122 Village Road', '2147483647', 'oarderne5@tamu.edu', 'AVALANT', 6),
(41422393, 'Tiffany Dresse', '3030 Garrison Center', '2147483647', 'tdresse2@fema.gov', 'IOMA', 3),
(57434950, 'Egor Streatley', '5028 Pennsylvania Cir', '2147483647', 'estreatley0@goo.ne', 'IOMA', 1),
(61012688, 'Odo Missington', '116 Monica Trail', '2147483647', 'omissington7@about.me', 'IOMA', 8),
(75483944, 'Pasquale Pogue', '1584 Little Fleur Pa', '2147483647', 'ppogue6@irs.gov', 'OSDE', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `user` varchar(20) NOT NULL,
  `password` varchar(80) NOT NULL,
  `tipo` int(1) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`user`, `password`, `tipo`, `nombre`) VALUES
('FlorenciaRevez@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 3, 'Florencia Revez'),
('Elea92@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 3, 'Eleanor Smith'),
('Marting@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Martina Garcia'),
('Juanl@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Juan Lopez'),
('Laurag@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Laura Gomez'),
('Micaelap@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Micaela Perez'),
('Carlar@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Carla Rasmunsen'),
('Lucianaj@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Luciana Jensen'),
('VioletaE@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Violeta Estoesel'),
('Bertar@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Berta Ramirez'),
('HernanH@gmail.com', '$2a$12$Tf7R28.1SJc73rWuURIxOu8dg5EWjNRjr0CO9gjop5vYRDiQ6PGBK', 2, 'Hernan Hernandez'),


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `user` int(8) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`user`,`nombre`) VALUES
(11223344, 'Juan Perez'),
(10556659, 'Olivette Banger'),
(14036504, 'Anabelle Wetherick'),
(15398165, 'Rafael Ellingham'),
(16604723, 'Prescott Jostan'),
(18577496, 'Matilda Lewcock'),
(21491392, 'Ollie Arderne'),
(41422393, 'Tiffany Dresse'),
(57434950, 'Egor Streatley'),
(61012688, 'Odo Missington'),
(75483944, 'Pasquale Pogue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretario`
--

CREATE TABLE `secretario` (
  `id_secretaria` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secretario`
--

INSERT INTO `secretario` (`personal_user`) VALUES
(3, 'Florencia Revez', 'FlorenciaRevez@gmail.com'),
(1, 'Eleanor Smith', 'Elea92@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id_turno` int(10) NOT NULL,
  `dni_paciente` int(11) DEFAULT NULL,
  `id_medico` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `confirmado` tinyint(1) NOT NULL
  --`turno` char(1) NOT NULL COMMENT 'turno refiriendose a mañana y tarde\r\n',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turnos`
--

INSERT INTO `turnos` (`id_turno`, `dni_paciente`, `id_medico`, `fecha`, `confirmado`) VALUES
(8, 11223344, 2, '2022-05-19 18:26:52', 1),
(9, 11223344, 1 '2022-05-07 18:26:52', 1),
(6, 41422393, 1, '2022-05-22 20:07:24', 1),
(1, 41422393, 4, '2025-05-07 15:25:18', 1),
(2, 57434950, 1, '2022-05-19 16:36:59', 0),
(3, 57434950, 3, '2022-05-28 16:36:59', 1);

--
-- Indexes for dumped tables
--

--
-- Indices de la tabla `medica`
--
ALTER TABLE `medica`
  ADD PRIMARY KEY (`id_medico`),
  ADD KEY `id_medico` (`id_medico`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`DNI`),
  ADD KEY `DNI` (`DNI`);

--
-- Indices de la tabla `personal`
--
--ALTER TABLE `personal`
--  ADD PRIMARY KEY (`user`);

--
-- Indices de la tabla `secretario`
--
ALTER TABLE `secretario`
  ADD PRIMARY KEY (`id_secretaria`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id_turno`),
  ADD KEY `id_turno` (`id_turno`);

--
-- Constraints for dumped tables
--

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `medico`
--
ALTER TABLE `medica`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `secretaria`
--
ALTER TABLE `secretario`
  MODIFY `id_secretaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

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
