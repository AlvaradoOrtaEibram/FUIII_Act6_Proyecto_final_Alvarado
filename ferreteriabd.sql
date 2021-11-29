-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2021 a las 00:07:54
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ferreteriabd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `fecha_nac` varchar(15) NOT NULL,
  `genero` varchar(5) NOT NULL,
  `fecha_reg` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombre`, `apellido`, `correo`, `contraseña`, `telefono`, `fecha_nac`, `genero`, `fecha_reg`) VALUES
(1, 'Eibram Alexis', 'Alvarado Orta', 'habram2218@gmail.com', 'hplokij', '656-296-9712', '2004-05-13', 'M', '2021-11-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `iddescuento` int(45) NOT NULL,
  `porcentaje` varchar(3) NOT NULL,
  `idproducto` varchar(45) NOT NULL,
  `duracion` varchar(15) NOT NULL,
  `fecha_de_inicio` varchar(15) NOT NULL,
  `clientes_elegidos` varchar(15) NOT NULL,
  `precio_final` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`iddescuento`, `porcentaje`, `idproducto`, `duracion`, `fecha_de_inicio`, `clientes_elegidos`, `precio_final`) VALUES
(1, '20', '5', '3 dias', '2021-12-11', 'Vip', '$30'),
(3, '77', '9', '3 horas', '2021-11-27', 'Vip', '$10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `idempleado` int(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `fecha_reg` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`idempleado`, `nombre`, `apellido`, `correo`, `curp`, `telefono`, `fecha_reg`) VALUES
(1, 'Eibram Alexis', 'Alvarado Orta', 'habram2218@gmail.com', 'AAOE040513HZSLRBA4', '656-296-9712', '2021-11-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `observaciones` varchar(100) NOT NULL,
  `caducidad` varchar(15) NOT NULL,
  `departamento` varchar(20) NOT NULL,
  `fecha_entrega` varchar(15) NOT NULL,
  `costo_inicial` varchar(10) NOT NULL,
  `costo_al_publico` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `nombre`, `observaciones`, `caducidad`, `departamento`, `fecha_entrega`, `costo_inicial`, `costo_al_publico`) VALUES
(3, 'Papa', 'nbhftffgvhbhgy  fygygygyggyrd d i so cid jdj j soc ndcdcuehndjcnmx  usj cxsl ah  cjnjnjg jsncjsncjnn', '2021-12-01', '9', '2021-11-26', '$30', '$50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`iddescuento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`idempleado`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  MODIFY `iddescuento` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `idempleado` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
