-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Mag 28, 2020 alle 15:43
-- Versione del server: 5.7.24
-- Versione PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docebo`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `node_tree_names`
--

CREATE TABLE `node_tree_names` (
  `idNode` int(11) NOT NULL,
  `language` varchar(30) NOT NULL,
  `nodeName` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `node_tree_names`
--

INSERT INTO `node_tree_names` (`idNode`, `language`, `nodeName`) VALUES
(1, 'english', 'Marketing'),
(1, 'italian', 'Marketing'),
(2, 'english', 'Helpdesk'),
(2, 'italian', 'Supporto tecnico'),
(3, 'english', 'Managers'),
(3, 'italian', 'Managers'),
(4, 'english', 'Customer Account'),
(4, 'italian', 'Assistenza Cliente'),
(5, 'english', 'Docebo'),
(5, 'italian', 'Docebo'),
(6, 'english', 'Accounting'),
(6, 'italian', 'Amministrazione'),
(7, 'english', 'Sales'),
(7, 'italian', 'Supporto Vendite'),
(8, 'english', 'Italy'),
(8, 'italian', 'Italia'),
(9, 'english', 'Europe'),
(9, 'italian', 'Europa'),
(10, 'english', 'Developers'),
(10, 'italian', 'Sviluppatori'),
(11, 'english', 'North America'),
(11, 'italian', 'Nord America'),
(12, 'english', 'Quality Assurance'),
(12, 'italian', 'Controllo Qualità');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `node_tree_names`
--
ALTER TABLE `node_tree_names`
  ADD KEY `idNode` (`idNode`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `node_tree_names`
--
ALTER TABLE `node_tree_names`
  ADD CONSTRAINT `node_tree_names_ibfk_1` FOREIGN KEY (`idNode`) REFERENCES `node_tree` (`idNode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
