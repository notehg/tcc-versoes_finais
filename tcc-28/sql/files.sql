-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/10/2023 às 21:05
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
-- Estrutura para tabela `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `image_filename` varchar(255) DEFAULT NULL,
  `pdf_filename` varchar(255) DEFAULT NULL,
  `sinopse` mediumtext DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `media_avaliacoes` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `files`
--

INSERT INTO `files` (`id`, `title`, `genre`, `image_filename`, `pdf_filename`, `sinopse`, `autor`, `media_avaliacoes`) VALUES
(5, 'mordida', 'Fantasia, Romance', 'mordida.jpg', 'Mordida - Sarah Andersen.pdf', NULL, NULL, 0.00),
(6, 'A musa dos pesadelos', 'Fantasia, Romance, Ação e aventura', 'pesadelo.jpg', 'A-Musa-Dos-Pesadelos-Laini-Taylor.pdf', 'As respostas aos mistérios apresentados no primeiro volume estão nesta linda história de amor e ódio, vingança e redenção, destruição e salvação – a emocionante sequência do aclamado Um estranho sonhador.\r\nSarai vive e respira pesadelos desde os seis anos de idade. Ela acreditava que conhecia todo horror e que nada a surpreenderia – mas estava errada. Após o final surpreendente do primeiro volume da duologia, Sarai e Lazlo – o estranho sonhador – lutam para compreender os novos limites de si mes', 'dd', 0.00),
(7, 'A musa dos pesadelos', 'Fantasia, Romance, Ação e aventura', 'pesadelo.jpg', 'A-Musa-Dos-Pesadelos-Laini-Taylor.pdf', 'As respostas aos mistérios apresentados no primeiro volume estão nesta linda história de amor e ódio, vingança e redenção, destruição e salvação – a emocionante sequência do aclamado Um estranho sonhador.\r\nSarai vive e respira pesadelos desde os seis anos de idade. Ela acreditava que conhecia todo horror e que nada a surpreenderia – mas estava errada. Após o final surpreendente do primeiro volume da duologia, Sarai e Lazlo – o estranho sonhador – lutam para compreender os novos limites de si mes', NULL, 0.00),
(8, 'O nome do vento', 'Fantasia, Ação e aventura', 'vento.jpg', 'O-Nome-do-Vento-a-Cronica-do-Matador-do-Rei-1-Patrick-Rothfuss.pdf', 'Ninguém sabe ao certo quem é o herói ou o vilão desse fascinante universo criado por Patrick Rothfuss. Na realidade, essas duas figuras se concentram em Kote, um homem enigmático que se esconde sob a identidade de proprietário da hospedaria Marco do Percurso.\r\n\r\nDa infância numa trupe de artistas itinerantes, passando pelos anos vividos numa cidade hostil e pelo esforço para ingressar na escola de magia, O nome do vento acompanha a trajetória de Kote e as duas forças que movem sua vida: o desejo', NULL, 0.00),
(9, 'O nome do vento', 'Fantasia, Ação e aventura', 'vento.jpg', 'O-Nome-do-Vento-a-Cronica-do-Matador-do-Rei-1-Patrick-Rothfuss.pdf', 'Ninguém sabe ao certo quem é o herói ou o vilão desse fascinante universo criado por Patrick Rothfuss. Na realidade, essas duas figuras se concentram em Kote, um homem enigmático que se esconde sob a identidade de proprietário da hospedaria Marco do Percurso.\r\n\r\nDa infância numa trupe de artistas itinerantes, passando pelos anos vividos numa cidade hostil e pelo esforço para ingressar na escola de magia, O nome do vento acompanha a trajetória de Kote e as duas forças que movem sua vida: o desejo', NULL, 0.00),
(10, 'O nome do vento', 'Fantasia, Ação e aventura', 'vento.jpg', 'O-Nome-do-Vento-a-Cronica-do-Matador-do-Rei-1-Patrick-Rothfuss.pdf', 'Ninguém sabe ao certo quem é o herói ou o vilão desse fascinante universo criado por Patrick Rothfuss. Na realidade, essas duas figuras se concentram em Kote, um homem enigmático que se esconde sob a identidade de proprietário da hospedaria Marco do Percurso.\r\n\r\nDa infância numa trupe de artistas itinerantes, passando pelos anos vividos numa cidade hostil e pelo esforço para ingressar na escola de magia, O nome do vento acompanha a trajetória de Kote e as duas forças que movem sua vida: o desejo', NULL, 0.00),
(11, 'ola', 'Terror', 'mordida.jpg', 'Mordida - Sarah Andersen.pdf', 'sczx vcx', NULL, 0.00),
(12, 'A musa dos pesadelos', 'Fantasia, Romance, Ação e aventura', 'pesadelo.jpg', 'A-Musa-Dos-Pesadelos-Laini-Taylor.pdf', 'As respostas aos mistérios apresentados no primeiro volume estão nesta linda história de amor e ódio, vingança e redenção, destruição e salvação – a emocionante sequência do aclamado Um estranho sonhador.\r\nSarai vive e respira pesadelos desde os seis anos de idade. Ela acreditava que conhecia todo horror e que nada a surpreenderia – mas estava errada. Após o final surpreendente do primeiro volume da duologia, Sarai e Lazlo – o estranho sonhador – lutam para compreender os novos limites de si mesmos enquanto sofrem nas mãos de uma deusa de mente sombria que deseja se vingar dos habitantes da cidade de Lamento.\r\nEnquanto humanos e deuses temem as consequências desse embate, um novo inimigo quebra suas frágeis esperanças e os mistérios dos Mesarthim são ressuscitados: de onde vieram os deuses e por quê? O que foi feito com as milhares de crianças nascidas no berçário da cidadela? E o mais importante de tudo: ao abrir portas esquecidas que revelam novos mundos, os heróis sempre devem matar monstros, ou é possível salvá-los?\r\nSarai vai descobrir que apenas a mais terrível necessidade pode nos mostrar nossas próprias profundezas – e ela, a Musa dos Pesadelos, ainda não descobriu do que é capaz.', NULL, 0.00),
(13, 'mlkasczcasxzcc', 'Fantasia, Ficção científica, Distopia', 'vento.jpg', 'O-Nome-do-Vento-a-Cronica-do-Matador-do-Rei-1-Patrick-Rothfuss.pdf', 'scxzczc', NULL, 0.00),
(14, 'dsffds', 'Terror', 'mordida.jpg', 'Mordida - Sarah Andersen.pdf', 'vxv', NULL, 0.00),
(15, 'dsffds', 'Terror', 'mordida.jpg', 'Mordida - Sarah Andersen.pdf', 'vxv', NULL, 0.00),
(16, 'mar', 'Terror', 'Design sem nome.png', 'A-Musa-Dos-Pesadelos-Laini-Taylor.pdf', 'ccc', NULL, 0.00),
(17, 'jdshj', 'Distopia', '3000.png', 'O-Nome-do-Vento-a-Cronica-do-Matador-do-Rei-1-Patrick-Rothfuss.pdf', 'sdas', 'gay', 0.00),
(18, 'ddd', 'Ficção histórica', 'arte-da-guerra.png', 'Mordida - Sarah Andersen.pdf', 'ds', NULL, 0.00),
(19, 'jejj', 'Ficção histórica', 'vento.jpg', 'Mordida - Sarah Andersen.pdf', 'dsa', NULL, 0.00),
(20, 'njjg', 'Distopia', 'arte-da-guerra.png', 'Mordida - Sarah Andersen.pdf', 'sds', 'jj', 0.00),
(21, 'arsene lupin o ladrão de casaca', 'Ficção Policial, Thriller e Suspense', 'lupin.jpg', 'O-Ladrao-de-Casaca-as-Primeiras-Aventuras-de-Arsene-Lupin-Maurice-Leblanc.pdf', 'A alta sociedade francesa diverte-se a bordo do transatlântico Provence, quando chega a notícia: Arsène Lupin, o ladrão impossível de se capturar, viaja disfarçado entre os passageiros. Eis a chance de o Inspetor Ganimard prender o homem capaz de realizar crimes perfeitos e fugas espetaculares.', 'Maurice Leblanc', 3.00);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `genre` (`genre`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
