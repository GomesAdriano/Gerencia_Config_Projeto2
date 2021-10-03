-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03-Out-2021 às 23:06
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `acolhemais`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `fk_id_plataforma` int(11) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `fk_comentarios_plataforma` (`fk_id_plataforma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `plataforma`
--

DROP TABLE IF EXISTS `plataforma`;
CREATE TABLE IF NOT EXISTS `plataforma` (
  `id_plataforma` int(11) NOT NULL AUTO_INCREMENT,
  `imagem` varchar(300) NOT NULL,
  `link` varchar(300) NOT NULL,
  `resumo` varchar(300) NOT NULL,
  `detalhes` varchar(300) NOT NULL,
  PRIMARY KEY (`id_plataforma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sugestao_plataforma`
--

DROP TABLE IF EXISTS `sugestao_plataforma`;
CREATE TABLE IF NOT EXISTS `sugestao_plataforma` (
  `id_sugestao_plataforma` int(11) NOT NULL AUTO_INCREMENT,
  `sugestao` varchar(500) NOT NULL,
  PRIMARY KEY (`id_sugestao_plataforma`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
