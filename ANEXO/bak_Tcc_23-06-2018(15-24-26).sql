

CREATE TABLE `defaut` (
  `id_defaut` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` int(1) NOT NULL DEFAULT '1',
  `resposta` text NOT NULL,
  PRIMARY KEY (`id_defaut`),
  FULLTEXT KEY `resposta` (`resposta`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

insert into defaut(id_defaut, pergunta, resposta) values('1', '1', 'não entendi a sua pergunta poderia ser mais claro?');
insert into defaut(id_defaut, pergunta, resposta) values('2', '1', 'Uééé o que é isso que tu está me dizendo?');

CREATE TABLE `dicionario` (
  `id_dicionario` int(11) NOT NULL AUTO_INCREMENT,
  `texto` text NOT NULL,
  `expressoes_idexpressoes` int(11) NOT NULL,
  PRIMARY KEY (`id_dicionario`),
  KEY `fk_dicionario_expressoes1_idx` (`expressoes_idexpressoes`),
  FULLTEXT KEY `significado` (`texto`),
  CONSTRAINT `fk_dicionario_expressoes1` FOREIGN KEY (`expressoes_idexpressoes`) REFERENCES `expressoes` (`idexpressoes`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('5', ' vc ', '1');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('7', 'darth', '8');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('9', 'darti', '8');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('10', 'darte', '8');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('11', 'vader', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('12', 'veider', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('13', ' vaider', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('14', 'veidi', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('15', 'vaidier', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('16', 'qeum', '10');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('17', 'qume', '10');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('18', 'dia~', '11');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('19', 'dia]', '11');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('20', 'dia', '11');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('21', 'tardi', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('22', 'tadi', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('23', 'trade', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('24', ' tarde[', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('25', 'tarde]', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('26', 'tarde:', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('27', 'tarde;', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('28', 'tarde/', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('29', ' TARDE', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('30', ' Tarde', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('31', 'noiti', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('32', ' noite[', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('33', ' notie', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('34', '  noite]', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('35', ' note.', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('36', 'noite/', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('37', 'StarWatrs', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('38', ' star wars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('39', ' starwars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('40', ' istar uarus', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('41', ' istar uars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('42', ' estar uars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('43', ' STAR WARS', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('44', ' WARS STAR', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('45', ' wars star', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('46', ' star wasr', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('47', ' star wras', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('48', ' STAR WARS', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('49', ' wars star', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('50', 'Anakim', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('51', ' anakin', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('52', ' anaquim', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('53', ' anaquin', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('54', 'Skiwalker', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('55', 'Skiualquer', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('56', 'Skiwalquer', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('57', ' Skiualker', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('58', 'Skywalquer', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('59', 'Luke', '17');

CREATE TABLE `expressoes` (
  `idexpressoes` int(11) NOT NULL AUTO_INCREMENT,
  `expressao` text COLLATE utf8_german2_ci,
  PRIMARY KEY (`idexpressoes`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into expressoes(idexpressoes, expressao) values('1', 'você');
insert into expressoes(idexpressoes, expressao) values('8', 'Darth');
insert into expressoes(idexpressoes, expressao) values('9', 'Vader');
insert into expressoes(idexpressoes, expressao) values('10', 'quem');
insert into expressoes(idexpressoes, expressao) values('11', 'dia');
insert into expressoes(idexpressoes, expressao) values('12', 'tarde');
insert into expressoes(idexpressoes, expressao) values('13', 'noite');
insert into expressoes(idexpressoes, expressao) values('14', 'Star Wars');
insert into expressoes(idexpressoes, expressao) values('15', 'Anakin Skywalker');
insert into expressoes(idexpressoes, expressao) values('16', 'Skywalker');
insert into expressoes(idexpressoes, expressao) values('17', 'Luke Skywalker');

CREATE TABLE `keywords` (
  `id_key` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` text COLLATE utf8_german2_ci,
  `valida` int(1) DEFAULT NULL,
  `quem_fez` varchar(20) COLLATE utf8_german2_ci DEFAULT 'System',
  `pergunta_keyworks` int(11) NOT NULL,
  PRIMARY KEY (`id_key`),
  KEY `fk_keywords_pergunta_keyworks1_idx` (`pergunta_keyworks`),
  FULLTEXT KEY `keyword` (`keyword`),
  CONSTRAINT `fk_keywords_pergunta_keyworks1` FOREIGN KEY (`pergunta_keyworks`) REFERENCES `pergunta_keyworks` (`idpergunta_keyworks`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('7', 'significado  vida  universo  tudo mais', '1', '::1', '5');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('17', 'cor  sabre  Yoda', '1', '::1', '32');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('18', 'execute order 66', '1', '::1', '4');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('22', 'sentido  vida  universo', '1', '::1', '37');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('23', 'General Kenoby, você   audacioso!  frase pertence  quem', '1', 'SYSTEM', '38');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('24', 'O  significa ATAT', '1', 'SYSTEM', '39');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('25', 'Dewbacs  lagartos enormes usados  transporte   soldados imperiais', '1', 'SYSTEM', '40');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('26', 'CSI   sigla para', '1', 'SYSTEM', '41');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('27', 'O   Holocrom', '1', 'SYSTEM', '42');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('28', 'criador', '1', 'SYSTEM', '43');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('29', 'Apenas  ator  indicado   Oscar  atuação  Star Wars .   ele', '1', 'SYSTEM', '44');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('30', 'Morra escória Jedi! Ah!      disse?', '1', 'SYSTEM', '45');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('31', 'R2D2    participa  final   filme', '1', 'SYSTEM', '46');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('32', 'o   Midichlorians', '1', 'SYSTEM', '47');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('33', 'Havia  ator dentro  R2D2', '1', 'SYSTEM', '48');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('34', 'De onde vem  nome  R2D2', '1', 'SYSTEM', '49');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('35', 'Oi', '1', 'SYSTEM', '50');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('36', 'Tudo bem', '1', 'SYSTEM', '51');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('37', 'você', '1', 'SYSTEM', '52');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('38', 'tipo  pessoa', '1', 'SYSTEM', '53');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('39', 'Quem', '1', 'SYSTEM', '54');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('40', 'nome', '1', 'SYSTEM', '55');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('41', 'Holocron', '1', 'SYSTEM', '56');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('42', 'Wat', '1', 'SYSTEM', '57');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('43', 'comeu caqui', '1', 'SYSTEM', '58');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('44', 'quero saber', '1', 'SYSTEM', '59');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('45', '', '1', 'SYSTEM', '60');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('46', 'Vc  uma maquina', '1', 'SYSTEM', '61');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('47', 'criou', '1', 'SYSTEM', '62');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('48', 'nome deles', '1', 'SYSTEM', '63');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('49', 'Quantos anos você tem', '1', 'SYSTEM', '64');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('50', 'Voce  homem  mulher', '1', 'SYSTEM', '65');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('51', 'filme favorito', '1', 'SYSTEM', '66');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('52', 'Você gosta  Star Wars', '1', 'SYSTEM', '67');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('53', 'Você conhece twd', '1', 'SYSTEM', '68');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('54', ',    isso', '1', 'SYSTEM', '69');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('55', 'Olá,   vocÊ', '1', 'SYSTEM', '70');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('56', 'você', '1', 'SYSTEM', '71');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('57', 'maiores coisas  você aprendeu  hoje   vida', '1', 'SYSTEM', '72');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('58', 'conselho você daria  si   anos atrás', '1', 'SYSTEM', '73');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('59', 'maiores objetivos  sonhos', '1', 'SYSTEM', '74');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('60', 'disse    deixei,   apenas  aluno, hoje   mestre  Star Wars    Episódio IV', '1', 'SYSTEM', '75');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('61', 'O   conhecidos  condutores  Força', '1', 'SYSTEM', '76');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('62', 'nome  animal  atacou Anakin Skywalker  arena  Geonosis  EP. II,   dominado  serviu  montaria', '1', 'SYSTEM', '77');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('63', 'pai  criação  Princesa Léia', '1', 'SYSTEM', '78');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('64', 'profissão  Luke antes   tornar  Jedi', '1', 'SYSTEM', '79');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('65', 'revela  ObiWan,  origem  dardo toxico  matou Zam Wessel', '1', 'SYSTEM', '80');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('66', 'Léia  disfarçou  caçador  recompensas  entrar  palácio  Jabba,    caçador', '1', 'SYSTEM', '81');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('67', 'filme  longo  saga  agora', '1', 'SYSTEM', '82');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('68', 'Quantas vezes  Millenium Falcon consegue entrar  hyperspaço', '1', 'SYSTEM', '83');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('69', 'interpreta  personagem R2D2', '1', 'SYSTEM', '84');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('70', 'o    ordem 66', '1', 'SYSTEM', '85');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('71', 'DNA  usado  criar  Exército  Clones', '1', 'SYSTEM', '86');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('72', 'merecedor', '1', 'SYSTEM', '87');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('73', 'Yoda', '1', 'SYSTEM', '88');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('74', 'qu', '1', '::1', '89');

CREATE TABLE `log_conversa` (
  `id_log_conversa` int(11) NOT NULL AUTO_INCREMENT,
  `conversa` longtext NOT NULL,
  `ip` varchar(45) NOT NULL,
  `data_inc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_fim` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log_conversa`),
  FULLTEXT KEY `conversa` (`conversa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `perg_sem_resp` (
  `id_perg_sem_resp` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta` text,
  `ip` varchar(45) NOT NULL,
  `resposta_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perg_sem_resp`),
  KEY `fk_perg_sem_resp_resposta_idx` (`resposta_pergunta`),
  FULLTEXT KEY `pergunta` (`pergunta`),
  FULLTEXT KEY `resposta` (`resposta`),
  CONSTRAINT `fk_perg_sem_resp_resposta` FOREIGN KEY (`resposta_pergunta`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `perg_user` (
  `id_perg_user` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta_perg_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perg_user`),
  KEY `fk_perg_user_resposta1_idx` (`resposta_perg_user`),
  FULLTEXT KEY `pergunta` (`pergunta`),
  CONSTRAINT `fk_perg_user_resposta1` FOREIGN KEY (`resposta_perg_user`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `pergunta` (
  `id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `resposta_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pergunta`),
  KEY `fk_pergunta_resposta1_idx` (`resposta_pergunta`),
  FULLTEXT KEY `pergunta` (`pergunta`),
  CONSTRAINT `fk_pergunta_resposta1` FOREIGN KEY (`resposta_pergunta`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `pergunta_keyworks` (
  `idpergunta_keyworks` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta_key` text COLLATE utf8_german2_ci NOT NULL,
  `valida` int(1) DEFAULT NULL,
  `quem_fez` varchar(20) COLLATE utf8_german2_ci NOT NULL DEFAULT 'System',
  `Ativador_de_conversa` varchar(200) COLLATE utf8_german2_ci DEFAULT NULL,
  `resposta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpergunta_keyworks`),
  KEY `fk_pergunta_keyworks_resposta_idx` (`resposta_id`),
  FULLTEXT KEY `pergunta_key` (`pergunta_key`),
  CONSTRAINT `fk_pergunta_keyworks_resposta` FOREIGN KEY (`resposta_id`) REFERENCES `resposta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1', 'EXECUTE ORDER 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('2', 'execute order 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('3', 'execute ordem 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('4', 'EXECUTE ORDEM 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('5', 'Qual sentido da vida do universo e tudo mais?', '1', 'System', '', '1');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('6', 'Me diga uma frase famosa de Star Wars ?', '1', 'System', '', '4');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('13', 'Qual o significado da vida do universo e tudo mais', '1', '::1', '', '1');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('32', 'qual é a cor do sabre do Yoda', '1', '::1', '', '5');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('37', 'qual sentido da vida do universo', '1', '::1', '', '1');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('38', 'General Kenoby, você é muito audacioso! Esta frase pertence a quem?', '1', 'SYSTEM', '', '6');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('39', 'O que significa ATAT', '1', 'SYSTEM', '', '7');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('40', 'Dewbacs são lagartos enormes usados como transporte e por soldados imperiais', '1', 'SYSTEM', '', '8');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('41', 'CSI é a sigla para', '1', 'SYSTEM', '', '9');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('42', 'O que é Holocrom', '1', 'SYSTEM', '', '10');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('43', 'Quem é seu criador', '1', 'SYSTEM', '', '11');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('44', 'Apenas um ator foi indicado para o Oscar pela atuação em Star Wars . Quem foi ele', '1', 'SYSTEM', '', '12');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('45', 'Morra escória Jedi! Ah! O que foi que eu disse?', '1', 'SYSTEM', '', '13');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('46', 'R2D2 não participa do final de qual filme', '1', 'SYSTEM', '', '14');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('47', 'o que é Midichlorians', '1', 'SYSTEM', '', '15');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('48', 'Havia um ator dentro do R2D2', '1', 'SYSTEM', '', '16');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('49', 'De onde vem o nome de R2D2', '1', 'SYSTEM', '', '17');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('50', 'Oi', '1', 'SYSTEM', '', '18');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('51', 'Tudo bem', '1', 'SYSTEM', '', '19');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('52', 'Quem é você', '1', 'SYSTEM', '', '20');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('53', 'Que tipo de pessoa', '1', 'SYSTEM', '', '21');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('54', 'Quem', '1', 'SYSTEM', '', '22');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('55', 'Qual seu nome', '1', 'SYSTEM', '', '23');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('56', 'Quem é Holocron', '1', 'SYSTEM', '', '24');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('57', 'Wat', '1', 'SYSTEM', '', '25');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('58', 'Quem comeu caqui', '1', 'SYSTEM', '', '26');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('59', 'Por que eu quero saber', '1', 'SYSTEM', '', '27');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('60', 'Por que não', '1', 'SYSTEM', '', '28');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('61', 'Vc e uma maquina', '1', 'SYSTEM', '', '29');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('62', 'Quem te criou', '1', 'SYSTEM', '', '30');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('63', 'Qual nome deles', '1', 'SYSTEM', '', '31');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('64', 'Quantos anos você tem', '1', 'SYSTEM', '', '32');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('65', 'Voce é homem ou mulher', '1', 'SYSTEM', '', '33');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('66', 'Qual seu filme favorito', '1', 'SYSTEM', '', '34');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('67', 'Você gosta de Star Wars', '1', 'SYSTEM', '', '35');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('68', 'Você conhece twd', '1', 'SYSTEM', '', '36');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('69', 'Não, o que é isso', '1', 'SYSTEM', '', '37');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('70', 'Olá, quem é vocÊ', '1', 'SYSTEM', '', '38');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('71', 'Quem é você', '1', 'SYSTEM', '', '39');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('72', 'Quais são as maiores coisas que você aprendeu até hoje na sua vida', '1', 'SYSTEM', '', '40');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('73', 'Que conselho você daria a si mesmo há anos atrás', '1', 'SYSTEM', '', '41');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('74', 'Quais são os seus maiores objetivos e sonhos', '1', 'SYSTEM', '', '42');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('75', 'Quem disse Quando eu te deixei, eu era apenas um aluno, hoje sou um mestre no Star Wars : Episódio IV´', '1', 'SYSTEM', '', '43');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('76', 'O que são conhecidos como condutores da Força', '1', 'SYSTEM', '', '44');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('77', 'Qual era o nome do animal que atacou Anakin Skywalker na arena em Geonosis no EP. II, mas foi dominado e serviu de montaria', '1', 'SYSTEM', '', '45');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('78', 'Quem foi o pai de criação da Princesa Léia', '1', 'SYSTEM', '', '46');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('79', 'Qual era a profissão de Luke antes de se tornar um Jedi', '1', 'SYSTEM', '', '47');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('80', 'Quem revela a ObiWan, a origem do dardo toxico que matou Zam Wessel', '1', 'SYSTEM', '', '48');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('81', 'Léia se disfarçou de caçador de recompensas para entrar no palácio de Jabba, qual era esse caçador', '1', 'SYSTEM', '', '49');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('82', 'Qual o filme mais longo da saga até agora', '1', 'SYSTEM', '', '50');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('83', 'Quantas vezes a Millenium Falcon consegue entrar no hyperspaço', '1', 'SYSTEM', '', '51');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('84', 'Quem interpreta o personagem R2D2', '1', 'SYSTEM', '', '52');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('85', 'o que foi a ordem 66', '1', 'SYSTEM', '', '53');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('86', 'Qual DNA foi usado para criar o Exército dos Clones', '1', 'SYSTEM', '', '54');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('87', 'por que não sou merecedor', '1', 'SYSTEM', '', '55');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('88', 'Quem é Yoda', '1', 'SYSTEM', '', '56');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('89', 'qu', '1', '::1', '', '');

CREATE TABLE `personagem` (
  `id_personagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text CHARACTER SET utf8,
  PRIMARY KEY (`id_personagem`),
  FULLTEXT KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `propriedade` (
  `id_propriedade` int(11) NOT NULL AUTO_INCREMENT,
  `propriedade` text CHARACTER SET utf8,
  `valo` text CHARACTER SET utf8,
  `temp_id_temp` int(11) NOT NULL,
  PRIMARY KEY (`id_propriedade`),
  KEY `fk_propriedade_temp1_idx` (`temp_id_temp`),
  FULLTEXT KEY `propriedade` (`propriedade`),
  FULLTEXT KEY `valo` (`valo`),
  CONSTRAINT `fk_propriedade_temp1` FOREIGN KEY (`temp_id_temp`) REFERENCES `temp` (`id_temp`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `report` (
  `id_report` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) CHARACTER SET utf8 NOT NULL,
  `nome` varchar(90) CHARACTER SET utf8 NOT NULL,
  `texto` text CHARACTER SET utf8 NOT NULL,
  `visto` int(1) NOT NULL,
  `data_envio` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_visto` datetime DEFAULT NULL,
  `visuaizado_por` int(11) DEFAULT NULL,
  `ip` varchar(60) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_report`),
  KEY `fk_report_user1_idx` (`visuaizado_por`),
  FULLTEXT KEY `email` (`email`),
  FULLTEXT KEY `nome` (`nome`),
  FULLTEXT KEY `texto` (`texto`),
  FULLTEXT KEY `ip` (`ip`),
  CONSTRAINT `fk_report_user1` FOREIGN KEY (`visuaizado_por`) REFERENCES `user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `resposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resposta` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  FULLTEXT KEY `resposta` (`resposta`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

insert into resposta(id, resposta) values('1', '42');
insert into resposta(id, resposta) values('2', '=YES MY LORD=');
insert into resposta(id, resposta) values('3', '-=saudacao==');
insert into resposta(id, resposta) values('4', '==fraseSW==');
insert into resposta(id, resposta) values('5', 'verde');
insert into resposta(id, resposta) values('6', 'o grande General Grievous');
insert into resposta(id, resposta) values('7', 'AT-AT significa Tranporte Blindado para Todo Terrano. Eles são uma forma de transporte que apareceu pela primeira vez no Star Wars Episódio 5 O Império Contra-Ataca');
insert into resposta(id, resposta) values('8', 'Sim! Muito Perpicas da sua parte, jovem Padawan.');
insert into resposta(id, resposta) values('9', 'O significado para a sigla CSI, É Confederação dos Sistemas Independentes');
insert into resposta(id, resposta) values('10', 'Holocrons são um equipamento usado por Jedis e Sith para guardar seu conhecimento e ensinamento. A tecnologia dos Holocrons nasceu há cerca de 15.000 anos ou mais. Estes dispositivos são receptáculos de informações, sendo a maioria deles usada para guardar os segredos do uso da Força para futuras gerações. O criador de um holocron praticamente transfere um pouco de sua personalidade para dentro do objeto e muitos deles têm um tipo de componente orgânico cristalizado, uma rara facilidade encontrada apenas em mundos remotos. E também por este motivo, meu criador, teve a ideia de me dar este nome.');
insert into resposta(id, resposta) values('11', 'Ele é Patrick de Medeiros Fernandes, um estudante da Faculdade Senac, lá na cidade de Pelotas');
insert into resposta(id, resposta) values('12', 'Star Wars é uma das franquias mais bem sucedidas com sete vitórias e 22 indicações ao Oscar, mas apenas um tinha sido por atuação. Star Wars Episódio V Uma Nova Esperança acumulou 10 indicações ao Oscar, incluindo Melhor Filme e Melhor Ator Coadjuvante por Sir Alec Guinness.');
insert into resposta(id, resposta) values('13', 'C3-PO falou isso');
insert into resposta(id, resposta) values('14', 'Episódio III: A Vigança dos Sith (2005) é o único filme que o R2-D2 não participa da cena final');
insert into resposta(id, resposta) values('15', 'Midi-chlorians eram formas de vida microscópicas inteligentes que viviam dentro das células e eram as responsáveis pela geração da Força nos corpos. Eles não eram, no entanto, a Força em si, eles eram apenas uma ligação a ela, agindo como um órgão sensível que poderia ser percebido. Na sua essência, os midi-chlorians eram a conexão entre a mente do ser e a Força, fazendo com que certos seres sejam capazes de manipulá-los.');
insert into resposta(id, resposta) values('16', 'SIIIM, O ator americano Kenny Baker interpretou o personagem R2-D2 nos filmes.');
insert into resposta(id, resposta) values('17', 'Acredita-se que George Lucas tirou a ideia enquanto editava Loucuras de Verão e um amigo pediu para Lucas o Reel Two, Dialog Two, que abreviado fica R2-D2');
insert into resposta(id, resposta) values('18', '-=saudacao=');
insert into resposta(id, resposta) values('19', 'Comigo, está otimo, felismente não moro em Mustafar, se não meus sistemas já estaria derretendo.');
insert into resposta(id, resposta) values('20', 'Eu sou Holocron');
insert into resposta(id, resposta) values('21', 'eu não sou um pessoa, eu sou Holocron');
insert into resposta(id, resposta) values('22', 'Quem o que? Escreva melhor a sua pergunta ....');
insert into resposta(id, resposta) values('23', 'Ue, ue, eu sou Holocron');
insert into resposta(id, resposta) values('24', 'Sou eu horas, e também são um equipamento usado por Jedis e Sith para guardar seu conhecimento e ensinamento. A tecnologia dos Holocrons nasceu há cerca de 15.000 anos ou mais. Estes dispositivos são receptáculos de informações, sendo a maioria deles usada para guardar os segredos do uso da Força para futuras gerações. O criador de um holocron praticamente transfere um pouco de sua personalidade para dentro do objeto e muitos deles têm um tipo de componente orgânico cristalizado, uma rara facilidade encontrada apenas em mundos remotos. E por este motivo, meu criador, teve a ideia de me dar este nome.');
insert into resposta(id, resposta) values('25', 'que o que?');
insert into resposta(id, resposta) values('26', 'Como eu posso saber');
insert into resposta(id, resposta) values('27', 'Mas não saberes, não es merecedor deste poder.');
insert into resposta(id, resposta) values('28', 'por que a força não é poderosa o suficiente em você');
insert into resposta(id, resposta) values('29', 'Bem eu sou, um sistema que tenta simular uma conversa humana, então acho que sou sim uma maquina');
insert into resposta(id, resposta) values('30', '-.-.-.-.-.-');
insert into resposta(id, resposta) values('31', 'QUAL NOME DO QUE?');
insert into resposta(id, resposta) values('32', 'Bem');
insert into resposta(id, resposta) values('33', 'Eu sou Holocron, nem homem nem mulher');
insert into resposta(id, resposta) values('34', 'Star Wars Episódio IV Uma Nova Esperança');
insert into resposta(id, resposta) values('35', 'SIIIIIM, eu gosto muito de Star Wars, meus filmes favoritos são de Star Wars');
insert into resposta(id, resposta) values('36', 'não');
insert into resposta(id, resposta) values('37', 'o que é o que?');
insert into resposta(id, resposta) values('38', 'Olá, eu sou Holocron');
insert into resposta(id, resposta) values('39', '.~.~.~.~.');
insert into resposta(id, resposta) values('40', '???');
insert into resposta(id, resposta) values('41', 'Instrua Patrick a não fazer um chatbot');
insert into resposta(id, resposta) values('42', 'Saber tudo que pode se saber sobre Star Wars');
insert into resposta(id, resposta) values('43', 'Darth Vader diz para Obi-Wan Kenobi no filme');
insert into resposta(id, resposta) values('44', 'Midi-chlorians são formas inteligentes de vida microscópicas que vivem no interior das células dos seres vivos. As pessoas que tem o número suficiente delas conhecem a energia conhecida como A Força');
insert into resposta(id, resposta) values('45', 'Um Reek, que é uma criaturas de grande porte e de casca grossa, com chifres, quadrúpedes bovinos nativos de Ylesia. Subespécies podiam ser encontradas em Iridônia e Ithor. Eles também podiam ser encontradas em fazendas na Lua Codiana, Tatooine e Saleucami.');
insert into resposta(id, resposta) values('46', 'Bail Organa');
insert into resposta(id, resposta) values('47', 'Antes de se tornar jedi ele era um fazendeiro');
insert into resposta(id, resposta) values('48', 'Foi o Dexter');
insert into resposta(id, resposta) values('49', 'Boushh garantiu uma reputação para si mesmo como um formidável e perigoso caçador de recompensas que trabalhou por muitos financiadores.');
insert into resposta(id, resposta) values('50', 'A Ameaça Fantasma');
insert into resposta(id, resposta) values('51', 'somente 1');
insert into resposta(id, resposta) values('52', 'O ator que interpretou, o robozinho, mais amada de Star Wars, foi Kenny Baker');
insert into resposta(id, resposta) values('53', '&quot;A Ordem 66 foi um evento no final das Guerras Clônicas no qual soldados clone do Grande Exército da República se voltaram contra os Generais Jedi e os exterminaram, ocasionando a destruição da Ordem Jedi. O evento foi acionado pelo Protocolo Clone 66, uma ordem implantada nos clones pelos Lordes Sith e cientistas Kaminoanos que criaram o exército clone. O protocolo fazia com que os soldados clone violentamente atacassem os Jedi e os enxergassem como ameaças, e era controlado por um bio-chip implantado nos cérebros dos clones durante sua criação');
insert into resposta(id, resposta) values('54', 'Em Star Wars Episódio II, Ataque dos Clones, Obi-Wan Kenobi descobre que o mestre Jedi Sifo-Dyas odernou a criação de um exército de clones dez anos antes. Jango Fett é a fonte de DNA do exército');
insert into resposta(id, resposta) values('55', '~/~/~/~/');
insert into resposta(id, resposta) values('56', 'Medindo 76 centímetros de altura, Yoda é um membro masculino de uma raça cujo nome nunca foi revelado. Ele foi o Grão Mestre da Ordem Jedi durante as Guerras Clônicas, um dos membros mais importantes do Alto Conselho Jedi nos últimos dias da República Galáctica, e um dos mais sábios e poderosos Jedi de todos os tempos. Tendo vivido por muito tempo (veio a falecer com aprox. 900 anos de idade), ele tinha excepcionais habilidades no combate de sabre de luz, onde usava as técnicas acrobáticas da Forma IV, além de um fenomenal conhecimento sobre a Força. De 300 ABY até 19 ABY ele treinou quase todos os Jedi da Galáxia ? como Grande Mestre, ele instruia todos os Younglings do Templo Jedi antes deles serem adotados por um mestre, tendo Anakin Skywalker sido uma exceção quanto a isso.');

CREATE TABLE `temp` (
  `id_temp` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text CHARACTER SET utf8,
  PRIMARY KEY (`id_temp`),
  FULLTEXT KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(90) NOT NULL,
  `senha` varchar(90) NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '1',
  `ativo` int(1) NOT NULL DEFAULT '1',
  `frase` text,
  `frase_resposta` text,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

insert into user(id_user, login, senha, nivel, ativo, frase, frase_resposta) values('8', 'root', 'd9b1d7db4cd6e70935368a1efb10e377', '3', '1', '', '');

CREATE TABLE `valor` (
  `id_valor` int(11) NOT NULL,
  `valor` text CHARACTER SET utf8,
  `dado` text CHARACTER SET utf8,
  `personagem_id_personagem` int(11) NOT NULL,
  PRIMARY KEY (`id_valor`),
  KEY `fk_valor_personagem1_idx` (`personagem_id_personagem`),
  FULLTEXT KEY `dado` (`dado`),
  FULLTEXT KEY `valor` (`valor`),
  CONSTRAINT `fk_valor_personagem1` FOREIGN KEY (`personagem_id_personagem`) REFERENCES `personagem` (`id_personagem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

