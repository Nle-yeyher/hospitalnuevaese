-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-03-2025 a las 19:52:55
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
-- Base de datos: `hospitalnuevaese`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarPaciente` (IN `p_nombre` VARCHAR(100), IN `p_apellido` VARCHAR(100), IN `p_fecha_nacimiento` DATE, IN `p_genero` ENUM('M','F'), IN `p_direccion` TEXT, IN `p_telefono` VARCHAR(20), IN `p_correo` VARCHAR(100))   BEGIN
    INSERT INTO pacientes (nombre, apellido, fecha_nacimiento, genero, direccion, telefono, correo)
    VALUES (p_nombre, p_apellido, p_fecha_nacimiento, p_genero, p_direccion, p_telefono, p_correo);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.citas: #1932 - Table &#039;hospitalnuevaese.citas&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.citas: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`citas`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.facturacion: #1932 - Table &#039;hospitalnuevaese.facturacion&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.facturacion: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`facturacion`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulas_medicas`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.formulas_medicas: #1932 - Table &#039;hospitalnuevaese.formulas_medicas&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.formulas_medicas: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`formulas_medicas`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historias_clinicas`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.historias_clinicas: #1932 - Table &#039;hospitalnuevaese.historias_clinicas&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.historias_clinicas: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`historias_clinicas`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.medicamentos: #1932 - Table &#039;hospitalnuevaese.medicamentos&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.medicamentos: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`medicamentos`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.medicos: #1932 - Table &#039;hospitalnuevaese.medicos&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.medicos: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`medicos`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.pacientes: #1932 - Table &#039;hospitalnuevaese.pacientes&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.pacientes: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`pacientes`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--
-- Error leyendo la estructura de la tabla hospitalnuevaese.tratamientos: #1932 - Table &#039;hospitalnuevaese.tratamientos&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla hospitalnuevaese.tratamientos: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `hospitalnuevaese`.`tratamientos`&#039; en la linea 1

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_cantidad_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_cantidad_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_cantidad_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_cantidad_medicos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_cantidad_medicos_especialidad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_cantidad_medicos_especialidad` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_cantidad_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_cantidad_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_canceladas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_canceladas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_completadas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_completadas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_detalladas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_detalladas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_hoy`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_hoy` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_medico_mes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_medico_mes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_ordenadas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_ordenadas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_pendientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_pendientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_por_especialidad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_por_especialidad` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_proximas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_proximas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_consultas_comunes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_consultas_comunes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_edad_promedio_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_edad_promedio_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_especialidades`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_especialidades` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturas_pendientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturas_pendientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_formulas_recientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_formulas_recientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_historias_clinicas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_historias_clinicas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_mas_recetados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_mas_recetados` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_stock_bajo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_stock_bajo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_apellidos_repetidos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_apellidos_repetidos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_apellido_corto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_apellido_corto` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_apellido_z`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_apellido_z` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_con_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_con_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_con_correo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_con_correo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_con_telefono`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_con_telefono` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_correo_espacios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_correo_espacios` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_datos_incompletos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_datos_incompletos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_especialidad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_especialidad` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_especialidad_duplicada`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_especialidad_duplicada` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_mas_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_mas_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_mas_de_100_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_mas_de_100_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_multiples_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_multiples_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_nombre_apellido_iguales`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_nombre_apellido_iguales` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_nombre_completo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_nombre_completo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_nombre_largo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_nombre_largo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_nombre_numeros`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_nombre_numeros` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_pocas_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_pocas_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_por_especialidad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_por_especialidad` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_por_inicial_apellido`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_por_inicial_apellido` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_sin_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_sin_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_sin_contacto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_sin_contacto` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_sin_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_sin_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_telefono_corto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_telefono_corto` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicos_telefono_letras`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicos_telefono_letras` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_numero_citas_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_numero_citas_paciente` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_apellido`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_apellido` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_apellido_corto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_apellido_corto` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_citas_recientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_citas_recientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_correo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_correo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_direccion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_direccion` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_telefono`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_telefono` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_correo_espacios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_correo_espacios` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_datos_incompletos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_datos_incompletos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_frecuentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_frecuentes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_mas_antiguos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_mas_antiguos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_mas_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_mas_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_mas_jovenes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_mas_jovenes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_mayores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_mayores` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_menores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_menores` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_multiples_historias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_multiples_historias` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_multiples_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_multiples_medicos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_nombres_repetidos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_nombres_repetidos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_nombre_a`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_nombre_a` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_nombre_apellido_iguales`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_nombre_apellido_iguales` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_nombre_completo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_nombre_completo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_nombre_corto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_nombre_corto` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_nombre_largo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_nombre_largo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_nombre_numeros`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_nombre_numeros` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_por_genero`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_por_genero` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_por_inicial_apellido`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_por_inicial_apellido` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_por_medico` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_por_medico_detalle`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_por_medico_detalle` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_sin_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_sin_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_sin_contacto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_sin_contacto` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_sin_direccion_historial`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_sin_direccion_historial` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_sin_historia`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_sin_historia` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_sin_historial`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_sin_historial` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_telefono_largo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_telefono_largo` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_telefono_letras`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_telefono_letras` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_promedio_citas_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_promedio_citas_paciente` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_promedio_edad_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_promedio_edad_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_promedio_tratamientos_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_promedio_tratamientos_paciente` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_total_historias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_total_historias` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_total_medicamentos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_total_medicamentos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_total_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_total_medicos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_total_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_total_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tratamientos_activos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tratamientos_activos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tratamientos_anuales`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tratamientos_anuales` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tratamientos_mas_frecuentes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tratamientos_mas_frecuentes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimas_5_facturas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimas_5_facturas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimas_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimas_citas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimas_facturas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimas_facturas` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimas_historias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimas_historias` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimos_5_tratamientos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimos_5_tratamientos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimos_15_usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimos_15_usuarios` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimos_medicos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimos_medicos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimos_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimos_pacientes` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_ultimos_tratamientos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_ultimos_tratamientos` (
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_usuarios_multiples_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_usuarios_multiples_citas` (
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_cantidad_citas`
--
DROP TABLE IF EXISTS `vista_cantidad_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_cantidad_citas`  AS SELECT count(0) AS `total_citas` FROM `citas` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_cantidad_medicos`
--
DROP TABLE IF EXISTS `vista_cantidad_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_cantidad_medicos`  AS SELECT count(0) AS `total_medicos` FROM `medicos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_cantidad_medicos_especialidad`
--
DROP TABLE IF EXISTS `vista_cantidad_medicos_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_cantidad_medicos_especialidad`  AS SELECT `medicos`.`especialidad` AS `especialidad`, count(0) AS `cantidad_medicos` FROM `medicos` GROUP BY `medicos`.`especialidad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_cantidad_pacientes`
--
DROP TABLE IF EXISTS `vista_cantidad_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_cantidad_pacientes`  AS SELECT count(0) AS `total_pacientes` FROM `pacientes` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_canceladas`
--
DROP TABLE IF EXISTS `vista_citas_canceladas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_canceladas`  AS SELECT `citas`.`id_cita` AS `id_cita`, `citas`.`id_paciente` AS `id_paciente`, `citas`.`id_medico` AS `id_medico`, `citas`.`fecha_hora` AS `fecha_hora`, `citas`.`motivo` AS `motivo`, `citas`.`estado` AS `estado` FROM `citas` WHERE `citas`.`estado` = 'cancelada' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_completadas`
--
DROP TABLE IF EXISTS `vista_citas_completadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_completadas`  AS SELECT `citas`.`id_cita` AS `id_cita`, `citas`.`id_paciente` AS `id_paciente`, `citas`.`id_medico` AS `id_medico`, `citas`.`fecha_hora` AS `fecha_hora`, `citas`.`motivo` AS `motivo`, `citas`.`estado` AS `estado` FROM `citas` WHERE `citas`.`estado` = 'completada' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_detalladas`
--
DROP TABLE IF EXISTS `vista_citas_detalladas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_detalladas`  AS SELECT `c`.`id_cita` AS `id_cita`, `c`.`fecha_hora` AS `fecha_hora`, `p`.`nombre` AS `nombre_paciente`, `p`.`apellido` AS `apellido_paciente`, `m`.`nombre` AS `nombre_medico`, `m`.`apellido` AS `apellido_medico` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_hoy`
--
DROP TABLE IF EXISTS `vista_citas_hoy`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_hoy`  AS SELECT `c`.`id_cita` AS `id_cita`, `p`.`nombre` AS `paciente`, `m`.`nombre` AS `medico`, `c`.`fecha_hora` AS `fecha_hora`, `c`.`motivo` AS `motivo`, `c`.`estado` AS `estado` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) WHERE cast(`c`.`fecha_hora` as date) = curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_medico_mes`
--
DROP TABLE IF EXISTS `vista_citas_medico_mes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_medico_mes`  AS SELECT `citas`.`id_medico` AS `id_medico`, count(0) AS `total_citas` FROM `citas` WHERE `citas`.`fecha_hora` >= curdate() - interval 1 month GROUP BY `citas`.`id_medico` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_ordenadas`
--
DROP TABLE IF EXISTS `vista_citas_ordenadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_ordenadas`  AS SELECT `citas`.`id_cita` AS `id_cita`, `citas`.`id_paciente` AS `id_paciente`, `citas`.`id_medico` AS `id_medico`, `citas`.`fecha_hora` AS `fecha_hora`, `citas`.`motivo` AS `motivo`, `citas`.`estado` AS `estado` FROM `citas` ORDER BY `citas`.`fecha_hora` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_pendientes`
--
DROP TABLE IF EXISTS `vista_citas_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_pendientes`  AS SELECT `citas`.`id_cita` AS `id_cita`, `citas`.`id_paciente` AS `id_paciente`, `citas`.`id_medico` AS `id_medico`, `citas`.`fecha_hora` AS `fecha_hora`, `citas`.`motivo` AS `motivo`, `citas`.`estado` AS `estado` FROM `citas` WHERE `citas`.`estado` = 'pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_por_especialidad`
--
DROP TABLE IF EXISTS `vista_citas_por_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_por_especialidad`  AS SELECT `m`.`especialidad` AS `especialidad`, count(0) AS `total_citas` FROM (`citas` `c` join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) GROUP BY `m`.`especialidad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_proximas`
--
DROP TABLE IF EXISTS `vista_citas_proximas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_proximas`  AS SELECT `citas`.`id_cita` AS `id_cita`, `citas`.`id_paciente` AS `id_paciente`, `citas`.`id_medico` AS `id_medico`, `citas`.`fecha_hora` AS `fecha_hora`, `citas`.`motivo` AS `motivo`, `citas`.`estado` AS `estado` FROM `citas` WHERE `citas`.`fecha_hora` between curdate() and curdate() + interval 7 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_consultas_comunes`
--
DROP TABLE IF EXISTS `vista_consultas_comunes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_consultas_comunes`  AS SELECT `citas`.`motivo` AS `motivo`, count(0) AS `total` FROM `citas` GROUP BY `citas`.`motivo` ORDER BY count(0) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_edad_promedio_pacientes`
--
DROP TABLE IF EXISTS `vista_edad_promedio_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_edad_promedio_pacientes`  AS SELECT avg(year(curdate()) - year(`pacientes`.`fecha_nacimiento`)) AS `edad_promedio` FROM `pacientes` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_especialidades`
--
DROP TABLE IF EXISTS `vista_especialidades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_especialidades`  AS SELECT DISTINCT `medicos`.`especialidad` AS `especialidad` FROM `medicos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturas_pendientes`
--
DROP TABLE IF EXISTS `vista_facturas_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_facturas_pendientes`  AS SELECT `f`.`id_factura` AS `id_factura`, `p`.`nombre` AS `paciente`, `f`.`monto` AS `monto`, `f`.`fecha_emision` AS `fecha_emision`, `f`.`estado` AS `estado` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`id_paciente` = `p`.`id_paciente`)) WHERE `f`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_formulas_recientes`
--
DROP TABLE IF EXISTS `vista_formulas_recientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_formulas_recientes`  AS SELECT `fm`.`id_formula` AS `id_formula`, `p`.`nombre` AS `paciente`, `m`.`nombre` AS `medico`, `med`.`nombre` AS `medicamento`, `fm`.`dosis` AS `dosis`, `fm`.`duracion` AS `duracion`, `fm`.`fecha_emision` AS `fecha_emision` FROM (((`formulas_medicas` `fm` join `pacientes` `p` on(`fm`.`id_paciente` = `p`.`id_paciente`)) join `medicos` `m` on(`fm`.`id_medico` = `m`.`id_medico`)) join `medicamentos` `med` on(`fm`.`id_medicamento` = `med`.`id_medicamento`)) WHERE `fm`.`fecha_emision` >= curdate() - interval 30 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_historias_clinicas`
--
DROP TABLE IF EXISTS `vista_historias_clinicas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_historias_clinicas`  AS SELECT `hc`.`id_historia` AS `id_historia`, `p`.`nombre` AS `paciente`, `hc`.`diagnostico` AS `diagnostico`, `hc`.`tratamiento` AS `tratamiento`, `hc`.`fecha_registro` AS `fecha_registro` FROM (`historias_clinicas` `hc` join `pacientes` `p` on(`hc`.`id_paciente` = `p`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_mas_recetados`
--
DROP TABLE IF EXISTS `vista_medicamentos_mas_recetados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_mas_recetados`  AS SELECT `formulas_medicas`.`id_medicamento` AS `id_medicamento`, count(0) AS `total_recetas` FROM `formulas_medicas` GROUP BY `formulas_medicas`.`id_medicamento` ORDER BY count(0) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_stock_bajo`
--
DROP TABLE IF EXISTS `vista_medicamentos_stock_bajo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicamentos_stock_bajo`  AS SELECT `medicamentos`.`id_medicamento` AS `id_medicamento`, `medicamentos`.`nombre` AS `nombre`, `medicamentos`.`descripcion` AS `descripcion`, `medicamentos`.`stock` AS `stock` FROM `medicamentos` WHERE `medicamentos`.`stock` < 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos`
--
DROP TABLE IF EXISTS `vista_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo` FROM `medicos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_apellidos_repetidos`
--
DROP TABLE IF EXISTS `vista_medicos_apellidos_repetidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_apellidos_repetidos`  AS SELECT `medicos`.`apellido` AS `apellido`, count(0) AS `cantidad` FROM `medicos` GROUP BY `medicos`.`apellido` HAVING count(0) > 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_apellido_corto`
--
DROP TABLE IF EXISTS `vista_medicos_apellido_corto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_apellido_corto`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE octet_length(`medicos`.`apellido`) = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_apellido_z`
--
DROP TABLE IF EXISTS `vista_medicos_apellido_z`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_apellido_z`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE `medicos`.`apellido` like '%z' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_con_citas`
--
DROP TABLE IF EXISTS `vista_medicos_con_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_con_citas`  AS SELECT DISTINCT `m`.`id_medico` AS `id_medico`, `m`.`nombre` AS `nombre`, `m`.`apellido` AS `apellido`, `m`.`especialidad` AS `especialidad`, `m`.`telefono` AS `telefono`, `m`.`correo` AS `correo`, `m`.`password` AS `password` FROM (`medicos` `m` join `citas` `c` on(`m`.`id_medico` = `c`.`id_medico`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_con_correo`
--
DROP TABLE IF EXISTS `vista_medicos_con_correo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_con_correo`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`correo` AS `correo` FROM `medicos` WHERE `medicos`.`correo` is not null AND `medicos`.`correo` <> '' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_con_telefono`
--
DROP TABLE IF EXISTS `vista_medicos_con_telefono`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_con_telefono`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE `medicos`.`telefono` is not null AND `medicos`.`telefono` <> '' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_correo_espacios`
--
DROP TABLE IF EXISTS `vista_medicos_correo_espacios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_correo_espacios`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE `medicos`.`correo` like '% %' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_datos_incompletos`
--
DROP TABLE IF EXISTS `vista_medicos_datos_incompletos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_datos_incompletos`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE `medicos`.`nombre` is null OR `medicos`.`apellido` is null OR `medicos`.`especialidad` is null ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_especialidad`
--
DROP TABLE IF EXISTS `vista_medicos_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_especialidad`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` ORDER BY `medicos`.`especialidad` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_especialidad_duplicada`
--
DROP TABLE IF EXISTS `vista_medicos_especialidad_duplicada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_especialidad_duplicada`  AS SELECT `medicos`.`especialidad` AS `especialidad`, count(0) AS `cantidad` FROM `medicos` GROUP BY `medicos`.`especialidad` HAVING count(0) > 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_mas_citas`
--
DROP TABLE IF EXISTS `vista_medicos_mas_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_mas_citas`  AS SELECT `citas`.`id_medico` AS `id_medico`, count(0) AS `total_citas` FROM `citas` GROUP BY `citas`.`id_medico` ORDER BY count(0) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_mas_de_100_citas`
--
DROP TABLE IF EXISTS `vista_medicos_mas_de_100_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_mas_de_100_citas`  AS SELECT `citas`.`id_medico` AS `id_medico`, count(0) AS `total_citas` FROM `citas` GROUP BY `citas`.`id_medico` HAVING `total_citas` > 100 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_multiples_pacientes`
--
DROP TABLE IF EXISTS `vista_medicos_multiples_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_multiples_pacientes`  AS SELECT `m`.`id_medico` AS `id_medico`, `m`.`nombre` AS `nombre`, `m`.`apellido` AS `apellido`, count(`c`.`id_paciente`) AS `total_pacientes` FROM (`medicos` `m` join `citas` `c` on(`m`.`id_medico` = `c`.`id_medico`)) GROUP BY `m`.`id_medico` HAVING count(`c`.`id_paciente`) > 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_nombre_apellido_iguales`
--
DROP TABLE IF EXISTS `vista_medicos_nombre_apellido_iguales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_nombre_apellido_iguales`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE `medicos`.`nombre` = `medicos`.`apellido` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_nombre_completo`
--
DROP TABLE IF EXISTS `vista_medicos_nombre_completo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_nombre_completo`  AS SELECT `medicos`.`id_medico` AS `id_medico`, concat(`medicos`.`nombre`,' ',`medicos`.`apellido`) AS `nombre_completo` FROM `medicos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_nombre_largo`
--
DROP TABLE IF EXISTS `vista_medicos_nombre_largo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_nombre_largo`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE octet_length(`medicos`.`nombre`) > 15 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_nombre_numeros`
--
DROP TABLE IF EXISTS `vista_medicos_nombre_numeros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_nombre_numeros`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE `medicos`.`nombre` regexp '[0-9]' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_pocas_citas`
--
DROP TABLE IF EXISTS `vista_medicos_pocas_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_pocas_citas`  AS SELECT `citas`.`id_medico` AS `id_medico`, count(0) AS `total_citas` FROM `citas` GROUP BY `citas`.`id_medico` HAVING `total_citas` < 5 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_por_especialidad`
--
DROP TABLE IF EXISTS `vista_medicos_por_especialidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_por_especialidad`  AS SELECT `medicos`.`especialidad` AS `especialidad`, count(0) AS `total` FROM `medicos` GROUP BY `medicos`.`especialidad` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_por_inicial_apellido`
--
DROP TABLE IF EXISTS `vista_medicos_por_inicial_apellido`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_por_inicial_apellido`  AS SELECT left(`medicos`.`apellido`,1) AS `inicial`, count(0) AS `cantidad` FROM `medicos` GROUP BY left(`medicos`.`apellido`,1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_sin_citas`
--
DROP TABLE IF EXISTS `vista_medicos_sin_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_sin_citas`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE !(`medicos`.`id_medico` in (select `citas`.`id_medico` from `citas`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_sin_contacto`
--
DROP TABLE IF EXISTS `vista_medicos_sin_contacto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_sin_contacto`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE (`medicos`.`correo` is null OR `medicos`.`correo` = '') AND (`medicos`.`telefono` is null OR `medicos`.`telefono` = '') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_sin_pacientes`
--
DROP TABLE IF EXISTS `vista_medicos_sin_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_sin_pacientes`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido` FROM `medicos` WHERE !(`medicos`.`id_medico` in (select distinct `citas`.`id_medico` from `citas`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_telefono_corto`
--
DROP TABLE IF EXISTS `vista_medicos_telefono_corto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_telefono_corto`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE octet_length(`medicos`.`telefono`) = (select min(octet_length(`medicos`.`telefono`)) from `medicos`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicos_telefono_letras`
--
DROP TABLE IF EXISTS `vista_medicos_telefono_letras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_medicos_telefono_letras`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` WHERE `medicos`.`telefono` regexp '[a-zA-Z]' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_numero_citas_paciente`
--
DROP TABLE IF EXISTS `vista_numero_citas_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_numero_citas_paciente`  AS SELECT `citas`.`id_paciente` AS `id_paciente`, count(0) AS `total_citas` FROM `citas` GROUP BY `citas`.`id_paciente` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes`
--
DROP TABLE IF EXISTS `vista_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo` FROM `pacientes` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_apellido`
--
DROP TABLE IF EXISTS `vista_pacientes_apellido`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_apellido`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` ORDER BY `pacientes`.`apellido` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_apellido_corto`
--
DROP TABLE IF EXISTS `vista_pacientes_apellido_corto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_apellido_corto`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE octet_length(`pacientes`.`apellido`) < 3 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_citas_recientes`
--
DROP TABLE IF EXISTS `vista_pacientes_citas_recientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_citas_recientes`  AS SELECT DISTINCT `p`.`id_paciente` AS `id_paciente`, `p`.`nombre` AS `nombre`, `p`.`apellido` AS `apellido` FROM (`pacientes` `p` join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) WHERE `c`.`fecha_hora` >= curdate() - interval 7 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_citas`
--
DROP TABLE IF EXISTS `vista_pacientes_con_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_con_citas`  AS SELECT DISTINCT `p`.`id_paciente` AS `id_paciente`, `p`.`nombre` AS `nombre`, `p`.`apellido` AS `apellido`, `p`.`fecha_nacimiento` AS `fecha_nacimiento`, `p`.`genero` AS `genero`, `p`.`direccion` AS `direccion`, `p`.`telefono` AS `telefono`, `p`.`correo` AS `correo`, `p`.`password` AS `password` FROM (`pacientes` `p` join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_correo`
--
DROP TABLE IF EXISTS `vista_pacientes_con_correo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_con_correo`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE `pacientes`.`correo` is not null AND `pacientes`.`correo` <> '' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_direccion`
--
DROP TABLE IF EXISTS `vista_pacientes_con_direccion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_con_direccion`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`direccion` AS `direccion` FROM `pacientes` WHERE `pacientes`.`direccion` is not null AND `pacientes`.`direccion` <> '' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_telefono`
--
DROP TABLE IF EXISTS `vista_pacientes_con_telefono`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_con_telefono`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`telefono` AS `telefono` FROM `pacientes` WHERE `pacientes`.`telefono` is not null AND `pacientes`.`telefono` <> '' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_correo_espacios`
--
DROP TABLE IF EXISTS `vista_pacientes_correo_espacios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_correo_espacios`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE `pacientes`.`correo` like '% %' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_datos_incompletos`
--
DROP TABLE IF EXISTS `vista_pacientes_datos_incompletos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_datos_incompletos`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE `pacientes`.`nombre` is null OR `pacientes`.`apellido` is null OR `pacientes`.`telefono` is null AND `pacientes`.`correo` is null AND `pacientes`.`direccion` is null ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_frecuentes`
--
DROP TABLE IF EXISTS `vista_pacientes_frecuentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_frecuentes`  AS SELECT `citas`.`id_paciente` AS `id_paciente`, count(0) AS `total_citas` FROM `citas` GROUP BY `citas`.`id_paciente` HAVING `total_citas` > 5 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_mas_antiguos`
--
DROP TABLE IF EXISTS `vista_pacientes_mas_antiguos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_mas_antiguos`  AS SELECT `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento` FROM `pacientes` ORDER BY `pacientes`.`fecha_nacimiento` ASC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_mas_citas`
--
DROP TABLE IF EXISTS `vista_pacientes_mas_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_mas_citas`  AS SELECT `citas`.`id_paciente` AS `id_paciente`, count(0) AS `total_citas` FROM `citas` GROUP BY `citas`.`id_paciente` ORDER BY count(0) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_mas_jovenes`
--
DROP TABLE IF EXISTS `vista_pacientes_mas_jovenes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_mas_jovenes`  AS SELECT `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento` FROM `pacientes` ORDER BY `pacientes`.`fecha_nacimiento` DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_mayores`
--
DROP TABLE IF EXISTS `vista_pacientes_mayores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_mayores`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE timestampdiff(YEAR,`pacientes`.`fecha_nacimiento`,curdate()) >= 60 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_menores`
--
DROP TABLE IF EXISTS `vista_pacientes_menores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_menores`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE year(curdate()) - year(`pacientes`.`fecha_nacimiento`) < 18 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_multiples_historias`
--
DROP TABLE IF EXISTS `vista_pacientes_multiples_historias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_multiples_historias`  AS SELECT `historias_clinicas`.`id_paciente` AS `id_paciente`, count(0) AS `total_historias` FROM `historias_clinicas` GROUP BY `historias_clinicas`.`id_paciente` HAVING `total_historias` > 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_multiples_medicos`
--
DROP TABLE IF EXISTS `vista_pacientes_multiples_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_multiples_medicos`  AS SELECT `p`.`id_paciente` AS `id_paciente`, `p`.`nombre` AS `nombre`, `p`.`apellido` AS `apellido`, count(distinct `c`.`id_medico`) AS `total_medicos` FROM (`pacientes` `p` join `citas` `c` on(`p`.`id_paciente` = `c`.`id_paciente`)) GROUP BY `p`.`id_paciente` HAVING count(distinct `c`.`id_medico`) > 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_nombres_repetidos`
--
DROP TABLE IF EXISTS `vista_pacientes_nombres_repetidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_nombres_repetidos`  AS SELECT `pacientes`.`nombre` AS `nombre`, count(0) AS `cantidad` FROM `pacientes` GROUP BY `pacientes`.`nombre` HAVING count(0) > 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_nombre_a`
--
DROP TABLE IF EXISTS `vista_pacientes_nombre_a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_nombre_a`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE `pacientes`.`nombre` like 'A%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_nombre_apellido_iguales`
--
DROP TABLE IF EXISTS `vista_pacientes_nombre_apellido_iguales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_nombre_apellido_iguales`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE `pacientes`.`nombre` = `pacientes`.`apellido` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_nombre_completo`
--
DROP TABLE IF EXISTS `vista_pacientes_nombre_completo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_nombre_completo`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, concat(`pacientes`.`nombre`,' ',`pacientes`.`apellido`) AS `nombre_completo` FROM `pacientes` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_nombre_corto`
--
DROP TABLE IF EXISTS `vista_pacientes_nombre_corto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_nombre_corto`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE octet_length(`pacientes`.`nombre`) = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_nombre_largo`
--
DROP TABLE IF EXISTS `vista_pacientes_nombre_largo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_nombre_largo`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE octet_length(`pacientes`.`nombre`) > 15 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_nombre_numeros`
--
DROP TABLE IF EXISTS `vista_pacientes_nombre_numeros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_nombre_numeros`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE `pacientes`.`nombre` regexp '[0-9]' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_por_genero`
--
DROP TABLE IF EXISTS `vista_pacientes_por_genero`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_por_genero`  AS SELECT `pacientes`.`genero` AS `genero`, count(0) AS `total` FROM `pacientes` GROUP BY `pacientes`.`genero` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_por_inicial_apellido`
--
DROP TABLE IF EXISTS `vista_pacientes_por_inicial_apellido`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_por_inicial_apellido`  AS SELECT left(`pacientes`.`apellido`,1) AS `inicial`, count(0) AS `cantidad` FROM `pacientes` GROUP BY left(`pacientes`.`apellido`,1) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_por_medico`
--
DROP TABLE IF EXISTS `vista_pacientes_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_por_medico`  AS SELECT `citas`.`id_medico` AS `id_medico`, count(distinct `citas`.`id_paciente`) AS `total_pacientes` FROM `citas` GROUP BY `citas`.`id_medico` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_por_medico_detalle`
--
DROP TABLE IF EXISTS `vista_pacientes_por_medico_detalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_por_medico_detalle`  AS SELECT `c`.`id_medico` AS `id_medico`, `m`.`nombre` AS `nombre`, `m`.`apellido` AS `apellido`, count(distinct `c`.`id_paciente`) AS `total_pacientes` FROM (`citas` `c` join `medicos` `m` on(`c`.`id_medico` = `m`.`id_medico`)) GROUP BY `c`.`id_medico` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_sin_citas`
--
DROP TABLE IF EXISTS `vista_pacientes_sin_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_sin_citas`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE !(`pacientes`.`id_paciente` in (select `citas`.`id_paciente` from `citas`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_sin_contacto`
--
DROP TABLE IF EXISTS `vista_pacientes_sin_contacto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_sin_contacto`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE (`pacientes`.`correo` is null OR `pacientes`.`correo` = '') AND (`pacientes`.`telefono` is null OR `pacientes`.`telefono` = '') ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_sin_direccion_historial`
--
DROP TABLE IF EXISTS `vista_pacientes_sin_direccion_historial`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_sin_direccion_historial`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE (`pacientes`.`direccion` is null OR `pacientes`.`direccion` = '') AND !(`pacientes`.`id_paciente` in (select distinct `historias_clinicas`.`id_paciente` from `historias_clinicas`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_sin_historia`
--
DROP TABLE IF EXISTS `vista_pacientes_sin_historia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_sin_historia`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE !(`pacientes`.`id_paciente` in (select `historias_clinicas`.`id_paciente` from `historias_clinicas`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_sin_historial`
--
DROP TABLE IF EXISTS `vista_pacientes_sin_historial`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_sin_historial`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido` FROM `pacientes` WHERE !(`pacientes`.`id_paciente` in (select distinct `historias_clinicas`.`id_paciente` from `historias_clinicas`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_telefono_largo`
--
DROP TABLE IF EXISTS `vista_pacientes_telefono_largo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_telefono_largo`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE octet_length(`pacientes`.`telefono`) = (select max(octet_length(`pacientes`.`telefono`)) from `pacientes`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_telefono_letras`
--
DROP TABLE IF EXISTS `vista_pacientes_telefono_letras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pacientes_telefono_letras`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` WHERE `pacientes`.`telefono` regexp '[a-zA-Z]' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_promedio_citas_paciente`
--
DROP TABLE IF EXISTS `vista_promedio_citas_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_promedio_citas_paciente`  AS SELECT avg(`subquery`.`cantidad`) AS `promedio_citas` FROM (select `citas`.`id_paciente` AS `id_paciente`,count(0) AS `cantidad` from `citas` group by `citas`.`id_paciente`) AS `subquery` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_promedio_edad_pacientes`
--
DROP TABLE IF EXISTS `vista_promedio_edad_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_promedio_edad_pacientes`  AS SELECT avg(timestampdiff(YEAR,`pacientes`.`fecha_nacimiento`,curdate())) AS `edad_promedio` FROM `pacientes` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_promedio_tratamientos_paciente`
--
DROP TABLE IF EXISTS `vista_promedio_tratamientos_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_promedio_tratamientos_paciente`  AS SELECT avg(`subquery`.`total`) AS `promedio_tratamientos` FROM (select `tratamientos`.`id_paciente` AS `id_paciente`,count(0) AS `total` from `tratamientos` group by `tratamientos`.`id_paciente`) AS `subquery` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_total_historias`
--
DROP TABLE IF EXISTS `vista_total_historias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_total_historias`  AS SELECT count(0) AS `total_historias` FROM `historias_clinicas` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_total_medicamentos`
--
DROP TABLE IF EXISTS `vista_total_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_total_medicamentos`  AS SELECT count(0) AS `total_medicamentos` FROM `medicamentos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_total_medicos`
--
DROP TABLE IF EXISTS `vista_total_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_total_medicos`  AS SELECT count(0) AS `total_medicos` FROM `medicos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_total_pacientes`
--
DROP TABLE IF EXISTS `vista_total_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_total_pacientes`  AS SELECT count(0) AS `total_pacientes` FROM `pacientes` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tratamientos_activos`
--
DROP TABLE IF EXISTS `vista_tratamientos_activos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_tratamientos_activos`  AS SELECT `t`.`id_tratamiento` AS `id_tratamiento`, `p`.`nombre` AS `paciente`, `t`.`descripcion` AS `descripcion`, `t`.`fecha_inicio` AS `fecha_inicio`, `t`.`fecha_fin` AS `fecha_fin` FROM (`tratamientos` `t` join `pacientes` `p` on(`t`.`id_paciente` = `p`.`id_paciente`)) WHERE `t`.`fecha_fin` is null OR `t`.`fecha_fin` >= curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tratamientos_anuales`
--
DROP TABLE IF EXISTS `vista_tratamientos_anuales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_tratamientos_anuales`  AS SELECT count(0) AS `total` FROM `tratamientos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tratamientos_mas_frecuentes`
--
DROP TABLE IF EXISTS `vista_tratamientos_mas_frecuentes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_tratamientos_mas_frecuentes`  AS SELECT `tratamientos`.`id_tratamiento` AS `id_tratamiento`, count(0) AS `veces_aplicado` FROM `tratamientos` GROUP BY `tratamientos`.`id_tratamiento` ORDER BY count(0) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimas_5_facturas`
--
DROP TABLE IF EXISTS `vista_ultimas_5_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimas_5_facturas`  AS SELECT `facturacion`.`id_factura` AS `id_factura`, `facturacion`.`id_paciente` AS `id_paciente`, `facturacion`.`id_cita` AS `id_cita`, `facturacion`.`monto` AS `monto`, `facturacion`.`fecha_emision` AS `fecha_emision`, `facturacion`.`estado` AS `estado` FROM `facturacion` ORDER BY `facturacion`.`id_factura` DESC LIMIT 0, 5 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimas_citas`
--
DROP TABLE IF EXISTS `vista_ultimas_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimas_citas`  AS SELECT `citas`.`id_cita` AS `id_cita`, `citas`.`id_paciente` AS `id_paciente`, `citas`.`id_medico` AS `id_medico`, `citas`.`fecha_hora` AS `fecha_hora`, `citas`.`motivo` AS `motivo`, `citas`.`estado` AS `estado` FROM `citas` ORDER BY `citas`.`fecha_hora` DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimas_facturas`
--
DROP TABLE IF EXISTS `vista_ultimas_facturas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimas_facturas`  AS SELECT `facturacion`.`id_factura` AS `id_factura`, `facturacion`.`id_paciente` AS `id_paciente`, `facturacion`.`id_cita` AS `id_cita`, `facturacion`.`monto` AS `monto`, `facturacion`.`fecha_emision` AS `fecha_emision`, `facturacion`.`estado` AS `estado` FROM `facturacion` ORDER BY `facturacion`.`id_factura` DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimas_historias`
--
DROP TABLE IF EXISTS `vista_ultimas_historias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimas_historias`  AS SELECT `historias_clinicas`.`id_historia` AS `id_historia`, `historias_clinicas`.`id_paciente` AS `id_paciente`, `historias_clinicas`.`diagnostico` AS `diagnostico`, `historias_clinicas`.`tratamiento` AS `tratamiento`, `historias_clinicas`.`fecha_registro` AS `fecha_registro` FROM `historias_clinicas` ORDER BY `historias_clinicas`.`id_historia` DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimos_5_tratamientos`
--
DROP TABLE IF EXISTS `vista_ultimos_5_tratamientos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimos_5_tratamientos`  AS SELECT `tratamientos`.`id_tratamiento` AS `id_tratamiento`, `tratamientos`.`id_paciente` AS `id_paciente`, `tratamientos`.`descripcion` AS `descripcion`, `tratamientos`.`fecha_inicio` AS `fecha_inicio`, `tratamientos`.`fecha_fin` AS `fecha_fin` FROM `tratamientos` ORDER BY `tratamientos`.`id_tratamiento` DESC LIMIT 0, 5 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimos_15_usuarios`
--
DROP TABLE IF EXISTS `vista_ultimos_15_usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimos_15_usuarios`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` ORDER BY `pacientes`.`id_paciente` DESC LIMIT 0, 15 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimos_medicos`
--
DROP TABLE IF EXISTS `vista_ultimos_medicos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimos_medicos`  AS SELECT `medicos`.`id_medico` AS `id_medico`, `medicos`.`nombre` AS `nombre`, `medicos`.`apellido` AS `apellido`, `medicos`.`especialidad` AS `especialidad`, `medicos`.`telefono` AS `telefono`, `medicos`.`correo` AS `correo`, `medicos`.`password` AS `password` FROM `medicos` ORDER BY `medicos`.`id_medico` DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimos_pacientes`
--
DROP TABLE IF EXISTS `vista_ultimos_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimos_pacientes`  AS SELECT `pacientes`.`id_paciente` AS `id_paciente`, `pacientes`.`nombre` AS `nombre`, `pacientes`.`apellido` AS `apellido`, `pacientes`.`fecha_nacimiento` AS `fecha_nacimiento`, `pacientes`.`genero` AS `genero`, `pacientes`.`direccion` AS `direccion`, `pacientes`.`telefono` AS `telefono`, `pacientes`.`correo` AS `correo`, `pacientes`.`password` AS `password` FROM `pacientes` ORDER BY `pacientes`.`id_paciente` DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_ultimos_tratamientos`
--
DROP TABLE IF EXISTS `vista_ultimos_tratamientos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_ultimos_tratamientos`  AS SELECT `tratamientos`.`id_tratamiento` AS `id_tratamiento`, `tratamientos`.`id_paciente` AS `id_paciente`, `tratamientos`.`descripcion` AS `descripcion`, `tratamientos`.`fecha_inicio` AS `fecha_inicio`, `tratamientos`.`fecha_fin` AS `fecha_fin` FROM `tratamientos` ORDER BY `tratamientos`.`id_tratamiento` DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_usuarios_multiples_citas`
--
DROP TABLE IF EXISTS `vista_usuarios_multiples_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_usuarios_multiples_citas`  AS SELECT `citas`.`id_paciente` AS `id_paciente`, count(0) AS `total_citas` FROM `citas` GROUP BY `citas`.`id_paciente` HAVING `total_citas` > 1 ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
