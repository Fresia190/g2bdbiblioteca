-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2024 a las 19:17:09
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
-- Base de datos: `biblioteca rocio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `id_editoriales` int(11) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `fecha_publicación` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`id_editoriales`, `pais`, `nombre`, `fecha_publicación`) VALUES
(1, 'argentina', 'alicion', '2024-05-07'),
(2, 'mexico', 'ampersand', '2024-09-10'),
(3, 'venezuela', 'asunto impreso', '2024-09-15'),
(4, 'brasil', 'atlantida', '2024-07-12'),
(5, 'estados unidos', 'edelvives', '2024-04-06'),
(6, 'china', 'alianza', '2024-06-13'),
(7, 'rusia', 'catedera', '2024-08-02'),
(8, 'canada', 'algarabia', '2024-10-17'),
(9, 'europa', 'anaya', '2024-10-03'),
(10, 'colombia', 'el pulpo negro', '2024-10-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `titulo` varchar(20) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `año` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `ubicacion` varchar(20) NOT NULL,
  `nropaginas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`titulo`, `genero`, `año`, `descripcion`, `ubicacion`, `nropaginas`) VALUES
('ciencias', 'Fisica', 1989, 'es un libro muy recomendado', 'ricardo rojas', 200),
('el libro prohibido', 'ficcion', 1790, 'es un libro muy entretenido', 'I8', 280),
('el señor de los anil', 'fantasia', 1970, 'es un libro llamativo', 'B3', 50),
('filosofia', '', 1970, 'es un libro muy bueno', 'vera peñaloza', 220),
('la ciudad perdida', 'aventura', 1930, 'es un libro recomendado', 'C2', 100),
('la herencia maldita', 'drama', 2004, 'es un libro muy bueno', 'E6', 90),
('la isla desierta', 'supervivencia', 1860, 'es un libro con mucho misterio', 'G4', 130),
('la sombra del poso', 'terror', 2001, 'es un libro muy interesante', 'A1', 80),
('la venganza de los d', 'fantasia', 1760, 'es un libro con mucha fantasia', 'D5', 230);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`id_editoriales`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`titulo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
