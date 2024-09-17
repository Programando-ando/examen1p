-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2024 a las 06:32:46
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
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_carrito` int(3) NOT NULL,
  `id_p` int(3) NOT NULL,
  `fotop` varchar(100) DEFAULT NULL,
  `nombrep` varchar(100) NOT NULL,
  `talla` varchar(100) DEFAULT NULL,
  `precio` int(3) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `id_u` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id_carrito`, `id_p`, `fotop`, `nombrep`, `talla`, `precio`, `cantidad`, `id_u`) VALUES
(67, 23, '../assets/img_prendas/D_NQ_NP_822400-MLM69922472455_062023-O.webp', 'Sudadera Mexico', 'XL', 350, 1, 4),
(68, 28, '../assets/img_prendas/images.jpeg', 'Gorra de Morat', 'Unitalla', 315, 1, 4),
(69, 32, '../assets/img_prendas/images (2).jpeg', 'Vinilo Si ayer fuera hoy', 'null', 900, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_c` int(3) NOT NULL,
  `categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_c`, `categoria`) VALUES
(6, 'Sudadera'),
(9, 'Playera'),
(10, 'Vinilo'),
(11, 'Gorra'),
(12, 'Kit');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `fecha` datetime DEFAULT NULL,
  `tipomov` varchar(100) NOT NULL,
  `id_p` int(3) NOT NULL,
  `id_u` int(3) NOT NULL,
  `cant` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`fecha`, `tipomov`, `id_p`, `id_u`, `cant`) VALUES
('2024-09-16 18:14:59', 'compra', 22, 7, 50),
('2024-09-16 19:21:04', 'venta', 22, 4, 1),
('2024-09-16 21:43:19', 'venta', 22, 4, 3),
('2024-09-16 21:43:28', 'venta', 22, 4, 6),
('2024-09-16 21:50:25', 'venta', 22, 4, 9),
('2024-09-16 21:54:26', 'venta', 22, 4, 4),
('2024-09-16 21:59:07', 'compra', 23, 7, 50),
('2024-09-16 21:59:51', 'compra', 24, 7, 50),
('2024-09-16 22:00:58', 'compra', 25, 7, 50),
('2024-09-16 22:02:01', 'compra', 26, 7, 50),
('2024-09-16 22:03:02', 'compra', 27, 7, 50),
('2024-09-16 22:03:56', 'compra', 28, 7, 200),
('2024-09-16 22:04:57', 'compra', 29, 7, 50),
('2024-09-16 22:05:35', 'compra', 30, 7, 50),
('2024-09-16 22:06:13', 'compra', 31, 7, 50),
('2024-09-16 22:06:47', 'compra', 32, 7, 50),
('2024-09-16 22:07:32', 'compra', 33, 7, 50),
('2024-09-16 22:07:56', 'venta', 23, 4, 1),
('2024-09-16 22:07:59', 'venta', 28, 4, 1),
('2024-09-16 22:08:02', 'venta', 32, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prendas`
--

CREATE TABLE `prendas` (
  `id_p` int(3) NOT NULL,
  `nombrep` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` int(3) NOT NULL,
  `talla` varchar(20) NOT NULL,
  `cantidadp` int(3) NOT NULL,
  `fotop` varchar(100) DEFAULT NULL,
  `id_c` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `prendas`
--

INSERT INTO `prendas` (`id_p`, `nombrep`, `descripcion`, `precio`, `talla`, `cantidadp`, `fotop`, `id_c`) VALUES
(22, 'Sudadera', 'Sudadera de Morat \"Los estadios\"', 250, 'XL', 50, '../assets/img_prendas/images (1).jpeg', 6),
(23, 'Sudadera Mexico', 'Sudadera de Morat estilo mexicano ', 350, 'XL', 50, '../assets/img_prendas/D_NQ_NP_822400-MLM69922472455_062023-O.webp', 6),
(24, 'Playera Morat', 'Playera de Morat \"Los estadios\"', 150, 'X', 50, '../assets/img_prendas/D_NQ_NP_601571-MLM75057175643_032024-O.webp', 9),
(25, 'Sudadera Tradicional', 'Sudadera de Morat con logo clasico', 200, 'XL', 50, '../assets/img_prendas/D_NQ_NP_832356-MLM49291319210_032022-O.webp', 6),
(26, 'Playera SAFH', 'Playera conmemorativa de la gira SAFH', 200, 'XL', 50, '../assets/img_prendas/PNG_camiseta_conmemorativa_si_ayer_fuera_hoy_morat_back.webp', 9),
(27, 'Kit ¿A donde vamos?', 'Pequeño Kit de Morat ', 300, 'XL', 50, '../assets/img_prendas/D_NQ_NP_867242-MLM46759278296_072021-O.webp', 12),
(28, 'Gorra de Morat', 'Gorra de Morat (Logo tradicional)', 315, 'Unitalla', 200, '../assets/img_prendas/images.jpeg', 11),
(29, 'Vinilo de Sobre el amor y sus efectos secundarios', 'Vinilo del primer album de Morat', 1000, 'null', 50, '../assets/img_prendas/images (4).jpeg', 10),
(30, 'Vinilo Balas perdidas', 'Vinilo del Album Balas Perdidas', 900, 'null', 50, '../assets/img_prendas/D_NQ_NP_744995-MLM75311255238_032024-O.webp', 10),
(31, 'Vinilo ¿A donde vamos?', 'Vinilo del album ¿A donde vamos?', 900, 'null', 50, '../assets/img_prendas/images (3).jpeg', 10),
(32, 'Vinilo Si ayer fuera hoy', 'Vinilo del Album Si ayer fuera hoy', 900, 'null', 50, '../assets/img_prendas/images (2).jpeg', 10),
(33, 'Vinilo Antes de que amanezca', 'Vinilo del EP Antes de que amanezca ', 500, 'null', 50, '../assets/img_prendas/M-MockUpADQAViniloStandard.webp', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomov`
--

CREATE TABLE `tipomov` (
  `id_tipo` int(3) NOT NULL,
  `tipomov` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipomov`
--

INSERT INTO `tipomov` (`id_tipo`, `tipomov`) VALUES
(1, 'compra'),
(2, 'venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_u` int(3) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tipo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `usuario`, `password`, `nombre`, `foto`, `tipo`) VALUES
(4, 'carlos@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'Carlos', '../assets/img_profile/images (4).jpeg', 'cliente'),
(7, 'jcarlos@gmail.com', 'a66f9ce99115a96e313e552416660c1d', 'J Carlos', '../assets/img_profile/m5.png', 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `fk_id_u` (`id_u`),
  ADD KEY `fk_id_p` (`id_p`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD KEY `id_p` (`id_p`),
  ADD KEY `id_u` (`id_u`),
  ADD KEY `tipomov` (`tipomov`);

--
-- Indices de la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD PRIMARY KEY (`id_p`),
  ADD KEY `id_c` (`id_c`);

--
-- Indices de la tabla `tipomov`
--
ALTER TABLE `tipomov`
  ADD PRIMARY KEY (`id_tipo`),
  ADD KEY `idx_tipomov` (`tipomov`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_carrito` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_c` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `prendas`
--
ALTER TABLE `prendas`
  MODIFY `id_p` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `tipomov`
--
ALTER TABLE `tipomov`
  MODIFY `id_tipo` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_u` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD CONSTRAINT `fk_id_p` FOREIGN KEY (`id_p`) REFERENCES `prendas` (`id_p`),
  ADD CONSTRAINT `fk_id_u` FOREIGN KEY (`id_u`) REFERENCES `usuarios` (`id_u`);

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `id_p` FOREIGN KEY (`id_p`) REFERENCES `prendas` (`id_p`),
  ADD CONSTRAINT `id_u` FOREIGN KEY (`id_u`) REFERENCES `usuarios` (`id_u`),
  ADD CONSTRAINT `tipomov` FOREIGN KEY (`tipomov`) REFERENCES `tipomov` (`tipomov`);

--
-- Filtros para la tabla `prendas`
--
ALTER TABLE `prendas`
  ADD CONSTRAINT `id_c` FOREIGN KEY (`id_c`) REFERENCES `categorias` (`id_c`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
