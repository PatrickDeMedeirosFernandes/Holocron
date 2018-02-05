SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE `defaut` (
  `id_defaut` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` int(1) NOT NULL DEFAULT '1',
  `resposta` text COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id_defaut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


CREATE TABLE `dicionario` (
  `id_dicionario` int(11) NOT NULL AUTO_INCREMENT,
  `expressao` text COLLATE utf8_german2_ci NOT NULL,
  `significado` text COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id_dicionario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into dicionario(id_dicionario, expressao, significado) values('1', 'vc', 'voce');

CREATE TABLE `log_conversa` (
  `id_log_conversa` int(11) NOT NULL AUTO_INCREMENT,
  `conversa` longtext COLLATE utf8_german2_ci NOT NULL,
  `ip` varchar(45) COLLATE utf8_german2_ci NOT NULL,
  `data_inc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_fim` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log_conversa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


CREATE TABLE `perg_sem_resp` (
  `id_perg_sem_resp` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text COLLATE utf8_german2_ci NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta` text COLLATE utf8_german2_ci,
  `ip` varchar(45) COLLATE utf8_german2_ci NOT NULL,
  `resposta_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perg_sem_resp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


CREATE TABLE `perg_user` (
  `id_perg_user` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text COLLATE utf8_german2_ci,
  `valida` int(11) NOT NULL DEFAULT '1',
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `respota_perg_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perg_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


CREATE TABLE `pergunta` (
  `id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text COLLATE utf8_german2_ci,
  `valida` int(11) NOT NULL DEFAULT '1',
  `resposta_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('1', 'quem é a esposa de anakin', '1', '1');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('2', 'que disse a frase eu sou seu pai', '1', '2');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('3', 'quem disse a frase eu sou seu pai', '1', '2');

CREATE TABLE `personagem` (
  `id_personagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text COLLATE utf8_german2_ci,
  PRIMARY KEY (`id_personagem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into personagem(id_personagem, nome) values('1', 'yt');

CREATE TABLE `propriedade` (
  `id_propriedade` int(11) NOT NULL AUTO_INCREMENT,
  `propriedade` text COLLATE utf8_german2_ci,
  `valo` text COLLATE utf8_german2_ci,
  `temp_id_temp` int(11) NOT NULL,
  PRIMARY KEY (`id_propriedade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


CREATE TABLE `report` (
  `id_report` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) COLLATE utf8_german2_ci NOT NULL,
  `nome` varchar(90) COLLATE utf8_german2_ci NOT NULL,
  `texto` text COLLATE utf8_german2_ci NOT NULL,
  `visto` int(1) NOT NULL,
  `data_envio` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_visto` datetime DEFAULT NULL,
  `visuaizado_por` int(11) DEFAULT NULL,
  `ip` varchar(60) COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id_report`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


CREATE TABLE `respota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resposta` text COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into respota(id, resposta) values('1', 'Padmé
');
insert into respota(id, resposta) values('2', 'Darth Vader disse para o Luke
');

CREATE TABLE `temp` (
  `id_temp` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text COLLATE utf8_german2_ci,
  PRIMARY KEY (`id_temp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;


CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(90) COLLATE utf8_german2_ci NOT NULL,
  `senha` varchar(90) COLLATE utf8_german2_ci NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '1',
  `ativo` int(1) NOT NULL DEFAULT '1',
  `frase` text COLLATE utf8_german2_ci,
  `frase_respota` text COLLATE utf8_german2_ci,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into user(id_user, login, senha, nivel, ativo, frase, frase_respota) values('0', 'root', 'd9b1d7db4cd6e70935368a1efb10e377', '3', '1', '', '');

CREATE TABLE `valor` (
  `id_valor` int(11) NOT NULL AUTO_INCREMENT,
  `valor` text COLLATE utf8_german2_ci,
  `dado` text COLLATE utf8_german2_ci,
  `personagem_id_personagem` int(11) NOT NULL,
  PRIMARY KEY (`id_valor`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into valor(id_valor, valor, dado, personagem_id_personagem) values('1', 'Sobre', 'utyutyut', '1');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('2', 'Resumo sobre', 'ytut', '1');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('3', 'O que é', 'Personagem', '1');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('4', 'tyu', 'tutyu', '1');
