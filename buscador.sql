-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 17, 2021 at 03:02 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buscador`
--

-- --------------------------------------------------------

--
-- Table structure for table `conferencias`
--

CREATE TABLE `conferencias` (
  `id` int(11) NOT NULL,
  `codigo` varchar(250) NOT NULL,
  `titulo` text NOT NULL,
  `ponente` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `asistentes` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conferencias`
--

INSERT INTO `conferencias` (`id`, `codigo`, `titulo`, `ponente`, `fecha`, `asistentes`) VALUES
(1, 'T-I-21', 'Estrategias y Técnicas de Búsqueda de Información Tecnológica en Base de Datos de Patentes', 'Mg. Elizabeth Dávila Maguiña', '2021-04-06', 34);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `codigo` varchar(250) NOT NULL,
  `dni` varchar(100) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(250) NOT NULL,
  `correo` varchar(250) NOT NULL,
  `celular` varchar(100) NOT NULL,
  `certificado` varchar(200) NOT NULL,
  `temaPropuesto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `codigo`, `dni`, `nombres`, `apellidos`, `correo`, `celular`, `certificado`, `temaPropuesto`) VALUES
(1, 'T-I-21-72622771', '72622771', 'Kevin Arturo', 'Sánchez Magallanes', 'kevinsanmaga12@gmail.com', '987147390', 'https://firebasestorage.googleapis.com/v0/b/unach-4cb98.appspot.com/o/01.png?alt=media&token=854ed000-060b-4f15-a2ee-a94ce930cd96', 'Transformación Digital');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conferencias`
--
ALTER TABLE `conferencias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conferencias`
--
ALTER TABLE `conferencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
