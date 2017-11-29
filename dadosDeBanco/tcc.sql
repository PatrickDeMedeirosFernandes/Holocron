-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Nov-2017 às 20:46
-- Versão do servidor: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `defaut`
--

CREATE TABLE `defaut` (
  `id_defaut` int(11) NOT NULL,
  `pergunta` int(1) NOT NULL DEFAULT '1',
  `resposta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dicionario`
--

CREATE TABLE `dicionario` (
  `id_dicionario` int(11) NOT NULL,
  `expressao` text NOT NULL,
  `significado` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dicionario`
--

INSERT INTO `dicionario` (`id_dicionario`, `expressao`, `significado`) VALUES
(1, 'vc', 'voce');

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_conversa`
--

CREATE TABLE `log_conversa` (
  `id_log_conversa` int(11) NOT NULL,
  `conversa` longtext NOT NULL,
  `ip` varchar(45) NOT NULL,
  `data_inc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_fim` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `id_pergunta` int(11) NOT NULL,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `resposta_pergunta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`id_pergunta`, `pergunta`, `valida`, `resposta_pergunta`) VALUES
(1, 'quem é a esposa de anakin', 1, 1),
(3, 'quem disse a frase eu sou seu pai', 1, 3),
(4, 'que disse a frase eu sou seu pai', 1, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `perg_sem_resp`
--

CREATE TABLE `perg_sem_resp` (
  `id_perg_sem_resp` int(11) NOT NULL,
  `pergunta` text NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta` text,
  `ip` varchar(45) NOT NULL,
  `resposta_pergunta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perg_user`
--

CREATE TABLE `perg_user` (
  `id_perg_user` int(11) NOT NULL,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `respota_perg_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personagem`
--

CREATE TABLE `personagem` (
  `id_personagem` int(11) NOT NULL,
  `nome` text COLLATE utf8_german2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `propriedade`
--

CREATE TABLE `propriedade` (
  `id_propriedade` int(11) NOT NULL,
  `propriedade` text COLLATE utf8_german2_ci,
  `valo` text COLLATE utf8_german2_ci,
  `temp_id_temp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `report`
--

CREATE TABLE `report` (
  `id_report` int(11) NOT NULL,
  `email` varchar(90) COLLATE utf8_german2_ci NOT NULL,
  `nome` varchar(90) COLLATE utf8_german2_ci NOT NULL,
  `texto` text COLLATE utf8_german2_ci NOT NULL,
  `visto` int(1) NOT NULL,
  `data_envio` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_visto` datetime DEFAULT NULL,
  `visuaizado_por` int(11) DEFAULT NULL,
  `ip` varchar(60) COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Extraindo dados da tabela `report`
--

INSERT INTO `report` (`id_report`, `email`, `nome`, `texto`, `visto`, `data_envio`, `data_visto`, `visuaizado_por`, `ip`) VALUES
(0, 'h', 'hf', 'fhgh', 0, '2017-11-29 17:43:41', NULL, NULL, '::1'),
(1, 'gdfgd', 'gdf', 'gdfg', 1, '2017-11-29 16:07:19', '2017-11-29 16:58:18', 1, '::1'),
(4, 'gjh2', 'gh1', 'gjhjghjg3', 1, '2017-11-27 15:44:50', '2017-11-29 16:44:57', 1, '::1'),
(5, 'gjh2', 'gh1', 'gjhjghjg3', 0, '2017-11-27 15:45:39', '2017-11-27 17:58:21', 1, ''),
(6, 'gjh2', 'gh1', 'gjhjghjg3', 1, '2017-11-27 15:47:41', '2017-11-27 17:59:19', 1, '::1'),
(7, 'gjh2', 'gh1', 'gjhjghjg3', 1, '2017-11-27 15:47:43', '2017-11-27 18:05:31', 1, '::1'),
(8, 'gjh2', 'gh1', 'gjhjghjg3', 1, '2017-11-27 15:48:32', '2017-11-27 18:05:28', 1, '::1'),
(9, 'fg', 'fhfghf', 'fghfg', 1, '2017-11-27 17:40:50', '2017-11-27 17:59:26', 1, '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `respota`
--

CREATE TABLE `respota` (
  `id` int(11) NOT NULL,
  `resposta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `respota`
--

INSERT INTO `respota` (`id`, `resposta`) VALUES
(1, 'Padmé\r\n'),
(3, 'Darth Vader disse para o Luke\r\n'),
(4, 'tyuty'),
(5, 'tyuty'),
(6, 'Darth Vader disse para o Luke\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `temp`
--

CREATE TABLE `temp` (
  `id_temp` int(11) NOT NULL,
  `nome` text COLLATE utf8_german2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `login` varchar(90) NOT NULL,
  `senha` varchar(90) NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '1',
  `ativo` int(1) NOT NULL DEFAULT '1',
  `frase` text,
  `frase_respota` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id_user`, `login`, `senha`, `nivel`, `ativo`, `frase`, `frase_respota`) VALUES
(1, 'p', 'p', 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `valor`
--

CREATE TABLE `valor` (
  `id_valor` int(11) NOT NULL,
  `valor` text COLLATE utf8_german2_ci,
  `personagem_id_personagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `defaut`
--
ALTER TABLE `defaut`
  ADD PRIMARY KEY (`id_defaut`);

--
-- Indexes for table `dicionario`
--
ALTER TABLE `dicionario`
  ADD PRIMARY KEY (`id_dicionario`);

--
-- Indexes for table `log_conversa`
--
ALTER TABLE `log_conversa`
  ADD PRIMARY KEY (`id_log_conversa`);

--
-- Indexes for table `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id_pergunta`),
  ADD KEY `resposta_pergunta` (`resposta_pergunta`);

--
-- Indexes for table `perg_sem_resp`
--
ALTER TABLE `perg_sem_resp`
  ADD PRIMARY KEY (`id_perg_sem_resp`),
  ADD KEY `resposta_pergunta` (`resposta_pergunta`);

--
-- Indexes for table `perg_user`
--
ALTER TABLE `perg_user`
  ADD PRIMARY KEY (`id_perg_user`),
  ADD KEY `rpu` (`respota_perg_user`);

--
-- Indexes for table `personagem`
--
ALTER TABLE `personagem`
  ADD PRIMARY KEY (`id_personagem`);

--
-- Indexes for table `propriedade`
--
ALTER TABLE `propriedade`
  ADD PRIMARY KEY (`id_propriedade`),
  ADD KEY `fk_propriedade_temp_idx` (`temp_id_temp`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `report_ibfk_1` (`visuaizado_por`);

--
-- Indexes for table `respota`
--
ALTER TABLE `respota`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id_temp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `valor`
--
ALTER TABLE `valor`
  ADD PRIMARY KEY (`id_valor`),
  ADD KEY `fk_valor_personagem1_idx` (`personagem_id_personagem`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `defaut`
--
ALTER TABLE `defaut`
  MODIFY `id_defaut` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dicionario`
--
ALTER TABLE `dicionario`
  MODIFY `id_dicionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `log_conversa`
--
ALTER TABLE `log_conversa`
  MODIFY `id_log_conversa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id_pergunta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `perg_sem_resp`
--
ALTER TABLE `perg_sem_resp`
  MODIFY `id_perg_sem_resp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perg_user`
--
ALTER TABLE `perg_user`
  MODIFY `id_perg_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `propriedade`
--
ALTER TABLE `propriedade`
  MODIFY `id_propriedade` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `respota`
--
ALTER TABLE `respota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `pergunta_ibfk_1` FOREIGN KEY (`resposta_pergunta`) REFERENCES `respota` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `perg_sem_resp`
--
ALTER TABLE `perg_sem_resp`
  ADD CONSTRAINT `perg_sem_resp_ibfk_1` FOREIGN KEY (`resposta_pergunta`) REFERENCES `respota` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `perg_user`
--
ALTER TABLE `perg_user`
  ADD CONSTRAINT `perg_user_ibfk_1` FOREIGN KEY (`respota_perg_user`) REFERENCES `respota` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `propriedade`
--
ALTER TABLE `propriedade`
  ADD CONSTRAINT `fk_propriedade_temp` FOREIGN KEY (`temp_id_temp`) REFERENCES `temp` (`id_temp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`visuaizado_por`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;

--
-- Limitadores para a tabela `valor`
--
ALTER TABLE `valor`
  ADD CONSTRAINT `fk_valor_personagem1` FOREIGN KEY (`personagem_id_personagem`) REFERENCES `personagem` (`id_personagem`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
