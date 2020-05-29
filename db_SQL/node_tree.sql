-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Mag 28, 2020 alle 15:41
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
-- Struttura della tabella `node_tree`
--

CREATE TABLE `node_tree` (
  `idNode` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `iLeft` int(11) NOT NULL,
  `iRight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `node_tree`
--

INSERT INTO `node_tree` (`idNode`, `level`, `iLeft`, `iRight`) VALUES
(1, 2, 2, 3),
(2, 2, 4, 5),
(3, 2, 6, 7),
(4, 2, 8, 9),
(5, 1, 1, 24),
(6, 2, 10, 11),
(7, 2, 12, 19),
(8, 3, 15, 16),
(9, 3, 17, 18),
(10, 2, 20, 21),
(11, 3, 13, 14),
(12, 2, 22, 23);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `node_tree`
--
ALTER TABLE `node_tree`
  ADD PRIMARY KEY (`idNode`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `node_tree`
--
ALTER TABLE `node_tree`
  MODIFY `idNode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
