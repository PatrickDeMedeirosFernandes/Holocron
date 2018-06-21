-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jun-2018 às 21:45
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `defaut`
--

INSERT INTO `defaut` (`id_defaut`, `pergunta`, `resposta`) VALUES
(1, 1, 'não entendi a sua pergunta poderia ser mais claro?'),
(2, 1, 'Uééé o que é isso que tu está me dizendo?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dicionario`
--

CREATE TABLE `dicionario` (
  `id_dicionario` int(11) NOT NULL,
  `texto` text NOT NULL,
  `expressoes_idexpressoes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dicionario`
--

INSERT INTO `dicionario` (`id_dicionario`, `texto`, `expressoes_idexpressoes`) VALUES
(5, ' vc ', 1),
(7, 'darth', 8),
(9, 'darti', 8),
(10, 'darte', 8),
(11, 'vader', 9),
(12, 'veider', 9),
(13, ' vaider', 9),
(14, 'veidi', 9),
(15, 'vaidier', 9),
(16, 'qeum', 10),
(17, 'qume', 10),
(18, 'dia~', 11),
(19, 'dia]', 11),
(20, 'dia', 11),
(21, 'tardi', 12),
(22, 'tadi', 12),
(23, 'trade', 12),
(24, ' tarde[', 12),
(25, 'tarde]', 12),
(26, 'tarde:', 12),
(27, 'tarde;', 12),
(28, 'tarde/', 12),
(29, ' TARDE', 12),
(30, ' Tarde', 12),
(31, 'noiti', 13),
(32, ' noite[', 13),
(33, ' notie', 13),
(34, '  noite]', 13),
(35, ' note.', 13),
(36, 'noite/', 13),
(37, 'StarWatrs', 14),
(38, ' star wars', 14),
(39, ' starwars', 14),
(40, ' istar uarus', 14),
(41, ' istar uars', 14),
(42, ' estar uars', 14),
(43, ' STAR WARS', 14),
(44, ' WARS STAR', 14),
(45, ' wars star', 14),
(46, ' star wasr', 14),
(47, ' star wras', 14),
(48, ' STAR WARS', 14),
(49, ' wars star', 14),
(50, 'Anakim', 15),
(51, ' anakin', 15),
(52, ' anaquim', 15),
(53, ' anaquin', 15),
(54, 'Skiwalker', 16),
(55, 'Skiualquer', 16),
(56, 'Skiwalquer', 16),
(57, ' Skiualker', 16),
(58, 'Skywalquer', 16),
(59, 'Luke', 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `expressoes`
--

CREATE TABLE `expressoes` (
  `idexpressoes` int(11) NOT NULL,
  `expressao` text COLLATE utf8_german2_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Extraindo dados da tabela `expressoes`
--

INSERT INTO `expressoes` (`idexpressoes`, `expressao`) VALUES
(1, 'você'),
(8, 'Darth'),
(9, 'Vader'),
(10, 'quem'),
(11, 'dia'),
(12, 'tarde'),
(13, 'noite'),
(14, 'Star Wars'),
(15, 'Anakin Skywalker'),
(16, 'Skywalker'),
(17, 'Luke Skywalker');

-- --------------------------------------------------------

--
-- Estrutura da tabela `keywords`
--

CREATE TABLE `keywords` (
  `id_key` int(11) NOT NULL,
  `keyword` text COLLATE utf8_german2_ci,
  `valida` int(1) DEFAULT NULL,
  `quem_fez` varchar(20) COLLATE utf8_german2_ci DEFAULT 'System',
  `pergunta_keyworks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Extraindo dados da tabela `keywords`
--

INSERT INTO `keywords` (`id_key`, `keyword`, `valida`, `quem_fez`, `pergunta_keyworks`) VALUES
(7, 'significado  vida  universo  tudo mais', 1, '::1', 5),
(17, 'cor  sabre  Yoda', 1, '::1', 32),
(18, 'execute order 66', 1, '::1', 4),
(22, 'sentido  vida  universo', 1, '::1', 37),
(23, 'General Kenoby, você   audacioso!  frase pertence  quem', 1, 'SYSTEM', 38),
(24, 'O  significa ATAT', 1, 'SYSTEM', 39),
(25, 'Dewbacs  lagartos enormes usados  transporte   soldados imperiais', 1, 'SYSTEM', 40),
(26, 'CSI   sigla para', 1, 'SYSTEM', 41),
(27, 'O   Holocrom', 1, 'SYSTEM', 42),
(28, 'criador', 1, 'SYSTEM', 43),
(29, 'Apenas  ator  indicado   Oscar  atuação  Star Wars .   ele', 1, 'SYSTEM', 44),
(30, 'Morra escória Jedi! Ah!      disse?', 1, 'SYSTEM', 45),
(31, 'R2D2    participa  final   filme', 1, 'SYSTEM', 46),
(32, 'o   Midichlorians', 1, 'SYSTEM', 47),
(33, 'Havia  ator dentro  R2D2', 1, 'SYSTEM', 48),
(34, 'De onde vem  nome  R2D2', 1, 'SYSTEM', 49),
(35, 'Oi', 1, 'SYSTEM', 50),
(36, 'Tudo bem', 1, 'SYSTEM', 51),
(37, 'você', 1, 'SYSTEM', 52),
(38, 'tipo  pessoa', 1, 'SYSTEM', 53),
(39, 'Quem', 1, 'SYSTEM', 54),
(40, 'nome', 1, 'SYSTEM', 55),
(41, 'Holocron', 1, 'SYSTEM', 56),
(42, 'Wat', 1, 'SYSTEM', 57),
(43, 'comeu caqui', 1, 'SYSTEM', 58),
(44, 'quero saber', 1, 'SYSTEM', 59),
(45, '', 1, 'SYSTEM', 60),
(46, 'Vc  uma maquina', 1, 'SYSTEM', 61),
(47, 'criou', 1, 'SYSTEM', 62),
(48, 'nome deles', 1, 'SYSTEM', 63),
(49, 'Quantos anos você tem', 1, 'SYSTEM', 64),
(50, 'Voce  homem  mulher', 1, 'SYSTEM', 65),
(51, 'filme favorito', 1, 'SYSTEM', 66),
(52, 'Você gosta  Star Wars', 1, 'SYSTEM', 67),
(53, 'Você conhece twd', 1, 'SYSTEM', 68),
(54, ',    isso', 1, 'SYSTEM', 69),
(55, 'Olá,   vocÊ', 1, 'SYSTEM', 70),
(56, 'você', 1, 'SYSTEM', 71),
(57, 'maiores coisas  você aprendeu  hoje   vida', 1, 'SYSTEM', 72),
(58, 'conselho você daria  si   anos atrás', 1, 'SYSTEM', 73),
(59, 'maiores objetivos  sonhos', 1, 'SYSTEM', 74),
(60, 'disse    deixei,   apenas  aluno, hoje   mestre  Star Wars    Episódio IV', 1, 'SYSTEM', 75),
(61, 'O   conhecidos  condutores  Força', 1, 'SYSTEM', 76),
(62, 'nome  animal  atacou Anakin Skywalker  arena  Geonosis  EP. II,   dominado  serviu  montaria', 1, 'SYSTEM', 77),
(63, 'pai  criação  Princesa Léia', 1, 'SYSTEM', 78),
(64, 'profissão  Luke antes   tornar  Jedi', 1, 'SYSTEM', 79),
(65, 'revela  ObiWan,  origem  dardo toxico  matou Zam Wessel', 1, 'SYSTEM', 80),
(66, 'Léia  disfarçou  caçador  recompensas  entrar  palácio  Jabba,    caçador', 1, 'SYSTEM', 81),
(67, 'filme  longo  saga  agora', 1, 'SYSTEM', 82),
(68, 'Quantas vezes  Millenium Falcon consegue entrar  hyperspaço', 1, 'SYSTEM', 83),
(69, 'interpreta  personagem R2D2', 1, 'SYSTEM', 84),
(70, 'o    ordem 66', 1, 'SYSTEM', 85),
(71, 'DNA  usado  criar  Exército  Clones', 1, 'SYSTEM', 86),
(72, 'merecedor', 1, 'SYSTEM', 87),
(73, 'Yoda', 1, 'SYSTEM', 88);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `id_pergunta` int(11) NOT NULL,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `resposta_pergunta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta_keyworks`
--

CREATE TABLE `pergunta_keyworks` (
  `idpergunta_keyworks` int(11) NOT NULL,
  `pergunta_key` text COLLATE utf8_german2_ci NOT NULL,
  `valida` int(1) DEFAULT NULL,
  `quem_fez` varchar(20) COLLATE utf8_german2_ci NOT NULL DEFAULT 'System',
  `Ativador_de_conversa` varchar(200) COLLATE utf8_german2_ci DEFAULT NULL,
  `resposta_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Extraindo dados da tabela `pergunta_keyworks`
--

INSERT INTO `pergunta_keyworks` (`idpergunta_keyworks`, `pergunta_key`, `valida`, `quem_fez`, `Ativador_de_conversa`, `resposta_id`) VALUES
(1, 'EXECUTE ORDER 66', 1, 'System', '', 2),
(2, 'execute order 66', 1, 'System', '', 2),
(3, 'execute ordem 66', 1, 'System', '', 2),
(4, 'EXECUTE ORDEM 66', 1, 'System', '', 2),
(5, 'Qual sentido da vida do universo e tudo mais?', 1, 'System', '', 1),
(6, 'Me diga uma frase famosa de Star Wars ?', 1, 'System', '', 4),
(13, 'Qual o significado da vida do universo e tudo mais', 1, '::1', '', 1),
(32, 'qual é a cor do sabre do Yoda', 1, '::1', '', 5),
(37, 'qual sentido da vida do universo', 1, '::1', '', 1),
(38, 'General Kenoby, você é muito audacioso! Esta frase pertence a quem', 1, 'SYSTEM', NULL, 6),
(39, 'O que significa ATAT', 1, 'SYSTEM', NULL, 7),
(40, 'Dewbacs são lagartos enormes usados como transporte e por soldados imperiais', 1, 'SYSTEM', NULL, 8),
(41, 'CSI é a sigla para', 1, 'SYSTEM', NULL, 9),
(42, 'O que é Holocrom', 1, 'SYSTEM', NULL, 10),
(43, 'Quem é seu criador', 1, 'SYSTEM', NULL, 11),
(44, 'Apenas um ator foi indicado para o Oscar pela atuação em Star Wars . Quem foi ele', 1, 'SYSTEM', NULL, 12),
(45, 'Morra escória Jedi! Ah! O que foi que eu disse?', 1, 'SYSTEM', NULL, 13),
(46, 'R2D2 não participa do final de qual filme', 1, 'SYSTEM', NULL, 14),
(47, 'o que é Midichlorians', 1, 'SYSTEM', NULL, 15),
(48, 'Havia um ator dentro do R2D2', 1, 'SYSTEM', NULL, 16),
(49, 'De onde vem o nome de R2D2', 1, 'SYSTEM', NULL, 17),
(50, 'Oi', 1, 'SYSTEM', NULL, 18),
(51, 'Tudo bem', 1, 'SYSTEM', NULL, 19),
(52, 'Quem é você', 1, 'SYSTEM', NULL, 20),
(53, 'Que tipo de pessoa', 1, 'SYSTEM', NULL, 21),
(54, 'Quem', 1, 'SYSTEM', NULL, 22),
(55, 'Qual seu nome', 1, 'SYSTEM', NULL, 23),
(56, 'Quem é Holocron', 1, 'SYSTEM', NULL, 24),
(57, 'Wat', 1, 'SYSTEM', NULL, 25),
(58, 'Quem comeu caqui', 1, 'SYSTEM', NULL, 26),
(59, 'Por que eu quero saber', 1, 'SYSTEM', NULL, 27),
(60, 'Por que não', 1, 'SYSTEM', NULL, 28),
(61, 'Vc e uma maquina', 1, 'SYSTEM', NULL, 29),
(62, 'Quem te criou', 1, 'SYSTEM', NULL, 30),
(63, 'Qual nome deles', 1, 'SYSTEM', NULL, 31),
(64, 'Quantos anos você tem', 1, 'SYSTEM', NULL, 32),
(65, 'Voce é homem ou mulher', 1, 'SYSTEM', NULL, 33),
(66, 'Qual seu filme favorito', 1, 'SYSTEM', NULL, 34),
(67, 'Você gosta de Star Wars', 1, 'SYSTEM', NULL, 35),
(68, 'Você conhece twd', 1, 'SYSTEM', NULL, 36),
(69, 'Não, o que é isso', 1, 'SYSTEM', NULL, 37),
(70, 'Olá, quem é vocÊ', 1, 'SYSTEM', NULL, 38),
(71, 'Quem é você', 1, 'SYSTEM', NULL, 39),
(72, 'Quais são as maiores coisas que você aprendeu até hoje na sua vida', 1, 'SYSTEM', NULL, 40),
(73, 'Que conselho você daria a si mesmo há anos atrás', 1, 'SYSTEM', NULL, 41),
(74, 'Quais são os seus maiores objetivos e sonhos', 1, 'SYSTEM', NULL, 42),
(75, 'Quem disse Quando eu te deixei, eu era apenas um aluno, hoje sou um mestre no Star Wars : Episódio IV´', 1, 'SYSTEM', NULL, 43),
(76, 'O que são conhecidos como condutores da Força', 1, 'SYSTEM', NULL, 44),
(77, 'Qual era o nome do animal que atacou Anakin Skywalker na arena em Geonosis no EP. II, mas foi dominado e serviu de montaria', 1, 'SYSTEM', NULL, 45),
(78, 'Quem foi o pai de criação da Princesa Léia', 1, 'SYSTEM', NULL, 46),
(79, 'Qual era a profissão de Luke antes de se tornar um Jedi', 1, 'SYSTEM', NULL, 47),
(80, 'Quem revela a ObiWan, a origem do dardo toxico que matou Zam Wessel', 1, 'SYSTEM', NULL, 48),
(81, 'Léia se disfarçou de caçador de recompensas para entrar no palácio de Jabba, qual era esse caçador', 1, 'SYSTEM', NULL, 49),
(82, 'Qual o filme mais longo da saga até agora', 1, 'SYSTEM', NULL, 50),
(83, 'Quantas vezes a Millenium Falcon consegue entrar no hyperspaço', 1, 'SYSTEM', NULL, 51),
(84, 'Quem interpreta o personagem R2D2', 1, 'SYSTEM', NULL, 52),
(85, 'o que foi a ordem 66', 1, 'SYSTEM', NULL, 53),
(86, 'Qual DNA foi usado para criar o Exército dos Clones', 1, 'SYSTEM', NULL, 54),
(87, 'por que não sou merecedor', 1, 'SYSTEM', NULL, 55),
(88, 'Quem é Yoda', 1, 'SYSTEM', NULL, 56);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perg_user`
--

CREATE TABLE `perg_user` (
  `id_perg_user` int(11) NOT NULL,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta_perg_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personagem`
--

CREATE TABLE `personagem` (
  `id_personagem` int(11) NOT NULL,
  `nome` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `propriedade`
--

CREATE TABLE `propriedade` (
  `id_propriedade` int(11) NOT NULL,
  `propriedade` text CHARACTER SET utf8,
  `valo` text CHARACTER SET utf8,
  `temp_id_temp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `report`
--

CREATE TABLE `report` (
  `id_report` int(11) NOT NULL,
  `email` varchar(90) CHARACTER SET utf8 NOT NULL,
  `nome` varchar(90) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `visto` int(1) NOT NULL,
  `data_envio` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_visto` datetime DEFAULT NULL,
  `visuaizado_por` int(11) DEFAULT NULL,
  `ip` varchar(60) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `id` int(11) NOT NULL,
  `resposta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`id`, `resposta`) VALUES
(1, '42'),
(2, '=YES MY LORD='),
(3, '==saudacao=='),
(4, '==fraseSW=='),
(5, 'verde'),
(6, 'o grande General Grievous'),
(7, 'AT-ATsignifica Tranporte Blindado para Todo Terrano. Eles são uma forma de transporte que apareceu pela primeira vez no Star Wars Episódio 5 O Império Contra-Ataca'),
(8, 'Sim! Muito Perpicas da sua parte, jovem Padawan.'),
(9, 'O significado para a sigla CSI, É Confederação dos Sistemas Independentes'),
(10, 'Holocrons são um equipamento usado por Jedis e Sith para guardar seu conhecimento e ensinamento. A tecnologia dos Holocrons nasceu há cerca de 15.000 anos ou mais. Estes dispositivos são receptáculos de informações, sendo a maioria deles usada para guardar os segredos do uso da Força para futuras gerações. O criador de um holocron praticamente transfere um pouco de sua personalidade para dentro do objeto e muitos deles têm um tipo de componente orgânico cristalizado, uma rara facilidade encontrada apenas em mundos remotos. E também por este motivo, meu criador, teve a ideia de me dar este nome.'),
(11, 'Ele é Patrick de Medeiros Fernandes, um estudante da Faculdade Senac, lá na cidade de Pelotas'),
(12, 'Star Wars é uma das franquias mais bem sucedidas com sete vitórias e 22 indicações ao Oscar, mas apenas um tinha sido por atuação. Star Wars Episódio V Uma Nova Esperança acumulou 10 indicações ao Oscar, incluindo Melhor Filme e Melhor Ator Coadjuvante por Sir Alec Guinness.'),
(13, 'C3-PO falou isso'),
(14, 'Episódio III: A Vigança dos Sith (2005) é o único filme que o R2-D2 não participa da cena final'),
(15, 'Midi-chlorians eram formas de vida microscópicas inteligentes que viviam dentro das células e eram as responsáveis pela geração da Força nos corpos. Eles não eram, no entanto, a Força em si, eles eram apenas uma ligação a ela, agindo como um órgão sensível que poderia ser percebido. Na sua essência, os midi-chlorians eram a conexão entre a mente do ser e a Força, fazendo com que certos seres sejam capazes de manipulá-los.'),
(16, 'SIIIM, O ator americano Kenny Baker interpretou o personagem R2-D2 nos filmes.'),
(17, 'Acredita-se que George Lucas tirou a ideia enquanto editava Loucuras de Verão e um amigo pediu para Lucas o Reel Two, Dialog Two, que abreviado fica R2-D2'),
(18, '-=saudacao='),
(19, 'Comigo, está otimo, felismente não moro em Mustafar, se não meus sistemas já estaria derretendo.'),
(20, 'Eu sou Holocron'),
(21, 'eu não sou um pessoa, eu sou Holocron'),
(22, 'Quem o que? Escreva melhor a sua pergunta ....'),
(23, 'Ue, ue, eu sou Holocron'),
(24, 'Sou eu horas, e também são um equipamento usado por Jedis e Sith para guardar seu conhecimento e ensinamento. A tecnologia dos Holocrons nasceu há cerca de 15.000 anos ou mais. Estes dispositivos são receptáculos de informações, sendo a maioria deles usada para guardar os segredos do uso da Força para futuras gerações. O criador de um holocron praticamente transfere um pouco de sua personalidade para dentro do objeto e muitos deles têm um tipo de componente orgânico cristalizado, uma rara facilidade encontrada apenas em mundos remotos. E por este motivo, meu criador, teve a ideia de me dar este nome.'),
(25, 'que o que?'),
(26, 'Como eu posso saber'),
(27, 'Mas não saberes, não es merecedor deste poder.'),
(28, 'por que a força não é poderosa o suficiente em você'),
(29, 'Bem eu sou, um sistema que tenta simular uma conversa humana, então acho que sou sim uma maquina'),
(30, '-.-.-.-.-.-'),
(31, 'QUAL NOME DO QUE?'),
(32, 'Bem'),
(33, 'Eu sou Holocron, nem homem nem mulher'),
(34, 'Star Wars Episódio IV Uma Nova Esperança'),
(35, 'SIIIIIM, eu gosto muito de Star Wars, meus filmes favoritos são de Star Wars'),
(36, 'não'),
(37, 'o que é o que?'),
(38, 'Olá, eu sou Holocron'),
(39, '.~.~.~.~.'),
(40, '???'),
(41, 'Instrua Patrick a não fazer um chatbot'),
(42, 'Saber tudo que pode se saber sobre Star Wars'),
(43, 'Darth Vader diz para Obi-Wan Kenobi no filme'),
(44, 'Midi-chlorians são formas inteligentes de vida microscópicas que vivem no interior das células dos seres vivos. As pessoas que tem o número suficiente delas conhecem a energia conhecida como A Força'),
(45, 'Um Reek, que é uma criaturas de grande porte e de casca grossa, com chifres, quadrúpedes bovinos nativos de Ylesia. Subespécies podiam ser encontradas em Iridônia e Ithor. Eles também podiam ser encontradas em fazendas na Lua Codiana, Tatooine e Saleucami.'),
(46, 'Bail Organa'),
(47, 'Antes de se tornar jedi ele era um fazendeiro'),
(48, 'Foi o Dexter'),
(49, 'Boushh garantiu uma reputação para si mesmo como um formidável e perigoso caçador de recompensas que trabalhou por muitos financiadores.'),
(50, 'A Ameaça Fantasma'),
(51, 'somente 1'),
(52, 'O ator que interpretou, o robozinho, mais amada de Star Wars, foi Kenny Baker'),
(53, '&quot;A Ordem 66 foi um evento no final das Guerras Clônicas no qual soldados clone do Grande Exército da República se voltaram contra os Generais Jedi e os exterminaram, ocasionando a destruição da Ordem Jedi. O evento foi acionado pelo Protocolo Clone 66, uma ordem implantada nos clones pelos Lordes Sith e cientistas Kaminoanos que criaram o exército clone. O protocolo fazia com que os soldados clone violentamente atacassem os Jedi e os enxergassem como ameaças, e era controlado por um bio-chip implantado nos cérebros dos clones durante sua criação'),
(54, 'Em Star Wars Episódio II, Ataque dos Clones, Obi-Wan Kenobi descobre que o mestre Jedi Sifo-Dyas odernou a criação de um exército de clones dez anos antes. Jango Fett é a fonte de DNA do exército'),
(55, '~/~/~/~/'),
(56, 'Medindo 76 centímetros de altura, Yoda é um membro masculino de uma raça cujo nome nunca foi revelado. Ele foi o Grão Mestre da Ordem Jedi durante as Guerras Clônicas, um dos membros mais importantes do Alto Conselho Jedi nos últimos dias da República Galáctica, e um dos mais sábios e poderosos Jedi de todos os tempos. Tendo vivido por muito tempo (veio a falecer com aprox. 900 anos de idade), ele tinha excepcionais habilidades no combate de sabre de luz, onde usava as técnicas acrobáticas da Forma IV, além de um fenomenal conhecimento sobre a Força. De 300 ABY até 19 ABY ele treinou quase todos os Jedi da Galáxia ? como Grande Mestre, ele instruia todos os Younglings do Templo Jedi antes deles serem adotados por um mestre, tendo Anakin Skywalker sido uma exceção quanto a isso.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `temp`
--

CREATE TABLE `temp` (
  `id_temp` int(11) NOT NULL,
  `nome` text CHARACTER SET utf8
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `frase_resposta` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`id_user`, `login`, `senha`, `nivel`, `ativo`, `frase`, `frase_resposta`) VALUES
(8, 'root', 'd9b1d7db4cd6e70935368a1efb10e377', 3, 1, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `valor`
--

CREATE TABLE `valor` (
  `id_valor` int(11) NOT NULL,
  `valor` text CHARACTER SET utf8,
  `dado` text CHARACTER SET utf8,
  `personagem_id_personagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `defaut`
--
ALTER TABLE `defaut`
  ADD PRIMARY KEY (`id_defaut`);
ALTER TABLE `defaut` ADD FULLTEXT KEY `resposta` (`resposta`);

--
-- Indexes for table `dicionario`
--
ALTER TABLE `dicionario`
  ADD PRIMARY KEY (`id_dicionario`),
  ADD KEY `fk_dicionario_expressoes1_idx` (`expressoes_idexpressoes`);
ALTER TABLE `dicionario` ADD FULLTEXT KEY `significado` (`texto`);

--
-- Indexes for table `expressoes`
--
ALTER TABLE `expressoes`
  ADD PRIMARY KEY (`idexpressoes`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id_key`),
  ADD KEY `fk_keywords_pergunta_keyworks1_idx` (`pergunta_keyworks`);
ALTER TABLE `keywords` ADD FULLTEXT KEY `keyword` (`keyword`);

--
-- Indexes for table `log_conversa`
--
ALTER TABLE `log_conversa`
  ADD PRIMARY KEY (`id_log_conversa`);
ALTER TABLE `log_conversa` ADD FULLTEXT KEY `conversa` (`conversa`);

--
-- Indexes for table `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id_pergunta`),
  ADD KEY `fk_pergunta_resposta1_idx` (`resposta_pergunta`);
ALTER TABLE `pergunta` ADD FULLTEXT KEY `pergunta` (`pergunta`);

--
-- Indexes for table `pergunta_keyworks`
--
ALTER TABLE `pergunta_keyworks`
  ADD PRIMARY KEY (`idpergunta_keyworks`),
  ADD KEY `fk_pergunta_keyworks_resposta_idx` (`resposta_id`);
ALTER TABLE `pergunta_keyworks` ADD FULLTEXT KEY `pergunta_key` (`pergunta_key`);

--
-- Indexes for table `perg_sem_resp`
--
ALTER TABLE `perg_sem_resp`
  ADD PRIMARY KEY (`id_perg_sem_resp`),
  ADD KEY `fk_perg_sem_resp_resposta_idx` (`resposta_pergunta`);
ALTER TABLE `perg_sem_resp` ADD FULLTEXT KEY `pergunta` (`pergunta`);
ALTER TABLE `perg_sem_resp` ADD FULLTEXT KEY `resposta` (`resposta`);

--
-- Indexes for table `perg_user`
--
ALTER TABLE `perg_user`
  ADD PRIMARY KEY (`id_perg_user`),
  ADD KEY `fk_perg_user_resposta1_idx` (`resposta_perg_user`);
ALTER TABLE `perg_user` ADD FULLTEXT KEY `pergunta` (`pergunta`);

--
-- Indexes for table `personagem`
--
ALTER TABLE `personagem`
  ADD PRIMARY KEY (`id_personagem`);
ALTER TABLE `personagem` ADD FULLTEXT KEY `nome` (`nome`);

--
-- Indexes for table `propriedade`
--
ALTER TABLE `propriedade`
  ADD PRIMARY KEY (`id_propriedade`),
  ADD KEY `fk_propriedade_temp1_idx` (`temp_id_temp`);
ALTER TABLE `propriedade` ADD FULLTEXT KEY `propriedade` (`propriedade`);
ALTER TABLE `propriedade` ADD FULLTEXT KEY `valo` (`valo`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id_report`),
  ADD KEY `fk_report_user1_idx` (`visuaizado_por`);
ALTER TABLE `report` ADD FULLTEXT KEY `email` (`email`);
ALTER TABLE `report` ADD FULLTEXT KEY `nome` (`nome`);
ALTER TABLE `report` ADD FULLTEXT KEY `texto` (`texto`);
ALTER TABLE `report` ADD FULLTEXT KEY `ip` (`ip`);

--
-- Indexes for table `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);
ALTER TABLE `resposta` ADD FULLTEXT KEY `resposta` (`resposta`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id_temp`);
ALTER TABLE `temp` ADD FULLTEXT KEY `nome` (`nome`);

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
ALTER TABLE `valor` ADD FULLTEXT KEY `dado` (`dado`);
ALTER TABLE `valor` ADD FULLTEXT KEY `valor` (`valor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `defaut`
--
ALTER TABLE `defaut`
  MODIFY `id_defaut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dicionario`
--
ALTER TABLE `dicionario`
  MODIFY `id_dicionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `expressoes`
--
ALTER TABLE `expressoes`
  MODIFY `idexpressoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
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
-- AUTO_INCREMENT for table `pergunta_keyworks`
--
ALTER TABLE `pergunta_keyworks`
  MODIFY `idpergunta_keyworks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
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
-- AUTO_INCREMENT for table `personagem`
--
ALTER TABLE `personagem`
  MODIFY `id_personagem` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `valor`
--
ALTER TABLE `valor`
  MODIFY `id_valor` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `dicionario`
--
ALTER TABLE `dicionario`
  ADD CONSTRAINT `fk_dicionario_expressoes1` FOREIGN KEY (`expressoes_idexpressoes`) REFERENCES `expressoes` (`idexpressoes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `keywords`
--
ALTER TABLE `keywords`
  ADD CONSTRAINT `fk_keywords_pergunta_keyworks1` FOREIGN KEY (`pergunta_keyworks`) REFERENCES `pergunta_keyworks` (`idpergunta_keyworks`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `fk_pergunta_resposta1` FOREIGN KEY (`resposta_pergunta`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pergunta_keyworks`
--
ALTER TABLE `pergunta_keyworks`
  ADD CONSTRAINT `fk_pergunta_keyworks_resposta` FOREIGN KEY (`resposta_id`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perg_sem_resp`
--
ALTER TABLE `perg_sem_resp`
  ADD CONSTRAINT `fk_perg_sem_resp_resposta` FOREIGN KEY (`resposta_pergunta`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `perg_user`
--
ALTER TABLE `perg_user`
  ADD CONSTRAINT `fk_perg_user_resposta1` FOREIGN KEY (`resposta_perg_user`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `propriedade`
--
ALTER TABLE `propriedade`
  ADD CONSTRAINT `fk_propriedade_temp1` FOREIGN KEY (`temp_id_temp`) REFERENCES `temp` (`id_temp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `fk_report_user1` FOREIGN KEY (`visuaizado_por`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `valor`
--
ALTER TABLE `valor`
  ADD CONSTRAINT `fk_valor_personagem1` FOREIGN KEY (`personagem_id_personagem`) REFERENCES `personagem` (`id_personagem`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
