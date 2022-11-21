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
-- Table structure for table `turnos`
--

CREATE TABLE `turnos` (
  `paciente_dni` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `turno` char(1) NOT NULL COMMENT 'turno refiriendose a mañana y tarde\r\n',
  `medica_personal_user` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `turnos`
--

INSERT INTO `turnos` (`paciente_dni`, `fecha`, `hora`, `turno`, `medica_personal_user`, `id`) VALUES
(10556659, '2022-11-23', '15:50:00', 't', 'fran67', 1),
(14036504, '2022-11-10', '12:00:00', 't', 'ema98', 2),
(15398165, '2022-11-15', '13:20:00', 't', 'claibyn', 3),
(16604723, '2023-01-02', '18:00:00', 't', 'fran67', 4),
(18577496, '2022-12-15', '10:00:00', 'm', 'claibyn', 5),
(21491392, '2022-12-12', '06:50:00', 'm', 'seymurr', 6),
(41422393, '2022-12-26', '09:30:00', 'm', 'jacket', 7),
(57434950, '2023-01-02', '11:00:00', 'm', 'ema98', 8),
(61012688, '2022-12-28', '11:00:00', 'm', 'ema98', 9),
(41422393, '2022-12-06', '19:30:00', 't', 'ema98', 10),
(57434950, '2023-12-09', '10:00:00', 'm', 'claibyn', 11),
(75483944, '2023-01-15', '09:20:00', 'm', 'cletus', 12),
(41422393, '2022-12-14', '15:30:00', 't', 'seymurr', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `turnos_medica` (`medica_personal_user`),
  ADD KEY `turnos_paciente` (`paciente_dni`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `turnos`
--
ALTER TABLE `turnos`
  ADD CONSTRAINT `turnos_medica` FOREIGN KEY (`medica_personal_user`) REFERENCES `medica` (`personal_user`),
  ADD CONSTRAINT `turnos_paciente` FOREIGN KEY (`paciente_dni`) REFERENCES `paciente` (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
