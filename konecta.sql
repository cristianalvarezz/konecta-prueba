-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2021 a las 23:18:16
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `konecta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adviser`
--

CREATE TABLE `adviser` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cedula` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_usuario` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` int(100) NOT NULL,
  `fecha` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `cliente` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `usuarioregistro` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `genero` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sede` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `adviser`
--

INSERT INTO `adviser` (`id`, `nombre`, `apellido`, `cedula`, `id_usuario`, `telefono`, `fecha`, `cliente`, `usuarioregistro`, `genero`, `sede`) VALUES
(11, 'christian ', 'Alvarez Bertel', '1152463703', '11', 2147483647, '15-06-2021', 'konecta', 'Christian', 'Masculino', 'Ruta N'),
(12, 'maria', 'Alvarez Bertel', '1242314365', '12', 2147483647, '01-06-2021', 'netflix', 'Christian', 'Femenino', 'Buro'),
(13, 'fernando', 'Alvarez Bertel', '1152463703', '13', 2147483647, 'Lunes, 29, 2021', 'Crhsitian', 'Christian', 'Masculino', 'Buro'),
(14, 'fernando', 'Alvarez Bertel', '1243', '14', 2147483647, '15-06-2021', 'christian', 'ejemplo', 'Masculino', 'Puerto Seco'),
(15, 'dewfv', 'fbf', '', '15', 5855908, '1324541', 'qwdewfr', 'luz', 'Masculino', 'Buro'),
(16, 'fernando', 'Alvarez Bertel', '1152463703', '16', 2147483647, '15-06-2021', 'konecta', 'ejemplo', 'Masculino', 'Ruta N'),
(17, 'fernando', 'Alvarez Bertel', '1243', '17', 2147483647, 'Jueves, 12, 2021', 'christian', 'luz', 'Masculino', 'Puerto Seco'),
(18, 'fernando', 'Alvarez Bertel', '1152463703', '18', 2147483647, '05-06-2021', 'christian', 'maria', 'Masculino', 'Ruta N'),
(19, 'fernando', 'alvarez', '1152463703', '19', 2147483647, 'Jueves, 12, 2021', 'maria', 'Christian', 'Masculino', 'Puerto Seco');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(12) NOT NULL,
  `nombre_usuario` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `correo` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `contrasena` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `rango` varchar(100) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `correo`, `contrasena`, `status`, `rango`) VALUES
(11, 'christian alvarez', 'Reg1234', 'Ges1234', 1, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adviser`
--
ALTER TABLE `adviser`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adviser`
--
ALTER TABLE `adviser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
