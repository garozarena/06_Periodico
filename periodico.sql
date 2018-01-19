-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2018 a las 14:46:17
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `periodico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `idNoticia` int(11) NOT NULL,
  `mailAutor` text COLLATE utf8_spanish_ci,
  `idCategoria` int(11) DEFAULT NULL,
  `titulo` text COLLATE utf8_spanish_ci,
  `contenido` text COLLATE utf8_spanish_ci,
  `fechaPublicacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`idNoticia`, `mailAutor`, `idCategoria`, `titulo`, `contenido`, `fechaPublicacion`) VALUES
(1, 'noticia1@noticia1.com', 1, 'Titulo de noticia 1', 'Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. Contenido de noticia 1. ', '2018-01-19 09:46:07'),
(2, 'noticia2@noticia2.com', 2, 'Titulo de noticia 2', 'Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. Contenido noticia 2. ', '2018-01-19 09:46:07'),
(3, 'noticia3@noticia3.com', 3, 'Título de noticia 3', 'Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. Contenido de noticia 3. ', '2018-01-19 11:11:29'),
(4, 'noticia4@noticia4.com', 1, 'Título de noticia 4', 'Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. Contenido de noticia 4. ', '2018-01-19 11:13:04'),
(13, 'noticia5@noticia5.com', 3, 'Titulo de la noticia 5', 'Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. Contenido de la noticia 5. ', '2018-01-19 12:56:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`idNoticia`),
  ADD KEY `idCategorias` (`idCategoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `idNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `noticias` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
