-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jan-2018 às 12:05
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `split` (IN `input` TEXT CHARSET utf8mb4, IN `delim` VARCHAR(10) CHARSET utf8mb4)  begin
 
    declare foundPos tinyint unsigned;
    declare tmpTxt text CHARSET utf8;
    declare delimLen tinyint unsigned;
    declare element text;
 
    drop temporary table if exists tmpValues;
    create temporary table tmpValues
    (
        `values` varchar(256) CHARSET utf8mb4 not null default ''
    ) engine = memory;
 
    set delimLen = length(delim);
    set tmpTxt = input;
 
    set foundPos = instr(tmpTxt,delim);
    while foundPos <> 0 do
        set element = substring(tmpTxt, 1, foundPos-1);
        set tmpTxt = replace(tmpTxt, concat(element,delim), '');
        insert into tmpValues (`values`) values ( element);
        set foundPos = instr(tmpTxt,delim);
    end while;
 
    if tmpTxt <> '' then
        insert into tmpValues (`values`) values (tmpTxt);
    end if;
 
    END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `compare_title` (`title` VARCHAR(255) CHARSET utf8mb4, `keyword` VARCHAR(255) CHARSET utf8mb4) RETURNS INT(11) BEGIN
 
    DECLARE done INT DEFAULT 0;
    DECLARE match_found INT DEFAULT 0;
    DECLARE a VARCHAR(255) CHARSET utf8mb4;
    DECLARE ratio INT DEFAULT 0;
    DECLARE cur1 CURSOR FOR SELECT `values` FROM tmpValues;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
 
    OPEN cur1;
 
    call split(title, ' ');
 
    read_loop: LOOP
        FETCH cur1 INTO a;
        IF done THEN
            LEAVE read_loop;
        END IF;
  select levenshtein_ratio(upper(a),upper(keyword)) into ratio;
        IF ratio > 80 THEN
  SET done = 1;
  SET match_found = 1;
        END IF;
       
    END LOOP read_loop;
 
    CLOSE cur1;
    return match_found;
 
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `levenshtein` (`s1` VARCHAR(255) CHARSET utf8mb4, `s2` VARCHAR(255) CHARSET utf8mb4) RETURNS INT(11) BEGIN
 DECLARE s1_len, s2_len, i, j, c, c_temp, cost INT;
 DECLARE s1_char CHAR CHARSET utf8mb4;
 DECLARE cv0, cv1 VARBINARY(256);
 
 SET s1_len = CHAR_LENGTH(s1), s2_len = CHAR_LENGTH(s2), cv1 = 0x00, j = 1, i = 1, c = 0;
 
 IF s1 = s2 THEN
      RETURN 0;
    ELSEIF s1_len = 0 THEN
      RETURN s2_len;
    ELSEIF s2_len = 0 THEN
      RETURN s1_len;
    ELSE
      WHILE j <= s2_len DO
        SET cv1 = CONCAT(cv1, UNHEX(HEX(j))), j = j + 1;
      END WHILE;
      WHILE i <= s1_len DO
        SET s1_char = SUBSTRING(s1, i, 1), c = i, cv0 = UNHEX(HEX(i)), j = 1;
        WHILE j <= s2_len DO
          SET c = c + 1;
          IF s1_char = SUBSTRING(s2, j, 1) THEN
            SET cost = 0; ELSE SET cost = 1;
          END IF;
          SET c_temp = CONV(HEX(SUBSTRING(cv1, j, 1)), 16, 10) + cost;
          IF c > c_temp THEN SET c = c_temp; END IF;
            SET c_temp = CONV(HEX(SUBSTRING(cv1, j+1, 1)), 16, 10) + 1;
            IF c > c_temp THEN
              SET c = c_temp;
            END IF;
            SET cv0 = CONCAT(cv0, UNHEX(HEX(c))), j = j + 1;
        END WHILE;
        SET cv1 = cv0, i = i + 1;
      END WHILE;
    END IF;
    RETURN c;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `levenshtein_ratio` (`s1` VARCHAR(255) CHARSET utf8mb4, `s2` VARCHAR(255) CHARSET utf8mb4) RETURNS INT(11) BEGIN
DECLARE s1_len, s2_len, max_len INT;
SET s1_len = LENGTH(s1), s2_len = LENGTH(s2);
IF s1_len > s2_len THEN
SET max_len = s1_len;
ELSE
SET max_len = s2_len;
END IF;
RETURN ROUND((1 - LEVENSHTEIN(s1, s2) / max_len) * 100);
END$$

DELIMITER ;

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
(2, 'que disse a frase eu sou seu pai', 1, 2),
(3, 'quem disse a frase eu sou seu pai', 1, 2);

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
(2, 'Darth Vader disse para o Luke\r\n');

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
(0, 'root', 'd9b1d7db4cd6e70935368a1efb10e377', 3, 1, NULL, NULL);

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
  ADD UNIQUE KEY `data` (`data`),
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
  MODIFY `id_dicionario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_conversa`
--
ALTER TABLE `log_conversa`
  MODIFY `id_log_conversa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id_pergunta` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id_report` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `respota`
--
ALTER TABLE `respota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
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
-- Limitadores para a tabela `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`visuaizado_por`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
