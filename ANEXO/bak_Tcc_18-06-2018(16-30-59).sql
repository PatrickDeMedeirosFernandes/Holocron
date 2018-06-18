

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

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

CREATE TABLE `expressoes` (
  `idexpressoes` int(11) NOT NULL AUTO_INCREMENT,
  `expressao` text COLLATE utf8_german2_ci,
  PRIMARY KEY (`idexpressoes`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into expressoes(idexpressoes, expressao) values('1', 'você');
insert into expressoes(idexpressoes, expressao) values('8', 'Darth');
insert into expressoes(idexpressoes, expressao) values('9', 'Vader');
insert into expressoes(idexpressoes, expressao) values('10', 'quem');
insert into expressoes(idexpressoes, expressao) values('11', 'dia');
insert into expressoes(idexpressoes, expressao) values('12', 'tarde');
insert into expressoes(idexpressoes, expressao) values('13', 'noite');
insert into expressoes(idexpressoes, expressao) values('14', 'Star Wars');
insert into expressoes(idexpressoes, expressao) values('15', 'Anakin');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;


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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1', 'EXECUTE ORDER 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('2', 'execute order 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('3', 'execute ordem 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('4', 'EXECUTE ORDEM 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('5', 'Qual sentido da vida do universo e tudo mais?', '1', 'System', '', '1');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('6', 'Me diga uma frase famosa de Star Wars ?', '1', 'System', '', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

insert into resposta(id, resposta) values('1', '42');
insert into resposta(id, resposta) values('2', '=YES MY LORD=');
insert into resposta(id, resposta) values('3', '==saudacao==');
insert into resposta(id, resposta) values('4', '==fraseSW==');

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
  `id_valor` int(11) NOT NULL AUTO_INCREMENT,
  `valor` text CHARACTER SET utf8,
  `dado` text CHARACTER SET utf8,
  `personagem_id_personagem` int(11) NOT NULL,
  PRIMARY KEY (`id_valor`),
  KEY `fk_valor_personagem1_idx` (`personagem_id_personagem`),
  FULLTEXT KEY `dado` (`dado`),
  FULLTEXT KEY `valor` (`valor`),
  CONSTRAINT `fk_valor_personagem1` FOREIGN KEY (`personagem_id_personagem`) REFERENCES `personagem` (`id_personagem`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

