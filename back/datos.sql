-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-05-2023 a las 02:31:03
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ff`
--

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`nombreCategoria`) VALUES
('Juvenil'),
('Master 30'),
('Master 40'),
('Master 50'),
('Senior');

--
-- Volcado de datos para la tabla `club`
--

INSERT INTO `club` (`codigoClub`) VALUES
(1),
(2),
(3),
(4),
(5);

--
-- Volcado de datos para la tabla `corredor`
--

INSERT INTO `corredor` (`codigoCorredor`, `nombre`, `estatura`, `Peso`, `fechaNac`, `genero`) VALUES
(1, 'Juan Perez', 1.75, 70, '1990-01-01', 'M'),
(2, 'Maria Rodriguez', 1.6, 55, '1995-05-05', 'F'),
(3, 'Carlos Sanchez', 1.85, 80, '1985-11-11', 'M'),
(4, 'Laura Gomez', 1.7, 60, '1998-03-03', 'F'),
(5, 'Pedro Hernandez', 1.8, 75, '1992-07-07', 'M'),
(6, 'Ana Torres', 1.65, 58, '1993-09-09', 'F'),
(7, 'Luisa Martinez', 1.68, 63, '1991-02-02', 'F'),
(8, 'Jorge Garcia', 1.76, 73, '1988-04-04', 'M'),
(9, 'Diego Fernandez', 1.9, 85, '1987-06-06', 'M'),
(10, 'Sofia Ramirez', 1.62, 50, '1997-08-08', 'F');

--
-- Volcado de datos para la tabla `entrenamiento`
--

INSERT INTO `entrenamiento` (`codigo`, `distanciaEntrenamiento`, `fechaEntrenamiento`) VALUES
(1, 5, '2023-04-01'),
(2, 10, '2023-04-02'),
(3, 15, '2023-04-03'),
(4, 20, '2023-04-04'),
(5, 25, '2023-04-05');

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`codigoEvento`, `nombre`, `fecha`, `distanciaEvento`, `codigoLiga`) VALUES
(1, 'Carrera de 10 km', '2023-05-01', 10, 1),
(2, 'Media maraton', '2023-05-02', 5, 1),
(3, 'Carrera de 5km', '2023-05-03', 8, 2),
(4, 'Carrera de 15km', '2023-05-04', 3, NULL),
(5, 'Maraton', '2023-05-05', 2, NULL);

--
-- Volcado de datos para la tabla `liga`
--

INSERT INTO `liga` (`codigoLiga`, `nombre`) VALUES
(1, 'Liga de Atletismo de Madrid'),
(2, 'Liga de Atletismo de Barcelona');

--
-- Volcado de datos para la tabla `participa`
--

INSERT INTO `participa` (`codigoCorredor`, `codigoEvento`, `nombreCategoria`, `tiempo`, `numParticipacion`) VALUES
(1, 1, 'Juvenil', 45.5, 1),
(2, 1, 'Senior', 50.2, 2),
(3, 1, 'Master 30', 42.1, 3),
(4, 2, 'Master 40', 85.3, 0),
(5, 2, 'Master 50', 120, 0),
(6, 3, 'Juvenil', 20, 0),
(7, 3, 'Senior', 25, 0),
(8, 4, 'Master 30', 63.5, 0),
(9, 4, 'Master 40', 77.8, 0),
(10, 5, 'Senior', 180, 0);

--
-- Volcado de datos para la tabla `representa`
--

INSERT INTO `representa` (`codigoCorredor`, `codigoLiga`, `codigoClub`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 4),
(5, 2, 5);

--
-- Volcado de datos para la tabla `tiene_historial`
--

INSERT INTO `tiene_historial` (`codigoCorredor`, `codigoEntrenamiento`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

--
-- Volcado de datos para la tabla `tiene_tipo`
--

INSERT INTO `tiene_tipo` (`codigo`, `Nombre`) VALUES
(2, 'Cardiovascular'),
(3, 'Flexibilidad'),
(1, 'Fuerza'),
(4, 'Resistencia'),
(5, 'Velocidad');

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`Nombre`) VALUES
('Cardiovascular'),
('Flexibilidad'),
('Fuerza'),
('Resistencia'),
('Velocidad');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
