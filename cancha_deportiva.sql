-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2026 a las 16:47:07
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
-- Base de datos: `cancha_deportiva`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `cancha` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(10) NOT NULL,
  `pago` varchar(30) NOT NULL,
  `codigo_pago` varchar(50) DEFAULT NULL,
  `monto` decimal(10,2) NOT NULL,
  `detalle` text DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `estado` varchar(20) DEFAULT 'Confirmado',
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `dni`, `cliente`, `telefono`, `cancha`, `fecha`, `hora`, `pago`, `codigo_pago`, `monto`, `detalle`, `usuario`, `estado`, `fecha_registro`) VALUES
(2, '30676426', 'Freddy Quispe', '983256253', 1, '2026-07-01', '20', 'Yape', 'YP0001', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:13:43'),
(3, '12345678', 'Samuel Ramos', '987654321', 2, '2026-07-01', '21', 'Yape', 'YP0987', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:14:24'),
(4, '45678912', 'Luis Torres', '933039887', 3, '2026-07-01', '19', 'Yape', 'YP667', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:15:05'),
(5, '42763398', 'Roberto Guerra', '984447733', 4, '2026-07-01', '19', 'Yape', 'YP123', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:16:09'),
(6, '46789234', 'Franck Lopez', '987654321', 2, '2026-07-02', '19', 'Yape', 'YP777', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:17:01'),
(7, '45689712', 'Luisa Montoya', '987654321', 4, '2026-07-02', '20', 'Yape', 'YP009', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:18:07'),
(8, '78963412', 'Rodrigo Fernandez', '987632152', 2, '2026-07-03', '19', 'Yape', 'YP0001', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:19:15'),
(9, '78912356', 'Manuel Lopez', '987645343', 4, '2026-07-03', '20', 'Yape', 'YP1234', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:20:48'),
(10, '78902346', 'Rodolfo Gutierrez', '908761234', 2, '2026-07-04', '20', 'Yape', 'YP993', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:22:08'),
(11, '78982234', 'Luis Nuñez', '987654321', 3, '2026-07-05', '21', 'Yape', 'YP003', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:22:45'),
(12, '78965412', 'Paolo Garcia', '986789654', 2, '2026-07-06', '21', 'Yape', 'YP999', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:23:53'),
(13, '43567891', 'Fernando Lopez', '907234123', 2, '2026-07-08', '19', 'Yape', 'YP123', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:24:55'),
(14, '78912346', 'Patricio Lopez', '908123675', 3, '2026-07-09', '21', 'Yape', 'YP1234', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:28:52'),
(15, '78912345', 'Manolo Rojas', '987654321', 3, '2026-07-10', '19', 'Yape', 'YP098', 80.00, '', 'admin@arena7.com', 'Confirmado', '2026-07-11 17:29:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `password`, `fecha_registro`) VALUES
(1, 'admin@arena7.com', 'Admin@2026', '2026-07-09 03:41:24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
