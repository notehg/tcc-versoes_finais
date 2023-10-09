-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/09/2023 às 22:52
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comentario`
--

CREATE TABLE `comentario` (
  `cod` int(11) NOT NULL,
  `mensagem` varchar(6000) NOT NULL,
  `usuario_id` int(6) NOT NULL,
  `livro_id` int(6) NOT NULL,
  `data_publicacao` datetime DEFAULT NULL,
  `avaliacao` int(11) NOT NULL
) ;

--
-- Despejando dados para a tabela `comentario`
--

INSERT INTO `comentario` (`cod`, `mensagem`, `usuario_id`, `livro_id`, `data_publicacao`, `avaliacao`) VALUES
(1, 'nostra', 15, 5, NULL, 0),
(2, 'gay\\r\\n', 15, 5, NULL, 0),
(3, 'gay\\r\\n', 15, 5, NULL, 0),
(4, 'hhh', 15, 5, NULL, 0),
(5, 'nhh', 15, 6, NULL, 0),
(6, 'gggg', 15, 6, NULL, 0),
(7, 'hgh', 15, 6, NULL, 0),
(8, 'ggg', 15, 6, NULL, 0),
(9, 'hhhh', 15, 6, NULL, 0),
(10, 'vamos brincar\\r\\n', 15, 5, NULL, 0),
(11, 'jjj', 15, 5, NULL, 0),
(12, 'nbbb', 15, 5, '2023-09-24 13:43:12', 0),
(13, 'eu', 15, 5, '2023-09-24 00:00:00', 0),
(14, 'gay', 15, 5, '0000-00-00 00:00:00', 0),
(15, 'nhh', 15, 5, '2023-09-24 00:00:00', 0),
(16, 'nhh', 15, 5, '2023-09-24 14:12:12', 0),
(17, 'fdf', 15, 5, '2023-09-24 14:47:37', 0),
(18, 'hggg', 15, 5, '2023-09-24 14:48:48', 0),
(19, 'gostei muito', 15, 7, '2023-09-24 14:49:29', 0),
(20, 'm mm', 15, 5, '2023-09-28 18:48:21', 0),
(21, '', 15, 5, '2023-09-28 20:03:15', 3),
(22, 'nnnnn', 15, 5, '2023-09-28 20:03:19', 3),
(23, 'ccxx', 15, 5, '2023-09-28 20:06:05', 4),
(24, 'mjjj', 15, 5, '2023-09-28 20:07:50', 5),
(25, '', 15, 5, '2023-09-28 20:10:18', 1),
(26, '', 15, 5, '2023-09-28 20:42:49', 5);

--
-- Acionadores `comentario`
--
DELIMITER $$
CREATE TRIGGER `check_avaliacao` BEFORE INSERT ON `comentario` FOR EACH ROW BEGIN
    IF NEW.avaliacao > 5 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Avaliação deve ser menor ou igual a 5';
    END IF;
END
$$
DELIMITER ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `livro_id` (`livro_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentario`
--
ALTER TABLE `comentario`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `comentario`
--
ALTER TABLE `comentario`
  ADD CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`livro_id`) REFERENCES `files` (`id`),
  ADD CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `logi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
