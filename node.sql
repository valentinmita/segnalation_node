-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 29, 2021 alle 22:05
-- Versione del server: 10.4.17-MariaDB
-- Versione PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todolist`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `node`
--

CREATE TABLE `node` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `luogo` varchar(255) NOT NULL,
  `causa` varchar(255) NOT NULL,
  `data` varchar(255) DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `node`
--

INSERT INTO `node` (`id`, `file`, `luogo`, `causa`, `data`, `title`) VALUES
(62, 'file-1611794398954.jpg', 'milano', 'aziende ', '2021-01-28 01:39:59', 'inquinamneto a milano'),
(63, 'file-1611872231492.png', 'milano', 'mancanza bidoni', '2021-01-28 23:17:11', 'Mascherine per terra');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `node`
--
ALTER TABLE `node`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `node`
--
ALTER TABLE `node`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
