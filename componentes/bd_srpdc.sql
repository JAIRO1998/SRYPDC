-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 07:41 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_srpdc`
--

-- --------------------------------------------------------

--
-- Table structure for table `aforo`
--

CREATE TABLE `aforo` (
  `id_aforo` int(11) NOT NULL,
  `semaforo` varchar(20) NOT NULL,
  `a_general` int(11) NOT NULL,
  `a_administrativo` int(11) NOT NULL,
  `a_docentes` int(11) NOT NULL,
  `a_estudiantes` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `observaciones` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `historial_alumnos`
--

CREATE TABLE `historial_alumnos` (
  `id_hist` int(11) NOT NULL,
  `matricula_alum` varchar(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `nivel_educativo` varchar(30) NOT NULL,
  `carrera` varchar(200) NOT NULL,
  `grado` varchar(10) NOT NULL,
  `grupo` varchar(10) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_escaneo` datetime NOT NULL,
  `temperatura` varchar(10) NOT NULL,
  `p1` varchar(10) NOT NULL,
  `p2` varchar(10) NOT NULL,
  `p3` varchar(10) NOT NULL,
  `p4` varchar(10) NOT NULL,
  `acceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `historial_users`
--

CREATE TABLE `historial_users` (
  `id_hist` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_escaneo` datetime NOT NULL,
  `temperatura` varchar(10) NOT NULL,
  `p1` varchar(10) NOT NULL,
  `p2` varchar(10) NOT NULL,
  `p3` varchar(10) NOT NULL,
  `p4` varchar(10) NOT NULL,
  `acceso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `modulos`
--

CREATE TABLE `modulos` (
  `id_modulo` int(11) NOT NULL,
  `modulo` varchar(40) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `modulos`
--

INSERT INTO `modulos` (`id_modulo`, `modulo`, `url`, `icon`, `estado`) VALUES
(1, 'Formulario de Sanidad', 'contestar_form.php', 'fas fa-align-left', 'Activado'),
(2, 'Mi Histórico', 'mi_historico.php', 'fas fa-book', 'Activado'),
(3, 'Recuperación de QR', 'recuperar_qr.php', 'fas fa-qrcode', 'Activado'),
(4, 'Aforo Actual', 'aforo_actual.php', 'fas fa-table', 'Activado'),
(5, 'Histórico', 'historico.php', 'fas fa-table', 'Activado'),
(6, 'Usuarios', 'usuarios.php', 'fas fa-users', 'Activado'),
(7, 'Gestión de Roles', 'gestion_roles.php', 'fas fa-users-cog', 'Activado'),
(8, 'Gestión de Aforo', 'gestion_aforo.php', 'fas fa-traffic-light', 'Activado'),
(9, 'Lector de QR', 'lector.php', 'fas fa-qrcode', 'Activado'),
(10, 'Preguntas de Sanidad', 'preguntas.php', 'fas fa-align-left', 'Desactivado'),
(11, 'Bitácora', 'bitacora.php', 'fas fa-book', 'Activado');

-- --------------------------------------------------------

--
-- Table structure for table `preguntas`
--

CREATE TABLE `preguntas` (
  `id_pregunta` int(11) NOT NULL,
  `pregunta` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `preguntas`
--

INSERT INTO `preguntas` (`id_pregunta`, `pregunta`, `estado`, `descripcion`) VALUES
(1, '¿Tienes fiebre o temperatura?', 'Activado', 'pregunta1'),
(2, '¿Tienes Tos?', 'Activado', 'pregunta2'),
(3, '¿Tienes dolor de cabeza?', 'Activado', 'pregunta3'),
(4, '¿Has estado en contacto con alguien con COVID-19?', 'Activado', 'pregunta4');

-- --------------------------------------------------------

--
-- Table structure for table `qr`
--

CREATE TABLE `qr` (
  `id_qr` int(11) NOT NULL,
  `qr` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `valido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rel_roles_modulos`
--

CREATE TABLE `rel_roles_modulos` (
  `id_relacion` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_modulo` int(11) NOT NULL,
  `editar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rel_roles_modulos`
--

INSERT INTO `rel_roles_modulos` (`id_relacion`, `id_rol`, `id_modulo`, `editar`) VALUES
(98, 5, 1, 1),
(99, 5, 2, 1),
(100, 5, 3, 1),
(101, 5, 4, 1),
(102, 5, 5, 0),
(145, 1, 1, 1),
(146, 1, 2, 1),
(147, 1, 3, 1),
(148, 1, 4, 1),
(149, 1, 5, 1),
(150, 1, 6, 1),
(151, 1, 7, 1),
(152, 1, 8, 1),
(153, 1, 9, 1),
(154, 1, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `observaciones` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`, `estado`, `observaciones`) VALUES
(1, 'ADMIN', 'Activado', 'Ninguna'),
(5, 'Docentes', 'Activado', 'Rol de Docentes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id_registro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `Modulo` varchar(100) NOT NULL,
  `accion` varchar(20) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `observaciones` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `telefono`, `correo`, `password`, `id_rol`, `estado`, `observaciones`) VALUES
(1, 'Administrador', '734152525', 'admin@gmail.com', '123', 1, 'Activado', 'Ninguna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aforo`
--
ALTER TABLE `aforo`
  ADD PRIMARY KEY (`id_aforo`);

--
-- Indexes for table `historial_alumnos`
--
ALTER TABLE `historial_alumnos`
  ADD PRIMARY KEY (`id_hist`);

--
-- Indexes for table `historial_users`
--
ALTER TABLE `historial_users`
  ADD PRIMARY KEY (`id_hist`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id_modulo`);

--
-- Indexes for table `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id_pregunta`);

--
-- Indexes for table `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`id_qr`);

--
-- Indexes for table `rel_roles_modulos`
--
ALTER TABLE `rel_roles_modulos`
  ADD PRIMARY KEY (`id_relacion`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_modulo` (`id_modulo`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id_registro`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aforo`
--
ALTER TABLE `aforo`
  MODIFY `id_aforo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historial_alumnos`
--
ALTER TABLE `historial_alumnos`
  MODIFY `id_hist` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `historial_users`
--
ALTER TABLE `historial_users`
  MODIFY `id_hist` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id_pregunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qr`
--
ALTER TABLE `qr`
  MODIFY `id_qr` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rel_roles_modulos`
--
ALTER TABLE `rel_roles_modulos`
  MODIFY `id_relacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id_registro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `historial_users`
--
ALTER TABLE `historial_users`
  ADD CONSTRAINT `historial_users_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Constraints for table `rel_roles_modulos`
--
ALTER TABLE `rel_roles_modulos`
  ADD CONSTRAINT `rel_roles_modulos_ibfk_1` FOREIGN KEY (`id_modulo`) REFERENCES `modulos` (`id_modulo`),
  ADD CONSTRAINT `rel_roles_modulos_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);

--
-- Constraints for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD CONSTRAINT `tbl_log_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Constraints for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
