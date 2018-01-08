-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-01-2018 a las 16:57:23
-- Versión del servidor: 5.7.19
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

DROP TABLE IF EXISTS `eventos`;
CREATE TABLE IF NOT EXISTS `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_ini` date NOT NULL,
  `hora_ini` time DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  `dia_completo` int(11) NOT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Eventos_Usuarios_idx` (`Usuarios_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id`, `titulo`, `fecha_ini`, `hora_ini`, `fecha_fin`, `hora_fin`, `dia_completo`, `Usuarios_id`) VALUES
(6, 'evento2', '2018-01-17', '07:00:00', '2018-01-19', '09:00:00', 0, 10),
(5, 'evento1', '2018-01-09', '07:00:00', '2018-01-11', '09:00:00', 0, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `pass`, `nacimiento`) VALUES
(10, 'Nombre de usuario 1', 'user1@gmail.com', '$2y$10$AA4/yvffZlqqRRJzx6QSZeexeKK0socq22ZXXE.V/P01IAwgEO6qC', '2018-01-07'),
(11, 'Nombre de usuario 2', 'user2@gmail.com', '$2y$10$1yJhE/RXTjkTdUQps/H3WOeJl5mRkZOTsEBfTLWG.dndv9UczPyjW', '2018-01-07'),
(12, 'Nombre de usuario 3', 'user3@gmail.com', '$2y$10$KdaqmL/fCiOAynTL95vjPeOD7fPKMoKFmDxsa21IAajW58Xkc/wdC', '2018-01-07');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
