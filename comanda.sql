-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-07-2024 a las 23:07:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comanda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `usuario`, `clave`, `estado`) VALUES
(8, 'Matias', 'matias', '$2y$10$n0820X2Jf3eIl0QppvSXBeUXXaQOC.rOZiC.1Va.KmC.r173wCOqO', 'activo'),
(13, 'Francisco', 'francisco', '$2y$10$GTOxsf0gxh9HC4HTH0DdLOaFE66OXr/EHh8GOVVW6ZLlWX2ktcjlm', 'activo'),
(14, 'Esteban', 'Esteban', '$2y$10$HxiJU23i8uyTAp7/PkKy0.0ex14yjC8YuNmGn0.s7AIT1gWzIOlwS', 'activo'),
(15, 'malena', 'malena', '$2y$10$SBu..YAdgToPCTP6Xh6z0uHbIVVjizrQhQ0ivX.If/gsA8LycVX6m', 'activo'),
(16, 'pedro', 'pedro', '$2y$10$caorY/DTU9RvGhZ5dhUrkOjrpIlC3YCIMmeUDIR5tCtaJY5LwWoBW', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comandas`
--

CREATE TABLE `comandas` (
  `id` varchar(5) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `detalle` varchar(50) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `tiempo_estimado_finalizacion` smallint(6) NOT NULL,
  `costo_total` decimal(10,2) NOT NULL,
  `fecha_hora_creacion` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comandas`
--

INSERT INTO `comandas` (`id`, `id_cliente`, `nombre_cliente`, `id_producto`, `detalle`, `id_mesa`, `tiempo_estimado_finalizacion`, `costo_total`, `fecha_hora_creacion`, `estado`) VALUES
('2o0Fh', 8, 'Matias', 112, 'milanesa a caballo', 10007, 0, 12881.00, '23-11-24 23:11', 'concluida'),
('2o0Fh', 8, 'Matias', 113, 'hamburguesa de garbanzo', 10007, 0, 12881.00, '23-11-24 23:11', 'concluida'),
('DFdNo', 8, 'Matias', 117, 'daikiri', 10003, 0, 1200.00, '23-11-25 03:04', 'concluida'),
('rsmEk', 14, 'Ludmila', 131, 'fideos a la bologniesa', 10002, 0, 16800.00, '24-01-26 03:12', 'pendiente'),
('Tp0ZR', 15, 'malena', 132, 'coca cola', 10004, 0, 1500.00, '24-07-02 22:07', 'concluida'),
('3bGEx', 8, 'Matias', 133, 'milanesa a caballo', 10004, 0, 12500.00, '24-07-02 22:35', 'concluida'),
('3bGEx', 8, 'Matias', 134, 'hamburguesa', 10004, 0, 12500.00, '24-07-02 22:35', 'concluida'),
('3bGEx', 8, 'Matias', 135, 'corona', 10004, 0, 12500.00, '24-07-02 22:35', 'concluida'),
('3bGEx', 8, 'Matias', 136, 'coca cola', 10004, 0, 12500.00, '24-07-02 22:35', 'concluida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `fecha_alta` varchar(50) NOT NULL,
  `fecha_baja` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `usuario`, `clave`, `estado`, `tipo`, `fecha_alta`, `fecha_baja`) VALUES
(28, 'Administrador', 'Administrador', 'admin', '$2y$10$GnvXaMLB3Z3N/TVwOyxsM.njA280.j1VTbik31UJbcCe6LfJWpKlS', 'activo', 'socio', '23-11-24', ''),
(29, 'Cocinero', 'Cocinero', 'cocinero', '$2y$10$EZCt7QW7LsvuRJk5yPSgT.r5LlnulymTigGAn81vaHuUBydu/yNDS', 'activo', 'cocinero', '23-11-24', ''),
(30, 'Bartender', 'Bartender', 'bartender', '$2y$10$udZQLugDPvdidyaWK7B//uxp4ia.O4qlySAbdmYlRzzkZ3sWjCD.G', 'activo', 'bartender', '23-11-24', ''),
(31, 'Mozo', 'Mozo', 'mozo', '$2y$10$frCzoFWqqAUe7poGSAQhS.yW5ovfhvYy3vDNxi/hru1E5EYFke4K2', 'activo', 'mozo', '23-11-24', ''),
(32, 'Cervecero', 'Cervecero', 'cervecero', '$2y$10$4ohPde228gVCJMsN0dNx4OpgpRsDomZLOlltJX7BKoyi4zMtph7rS', 'activo', 'cervecero', '23-11-24', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encuestas`
--

CREATE TABLE `encuestas` (
  `id` varchar(5) NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `puntos_restaurante` tinyint(4) NOT NULL,
  `puntos_cocinero` tinyint(4) NOT NULL,
  `puntos_mozo` tinyint(4) NOT NULL,
  `puntos_mesa` tinyint(4) NOT NULL,
  `experiencia` varchar(66) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `encuestas`
--

INSERT INTO `encuestas` (`id`, `nombre_cliente`, `puntos_restaurante`, `puntos_cocinero`, `puntos_mozo`, `puntos_mesa`, `experiencia`) VALUES
('3IkKG', 'Guillermo', 10, 10, 10, 10, 'el mejor restaurante del universo'),
('S8dy8', 'cliente', 4, 7, 10, 6, 'poca variedad de platos, el lugar se nota viejo pero buen mozo'),
('wulzW', 'cliente', 6, 6, 6, 6, 'lugar muy comun, nada que destacar'),
('tw25S', 'cliente', 10, 10, 9, 8, 'buenisima experiencia, muy rica comida'),
('2o0Fh', 'Matias', 7, 8, 6, 8, 'buena experiencia, recomendable'),
('DFdNo', 'Matias', 3, 4, 6, 2, 'esta vez no fue buena experiencia'),
('Pa0Tl', 'Ludmila', 10, 8, 7, 8, 'comida rica, buena presentacion'),
('UOuyG', 'Ludmila', 3, 2, 4, 5, 'un completo desastre'),
('Tp0ZR', 'malena', 7, 10, 9, 8, 'un completo lujo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` decimal(7,2) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `nombre`, `precio`, `tipo`, `estado`) VALUES
(1, 'milanesa a caballo', 4700.00, 'comida', 'borrado'),
(2, 'milanesa a la napolitana', 4920.50, 'comida', 'activo'),
(3, 'quilmes', 850.00, 'cerveza', 'activo'),
(5, 'Caipirinha', 2500.00, 'trago', 'activo'),
(6, 'volcan de chocolate', 1800.00, 'postre', 'activo'),
(8, 'sorrentinos con tuco', 5100.00, 'comida', 'activo'),
(9, 'fideos a la bolognesa', 4800.00, 'comida', 'activo'),
(10, 'bife de chorizo', 6500.00, 'comida', 'activo'),
(11, 'papas con cheddar', 3300.00, 'comida', 'activo'),
(12, 'hamburguesa', 4500.00, 'comida', 'activo'),
(13, 'gin de maracuya', 4999.91, 'trago', 'activo'),
(14, 'choripan', 2590.50, 'comida', 'activo'),
(16, 'corona', 1800.00, 'cerveza', 'activo'),
(17, 'coca cola', 1500.00, 'trago', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id`, `estado`) VALUES
(10000, 'disponible'),
(10002, 'con cliente esperando pedido'),
(10003, 'cerrada'),
(10004, 'disponible'),
(10005, 'disponible'),
(10006, 'disponible'),
(10007, 'disponible');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `comandas`
--
ALTER TABLE `comandas`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `comandas`
--
ALTER TABLE `comandas`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10008;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
