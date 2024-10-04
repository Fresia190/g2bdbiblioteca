-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2024 a las 19:13:31
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_cele`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`dni`, `nombre`, `apellido`, `telefono`) VALUES
(45723657, 'angel', 'romero', 2147483647),
(46519580, 'santiago', 'benitez', 2147483647),
(48213542, 'sofia', 'alba', 2147483647),
(54923768, 'celeste', 'ybarra', 1276549247),
(77354954, 'axel', 'barrios', 2147483647),
(129745760, 'carlos', 'albarracino', 127649855),
(623190537, 'juan', 'pestaña', 2147483647),
(723108452, 'alejandro', 'ocampo', 1497254638),
(756234791, 'eliana', 'rivero', 2147483647),
(873942567, 'bele', 'gomez', 2147483647);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `prestamo` (
  `id_prestamo` int(11) NOT NULL,
  `fechadedevolucion` date DEFAULT NULL,
  `fechadeprestamo` date DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `prestamo` (`id_prestamo`, `fechadedevolucion`, `fechadeprestamo`, `numero`, `dni`) VALUES
(1, '2024-09-10', '2024-09-08', 1, 45723657),
(2, '2024-08-09', '2024-08-06', 2, 46519580),
(3, '2024-08-17', '2024-08-10', 3, 48213542),
(4, '2024-09-20', '2024-08-15', 4, 54923768),
(5, '2024-08-25', '2024-08-20', 5, 77354954),
(6, '2024-10-11', '2024-10-06', 6, 12974576),
(7, '2024-11-19', '2024-11-16', 7, 623190537),
(8, '2024-11-27', '2024-11-20', 8, 723108452),
(9, '2024-10-22', '2024-10-17', 9, 756234791),
(10, '2024-10-12', '2024-10-07', 10, 873942567);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`dni`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`id_prestamo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
