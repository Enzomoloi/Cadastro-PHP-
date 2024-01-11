-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 30-Set-2022 às 17:49
-- Versão do servidor: 5.7.17-log
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco_enzo_caio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `idade` smallint(6) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `estadocivil` varchar(16) NOT NULL,
  `humanas` tinyint(4) NOT NULL,
  `exatas` tinyint(4) NOT NULL,
  `biologicas` tinyint(4) NOT NULL,
  `senha` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `idade`, `sexo`, `estadocivil`, `humanas`, `exatas`, `biologicas`, `senha`) VALUES
(1, 'enzopoli', 'enzoo1@gamil.com', 22, 'M', 'Casado(a)', 1, 0, 1, 'f83191cb32628413f740da604e09eb2a'),
(2, 'caio ramos', 'caioo@gamil.com', 16, 'M', 'Solteiro(a)', 1, 1, 0, 'e523a631f348a306bffd5bdd39384342'),
(3, 'rafael alan', 'rafooo@gamil.com', 15, 'M', 'Divorciado(a)', 0, 1, 1, 'ba99610e084d8314e60a4e9f19aea0ac');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
