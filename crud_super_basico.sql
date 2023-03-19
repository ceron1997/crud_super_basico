-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2023 a las 19:23:24
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_super_basico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `a_experiencia` int(11) NOT NULL,
  `f_nacimiento` date NOT NULL,
  `departamento` varchar(150) NOT NULL,
  `municipio` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `a_experiencia`, `f_nacimiento`, `departamento`, `municipio`) VALUES
(2, 'trece', 13, '2023-03-13', '', ''),
(4, 'noe alexander', 3, '2023-03-12', 'ss', 'ciudad de san salvador'),
(5, 'noe alexander', 3, '2023-03-12', 'ss', 'ciudad de san salvador'),
(6, 'noe alexander', 3, '2023-03-12', 'ss', 'ciudad de san salvador'),
(7, 'noe alexander', 3, '2023-03-12', 'ss', 'ciudad de san salvador'),
(8, 'noe alexander', 3, '2023-03-12', 'ss', 'ciudad de san salvador'),
(9, 'juan ', 7, '2023-03-05', 'jnd', 'jnd'),
(11, 'noe alexander', 3, '2023-03-12', '', ''),
(12, 'werty', 4, '2023-03-20', ',./', 'jkml,'),
(13, 'werty', 4, '2023-03-20', ',./', 'jkml,'),
(14, 'trece', 13, '2023-03-13', 'usulutan ', 'santo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `familiar`
--

CREATE TABLE `familiar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `edad` int(11) NOT NULL,
  `parentesco` varchar(150) NOT NULL,
  `departamento` varchar(150) DEFAULT NULL,
  `municipio` varchar(250) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `familiar`
--

INSERT INTO `familiar` (`id`, `nombre`, `edad`, `parentesco`, `departamento`, `municipio`, `id_cliente`) VALUES
(10, 'trececatorce', 16, 'dieciseis', NULL, NULL, 14),
(21, 'trececatorce', 1545, 'dieciseis', NULL, NULL, 2),
(22, 'wdwdw', 45, 'joder tio ', NULL, NULL, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `familiar`
--
ALTER TABLE `familiar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `familiar`
--
ALTER TABLE `familiar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `familiar`
--
ALTER TABLE `familiar`
  ADD CONSTRAINT `familiar_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
