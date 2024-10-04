-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2024 a las 20:07:50
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
-- Base de datos: `alba`
--
CREATE DATABASE IF NOT EXISTS `alba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `alba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`nombre`, `apellido`, `dni`) VALUES
('sodia', 'alba', 45789678);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(13, 'Productos secos'),
(14, 'Productos refrigerados'),
(15, 'Productos congelados'),
(16, 'Productos sustentables');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `nombre`) VALUES
(1, 'Alkimyk food'),
(2, 'Almadre'),
(3, 'Argenti'),
(4, 'Augusta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `precio_compra` float DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `id_marca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre_producto`, `id_categoria`, `precio_compra`, `estado`, `id_marca`) VALUES
(1, 'Milanesas de soja - Simples', 15, 253, 'Activo', 1),
(2, 'Milanesas de soja - Sin Sal', 15, 253, 'Inactivo', 1),
(3, 'Veganitas de pollo vegetal', 15, 253, 'Activo', 1),
(4, 'Veganitas de pollo 1KG', 15, 253, 'Activo', 1),
(5, 'Thins masa madre - Sésamo y Sal marina', 13, 253, 'Inactivo', 2),
(6, 'Thins masa madre - Tomate y romero', 13, 253, 'Activo', 2),
(7, 'Thins masa madre - Integral', 13, 253, 'Activo', 2),
(8, 'Thins masa madre - Rawmesan y Remolacha', 13, 253, 'Inactivo', 2),
(9, 'Snacks masa madre - Rawmesan y Remolacha', 13, 253, 'Activo', 2),
(10, 'Snacks masa madre - Tomate y romero', 13, 253, 'Inactivo', 2),
(11, 'Snacks masa madre - Sésamo y sal marina', 13, 253, 'Activo', 2),
(12, 'Pita chips - Jalapeño', 13, 253, 'Activo', 2),
(13, 'Pita chips - Cebolla', 13, 253, 'Inactivo', 2),
(14, 'Pita chipa - Original', 13, 253, 'Activo', 2),
(15, 'Tapas para empanadas sin tacc 330gr.', 14, 253, 'Activo', 3),
(16, 'Tapas de tartas sin tacc 380gr.', 14, 253, 'Activo', 3),
(17, 'Tapas de tartas 380gr. Gastronómicas', 14, 253, 'Inactivo', 3),
(18, 'Tapas para empanadas rotiseras 460gr. Gastronómicas', 14, 253, 'Activo', 3),
(19, 'Queso untable cajú - Clásico 180gr.', 14, 253, 'Activo', 4),
(20, 'Queso untable cajú - Ciboulette 180gr.', 14, 253, 'Activo', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);
--
-- Base de datos: `bd2`
--
CREATE DATABASE IF NOT EXISTS `bd2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `NOMBRE` varchar(26) DEFAULT NULL,
  `CURSO` varchar(6) DEFAULT NULL,
  `DNI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`NOMBRE`, `CURSO`, `DNI`) VALUES
('[MARCELO]', '[7A]', 29175362),
('[JULIANA]', '[5C]', 35168234),
('[JOAQUIN]', '[3D]', 56123478),
('[LUCIANO]', '[6B]', 47162598);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `NOMBRE` varchar(59) DEFAULT NULL,
  `AÑO` int(11) DEFAULT NULL,
  `IDMATERIA` int(11) DEFAULT NULL,
  `DNI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
--
-- Base de datos: `biblioteca`
--
CREATE DATABASE IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `biblioteca`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `idAutor` int(11) NOT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `nacionalidad` varchar(100) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`idAutor`, `autor`, `nacionalidad`, `fechaNacimiento`) VALUES
(1, 'Perezz Juan', 'Argentina', '1990-02-15'),
(2, 'Gomez Ana', 'Mejico', '1988-07-22'),
(3, 'Martinez Carlos', 'España', '1995-03-10'),
(4, 'Lopez Laura', 'Chile', '1987-11-05'),
(5, 'Rodriguez Marta', 'Peru', '1992-09-18'),
(6, 'Hernandez Pedro', 'Colombia', '1998-04-30'),
(7, 'Fernandez Sofia', 'Argentina', '1989-06-14'),
(8, 'Garcia Andres', 'Uruguay', '1993-12-25'),
(9, 'Diaz Isabella', 'Mejico', '1997-08-03'),
(10, 'Vargas Lucas', 'España', '1994-10-09'),
(11, 'Torres Elena', 'Argentina', '1996-05-15'),
(12, 'Silva Diego', 'Chile', '1991-01-08'),
(13, 'Rojas Valentina', 'Peru', '1986-03-21'),
(14, 'Pacheco Miguel', 'Colombia', '1999-07-14'),
(15, 'Sanchez Julia', 'Argentina', '1997-09-29'),
(16, 'Mendoza Alejandro', 'Uruguay', '1990-11-12'),
(17, 'Gutierrez Camila', 'Mejico', '1988-04-05'),
(18, 'Ramirez Matias', 'España', '1996-06-27'),
(19, 'Reyes Natalia', 'Peru', '1993-08-18'),
(20, 'Guerrero Fernando', 'Argentina', '1991-10-31'),
(21, 'Ortega Carmen', 'Colombia', '1987-12-04'),
(22, 'Vega Joaquin', 'Argentina', '1998-02-07'),
(23, 'Rivas Martina', 'Chile', '1992-04-09'),
(24, 'Cruz Sebastian', 'Mejico', '1994-09-13'),
(25, 'Flores Valeria', 'España', '1989-01-17'),
(26, 'Romero Luis', 'Uruguay', '1995-03-20'),
(27, 'Santos Alicia', 'Argentina', '1997-07-23'),
(28, 'Moreno Daniel', 'Peru', '1993-11-26'),
(29, 'Castro Mariano', 'Colombia', '1991-01-29'),
(30, 'Jimenez Carolina', 'Argentina', '1988-05-02'),
(31, 'Molina Gonzalo', 'España', '1999-07-06'),
(32, 'Navarro Sara', 'Chile', '1996-09-09'),
(33, 'Lara Emilio', 'Mejico', '1994-12-12'),
(34, 'Ramos Patricia', 'Uruguay', '1990-02-14'),
(35, 'Velasco Ricardo', 'Argentina', '1987-04-17'),
(36, 'Castillo Lorena', 'Peru', '1992-06-20'),
(37, 'Peralta Javier', 'Colombia', '1998-08-23'),
(38, 'Guzman Adriana', 'España', '1997-10-26'),
(39, 'Ruiz Federico', 'Argentina', '1985-03-01'),
(40, 'Vidal Luna', 'España', '1986-09-14'),
(41, 'Galindo Max', 'Mejico', '1984-12-30'),
(42, 'Cervantes Saavedra Miguel', 'Español', '1547-09-29'),
(43, 'Ruiz Zafran Carlos', 'Español', '1964-09-25'),
(44, 'Orwell George', 'Britanico', '1903-06-25'),
(45, 'Marquez Gabriel Garcia', 'Colombiano', '1927-03-06'),
(46, 'Lee Harper', 'Estadounidense', '1926-04-28'),
(47, 'Dostoevsky Fyodor', 'Ruso', '1821-11-11'),
(48, 'Collins Suzanne', 'Estadounidense', '1962-08-10'),
(49, 'Tolkien J.R.R.', 'Britanico', '1892-01-03'),
(50, 'Brown Dan', 'Estadounidense', '1964-06-22'),
(51, 'Rowling J.K.', 'Britanica', '1965-07-31'),
(52, 'Meyer Stephenie', 'Estadounidense', '1973-12-24'),
(53, 'Kafka Franz', 'AustroHungaro', '1883-07-03'),
(54, 'Bronte Emily', 'Britanica', '1818-07-30'),
(55, 'Fitzgerald F. Scott', 'Estadounidense', '1896-09-24'),
(56, 'Kerouac Jack', 'Estadounidense', '1922-03-12'),
(57, 'Solnit Rebecca', 'Estadounidense', '1961-06-24'),
(58, 'Follett Ken', 'Britanico', '1949-06-05'),
(59, 'Sadskind Patrick', 'Aleman', '1949-03-26'),
(60, 'Melville Herman', 'Estadounidense', '1819-08-01'),
(61, 'Dahl Roald', 'Britanico', '1916-09-13'),
(62, 'Hugo Victor', 'Frances', '1802-02-26'),
(63, 'Cervantes Saavedra Miguel de', 'Español', '1547-09-29'),
(64, 'Rojas Fernando de', 'Español', '1470-04-04'),
(65, 'Hawkins Paula', 'Britanica', '1972-08-26'),
(66, 'Dashner James', 'Estadounidense', '1972-11-26'),
(67, 'McCarthy Cormac', 'Estadounidense', '1933-07-20'),
(68, 'Clare Cassandra', 'Estadounidense', '1973-07-27'),
(69, 'Sadskind Patrick', 'Aleman', '1949-03-26'),
(70, 'Melville Herman', 'Estadounidense', '1819-08-01'),
(71, 'Dahl Roald', 'Britanico', '1916-09-13'),
(72, 'Hugo Victor', 'Frances', '1802-02-26'),
(73, 'Cervantes Saavedra Miguel de', 'Español', '1547-09-29'),
(74, 'Rojas Fernando de', 'Español', '1470-04-04'),
(75, 'Hawkins Paula', 'Britanica', '1972-08-26'),
(76, 'Dashner James', 'Estadounidense', '1972-11-26'),
(77, 'McCarthy Cormac', 'Estadounidense', '1933-07-20'),
(78, 'Sadskind Patrick', 'Aleman', '1949-03-26'),
(79, 'Melville Herman', 'Estadounidense', '1819-08-01'),
(80, 'Dahl Roald', 'Britanico', '1916-09-13'),
(81, 'Hugo Victor', 'Frances', '1802-02-26'),
(82, 'Cervantes Saavedra Miguel de', 'Español', '1547-09-29'),
(83, 'Rojas Fernando de', 'Español', '1470-04-04'),
(84, 'Doyle Arthur Conan', 'Britanico', '1859-05-22'),
(85, 'King Stephen', 'Estadounidense', '1947-09-21'),
(86, 'Stoker Bram', 'Irlandes', '1847-11-08'),
(87, 'Desconocido Homero', 'Griego', '0000-00-00'),
(88, 'Burgess Anthony', 'Britanico', '1917-02-25'),
(89, 'Dostoevsky Fyodor', 'Ruso', '1821-11-11'),
(90, 'Fitzgerald F. Scott', 'Estadounidense', '1896-09-24'),
(91, 'Perezz Juan', 'Argentina', '1990-02-15'),
(92, 'Gomez Ana', 'Mejico', '1988-07-22'),
(93, 'Martinez Carlos', 'España', '1995-03-10'),
(94, 'Lopez Laura', 'Chile', '1987-11-05'),
(95, 'Rodriguez Marta', 'Peru', '1992-09-18'),
(96, 'Hernandez Pedro', 'Colombia', '1998-04-30'),
(97, 'Fernandez Sofia', 'Argentina', '1989-06-14'),
(98, 'Garcia Andres', 'Uruguay', '1993-12-25'),
(99, 'Diaz Isabella', 'Mejico', '1997-08-03'),
(100, 'Vargas Lucas', 'España', '1994-10-09'),
(101, 'Torres Elena', 'Argentina', '1996-05-15'),
(102, 'Silva Diego', 'Chile', '1991-01-08'),
(103, 'Rojas Valentina', 'Peru', '1986-03-21'),
(104, 'Pacheco Miguel', 'Colombia', '1999-07-14'),
(105, 'Sanchez Julia', 'Argentina', '1997-09-29'),
(106, 'Mendoza Alejandro', 'Uruguay', '1990-11-12'),
(107, 'Gutierrez Camila', 'Mejico', '1988-04-05'),
(108, 'Ramirez Matias', 'España', '1996-06-27'),
(109, 'Reyes Natalia', 'Peru', '1993-08-18'),
(110, 'Guerrero Fernando', 'Argentina', '1991-10-31'),
(111, 'Ortega Carmen', 'Colombia', '1987-12-04'),
(112, 'Vega Joaquin', 'Argentina', '1998-02-07'),
(113, 'Rivas Martina', 'Chile', '1992-04-09'),
(114, 'Cruz Sebastian', 'Mejico', '1994-09-13'),
(115, 'Flores Valeria', 'España', '1989-01-17'),
(116, 'Romero Luis', 'Uruguay', '1995-03-20'),
(117, 'Santos Alicia', 'Argentina', '1997-07-23'),
(118, 'Moreno Daniel', 'Peru', '1993-11-26'),
(119, 'Castro Mariano', 'Colombia', '1991-01-29'),
(120, 'Jimenez Carolina', 'Argentina', '1988-05-02'),
(121, 'Molina Gonzalo', 'España', '1999-07-06'),
(122, 'Navarro Sara', 'Chile', '1996-09-09'),
(123, 'Lara Emilio', 'Mejico', '1994-12-12'),
(124, 'Ramos Patricia', 'Uruguay', '1990-02-14'),
(125, 'Velasco Ricardo', 'Argentina', '1987-04-17'),
(126, 'Castillo Lorena', 'Peru', '1992-06-20'),
(127, 'Peralta Javier', 'Colombia', '1998-08-23'),
(128, 'Guzman Adriana', 'España', '1997-10-26'),
(129, 'Ruiz Federico', 'Argentina', '1985-03-01'),
(130, 'Vidal Luna', 'España', '1986-09-14'),
(131, 'Galindo Max', 'Mejico', '1984-12-30'),
(132, 'Cervantes Saavedra Miguel', 'Español', '1547-09-29'),
(133, 'Ruiz Zafran Carlos', 'Español', '1964-09-25'),
(134, 'Orwell George', 'Britanico', '1903-06-25'),
(135, 'Marquez Gabriel Garcia', 'Colombiano', '1927-03-06'),
(136, 'Lee Harper', 'Estadounidense', '1926-04-28'),
(137, 'Dostoevsky Fyodor', 'Ruso', '1821-11-11'),
(138, 'Collins Suzanne', 'Estadounidense', '1962-08-10'),
(139, 'Tolkien J.R.R.', 'Britanico', '1892-01-03'),
(140, 'Brown Dan', 'Estadounidense', '1964-06-22'),
(141, 'Rowling J.K.', 'Britanica', '1965-07-31'),
(142, 'Meyer Stephenie', 'Estadounidense', '1973-12-24'),
(143, 'Kafka Franz', 'AustroHungaro', '1883-07-03'),
(144, 'Bronte Emily', 'Britanica', '1818-07-30'),
(145, 'Fitzgerald F. Scott', 'Estadounidense', '1896-09-24'),
(146, 'Kerouac Jack', 'Estadounidense', '1922-03-12'),
(147, 'Solnit Rebecca', 'Estadounidense', '1961-06-24'),
(148, 'Follett Ken', 'Britanico', '1949-06-05'),
(149, 'Sadskind Patrick', 'Aleman', '1949-03-26'),
(150, 'Melville Herman', 'Estadounidense', '1819-08-01'),
(151, 'Dahl Roald', 'Britanico', '1916-09-13'),
(152, 'Hugo Victor', 'Frances', '1802-02-26'),
(153, 'Cervantes Saavedra Miguel de', 'Español', '1547-09-29'),
(154, 'Rojas Fernando de', 'Español', '1470-04-04'),
(155, 'Hawkins Paula', 'Britanica', '1972-08-26'),
(156, 'Dashner James', 'Estadounidense', '1972-11-26'),
(157, 'McCarthy Cormac', 'Estadounidense', '1933-07-20'),
(158, 'Clare Cassandra', 'Estadounidense', '1973-07-27'),
(159, 'Sadskind Patrick', 'Aleman', '1949-03-26'),
(160, 'Melville Herman', 'Estadounidense', '1819-08-01'),
(161, 'Dahl Roald', 'Britanico', '1916-09-13'),
(162, 'Hugo Victor', 'Frances', '1802-02-26'),
(163, 'Cervantes Saavedra Miguel de', 'Español', '1547-09-29'),
(164, 'Rojas Fernando de', 'Español', '1470-04-04'),
(165, 'Hawkins Paula', 'Britanica', '1972-08-26'),
(166, 'Dashner James', 'Estadounidense', '1972-11-26'),
(167, 'McCarthy Cormac', 'Estadounidense', '1933-07-20'),
(168, 'Sadskind Patrick', 'Aleman', '1949-03-26'),
(169, 'Melville Herman', 'Estadounidense', '1819-08-01'),
(170, 'Dahl Roald', 'Britanico', '1916-09-13'),
(171, 'Hugo Victor', 'Frances', '1802-02-26'),
(172, 'Cervantes Saavedra Miguel de', 'Español', '1547-09-29'),
(173, 'Rojas Fernando de', 'Español', '1470-04-04'),
(174, 'Doyle Arthur Conan', 'Britanico', '1859-05-22'),
(175, 'King Stephen', 'Estadounidense', '1947-09-21'),
(176, 'Stoker Bram', 'Irlandes', '1847-11-08'),
(177, 'Desconocido Homero', 'Griego', '0000-00-00'),
(178, 'Burgess Anthony', 'Britanico', '1917-02-25'),
(179, 'Dostoevsky Fyodor', 'Ruso', '1821-11-11'),
(180, 'Fitzgerald F. Scott', 'Estadounidense', '1896-09-24'),
(181, 'Smith  Joe', NULL, NULL),
(182, 'J.R. Rolon J.R. Rolon', NULL, NULL),
(183, 'J.R.  Rolon', NULL, NULL),
(184, 'Ronin  Julio', NULL, NULL),
(185, 'Murgenson  Julio', NULL, NULL),
(186, 'Rowlon  J.K.', NULL, NULL),
(187, '1 1', NULL, NULL),
(188, '1 1', NULL, NULL),
(189, '1 1', NULL, NULL),
(190, '0 0', NULL, NULL),
(191, '0 0', NULL, NULL),
(192, ' ', NULL, NULL),
(193, 'Gomez  Clara', NULL, NULL),
(194, '0 0', NULL, NULL),
(195, '0 0', NULL, NULL),
(196, '0 0', NULL, NULL),
(197, 'Rowling  J.K', NULL, NULL),
(198, 'Rwlons  Jota ka', NULL, NULL),
(199, 'RowlinGGG   Jota ka', NULL, NULL),
(200, 'RowlinG    Jota ka', NULL, NULL),
(201, 'Matias Matias', NULL, NULL),
(202, NULL, NULL, NULL),
(203, NULL, NULL, NULL),
(204, 'Echanove  Juan', NULL, NULL),
(205, '1 1', NULL, NULL),
(206, NULL, NULL, NULL),
(207, NULL, NULL, NULL),
(208, NULL, NULL, NULL),
(209, NULL, NULL, NULL),
(210, NULL, NULL, NULL),
(211, NULL, NULL, NULL),
(212, NULL, NULL, NULL),
(213, NULL, NULL, NULL),
(214, NULL, NULL, NULL),
(215, NULL, NULL, NULL),
(216, NULL, NULL, NULL),
(217, NULL, NULL, NULL),
(218, NULL, NULL, NULL),
(219, 'Mendoza  Alejandro 	', NULL, NULL),
(220, NULL, NULL, NULL),
(221, NULL, NULL, NULL),
(222, 'Julio  Julio', NULL, NULL),
(223, NULL, NULL, NULL),
(224, NULL, NULL, NULL),
(225, NULL, NULL, NULL),
(226, 'Julio  Julio', NULL, NULL),
(227, 'Julio  Julio', NULL, NULL),
(228, 'Julio  Julio', NULL, NULL),
(229, 'Rodriguez  Manuel', NULL, NULL),
(230, 'Pablo Perez Pablo Perez', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `idEditorial` int(11) NOT NULL,
  `editorial` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `fundacion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`idEditorial`, `editorial`, `pais`, `fundacion`) VALUES
(1, 'Ediciones Secundaria', 'Argentina', '1990-05-15'),
(2, 'Libros Educativos S.A.', 'Argentina', '1985-07-22'),
(3, 'Editorial Estudiantil', 'Argentina', '1998-03-10'),
(4, 'Libros para el Futuro', 'Uruguay', '1995-11-05'),
(5, 'Editorial Aprendiz', 'Argentina', '2001-09-18'),
(6, 'Publicaciones Educativas', 'Argentina', '1999-04-30'),
(7, 'Libros Academicos', 'Argentina', '2003-06-14'),
(8, 'Editorial Pedagogica', 'Paraguay', '2007-12-25'),
(9, 'Libros y Mas', 'Argentina', '2006-08-03'),
(10, 'Editorial Educativa Integral', 'Argentina', '2005-10-09'),
(11, 'Ediciones Secundaria', 'Argentina', '1990-05-15'),
(12, 'Libros Educativos S.A.', 'Argentina', '1985-07-22'),
(13, 'Editorial Estudiantil', 'Argentina', '1998-03-10'),
(14, 'Libros para el Futuro', 'Uruguay', '1995-11-05'),
(15, 'Editorial Aprendiz', 'Argentina', '2001-09-18'),
(16, 'Publicaciones Educativas', 'Argentina', '1999-04-30'),
(17, 'Libros Academicos', 'Argentina', '2003-06-14'),
(18, 'Editorial Pedagogica', 'Paraguay', '2007-12-25'),
(19, 'Libros y Mas', 'Argentina', '2006-08-03'),
(20, 'Editorial Educativa Integral', 'Argentina', '2005-10-09'),
(21, 'INVENTO', NULL, NULL),
(22, 'Jalapeña', NULL, NULL),
(23, 'Atalaya', NULL, NULL),
(24, 'Anagrama', NULL, NULL),
(25, '1', NULL, NULL),
(26, '0', NULL, NULL),
(27, '4', NULL, NULL),
(28, NULL, NULL, NULL),
(29, NULL, NULL, NULL),
(30, NULL, NULL, NULL),
(31, NULL, NULL, NULL),
(32, NULL, NULL, NULL),
(33, NULL, NULL, NULL),
(34, NULL, NULL, NULL),
(35, NULL, NULL, NULL),
(36, NULL, NULL, NULL),
(37, NULL, NULL, NULL),
(38, NULL, NULL, NULL),
(39, NULL, NULL, NULL),
(40, NULL, NULL, NULL),
(41, NULL, NULL, NULL),
(42, NULL, NULL, NULL),
(43, NULL, NULL, NULL),
(44, NULL, NULL, NULL),
(45, 'Juliana', NULL, NULL),
(46, NULL, NULL, NULL),
(47, NULL, NULL, NULL),
(48, NULL, NULL, NULL),
(49, 'Anagrama lo flipa', NULL, NULL),
(50, 'Libros Educativos', NULL, NULL),
(51, 'Educacional', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `idLibro` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `idAutor` int(11) DEFAULT NULL,
  `idEditorial` int(11) NOT NULL,
  `ubicacionFisica` varchar(45) DEFAULT NULL,
  `lugarEdicion` varchar(45) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `serie` tinyint(4) DEFAULT NULL COMMENT 'si(1)\r\nno(0)\r\n',
  `observaciones` varchar(100) DEFAULT NULL,
  `idMateria` int(11) NOT NULL,
  `activo` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`idLibro`, `titulo`, `idAutor`, `idEditorial`, `ubicacionFisica`, `lugarEdicion`, `anio`, `serie`, `observaciones`, `idMateria`, `activo`) VALUES
(1, 'Matematicas Avanzadas', 1, 1, 'A1', 'Buenos Aires-Argentina', 2022, 0, 'Buen estado, reciente', 1, 1),
(2, 'Historia Universal', 4, 3, 'D4', 'Ciudad de Mejico-Mejico', 2019, 0, 'Algunas paginas sueltas', 5, 1),
(3, 'Ciencias Naturales para Jovenes', 2, 50, 'B2', 'Bogota-Colombia', 2020, 0, 'En buen estado', 2, 1),
(4, 'Literatura Clasica', 5, 5, 'F6', 'Madrid-España', 2005, 0, 'Antiguo, pero bien conservado', 4, 1),
(5, 'Geografia Mundial', 3, 4, 'C3', 'Lima-Peru', 2010, 0, 'Con marcas de uso', 6, 1),
(6, 'Arte Y Creatividad', 6, 6, 'A42', 'ACA', 1111, 1, '1', 7, 1),
(7, 'Musica para Adolescentes', 7, 8, 'E8', 'Montevideo-Uruguay', 2015, 0, 'En excelente estado', 9, 1),
(8, 'La Odisea del Espacio', 10, 9, 'D5', 'Barcelona-España', 1970, 1, 'Parte de una serie Clasica', 10, 1),
(9, 'Quimica para Principiantes', 12, 10, 'C2', 'Santiago-Chile', 2023, 0, 'Nuevo, nunca usado', 12, 1),
(10, 'Fisica Avanzada', 11, 7, 'B1', 'Buenos Aires-Argentina', 2018, 0, 'Con anotaciones', 13, 1),
(11, 'Ingles Intermedio', 16, 9, 'F2', 'Londres-Reino Unido', 2019, 0, 'Buen estado, incluye CD', 16, 1),
(12, 'Programacion para Niños', 20, 7, 'E3', 'San Francisco-EE. UU.', 2022, 0, 'Novedad en tecnologia', 16, 1),
(13, 'Educacion Civica', 18, 5, 'A5', 'Buenos Aires-Argentina', 2015, 0, 'Con notas del propietario anterior', 18, 1),
(14, 'Religion y Valores', 19, 6, 'C7', 'Ciudad de Mejico-Mejico', 2020, 0, 'Buen estado, con ilustraciones', 19, 1),
(15, 'Economia Basica', 23, 10, 'B6', 'Madrid-España', 2018, 0, 'Con ejemplos practicos', 20, 1),
(16, 'Historias de Ciencia Ficcion', 31, 4, 'D1', 'Buenos Aires-Argentina', 1987, 1, 'Parte de una serie', 5, 1),
(17, 'Aventuras en la Selva', 28, 3, 'A8', 'Manaus-Brasil', 2019, 0, 'Libro de tapa dura', 8, 1),
(18, 'DDDDDDDDDDDDDDDD', 1, 1, 'FUA', '1', 1, 1, '1', 1, 1),
(19, 'FenÃ³menos Naturales', 32, 1, 'E4', 'Santiago-Chile', 2020, 0, 'Ilustraciones a color', 2, 1),
(20, 'Sociedad y Cultura', 40, 8, 'C8', 'Buenos Aires-Argentina', 2017, 0, 'Libro de consulta', 5, 1),
(21, 'Historias del Mundo Antiguo', 37, 10, 'D6', 'Atenas-Grecia', 1995, 1, 'Parte de una serie', 5, 1),
(22, 'Misterios del Universo', 35, 7, 'B4', 'Houston-EE. UU.', 2022, 0, 'Con fotografÃ­as de la NASA', 1, 1),
(23, 'Pintura y Creatividad', 36, 9, 'A3', 'ParÃ­s-Francia', 2016, 0, 'GuÃ­a de arte', 7, 1),
(24, 'Musica Clasica para Niños', 33, 4, 'E2', 'Viena-Austria', 2018, 0, 'Incluye CD de Musica', 9, 1),
(25, 'El Espacio y los Planetas', 38, 3, 'C1', 'Buenos Aires-Argentina', 2019, 0, 'Libro de divulgaciÃ³n cientÃ­fica', 2, 1),
(26, 'Etica en la Sociedad Moderna', 34, 5, 'F5', 'Madrid-España', 2020, 0, 'Discute dilemas morales', 17, 1),
(27, 'Quimica Divertida', 26, 6, 'D8', 'Bogota-Colombia', 2021, 0, 'Experimentos para Niños', 12, 1),
(28, 'Fisica para Curiosos', 24, 8, 'A2', 'Buenos Aires-Argentina', 2017, 0, 'Con ejemplos practicos', 13, 1),
(29, 'Historias de Viajes', 30, 10, 'B3', 'Roma-Italia', 2019, 1, 'Parte de una serie', 5, 1),
(30, 'Aventuras en el Espacio', 29, 7, 'E6', 'Houston-EE. UU.', 2023, 0, 'Con ilustraciones de astronautas', 1, 1),
(31, 'Matematicas para Todos', 25, 9, 'C5', 'Buenos Aires-Argentina', 2020, 0, 'Incluye ejercicios resueltos', 1, 1),
(32, 'Historias de Ã‰poca', 21, 4, 'F3', 'Londres-Reino Unido', 2018, 1, 'Parte de una serie', 5, 1),
(33, 'Cuentos de Ciencia Ficcion', 39, 3, 'D7', 'Buenos Aires-Argentina', 1992, 1, 'ClÃ¡sicos de la ciencia Ficcion', 10, 1),
(34, 'Arte y Creatividad en la Historia', 22, 2, 'A4', 'ParÃ­s-Francia', 2015, 0, 'Ilustraciones de obras famosas', 5, 1),
(35, 'Musica para Jovenes Talentos', 20, 1, 'E7', 'Viena-Austria', 2021, 0, 'Partituras y consejos para mÃºsicos Jovenes', 9, 1),
(36, 'El Universo en ImÃ¡genes', 17, 10, 'B7', 'Houston-EE. UU.', 2020, 0, 'FotografÃ­as astronÃ³micas', 1, 1),
(37, 'Economia para Principiantes', 15, 7, 'D2', 'Buenos Aires-Argentina', 2019, 0, 'Introduccion a la Economia', 20, 1),
(38, 'El Arte de la NegociaciÃ³n', 13, 6, 'A1', 'Nueva York-EE. UU.', 2020, 0, 'Estrategias comerciales', 19, 1),
(39, 'Religion en el Mundo Moderno', 14, 5, 'C4', 'Roma-Italia', 2018, 0, 'Comparativa de religiones', 19, 1),
(40, 'Historia de las Civilizaciones', 12, 4, 'F1', 'Atenas-Grecia', 2021, 0, 'Resumen histÃ³rico', 5, 1),
(41, 'Aventuras en el OcÃ©ano', 11, 3, 'E5', 'Santiago-Chile', 2019, 1, 'Parte de una serie', 5, 1),
(42, 'Astronomia para Niños', 9, 2, 'B8', 'Buenos Aires-Argentina', 2020, 0, 'Descubre las estrellas', 2, 1),
(43, 'Los Grandes ClÃ¡sicos Literarios', 8, 1, 'C6', 'Madrid-España', 2017, 0, 'AntologÃ­a literaria', 3, 1),
(44, 'Geografia de Aventuras', 7, 10, 'A6', 'Buenos Aires-Argentina', 2019, 1, 'Parte de una serie', 6, 1),
(45, 'Ciencia y tecnologia del Futuro', 6, 9, 'D4', 'San Francisco-EE. UU.', 2022, 0, 'Predicciones tecnolÃ³gicas', 17, 1),
(46, 'Misterios del Pasado', 5, 8, 'F4', 'Mejico D.F.-Mejico', 2016, 1, 'Parte de una serie', 4, 1),
(47, 'Lengua y Literatura Clasica', 4, 7, 'E1', 'Roma-Italia', 2018, 0, 'Textos clÃ¡sicos', 4, 1),
(48, 'El Universo en NÃºmeros', 3, 6, 'B5', 'Madrid-España', 2020, 0, 'Matematicas y cosmologÃ­a', 1, 1),
(49, 'Arte y Pintura Moderna', 2, 5, 'C3', 'Nueva York-EE. UU.', 2019, 0, 'Movimientos artÃ­sticos contemporÃ¡neos', 7, 1),
(50, 'Musica en la Cultura Mundial', 1, 4, 'A3', 'Londres-Reino Unido', 2021, 0, 'Diversidad musical global', 9, 1),
(51, 'Matematicas para Principiantes', 1, 1, 'A1', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 1, 1),
(52, 'Historia del Siglo XX', 2, 2, 'B2', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 5, 1),
(53, 'Bilogia Avanzada', 3, 3, 'C3', 'Cordoba-Argentina', 2019, 0, 'Como nuevo', 3, 1),
(54, 'Quimica para Jovenes CientÃ­ficos', 4, 4, 'D4', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 12, 1),
(55, 'Literatura Universal', 5, 5, 'E5', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 4, 1),
(56, 'Geografia Mundial', 6, 6, 'F6', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 6, 1),
(57, 'Fisica Cuantica', 7, 7, 'A7', 'Rosario-Argentina', 2017, 0, 'En buen estado', 7, 1),
(58, 'Arte Moderno', 8, 8, 'B8', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 8, 1),
(59, 'InformÃ¡tica Basica', 9, 9, 'C9', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 9, 1),
(60, 'Musica Clasica', 10, 10, 'D10', 'Cordoba-Argentina', 2020, 0, 'En excelente estado', 9, 1),
(61, 'Historia del Arte', 11, 1, 'E1', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 5, 1),
(62, 'Ciencias Sociales', 12, 2, 'F2', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 12, 1),
(63, 'Calculo Avanzado', 13, 3, 'A3', 'Rosario-Argentina', 2022, 0, 'Nuevo', 13, 1),
(64, 'FiloSofia contemporanea', 14, 4, 'B4', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 14, 1),
(65, 'Psicologia del Desarrollo 2', 203, 29, 'C5', 'Buenos Aires-Argentina', 2019, 1, 'Como nuevo', 48, 1),
(66, 'Ingles Intermedio', 16, 6, 'D6', 'Cordoba-Argentina', 2021, 1, 'Parte de una serie', 16, 1),
(67, 'Historia Antigua', 17, 7, 'E7', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 5, 1),
(68, 'Algebra Lineal', 18, 8, 'F8', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 1, 1),
(69, 'Educacion Fisica y Salud', 19, 9, 'A9', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 19, 1),
(70, 'tecnologia del Futuro', 20, 10, 'B10', 'Cordoba-Argentina', 2021, 1, 'Parte de una serie', 20, 1),
(71, 'Astronomia Avanzada', 21, 1, 'A1', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 1, 1),
(72, 'Historia de America Latina', 22, 2, 'B2', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 5, 1),
(73, 'Ecologia y Medio Ambiente', 23, 3, 'C3', 'Cordoba-Argentina', 2018, 0, 'En buen estado', 3, 1),
(74, 'Robotica para Niños', 24, 4, 'D4', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 4, 1),
(75, 'Historia de la Musica', 25, 5, 'E5', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 9, 1),
(76, 'Geologia Avanzada', 26, 6, 'F6', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 6, 1),
(77, 'Introduccion a la Robotica', 27, 7, 'A7', 'Rosario-Argentina', 2021, 1, 'Parte de una serie', 7, 1),
(78, 'Ciencias PolÃ­ticas', 28, 8, 'B8', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 8, 1),
(79, 'Programacion para Principiantes', 29, 9, 'C9', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 16, 1),
(80, 'Dibujo ArtÃ­stico', 30, 10, 'D10', 'Cordoba-Argentina', 2022, 0, 'Nuevo', 10, 1),
(81, 'Historia de la Ciencia', 31, 1, 'E1', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 5, 1),
(82, 'Matematicas Aplicadas', 32, 2, 'F2', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 12, 1),
(83, 'Literatura Infantil', 33, 3, 'A3', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 4, 1),
(84, 'Historia del Mundo Antiguo', 34, 4, 'B4', 'Rosario-Argentina', 2020, 0, 'En excelente estado', 5, 1),
(85, 'Ingles Avanzado', 35, 5, 'C5', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 15, 1),
(86, 'Geografia de Argentina', 36, 6, 'D6', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 6, 1),
(87, 'Fisica para Curiosos', 37, 7, 'E7', 'Cordoba-Argentina', 2022, 0, 'Nuevo', 17, 1),
(88, 'Arte ContemporÃ¡neo', 38, 8, 'F8', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 18, 1),
(89, 'InformÃ¡tica Creativa', 39, 9, 'A9', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 19, 1),
(90, 'Musica Popular', 40, 10, 'B10', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 9, 1),
(91, 'Historia de la FiloSofia', 1, 1, 'A1', 'Rosario-Argentina', 2022, 0, 'Nuevo', 5, 1),
(92, 'SociologÃ­a contemporanea', 2, 2, 'B2', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 2, 1),
(93, 'Algebra y GeometrÃ­a', 3, 3, 'C3', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 1, 1),
(94, 'Historia del Cine', 4, 4, 'D4', 'Cordoba-Argentina', 2018, 0, 'En buen estado', 5, 1),
(95, 'BiografÃ­as de CientÃ­ficos', 5, 5, 'E5', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 5, 1),
(96, 'Medicina Preventiva', 6, 6, 'F6', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 6, 1),
(97, 'Astronomia Basica', 7, 7, 'A7', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 7, 1),
(98, 'Introduccion a la Psicologia', 8, 8, 'B8', 'Cordoba-Argentina', 2022, 0, 'Nuevo', 8, 1),
(99, 'Ciencias de la ComunicaciÃ³n', 9, 9, 'C9', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 3, 1),
(100, 'Robotica Avanzada', 10, 10, 'D10', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 10, 1),
(101, 'Geografia del Mundo', 11, 1, 'E1', 'Rosario-Argentina', 2019, 0, 'Como nuevo', 6, 1),
(102, 'Fisica Moderna', 12, 2, 'F2', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 12, 1),
(103, 'Introduccion a la FiloSofia', 13, 3, 'A3', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 13, 1),
(104, 'Historia del Arte ContemporÃ¡neo', 14, 4, 'B4', 'Cordoba-Argentina', 2018, 0, 'En buen estado', 5, 1),
(105, 'Programacion Avanzada', 15, 5, 'C5', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 16, 1),
(106, 'La Sombra del Viento', 43, 1, 'A1', 'Buenos Aires-Argentina', 2005, 0, 'En buen estado', 11, 1),
(107, '1984', 44, 2, 'B2', 'Buenos Aires-Argentina', 1949, 0, 'ClÃ¡sico', 10, 1),
(108, 'Cien Años de Soledad', 45, 3, 'C3', 'Buenos Aires-Argentina', 1967, 0, 'ClÃ¡sico', 11, 1),
(109, 'Matar un RuiseÃ±or', 46, 4, 'D4', 'Buenos Aires-Argentina', 1960, 0, 'ClÃ¡sico', 11, 1),
(110, 'Don Quijote de la Mancha', 42, 5, 'E5', 'Buenos Aires-Argentina', 1605, 1, 'Parte de una serie', 11, 1),
(111, 'Crimen y Castigo', 47, 6, 'F6', 'Buenos Aires-Argentina', 1866, 0, 'ClÃ¡sico', 11, 1),
(112, 'Los Juegos del Hambre', 48, 7, 'A7', 'Rosario-Argentina', 2008, 1, 'Parte de una serie', 10, 1),
(113, 'El SeÃ±or de los Anillos', 49, 8, 'B8', 'Buenos Aires-Argentina', 1954, 1, 'Parte de una serie', 11, 1),
(114, 'El CÃ³digo Da Vinci', 50, 9, 'C9', 'Buenos Aires-Argentina', 2003, 0, 'En buen estado', 11, 1),
(115, 'Harry Potter y la Piedra Filosofal', 51, 10, 'D10', 'Cordoba-Argentina', 1997, 1, 'Parte de una serie - Faltan las ultimas 4 hojas', 11, 1),
(116, 'CrepÃºsculo', 52, 1, 'A1', 'Buenos Aires-Argentina', 2005, 1, 'Parte de una serie', 11, 1),
(117, 'Juego de Tronos', 27, 2, 'B2', 'Buenos Aires-Argentina', 1996, 1, 'Parte de una serie', 11, 1),
(118, 'La Chica del Tren', 65, 3, 'C3', 'Cordoba-Argentina', 2015, 0, 'En buen estado', 11, 1),
(119, 'Maze Runner', 66, 4, 'D4', 'Buenos Aires-Argentina', 2009, 1, 'Parte de una serie', 10, 1),
(120, 'La Carretera', 67, 5, 'E5', 'Buenos Aires-Argentina', 2006, 0, 'Como nuevo', 11, 1),
(121, 'Cazadores de Sombras', 68, 6, 'F6', 'Buenos Aires-Argentina', 2007, 1, 'Parte de una serie', 11, 1),
(122, 'Los Pilares de la Tierra', 58, 7, 'A7', 'Rosario-Argentina', 1989, 1, 'Parte de una serie', 11, 1),
(123, 'El Perfume', 33, 9, 'B8', 'Buenos Aires-Argentina', 1985, 0, 'En buen estado', 11, 1),
(124, 'El Laberinto de los EspÃ­ritus', 43, 9, 'C9', 'Buenos Aires-Argentina', 2016, 1, 'Parte de una serie', 11, 1),
(125, 'Moby Dick', 35, 10, 'D10', 'Cordoba-Argentina', 1851, 0, 'ClÃ¡sico', 11, 1),
(126, 'El Amor en los Tiempos del CÃ³lera', 45, 1, 'A1', 'Buenos Aires-Argentina', 1985, 0, 'En buen estado', 11, 1),
(127, 'La Metamorfosis', 53, 2, 'B2', 'Buenos Aires-Argentina', 1915, 0, 'ClÃ¡sico', 11, 1),
(128, 'Cumbres Borrascosas', 54, 3, 'C3', 'Buenos Aires-Argentina', 1847, 0, 'ClÃ¡sico', 11, 1),
(129, 'CrÃ³nica de una Muerte Anunciada', 45, 4, 'D4', 'Buenos Aires-Argentina', 1981, 0, 'En buen estado', 11, 1),
(130, 'El Gran Gatsby', 55, 5, 'E5', 'Buenos Aires-Argentina', 1925, 0, 'ClÃ¡sico', 11, 1),
(131, 'En el Camino', 56, 6, 'F6', 'Buenos Aires-Argentina', 1957, 0, 'ClÃ¡sico', 11, 1),
(132, 'Los Juegos del Hambre: En Llamas', 48, 7, 'A7', 'Rosario-Argentina', 2009, 1, 'Parte de una serie', 11, 1),
(133, 'El Retrato de Dorian Gray', 8, 8, 'B8', 'Buenos Aires-Argentina', 1890, 0, 'ClÃ¡sico', 11, 1),
(134, 'Los Hombres Me Explican Cosas', 9, 9, 'C9', 'Buenos Aires-Argentina', 2014, 0, 'En buen estado', 11, 1),
(135, 'Harry Potter y la Camara Secreta', 200, 24, NULL, 'Cordoba-Argentina', 1998, 1, 'Parte de una serie', 46, 1),
(136, 'El CÃ³digo Da Vinci', 11, 1, 'A1', 'Buenos Aires-Argentina', 2003, 0, 'En buen estado', 11, 1),
(137, 'Las Ventajas de Ser Invisible', 12, 2, 'B2', 'Buenos Aires-Argentina', 1999, 0, 'En buen estado', 10, 1),
(138, 'El Hobbit', 49, 3, 'C3', 'Buenos Aires-Argentina', 1937, 1, 'Parte de una serie', 11, 1),
(139, 'Las Cenizas de Angela', 14, 4, 'D4', 'Cordoba-Argentina', 1996, 0, 'En buen estado', 11, 1),
(140, 'Sinsajo', 15, 5, 'E5', 'Buenos Aires-Argentina', 2010, 1, 'Parte de una serie', 10, 1),
(141, 'La Carretera', 16, 6, 'F6', 'Buenos Aires-Argentina', 2006, 0, 'Como nuevo', 11, 1),
(142, 'El Jardi­n de las Bestias', 17, 24, 'A7', 'Rosario-Argentina', 2011, 0, 'estado decente', 11, 1),
(143, 'Las Mil y Una Noches', 18, 8, 'B8', 'Buenos Aires-Argentina', 800, 1, 'Parte de una serie', 11, 1),
(144, 'Rayuela', 19, 9, 'C9', 'Buenos Aires-Argentina', 1963, 0, 'ClÃ¡sico', 11, 1),
(145, 'Ficciones', 20, 10, 'D10', 'Cordoba-Argentina', 1944, 0, 'ClÃ¡sico', 10, 1),
(146, 'La Odisea', 1, 1, 'A1', 'Atenas-Grecia', 700, 1, 'Parte de una serie', 11, 1),
(147, 'DrÃ¡cula', 2, 2, 'B2', 'Bucarest-Rumania', 1897, 0, 'ClÃ¡sico', 11, 1),
(148, 'La Iliada', 3, 3, 'C3', 'Troya-TurquÃ­a', 800, 1, 'Parte de una serie', 11, 1),
(149, 'La Naranja MecÃ¡nica', 4, 4, 'D4', 'Londres-Reino Unido', 1962, 0, 'En buen estado', 10, 1),
(150, 'Crimen y Castigo', 5, 5, 'E5', 'San Petersburgo-Rusia', 1866, 0, 'ClÃ¡sico', 11, 1),
(151, 'El Gran Gatsby', 6, 6, 'F6', 'Nueva York-EE. UU.', 1925, 0, 'ClÃ¡sico', 8, 1),
(152, 'El Retrato de Dorian Gray', 7, 7, 'A7', 'Londres-Reino Unido', 1890, 0, 'ClÃ¡sico', 11, 0),
(153, 'Los Juegos del Hambre: Sinsajo', 8, 8, 'B8', 'Rosario-Argentina', 2010, 1, 'Parte de una serie', 10, 0),
(154, 'Las Aventuras de Sherlock Holmes', 9, 9, 'C9', 'Londres-Reino Unido', 1892, 1, 'Parte de una serie', 11, 0),
(155, 'It', 10, 10, 'D10', 'Derry-EE. UU.', 1986, 1, 'Parte de una serie', 11, 0),
(156, 'Don Quijote de la Mancha', 42, 1, 'A1', 'Madrid-España', 1605, 1, 'Parte de una serie', 11, 0),
(157, 'La Celestina', 12, 2, 'B2', 'Salamanca-España', 1499, 0, 'ClÃ¡sico', 11, 0),
(158, 'Los Miserables', 13, 3, 'C3', 'ParÃ­s-Francia', 1862, 0, 'ClÃ¡sico', 11, 0),
(159, 'Las Brujas', 14, 4, 'D4', 'Oslo-Noruega', 1983, 0, 'En buen estado', 11, 0),
(160, 'La Metamorfosis', 15, 5, 'E5', 'Praga-RepÃºblica Checa', 1915, 0, 'ClÃ¡sico', 11, 0),
(161, 'Algebra 1', 13, 1, 'A1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(162, 'Algebra 2', 13, 1, 'B1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(163, 'Algebra 3', 13, 1, 'C1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(164, 'GeometrÃ­a 1', 13, 1, 'D1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(165, 'GeometrÃ­a 2', 13, 1, 'E1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(166, 'TrigonometrÃ­a 1', 13, 1, 'F1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(167, 'TrigonometrÃ­a 2', 13, 1, 'A2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(168, 'Calculo 1', 13, 1, 'B2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(169, 'Calculo 2', 13, 1, 'C2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(170, 'Calculo 3', 13, 1, 'D2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(171, 'Fisica 1', 14, 1, 'E2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 7, 0),
(172, 'Fisica 2', 14, 1, 'F2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 7, 0),
(173, 'Fisica 3', 14, 1, 'A3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 7, 0),
(174, 'Quimica 1', 15, 1, 'B3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 12, 0),
(175, 'Quimica 2', 15, 1, 'C3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 12, 0),
(176, 'Bilogia 1', 16, 1, 'D3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(177, 'Bilogia 2', 16, 1, 'E3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(178, 'Historia 1', 17, 1, 'F3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(179, 'Historia 2', 17, 1, 'A4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(180, 'Geografia 3', 18, 1, 'B4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 6, 0),
(181, 'Literatura 1', 19, 1, 'C4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(182, 'Literatura 2', 19, 1, 'D4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(183, 'Literatura 3', 19, 1, 'E4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(184, 'Ingles 1', 20, 1, 'F4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(185, 'Ingles 2', 20, 1, 'A5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(186, 'Ingles 3', 20, 1, 'B5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(187, 'Arte 1', 21, 1, 'C5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 18, 0),
(188, 'Arte 2', 21, 1, 'D5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 18, 0),
(189, 'Arte 3', 21, 1, 'E5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 18, 0),
(191, 'Educacion Fisica 2', 22, 1, 'A6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(192, 'Educacion Fisica 3', 22, 1, 'B6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(193, 'Musica 1', 23, 1, 'C6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(194, 'Musica 2', 23, 1, 'D6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(195, 'Musica 3', 23, 1, 'E6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(196, 'InformÃ¡tica 1', 24, 1, 'F6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(197, 'InformÃ¡tica 2', 24, 1, 'A7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(198, 'InformÃ¡tica 3', 24, 1, 'B7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(199, 'Psicologia 1', 25, 1, 'C7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(200, 'Psicologia 2', 25, 1, 'D7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(201, 'Psicologia 3', 25, 1, 'E7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(202, 'ComunicaciÃ³n 1', 26, 1, 'F7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(203, 'ComunicaciÃ³n 2', 26, 1, 'A8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(204, 'ComunicaciÃ³n 3', 26, 1, 'B8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(205, 'Robotica 1', 27, 1, 'C8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(206, 'Robotica 2', 27, 1, 'D8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(207, 'Robotica 3', 27, 1, 'E8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(208, 'Geografia 4', 28, 1, 'F8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 6, 0),
(209, 'Historia 3', 29, 1, 'A9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(210, 'Literatura 4', 30, 1, 'B9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(211, 'Ingles 4', 31, 1, 'C9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(212, 'Educacion Fisica 4', 32, 1, 'D9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(213, 'Musica 4', 33, 1, 'E9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(214, 'InformÃ¡tica 4', 34, 1, 'F9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(215, 'Psicologia 4', 35, 1, 'A10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(216, 'ComunicaciÃ³n 4', 36, 1, 'B10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(217, 'Robotica 4', 37, 1, 'C10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(218, 'Geografia 5', 38, 1, 'D10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 6, 0),
(219, 'Historia 4', 39, 1, 'E10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(220, 'Literatura 5', 40, 1, 'F10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(221, 'Ingles 5', 13, 1, 'A11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(222, 'Educacion Fisica 5', 14, 1, 'B11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(223, 'Musica 5', 15, 1, 'C11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(224, 'InformÃ¡tica 5', 16, 1, 'D11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(225, 'Psicologia 5', 17, 1, 'E11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(226, 'ComunicaciÃ³n 5', 18, 1, 'F11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(227, 'Matematicas Avanzadas', 1, 1, 'A1', 'Buenos Aires-Argentina', 2022, 0, 'Buen estado, reciente', 1, 1),
(228, 'Historia Universal', 4, 3, 'D4', 'Ciudad de Mejico-Mejico', 2019, 0, 'Algunas paginas sueltas', 5, 1),
(229, 'Ciencias Naturales para Jovenes', 2, 2, 'B2', 'Bogota-Colombia', 2020, 0, 'En buen estado', 2, 1),
(230, 'Literatura Clasica', 5, 5, 'F6', 'Madrid-España', 2005, 0, 'Antiguo, pero bien conservado', 4, 1),
(231, 'Geografia Mundial', 3, 4, 'C3', 'Lima-Peru', 2010, 0, 'Con marcas de uso', 6, 1),
(232, 'Arte y Creatividad', 6, 6, 'A7', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 7, 1),
(233, 'Musica para Adolescentes', 7, 8, 'E8', 'Montevideo-Uruguay', 2015, 0, 'En excelente estado', 9, 1),
(234, 'La Odisea del Espacio', 10, 9, 'D5', 'Barcelona-España', 1970, 1, 'Parte de una serie Clasica', 10, 1),
(235, 'Quimica para Principiantes', 12, 10, 'C2', 'Santiago-Chile', 2023, 0, 'Nuevo, nunca usado', 12, 1),
(236, 'Fisica Avanzada', 11, 7, 'B1', 'Buenos Aires-Argentina', 2018, 0, 'Con anotaciones', 13, 1),
(237, 'Ingles Intermedio', 16, 9, 'F2', 'Londres-Reino Unido', 2019, 0, 'Buen estado, incluye CD', 16, 1),
(238, 'Programacion para Niños', 20, 7, 'E3', 'San Francisco-EE. UU.', 2022, 0, 'Novedad en tecnologia', 16, 1),
(239, 'Educacion Civica', 18, 5, 'A5', 'Buenos Aires-Argentina', 2015, 0, 'Con notas del propietario anterior', 18, 1),
(240, 'Religion y Valores', 19, 6, 'C7', 'Ciudad de Mejico-Mejico', 2020, 0, 'Buen estado, con ilustraciones', 19, 1),
(241, 'Economia Basica', 23, 10, 'B6', 'Madrid-España', 2018, 0, 'Con ejemplos practicos', 20, 1),
(242, 'Historias de Ciencia Ficcion', 31, 4, 'D1', 'Buenos Aires-Argentina', 1987, 1, 'Parte de una serie', 5, 1),
(243, 'Aventuras en la Selva', 28, 3, 'A8', 'Manaus-Brasil', 2019, 0, 'Libro de tapa dura', 8, 1),
(244, 'Lengua y Literatura Moderna', 27, 2, 'F8', 'Buenos Aires-Argentina', 2021, 0, 'Incluye poesia contemporanea', 4, 1),
(245, 'FenÃ³menos Naturales', 32, 1, 'E4', 'Santiago-Chile', 2020, 0, 'Ilustraciones a color', 2, 1),
(246, 'Sociedad y Cultura', 40, 8, 'C8', 'Buenos Aires-Argentina', 2017, 0, 'Libro de consulta', 5, 1),
(247, 'Historias del Mundo Antiguo', 37, 10, 'D6', 'Atenas-Grecia', 1995, 1, 'Parte de una serie', 5, 1),
(248, 'Misterios del Universo', 35, 7, 'B4', 'Houston-EE. UU.', 2022, 0, 'Con fotografÃ­as de la NASA', 1, 1),
(249, 'Pintura y Creatividad', 36, 9, 'A3', 'ParÃ­s-Francia', 2016, 0, 'GuÃ­a de arte', 7, 1),
(250, 'Musica Clasica para Niños', 33, 4, 'E2', 'Viena-Austria', 2018, 0, 'Incluye CD de Musica', 9, 1),
(251, 'El Espacio y los Planetas', 38, 3, 'C1', 'Buenos Aires-Argentina', 2019, 0, 'Libro de divulgaciÃ³n cientÃ­fica', 2, 1),
(252, 'Etica en la Sociedad Moderna', 34, 5, 'F5', 'Madrid-España', 2020, 0, 'Discute dilemas morales', 17, 1),
(253, 'Quimica Divertida', 26, 6, 'D8', 'Bogota-Colombia', 2021, 0, 'Experimentos para Niños', 12, 1),
(254, 'Fisica para Curiosos', 24, 8, 'A2', 'Buenos Aires-Argentina', 2017, 0, 'Con ejemplos practicos', 13, 1),
(255, 'Historias de Viajes', 30, 10, 'B3', 'Roma-Italia', 2019, 1, 'Parte de una serie', 5, 1),
(256, 'Aventuras en el Espacio', 29, 7, 'E6', 'Houston-EE. UU.', 2023, 0, 'Con ilustraciones de astronautas', 1, 1),
(257, 'Matematicas para Todos', 25, 9, 'C5', 'Buenos Aires-Argentina', 2020, 0, 'Incluye ejercicios resueltos', 1, 1),
(258, 'Historias de Ã‰poca', 21, 4, 'F3', 'Londres-Reino Unido', 2018, 1, 'Parte de una serie', 5, 1),
(259, 'Cuentos de Ciencia Ficcion', 39, 3, 'D7', 'Buenos Aires-Argentina', 1992, 1, 'ClÃ¡sicos de la ciencia Ficcion', 10, 1),
(260, 'Arte y Creatividad en la Historia', 22, 2, 'A4', 'ParÃ­s-Francia', 2015, 0, 'Ilustraciones de obras famosas', 5, 1),
(261, 'Musica para Jovenes Talentos', 20, 1, 'E7', 'Viena-Austria', 2021, 0, 'Partituras y consejos para mÃºsicos Jovenes', 9, 1),
(262, 'El Universo en ImÃ¡genes', 17, 10, 'B7', 'Houston-EE. UU.', 2020, 0, 'FotografÃ­as astronÃ³micas', 1, 1),
(263, 'Economia para Principiantes', 15, 7, 'D2', 'Buenos Aires-Argentina', 2019, 0, 'Introduccion a la Economia', 20, 1),
(264, 'El Arte de la NegociaciÃ³n', 13, 6, 'A1', 'Nueva York-EE. UU.', 2020, 0, 'Estrategias comerciales', 19, 1),
(265, 'Religion en el Mundo Moderno', 14, 5, 'C4', 'Roma-Italia', 2018, 0, 'Comparativa de religiones', 19, 1),
(266, 'Historia de las Civilizaciones', 12, 4, 'F1', 'Atenas-Grecia', 2021, 0, 'Resumen histÃ³rico', 5, 1),
(267, 'Aventuras en el OcÃ©ano', 11, 3, 'E5', 'Santiago-Chile', 2019, 1, 'Parte de una serie', 5, 1),
(268, 'Astronomia para Niños', 9, 2, 'B8', 'Buenos Aires-Argentina', 2020, 0, 'Descubre las estrellas', 2, 1),
(269, 'Los Grandes ClÃ¡sicos Literarios', 8, 1, 'C6', 'Madrid-España', 2017, 0, 'AntologÃ­a literaria', 3, 1),
(270, 'Geografia de Aventuras', 7, 10, 'A6', 'Buenos Aires-Argentina', 2019, 1, 'Parte de una serie', 6, 1),
(271, 'Ciencia y tecnologia del Futuro', 6, 9, 'D4', 'San Francisco-EE. UU.', 2022, 0, 'Predicciones tecnolÃ³gicas', 17, 1),
(272, 'Misterios del Pasado', 5, 8, 'F4', 'Mejico D.F.-Mejico', 2016, 1, 'Parte de una serie', 4, 1),
(273, 'Lengua y Literatura Clasica', 4, 7, 'E1', 'Roma-Italia', 2018, 0, 'Textos clÃ¡sicos', 4, 1),
(274, 'El Universo en NÃºmeros', 3, 6, 'B5', 'Madrid-España', 2020, 0, 'Matematicas y cosmologÃ­a', 1, 1),
(275, 'Arte y Pintura Moderna', 2, 5, 'C3', 'Nueva York-EE. UU.', 2019, 0, 'Movimientos artÃ­sticos contemporÃ¡neos', 7, 1),
(276, 'Musica en la Cultura Mundial', 1, 4, 'A3', 'Londres-Reino Unido', 2021, 0, 'Diversidad musical global', 9, 1),
(277, 'Matematicas para Principiantes', 1, 1, 'A1', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 1, 1),
(278, 'Historia del Siglo XX', 2, 2, 'B2', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 5, 1),
(279, 'Bilogia Avanzada', 3, 3, 'C3', 'Cordoba-Argentina', 2019, 0, 'Como nuevo', 3, 1),
(280, 'Quimica para Jovenes CientÃ­ficos', 4, 4, 'D4', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 12, 1),
(281, 'Literatura Universal', 5, 5, 'E5', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 4, 1),
(282, 'Geografia Mundial', 6, 6, 'F6', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 6, 1),
(283, 'Fisica Cuantica', 7, 7, 'A7', 'Rosario-Argentina', 2017, 0, 'En buen estado', 7, 1),
(284, 'Arte Moderno', 8, 8, 'B8', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 8, 1),
(285, 'InformÃ¡tica Basica', 9, 9, 'C9', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 9, 1),
(286, 'Musica Clasica', 10, 10, 'D10', 'Cordoba-Argentina', 2020, 0, 'En excelente estado', 9, 1),
(287, 'Historia del Arte', 11, 1, 'E1', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 5, 1),
(288, 'Ciencias Sociales', 12, 2, 'F2', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 12, 1),
(289, 'Calculo Avanzado', 13, 3, 'A3', 'Rosario-Argentina', 2022, 0, 'Nuevo', 13, 1),
(290, 'FiloSofia contemporanea', 14, 4, 'B4', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 14, 1),
(291, 'Psicologia del Desarrollo', 15, 5, 'C5', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 15, 1),
(292, 'Ingles Intermedio', 16, 6, 'D6', 'Cordoba-Argentina', 2021, 1, 'Parte de una serie', 16, 1),
(293, 'Historia Antigua', 17, 7, 'E7', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 5, 1),
(294, 'Algebra Lineal', 18, 8, 'F8', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 1, 1),
(295, 'Educacion Fisica y Salud', 19, 9, 'A9', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 19, 1),
(296, 'tecnologia del Futuro', 20, 10, 'B10', 'Cordoba-Argentina', 2021, 1, 'Parte de una serie', 20, 1),
(297, 'Astronomia Avanzada', 21, 1, 'A1', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 1, 1),
(298, 'Historia de America Latina', 22, 2, 'B2', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 5, 1),
(299, 'Ecologia y Medio Ambiente', 23, 3, 'C3', 'Cordoba-Argentina', 2018, 0, 'En buen estado', 3, 1),
(300, 'Robotica para Niños', 24, 4, 'D4', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 4, 1),
(301, 'Historia de la Musica', 25, 5, 'E5', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 9, 1),
(302, 'Geologia Avanzada', 26, 6, 'F6', 'Buenos Aires-Argentina', 2022, 0, 'Nuevo', 6, 1),
(303, 'Introduccion a la Robotica', 27, 7, 'A7', 'Rosario-Argentina', 2021, 1, 'Parte de una serie', 7, 1),
(304, 'Ciencias PolÃ­ticas', 28, 8, 'B8', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 8, 1),
(305, 'Programacion para Principiantes', 29, 9, 'C9', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 16, 1),
(306, 'Dibujo ArtÃ­stico', 30, 10, 'D10', 'Cordoba-Argentina', 2022, 0, 'Nuevo', 10, 1),
(307, 'Historia de la Ciencia', 31, 1, 'E1', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 5, 1),
(308, 'Matematicas Aplicadas', 32, 2, 'F2', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 12, 1),
(309, 'Literatura Infantil', 33, 3, 'A3', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 4, 1),
(310, 'Historia del Mundo Antiguo', 34, 4, 'B4', 'Rosario-Argentina', 2020, 0, 'En excelente estado', 5, 1),
(311, 'Ingles Avanzado', 35, 5, 'C5', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 15, 1),
(312, 'Geografia de Argentina', 36, 6, 'D6', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 6, 1),
(313, 'Fisica para Curiosos', 37, 7, 'E7', 'Cordoba-Argentina', 2022, 0, 'Nuevo', 17, 1),
(314, 'Arte ContemporÃ¡neo', 38, 8, 'F8', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 18, 1),
(315, 'InformÃ¡tica Creativa', 39, 9, 'A9', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 19, 1),
(316, 'Musica Popular', 40, 10, 'B11', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 9, 1),
(317, 'Historia de la FiloSofia', 1, 1, 'A1', 'Rosario-Argentina', 2022, 0, 'Nuevo', 5, 1),
(318, 'SociologÃ­a contemporanea', 2, 2, 'B2', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 2, 1),
(319, 'Algebra y GeometrÃ­a', 3, 3, 'C3', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 1, 1),
(320, 'Historia del Cine', 4, 4, 'D4', 'Cordoba-Argentina', 2018, 0, 'En buen estado', 5, 1),
(321, 'BiografÃ­as de CientÃ­ficos', 5, 5, 'E5', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 5, 1),
(322, 'Medicina Preventiva', 6, 6, 'F6', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 6, 1),
(323, 'Astronomia Basica', 7, 7, 'A7', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 7, 1),
(324, 'Introduccion a la Psicologia', 8, 8, 'B8', 'Cordoba-Argentina', 2022, 0, 'Nuevo', 8, 1),
(325, 'Ciencias de la ComunicaciÃ³n', 9, 9, 'C9', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 3, 1),
(326, 'Robotica Avanzada', 10, 10, 'D10', 'Buenos Aires-Argentina', 2018, 0, 'En buen estado', 10, 1),
(327, 'Geografia del Mundo', 11, 1, 'E1', 'Rosario-Argentina', 2019, 0, 'Como nuevo', 6, 1),
(328, 'Fisica Moderna', 12, 2, 'F2', 'Buenos Aires-Argentina', 2020, 0, 'En excelente estado', 12, 1),
(329, 'Introduccion a la FiloSofia', 13, 3, 'A3', 'Buenos Aires-Argentina', 2021, 1, 'Parte de una serie', 13, 1),
(330, 'Historia del Arte ContemporÃ¡neo', 14, 4, 'B4', 'Cordoba-Argentina', 2018, 0, 'En buen estado', 5, 1),
(331, 'Programacion Avanzada', 15, 5, 'C5', 'Buenos Aires-Argentina', 2019, 0, 'Como nuevo', 16, 1),
(332, 'La Sombra del Viento', 43, 1, 'A1', 'Buenos Aires-Argentina', 2005, 0, 'En buen estado', 11, 1),
(333, '1984', 44, 2, 'B2', 'Buenos Aires-Argentina', 1949, 0, 'ClÃ¡sico', 10, 1),
(334, 'Cien Años de Soledad', 45, 3, 'C3', 'Buenos Aires-Argentina', 1967, 0, 'ClÃ¡sico', 11, 1),
(335, 'Matar un RuiseÃ±or', 46, 4, 'D4', 'Buenos Aires-Argentina', 1960, 0, 'ClÃ¡sico', 11, 1),
(336, 'Don Quijote de la Mancha', 42, 5, 'E5', 'Buenos Aires-Argentina', 1605, 1, 'Parte de una serie', 11, 1),
(337, 'Crimen y Castigo', 47, 6, 'F6', 'Buenos Aires-Argentina', 1866, 0, 'ClÃ¡sico', 11, 1),
(338, 'Los Juegos del Hambre', 48, 7, 'A7', 'Rosario-Argentina', 2008, 1, 'Parte de una serie', 10, 1),
(339, 'El SeÃ±or de los Anillos', 49, 8, 'B8', 'Buenos Aires-Argentina', 1954, 1, 'Parte de una serie', 11, 1),
(340, 'El CÃ³digo Da Vinci', 50, 9, 'C9', 'Buenos Aires-Argentina', 2003, 0, 'En buen estado', 11, 1),
(341, 'Harry Potter y la Piedra Filosofal', 51, 10, 'D10', 'Cordoba-Argentina', 1997, 1, 'Parte de una serie', 11, 1),
(342, 'CrepÃºsculo', 52, 1, 'A1', 'Buenos Aires-Argentina', 2005, 1, 'Parte de una serie', 11, 1),
(343, 'Juego de Tronos', 27, 2, 'B2', 'Buenos Aires-Argentina', 1996, 1, 'Parte de una serie', 11, 1),
(344, 'La Chica del Tren', 65, 3, 'C3', 'Cordoba-Argentina', 2015, 0, 'En buen estado', 11, 1),
(345, 'Maze Runner', 66, 4, 'D4', 'Buenos Aires-Argentina', 2009, 1, 'Parte de una serie', 10, 1),
(346, 'La Carretera', 67, 5, 'E5', 'Buenos Aires-Argentina', 2006, 0, 'Como nuevo', 11, 1),
(347, 'Cazadores de Sombras', 68, 6, 'F6', 'Buenos Aires-Argentina', 2007, 1, 'Parte de una serie', 11, 1),
(348, 'Los Pilares de la Tierra', 58, 7, 'A7', 'Rosario-Argentina', 1989, 1, 'Parte de una serie', 11, 1),
(349, 'El Perfume', 33, 9, 'B8', 'Buenos Aires-Argentina', 1985, 0, 'En buen estado', 11, 1),
(350, 'El Laberinto de los EspÃ­ritus', 43, 9, 'C9', 'Buenos Aires-Argentina', 2016, 1, 'Parte de una serie', 11, 1),
(351, 'Moby Dick', 35, 10, 'D10', 'Cordoba-Argentina', 1851, 0, 'ClÃ¡sico', 11, 1),
(352, 'El Amor en los Tiempos del CÃ³lera', 45, 1, 'A1', 'Buenos Aires-Argentina', 1985, 0, 'En buen estado', 11, 1),
(353, 'La Metamorfosis', 53, 2, 'B2', 'Buenos Aires-Argentina', 1915, 0, 'ClÃ¡sico', 11, 1),
(354, 'Cumbres Borrascosas', 54, 3, 'C3', 'Buenos Aires-Argentina', 1847, 0, 'ClÃ¡sico', 11, 1),
(355, 'CrÃ³nica de una Muerte Anunciada', 45, 4, 'D4', 'Buenos Aires-Argentina', 1981, 0, 'En buen estado', 11, 1),
(356, 'El Gran Gatsby', 55, 5, 'E5', 'Buenos Aires-Argentina', 1925, 0, 'ClÃ¡sico', 11, 1),
(357, 'En el Camino', 56, 6, 'F6', 'Buenos Aires-Argentina', 1957, 0, 'ClÃ¡sico', 11, 1),
(358, 'Los Juegos del Hambre: En Llamas', 48, 7, 'A7', 'Rosario-Argentina', 2009, 1, 'Parte de una serie', 11, 1),
(359, 'El Retrato de Dorian Gray', 8, 8, 'B8', 'Buenos Aires-Argentina', 1890, 0, 'ClÃ¡sico', 11, 1),
(360, 'Los Hombres Me Explican Cosas', 9, 9, 'C9', 'Buenos Aires-Argentina', 2014, 0, 'En buen estado', 11, 1),
(361, 'Harry Potter y la Camara Secreta', 197, 24, NULL, 'Cordoba-Argentina', 1998, 1, 'Parte de una serie', 11, 1),
(362, 'El CÃ³digo Da Vinci', 11, 1, 'A1', 'Buenos Aires-Argentina', 2003, 0, 'En buen estado', 11, 1),
(363, 'Las Ventajas de Ser Invisible', 12, 2, 'B2', 'Buenos Aires-Argentina', 1999, 0, 'En buen estado', 10, 1),
(364, 'El Hobbit', 49, 3, 'C3', 'Buenos Aires-Argentina', 1937, 1, 'Parte de una serie', 11, 1),
(365, 'Las Cenizas de Angela', 14, 4, 'D4', 'Cordoba-Argentina', 1996, 0, 'En buen estado', 11, 1),
(366, 'Sinsajo', 15, 5, 'E5', 'Buenos Aires-Argentina', 2010, 1, 'Parte de una serie', 10, 1),
(367, 'La Carretera', 16, 6, 'F6', 'Buenos Aires-Argentina', 2006, 0, 'Como nuevo', 11, 1),
(368, 'El Jardi­n de las Bestias', 17, 24, 'A7', 'Rosario-Argentina', 2011, 0, 'En buen estado', 11, 1),
(369, 'Las Mil y Una Noches', 18, 8, 'B8', 'Buenos Aires-Argentina', 800, 1, 'Parte de una serie', 11, 1),
(370, 'Rayuela', 19, 9, 'C9', 'Buenos Aires-Argentina', 1963, 0, 'ClÃ¡sico', 11, 1),
(371, 'Ficciones', 20, 10, 'D10', 'Cordoba-Argentina', 1944, 0, 'ClÃ¡sico', 10, 1),
(372, 'La Odisea', 1, 1, 'A1', 'Atenas-Grecia', 700, 1, 'Parte de una serie', 11, 1),
(373, 'DrÃ¡cula', 2, 2, 'B2', 'Bucarest-Rumania', 1897, 0, 'ClÃ¡sico', 11, 1),
(374, 'La Iliada', 3, 3, 'C3', 'Troya-TurquÃ­a', 800, 1, 'Parte de una serie', 11, 1),
(375, 'La Naranja MecÃ¡nica', 4, 4, 'D4', 'Londres-Reino Unido', 1962, 0, 'En buen estado', 10, 1),
(376, 'Crimen y Castigo', 5, 5, 'E5', 'San Petersburgo-Rusia', 1866, 0, 'ClÃ¡sico', 11, 1),
(377, 'El Gran Gatsby', 6, 6, 'F6', 'Nueva York-EE. UU.', 1925, 0, 'ClÃ¡sico', 8, 1),
(378, 'El Retrato de Dorian Gray', 7, 7, 'A7', 'Londres-Reino Unido', 1890, 0, 'ClÃ¡sico', 11, 0),
(379, 'Los Juegos del Hambre: Sinsajo', 8, 8, 'B8', 'Rosario-Argentina', 2010, 1, 'Parte de una serie', 10, 0),
(380, 'Las Aventuras de Sherlock Holmes', 9, 9, 'C9', 'Londres-Reino Unido', 1892, 1, 'Parte de una serie', 11, 0),
(381, 'It', 10, 10, 'D10', 'Derry-EE. UU.', 1986, 1, 'Parte de una serie', 11, 0),
(382, 'Don Quijote de la Mancha', 42, 1, 'A1', 'Madrid-España', 1605, 1, 'Parte de una serie', 11, 0),
(383, 'La Celestina', 12, 2, 'B2', 'Salamanca-España', 1499, 0, 'ClÃ¡sico', 11, 0),
(384, 'Los Miserables', 13, 3, 'C3', 'ParÃ­s-Francia', 1862, 0, 'ClÃ¡sico', 11, 0),
(385, 'Las Brujas', 14, 4, 'D4', 'Oslo-Noruega', 1983, 0, 'En buen estado', 11, 0),
(386, 'La Metamorfosis', 15, 5, 'E5', 'Praga-RepÃºblica Checa', 1915, 0, 'ClÃ¡sico', 11, 0),
(387, 'Algebra 1', 13, 1, 'A1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(388, 'Algebra 2', 13, 1, 'B1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(389, 'Algebra 3', 13, 1, 'C1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(390, 'GeometrÃ­a 1', 13, 1, 'D1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(391, 'GeometrÃ­a 2', 13, 1, 'E1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(392, 'TrigonometrÃ­a 1', 13, 1, 'F1', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(393, 'TrigonometrÃ­a 2', 13, 1, 'A2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(394, 'Calculo 1', 13, 1, 'B2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(395, 'Calculo 2', 13, 1, 'C2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(396, 'Calculo 3', 13, 1, 'D2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 1, 0),
(397, 'Fisica 1', 14, 1, 'E2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 7, 0),
(398, 'Fisica 2', 14, 1, 'F2', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 7, 0),
(399, 'EDITAREDITAR', 1, 1, 'EDITAREDITAR', '1', 1, 1, 'EDITAREDITAREDITAREDITAR', 1, 0),
(400, 'Quimica 1', 15, 1, 'B3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 12, 0),
(401, 'Quimica 2', 15, 1, 'C3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 12, 0),
(402, 'Bilogia 1', 16, 1, 'D3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(403, 'Bilogia 2', 16, 1, 'E3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(404, 'Historia 1', 17, 1, 'F3', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(405, 'Historia 2', 17, 1, 'A4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(406, 'Geografia 3', 18, 1, 'B4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 6, 0),
(407, 'Literatura 1', 19, 1, 'C4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(408, 'Literatura 2', 19, 1, 'D4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(409, 'Literatura 3', 19, 1, 'E4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(410, 'Ingles 1', 20, 1, 'F4', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(411, 'Ingles 2', 20, 1, 'A5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(412, 'Ingles 3', 20, 1, 'B5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(413, 'Arte 1', 21, 1, 'C5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 18, 0),
(414, 'Arte 2', 21, 1, 'D5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 18, 0),
(415, 'Arte 3', 21, 1, 'E5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 18, 0),
(416, 'Educacion Fisica 1', 22, 1, 'F5', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(417, 'Educacion Fisica 2', 22, 1, 'A6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(418, 'Educacion Fisica 3', 22, 1, 'B6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(419, 'Musica 1', 23, 1, 'C6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(420, 'Musica 2', 23, 1, 'D6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(421, 'Musica 3', 23, 1, 'E6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(422, 'InformÃ¡tica 1', 24, 1, 'F6', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(423, 'InformÃ¡tica 2', 24, 1, 'A7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(424, 'InformÃ¡tica 3', 24, 1, 'B7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(425, 'Psicologia 1', 25, 1, 'C7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(426, 'Psicologia 2', 25, 1, 'D7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(427, 'Psicologia 3', 25, 1, 'E7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(428, 'ComunicaciÃ³n 1', 26, 1, 'F7', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(429, 'ComunicaciÃ³n 2', 26, 1, 'A8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(430, 'ComunicaciÃ³n 3', 26, 1, 'B8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(431, 'Robotica 1', 27, 1, 'C8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(432, 'Robotica 2', 27, 1, 'D8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(433, 'Robotica 3', 27, 1, 'E8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(434, 'Geografia 4', 28, 1, 'F8', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 6, 0),
(435, 'Historia 3', 29, 1, 'A9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(436, 'Literatura 4', 30, 1, 'B9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(437, 'Ingles 4', 31, 1, 'C9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(438, 'Educacion Fisica 4', 32, 1, 'D9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(439, 'Musica 4', 33, 1, 'E9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(440, 'InformÃ¡tica 4', 34, 1, 'F9', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(441, 'Psicologia 4', 35, 1, 'A10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(442, 'ComunicaciÃ³n 4', 36, 1, 'B10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(443, 'Robotica 4', 37, 1, 'C10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 10, 0),
(444, 'Geografia 5', 38, 1, 'D10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 6, 0),
(445, 'Historia 4', 39, 1, 'E10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 5, 0),
(446, 'Literatura 5', 40, 1, 'F10', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 4, 0),
(447, 'Ingles 5', 13, 1, 'A11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 16, 0),
(448, 'Educacion Fisica 5', 14, 1, 'B11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(449, 'Musica 5', 15, 1, 'C11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 9, 0),
(450, 'InformÃ¡tica 5', 16, 1, 'D11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 19, 0),
(451, 'Psicologia 5', 17, 1, 'E11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 8, 0),
(452, 'ComunicaciÃ³n 5', 18, 1, 'F11', 'Buenos Aires-Argentina', 2023, 1, 'Parte de una serie', 3, 0),
(467, 'Harry el Sucio', 193, 24, 'A44', 'Argentina', 2021, 0, 'Paginas rayadas', 11, 1),
(472, 'Yo Claudio', 204, 24, 'A44', 'Argentina', 2011, 1, 'Roma', 5, 1),
(475, 'Julio Julio Julio', 222, 49, 'A44', 'Argentina', 2000, 0, 'Buen estado', 11, 1),
(476, 'Julio en Julio', 18, 24, 'A44', 'Argentina', 2002, 0, 'es un plagio', 11, 1),
(477, 'Argentina y mas', 229, 51, 'a12', 'Buenos Aires-Argewntina', 1989, 1, 'desactializado', 5, 1),
(478, 'Cuarto Laboratorio', 230, 24, 'A31', 'Concordia-ER-Argentina', 2023, 1, 'prueba en clase', 68, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros_reservas`
--

CREATE TABLE `libros_reservas` (
  `idLibro` int(11) NOT NULL,
  `idReserva` int(11) NOT NULL,
  `libros_Reservas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `libros_reservas`
--

INSERT INTO `libros_reservas` (`idLibro`, `idReserva`, `libros_Reservas`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(1, 1, 26),
(2, 2, 27),
(3, 3, 28),
(4, 4, 29),
(5, 5, 30),
(6, 6, 31),
(7, 7, 32),
(8, 8, 33),
(9, 9, 34),
(10, 10, 35),
(11, 11, 36),
(12, 12, 37),
(13, 13, 38),
(14, 14, 39),
(15, 15, 40),
(16, 16, 41),
(17, 17, 42),
(18, 18, 43),
(19, 19, 44),
(20, 20, 45),
(21, 21, 46),
(22, 22, 47),
(23, 23, 48),
(24, 24, 49),
(25, 25, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `idMateria` int(11) NOT NULL,
  `materia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`idMateria`, `materia`) VALUES
(1, 'Matematicas'),
(2, 'Ciencias Naturales'),
(3, 'Ciencias Sociales'),
(4, 'Lengua y Literatura'),
(5, 'Historia'),
(6, 'Geografia'),
(7, 'Educacion Fisica'),
(8, 'Arte'),
(9, 'Musica'),
(10, 'Ciencia Ficcion'),
(11, 'Novelas'),
(12, 'Quimica'),
(13, 'Fisica'),
(14, 'Bilogia'),
(15, 'Ingles'),
(16, 'tecnologia'),
(17, 'Etica y Ciudadania'),
(18, 'Educacion Civica'),
(19, 'Religion'),
(20, 'Economia'),
(21, 'Varios'),
(22, 'Matematicas'),
(23, 'Ciencias Naturales'),
(24, 'Ciencias Sociales'),
(25, 'Lengua y Literatura'),
(26, 'Historia'),
(27, 'Geografia'),
(28, 'Educacion Fisica'),
(29, 'Arte'),
(30, 'Musica'),
(31, 'Ciencia Ficcion'),
(32, 'Novelas'),
(33, 'Quimica'),
(34, 'Fisica'),
(35, 'Bilogia'),
(36, 'Ingles'),
(37, 'tecnologia'),
(38, 'Etica y Ciudadania'),
(39, 'Educacion Civica'),
(40, 'Religion'),
(41, 'Economia'),
(42, 'Fantasia'),
(43, '1'),
(44, '0'),
(45, ''),
(46, 'novela'),
(47, NULL),
(48, NULL),
(49, NULL),
(50, 'GoieG'),
(51, NULL),
(52, NULL),
(53, NULL),
(54, NULL),
(55, NULL),
(56, NULL),
(57, NULL),
(58, NULL),
(59, NULL),
(64, 'Calistenia'),
(65, NULL),
(66, NULL),
(67, NULL),
(68, 'Informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `idPrestamo` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `fechaVencimiento` datetime DEFAULT NULL,
  `fechaDevolucion` datetime DEFAULT NULL,
  `idUsuarios` int(11) NOT NULL,
  `tipoPrestamos` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`idPrestamo`, `fecha`, `fechaVencimiento`, `fechaDevolucion`, `idUsuarios`, `tipoPrestamos`) VALUES
(1, '2023-09-15 00:00:00', '2023-09-22 00:00:00', '2023-09-20 00:00:00', 25, 0),
(2, '2023-09-16 00:00:00', '2023-09-23 00:00:00', '2023-09-21 00:00:00', 32, 1),
(3, '2023-09-17 00:00:00', '2023-09-24 00:00:00', '2023-09-23 00:00:00', 45, 0),
(4, '2023-09-18 00:00:00', '2023-09-25 00:00:00', '2023-09-25 00:00:00', 50, 1),
(5, '2023-09-19 00:00:00', '2023-09-26 00:00:00', '2023-09-24 00:00:00', 65, 0),
(6, '2023-09-20 00:00:00', '2023-09-27 00:00:00', '2023-09-28 00:00:00', 77, 1),
(7, '2023-09-21 00:00:00', '2023-09-28 00:00:00', '2023-09-27 00:00:00', 88, 0),
(8, '2023-09-22 00:00:00', '2023-09-29 00:00:00', '2023-09-29 00:00:00', 101, 1),
(9, '2023-09-23 00:00:00', '2023-09-30 00:00:00', '2023-09-30 00:00:00', 115, 0),
(10, '2023-09-24 00:00:00', '2023-10-01 00:00:00', '2023-10-01 00:00:00', 122, 1),
(11, '2023-09-25 00:00:00', '2023-10-02 00:00:00', '2023-10-03 00:00:00', 136, 0),
(12, '2023-09-26 00:00:00', '2023-10-03 00:00:00', '2023-10-02 00:00:00', 145, 1),
(13, '2023-09-27 00:00:00', '2023-10-04 00:00:00', '2023-10-05 00:00:00', 155, 0),
(14, '2023-09-28 00:00:00', '2023-10-05 00:00:00', '2023-10-05 00:00:00', 168, 1),
(15, '2023-09-29 00:00:00', '2023-10-06 00:00:00', '2023-10-06 00:00:00', 176, 0),
(16, '2023-09-30 00:00:00', '2023-10-07 00:00:00', '2023-10-08 00:00:00', 185, 1),
(17, '2023-10-01 00:00:00', '2023-10-08 00:00:00', '2023-10-07 00:00:00', 198, 0),
(18, '2023-10-02 00:00:00', '2023-10-09 00:00:00', '2023-10-09 00:00:00', 12, 1),
(19, '2023-10-03 00:00:00', '2023-10-10 00:00:00', '2023-10-10 00:00:00', 22, 0),
(20, '2023-10-04 00:00:00', '2023-10-11 00:00:00', '2023-10-11 00:00:00', 35, 1),
(21, '2023-10-05 00:00:00', '2023-10-12 00:00:00', '2023-10-12 00:00:00', 42, 0),
(22, '2023-10-06 00:00:00', '2023-10-13 00:00:00', '2023-10-13 00:00:00', 55, 1),
(23, '2023-10-07 00:00:00', '2023-10-14 00:00:00', '2023-10-14 00:00:00', 68, 0),
(24, '2023-10-08 00:00:00', '2023-10-15 00:00:00', '2023-10-15 00:00:00', 76, 1),
(25, '2023-10-09 00:00:00', '2023-10-16 00:00:00', '2023-10-16 00:00:00', 89, 0),
(26, '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-10-17 00:00:00', 97, 1),
(27, '2023-10-11 00:00:00', '2023-10-18 00:00:00', '2023-10-18 00:00:00', 105, 0),
(28, '2023-10-12 00:00:00', '2023-10-19 00:00:00', '2023-10-19 00:00:00', 118, 1),
(29, '2023-10-13 00:00:00', '2023-10-20 00:00:00', '2023-10-20 00:00:00', 126, 0),
(30, '2023-10-14 00:00:00', '2023-10-21 00:00:00', '2023-10-21 00:00:00', 135, 1),
(31, '2023-10-15 00:00:00', '2023-10-22 00:00:00', '2023-10-22 00:00:00', 144, 0),
(32, '2023-09-15 00:00:00', '2023-09-22 00:00:00', '2023-09-20 00:00:00', 25, 0),
(33, '2023-09-16 00:00:00', '2023-09-23 00:00:00', '2023-09-21 00:00:00', 32, 1),
(34, '2023-09-17 00:00:00', '2023-09-24 00:00:00', '2023-09-23 00:00:00', 45, 0),
(35, '2023-09-18 00:00:00', '2023-09-25 00:00:00', '2023-09-25 00:00:00', 50, 1),
(36, '2023-09-19 00:00:00', '2023-09-26 00:00:00', '2023-09-24 00:00:00', 65, 0),
(37, '2023-09-20 00:00:00', '2023-09-27 00:00:00', '2023-09-28 00:00:00', 77, 1),
(38, '2023-09-21 00:00:00', '2023-09-28 00:00:00', '2023-09-27 00:00:00', 88, 0),
(39, '2023-09-22 00:00:00', '2023-09-29 00:00:00', '2023-09-29 00:00:00', 101, 1),
(40, '2023-09-23 00:00:00', '2023-09-30 00:00:00', '2023-09-30 00:00:00', 115, 0),
(41, '2023-09-24 00:00:00', '2023-10-01 00:00:00', '2023-10-01 00:00:00', 122, 1),
(42, '2023-09-25 00:00:00', '2023-10-02 00:00:00', '2023-10-03 00:00:00', 136, 0),
(43, '2023-09-26 00:00:00', '2023-10-03 00:00:00', '2023-10-02 00:00:00', 145, 1),
(44, '2023-09-27 00:00:00', '2023-10-04 00:00:00', '2023-10-05 00:00:00', 155, 0),
(45, '2023-09-28 00:00:00', '2023-10-05 00:00:00', '2023-10-05 00:00:00', 168, 1),
(46, '2023-09-29 00:00:00', '2023-10-06 00:00:00', '2023-10-06 00:00:00', 176, 0),
(47, '2023-09-30 00:00:00', '2023-10-07 00:00:00', '2023-10-08 00:00:00', 185, 1),
(48, '2023-10-01 00:00:00', '2023-10-08 00:00:00', '2023-10-07 00:00:00', 198, 0),
(49, '2023-10-02 00:00:00', '2023-10-09 00:00:00', '2023-10-09 00:00:00', 12, 1),
(50, '2023-10-03 00:00:00', '2023-10-10 00:00:00', '2023-10-10 00:00:00', 22, 0),
(51, '2023-10-04 00:00:00', '2023-10-11 00:00:00', '2023-10-11 00:00:00', 35, 1),
(52, '2023-10-05 00:00:00', '2023-10-12 00:00:00', '2023-10-12 00:00:00', 42, 0),
(53, '2023-10-06 00:00:00', '2023-10-13 00:00:00', '2023-10-13 00:00:00', 55, 1),
(54, '2023-10-07 00:00:00', '2023-10-14 00:00:00', '2023-10-14 00:00:00', 68, 0),
(55, '2023-10-08 00:00:00', '2023-10-15 00:00:00', '2023-10-15 00:00:00', 76, 1),
(56, '2023-10-09 00:00:00', '2023-10-16 00:00:00', '2023-10-16 00:00:00', 89, 0),
(57, '2023-10-10 00:00:00', '2023-10-17 00:00:00', '2023-10-17 00:00:00', 97, 1),
(58, '2023-10-11 00:00:00', '2023-10-18 00:00:00', '2023-10-18 00:00:00', 105, 0),
(59, '2023-10-12 00:00:00', '2023-10-19 00:00:00', '2023-10-19 00:00:00', 118, 1),
(60, '2023-10-13 00:00:00', '2023-10-20 00:00:00', '2023-10-20 00:00:00', 126, 0),
(61, '2023-10-14 00:00:00', '2023-10-21 00:00:00', '2023-10-21 00:00:00', 135, 1),
(62, '2023-10-15 00:00:00', '2023-10-22 00:00:00', '2023-10-22 00:00:00', 144, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos_libros`
--

CREATE TABLE `prestamos_libros` (
  `idPrestamo` int(11) NOT NULL,
  `idLibro` int(11) NOT NULL,
  `idPrestamos_Libros` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `prestamos_libros`
--

INSERT INTO `prestamos_libros` (`idPrestamo`, `idLibro`, `idPrestamos_Libros`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(1, 26, 26),
(2, 27, 27),
(3, 28, 28),
(4, 29, 29),
(5, 30, 30),
(6, 31, 31),
(7, 32, 32),
(8, 33, 33),
(9, 34, 34),
(10, 35, 35),
(11, 36, 36),
(12, 37, 37),
(13, 38, 38),
(14, 39, 39),
(15, 40, 40),
(16, 41, 41),
(17, 42, 42),
(18, 43, 43),
(19, 44, 44),
(20, 45, 45),
(21, 46, 46),
(22, 47, 47),
(23, 48, 48),
(24, 49, 49),
(25, 50, 50),
(1, 51, 51),
(2, 52, 52),
(3, 53, 53),
(4, 54, 54),
(5, 55, 55),
(6, 56, 56),
(7, 57, 57),
(8, 58, 58),
(9, 59, 59),
(10, 60, 60),
(11, 61, 61),
(12, 62, 62),
(13, 63, 63),
(14, 64, 64),
(15, 65, 65),
(16, 66, 66),
(17, 67, 67),
(18, 68, 68),
(19, 69, 69),
(20, 70, 70),
(21, 71, 71),
(22, 72, 72),
(23, 73, 73),
(24, 74, 74),
(25, 75, 75),
(1, 1, 76),
(2, 2, 77),
(3, 3, 78),
(4, 4, 79),
(5, 5, 80),
(6, 6, 81),
(7, 7, 82),
(8, 8, 83),
(9, 9, 84),
(10, 10, 85),
(11, 11, 86),
(12, 12, 87),
(13, 13, 88),
(14, 14, 89),
(15, 15, 90),
(16, 16, 91),
(17, 17, 92),
(18, 18, 93),
(19, 19, 94),
(20, 20, 95),
(21, 21, 96),
(22, 22, 97),
(23, 23, 98),
(24, 24, 99),
(25, 25, 100),
(1, 26, 101),
(2, 27, 102),
(3, 28, 103),
(4, 29, 104),
(5, 30, 105),
(6, 31, 106),
(7, 32, 107),
(8, 33, 108),
(9, 34, 109),
(10, 35, 110),
(11, 36, 111),
(12, 37, 112),
(13, 38, 113),
(14, 39, 114),
(15, 40, 115),
(16, 41, 116),
(17, 42, 117),
(18, 43, 118),
(19, 44, 119),
(20, 45, 120),
(21, 46, 121),
(22, 47, 122),
(23, 48, 123),
(24, 49, 124),
(25, 50, 125),
(1, 51, 126),
(2, 52, 127),
(3, 53, 128),
(4, 54, 129),
(5, 55, 130),
(6, 56, 131),
(7, 57, 132),
(8, 58, 133),
(9, 59, 134),
(10, 60, 135),
(11, 61, 136),
(12, 62, 137),
(13, 63, 138),
(14, 64, 139),
(15, 65, 140),
(16, 66, 141),
(17, 67, 142),
(18, 68, 143),
(19, 69, 144),
(20, 70, 145),
(21, 71, 146),
(22, 72, 147),
(23, 73, 148),
(24, 74, 149),
(25, 75, 150);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `idReserva` int(11) NOT NULL,
  `fechaSolicitud` datetime DEFAULT NULL,
  `fechaRetiro` datetime DEFAULT NULL,
  `idUsuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`idReserva`, `fechaSolicitud`, `fechaRetiro`, `idUsuarios`) VALUES
(1, '2023-09-10 00:00:00', '2023-09-15 00:00:00', 25),
(2, '2023-09-11 00:00:00', '2023-09-16 00:00:00', 32),
(3, '2023-09-12 00:00:00', '2023-09-17 00:00:00', 45),
(4, '2023-09-13 00:00:00', '2023-09-18 00:00:00', 50),
(5, '2023-09-14 00:00:00', '2023-09-19 00:00:00', 65),
(6, '2023-09-15 00:00:00', '2023-09-20 00:00:00', 77),
(7, '2023-09-16 00:00:00', '2023-09-21 00:00:00', 88),
(8, '2023-09-17 00:00:00', '2023-09-22 00:00:00', 101),
(9, '2023-09-18 00:00:00', '2023-09-23 00:00:00', 115),
(10, '2023-09-19 00:00:00', '2023-09-24 00:00:00', 122),
(11, '2023-09-20 00:00:00', '2023-09-25 00:00:00', 136),
(12, '2023-09-21 00:00:00', '2023-09-26 00:00:00', 145),
(13, '2023-09-22 00:00:00', '2023-09-27 00:00:00', 155),
(14, '2023-09-23 00:00:00', '2023-09-28 00:00:00', 168),
(15, '2023-09-24 00:00:00', '2023-09-29 00:00:00', 176),
(16, '2023-09-25 00:00:00', '2023-09-30 00:00:00', 185),
(17, '2023-09-26 00:00:00', '2023-10-01 00:00:00', 198),
(18, '2023-09-27 00:00:00', '2023-10-02 00:00:00', 12),
(19, '2023-09-28 00:00:00', '2023-10-03 00:00:00', 22),
(20, '2023-09-29 00:00:00', '2023-10-04 00:00:00', 35),
(21, '2023-09-30 00:00:00', '2023-10-05 00:00:00', 42),
(22, '2023-10-01 00:00:00', '2023-10-06 00:00:00', 55),
(23, '2023-10-02 00:00:00', '2023-10-07 00:00:00', 68),
(24, '2023-10-03 00:00:00', '2023-10-08 00:00:00', 76),
(25, '2023-10-04 00:00:00', '2023-10-09 00:00:00', 89),
(26, '2023-10-05 00:00:00', '2023-10-10 00:00:00', 97),
(27, '2023-10-06 00:00:00', '2023-10-11 00:00:00', 105),
(28, '2023-10-07 00:00:00', '2023-10-12 00:00:00', 118),
(29, '2023-10-08 00:00:00', '2023-10-13 00:00:00', 126),
(30, '2023-10-09 00:00:00', '2023-10-14 00:00:00', 135),
(31, '2023-10-10 00:00:00', '2023-10-15 00:00:00', 144),
(32, '2023-10-11 00:00:00', '2023-10-16 00:00:00', 157),
(33, '2023-10-12 00:00:00', '2023-10-17 00:00:00', 166),
(34, '2023-10-13 00:00:00', '2023-10-18 00:00:00', 175),
(35, '2023-10-14 00:00:00', '2023-10-19 00:00:00', 188),
(36, '2023-10-15 00:00:00', '2023-10-20 00:00:00', 197),
(37, '2023-09-10 00:00:00', '2023-09-15 00:00:00', 25),
(38, '2023-09-11 00:00:00', '2023-09-16 00:00:00', 32),
(39, '2023-09-12 00:00:00', '2023-09-17 00:00:00', 45),
(40, '2023-09-13 00:00:00', '2023-09-18 00:00:00', 50),
(41, '2023-09-14 00:00:00', '2023-09-19 00:00:00', 65),
(42, '2023-09-15 00:00:00', '2023-09-20 00:00:00', 77),
(43, '2023-09-16 00:00:00', '2023-09-21 00:00:00', 88),
(44, '2023-09-17 00:00:00', '2023-09-22 00:00:00', 101),
(45, '2023-09-18 00:00:00', '2023-09-23 00:00:00', 115),
(46, '2023-09-19 00:00:00', '2023-09-24 00:00:00', 122),
(47, '2023-09-20 00:00:00', '2023-09-25 00:00:00', 136),
(48, '2023-09-21 00:00:00', '2023-09-26 00:00:00', 145),
(49, '2023-09-22 00:00:00', '2023-09-27 00:00:00', 155),
(50, '2023-09-23 00:00:00', '2023-09-28 00:00:00', 168),
(51, '2023-09-24 00:00:00', '2023-09-29 00:00:00', 176),
(52, '2023-09-25 00:00:00', '2023-09-30 00:00:00', 185),
(53, '2023-09-26 00:00:00', '2023-10-01 00:00:00', 198),
(54, '2023-09-27 00:00:00', '2023-10-02 00:00:00', 12),
(55, '2023-09-28 00:00:00', '2023-10-03 00:00:00', 22),
(56, '2023-09-29 00:00:00', '2023-10-04 00:00:00', 35),
(57, '2023-09-30 00:00:00', '2023-10-05 00:00:00', 42),
(58, '2023-10-01 00:00:00', '2023-10-06 00:00:00', 55),
(59, '2023-10-02 00:00:00', '2023-10-07 00:00:00', 68),
(60, '2023-10-03 00:00:00', '2023-10-08 00:00:00', 76),
(61, '2023-10-04 00:00:00', '2023-10-09 00:00:00', 89),
(62, '2023-10-05 00:00:00', '2023-10-10 00:00:00', 97),
(63, '2023-10-06 00:00:00', '2023-10-11 00:00:00', 105),
(64, '2023-10-07 00:00:00', '2023-10-12 00:00:00', 118),
(65, '2023-10-08 00:00:00', '2023-10-13 00:00:00', 126),
(66, '2023-10-09 00:00:00', '2023-10-14 00:00:00', 135),
(67, '2023-10-10 00:00:00', '2023-10-15 00:00:00', 144),
(68, '2023-10-11 00:00:00', '2023-10-16 00:00:00', 157),
(69, '2023-10-12 00:00:00', '2023-10-17 00:00:00', 166),
(70, '2023-10-13 00:00:00', '2023-10-18 00:00:00', 175),
(71, '2023-10-14 00:00:00', '2023-10-19 00:00:00', 188),
(72, '2023-10-15 00:00:00', '2023-10-20 00:00:00', 197);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `fechaNac` date DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `tipoUsuario` tinyint(4) DEFAULT NULL COMMENT 'Bibliotecaria(0)\nProfesor(1)\nSocio(2)\nUsuario(3)',
  `penalidad` int(11) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `contraseña` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nombre`, `apellido`, `dni`, `fechaNac`, `telefono`, `tipoUsuario`, `penalidad`, `email`, `direccion`, `username`, `contraseña`) VALUES
(1, 'Marta', 'Gonalez', 28765499, '1995-02-15', 345123456, 1, NULL, 'MaGonza@gmail.com', 'Av. Callao 345', 'martaGonalez', '793741d54b00253006453742ad4ed534'),
(3, 'Laura', 'Lopez', 31244560, '1988-03-10', 345345678, 1, NULL, '', '', 'lauraLopez_3', '793741d54b00253006453742ad4ed534'),
(4, 'Carlos', 'Martinez', 32007654, '1977-11-05', 345645888, 1, 2024, 'CarMAR@hotmail.com', 'Calle Vuelta de obligado 256', 'carlosMartinez', '793741d54b00253006453742ad4ed534'),
(5, 'Ana', 'Perezz', 28078765, '1998-09-18', 345567890, 1, NULL, 'patopato@gmail.com', 'Av de los Incas 1234', 'anaPerezz', '793741d54b00253006453742ad4ed534'),
(6, 'Luis', 'Fernandez', 32246789, '1975-04-30', 345678901, 1, NULL, 'perrisimo@gmail.com', 'Calle Justo 24', 'luisFernandez', '793741d54b00253006453742ad4ed534'),
(7, 'Sofia', 'Hernandez', 33567785, '1970-06-14', 345789012, 1, NULL, 'sooofihotmail.com', 'Calle Suspiros s/n', 'sofiaHernandez_7', '793741d54b00253006453742ad4ed534'),
(8, 'Elena', 'Garcia', 31222566, '1985-12-25', 345890123, 1, NULL, 'elen@elenmail.com', 'Av. Justicia 123', 'elenaGarcia_8', '793741d54b00253006453742ad4ed534'),
(9, 'Diego', 'Diaz', 29873543, '1994-08-03', 345981234, 1, NULL, '', '', 'diegoDiaz_9', '793741d54b00253006453742ad4ed534'),
(10, 'Valentina', 'Silva', 32124567, '1992-10-09', 345672345, 1, NULL, '', '', 'valentinaSilva', '793741d54b00253006453742ad4ed534'),
(11, 'Mariano', 'Moreno', 31776788, '1996-05-15', 345234123, 1, NULL, '', '', 'marianoMoreno_11', '793741d54b00253006453742ad4ed534'),
(12, 'Carolina', 'Gomez', 30156456, '1991-01-08', 345345234, 1, 2023, 'aca@aca.com', 'Calle d aca', 'carolinaGomez_12', '793741d54b00253006453742ad4ed534'),
(13, 'Mariani', 'Torres', 33824543, '1972-03-21', 345456345, 1, NULL, '', '', 'marianiTorres_13', '793741d54b00253006453742ad4ed534'),
(14, 'Florencia', 'Ortega', 32116543, '1978-07-14', 345567456, 1, NULL, '', '', 'florenciaOrtega_14', '793741d54b00253006453742ad4ed534'),
(15, 'Joaquin', 'Pacheco', 33338901, '1973-09-29', 345678567, 1, NULL, '', '', 'joaquinPacheco_15', '793741d54b00253006453742ad4ed534'),
(16, 'Valeria', 'Rojas', 31993210, '1997-11-12', 345123456, 1, NULL, '', '', 'valeriaRojas_16', '793741d54b00253006453742ad4ed534'),
(17, 'Miguel', 'Lara', 26732109, '1999-12-30', 345234567, 1, NULL, 'Aguaclaroa@gmail.com', 'Av siempre viva 234', 'miguelLara', '793741d54b00253006453742ad4ed534'),
(19, 'Lucas', 'Molina', 33334578, '1993-04-05', 345456789, 1, NULL, '', '', 'lucasMolina_19', '793741d54b00253006453742ad4ed534'),
(20, 'Gabriel', 'Cruz', 32098985, '1976-06-27', 345567890, 1, NULL, '', '', 'gabrielCruz', '793741d54b00253006453742ad4ed534'),
(21, 'Daniel', 'Gutierrez', 32287654, '1974-08-18', 345678901, 1, NULL, '', '', 'danielGutierrez_21', '793741d54b00253006453742ad4ed534'),
(22, 'Patricia', 'Vega', 29555210, '1990-10-31', 345789012, 1, NULL, '', '', 'patriciaVega_22', '793741d54b00253006453742ad4ed534'),
(23, 'Ricardo', 'Castillejo', 31977655, '1989-12-04', 345890123, 1, NULL, '', '', 'ricardoCastillejo', '793741d54b00253006453742ad4ed534'),
(25, 'Paula', 'Ramos', 31133456, '1987-04-17', 345672345, 1, NULL, '', '', 'paulaRamos', '793741d54b00253006453742ad4ed534'),
(26, 'Andrea', 'Romero', 32765432, '1979-06-20', 345234123, 1, NULL, '', '', 'andreaRomero_26', '793741d54b00253006453742ad4ed534'),
(27, 'Camilo', 'Peralta', 32543210, '1971-08-23', 345345234, 1, NULL, '', '', 'camiloPeralta', '793741d54b00253006453742ad4ed534'),
(28, 'Marcela', 'Guzman', 33098765, '1978-10-26', 345456345, 1, NULL, '', '', 'marcelaGuzman', '793741d54b00253006453742ad4ed534'),
(29, 'Eduardo', 'Jimenez', 32109876, '1983-12-12', 345567456, 1, NULL, '', '', 'eduardoJimenez', '793741d54b00253006453742ad4ed534'),
(30, 'Romina', 'Vargas', 32654321, '1977-02-14', 345678567, 1, NULL, '', '', 'rominaVargas', '793741d54b00253006453742ad4ed534'),
(31, 'Lucas', 'Martinez', 39000000, '2006-02-15', 345123456, 2, NULL, '', '', 'lucasMartinez', '1b1844daa452df42c6f9123857ca686c'),
(32, 'Valentina', 'Gomez', 39000001, '2005-07-22', 345234567, 2, NULL, '', '', 'valentinaGomez', '1b1844daa452df42c6f9123857ca686c'),
(33, 'Sebastian', 'Hernandez', 39000002, '2004-03-10', 345345678, 2, NULL, '', '', 'sebastianHernandez', '1b1844daa452df42c6f9123857ca686c'),
(34, 'Isabella', 'Lopez', 39000003, '2006-11-05', 345456789, 2, NULL, '', '', 'isabellaLopez', '1b1844daa452df42c6f9123857ca686c'),
(35, 'Miguel', 'Rodriguez', 39000004, '2007-09-18', 345567890, 2, NULL, '', '', 'miguelRodriguez', '1b1844daa452df42c6f9123857ca686c'),
(37, 'Mateo', 'Fernandez', 39000006, '2004-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_37', '1b1844daa452df42c6f9123857ca686c'),
(40, 'Lucas', 'Mariani', 39000009, '2004-10-09', 345672345, 2, NULL, '', '', 'lucasMariani_40', '1b1844daa452df42c6f9123857ca686c'),
(41, 'Daniel', 'Garcia', 39000010, '2005-05-15', 345234123, 2, NULL, '', '', 'danielGarcia_41', '1b1844daa452df42c6f9123857ca686c'),
(42, 'Elena', 'Moreno', 39000011, '2005-01-08', 345345234, 2, NULL, '', '', 'elenaMoreno_42', '1b1844daa452df42c6f9123857ca686c'),
(43, 'Joaquin', 'Torres', 39000012, '2003-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_43', '1b1844daa452df42c6f9123857ca686c'),
(44, 'Catalina', 'Ortega', 39000013, '2004-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_44', '1b1844daa452df42c6f9123857ca686c'),
(45, 'Pedro', 'Pacheco', 39000014, '2003-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_45', '1b1844daa452df42c6f9123857ca686c'),
(49, 'Mariano', 'Molina', 39000018, '2005-04-05', 345456789, 3, NULL, '', '', 'marianoMolina_49', 'c6865cf98b133f1f3de596a4a2894630'),
(50, 'Carolina', 'Cruz', 39000019, '2006-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_50', 'c6865cf98b133f1f3de596a4a2894630'),
(51, 'Eduardo', 'Gutierrez', 39000020, '2003-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_51', 'c6865cf98b133f1f3de596a4a2894630'),
(52, 'Isabel', 'Vega', 39000021, '2006-10-31', 345789012, 3, NULL, '', '', 'isabelVega_52', 'c6865cf98b133f1f3de596a4a2894630'),
(53, 'Gabriel', 'Castillo', 39000022, '2005-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_53', 'c6865cf98b133f1f3de596a4a2894630'),
(54, 'Martina', 'Santos', 39000023, '2007-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_54', 'c6865cf98b133f1f3de596a4a2894630'),
(55, 'Juana', 'Ramos', 39000024, '2003-06-20', 345672345, 0, NULL, 'Juanrara@gmail.com', 'Calle Esperanza 420', 'juanaRamos_55', '21232f297a57a5a743894a0e4a801fc3'),
(56, 'Andrea', 'Romero', 44320025, '2003-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_56', 'c6865cf98b133f1f3de596a4a2894630'),
(57, 'Tomas', 'Peralta', 39000026, '2002-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_57', 'c6865cf98b133f1f3de596a4a2894630'),
(60, 'Mariana', 'Vargas', 39000029, '2003-02-14', 345678567, 2, NULL, '', '', 'marianaVargas_60', '1b1844daa452df42c6f9123857ca686c'),
(65, 'Martha', 'Rodriguez', 39032404, '2007-09-18', 345567890, 3, NULL, '', '', 'marthaRodriguez', 'c6865cf98b133f1f3de596a4a2894630'),
(68, 'Sofia', 'Diaz', 39000007, '2005-12-25', 345890123, 3, NULL, '', '', 'sofiaDiaz_68', 'c6865cf98b133f1f3de596a4a2894630'),
(76, 'Valeria', 'Rojas', 39000015, '2006-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_76', 'c6865cf98b133f1f3de596a4a2894630'),
(77, 'Luis', 'Lara', 39000016, '2007-12-30', 345234567, 3, NULL, '', '', 'luisLara_77', 'c6865cf98b133f1f3de596a4a2894630'),
(78, 'Florencia', 'Navarro', 39000017, '0000-00-00', 345345678, 1, NULL, 'Flona@yahoo.com', 'Calle Urquiza 256', 'florenciaNavarro_78', '793741d54b00253006453742ad4ed534'),
(85, 'Juan Carlos', 'Ramos', 39005624, '2007-02-07', 345672345, 1, NULL, 'Ramosllenos@hotmail.com', 'Calle Pavon 62', 'juan carlosRamos', '793741d54b00253006453742ad4ed534'),
(86, 'Andres', 'Romero', 39011025, '2003-06-20', 345234123, 2, NULL, '', '', 'andresRomero', '1b1844daa452df42c6f9123857ca686c'),
(88, 'Valentino', 'Guzman', 39000027, '2005-10-26', 345456345, 2, NULL, '', '', 'valentinoGuzman_88', '1b1844daa452df42c6f9123857ca686c'),
(89, 'Luciana', 'Jimenez', 39000028, '2004-12-12', 345567456, 2, NULL, '', '', 'lucianaJimenez_89', '1b1844daa452df42c6f9123857ca686c'),
(91, 'Lucas', 'Gomez', 41000000, '2006-05-15', 345123456, 2, NULL, '', '', 'lucasGomez', '1b1844daa452df42c6f9123857ca686c'),
(92, 'Valentina', 'Martinez', 41000001, '2006-07-22', 345234567, 2, NULL, '', '', 'valentinaMartinez_92', '1b1844daa452df42c6f9123857ca686c'),
(93, 'Santiago', 'Lopez', 41000002, '2006-03-10', 345345678, 2, NULL, '', '', 'santiagoLopez_93', '1b1844daa452df42c6f9123857ca686c'),
(94, 'Isabella', 'Rodriguez', 41000003, '2006-11-05', 345456789, 2, NULL, '', '', 'isabellaRodriguez_94', '1b1844daa452df42c6f9123857ca686c'),
(96, 'Camila', 'Hernandez', 41000005, '2006-04-30', 345678901, 2, NULL, '', '', 'camilaHernandez_96', '1b1844daa452df42c6f9123857ca686c'),
(97, 'Mateo', 'Fernandez', 41000006, '2006-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_97', '1b1844daa452df42c6f9123857ca686c'),
(98, 'Sofia', 'Diaz', 41000007, '2006-12-25', 345890123, 2, NULL, '', '', 'sofiaDiaz_98', '1b1844daa452df42c6f9123857ca686c'),
(99, 'Matias', 'Santos', 41000008, '2006-08-03', 345981234, 2, NULL, '', '', 'matiasSantos_99', '1b1844daa452df42c6f9123857ca686c'),
(100, 'Lucas', 'Mariani', 41000009, '2006-10-09', 345672345, 3, NULL, '', '', 'lucasMariani_100', 'c6865cf98b133f1f3de596a4a2894630'),
(101, 'Daniel', 'Garcia', 41000010, '2006-05-15', 345234123, 3, NULL, '', '', 'danielGarcia_101', 'c6865cf98b133f1f3de596a4a2894630'),
(102, 'Elena', 'Moreno', 41000011, '2006-01-08', 345345234, 3, NULL, '', '', 'elenaMoreno_102', 'c6865cf98b133f1f3de596a4a2894630'),
(103, 'Joaquin', 'Torres', 41000012, '2006-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_103', 'c6865cf98b133f1f3de596a4a2894630'),
(104, 'Catalina', 'Ortega', 41000013, '2006-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_104', 'c6865cf98b133f1f3de596a4a2894630'),
(105, 'Pedro', 'Pacheco', 41000014, '2006-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_105', 'c6865cf98b133f1f3de596a4a2894630'),
(106, 'Valeria', 'Rojas', 41000015, '2006-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_106', 'c6865cf98b133f1f3de596a4a2894630'),
(107, 'Luis', 'Lara', 41000016, '2006-12-30', 345234567, 3, NULL, '', '', 'luisLara_107', 'c6865cf98b133f1f3de596a4a2894630'),
(108, 'Florencia', 'Navarro', 41000017, '2006-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_108', 'c6865cf98b133f1f3de596a4a2894630'),
(109, 'Mariano', 'Molina', 41000018, '2006-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_109', 'c6865cf98b133f1f3de596a4a2894630'),
(110, 'Carolina', 'Cruz', 41000019, '2006-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_110', 'c6865cf98b133f1f3de596a4a2894630'),
(111, 'Eduardo', 'Gutierrez', 41000020, '2006-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_111', 'c6865cf98b133f1f3de596a4a2894630'),
(112, 'Isabel', 'Vega', 41000021, '2006-10-31', 345789012, 3, NULL, '', '', 'isabelVega_112', 'c6865cf98b133f1f3de596a4a2894630'),
(113, 'Gabriel', 'Castillo', 41000022, '2006-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_113', 'c6865cf98b133f1f3de596a4a2894630'),
(114, 'Martina', 'Santos', 41000023, '2006-02-07', 345981234, 2, NULL, '', '', 'martinaSantos_114', '1b1844daa452df42c6f9123857ca686c'),
(115, 'Juan', 'Ramos', 41000024, '2006-04-17', 345672345, 2, NULL, '', '', 'juanRamos_115', '1b1844daa452df42c6f9123857ca686c'),
(116, 'Andrea', 'Romero', 41000025, '2006-06-20', 345234123, 2, NULL, '', '', 'andreaRomero_116', '1b1844daa452df42c6f9123857ca686c'),
(117, 'Tomas', 'Peralta', 41000026, '2006-08-23', 345345234, 2, NULL, '', '', 'tomasPeralta_117', '1b1844daa452df42c6f9123857ca686c'),
(118, 'Valentino', 'Guzman', 41000027, '2006-10-26', 345456345, 2, NULL, '', '', 'valentinoGuzman_118', '1b1844daa452df42c6f9123857ca686c'),
(119, 'Luciana', 'Jimenez', 41000028, '2006-12-12', 345567456, 2, NULL, '', '', 'lucianaJimenez_119', '1b1844daa452df42c6f9123857ca686c'),
(120, 'Mariana', 'Vargas', 41011029, '2006-02-14', 345678567, 2, NULL, '', '', 'marianaVargas_120', '1b1844daa452df42c6f9123857ca686c'),
(122, 'ValentÃ­n', 'Vera', 41000031, '2006-07-22', 345234567, 2, NULL, '', '', 'valentã­nVera_122', '1b1844daa452df42c6f9123857ca686c'),
(123, 'Florencia', 'Gomez', 41000032, '2006-03-10', 345345678, 2, NULL, '', '', 'florenciaGomez_123', '1b1844daa452df42c6f9123857ca686c'),
(124, 'Joaquin', 'Silva', 41111033, '2006-11-05', 345456789, 2, NULL, '', '', 'joaquinSilva_124', '1b1844daa452df42c6f9123857ca686c'),
(125, 'Isabella', 'Perezz', 41000034, '2006-09-18', 345567890, 2, NULL, '', '', 'isabellaPerezz_125', '1b1844daa452df42c6f9123857ca686c'),
(126, 'Santiago', 'Garca', 41007735, '2006-04-30', 345678901, 2, NULL, '', '', 'santiagoGarca', '1b1844daa452df42c6f9123857ca686c'),
(133, 'Santiago', 'Lopez', 42000002, '2007-03-10', 345345678, 2, NULL, '', '', 'santiagoLopez_133', '1b1844daa452df42c6f9123857ca686c'),
(134, 'Isabella', 'Rodriguez', 42000003, '2007-11-05', 345456789, 2, NULL, '', '', 'isabellaRodriguez_134', '1b1844daa452df42c6f9123857ca686c'),
(135, 'Miguel', 'Perezz', 42014004, '2007-09-18', 345567890, 2, NULL, '', '', 'miguelPerezz', '1b1844daa452df42c6f9123857ca686c'),
(136, 'Camila', 'Hernandez', 42014005, '2007-04-30', 345678901, 2, NULL, '', '', 'camilaHernandez_136', '1b1844daa452df42c6f9123857ca686c'),
(137, 'Mateo', 'Fernandez', 42014006, '2007-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_137', '1b1844daa452df42c6f9123857ca686c'),
(138, 'Sofia', 'Diaz', 42000007, '2007-12-25', 345890123, 2, NULL, '', '', 'sofiaDiaz_138', '1b1844daa452df42c6f9123857ca686c'),
(139, 'Matias', 'Santos', 42065008, '2007-08-03', 345981234, 2, NULL, '', '', 'matiasSantos_139', '1b1844daa452df42c6f9123857ca686c'),
(140, 'Lucas', 'Mariani', 42007809, '2007-10-09', 345672345, 2, NULL, '', '', 'lucasMariani_140', '1b1844daa452df42c6f9123857ca686c'),
(141, 'Daniel', 'Garcia', 42089010, '2007-05-15', 345234123, 2, NULL, '', '', 'danielGarcia_141', '1b1844daa452df42c6f9123857ca686c'),
(142, 'Elena', 'Moreno', 42078011, '2007-01-08', 345345234, 2, NULL, '', '', 'elenaMoreno_142', '1b1844daa452df42c6f9123857ca686c'),
(143, 'Joaquin', 'Torres', 42055012, '2007-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_143', '1b1844daa452df42c6f9123857ca686c'),
(144, 'Catalina', 'Ortega', 42110013, '2007-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_144', '1b1844daa452df42c6f9123857ca686c'),
(145, 'Pedro', 'Pacheco', 42000014, '2007-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_145', '1b1844daa452df42c6f9123857ca686c'),
(146, 'Valeria', 'Rojas', 42047015, '2007-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_146', 'c6865cf98b133f1f3de596a4a2894630'),
(147, 'Luis', 'Lara', 42021016, '2007-12-30', 345234567, 3, NULL, '', '', 'luisLara_147', 'c6865cf98b133f1f3de596a4a2894630'),
(148, 'Florencia', 'Navarro', 42033017, '2007-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_148', 'c6865cf98b133f1f3de596a4a2894630'),
(149, 'Mariano', 'Molina', 42000018, '2007-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_149', 'c6865cf98b133f1f3de596a4a2894630'),
(150, 'Carolina', 'Cruz', 42066019, '2007-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_150', 'c6865cf98b133f1f3de596a4a2894630'),
(151, 'Eduardo', 'Gutierrez', 42770020, '2007-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_151', 'c6865cf98b133f1f3de596a4a2894630'),
(152, 'Isabel', 'Vega', 42067021, '2007-10-31', 345789012, 3, NULL, '', '', 'isabelVega_152', 'c6865cf98b133f1f3de596a4a2894630'),
(153, 'Gabriel', 'Castillo', 42097022, '2007-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_153', 'c6865cf98b133f1f3de596a4a2894630'),
(154, 'Martina', 'Santos', 42045023, '2007-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_154', 'c6865cf98b133f1f3de596a4a2894630'),
(155, 'Juan', 'Ramos', 42560024, '2007-04-17', 345672345, 3, NULL, '', '', 'juanRamos_155', 'c6865cf98b133f1f3de596a4a2894630'),
(156, 'Andrea', 'Romero', 42450025, '2007-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_156', 'c6865cf98b133f1f3de596a4a2894630'),
(157, 'Tomas', 'Peralta', 42014026, '2007-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_157', 'c6865cf98b133f1f3de596a4a2894630'),
(158, 'Valentino', 'Guzman', 42056027, '2007-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_158', 'c6865cf98b133f1f3de596a4a2894630'),
(159, 'Luciana', 'Jimenez', 42089028, '2007-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_159', 'c6865cf98b133f1f3de596a4a2894630'),
(160, 'Mariana', 'Vargas', 42000029, '2007-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_160', 'c6865cf98b133f1f3de596a4a2894630'),
(161, 'NicolÃ¡s', 'SÃ¡nchez', 42000030, '2007-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_161', 'c6865cf98b133f1f3de596a4a2894630'),
(162, 'ValentÃ­n', 'Vera', 42054031, '2007-07-22', 345234567, 3, NULL, '', '', 'valentã­nVera_162', 'c6865cf98b133f1f3de596a4a2894630'),
(163, 'Florencia', 'Gomez', 42560032, '2007-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_163', 'c6865cf98b133f1f3de596a4a2894630'),
(164, 'Joaquin', 'Silva', 42077033, '2007-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_164', 'c6865cf98b133f1f3de596a4a2894630'),
(165, 'Isabella', 'Perezz', 42098034, '2007-09-18', 345567890, 3, NULL, '', '', 'isabellaPerezz_165', 'c6865cf98b133f1f3de596a4a2894630'),
(166, 'Santiago', 'Garcia', 42024035, '2007-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_166', 'c6865cf98b133f1f3de596a4a2894630'),
(167, 'Sofia', 'Martinez', 42078036, '2007-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_167', 'c6865cf98b133f1f3de596a4a2894630'),
(168, 'Sebastian', 'Lopez', 42023037, '2007-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_168', 'c6865cf98b133f1f3de596a4a2894630'),
(169, 'Valentina', 'Moreno', 42540038, '2007-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_169', 'c6865cf98b133f1f3de596a4a2894630'),
(170, 'Matias', 'Rodriguez', 42041039, '2007-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_170', 'c6865cf98b133f1f3de596a4a2894630'),
(171, 'Lucas', 'Mariani', 42014040, '2007-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_171', 'c6865cf98b133f1f3de596a4a2894630'),
(172, 'Daniel', 'Gutierrez', 42000041, '2007-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_172', 'c6865cf98b133f1f3de596a4a2894630'),
(173, 'Joaquin', 'Torres', 42012042, '2007-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_173', 'c6865cf98b133f1f3de596a4a2894630'),
(174, 'Catalina', 'Ortega', 42014043, '2007-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_174', 'c6865cf98b133f1f3de596a4a2894630'),
(175, 'Pedro', 'Pacheco', 42000044, '2007-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_175', 'c6865cf98b133f1f3de596a4a2894630'),
(176, 'Valeria', 'Rojas', 42000045, '2007-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_176', 'c6865cf98b133f1f3de596a4a2894630'),
(179, 'Mariano', 'Molina', 42011048, '2007-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_179', 'c6865cf98b133f1f3de596a4a2894630'),
(180, 'Carolina', 'Cruz', 42000049, '2007-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_180', 'c6865cf98b133f1f3de596a4a2894630'),
(181, 'Eduardo', 'Gutierrez', 42022050, '2007-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_181', 'c6865cf98b133f1f3de596a4a2894630'),
(183, 'Valentina', 'Martinez', 43005601, '2008-07-22', 345234567, 2, NULL, '', '', 'valentinaMartinez_183', '1b1844daa452df42c6f9123857ca686c'),
(184, 'Santiago', 'Lukaku', 43000002, '2008-03-10', 342245678, 2, NULL, '', '', 'santiagoLukaku', '1b1844daa452df42c6f9123857ca686c'),
(185, 'Isabella', 'Juanella', 41567657, '2008-11-05', 345756789, 2, NULL, '', '', 'isabellaJuanella', '1b1844daa452df42c6f9123857ca686c'),
(186, 'Miguel', 'Perez', 43003004, '2008-09-18', 345567890, 2, NULL, '', '', 'miguelPerez_186', '1b1844daa452df42c6f9123857ca686c'),
(187, 'Camila', 'Hernandez', 43000005, '2008-04-30', 345678901, 2, NULL, '', '', 'camilaHernandez_187', '1b1844daa452df42c6f9123857ca686c'),
(188, 'Mateo', 'Fernandez', 43020006, '2008-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_188', '1b1844daa452df42c6f9123857ca686c'),
(189, 'Sofia', 'Diaz', 43000707, '2008-12-25', 345890123, 2, NULL, '', '', 'sofiaDiaz_189', '1b1844daa452df42c6f9123857ca686c'),
(190, 'Matias', 'Santos', 43054008, '2008-08-03', 345981234, 2, NULL, '', '', 'matiasSantos_190', '1b1844daa452df42c6f9123857ca686c'),
(191, 'Lucas', 'Mariani', 43056009, '2008-10-09', 345672345, 2, NULL, '', '', 'lucasMariani_191', '1b1844daa452df42c6f9123857ca686c'),
(192, 'Daniel', 'Garcia', 43000010, '2008-05-15', 345234123, 2, NULL, '', '', 'danielGarcia_192', '1b1844daa452df42c6f9123857ca686c'),
(193, 'Elena', 'Moreno', 43006011, '2008-01-08', 345345234, 2, NULL, '', '', 'elenaMoreno_193', '1b1844daa452df42c6f9123857ca686c'),
(194, 'Joaquin', 'Torres', 43000012, '2008-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_194', '1b1844daa452df42c6f9123857ca686c'),
(195, 'Catalina', 'Ortega', 43001113, '2008-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_195', '1b1844daa452df42c6f9123857ca686c'),
(196, 'Pedro', 'Pacheco', 43440014, '2008-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_196', '1b1844daa452df42c6f9123857ca686c'),
(197, 'Valeria', 'Rojas', 43033015, '2008-11-12', 345123456, 2, NULL, '', '', 'valeriaRojas_197', '1b1844daa452df42c6f9123857ca686c'),
(198, 'Luis', 'Lara', 43012016, '2008-12-30', 345234567, 2, NULL, '', '', 'luisLara_198', '1b1844daa452df42c6f9123857ca686c'),
(199, 'Florencia', 'Navarro', 43032017, '2008-04-05', 345345678, 2, NULL, '', '', 'florenciaNavarro_199', '1b1844daa452df42c6f9123857ca686c'),
(200, 'Mariano', 'Molina', 43540018, '2008-05-15', 345456789, 2, NULL, '', '', 'marianoMolina_200', '1b1844daa452df42c6f9123857ca686c'),
(201, 'Carolina', 'Cruz', 43550019, '2008-06-27', 345567890, 2, NULL, '', '', 'carolinaCruz_201', '1b1844daa452df42c6f9123857ca686c'),
(202, 'Eduardo', 'Gutierrez', 43000020, '2008-08-18', 345678901, 2, NULL, '', '', 'eduardoGutierrez_202', '1b1844daa452df42c6f9123857ca686c'),
(203, 'Isabel', 'Vega', 43000021, '2008-10-31', 345789012, 2, NULL, '', '', 'isabelVega_203', '1b1844daa452df42c6f9123857ca686c'),
(204, 'Gabriel', 'Castillo', 43000022, '2008-12-04', 345890123, 2, NULL, '', '', 'gabrielCastillo_204', '1b1844daa452df42c6f9123857ca686c'),
(205, 'Martina', 'Santos', 43050023, '2008-02-07', 345981234, 2, NULL, '', '', 'martinaSantos_205', '1b1844daa452df42c6f9123857ca686c'),
(206, 'Juan', 'Ramos', 43000024, '2008-04-17', 345672345, 2, NULL, '', '', 'juanRamos_206', '1b1844daa452df42c6f9123857ca686c'),
(207, 'Andrea', 'Romero', 43074025, '2008-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_207', 'c6865cf98b133f1f3de596a4a2894630'),
(208, 'Tomas', 'Peralta', 43056026, '2008-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_208', 'c6865cf98b133f1f3de596a4a2894630'),
(209, 'Valentino', 'Guzman', 43000027, '2008-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_209', 'c6865cf98b133f1f3de596a4a2894630'),
(210, 'Luciana', 'Jimenez', 43000028, '2008-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_210', 'c6865cf98b133f1f3de596a4a2894630'),
(211, 'Mariana', 'Vargas', 43450029, '2008-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_211', 'c6865cf98b133f1f3de596a4a2894630'),
(212, 'NicolÃ¡s', 'SÃ¡nchez', 43047030, '2008-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_212', 'c6865cf98b133f1f3de596a4a2894630'),
(213, 'ValentÃ­n', 'Vera', 43410031, '2008-07-22', 345234567, 3, NULL, '', '', 'valentã­nVera_213', 'c6865cf98b133f1f3de596a4a2894630'),
(214, 'Florencia', 'Gomez', 43140032, '2008-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_214', 'c6865cf98b133f1f3de596a4a2894630'),
(215, 'Joaquin', 'Silva', 43003233, '2008-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_215', 'c6865cf98b133f1f3de596a4a2894630'),
(216, 'Isabella', 'Perez', 43045034, '2008-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_216', 'c6865cf98b133f1f3de596a4a2894630'),
(217, 'Santiago', 'Garcia', 43012035, '2008-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_217', 'c6865cf98b133f1f3de596a4a2894630'),
(218, 'Sofia', 'Martinez', 43056036, '2008-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_218', 'c6865cf98b133f1f3de596a4a2894630'),
(219, 'Sebastian', 'Lopez', 43000037, '2008-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_219', 'c6865cf98b133f1f3de596a4a2894630'),
(220, 'Valentina', 'Moreno', 43000038, '2008-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_220', 'c6865cf98b133f1f3de596a4a2894630'),
(221, 'Matias', 'Rodriguez', 43000039, '2008-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_221', 'c6865cf98b133f1f3de596a4a2894630'),
(222, 'Lucas', 'Mariani', 43000040, '2008-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_222', 'c6865cf98b133f1f3de596a4a2894630'),
(223, 'Daniel', 'Gutierrez', 43000041, '2008-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_223', 'c6865cf98b133f1f3de596a4a2894630'),
(224, 'Joaquin', 'Torres', 43005042, '2008-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_224', 'c6865cf98b133f1f3de596a4a2894630'),
(225, 'Catalina', 'Ortega', 43120043, '2008-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_225', 'c6865cf98b133f1f3de596a4a2894630'),
(226, 'Pedro', 'Pacheco', 43045044, '2008-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_226', 'c6865cf98b133f1f3de596a4a2894630'),
(227, 'Valeria', 'Rojas', 43120045, '2008-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_227', 'c6865cf98b133f1f3de596a4a2894630'),
(228, 'Luis', 'Lara', 43012046, '2008-12-30', 345234567, 3, NULL, '', '', 'luisLara_228', 'c6865cf98b133f1f3de596a4a2894630'),
(229, 'Florencia', 'Navarro', 43032047, '2008-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_229', 'c6865cf98b133f1f3de596a4a2894630'),
(230, 'Mariano', 'Molina', 43045048, '2008-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_230', 'c6865cf98b133f1f3de596a4a2894630'),
(231, 'Carolina', 'Cruz', 43012049, '2008-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_231', 'c6865cf98b133f1f3de596a4a2894630'),
(232, 'Eduardo', 'Gutierrez', 43000050, '2008-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_232', 'c6865cf98b133f1f3de596a4a2894630'),
(233, 'Isabel', 'Vega', 43000051, '2008-10-31', 345789012, 3, NULL, '', '', 'isabelVega_233', 'c6865cf98b133f1f3de596a4a2894630'),
(234, 'Gabriel', 'Castillo', 43000052, '2008-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_234', 'c6865cf98b133f1f3de596a4a2894630'),
(235, 'Martina', 'Santos', 43450053, '2008-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_235', 'c6865cf98b133f1f3de596a4a2894630'),
(237, 'Andrea', 'Romero', 43000055, '2008-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_237', 'c6865cf98b133f1f3de596a4a2894630'),
(238, 'Tomas', 'Peralta', 43000056, '2008-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_238', 'c6865cf98b133f1f3de596a4a2894630'),
(239, 'Valentino', 'Guzman', 43321057, '2008-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_239', 'c6865cf98b133f1f3de596a4a2894630'),
(240, 'Luciana', 'Jimenez', 43000058, '2008-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_240', 'c6865cf98b133f1f3de596a4a2894630'),
(241, 'Mariana', 'Vargas', 43000059, '2008-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_241', 'c6865cf98b133f1f3de596a4a2894630'),
(242, 'NicolÃ¡s', 'SÃ¡nchez', 44222000, '2009-05-15', 345123456, 2, NULL, '', '', 'nicolã¡sSã¡nchez_242', '1b1844daa452df42c6f9123857ca686c'),
(243, 'Valentina', 'Martinez', 44009001, '2009-07-22', 345234567, 2, NULL, '', '', 'valentinaMartinez_243', '1b1844daa452df42c6f9123857ca686c'),
(244, 'Santiago', 'Lopez', 44000002, '2009-03-10', 345345678, 2, NULL, '', '', 'santiagoLopez_244', '1b1844daa452df42c6f9123857ca686c'),
(245, 'Isabella', 'Rodriguez', 44004503, '2009-11-05', 345456789, 2, NULL, '', '', 'isabellaRodriguez_245', '1b1844daa452df42c6f9123857ca686c'),
(246, 'Miguel', 'Perez', 44000004, '2009-09-18', 345567890, 2, NULL, '', '', 'miguelPerez_246', '1b1844daa452df42c6f9123857ca686c'),
(247, 'Camila', 'Hernandez', 44000005, '2009-04-30', 345678901, 2, NULL, '', '', 'camilaHernandez_247', '1b1844daa452df42c6f9123857ca686c'),
(248, 'Mateo', 'Fernandez', 44000006, '2009-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_248', '1b1844daa452df42c6f9123857ca686c'),
(252, 'Daniel', 'Garcia', 44006010, '2009-05-15', 345234123, 2, NULL, '', '', 'danielGarcia_252', '1b1844daa452df42c6f9123857ca686c'),
(253, 'Elena', 'Moreno', 44000011, '2009-01-08', 345345234, 2, NULL, '', '', 'elenaMoreno_253', '1b1844daa452df42c6f9123857ca686c'),
(254, 'Joaquin', 'Torres', 44022012, '2009-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_254', '1b1844daa452df42c6f9123857ca686c'),
(255, 'Catalina', 'Ortega', 44000013, '2009-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_255', '1b1844daa452df42c6f9123857ca686c'),
(256, 'Pedro', 'Pacheco', 44020014, '2009-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_256', '1b1844daa452df42c6f9123857ca686c'),
(257, 'Valeria', 'Rojas', 44003015, '2009-11-12', 345123456, 2, NULL, '', '', 'valeriaRojas_257', '1b1844daa452df42c6f9123857ca686c'),
(258, 'Luis', 'Lara', 44001016, '2009-12-30', 345234567, 2, NULL, '', '', 'luisLara_258', '1b1844daa452df42c6f9123857ca686c'),
(259, 'Florencia', 'Navarro', 44022017, '2009-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_259', 'c6865cf98b133f1f3de596a4a2894630'),
(260, 'Mariano', 'Molina', 44003018, '2009-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_260', 'c6865cf98b133f1f3de596a4a2894630'),
(261, 'Carolina', 'Cruz', 44005019, '2009-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_261', 'c6865cf98b133f1f3de596a4a2894630'),
(262, 'Eduardo', 'Gutierrez', 44000020, '2009-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_262', 'c6865cf98b133f1f3de596a4a2894630'),
(263, 'Isabel', 'Vega', 44220021, '2009-10-31', 345789012, 3, NULL, '', '', 'isabelVega_263', 'c6865cf98b133f1f3de596a4a2894630'),
(264, 'Gabriel', 'Castillo', 44010022, '2009-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_264', 'c6865cf98b133f1f3de596a4a2894630'),
(265, 'Martina', 'Santos', 44000023, '2009-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_265', 'c6865cf98b133f1f3de596a4a2894630'),
(267, 'Andrea', 'Romero', 44000025, '2009-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_267', 'c6865cf98b133f1f3de596a4a2894630'),
(268, 'Tomas', 'Peralta', 44021026, '2009-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_268', 'c6865cf98b133f1f3de596a4a2894630'),
(269, 'Valentino', 'Guzman', 44012027, '2009-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_269', 'c6865cf98b133f1f3de596a4a2894630'),
(270, 'Luciana', 'Jimenez', 44011028, '2009-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_270', 'c6865cf98b133f1f3de596a4a2894630'),
(271, 'Mariana', 'Vargas', 44022029, '2009-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_271', 'c6865cf98b133f1f3de596a4a2894630'),
(272, 'NicolÃ¡s', 'SÃ¡nchez', 44033030, '2009-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_272', 'c6865cf98b133f1f3de596a4a2894630'),
(273, 'ValentÃ­n', 'Vera', 44008031, '2009-07-22', 345234567, 3, NULL, '', '', 'valentã­nVera_273', 'c6865cf98b133f1f3de596a4a2894630'),
(274, 'Florencia', 'Gomez', 44005032, '2009-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_274', 'c6865cf98b133f1f3de596a4a2894630'),
(275, 'Joaquin', 'Silva', 44020033, '2009-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_275', 'c6865cf98b133f1f3de596a4a2894630'),
(276, 'Isabella', 'Perez', 44007034, '2009-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_276', 'c6865cf98b133f1f3de596a4a2894630'),
(277, 'Santiago', 'Garcia', 44007035, '2009-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_277', 'c6865cf98b133f1f3de596a4a2894630'),
(278, 'Sofia', 'Martinez', 40011036, '2009-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_278', 'c6865cf98b133f1f3de596a4a2894630'),
(279, 'Sebastian', 'Lopez', 44000037, '2009-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_279', 'c6865cf98b133f1f3de596a4a2894630'),
(280, 'Valentina', 'Moreno', 44000038, '2009-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_280', 'c6865cf98b133f1f3de596a4a2894630'),
(281, 'Matias', 'Rodriguez', 44022039, '2009-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_281', 'c6865cf98b133f1f3de596a4a2894630'),
(282, 'Lucas', 'Mariani', 44010040, '2009-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_282', 'c6865cf98b133f1f3de596a4a2894630'),
(283, 'Daniel', 'Gutierrez', 44000041, '2009-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_283', 'c6865cf98b133f1f3de596a4a2894630'),
(284, 'Joaquin', 'Torres', 44110042, '2009-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_284', 'c6865cf98b133f1f3de596a4a2894630'),
(285, 'Catalina', 'Ortega', 44000043, '2009-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_285', 'c6865cf98b133f1f3de596a4a2894630'),
(286, 'Pedro', 'Pacheco', 44000044, '2009-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_286', 'c6865cf98b133f1f3de596a4a2894630'),
(287, 'Valeria', 'Rojas', 44000045, '2009-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_287', 'c6865cf98b133f1f3de596a4a2894630'),
(288, 'Luis', 'Lara', 44001046, '2009-12-30', 345234567, 3, NULL, '', '', 'luisLara_288', 'c6865cf98b133f1f3de596a4a2894630'),
(289, 'Florencia', 'Navarro', 44002047, '2009-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_289', 'c6865cf98b133f1f3de596a4a2894630'),
(290, 'Mariano', 'Molina', 44077048, '2009-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_290', 'c6865cf98b133f1f3de596a4a2894630'),
(291, 'Carolina', 'Cruz', 44070049, '2009-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_291', 'c6865cf98b133f1f3de596a4a2894630'),
(292, 'Eduardo', 'Gutierrez', 44880050, '2009-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_292', 'c6865cf98b133f1f3de596a4a2894630'),
(293, 'Isabel', 'Vega', 44010051, '2009-10-31', 345789012, 3, NULL, '', '', 'isabelVega_293', 'c6865cf98b133f1f3de596a4a2894630'),
(294, 'Gabriel', 'Castillo', 44004052, '2009-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_294', 'c6865cf98b133f1f3de596a4a2894630'),
(295, 'Martina', 'Santos', 44002253, '2009-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_295', 'c6865cf98b133f1f3de596a4a2894630'),
(296, 'Juan', 'Ramos', 44001054, '2009-04-17', 345672345, 3, NULL, '', '', 'juanRamos_296', 'c6865cf98b133f1f3de596a4a2894630'),
(297, 'Andrea', 'Romero', 44004055, '2009-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_297', 'c6865cf98b133f1f3de596a4a2894630'),
(298, 'Tomas', 'Peralta', 44000056, '2009-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_298', 'c6865cf98b133f1f3de596a4a2894630'),
(299, 'Valentino', 'Guzman', 44090057, '2009-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_299', 'c6865cf98b133f1f3de596a4a2894630'),
(300, 'Luciana', 'Jimenez', 44030058, '2009-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_300', 'c6865cf98b133f1f3de596a4a2894630'),
(301, 'Mariana', 'Vargas', 44010059, '2009-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_301', 'c6865cf98b133f1f3de596a4a2894630'),
(302, 'NicolÃ¡s', 'SÃ¡nchez', 44030060, '2009-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_302', 'c6865cf98b133f1f3de596a4a2894630'),
(303, 'ValentÃ­n', 'Vera', 44550061, '2009-07-22', 345234567, 3, NULL, '', '', 'valentã­nVera_303', 'c6865cf98b133f1f3de596a4a2894630'),
(304, 'Florencia', 'Gomez', 44004062, '2009-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_304', 'c6865cf98b133f1f3de596a4a2894630'),
(305, 'Joaquin', 'Silva', 44011063, '2009-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_305', 'c6865cf98b133f1f3de596a4a2894630'),
(306, 'Isabella', 'Perez', 44880064, '2009-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_306', 'c6865cf98b133f1f3de596a4a2894630'),
(307, 'Santiago', 'Garcia', 44090065, '2009-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_307', 'c6865cf98b133f1f3de596a4a2894630'),
(308, 'NicolÃ¡s', 'SÃ¡nchez', 45024000, '2010-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_308', 'c6865cf98b133f1f3de596a4a2894630'),
(309, 'Valentina', 'Martinez', 45002201, '2010-07-22', 345234567, 3, NULL, '', '', 'valentinaMartinez_309', 'c6865cf98b133f1f3de596a4a2894630'),
(310, 'Santiago', 'Lopez', 45001002, '2010-03-10', 345345678, 3, NULL, '', '', 'santiagoLopez_310', 'c6865cf98b133f1f3de596a4a2894630'),
(311, 'Isabella', 'Rodriguez', 45330003, '2010-11-05', 345456789, 3, NULL, '', '', 'isabellaRodriguez_311', 'c6865cf98b133f1f3de596a4a2894630'),
(312, 'Miguel', 'Perez', 45044004, '2010-09-18', 345567890, 3, NULL, '', '', 'miguelPerez_312', 'c6865cf98b133f1f3de596a4a2894630'),
(313, 'Camila', 'Hernandez', 45000405, '2010-04-30', 345678901, 3, NULL, '', '', 'camilaHernandez_313', 'c6865cf98b133f1f3de596a4a2894630'),
(314, 'Mateo', 'Fernandez', 45005006, '2010-06-14', 345789012, 3, NULL, '', '', 'mateoFernandez_314', 'c6865cf98b133f1f3de596a4a2894630'),
(315, 'Sofia', 'Diaz', 45000007, '2010-12-25', 345890123, 3, NULL, '', '', 'sofiaDiaz_315', 'c6865cf98b133f1f3de596a4a2894630'),
(316, 'Matias', 'Santos', 45000118, '2010-08-03', 345981234, 3, NULL, '', '', 'matiasSantos_316', 'c6865cf98b133f1f3de596a4a2894630'),
(317, 'Lucas', 'Mariani', 45004009, '2010-10-09', 345672345, 3, NULL, '', '', 'lucasMariani_317', 'c6865cf98b133f1f3de596a4a2894630'),
(318, 'Daniel', 'Garcia', 45064010, '2010-05-15', 345234123, 3, NULL, '', '', 'danielGarcia_318', 'c6865cf98b133f1f3de596a4a2894630'),
(319, 'Elena', 'Moreno', 45070011, '2010-01-08', 345345234, 3, NULL, '', '', 'elenaMoreno_319', 'c6865cf98b133f1f3de596a4a2894630'),
(320, 'Joaquin', 'Torres', 45880012, '2010-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_320', 'c6865cf98b133f1f3de596a4a2894630'),
(321, 'Catalina', 'Ortega', 45000013, '2010-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_321', 'c6865cf98b133f1f3de596a4a2894630'),
(322, 'Pedro', 'Pacheco', 45000099, '2010-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_322', 'c6865cf98b133f1f3de596a4a2894630'),
(323, 'Valeria', 'Rojas', 45060015, '2010-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_323', 'c6865cf98b133f1f3de596a4a2894630'),
(324, 'Luis', 'Lara', 45040016, '2010-12-30', 345234567, 3, NULL, '', '', 'luisLara_324', 'c6865cf98b133f1f3de596a4a2894630'),
(325, 'Florencia', 'Navarro', 45003017, '2010-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_325', 'c6865cf98b133f1f3de596a4a2894630'),
(326, 'Mariano', 'Molina', 45006018, '2010-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_326', 'c6865cf98b133f1f3de596a4a2894630'),
(327, 'Carolina', 'Cruz', 45007019, '2010-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_327', 'c6865cf98b133f1f3de596a4a2894630'),
(328, 'Eduardo', 'Gutierrez', 45400029, '2010-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_328', 'c6865cf98b133f1f3de596a4a2894630'),
(329, 'Isabel', 'Vega', 45002021, '2010-10-31', 345789012, 3, NULL, '', '', 'isabelVega_329', 'c6865cf98b133f1f3de596a4a2894630'),
(330, 'Gabriel', 'Castillo', 45000022, '2010-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_330', 'c6865cf98b133f1f3de596a4a2894630'),
(331, 'Martina', 'Santos', 45008023, '2010-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_331', 'c6865cf98b133f1f3de596a4a2894630'),
(332, 'Juan', 'Ramos', 45005024, '2010-04-17', 345672345, 3, NULL, '', '', 'juanRamos_332', 'c6865cf98b133f1f3de596a4a2894630'),
(333, 'Andrea', 'Romero', 45001025, '2010-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_333', 'c6865cf98b133f1f3de596a4a2894630'),
(334, 'Tomas', 'Peralta', 45030026, '2010-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_334', 'c6865cf98b133f1f3de596a4a2894630'),
(335, 'Valentino', 'Guzman', 45066027, '2010-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_335', 'c6865cf98b133f1f3de596a4a2894630'),
(336, 'Luciana', 'Jimenez', 45022028, '2010-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_336', 'c6865cf98b133f1f3de596a4a2894630'),
(337, 'Mariana', 'Vargas', 45000029, '2010-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_337', 'c6865cf98b133f1f3de596a4a2894630'),
(338, 'Nuria', 'Sanchez', 45332030, '2010-05-15', 345123456, 3, NULL, '', '', 'nuriaSanchez', 'c6865cf98b133f1f3de596a4a2894630'),
(339, 'Valeria', 'Vera', 45100031, '2010-07-22', 345234567, 3, NULL, '', '', 'valeriaVera_339', 'c6865cf98b133f1f3de596a4a2894630'),
(340, 'Florencia', 'Gomez', 45000036, '2010-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_340', 'c6865cf98b133f1f3de596a4a2894630'),
(341, 'Joaquin', 'Silva', 45000033, '2010-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_341', 'c6865cf98b133f1f3de596a4a2894630'),
(342, 'Isabella', 'Perez', 45008034, '2010-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_342', 'c6865cf98b133f1f3de596a4a2894630'),
(343, 'Santiago', 'Garcia', 45000735, '2010-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_343', 'c6865cf98b133f1f3de596a4a2894630'),
(344, 'Sofia', 'Martinez', 45000836, '2010-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_344', 'c6865cf98b133f1f3de596a4a2894630'),
(345, 'Sebastian', 'Lopez', 45000087, '2010-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_345', 'c6865cf98b133f1f3de596a4a2894630'),
(346, 'Valentina', 'Moreno', 45007038, '2010-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_346', 'c6865cf98b133f1f3de596a4a2894630'),
(347, 'Matias', 'Rodriguez', 45006039, '2010-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_347', 'c6865cf98b133f1f3de596a4a2894630'),
(348, 'Lucas', 'Mariani', 45010040, '2010-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_348', 'c6865cf98b133f1f3de596a4a2894630'),
(349, 'Daniel', 'Gutierrez', 45080041, '2010-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_349', 'c6865cf98b133f1f3de596a4a2894630'),
(350, 'Joaquin', 'Torres', 45003042, '2010-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_350', 'c6865cf98b133f1f3de596a4a2894630'),
(351, 'Catalina', 'Ortega', 45000043, '2010-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_351', 'c6865cf98b133f1f3de596a4a2894630'),
(352, 'Pedro', 'Pacheco', 45000044, '2010-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_352', 'c6865cf98b133f1f3de596a4a2894630'),
(353, 'Valeria', 'Rojas', 45000045, '2010-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_353', 'c6865cf98b133f1f3de596a4a2894630'),
(354, 'Luis', 'Lara', 45030046, '2010-12-30', 345234567, 3, NULL, '', '', 'luisLara_354', 'c6865cf98b133f1f3de596a4a2894630'),
(355, 'Florencia', 'Navarro', 45009047, '2010-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_355', 'c6865cf98b133f1f3de596a4a2894630'),
(356, 'Mariano', 'Molina', 45080048, '2010-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_356', 'c6865cf98b133f1f3de596a4a2894630'),
(357, 'Carolina', 'Cruz', 45050049, '2010-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_357', 'c6865cf98b133f1f3de596a4a2894630'),
(358, 'Eduardo', 'Gutierrez', 45220050, '2010-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_358', 'c6865cf98b133f1f3de596a4a2894630'),
(359, 'Isabel', 'Vega', 45044055, '2010-10-31', 345789012, 3, NULL, '', '', 'isabelVega_359', 'c6865cf98b133f1f3de596a4a2894630'),
(360, 'Gabriel', 'Castillo', 45054072, '2010-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_360', 'c6865cf98b133f1f3de596a4a2894630'),
(361, 'Martina', 'Santos', 45000453, '2010-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_361', 'c6865cf98b133f1f3de596a4a2894630'),
(362, 'Juan', 'Ramos', 45004454, '2010-04-17', 345672345, 3, NULL, '', '', 'juanRamos_362', 'c6865cf98b133f1f3de596a4a2894630'),
(363, 'Andrea', 'Romero', 45000055, '2010-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_363', 'c6865cf98b133f1f3de596a4a2894630'),
(364, 'Tomas', 'Peralta', 45000456, '2010-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_364', 'c6865cf98b133f1f3de596a4a2894630'),
(365, 'Valentino', 'Guzman', 45000457, '2010-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_365', 'c6865cf98b133f1f3de596a4a2894630'),
(366, 'Luciana', 'Jimenez', 45022058, '2010-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_366', 'c6865cf98b133f1f3de596a4a2894630'),
(367, 'Mariana', 'Vargas', 45012005, '2010-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_367', 'c6865cf98b133f1f3de596a4a2894630'),
(368, 'Nicolas', 'Sanchez', 45000160, '2010-05-15', 345123456, 3, NULL, '', '', 'nicolasSanchez', 'c6865cf98b133f1f3de596a4a2894630'),
(369, 'Valaeria', 'Vera', 45001061, '2010-07-22', 345234567, 3, NULL, '', '', 'valaeriaVera', 'c6865cf98b133f1f3de596a4a2894630'),
(370, 'Florencia', 'Gomez', 45110060, '2010-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_370', 'c6865cf98b133f1f3de596a4a2894630'),
(371, 'Joaquin', 'Silva', 45007066, '2010-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_371', 'c6865cf98b133f1f3de596a4a2894630'),
(372, 'Isabella', 'Perez', 45002264, '2010-09-18', 345567890, 2, NULL, '', '', 'isabellaPerez_372', '1b1844daa452df42c6f9123857ca686c'),
(373, 'Santiago', 'Garcia', 45000265, '2010-04-30', 345678901, 2, NULL, '', '', 'santiagoGarcia_373', '1b1844daa452df42c6f9123857ca686c'),
(374, 'Sofia', 'Martinez', 45000066, '2010-06-14', 345789012, 2, NULL, '', '', 'sofiaMartinez_374', '1b1844daa452df42c6f9123857ca686c'),
(375, 'Sebastian', 'Lopez', 45042060, '2010-12-25', 345890123, 2, NULL, '', '', 'sebastianLopez_375', '1b1844daa452df42c6f9123857ca686c'),
(376, 'Valentina', 'Moreno', 45000068, '2010-08-03', 345981234, 2, NULL, '', '', 'valentinaMoreno_376', '1b1844daa452df42c6f9123857ca686c'),
(377, 'Matias', 'Rodriguez', 45055060, '2010-10-09', 345672345, 2, NULL, '', '', 'matiasRodriguez_377', '1b1844daa452df42c6f9123857ca686c'),
(378, 'Lucas', 'Mariani', 45074070, '2010-05-15', 345234123, 2, NULL, '', '', 'lucasMariani_378', '1b1844daa452df42c6f9123857ca686c'),
(379, 'Daniel', 'Gutierrez', 45001071, '2010-01-08', 345345234, 2, NULL, '', '', 'danielGutierrez_379', '1b1844daa452df42c6f9123857ca686c'),
(380, 'Joaquin', 'Torres', 45033072, '2010-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_380', '1b1844daa452df42c6f9123857ca686c'),
(381, 'Catalina', 'Ortega', 45000273, '2010-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_381', '1b1844daa452df42c6f9123857ca686c'),
(382, 'Pedro', 'Pacheco', 45000074, '2010-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_382', '1b1844daa452df42c6f9123857ca686c'),
(383, 'Valeria', 'Rojas', 45000175, '2010-11-12', 345123456, 2, NULL, '', '', 'valeriaRojas_383', '1b1844daa452df42c6f9123857ca686c'),
(384, 'Luis', 'Lara', 45000076, '2010-12-30', 345234567, 2, NULL, '', '', 'luisLara_384', '1b1844daa452df42c6f9123857ca686c'),
(385, 'Florencia', 'Navarro', 45000077, '2010-04-05', 345345678, 2, NULL, '', '', 'florenciaNavarro_385', '1b1844daa452df42c6f9123857ca686c'),
(386, 'Mariana', 'Molina', 45000078, '2010-05-15', 345456789, 2, NULL, 'MaxiKiosko@gmail.com', 'Calle Libretad 234', 'marianaMolina', '1b1844daa452df42c6f9123857ca686c'),
(387, 'Carolina', 'Crudim', 45000679, '2010-06-27', 345567890, 2, NULL, 'perrilove@gmail.com', 'Calle s/nombre 5', 'carolinaCrudim', '1b1844daa452df42c6f9123857ca686c'),
(388, 'Eduardo', 'Gutierrez', 45000080, '2010-08-18', 345678901, 2, NULL, 'Hablopoco@hotmail.com', 'Av de los Martires 654', 'eduardoGutierrez_388', '1b1844daa452df42c6f9123857ca686c'),
(390, 'Juan', 'Rodriguez', 30234567, '1990-07-22', 345234567, 1, NULL, '', '', 'juanRodriguez', '793741d54b00253006453742ad4ed534'),
(391, 'Laura', 'Lopez', 31234570, '1988-03-10', 345345678, 1, NULL, '', '', 'lauraLopez_391', '793741d54b00253006453742ad4ed534'),
(392, 'Carlos', 'Mariani', 32987654, '1977-11-05', 345411111, 1, NULL, 'carlosMartinCampeon@gmail.com', 'Calle Las Lilas 222', 'carlosMariani', '793741d54b00253006453742ad4ed534'),
(395, 'Sofia', 'Hernandez', 33567890, '1970-06-14', 345789012, 1, NULL, '', '', 'sofiaHernandez_395', '793741d54b00253006453742ad4ed534'),
(396, 'Elena', 'Garcia', 31234567, '1985-12-25', 345890123, 1, NULL, '', '', 'elenaGarcia_396', '793741d54b00253006453742ad4ed534'),
(397, 'Diego', 'Diaz', 29876544, '1994-08-03', 345981234, 1, NULL, '', '', 'diegoDiaz_397', '793741d54b00253006453742ad4ed534'),
(399, 'Mariano', 'Moreno', 31456789, '1996-05-15', 345234123, 1, NULL, '', '', 'marianoMoreno_399', '793741d54b00253006453742ad4ed534'),
(400, 'Carolina', 'Gomez', 30123454, '1991-01-08', 345345234, 1, NULL, '', '', 'carolinaGomez_400', '793741d54b00253006453742ad4ed534'),
(401, 'Mariani', 'Torres', 33876543, '1972-03-21', 345456345, 1, NULL, '', '', 'marianiTorres_401', '793741d54b00253006453742ad4ed534'),
(402, 'Florencia', 'Ortega', 32876543, '1978-07-14', 345567456, 1, NULL, '', '', 'florenciaOrtega_402', '793741d54b00253006453742ad4ed534'),
(403, 'Joaquin', 'Pacheco', 33678901, '1973-09-29', 345678567, 1, NULL, '', '', 'joaquinPacheco_403', '793741d54b00253006453742ad4ed534'),
(405, 'Miguel', 'Larrabi', 29432100, '1999-12-30', 345234567, 1, NULL, '', 'Pasaje Larramarra 36', 'miguelLarrabi', '793741d54b00253006453742ad4ed534'),
(406, 'Sara', 'Navarro', 32210987, '1986-02-14', 345345678, 1, NULL, '', '', 'saraNavarro', '793741d54b00253006453742ad4ed534'),
(407, 'Lucas', 'Molina', 30321098, '1993-04-05', 345456789, 1, NULL, '', '', 'lucasMolina_407', '793741d54b00253006453742ad4ed534'),
(408, 'Gabriela', 'Cruz', 32098760, '1976-06-27', 345567890, 1, NULL, '', '', 'gabrielaCruz', '793741d54b00253006453742ad4ed534'),
(410, 'Patricia', 'Vega', 29543211, '1990-10-31', 345789012, 1, NULL, '', '', 'patriciaVega_410', '793741d54b00253006453742ad4ed534'),
(411, 'Ricardo', 'Castillo', 30987654, '1989-12-04', 345890123, 1, NULL, '', '', 'ricardoCastillo', '793741d54b00253006453742ad4ed534'),
(412, 'Fernanda', 'Santos', 31876543, '1998-02-07', 345981234, 1, NULL, '', '', 'fernandaSantos', '793741d54b00253006453742ad4ed534'),
(413, 'Pablo', 'Ramos', 31123456, '1987-04-17', 345672345, 1, NULL, '', '', 'pabloRamos', '793741d54b00253006453742ad4ed534'),
(417, 'Carla', 'Jimenez', 21098701, '1983-12-12', 345567456, 1, NULL, '', '', 'carlaJimenez', '793741d54b00253006453742ad4ed534'),
(427, 'Matias', 'Santos', 39000008, '2003-08-03', 345981234, 2, NULL, '', '', 'matiasSantos_427', '1b1844daa452df42c6f9123857ca686c'),
(443, 'Juan', 'Ramos', 39078024, '2004-04-17', 345672345, 3, NULL, '', '', 'juanRamos_443', 'c6865cf98b133f1f3de596a4a2894630'),
(454, 'Camila', 'Perez', 39000005, '2006-04-30', 345678901, 3, NULL, '', '', 'camilaPerez', 'c6865cf98b133f1f3de596a4a2894630'),
(471, 'Gabriela', 'Castillo', 45600022, '2005-12-04', 345890123, 2, NULL, '', '', 'gabrielaCastillo', '1b1844daa452df42c6f9123857ca686c'),
(472, 'Martin', 'Santos', 44440023, '2007-02-07', 345981234, 2, NULL, '', '', 'martinSantos_472', '1b1844daa452df42c6f9123857ca686c'),
(474, 'Andrea', 'Romero', 39000025, '2003-06-20', 345234123, 2, NULL, '', '', 'andreaRomero_474', '1b1844daa452df42c6f9123857ca686c'),
(483, 'Miguel', 'Perez', 41000004, '2006-09-18', 345567890, 2, NULL, '', '', 'miguelPerez_483', '1b1844daa452df42c6f9123857ca686c');
INSERT INTO `usuarios` (`idUsuarios`, `nombre`, `apellido`, `dni`, `fechaNac`, `telefono`, `tipoUsuario`, `penalidad`, `email`, `direccion`, `username`, `contraseña`) VALUES
(508, 'Mariana', 'Vargas', 41000029, '2006-02-14', 345678567, 2, NULL, '', '', 'marianaVargas_508', '1b1844daa452df42c6f9123857ca686c'),
(509, 'Facundo', 'Sanchez', 41000030, '2006-05-15', 345123456, 2, NULL, '', '', 'facundoSanchez', '1b1844daa452df42c6f9123857ca686c'),
(510, 'ValentÃ­n', 'Vera', 41078031, '2006-07-22', 345234567, 2, NULL, '', '', 'valentã­nVera_510', '1b1844daa452df42c6f9123857ca686c'),
(511, 'Florencia', 'Gomez', 41054032, '2006-03-10', 345345678, 2, NULL, '', '', 'florenciaGomez_511', '1b1844daa452df42c6f9123857ca686c'),
(512, 'Joaquin', 'Silva', 41000033, '2006-11-05', 345456789, 2, NULL, '', '', 'joaquinSilva_512', '1b1844daa452df42c6f9123857ca686c'),
(513, 'Isabella', 'Perez', 41022034, '2006-09-18', 345567890, 2, NULL, '', '', 'isabellaPerez_513', '1b1844daa452df42c6f9123857ca686c'),
(514, 'Santiago', 'Garcia', 41000035, '2006-04-30', 345678901, 2, NULL, '', '', 'santiagoGarcia_514', '1b1844daa452df42c6f9123857ca686c'),
(515, 'Sofia', 'Martinez', 41000036, '2006-06-14', 345789012, 2, NULL, '', '', 'sofiaMartinez_515', '1b1844daa452df42c6f9123857ca686c'),
(516, 'Sebastian', 'Lopez', 41000037, '2006-12-25', 345890123, 2, NULL, '', '', 'sebastianLopez_516', '1b1844daa452df42c6f9123857ca686c'),
(517, 'Valentina', 'Moreno', 41000038, '2006-08-03', 345981234, 2, NULL, '', '', 'valentinaMoreno_517', '1b1844daa452df42c6f9123857ca686c'),
(518, 'Matias', 'Rodriguez', 41000039, '2006-10-09', 345672345, 2, NULL, '', '', 'matiasRodriguez_518', '1b1844daa452df42c6f9123857ca686c'),
(519, 'NicolÃ¡s', 'SÃ¡nchez', 42000000, '2007-05-15', 345123456, 1, NULL, '', '', 'nicolã¡sSã¡nchez_519', '793741d54b00253006453742ad4ed534'),
(520, 'Valentina', 'Martinez', 42000001, '2007-07-22', 345234567, 2, NULL, '', '', 'valentinaMartinez_520', '1b1844daa452df42c6f9123857ca686c'),
(521, 'Santiago', 'Lopez', 42077002, '2007-03-10', 345345678, 2, NULL, '', '', 'santiagoLopez_521', '1b1844daa452df42c6f9123857ca686c'),
(522, 'Isabella', 'Rodriguez', 42001403, '2007-11-05', 345456789, 2, NULL, '', '', 'isabellaRodriguez_522', '1b1844daa452df42c6f9123857ca686c'),
(523, 'Miguel', 'Perez', 42000004, '2007-09-18', 345567890, 2, NULL, '', '', 'miguelPerez_523', '1b1844daa452df42c6f9123857ca686c'),
(524, 'Camila', 'Hernandez', 42000005, '2007-04-30', 345678901, 2, NULL, '', '', 'camilaHernandez_524', '1b1844daa452df42c6f9123857ca686c'),
(525, 'Mateo', 'Fernandez', 42000006, '2007-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_525', '1b1844daa452df42c6f9123857ca686c'),
(526, 'Sofia', 'Diaz', 42011007, '2007-12-25', 345890123, 2, NULL, '', '', 'sofiaDiaz_526', '1b1844daa452df42c6f9123857ca686c'),
(527, 'Matias', 'Santos', 42000008, '2007-08-03', 345981234, 2, NULL, '', '', 'matiasSantos_527', '1b1844daa452df42c6f9123857ca686c'),
(528, 'Lucas', 'Mariani', 42000009, '2007-10-09', 345672345, 2, NULL, '', '', 'lucasMariani_528', '1b1844daa452df42c6f9123857ca686c'),
(529, 'Daniel', 'Garcia', 42000010, '2007-05-15', 345234123, 2, NULL, '', '', 'danielGarcia_529', '1b1844daa452df42c6f9123857ca686c'),
(530, 'Elena', 'Moreno', 42000011, '2007-01-08', 345345234, 2, NULL, '', '', 'elenaMoreno_530', '1b1844daa452df42c6f9123857ca686c'),
(531, 'Joaquin', 'Torres', 42000012, '2007-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_531', '1b1844daa452df42c6f9123857ca686c'),
(532, 'Catalina', 'Ortega', 42000013, '2007-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_532', '1b1844daa452df42c6f9123857ca686c'),
(534, 'Valeria', 'Rojas', 42001015, '2007-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_534', 'c6865cf98b133f1f3de596a4a2894630'),
(535, 'Luis', 'Lara', 42000016, '2007-12-30', 345234567, 3, NULL, '', '', 'luisLara_535', 'c6865cf98b133f1f3de596a4a2894630'),
(536, 'Florencia', 'Navarro', 42000017, '2007-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_536', 'c6865cf98b133f1f3de596a4a2894630'),
(537, 'Mariano', 'Molina', 42044018, '2007-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_537', 'c6865cf98b133f1f3de596a4a2894630'),
(538, 'Carolina', 'Cruz', 42000019, '2007-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_538', 'c6865cf98b133f1f3de596a4a2894630'),
(539, 'Eduardo', 'Gutierrez', 42000020, '2007-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_539', 'c6865cf98b133f1f3de596a4a2894630'),
(540, 'Isabel', 'Vega', 42000021, '2007-10-31', 345789012, 3, NULL, '', '', 'isabelVega_540', 'c6865cf98b133f1f3de596a4a2894630'),
(541, 'Gabriel', 'Castillo', 42000022, '2007-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_541', 'c6865cf98b133f1f3de596a4a2894630'),
(542, 'Martina', 'Santos', 42000023, '2007-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_542', 'c6865cf98b133f1f3de596a4a2894630'),
(543, 'Juan', 'Ramos', 42000024, '2007-04-17', 345672345, 3, NULL, '', '', 'juanRamos_543', 'c6865cf98b133f1f3de596a4a2894630'),
(544, 'Andrea', 'Romero', 42000025, '2007-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_544', 'c6865cf98b133f1f3de596a4a2894630'),
(545, 'Tomas', 'Peralta', 42000026, '2007-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_545', 'c6865cf98b133f1f3de596a4a2894630'),
(546, 'Valentino', 'Guzman', 42000027, '2007-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_546', 'c6865cf98b133f1f3de596a4a2894630'),
(547, 'Luciana', 'Jimenez', 42000028, '2007-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_547', 'c6865cf98b133f1f3de596a4a2894630'),
(548, 'Mariana', 'Vargas', 42078029, '2007-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_548', 'c6865cf98b133f1f3de596a4a2894630'),
(549, 'NicolÃ¡s', 'SÃ¡nchez', 42098030, '2007-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_549', 'c6865cf98b133f1f3de596a4a2894630'),
(550, 'ValentÃ­n', 'Vera', 42000031, '2007-07-22', 345234567, 3, NULL, '', '', 'valentã­nVera_550', 'c6865cf98b133f1f3de596a4a2894630'),
(551, 'Florencia', 'Gomez', 42000032, '2007-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_551', 'c6865cf98b133f1f3de596a4a2894630'),
(552, 'Joaquin', 'Silva', 42000033, '2007-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_552', 'c6865cf98b133f1f3de596a4a2894630'),
(553, 'Isabella', 'Perez', 42000034, '2007-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_553', 'c6865cf98b133f1f3de596a4a2894630'),
(554, 'Santiago', 'Garcia', 42002435, '2007-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_554', 'c6865cf98b133f1f3de596a4a2894630'),
(555, 'Sofia', 'Martinez', 42000036, '2007-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_555', 'c6865cf98b133f1f3de596a4a2894630'),
(556, 'Sebastian', 'Lopez', 42000037, '2007-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_556', 'c6865cf98b133f1f3de596a4a2894630'),
(557, 'Valentina', 'Moreno', 42000038, '2007-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_557', 'c6865cf98b133f1f3de596a4a2894630'),
(558, 'Matias', 'Rodriguez', 42000039, '2007-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_558', 'c6865cf98b133f1f3de596a4a2894630'),
(559, 'Lucas', 'Mariani', 42000040, '2007-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_559', 'c6865cf98b133f1f3de596a4a2894630'),
(560, 'Daniel', 'Gutierrez', 42011041, '2007-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_560', 'c6865cf98b133f1f3de596a4a2894630'),
(561, 'Joaquin', 'Torres', 42000042, '2007-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_561', 'c6865cf98b133f1f3de596a4a2894630'),
(562, 'Catalina', 'Ortega', 42000043, '2007-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_562', 'c6865cf98b133f1f3de596a4a2894630'),
(563, 'Pedro', 'Pacheco', 42011044, '2007-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_563', 'c6865cf98b133f1f3de596a4a2894630'),
(565, 'Luis', 'Lara', 42000046, '2007-12-30', 345234567, 3, NULL, '', '', 'luisLara_565', 'c6865cf98b133f1f3de596a4a2894630'),
(566, 'Florencia', 'Navarro', 42000047, '2007-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_566', 'c6865cf98b133f1f3de596a4a2894630'),
(567, 'Mariano', 'Molina', 42000048, '2007-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_567', 'c6865cf98b133f1f3de596a4a2894630'),
(568, 'Carolina', 'Cruz', 42077049, '2007-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_568', 'c6865cf98b133f1f3de596a4a2894630'),
(569, 'Eduardo', 'Gutierrez', 42044050, '2007-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_569', 'c6865cf98b133f1f3de596a4a2894630'),
(570, 'NicolÃ¡s', 'SÃ¡nchez', 43004100, '2008-05-15', 345123456, 2, NULL, '', '', 'nicolã¡sSã¡nchez_570', '1b1844daa452df42c6f9123857ca686c'),
(572, 'Santiago', 'Lopez', 43002102, '2008-03-10', 345345678, 2, NULL, '', '', 'santiagoLopez_572', '1b1844daa452df42c6f9123857ca686c'),
(573, 'Isabella', 'Rodriguez', 43000003, '2008-11-05', 345456789, 2, NULL, '', '', 'isabellaRodriguez_573', '1b1844daa452df42c6f9123857ca686c'),
(574, 'Miguel', 'Perez', 43004004, '2008-09-18', 345567890, 2, NULL, '', '', 'miguelPerez_574', '1b1844daa452df42c6f9123857ca686c'),
(575, 'Camila', 'Hernandez', 43001005, '2008-04-30', 345678901, 2, NULL, '', '', 'camilaHernandez_575', '1b1844daa452df42c6f9123857ca686c'),
(576, 'Mateo', 'Fernandez', 43000006, '2008-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_576', '1b1844daa452df42c6f9123857ca686c'),
(577, 'Sofia', 'Diaz', 43000007, '2008-12-25', 345890123, 2, NULL, '', '', 'sofiaDiaz_577', '1b1844daa452df42c6f9123857ca686c'),
(578, 'Matias', 'Santos', 43000008, '2008-08-03', 345981234, 2, NULL, '', '', 'matiasSantos_578', '1b1844daa452df42c6f9123857ca686c'),
(579, 'Lucas', 'Mariani', 43000009, '2008-10-09', 345672345, 2, NULL, '', '', 'lucasMariani_579', '1b1844daa452df42c6f9123857ca686c'),
(580, 'Daniel', 'Garcia', 43066010, '2008-05-15', 345234123, 2, NULL, '', '', 'danielGarcia_580', '1b1844daa452df42c6f9123857ca686c'),
(581, 'Elena', 'Moreno', 43000011, '2008-01-08', 345345234, 2, NULL, '', '', 'elenaMoreno_581', '1b1844daa452df42c6f9123857ca686c'),
(582, 'Joaquin', 'Torres', 43800012, '2008-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_582', '1b1844daa452df42c6f9123857ca686c'),
(583, 'Catalina', 'Ortega', 43000013, '2008-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_583', '1b1844daa452df42c6f9123857ca686c'),
(584, 'Pedro', 'Pacheco', 43000014, '2008-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_584', '1b1844daa452df42c6f9123857ca686c'),
(585, 'Valeria', 'Rojas', 43000015, '2008-11-12', 345123456, 2, NULL, '', '', 'valeriaRojas_585', '1b1844daa452df42c6f9123857ca686c'),
(586, 'Luis', 'Lara', 43000016, '2008-12-30', 345234567, 2, NULL, '', '', 'luisLara_586', '1b1844daa452df42c6f9123857ca686c'),
(587, 'Florencia', 'Navarro', 43000017, '2008-04-05', 345345678, 2, NULL, '', '', 'florenciaNavarro_587', '1b1844daa452df42c6f9123857ca686c'),
(588, 'Mariano', 'Molina', 43000018, '2008-05-15', 345456789, 2, NULL, '', '', 'marianoMolina_588', '1b1844daa452df42c6f9123857ca686c'),
(589, 'Carolina', 'Cruz', 43000019, '2008-06-27', 345567890, 2, NULL, '', '', 'carolinaCruz_589', '1b1844daa452df42c6f9123857ca686c'),
(590, 'Eduardo', 'Gutierrez', 43066020, '2008-08-18', 345678901, 2, NULL, '', '', 'eduardoGutierrez_590', '1b1844daa452df42c6f9123857ca686c'),
(591, 'Isabel', 'Vega', 43077021, '2008-10-31', 345789012, 2, NULL, '', '', 'isabelVega_591', '1b1844daa452df42c6f9123857ca686c'),
(592, 'Gabriel', 'Castillo', 43001122, '2008-12-04', 345890123, 2, NULL, '', '', 'gabrielCastillo_592', '1b1844daa452df42c6f9123857ca686c'),
(593, 'Martina', 'Santos', 43000023, '2008-02-07', 345981234, 2, NULL, '', '', 'martinaSantos_593', '1b1844daa452df42c6f9123857ca686c'),
(594, 'Juan', 'Ramos', 43770024, '2008-04-17', 345672345, 2, NULL, '', '', 'juanRamos_594', '1b1844daa452df42c6f9123857ca686c'),
(595, 'Andrea', 'Romero', 43000025, '2008-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_595', 'c6865cf98b133f1f3de596a4a2894630'),
(596, 'Tomas', 'Peralta', 43000026, '2008-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_596', 'c6865cf98b133f1f3de596a4a2894630'),
(597, 'Valentino', 'Guzman', 43520027, '2008-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_597', 'c6865cf98b133f1f3de596a4a2894630'),
(598, 'Luciana', 'Jimenez', 43012028, '2008-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_598', 'c6865cf98b133f1f3de596a4a2894630'),
(599, 'Mariana', 'Vargas', 43000029, '2008-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_599', 'c6865cf98b133f1f3de596a4a2894630'),
(600, 'NicolÃ¡s', 'SÃ¡nchez', 43000030, '2008-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_600', 'c6865cf98b133f1f3de596a4a2894630'),
(601, 'ValentÃ­n', 'Vera', 43000031, '2008-07-22', 345234567, 3, NULL, '', '', 'valentã­nVera_601', 'c6865cf98b133f1f3de596a4a2894630'),
(602, 'Florencia', 'Gomez', 43000032, '2008-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_602', 'c6865cf98b133f1f3de596a4a2894630'),
(603, 'Joaquin', 'Silva', 43000033, '2008-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_603', 'c6865cf98b133f1f3de596a4a2894630'),
(604, 'Isabella', 'Perez', 43000034, '2008-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_604', 'c6865cf98b133f1f3de596a4a2894630'),
(605, 'Santiago', 'Garcia', 43000035, '2008-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_605', 'c6865cf98b133f1f3de596a4a2894630'),
(606, 'Sofia', 'Martinez', 43000036, '2008-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_606', 'c6865cf98b133f1f3de596a4a2894630'),
(607, 'Sebastian', 'Lopez', 43077037, '2008-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_607', 'c6865cf98b133f1f3de596a4a2894630'),
(608, 'Valentina', 'Moreno', 43032038, '2008-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_608', 'c6865cf98b133f1f3de596a4a2894630'),
(609, 'Matias', 'Rodriguez', 43012039, '2008-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_609', 'c6865cf98b133f1f3de596a4a2894630'),
(610, 'Lucas', 'Mariani', 43110040, '2008-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_610', 'c6865cf98b133f1f3de596a4a2894630'),
(611, 'Daniel', 'Gutierrez', 43066041, '2008-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_611', 'c6865cf98b133f1f3de596a4a2894630'),
(612, 'Joaquin', 'Torres', 43030042, '2008-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_612', 'c6865cf98b133f1f3de596a4a2894630'),
(613, 'Catalina', 'Ortega', 43000043, '2008-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_613', 'c6865cf98b133f1f3de596a4a2894630'),
(614, 'Pedro', 'Pacheco', 43000044, '2008-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_614', 'c6865cf98b133f1f3de596a4a2894630'),
(615, 'Valeria', 'Rojas', 43000045, '2008-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_615', 'c6865cf98b133f1f3de596a4a2894630'),
(616, 'Luis', 'Lara', 43000046, '2008-12-30', 345234567, 3, NULL, '', '', 'luisLara_616', 'c6865cf98b133f1f3de596a4a2894630'),
(617, 'Florencia', 'Navarro', 43000047, '2008-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_617', 'c6865cf98b133f1f3de596a4a2894630'),
(618, 'Mariano', 'Molina', 43000048, '2008-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_618', 'c6865cf98b133f1f3de596a4a2894630'),
(619, 'Carolina', 'Cruz', 43000049, '2008-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_619', 'c6865cf98b133f1f3de596a4a2894630'),
(620, 'Eduardo', 'Gutierrez', 43032050, '2008-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_620', 'c6865cf98b133f1f3de596a4a2894630'),
(621, 'Isabel', 'Vega', 43021051, '2008-10-31', 345789012, 3, NULL, '', '', 'isabelVega_621', 'c6865cf98b133f1f3de596a4a2894630'),
(622, 'Gabriel', 'Castillo', 43001152, '2008-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_622', 'c6865cf98b133f1f3de596a4a2894630'),
(623, 'Martina', 'Santos', 43000053, '2008-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_623', 'c6865cf98b133f1f3de596a4a2894630'),
(624, 'Juan', 'Ramos', 43000054, '2008-04-17', 345672345, 3, NULL, '', '', 'juanRamos_624', 'c6865cf98b133f1f3de596a4a2894630'),
(625, 'Andrea', 'Romero', 43012055, '2008-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_625', 'c6865cf98b133f1f3de596a4a2894630'),
(626, 'Tomas', 'Peralta', 43055056, '2008-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_626', 'c6865cf98b133f1f3de596a4a2894630'),
(627, 'Valentino', 'Guzman', 43040057, '2008-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_627', 'c6865cf98b133f1f3de596a4a2894630'),
(628, 'Luciana', 'Jimenez', 43033058, '2008-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_628', 'c6865cf98b133f1f3de596a4a2894630'),
(629, 'Mariana', 'Vargas', 43077059, '2008-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_629', 'c6865cf98b133f1f3de596a4a2894630'),
(630, 'NicolÃ¡s', 'SÃ¡nchez', 44000000, '2009-05-15', 345123456, 2, NULL, '', '', 'nicolã¡sSã¡nchez_630', '1b1844daa452df42c6f9123857ca686c'),
(631, 'Valentina', 'Martinez', 44000001, '2009-07-22', 345234567, 2, NULL, '', '', 'valentinaMartinez_631', '1b1844daa452df42c6f9123857ca686c'),
(632, 'Santiago', 'Lopez', 44001102, '2009-03-10', 345345678, 2, NULL, '', '', 'santiagoLopez_632', '1b1844daa452df42c6f9123857ca686c'),
(633, 'Isabella', 'Rodriguez', 44000003, '2009-11-05', 345456789, 2, NULL, '', '', 'isabellaRodriguez_633', '1b1844daa452df42c6f9123857ca686c'),
(634, 'Miguel', 'Perez', 44003204, '2009-09-18', 345567890, 2, NULL, '', '', 'miguelPerez_634', '1b1844daa452df42c6f9123857ca686c'),
(635, 'Camila', 'Hernandez', 44011005, '2009-04-30', 345678901, 2, NULL, '', '', 'camilaHernandez_635', '1b1844daa452df42c6f9123857ca686c'),
(636, 'Mateo', 'Fernandez', 44033006, '2009-06-14', 345789012, 2, NULL, '', '', 'mateoFernandez_636', '1b1844daa452df42c6f9123857ca686c'),
(637, 'Sofia', 'Diaz', 44000007, '2009-12-25', 345890123, 2, NULL, '', '', 'sofiaDiaz_637', '1b1844daa452df42c6f9123857ca686c'),
(638, 'Matias', 'Santos', 44000008, '2009-08-03', 345981234, 2, NULL, '', '', 'matiasSantos_638', '1b1844daa452df42c6f9123857ca686c'),
(639, 'Lucas', 'Mariani', 44000009, '2009-10-09', 345672345, 2, NULL, '', '', 'lucasMariani_639', '1b1844daa452df42c6f9123857ca686c'),
(640, 'Daniel', 'Garcia', 44000010, '2009-05-15', 345234123, 2, NULL, '', '', 'danielGarcia_640', '1b1844daa452df42c6f9123857ca686c'),
(641, 'Elena', 'Moreno', 44006011, '2009-01-08', 345345234, 2, NULL, '', '', 'elenaMoreno_641', '1b1844daa452df42c6f9123857ca686c'),
(642, 'Joaquin', 'Torres', 44000012, '2009-03-21', 345456345, 2, NULL, '', '', 'joaquinTorres_642', '1b1844daa452df42c6f9123857ca686c'),
(643, 'Catalina', 'Ortega', 44011013, '2009-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_643', '1b1844daa452df42c6f9123857ca686c'),
(644, 'Pedro', 'Pacheco', 44000014, '2009-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_644', '1b1844daa452df42c6f9123857ca686c'),
(645, 'Valeria', 'Rojas', 44000015, '2009-11-12', 345123456, 2, NULL, '', '', 'valeriaRojas_645', '1b1844daa452df42c6f9123857ca686c'),
(646, 'Luis', 'Lara', 44000016, '2009-12-30', 345234567, 2, NULL, '', '', 'luisLara_646', '1b1844daa452df42c6f9123857ca686c'),
(647, 'Florencia', 'Navarro', 44000017, '2009-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_647', 'c6865cf98b133f1f3de596a4a2894630'),
(648, 'Mariano', 'Molina', 44000018, '2009-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_648', 'c6865cf98b133f1f3de596a4a2894630'),
(649, 'Carolina', 'Cruz', 44000019, '2009-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_649', 'c6865cf98b133f1f3de596a4a2894630'),
(651, 'Isabel', 'Vega', 44011021, '2009-10-31', 345789012, 3, NULL, '', '', 'isabelVega_651', 'c6865cf98b133f1f3de596a4a2894630'),
(652, 'Gabriel', 'Castillo', 44000022, '2009-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_652', 'c6865cf98b133f1f3de596a4a2894630'),
(653, 'Martina', 'Santos', 44001023, '2009-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_653', 'c6865cf98b133f1f3de596a4a2894630'),
(654, 'Juan', 'Ramos', 44000024, '2009-04-17', 345672345, 3, NULL, '', '', 'juanRamos_654', 'c6865cf98b133f1f3de596a4a2894630'),
(655, 'Andrea', 'Romero', 44057025, '2009-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_655', 'c6865cf98b133f1f3de596a4a2894630'),
(656, 'Tomas', 'Peralta', 44000026, '2009-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_656', 'c6865cf98b133f1f3de596a4a2894630'),
(657, 'Valentino', 'Guzman', 44000027, '2009-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_657', 'c6865cf98b133f1f3de596a4a2894630'),
(658, 'Luciana', 'Jimenez', 44000028, '2009-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_658', 'c6865cf98b133f1f3de596a4a2894630'),
(659, 'Mariana', 'Vargas', 44000029, '2009-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_659', 'c6865cf98b133f1f3de596a4a2894630'),
(660, 'NicolÃ¡s', 'SÃ¡nchez', 44000030, '2009-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_660', 'c6865cf98b133f1f3de596a4a2894630'),
(661, 'Valeria', 'Vera', 44005036, '2009-07-22', 345234567, 3, NULL, '', '', 'valeriaVera_661', 'c6865cf98b133f1f3de596a4a2894630'),
(662, 'Florencia', 'Gomez', 44000032, '2009-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_662', 'c6865cf98b133f1f3de596a4a2894630'),
(663, 'Joaquin', 'Silva', 44000033, '2009-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_663', 'c6865cf98b133f1f3de596a4a2894630'),
(664, 'Isabella', 'Perez', 44000034, '2009-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_664', 'c6865cf98b133f1f3de596a4a2894630'),
(665, 'Santiago', 'Garcia', 44000035, '2009-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_665', 'c6865cf98b133f1f3de596a4a2894630'),
(666, 'Sofia', 'Martinez', 44003336, '2009-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_666', 'c6865cf98b133f1f3de596a4a2894630'),
(667, 'Sebastian', 'Lopez', 44033037, '2009-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_667', 'c6865cf98b133f1f3de596a4a2894630'),
(668, 'Valentina', 'Moreno', 44030038, '2009-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_668', 'c6865cf98b133f1f3de596a4a2894630'),
(669, 'Matias', 'Rodriguez', 44000039, '2009-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_669', 'c6865cf98b133f1f3de596a4a2894630'),
(670, 'Lucas', 'Mariani', 44000040, '2009-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_670', 'c6865cf98b133f1f3de596a4a2894630'),
(671, 'Daniel', 'Gutierrez', 44005041, '2009-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_671', 'c6865cf98b133f1f3de596a4a2894630'),
(672, 'Joaquin', 'Torres', 44000042, '2009-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_672', 'c6865cf98b133f1f3de596a4a2894630'),
(673, 'Catalina', 'Ortega', 44001043, '2009-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_673', 'c6865cf98b133f1f3de596a4a2894630'),
(674, 'Pedro', 'Pacheco', 44022044, '2009-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_674', 'c6865cf98b133f1f3de596a4a2894630'),
(675, 'Valeria', 'Rojas', 44044045, '2009-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_675', 'c6865cf98b133f1f3de596a4a2894630'),
(676, 'Luis', 'Lara', 44000046, '2009-12-30', 345234567, 3, NULL, '', '', 'luisLara_676', 'c6865cf98b133f1f3de596a4a2894630'),
(677, 'Florencia', 'Navarro', 44000047, '2009-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_677', 'c6865cf98b133f1f3de596a4a2894630'),
(678, 'Mariano', 'Molina', 44000048, '2009-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_678', 'c6865cf98b133f1f3de596a4a2894630'),
(679, 'Carolina', 'Cruz', 44000049, '2009-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_679', 'c6865cf98b133f1f3de596a4a2894630'),
(680, 'Eduardo', 'Gutierrez', 44000050, '2009-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_680', 'c6865cf98b133f1f3de596a4a2894630'),
(681, 'Isabel', 'Vega', 44000051, '2009-10-31', 345789012, 3, NULL, '', '', 'isabelVega_681', 'c6865cf98b133f1f3de596a4a2894630'),
(682, 'Gabriel', 'Castillo', 44000052, '2009-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_682', 'c6865cf98b133f1f3de596a4a2894630'),
(683, 'Martina', 'Santos', 44000053, '2009-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_683', 'c6865cf98b133f1f3de596a4a2894630'),
(684, 'Juan', 'Ramos', 44000054, '2009-04-17', 345672345, 3, NULL, '', '', 'juanRamos_684', 'c6865cf98b133f1f3de596a4a2894630'),
(685, 'Andrea', 'Romero', 44000055, '2009-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_685', 'c6865cf98b133f1f3de596a4a2894630'),
(686, 'Tomas', 'Peralta', 44004056, '2009-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_686', 'c6865cf98b133f1f3de596a4a2894630'),
(687, 'Valentino', 'Guzman', 44000057, '2009-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_687', 'c6865cf98b133f1f3de596a4a2894630'),
(688, 'Luciana', 'Jimenez', 44008058, '2009-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_688', 'c6865cf98b133f1f3de596a4a2894630'),
(689, 'Mariana', 'Vargas', 44000059, '2009-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_689', 'c6865cf98b133f1f3de596a4a2894630'),
(690, 'NicolÃ¡s', 'SÃ¡nchez', 44000060, '2009-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_690', 'c6865cf98b133f1f3de596a4a2894630'),
(691, 'ValentÃ­n', 'Vera', 44000061, '2009-07-22', 345234567, 3, NULL, '', '', 'valentã­nVera_691', 'c6865cf98b133f1f3de596a4a2894630'),
(692, 'Florencia', 'Gomez', 44000062, '2009-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_692', 'c6865cf98b133f1f3de596a4a2894630'),
(693, 'Joaquin', 'Silva', 44000063, '2009-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_693', 'c6865cf98b133f1f3de596a4a2894630'),
(694, 'Isabella', 'Perez', 44007064, '2009-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_694', 'c6865cf98b133f1f3de596a4a2894630'),
(695, 'Santiago', 'Garcia', 44000065, '2009-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_695', 'c6865cf98b133f1f3de596a4a2894630'),
(696, 'NicolÃ¡s', 'SÃ¡nchez', 45000000, '2010-05-15', 345123456, 3, NULL, '', '', 'nicolã¡sSã¡nchez_696', 'c6865cf98b133f1f3de596a4a2894630'),
(697, 'Valentina', 'Martinez', 45000001, '2010-07-22', 345234567, 3, NULL, '', '', 'valentinaMartinez_697', 'c6865cf98b133f1f3de596a4a2894630'),
(698, 'Santiago', 'Lopez', 45000002, '2010-03-10', 345345678, 3, NULL, '', '', 'santiagoLopez_698', 'c6865cf98b133f1f3de596a4a2894630'),
(699, 'Isabella', 'Rodriguez', 45000003, '2010-11-05', 345456789, 3, NULL, '', '', 'isabellaRodriguez_699', 'c6865cf98b133f1f3de596a4a2894630'),
(700, 'Miguel', 'Perez', 45000004, '2010-09-18', 345567890, 3, NULL, '', '', 'miguelPerez_700', 'c6865cf98b133f1f3de596a4a2894630'),
(701, 'Camila', 'Hernandez', 45000005, '2010-04-30', 345678901, 3, NULL, '', '', 'camilaHernandez_701', 'c6865cf98b133f1f3de596a4a2894630'),
(702, 'Mateo', 'Fernandez', 45000006, '2010-06-14', 345789012, 3, NULL, '', '', 'mateoFernandez_702', 'c6865cf98b133f1f3de596a4a2894630'),
(703, 'Sofia', 'Diaz', 45000997, '2010-12-25', 345890123, 3, NULL, '', '', 'sofiaDiaz_703', 'c6865cf98b133f1f3de596a4a2894630'),
(704, 'Matias', 'Santos', 45000008, '2010-08-03', 345981234, 3, NULL, '', '', 'matiasSantos_704', 'c6865cf98b133f1f3de596a4a2894630'),
(705, 'Lucas', 'Mariani', 45000009, '2010-10-09', 345672345, 3, NULL, '', '', 'lucasMariani_705', 'c6865cf98b133f1f3de596a4a2894630'),
(706, 'Daniel', 'Garcia', 45000010, '2010-05-15', 345234123, 3, NULL, '', '', 'danielGarcia_706', 'c6865cf98b133f1f3de596a4a2894630'),
(707, 'Elena', 'Moreno', 45000011, '2010-01-08', 345345234, 3, NULL, '', '', 'elenaMoreno_707', 'c6865cf98b133f1f3de596a4a2894630'),
(708, 'Joaquin', 'Torres', 45000012, '2010-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_708', 'c6865cf98b133f1f3de596a4a2894630'),
(709, 'Catalina', 'Ortega', 55000099, '2010-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_709', 'c6865cf98b133f1f3de596a4a2894630'),
(710, 'Pedro', 'Pacheco', 45000014, '2010-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_710', 'c6865cf98b133f1f3de596a4a2894630'),
(711, 'Valeria', 'Rojas', 45000015, '2010-11-12', 345123456, 3, NULL, '', '', 'valeriaRojas_711', 'c6865cf98b133f1f3de596a4a2894630'),
(712, 'Luis', 'Lara', 45070016, '2010-12-30', 345234567, 3, NULL, '', '', 'luisLara_712', 'c6865cf98b133f1f3de596a4a2894630'),
(713, 'Florencia', 'Navarro', 45000017, '2010-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_713', 'c6865cf98b133f1f3de596a4a2894630'),
(714, 'Mariano', 'Molina', 45000018, '2010-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_714', 'c6865cf98b133f1f3de596a4a2894630'),
(715, 'Carolina', 'Cruz', 45700019, '2010-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_715', 'c6865cf98b133f1f3de596a4a2894630'),
(716, 'Eduardo', 'Gutierrez', 45000020, '2010-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_716', 'c6865cf98b133f1f3de596a4a2894630'),
(717, 'Isabel', 'Vega', 45000021, '2010-10-31', 345789012, 3, NULL, '', '', 'isabelVega_717', 'c6865cf98b133f1f3de596a4a2894630'),
(718, 'Gabriel', 'Castillo', 45030022, '2010-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_718', 'c6865cf98b133f1f3de596a4a2894630'),
(719, 'Martina', 'Santos', 45000623, '2010-02-07', 345981234, 3, NULL, '', '', 'martinaSantos_719', 'c6865cf98b133f1f3de596a4a2894630'),
(720, 'Juan', 'Ramos', 45000024, '2010-04-17', 345672345, 3, NULL, '', '', 'juanRamos_720', 'c6865cf98b133f1f3de596a4a2894630'),
(721, 'Andrea', 'Romero', 45000025, '2010-06-20', 345234123, 3, NULL, '', '', 'andreaRomero_721', 'c6865cf98b133f1f3de596a4a2894630'),
(723, 'Valentino', 'Guzman', 45005027, '2010-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_723', 'c6865cf98b133f1f3de596a4a2894630'),
(724, 'Luciana', 'Jimenez', 45110028, '2010-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_724', 'c6865cf98b133f1f3de596a4a2894630'),
(725, 'Mariana', 'Vargas', 45000028, '2010-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_725', 'c6865cf98b133f1f3de596a4a2894630'),
(726, 'Javier', 'Juarez', 45000030, '2010-05-15', 345123456, 3, NULL, '', '', 'javierJuarez', 'c6865cf98b133f1f3de596a4a2894630'),
(727, 'Valentin', 'Vera', 45008031, '2010-07-22', 345234567, 3, NULL, '', '', 'valentinVera_727', 'c6865cf98b133f1f3de596a4a2894630'),
(728, 'Florencia', 'Gomez', 45000032, '2010-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_728', 'c6865cf98b133f1f3de596a4a2894630'),
(729, 'Joaquin', 'Silva', 45000088, '2010-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_729', 'c6865cf98b133f1f3de596a4a2894630'),
(730, 'Isabella', 'Perez', 45000034, '2010-09-18', 345567890, 3, NULL, '', '', 'isabellaPerez_730', 'c6865cf98b133f1f3de596a4a2894630'),
(731, 'Santiago', 'Garcia', 45000035, '2010-04-30', 345678901, 3, NULL, '', '', 'santiagoGarcia_731', 'c6865cf98b133f1f3de596a4a2894630'),
(732, 'Sofia', 'Martinez', 45111036, '2010-06-14', 345789012, 3, NULL, '', '', 'sofiaMartinez_732', 'c6865cf98b133f1f3de596a4a2894630'),
(733, 'Sebastian', 'Lopez', 45000037, '2010-12-25', 345890123, 3, NULL, '', '', 'sebastianLopez_733', 'c6865cf98b133f1f3de596a4a2894630'),
(734, 'Valentina', 'Moreno', 45000038, '2010-08-03', 345981234, 3, NULL, '', '', 'valentinaMoreno_734', 'c6865cf98b133f1f3de596a4a2894630'),
(735, 'Matias', 'Rodriguez', 45000039, '2010-10-09', 345672345, 3, NULL, '', '', 'matiasRodriguez_735', 'c6865cf98b133f1f3de596a4a2894630'),
(736, 'Lucas', 'Mariani', 45000040, '2010-05-15', 345234123, 3, NULL, '', '', 'lucasMariani_736', 'c6865cf98b133f1f3de596a4a2894630'),
(737, 'Daniel', 'Gutierrez', 45000041, '2010-01-08', 345345234, 3, NULL, '', '', 'danielGutierrez_737', 'c6865cf98b133f1f3de596a4a2894630'),
(738, 'Joaquin', 'Torres', 45000042, '2010-03-21', 345456345, 3, NULL, '', '', 'joaquinTorres_738', 'c6865cf98b133f1f3de596a4a2894630'),
(739, 'Catalina', 'Ortega', 45006043, '2010-07-14', 345567456, 3, NULL, '', '', 'catalinaOrtega_739', 'c6865cf98b133f1f3de596a4a2894630'),
(740, 'Pedro', 'Pacheco', 45660044, '2010-09-29', 345678567, 3, NULL, '', '', 'pedroPacheco_740', 'c6865cf98b133f1f3de596a4a2894630'),
(742, 'Luis', 'Lara', 45000046, '2010-12-30', 345234567, 3, NULL, '', '', 'luisLara_742', 'c6865cf98b133f1f3de596a4a2894630'),
(743, 'Florencia', 'Navarro', 45000047, '2010-04-05', 345345678, 3, NULL, '', '', 'florenciaNavarro_743', 'c6865cf98b133f1f3de596a4a2894630'),
(744, 'Mariano', 'Molina', 45000048, '2010-05-15', 345456789, 3, NULL, '', '', 'marianoMolina_744', 'c6865cf98b133f1f3de596a4a2894630'),
(745, 'Carolina', 'Cruz', 45000049, '2010-06-27', 345567890, 3, NULL, '', '', 'carolinaCruz_745', 'c6865cf98b133f1f3de596a4a2894630'),
(746, 'Eduardo', 'Gutierrez', 45007050, '2010-08-18', 345678901, 3, NULL, '', '', 'eduardoGutierrez_746', 'c6865cf98b133f1f3de596a4a2894630'),
(747, 'Isabel', 'Vega', 45000051, '2010-10-31', 345789012, 3, NULL, '', '', 'isabelVega_747', 'c6865cf98b133f1f3de596a4a2894630'),
(748, 'Gabriel', 'Castillo', 45000052, '2010-12-04', 345890123, 3, NULL, '', '', 'gabrielCastillo_748', 'c6865cf98b133f1f3de596a4a2894630'),
(749, 'Martin', 'Santos', 45000053, '2010-02-07', 345981234, 3, NULL, '', '', 'martinSantos_749', 'c6865cf98b133f1f3de596a4a2894630'),
(750, 'Juana', 'Ramos', 45000054, '1984-06-28', 345672345, 0, NULL, 'JuanaLaCuerda@gmail.com', 'Calle Justicia 200', 'juanaRamos_750', 'c6865cf98b133f1f3de596a4a2894630'),
(752, 'Tomas', 'Peralta', 45000056, '2010-08-23', 345345234, 3, NULL, '', '', 'tomasPeralta_752', 'c6865cf98b133f1f3de596a4a2894630'),
(753, 'Valentino', 'Guzman', 45000057, '2010-10-26', 345456345, 3, NULL, '', '', 'valentinoGuzman_753', 'c6865cf98b133f1f3de596a4a2894630'),
(754, 'Luciana', 'Jimenez', 45000058, '2010-12-12', 345567456, 3, NULL, '', '', 'lucianaJimenez_754', 'c6865cf98b133f1f3de596a4a2894630'),
(755, 'Mariana', 'Vargas', 45000059, '2010-02-14', 345678567, 3, NULL, '', '', 'marianaVargas_755', 'c6865cf98b133f1f3de596a4a2894630'),
(756, 'Natalia', 'Sanchez', 45000260, '2010-05-15', 345123456, 3, NULL, '', '', 'nataliaSanchez', 'c6865cf98b133f1f3de596a4a2894630'),
(757, 'Valentin', 'Vera', 45000061, '2010-07-22', 345234567, 3, NULL, '', '', 'valentinVera_757', 'c6865cf98b133f1f3de596a4a2894630'),
(758, 'Florencia', 'Gomez', 45000062, '2010-03-10', 345345678, 3, NULL, '', '', 'florenciaGomez_758', 'c6865cf98b133f1f3de596a4a2894630'),
(759, 'Joaquin', 'Silva', 45000063, '2010-11-05', 345456789, 3, NULL, '', '', 'joaquinSilva_759', 'c6865cf98b133f1f3de596a4a2894630'),
(760, 'Isabella', 'Perez', 45000064, '2010-09-18', 345567890, 2, NULL, '', '', 'isabellaPerez_760', '1b1844daa452df42c6f9123857ca686c'),
(761, 'Santiago', 'Garcia', 45003065, '2010-04-30', 345678901, 2, NULL, '', '', 'santiagoGarcia_761', '1b1844daa452df42c6f9123857ca686c'),
(762, 'Sofia', 'Martinez', 45000065, '2010-06-14', 345789012, 2, NULL, '', '', 'sofiaMartinez_762', '1b1844daa452df42c6f9123857ca686c'),
(763, 'Sebastian', 'Lopez', 45000067, '2010-12-25', 345890123, 2, NULL, '', '', 'sebastianLopez_763', '1b1844daa452df42c6f9123857ca686c'),
(764, 'Valentina', 'Moreno', 45088068, '2010-08-03', 345981234, 2, NULL, '', '', 'valentinaMoreno_764', '1b1844daa452df42c6f9123857ca686c'),
(765, 'Matias', 'Rodriguez', 45000069, '2010-10-09', 345672345, 2, NULL, '', '', 'matiasRodriguez_765', '1b1844daa452df42c6f9123857ca686c'),
(766, 'Lucas', 'Mariani', 45075072, '2010-05-15', 345234123, 2, NULL, '', '', 'lucasMariani_766', '1b1844daa452df42c6f9123857ca686c'),
(767, 'Daniel', 'Gutierrez', 45120071, '2010-01-08', 345345234, 2, NULL, '', '', 'danielGutierrez_767', '1b1844daa452df42c6f9123857ca686c'),
(768, 'Joaquin', 'Torrejon', 45000071, '2010-03-21', 345456345, 2, NULL, '', '', 'joaquinTorrejon', '1b1844daa452df42c6f9123857ca686c'),
(769, 'Catalina', 'Ortega', 45000173, '2010-07-14', 345567456, 2, NULL, '', '', 'catalinaOrtega_769', '1b1844daa452df42c6f9123857ca686c'),
(770, 'Pedro', 'Pacheco', 45002274, '2010-09-29', 345678567, 2, NULL, '', '', 'pedroPacheco_770', '1b1844daa452df42c6f9123857ca686c'),
(771, 'Valeria', 'Rojas', 45000075, '2010-11-12', 345123456, 2, NULL, '', '', 'valeriaRojas_771', '1b1844daa452df42c6f9123857ca686c'),
(772, 'Luisa', 'Lara', 45000070, '2010-12-30', 345234567, 2, NULL, '', '', 'luisaLara', '1b1844daa452df42c6f9123857ca686c'),
(773, 'Florencia', 'Navarro', 45011077, '2010-04-05', 345345678, 2, NULL, '', '', 'florenciaNavarro_773', '1b1844daa452df42c6f9123857ca686c'),
(774, 'Mariano', 'Molina', 45002278, '2010-05-15', 345456333, 3, NULL, 'MariMoli@hotmail.com', 'calle de las hojas 223', 'marianoMolina_774', 'c6865cf98b133f1f3de596a4a2894630'),
(775, 'Carolina', 'Cruz', 45000079, '2010-06-27', 345644440, 4, NULL, 'CruzCaro@gmail.com', 'Av de los Incas 1123', 'carolinaCruz_775', ''),
(776, 'Carlos', 'Gutemberg', 66978789, '1999-01-01', 546343445, 4, NULL, 'imprenta@gmail.com', 'Calle de la imprenta 435', 'carlosGutemberg', ''),
(779, 'Juana', 'Ballesteros', 40404404, '2010-03-03', 45454545, 3, 0, 'juanalacuerda@gmail.com', 'Calle Orleans 456', 'juanaBallesteros', 'c6865cf98b133f1f3de596a4a2894630'),
(781, 'Augusto', 'Pugliese', 42210330, '0000-00-00', 345630400, 4, 0, 'aupugli@gmail.com', 'Calle 8 de junio 382', 'augustoPugliese', ''),
(782, 'Julian', 'LLanos', 23323232, '1990-06-14', 354252632, 3, 0, 'Llanosmonta@hotmail.com', 'Calle las tunas 1060', 'Usuario', 'c6865cf98b133f1f3de596a4a2894630');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`idEditorial`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`idLibro`),
  ADD KEY `fk_Libros_Editoriales1` (`idEditorial`),
  ADD KEY `fk_Libros_Autores1` (`idAutor`),
  ADD KEY `fk_Libros_Materias1` (`idMateria`);

--
-- Indices de la tabla `libros_reservas`
--
ALTER TABLE `libros_reservas`
  ADD PRIMARY KEY (`libros_Reservas`),
  ADD KEY `fk_Libros_has_Reservas_Libros1` (`idLibro`),
  ADD KEY `fk_Libros_has_Reservas_Reservas1` (`idReserva`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`idMateria`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`idPrestamo`),
  ADD KEY `fk_Usuarios1` (`idUsuarios`);

--
-- Indices de la tabla `prestamos_libros`
--
ALTER TABLE `prestamos_libros`
  ADD PRIMARY KEY (`idPrestamos_Libros`),
  ADD KEY `fk_idPrestamo` (`idPrestamo`),
  ADD KEY `fk_idLibros` (`idLibro`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `fk_Reservas_Usuarios1` (`idUsuarios`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD UNIQUE KEY `unique_username` (`username`),
  ADD UNIQUE KEY `uq_dni` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  MODIFY `idEditorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `idLibro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT de la tabla `libros_reservas`
--
ALTER TABLE `libros_reservas`
  MODIFY `libros_Reservas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `idMateria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `idPrestamo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `prestamos_libros`
--
ALTER TABLE `prestamos_libros`
  MODIFY `idPrestamos_Libros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `idReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `fk_Libros_Autores1` FOREIGN KEY (`idAutor`) REFERENCES `autores` (`idAutor`),
  ADD CONSTRAINT `fk_Libros_Editoriales1` FOREIGN KEY (`idEditorial`) REFERENCES `editoriales` (`idEditorial`),
  ADD CONSTRAINT `fk_Libros_Materias1` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`idMateria`);

--
-- Filtros para la tabla `libros_reservas`
--
ALTER TABLE `libros_reservas`
  ADD CONSTRAINT `fk_Libros_has_Reservas_Libros1` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`),
  ADD CONSTRAINT `fk_Libros_has_Reservas_Reservas1` FOREIGN KEY (`idReserva`) REFERENCES `reservas` (`idReserva`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `fk_Usuarios1` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`);

--
-- Filtros para la tabla `prestamos_libros`
--
ALTER TABLE `prestamos_libros`
  ADD CONSTRAINT `fk_idLibros` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`),
  ADD CONSTRAINT `fk_idPrestamo` FOREIGN KEY (`idPrestamo`) REFERENCES `prestamos` (`idPrestamo`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `fk_Reservas_Usuarios1` FOREIGN KEY (`idUsuarios`) REFERENCES `usuarios` (`idUsuarios`);
--
-- Base de datos: `biblioteca2`
--
CREATE DATABASE IF NOT EXISTS `biblioteca2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `biblioteca2`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `Nombre` varchar(50) NOT NULL,
  `fechaNac` date NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`Nombre`, `fechaNac`, `Apellido`, `genero`) VALUES
('alejandro', '2006-05-18', 'ocampo', 1),
('belen', '1965-09-05', 'lopez', 2),
('carlos', '2000-03-06', 'albarracino', 1),
('celeste', '2002-12-30', 'ibarra', 2),
('eliana', '2003-06-18', 'pestaña ', 2),
('franco', '2001-07-27', 'gomez', 1),
('juan', '1995-11-15', 'gusman', 1),
('rocio', '2020-01-22', 'cabrera', 2),
('Santiago', '2005-02-12', 'benites ', 1),
('sofia', '2010-09-04', 'alba', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `copias`
--

CREATE TABLE `copias` (
  `numero` int(11) NOT NULL,
  `titulo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `copias`
--

INSERT INTO `copias` (`numero`, `titulo`) VALUES
(1, 'la sombra del poso'),
(2, 'sobra del poso'),
(3, 'sobra del poso'),
(4, 'sobra del poso'),
(5, 'el señor de los anil'),
(6, 'el señor de los anil'),
(7, 'el señor de los anil'),
(8, 'el señor de los anil'),
(9, 'el señor de los anil'),
(10, 'la ciudad perdida'),
(11, 'la ciudad perdida'),
(12, 'la ciudad perdida'),
(13, 'la ciudad perdida'),
(14, 'la ciudad perdida'),
(15, 'la venganza de los d'),
(16, 'la venganza de los d'),
(17, 'la venganza de los d'),
(18, 'la herencia maldita'),
(19, 'la herencia maldita'),
(20, 'la herencia maldita');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`Nombre`);

--
-- Indices de la tabla `copias`
--
ALTER TABLE `copias`
  ADD PRIMARY KEY (`numero`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"biblioteca2\",\"table\":\"copias\"},{\"db\":\"biblioteca2\",\"table\":\"autor\"},{\"db\":\"biblioteca\",\"table\":\"libros\"},{\"db\":\"biblioteca\",\"table\":\"autores\"},{\"db\":\"biblioteca\",\"table\":\"usuarios\"},{\"db\":\"biblioteca\",\"table\":\"editoriales\"},{\"db\":\"biblioteca\",\"table\":\"libros_reservas\"},{\"db\":\"biblioteca\",\"table\":\"materias\"},{\"db\":\"biblioteca\",\"table\":\"prestamos\"},{\"db\":\"biblioteca\",\"table\":\"prestamos_libros\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'bd2', 'alumno', '{\"sorted_col\":\"`alumno`.`CURSO` ASC\"}', '2024-05-07 14:39:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-10-03 18:07:33', '{\"Console\\/Mode\":\"show\",\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\",\"lang\":\"es\",\"NavigationWidth\":189}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
