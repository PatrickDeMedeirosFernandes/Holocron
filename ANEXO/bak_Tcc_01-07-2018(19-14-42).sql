

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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

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
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('60', 'ioda', '18');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('61', 'uioda', '18');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('62', 'uoda', '18');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('63', 'iodá', '18');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('64', 'yodá', '18');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('66', 'skywalker skywalker', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('67', 'Darth Vade', '19');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('68', ' vc ', '1');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('69', 'darth', '8');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('70', 'darti', '8');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('71', 'darte', '8');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('72', 'vader', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('73', 'veider', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('74', ' vaider', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('75', 'veidi', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('76', 'vaidier', '9');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('77', 'qeum', '10');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('78', 'qume', '10');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('79', 'dia~', '11');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('80', 'dia]', '11');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('81', 'dia', '11');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('82', 'tardi', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('83', 'tadi', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('84', 'trade', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('85', ' tarde[', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('86', 'tarde]', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('87', 'tarde:', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('88', 'tarde;', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('89', 'tarde/', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('90', ' TARDE', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('91', ' Tarde', '12');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('92', 'noiti', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('93', ' noite[', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('94', ' notie', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('95', '  noite]', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('96', ' note.', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('97', 'noite/', '13');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('98', 'StarWatrs', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('99', ' star wars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('100', ' starwars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('101', ' istar uarus', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('102', ' istar uars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('103', ' estar uars', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('104', ' STAR WARS', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('105', ' WARS STAR', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('106', ' wars star', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('107', ' star wasr', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('108', ' star wras', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('109', ' STAR WARS', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('110', ' wars star', '14');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('111', 'Anakim', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('112', ' anakin', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('113', ' anaquim', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('114', ' anaquin', '15');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('115', 'Skiwalker', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('116', 'Skiualquer', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('117', 'Skiwalquer', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('118', ' Skiualker', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('119', 'Skywalquer', '16');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('120', 'Luke', '17');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('121', 'humanos', '31');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('122', 'Qui Gon', '32');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('123', 'Qui Gom', '32');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('124', 'Qui-Gom', '32');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('125', ' ran ', '33');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('126', ' ram ', '33');
insert into dicionario(id_dicionario, texto, expressoes_idexpressoes) values('127', ' ham ', '33');

CREATE TABLE `expressoes` (
  `idexpressoes` int(11) NOT NULL AUTO_INCREMENT,
  `expressao` text COLLATE utf8_german2_ci,
  PRIMARY KEY (`idexpressoes`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

insert into expressoes(idexpressoes, expressao) values('1', 'você');
insert into expressoes(idexpressoes, expressao) values('8', 'Darth');
insert into expressoes(idexpressoes, expressao) values('9', 'Vader');
insert into expressoes(idexpressoes, expressao) values('10', 'quem');
insert into expressoes(idexpressoes, expressao) values('11', 'dia');
insert into expressoes(idexpressoes, expressao) values('12', 'tarde');
insert into expressoes(idexpressoes, expressao) values('13', 'noite');
insert into expressoes(idexpressoes, expressao) values('14', 'Star Wars');
insert into expressoes(idexpressoes, expressao) values('15', 'Anakin ');
insert into expressoes(idexpressoes, expressao) values('16', 'Skywalker');
insert into expressoes(idexpressoes, expressao) values('17', 'Luke ');
insert into expressoes(idexpressoes, expressao) values('18', 'Yoda');
insert into expressoes(idexpressoes, expressao) values('19', 'Darth Vader');
insert into expressoes(idexpressoes, expressao) values('20', 'você');
insert into expressoes(idexpressoes, expressao) values('21', 'Darth');
insert into expressoes(idexpressoes, expressao) values('22', 'Vader');
insert into expressoes(idexpressoes, expressao) values('23', 'quem');
insert into expressoes(idexpressoes, expressao) values('24', 'dia');
insert into expressoes(idexpressoes, expressao) values('25', 'tarde');
insert into expressoes(idexpressoes, expressao) values('26', 'noite');
insert into expressoes(idexpressoes, expressao) values('27', 'Star Wars');
insert into expressoes(idexpressoes, expressao) values('28', 'Anakin ');
insert into expressoes(idexpressoes, expressao) values('29', 'Skywalker');
insert into expressoes(idexpressoes, expressao) values('30', 'Luke ');
insert into expressoes(idexpressoes, expressao) values('31', 'humano');
insert into expressoes(idexpressoes, expressao) values('32', 'Qui-Gon');
insert into expressoes(idexpressoes, expressao) values('33', 'Han');

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
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

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
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('74', 'o    Batalha  Yavin', '1', 'SYSTEM', '89');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('75', 'O Darth Vader  sabre   cor', '1', 'SYSTEM', '90');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('76', 'cor  sabre  Darth Vader', '1', 'SYSTEM', '91');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('77', 'cor  sabre  luz  Darth Vader', '1', 'SYSTEM', '92');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('78', 'arma  Darth Vader', '1', 'SYSTEM', '93');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('79', 'Você sabe   arma  escolha  Darth Vader', '1', 'SYSTEM', '94');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('80', 'o Darth Vader usa sabre', '1', 'SYSTEM', '95');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('81', 'idade Darth Vader tem', '1', 'SYSTEM', '96');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('82', 'idade Darth Vader', '1', 'SYSTEM', '97');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('83', 'ano   Darth Vader', '1', 'SYSTEM', '98');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('84', 'primeiro aprendiz  Darth Vader', '1', 'SYSTEM', '99');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('85', 'Com   ano  morreu Darth Vader', '1', 'SYSTEM', '100');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('86', 'morreu Darth Vader', '1', 'SYSTEM', '101');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('87', 'Com   ano  morreu Darth Vader', '1', 'SYSTEM', '102');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('88', 'matou Darth Vader', '1', 'SYSTEM', '103');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('89', 'O  acha  Darth Vader', '1', 'SYSTEM', '104');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('90', 'o    Darth Vader', '1', 'SYSTEM', '105');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('92', 'me fale sobre Darth Vader', '1', 'SYSTEM', '107');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('93', 'Darth Vader', '1', 'SYSTEM', '108');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('94', 'Darth Vader', '1', 'SYSTEM', '109');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('95', 'nome  mãe  Darth Vader', '1', 'SYSTEM', '110');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('96', 'parente   Darth Vader', '1', 'SYSTEM', '111');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('97', 'pai  Darth Vader', '1', 'SYSTEM', '112');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('98', 'treinado  Darth Vader', '1', 'SYSTEM', '113');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('99', 'Darth Vader  treinado  quem', '1', 'SYSTEM', '114');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('100', 'treinou Darth Vader', '1', 'SYSTEM', '115');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('101', 'aprendiz  Darth Vade', '1', '::1', '116');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('102', 'mestre Darth Vader', '1', '::1', '117');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('103', 'mestre Darth Vader', '1', '::1', '118');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('104', 'planeta natal  Darth Vader', '1', 'SYSTEM', '119');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('105', 'planeta natal  Darth Vader', '1', 'SYSTEM', '120');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('106', 'frase marcante  Darth Vader', '1', 'SYSTEM', '121');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('107', 'filme aprece Darth Vader', '1', 'SYSTEM', '122');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('108', 'epidodio aparece Darth Vader', '1', 'SYSTEM', '123');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('109', 'raça Darth Vader', '1', 'SYSTEM', '124');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('110', 'especie Darth Vader', '1', 'SYSTEM', '125');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('111', 'ator interpretou Darth Vader', '1', 'SYSTEM', '126');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('112', 'Darth Vader  interpretado  quem', '1', 'SYSTEM', '127');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('113', 'O Anakin Skywalker  sabre   cor', '1', 'SYSTEM', '128');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('114', 'cor  sabre  luz  Anakin Skywalker', '1', 'SYSTEM', '129');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('115', 'arma  Anakin Skywalker', '1', 'SYSTEM', '130');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('116', 'Você sabe   arma  escolha  Anakin Skywalker', '1', 'SYSTEM', '131');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('117', 'o Anakin Skywalker usa sabre', '1', 'SYSTEM', '132');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('118', 'idade Anakin Skywalker tem', '1', 'SYSTEM', '133');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('119', 'idade Anakin Skywalker', '1', 'SYSTEM', '134');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('120', 'ano   Anakin Skywalker', '1', 'SYSTEM', '135');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('121', 'primeiro aprendiz  Anakin Skywalker', '1', 'SYSTEM', '136');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('122', 'Com   ano  morreu Anakin Skywalker', '1', 'SYSTEM', '137');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('123', 'morreu Anakin Skywalker', '1', 'SYSTEM', '138');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('124', 'Com   ano  morreu Anakin Skywalker', '1', 'SYSTEM', '139');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('125', 'matou Anakin Skywalker', '1', 'SYSTEM', '140');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('126', 'O  acha  Anakin Skywalker', '1', 'SYSTEM', '141');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('127', 'o    Anakin Skywalker', '1', 'SYSTEM', '142');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('128', 'me fale sobre Anakin Skywalker', '1', 'SYSTEM', '143');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('129', 'Anakin Skywalker', '1', 'SYSTEM', '144');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('130', 'Anakin Skywalker', '1', 'SYSTEM', '145');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('131', 'nome  mãe  Anakin Skywalker', '1', 'SYSTEM', '146');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('132', 'parente   Anakin Skywalker', '1', 'SYSTEM', '147');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('133', 'pai  Anakin Skywalker', '1', 'SYSTEM', '148');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('134', 'treinado  Anakin Skywalker', '1', 'SYSTEM', '149');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('135', 'Anakin Skywalker  treinado  quem', '1', 'SYSTEM', '150');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('136', 'treinou Anakin Skywalker', '1', 'SYSTEM', '151');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('137', 'planeta natal  Anakin Skywalker', '1', 'SYSTEM', '152');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('138', 'planeta natal  Anakin Skywalker', '1', 'SYSTEM', '153');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('139', 'frase marcante  Anakin Skywalker', '1', 'SYSTEM', '154');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('140', 'filme aprece Anakin Skywalker', '1', 'SYSTEM', '155');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('141', 'epidodio aparece Anakin Skywalker', '1', 'SYSTEM', '156');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('142', 'raça Anakin Skywalker', '1', 'SYSTEM', '157');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('143', 'especie Anakin Skywalker', '1', 'SYSTEM', '158');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('144', 'ator interpretou Anakin Skywalker', '1', 'SYSTEM', '159');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('145', 'Anakin Skywalker  interpretado  quem', '1', 'SYSTEM', '160');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('146', 'o   humano', '1', '::1', '161');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('147', 'mestre  Anakin Skywalker', '1', '177.79.77.98', '940');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('149', 'O ObiWan Kenobi  sabre   cor', '1', 'SYSTEM', '941');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('150', 'cor  sabre  ObiWan Kenobi', '1', 'SYSTEM', '942');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('151', 'cor  sabre  luz  ObiWan Kenobi', '1', 'SYSTEM', '943');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('152', 'arma  ObiWan Kenobi', '1', 'SYSTEM', '944');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('153', 'Você sabe   arma  escolha  ObiWan Kenobi', '1', 'SYSTEM', '945');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('154', 'o ObiWan Kenobi usa sabre', '1', 'SYSTEM', '946');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('155', 'idade ObiWan Kenobi tem', '1', 'SYSTEM', '947');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('156', 'idade ObiWan Kenobi', '1', 'SYSTEM', '948');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('157', 'anos  ObiWan Kenobi', '1', 'SYSTEM', '949');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('158', 'primeiro aprendiz  ObiWan Kenobi', '1', 'SYSTEM', '950');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('159', 'Com   anos morreu ObiWan Kenobi', '1', 'SYSTEM', '951');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('160', 'morreu ObiWan Kenobi', '1', 'SYSTEM', '952');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('161', 'Com   anos morreu ObiWan Kenobi', '1', 'SYSTEM', '953');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('162', 'matou ObiWan Kenobi', '1', 'SYSTEM', '954');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('163', 'O  acha  ObiWan Kenobi', '1', 'SYSTEM', '955');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('164', 'o    ObiWan Kenobi', '1', 'SYSTEM', '956');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('165', 'me fale sobre ObiWan Kenobi', '1', 'SYSTEM', '957');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('166', 'ObiWan Kenobi', '1', 'SYSTEM', '958');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('167', 'ObiWan Kenobi', '1', 'SYSTEM', '959');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('168', 'nome  mãe  ObiWan Kenobi', '1', 'SYSTEM', '960');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('169', 'parentes  ObiWan Kenobi', '1', 'SYSTEM', '961');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('170', 'pai  ObiWan Kenobi', '1', 'SYSTEM', '962');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('171', 'treinado  ObiWan Kenobi', '1', 'SYSTEM', '963');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('172', 'ObiWan Kenobi  treinado  quem', '1', 'SYSTEM', '964');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('173', 'treinou ObiWan Kenobi', '1', 'SYSTEM', '965');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('174', 'planeta natal  ObiWan Kenobi', '1', 'SYSTEM', '966');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('175', 'planeta natal  ObiWan Kenobi', '1', 'SYSTEM', '967');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('176', 'frase marcante  ObiWan Kenobi', '1', 'SYSTEM', '968');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('177', 'filme aprece ObiWan Kenobi', '1', 'SYSTEM', '969');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('178', 'epidodio aparece ObiWan Kenobi', '1', 'SYSTEM', '970');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('179', 'raça ObiWan Kenobi', '1', 'SYSTEM', '971');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('180', 'especie ObiWan Kenobi', '1', 'SYSTEM', '972');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('181', 'ator interpretou ObiWan Kenobi', '1', 'SYSTEM', '973');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('182', 'ObiWan Kenobi  interpretado  quem', '1', 'SYSTEM', '974');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('183', 'arma  Princesa Leia Organa', '1', 'SYSTEM', '975');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('184', 'Você sabe   arma  escolha  Princesa Leia Organa', '1', 'SYSTEM', '976');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('185', 'o Princesa Leia Organa usa sabre', '1', 'SYSTEM', '977');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('186', 'idade Princesa Leia Organa tem', '1', 'SYSTEM', '978');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('187', 'idade Princesa Leia Organa', '1', 'SYSTEM', '979');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('188', 'anos  Princesa Leia Organa', '1', 'SYSTEM', '980');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('189', 'Com   anos morreu Princesa Leia Organa', '1', 'SYSTEM', '981');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('190', 'morreu Princesa Leia Organa', '1', 'SYSTEM', '982');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('191', 'Com   anos morreu Princesa Leia Organa', '1', 'SYSTEM', '983');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('192', 'matou Princesa Leia Organa', '1', 'SYSTEM', '984');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('193', 'o    Princesa Leia Organa', '1', 'SYSTEM', '985');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('194', 'me fale sobre Princesa Leia Organa', '1', 'SYSTEM', '986');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('195', 'Princesa Leia Organa', '1', 'SYSTEM', '987');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('196', 'Princesa Leia Organa', '1', 'SYSTEM', '988');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('197', 'nome  mãe  Princesa Leia Organa', '1', 'SYSTEM', '989');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('198', 'parentes  Princesa Leia Organa', '1', 'SYSTEM', '990');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('199', 'pai  Princesa Leia Organa', '1', 'SYSTEM', '991');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('200', 'planeta natal  Princesa Leia Organa', '1', 'SYSTEM', '992');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('201', 'planeta natal  Princesa Leia Organa', '1', 'SYSTEM', '993');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('202', 'frase marcante  Princesa Leia Organa', '1', 'SYSTEM', '994');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('203', 'filme aprece Princesa Leia Organa', '1', 'SYSTEM', '995');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('204', 'episodio aparece Princesa Leia Organa', '1', 'SYSTEM', '996');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('205', 'raça Princesa Leia Organa', '1', 'SYSTEM', '997');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('206', 'especie Princesa Leia Organa', '1', 'SYSTEM', '998');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('207', 'ator interpretou Princesa Leia Organa', '1', 'SYSTEM', '999');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('208', 'Princesa Leia Organa  interpretado  quem', '1', 'SYSTEM', '1000');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('209', 'Anakin Skywalker Skywalker', '1', '::1', '1001');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('210', 'anakin  jedi', '1', '::1', '144');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('211', 'o   jedi', '1', '::1', '144');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('212', 'o   jedi', '1', '::1', '1002');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('213', 'jedi', '1', '::1', '1003');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('214', 'jedi', '1', '::1', '1004');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('215', 'O Luke Skywalker  sabre   cor', '1', 'SYSTEM', '1005');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('216', 'cor  sabre  Luke Skywalker', '1', 'SYSTEM', '1006');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('217', 'cor  sabre  luz  Luke Skywalker', '1', 'SYSTEM', '1007');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('218', 'arma  Luke Skywalker', '1', 'SYSTEM', '1008');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('219', 'Você sabe   arma  escolha  Luke Skywalker', '1', 'SYSTEM', '1009');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('220', 'o Luke Skywalker usa sabre', '1', 'SYSTEM', '1010');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('221', 'idade Luke Skywalker tem', '1', 'SYSTEM', '1011');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('222', 'idade Luke Skywalker', '1', 'SYSTEM', '1012');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('223', 'anos  Luke Skywalker', '1', 'SYSTEM', '1013');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('224', 'primeiro aprendiz  Luke Skywalker', '1', 'SYSTEM', '1014');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('225', 'Com   anos morreu Luke Skywalker', '1', 'SYSTEM', '1015');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('226', 'morreu Luke Skywalker', '1', 'SYSTEM', '1016');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('227', 'Com   anos morreu Luke Skywalker', '1', 'SYSTEM', '1017');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('228', 'matou Luke Skywalker', '1', 'SYSTEM', '1018');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('229', 'O  acha  Luke Skywalker', '1', 'SYSTEM', '1019');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('230', 'o    Luke Skywalker', '1', 'SYSTEM', '1020');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('231', 'me fale sobre Luke Skywalker', '1', 'SYSTEM', '1021');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('232', 'Luke Skywalker', '1', 'SYSTEM', '1022');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('233', 'Luke Skywalker', '1', 'SYSTEM', '1023');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('234', 'nome  mãe  Luke Skywalker', '1', 'SYSTEM', '1024');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('235', 'parentes  Luke Skywalker', '1', 'SYSTEM', '1025');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('236', 'pai  Luke Skywalker', '1', 'SYSTEM', '1026');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('237', 'treinado  Luke Skywalker', '1', 'SYSTEM', '1027');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('238', 'Luke Skywalker  treinado  quem', '1', 'SYSTEM', '1028');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('239', 'treinou Luke Skywalker', '1', 'SYSTEM', '1029');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('240', 'planeta natal  Luke Skywalker', '1', 'SYSTEM', '1030');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('241', 'planeta natal  Luke Skywalker', '1', 'SYSTEM', '1031');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('242', 'frase marcante  Luke Skywalker', '1', 'SYSTEM', '1032');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('243', 'filme aprece Luke Skywalker', '1', 'SYSTEM', '1033');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('244', 'epidodio aparece Luke Skywalker', '1', 'SYSTEM', '1034');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('245', 'raça Luke Skywalker', '1', 'SYSTEM', '1035');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('246', 'especie Luke Skywalker', '1', 'SYSTEM', '1036');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('247', 'ator interpretou Luke Skywalker', '1', 'SYSTEM', '1037');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('248', 'O Mestre Yoda  sabre   cor', '1', 'SYSTEM', '1038');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('249', 'cor  sabre  Mestre Yoda', '1', 'SYSTEM', '1039');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('250', 'cor  sabre  luz  Mestre Yoda', '1', 'SYSTEM', '1040');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('251', 'arma  Mestre Yoda', '1', 'SYSTEM', '1041');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('252', 'Você sabe   arma  escolha  Mestre Yoda', '1', 'SYSTEM', '1042');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('253', 'o Mestre Yoda usa sabre', '1', 'SYSTEM', '1043');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('254', 'idade Mestre Yoda tem', '1', 'SYSTEM', '1044');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('255', 'idade Mestre Yoda', '1', 'SYSTEM', '1045');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('256', 'anos  Mestre Yoda', '1', 'SYSTEM', '1046');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('257', 'primeiro aprendiz  Mestre Yoda', '1', 'SYSTEM', '1047');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('258', 'Com   anos morreu Mestre Yoda', '1', 'SYSTEM', '1048');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('259', 'morreu Mestre Yoda', '1', 'SYSTEM', '1049');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('260', 'Com   anos morreu Mestre Yoda', '1', 'SYSTEM', '1050');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('261', 'matou Mestre Yoda', '1', 'SYSTEM', '1051');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('262', 'O  acha  Mestre Yoda', '1', 'SYSTEM', '1052');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('263', 'o    Mestre Yoda', '1', 'SYSTEM', '1053');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('264', 'me fale sobre Mestre Yoda', '1', 'SYSTEM', '1054');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('265', 'Mestre Yoda', '1', 'SYSTEM', '1055');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('266', 'Mestre Yoda', '1', 'SYSTEM', '1056');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('267', 'nome  mãe  Mestre Yoda', '1', 'SYSTEM', '1057');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('268', 'parentes  Mestre Yoda', '1', 'SYSTEM', '1058');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('269', 'pai  Mestre Yoda', '1', 'SYSTEM', '1059');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('270', 'treinado  Mestre Yoda', '1', 'SYSTEM', '1060');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('271', 'Mestre Yoda  treinado  quem', '1', 'SYSTEM', '1061');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('272', 'treinou Mestre Yoda', '1', 'SYSTEM', '1062');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('273', 'planeta natal  Mestre Yoda', '1', 'SYSTEM', '1063');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('274', 'planeta natal  Mestre Yoda', '1', 'SYSTEM', '1064');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('275', 'frase marcante  Mestre Yoda', '1', 'SYSTEM', '1065');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('276', 'filme aprece Mestre Yoda', '1', 'SYSTEM', '1066');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('277', 'epidodio aparece Mestre Yoda', '1', 'SYSTEM', '1067');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('278', 'raça Mestre Yoda', '1', 'SYSTEM', '1068');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('279', 'especie Mestre Yoda', '1', 'SYSTEM', '1069');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('280', 'ator interpretou Mestre Yoda', '1', 'SYSTEM', '1070');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('281', 'Mestre Yoda  interpretado  quem', '1', 'SYSTEM', '1071');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('282', 'O Yoda  sabre   cor', '1', 'SYSTEM', '1072');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('283', 'cor  sabre  Yoda', '1', 'SYSTEM', '1073');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('284', 'cor  sabre  luz  Yoda', '1', 'SYSTEM', '1074');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('285', 'arma  Yoda', '1', 'SYSTEM', '1075');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('286', 'Você sabe   arma  escolha  Yoda', '1', 'SYSTEM', '1076');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('287', 'o Yoda usa sabre', '1', 'SYSTEM', '1077');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('288', 'idade Yoda tem', '1', 'SYSTEM', '1078');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('289', 'idade Yoda', '1', 'SYSTEM', '1079');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('290', 'anos  Yoda', '1', 'SYSTEM', '1080');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('331', 'planeta natal  princesa leia', '1', '::1', '992');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('334', 'cor olhos humano', '1', '::1', '1112');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('340', 'esposa  Darth Vader', '1', '::1', '1114');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('341', 'esposa  Darth Vader', '1', '::1', '1115');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('342', 'O Imperador Palpatine  sabre   cor', '1', 'SYSTEM', '1116');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('343', 'cor  sabre  Imperador Palpatine', '1', 'SYSTEM', '1117');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('344', 'cor  sabre  luz  Imperador Palpatine', '1', 'SYSTEM', '1118');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('345', 'arma  Imperador Palpatine', '1', 'SYSTEM', '1119');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('346', 'Você sabe   arma  escolha  Imperador Palpatine', '1', 'SYSTEM', '1120');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('347', 'o Imperador Palpatine usa sabre', '1', 'SYSTEM', '1121');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('348', 'idade Imperador Palpatine tem', '1', 'SYSTEM', '1122');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('349', 'idade Imperador Palpatine', '1', 'SYSTEM', '1123');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('350', 'anos  Imperador Palpatine', '1', 'SYSTEM', '1124');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('351', 'primeiro aprendiz  Imperador Palpatine', '1', 'SYSTEM', '1125');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('352', 'Com   anos morreu Imperador Palpatine', '1', 'SYSTEM', '1126');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('353', 'morreu Imperador Palpatine', '1', 'SYSTEM', '1127');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('354', 'Com   anos morreu Imperador Palpatine', '1', 'SYSTEM', '1128');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('355', 'matou Imperador Palpatine', '1', 'SYSTEM', '1129');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('356', 'O  acha  Imperador Palpatine', '1', 'SYSTEM', '1130');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('357', 'o    Imperador Palpatine', '1', 'SYSTEM', '1131');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('358', 'me fale sobre Imperador Palpatine', '1', 'SYSTEM', '1132');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('359', 'Imperador Palpatine', '1', 'SYSTEM', '1133');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('360', 'Imperador Palpatine', '1', 'SYSTEM', '1134');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('361', 'nome  mãe  Imperador Palpatine', '1', 'SYSTEM', '1135');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('362', 'parentes  Imperador Palpatine', '1', 'SYSTEM', '1136');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('363', 'pai  Imperador Palpatine', '1', 'SYSTEM', '1137');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('364', 'treinado  Imperador Palpatine', '1', 'SYSTEM', '1138');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('365', 'Imperador Palpatine  treinado  quem', '1', 'SYSTEM', '1139');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('366', 'treinou Imperador Palpatine', '1', 'SYSTEM', '1140');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('367', 'planeta natal  Imperador Palpatine', '1', 'SYSTEM', '1141');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('368', 'planeta natal  Imperador Palpatine', '1', 'SYSTEM', '1142');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('369', 'frase marcante  Imperador Palpatine', '1', 'SYSTEM', '1143');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('370', 'filme aprece Imperador Palpatine', '1', 'SYSTEM', '1144');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('371', 'epidodio aparece Imperador Palpatine', '1', 'SYSTEM', '1145');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('372', 'raça Imperador Palpatine', '1', 'SYSTEM', '1146');

CREATE TABLE `log_conversa` (
  `id_log_conversa` int(11) NOT NULL AUTO_INCREMENT,
  `conversa` longtext NOT NULL,
  `ip` varchar(45) NOT NULL,
  `data_inc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_fim` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log_conversa`),
  FULLTEXT KEY `conversa` (`conversa`)
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
) ENGINE=InnoDB AUTO_INCREMENT=1148 DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

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
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('50', 'Oi', '1', 'SYSTEM', '', '3');
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
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('62', 'Quem te criou', '1', 'SYSTEM', '', '11');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('63', 'Qual nome deles', '1', 'SYSTEM', '', '31');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('64', 'Quantos anos você tem', '1', 'SYSTEM', '', '32');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('65', 'Voce é homem ou mulher', '1', 'SYSTEM', '', '33');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('66', 'Qual seu filme favorito', '1', 'SYSTEM', '', '34');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('67', 'Você gosta de Star Wars', '1', 'SYSTEM', '', '35');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('68', 'Você conhece twd', '1', 'SYSTEM', '', '36');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('69', 'Não, o que é isso', '1', 'SYSTEM', '', '37');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('70', 'Olá, quem é vocÊ', '1', 'SYSTEM', '', '38');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('71', 'Quem é você', '1', 'SYSTEM', '', '20');
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
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('89', 'o que foi a Batalha de Yavin', '1', 'SYSTEM', '', '57');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('90', 'O Darth Vader tem sabre de qual cor', '1', 'SYSTEM', '', '58');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('91', 'qual a cor do sabre do Darth Vader', '1', 'SYSTEM', '', '59');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('92', 'Qual a cor do sabre de luz de Darth Vader', '1', 'SYSTEM', '', '60');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('93', 'qual é a arma do Darth Vader', '1', 'SYSTEM', '', '61');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('94', 'Você sabe qual a arma de escolha de Darth Vader', '1', 'SYSTEM', '', '62');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('95', 'o Darth Vader usa sabre', '1', 'SYSTEM', '', '63');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('96', 'qual a idade Darth Vader tem', '1', 'SYSTEM', '', '64');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('97', 'qual a idade Darth Vader', '1', 'SYSTEM', '', '65');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('98', 'quantos anos tem Darth Vader', '1', 'SYSTEM', '', '66');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('99', 'Quem foi o primeiro aprendiz de Darth Vader', '1', 'SYSTEM', '', '67');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('100', 'Com quantos anos morreu Darth Vader', '1', 'SYSTEM', '', '68');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('101', 'quando morreu Darth Vader', '1', 'SYSTEM', '', '69');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('102', 'Com quantos anos morreu Darth Vader', '1', 'SYSTEM', '', '70');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('103', 'quem foi que matou Darth Vader', '1', 'SYSTEM', '', '71');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('104', 'O que acha do Darth Vader', '1', 'SYSTEM', '', '72');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('105', 'o que é o Darth Vader', '1', 'SYSTEM', '', '73');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('106', 'como morreu Darth Vader', '1', 'System', '', '67');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('107', 'me fale sobre Darth Vader', '1', 'SYSTEM', '', '74');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('108', 'quem foi Darth Vader', '1', 'SYSTEM', '', '75');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('109', 'quem é Darth Vader', '1', 'SYSTEM', '', '76');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('110', 'Qual o nome da mãe de Darth Vader', '1', 'SYSTEM', '', '77');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('111', 'Quem são os parentes do Darth Vader', '1', 'SYSTEM', '', '78');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('112', 'Quem é o pai do Darth Vader', '1', 'SYSTEM', '', '79');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('113', 'Quem não foi treinado por Darth Vader', '1', 'SYSTEM', '', '67');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('114', 'Darth Vader foi treinado por quem', '1', 'SYSTEM', '', '81');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('115', 'quem treinou Darth Vader', '1', 'SYSTEM', '', '82');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('116', 'aprendiz  Darth Vade', '1', '::1', '', '67');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('117', 'mestre Darth Vader', '1', '::1', '', '80');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('118', 'mestre Darth Vader', '1', '::1', '', '80');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('119', 'Qual é o planeta natal de Darth Vader', '1', 'SYSTEM', '', '83');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('120', 'Qual o planeta natal do Darth Vader', '1', 'SYSTEM', '', '84');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('121', 'qual a frase marcante de Darth Vader', '1', 'SYSTEM', '', '85');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('122', 'qual filme aprece Darth Vader', '1', 'SYSTEM', '', '86');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('123', 'qual epidodio aparece Darth Vader', '1', 'SYSTEM', '', '87');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('124', 'qual a raça Darth Vader', '1', 'SYSTEM', '', '88');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('125', 'qual a especie Darth Vader', '1', 'SYSTEM', '', '89');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('126', 'Qual ator interpretou Darth Vader', '1', 'SYSTEM', '', '90');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('127', 'Darth Vader foi interpretado por quem', '1', 'SYSTEM', '', '91');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('128', 'O Anakin Skywalker tem sabre de qual cor', '1', 'SYSTEM', '', '92');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('129', 'Qual a cor do sabre de luz de Anakin Skywalker', '1', 'SYSTEM', '', '93');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('130', 'qual é a arma do Anakin Skywalker', '1', 'SYSTEM', '', '94');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('131', 'Você sabe qual a arma de escolha de Anakin Skywalker', '1', 'SYSTEM', '', '95');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('132', 'o Anakin Skywalker usa sabre', '1', 'SYSTEM', '', '96');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('133', 'qual a idade Anakin Skywalker tem', '1', 'SYSTEM', '', '97');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('134', 'qual a idade Anakin Skywalker', '1', 'SYSTEM', '', '98');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('135', 'quantos anos tem Anakin Skywalker', '1', 'SYSTEM', '', '99');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('136', 'Quem foi o primeiro aprendiz de Anakin Skywalker', '1', 'SYSTEM', '', '100');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('137', 'Com quantos anos morreu Anakin Skywalker', '1', 'SYSTEM', '', '101');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('138', 'quando morreu Anakin Skywalker', '1', 'SYSTEM', '', '102');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('139', 'Com quantos anos morreu Anakin Skywalker', '1', 'SYSTEM', '', '103');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('140', 'quem foi que matou Anakin Skywalker', '1', 'SYSTEM', '', '104');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('141', 'O que acha do Anakin Skywalker', '1', 'SYSTEM', '', '105');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('142', 'o que é o Anakin Skywalker', '1', 'SYSTEM', '', '106');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('143', 'me fale sobre Anakin Skywalker', '1', 'SYSTEM', '', '107');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('144', 'quem foi Anakin Skywalker', '1', 'SYSTEM', '', '108');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('145', 'quem é Anakin Skywalker', '1', 'SYSTEM', '', '109');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('146', 'Qual o nome da mãe de Anakin Skywalker', '1', 'SYSTEM', '', '110');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('147', 'Quem são os parentes do Anakin Skywalker', '1', 'SYSTEM', '', '111');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('148', 'Quem é o pai do Anakin Skywalker', '1', 'SYSTEM', '', '112');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('149', 'Quem não foi treinado por Anakin Skywalker', '1', 'SYSTEM', '', '113');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('150', 'Anakin Skywalker foi treinado por quem', '1', 'SYSTEM', '', '114');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('151', 'quem treinou Anakin Skywalker', '1', 'SYSTEM', '', '115');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('152', 'Qual é o planeta natal de Anakin Skywalker', '1', 'SYSTEM', '', '116');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('153', 'Qual o planeta natal do Anakin Skywalker', '1', 'SYSTEM', '', '117');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('154', 'qual a frase marcante de Anakin Skywalker', '1', 'SYSTEM', '', '118');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('155', 'qual filme aprece Anakin Skywalker', '1', 'SYSTEM', '', '119');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('156', 'qual epidodio aparece Anakin Skywalker', '1', 'SYSTEM', '', '120');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('157', 'qual a raça Anakin Skywalker', '1', 'SYSTEM', '', '121');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('158', 'qual a especie Anakin Skywalker', '1', 'SYSTEM', '', '122');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('159', 'Qual ator interpretou Anakin Skywalker', '1', 'SYSTEM', '', '123');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('160', 'Anakin Skywalker foi interpretado por quem', '1', 'SYSTEM', '', '124');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('161', 'o que é humano', '1', '::1', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('940', 'mestre  Anakin Skywalker', '1', '177.79.77.98', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('941', 'O ObiWan Kenobi tem sabre de qual cor', '1', 'SYSTEM', '', '125');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('942', 'qual a cor do sabre do ObiWan Kenobi', '1', 'SYSTEM', '', '126');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('943', 'Qual a cor do sabre de luz de ObiWan Kenobi', '1', 'SYSTEM', '', '127');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('944', 'qual é a arma do ObiWan Kenobi', '1', 'SYSTEM', '', '128');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('945', 'Você sabe qual a arma de escolha de ObiWan Kenobi', '1', 'SYSTEM', '', '129');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('946', 'o ObiWan Kenobi usa sabre', '1', 'SYSTEM', '', '130');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('947', 'qual a idade ObiWan Kenobi tem', '1', 'SYSTEM', '', '131');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('948', 'qual a idade ObiWan Kenobi', '1', 'SYSTEM', '', '132');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('949', 'quantos anos tem ObiWan Kenobi', '1', 'SYSTEM', '', '133');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('950', 'Quem foi o primeiro aprendiz de ObiWan Kenobi', '1', 'SYSTEM', '', '134');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('951', 'Com quantos anos morreu ObiWan Kenobi', '1', 'SYSTEM', '', '135');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('952', 'quando morreu ObiWan Kenobi', '1', 'SYSTEM', '', '136');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('953', 'Com quantos anos morreu ObiWan Kenobi', '1', 'SYSTEM', '', '137');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('954', 'quem foi que matou ObiWan Kenobi', '1', 'SYSTEM', '', '138');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('955', 'O que acha do ObiWan Kenobi', '0', 'SYSTEM', '', '139');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('956', 'o que é o ObiWan Kenobi', '1', 'SYSTEM', '', '140');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('957', 'me fale sobre ObiWan Kenobi', '1', 'SYSTEM', '', '141');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('958', 'quem foi ObiWan Kenobi', '1', 'SYSTEM', '', '142');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('959', 'quem é ObiWan Kenobi', '1', 'SYSTEM', '', '143');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('960', 'Qual o nome da mãe de ObiWan Kenobi', '1', 'SYSTEM', '', '144');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('961', 'Quem são os parentes do ObiWan Kenobi', '1', 'SYSTEM', '', '145');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('962', 'Quem é o pai do ObiWan Kenobi', '1', 'SYSTEM', '', '146');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('963', 'Quem não foi treinado por ObiWan Kenobi', '1', 'SYSTEM', '', '147');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('964', 'ObiWan Kenobi foi treinado por quem', '1', 'SYSTEM', '', '148');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('965', 'quem treinou ObiWan Kenobi', '1', 'SYSTEM', '', '149');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('966', 'Qual é o planeta natal de ObiWan Kenobi', '1', 'SYSTEM', '', '150');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('967', 'Qual o planeta natal do ObiWan Kenobi', '1', 'SYSTEM', '', '151');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('968', 'qual a frase marcante de ObiWan Kenobi', '1', 'SYSTEM', '', '152');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('969', 'qual filme aprece ObiWan Kenobi', '1', 'SYSTEM', '', '153');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('970', 'qual epidodio aparece ObiWan Kenobi', '1', 'SYSTEM', '', '154');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('971', 'qual a raça ObiWan Kenobi', '1', 'SYSTEM', '', '155');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('972', 'qual a especie ObiWan Kenobi', '1', 'SYSTEM', '', '156');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('973', 'Qual ator interpretou ObiWan Kenobi', '1', 'SYSTEM', '', '157');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('974', 'ObiWan Kenobi foi interpretado por quem', '1', 'SYSTEM', '', '158');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('975', 'qual é a arma do Princesa Leia Organa', '1', 'SYSTEM', '', '159');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('976', 'Você sabe qual a arma de escolha de Princesa Leia Organa', '1', 'SYSTEM', '', '160');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('977', 'o Princesa Leia Organa usa sabre', '1', 'SYSTEM', '', '161');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('978', 'qual a idade Princesa Leia Organa tem', '1', 'SYSTEM', '', '162');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('979', 'qual a idade Princesa Leia Organa', '1', 'SYSTEM', '', '163');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('980', 'quantos anos tem Princesa Leia Organa', '1', 'SYSTEM', '', '164');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('981', 'Com quantos anos morreu Princesa Leia Organa', '1', 'SYSTEM', '', '165');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('982', 'quando morreu Princesa Leia Organa', '1', 'SYSTEM', '', '166');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('983', 'Com quantos anos morreu Princesa Leia Organa', '1', 'SYSTEM', '', '167');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('984', 'quem foi que matou Princesa Leia Organa', '1', 'SYSTEM', '', '168');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('985', 'o que é o Princesa Leia Organa', '1', 'SYSTEM', '', '169');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('986', 'me fale sobre Princesa Leia Organa', '1', 'SYSTEM', '', '170');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('987', 'quem foi Princesa Leia Organa', '1', 'SYSTEM', '', '171');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('988', 'quem é Princesa Leia Organa', '1', 'SYSTEM', '', '172');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('989', 'Qual o nome da mãe de Princesa Leia Organa', '1', 'SYSTEM', '', '173');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('990', 'Quem são os parentes do Princesa Leia Organa', '1', 'SYSTEM', '', '174');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('991', 'Quem é o pai do Princesa Leia Organa', '1', 'SYSTEM', '', '175');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('992', 'Qual é o planeta natal de Princesa Leia Organa', '1', 'SYSTEM', '', '176');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('993', 'Qual o planeta natal do Princesa Leia Organa', '1', 'SYSTEM', '', '177');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('994', 'qual a frase marcante de Princesa Leia Organa', '1', 'SYSTEM', '', '178');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('995', 'qual filme aprece Princesa Leia Organa', '1', 'SYSTEM', '', '179');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('996', 'qual episodio aparece Princesa Leia Organa', '1', 'SYSTEM', '', '180');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('997', 'qual a raça Princesa Leia Organa', '1', 'SYSTEM', '', '181');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('998', 'qual a especie Princesa Leia Organa', '1', 'SYSTEM', '', '182');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('999', 'Qual ator interpretou Princesa Leia Organa', '1', 'SYSTEM', '', '183');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1000', 'Princesa Leia Organa foi interpretado por quem', '1', 'SYSTEM', '', '184');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1001', 'Anakin Skywalker Skywalker', '1', '::1', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1002', 'o   jedi', '1', '::1', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1003', 'jedi', '0', '::1', '', '139');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1004', 'jedi', '0', '::1', '', '139');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1005', 'O Luke Skywalker tem sabre de qual cor', '1', 'SYSTEM', '', '187');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1006', 'qual a cor do sabre do Luke Skywalker', '1', 'SYSTEM', '', '188');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1007', 'Qual a cor do sabre de luz de Luke Skywalker', '1', 'SYSTEM', '', '189');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1008', 'qual é a arma do Luke Skywalker', '1', 'SYSTEM', '', '190');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1009', 'Você sabe qual a arma de escolha de Luke Skywalker', '1', 'SYSTEM', '', '191');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1010', 'o Luke Skywalker usa sabre', '1', 'SYSTEM', '', '192');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1011', 'qual a idade Luke Skywalker tem', '1', 'SYSTEM', '', '193');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1012', 'qual a idade Luke Skywalker', '1', 'SYSTEM', '', '194');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1013', 'quantos anos tem Luke Skywalker', '1', 'SYSTEM', '', '195');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1014', 'Quem foi o primeiro aprendiz de Luke Skywalker', '1', 'SYSTEM', '', '196');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1015', 'Com quantos anos morreu Luke Skywalker', '1', 'SYSTEM', '', '197');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1016', 'quando morreu Luke Skywalker', '1', 'SYSTEM', '', '198');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1017', 'Com quantos anos morreu Luke Skywalker', '1', 'SYSTEM', '', '199');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1018', 'quem foi que matou Luke Skywalker', '1', 'SYSTEM', '', '200');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1019', 'O que acha do Luke Skywalker', '0', 'SYSTEM', '', '201');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1020', 'o que é o Luke Skywalker', '1', 'SYSTEM', '', '202');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1021', 'me fale sobre Luke Skywalker', '1', 'SYSTEM', '', '203');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1022', 'quem foi Luke Skywalker', '1', 'SYSTEM', '', '204');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1023', 'quem é Luke Skywalker', '1', 'SYSTEM', '', '205');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1024', 'Qual o nome da mãe de Luke Skywalker', '1', 'SYSTEM', '', '206');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1025', 'Quem são os parentes do Luke Skywalker', '1', 'SYSTEM', '', '207');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1026', 'Quem é o pai do Luke Skywalker', '1', 'SYSTEM', '', '208');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1027', 'Quem não foi treinado por Luke Skywalker', '1', 'SYSTEM', '', '209');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1028', 'Luke Skywalker foi treinado por quem', '1', 'SYSTEM', '', '210');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1029', 'quem treinou Luke Skywalker', '1', 'SYSTEM', '', '211');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1030', 'Qual é o planeta natal de Luke Skywalker', '1', 'SYSTEM', '', '212');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1031', 'Qual o planeta natal do Luke Skywalker', '1', 'SYSTEM', '', '213');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1032', 'qual a frase marcante de Luke Skywalker', '1', 'SYSTEM', '', '214');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1033', 'qual filme aprece Luke Skywalker', '1', 'SYSTEM', '', '215');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1034', 'qual epidodio aparece Luke Skywalker', '1', 'SYSTEM', '', '216');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1035', 'qual a raça Luke Skywalker', '1', 'SYSTEM', '', '217');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1036', 'qual a especie Luke Skywalker', '1', 'SYSTEM', '', '218');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1037', 'Qual ator interpretou Luke Skywalker', '1', 'SYSTEM', '', '219');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1038', 'O Mestre Yoda tem sabre de qual cor', '1', 'SYSTEM', '', '220');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1039', 'qual a cor do sabre do Mestre Yoda', '1', 'SYSTEM', '', '221');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1040', 'Qual a cor do sabre de luz de Mestre Yoda', '1', 'SYSTEM', '', '222');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1041', 'qual é a arma do Mestre Yoda', '1', 'SYSTEM', '', '223');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1042', 'Você sabe qual a arma de escolha de Mestre Yoda', '1', 'SYSTEM', '', '224');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1043', 'o Mestre Yoda usa sabre', '1', 'SYSTEM', '', '225');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1044', 'qual a idade Mestre Yoda tem', '1', 'SYSTEM', '', '226');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1045', 'qual a idade Mestre Yoda', '1', 'SYSTEM', '', '227');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1046', 'quantos anos tem Mestre Yoda', '1', 'SYSTEM', '', '228');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1047', 'Quem foi o primeiro aprendiz de Mestre Yoda', '1', 'SYSTEM', '', '229');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1048', 'Com quantos anos morreu Mestre Yoda', '1', 'SYSTEM', '', '230');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1049', 'quando morreu Mestre Yoda', '1', 'SYSTEM', '', '231');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1050', 'Com quantos anos morreu Mestre Yoda', '1', 'SYSTEM', '', '232');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1051', 'quem foi que matou Mestre Yoda', '1', 'SYSTEM', '', '233');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1052', 'O que acha do Mestre Yoda', '1', 'SYSTEM', '', '234');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1053', 'o que é o Mestre Yoda', '1', 'SYSTEM', '', '235');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1054', 'me fale sobre Mestre Yoda', '1', 'SYSTEM', '', '236');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1055', 'quem foi Mestre Yoda', '1', 'SYSTEM', '', '237');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1056', 'quem é Mestre Yoda', '1', 'SYSTEM', '', '238');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1057', 'Qual o nome da mãe de Mestre Yoda', '1', 'SYSTEM', '', '239');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1058', 'Quem são os parentes do Mestre Yoda', '1', 'SYSTEM', '', '240');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1059', 'Quem é o pai do Mestre Yoda', '1', 'SYSTEM', '', '241');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1060', 'Quem não foi treinado por Mestre Yoda', '1', 'SYSTEM', '', '242');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1061', 'Mestre Yoda foi treinado por quem', '1', 'SYSTEM', '', '243');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1062', 'quem treinou Mestre Yoda', '1', 'SYSTEM', '', '244');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1063', 'Qual é o planeta natal de Mestre Yoda', '1', 'SYSTEM', '', '245');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1064', 'Qual o planeta natal do Mestre Yoda', '1', 'SYSTEM', '', '246');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1065', 'qual a frase marcante de Mestre Yoda', '1', 'SYSTEM', '', '247');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1066', 'qual filme aprece Mestre Yoda', '1', 'SYSTEM', '', '248');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1067', 'qual epidodio aparece Mestre Yoda', '1', 'SYSTEM', '', '249');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1068', 'qual a raça Mestre Yoda', '1', 'SYSTEM', '', '250');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1069', 'qual a especie Mestre Yoda', '1', 'SYSTEM', '', '251');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1070', 'Qual ator interpretou Mestre Yoda', '1', 'SYSTEM', '', '252');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1071', 'Mestre Yoda foi interpretado por quem', '1', 'SYSTEM', '', '253');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1072', 'O Yoda tem sabre de qual cor', '1', 'SYSTEM', '', '254');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1073', 'qual a cor do sabre do Yoda', '1', 'SYSTEM', '', '255');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1074', 'Qual a cor do sabre de luz de Yoda', '1', 'SYSTEM', '', '256');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1075', 'qual é a arma do Yoda', '1', 'SYSTEM', '', '257');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1076', 'Você sabe qual a arma de escolha de Yoda', '1', 'SYSTEM', '', '258');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1077', 'o Yoda usa sabre', '1', 'SYSTEM', '', '259');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1078', 'qual a idade Yoda tem', '1', 'SYSTEM', '', '260');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1079', 'qual a idade Yoda', '1', 'SYSTEM', '', '261');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1080', 'quantos anos tem Yoda', '1', 'SYSTEM', '', '262');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1081', 'Quem foi o primeiro aprendiz de Yoda', '1', 'SYSTEM', '', '263');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1112', 'cor olhos humano', '1', '::1', '', '270');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1113', 'cor olhos humano', '1', '::1', '', '271');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1114', 'qual é a esposa de Darth Vader', '1', '::1', '', '272');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1115', 'qual é a esposa de Darth Vader', '1', '::1', '', '273');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1116', 'O Imperador Palpatine tem sabre de qual cor', '1', 'SYSTEM', '', '274');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1117', 'qual a cor do sabre do Imperador Palpatine', '1', 'SYSTEM', '', '275');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1118', 'Qual a cor do sabre de luz de Imperador Palpatine', '1', 'SYSTEM', '', '276');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1119', 'qual é a arma do Imperador Palpatine', '1', 'SYSTEM', '', '277');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1120', 'Você sabe qual a arma de escolha de Imperador Palpatine', '1', 'SYSTEM', '', '278');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1121', 'o Imperador Palpatine usa sabre', '1', 'SYSTEM', '', '279');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1122', 'qual a idade Imperador Palpatine tem', '1', 'SYSTEM', '', '280');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1123', 'qual a idade Imperador Palpatine', '1', 'SYSTEM', '', '281');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1124', 'quantos anos tem Imperador Palpatine', '1', 'SYSTEM', '', '282');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1125', 'Quem foi o primeiro aprendiz de Imperador Palpatine', '1', 'SYSTEM', '', '283');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1126', 'Com quantos anos morreu Imperador Palpatine', '1', 'SYSTEM', '', '284');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1127', 'quando morreu Imperador Palpatine', '1', 'SYSTEM', '', '285');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1128', 'Com quantos anos morreu Imperador Palpatine', '1', 'SYSTEM', '', '286');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1129', 'quem foi que matou Imperador Palpatine', '1', 'SYSTEM', '', '287');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1130', 'O que acha do Imperador Palpatine', '1', 'SYSTEM', '', '288');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1131', 'o que é o Imperador Palpatine', '1', 'SYSTEM', '', '289');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1132', 'me fale sobre Imperador Palpatine', '1', 'SYSTEM', '', '290');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1133', 'quem foi Imperador Palpatine', '1', 'SYSTEM', '', '291');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1134', 'quem é Imperador Palpatine', '1', 'SYSTEM', '', '292');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1135', 'Qual o nome da mãe de Imperador Palpatine', '1', 'SYSTEM', '', '293');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1136', 'Quem são os parentes do Imperador Palpatine', '1', 'SYSTEM', '', '294');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1137', 'Quem é o pai do Imperador Palpatine', '1', 'SYSTEM', '', '295');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1138', 'Quem não foi treinado por Imperador Palpatine', '1', 'SYSTEM', '', '296');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1139', 'Imperador Palpatine foi treinado por quem', '1', 'SYSTEM', '', '297');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1140', 'quem treinou Imperador Palpatine', '1', 'SYSTEM', '', '298');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1141', 'Qual é o planeta natal de Imperador Palpatine', '1', 'SYSTEM', '', '299');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1142', 'Qual o planeta natal do Imperador Palpatine', '1', 'SYSTEM', '', '300');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1143', 'qual a frase marcante de Imperador Palpatine', '1', 'SYSTEM', '', '301');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1144', 'qual filme aprece Imperador Palpatine', '1', 'SYSTEM', '', '302');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1145', 'qual epidodio aparece Imperador Palpatine', '1', 'SYSTEM', '', '303');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1146', 'qual a raça Imperador Palpatine', '1', 'SYSTEM', '', '304');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1147', 'qual a especie Imperador Palpatine', '1', 'SYSTEM', '', '305');

CREATE TABLE `personagem` (
  `id_personagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text CHARACTER SET utf8,
  PRIMARY KEY (`id_personagem`),
  FULLTEXT KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

insert into personagem(id_personagem, nome) values('3', 'Força');
insert into personagem(id_personagem, nome) values('4', 'Humano');
insert into personagem(id_personagem, nome) values('5', 'Darth Vader');

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
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=latin1;

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
insert into resposta(id, resposta) values('31', 'QUAL NOME DO QUE?');
insert into resposta(id, resposta) values('32', 'Bem');
insert into resposta(id, resposta) values('33', 'Eu sou Holocron, nem homem nem mulher');
insert into resposta(id, resposta) values('34', 'Star Wars Episódio IV Uma Nova Esperança');
insert into resposta(id, resposta) values('35', 'SIIIIIM, eu gosto muito de Star Wars, meus filmes favoritos são de Star Wars');
insert into resposta(id, resposta) values('36', 'não');
insert into resposta(id, resposta) values('37', 'o que é o que?');
insert into resposta(id, resposta) values('38', 'Olá, eu sou Holocron');
insert into resposta(id, resposta) values('40', 'NÃO SEI');
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
insert into resposta(id, resposta) values('53', 'A Ordem 66 foi um evento no final das Guerras Clônicas no qual soldados clone do Grande Exército da República se voltaram contra os Generais Jedi e os exterminaram, ocasionando a destruição da Ordem Jedi. O evento foi acionado pelo Protocolo Clone 66, uma ordem implantada nos clones pelos Lordes Sith e cientistas Kaminoanos que criaram o exército clone. O protocolo fazia com que os soldados clone violentamente atacassem os Jedi e os enxergassem como ameaças, e era controlado por um bio-chip implantado nos cérebros dos clones durante sua criação');
insert into resposta(id, resposta) values('54', 'Em Star Wars Episódio II, Ataque dos Clones, Obi-Wan Kenobi descobre que o mestre Jedi Sifo-Dyas odernou a criação de um exército de clones dez anos antes. Jango Fett é a fonte de DNA do exército');
insert into resposta(id, resposta) values('55', '~/~/~/~/');
insert into resposta(id, resposta) values('56', 'Medindo 76 centímetros de altura, Yoda é um membro masculino de uma raça cujo nome nunca foi revelado. Ele foi o Grão Mestre da Ordem Jedi durante as Guerras Clônicas, um dos membros mais importantes do Alto Conselho Jedi nos últimos dias da República Galáctica, e um dos mais sábios e poderosos Jedi de todos os tempos. Tendo vivido por muito tempo (veio a falecer com aprox. 900 anos de idade), ele tinha excepcionais habilidades no combate de sabre de luz, onde usava as técnicas acrobáticas da Forma IV, além de um fenomenal conhecimento sobre a Força. De 300 ABY até 19 ABY ele treinou quase todos os Jedi da Galáxia ? como Grande Mestre, ele instruia todos os Younglings do Templo Jedi antes deles serem adotados por um mestre, tendo Anakin Skywalker sido uma exceção quanto a isso.');
insert into resposta(id, resposta) values('57', 'A Batalha de Yavin foi uma das principais batalhas da Guerra Civil Galáctica que resultou na destruição da Primeira Estrela da Morte e foi uma das primeiras grandes vitórias da Rebelião.Os agentes da Aliança Rebelde roubaram planos detalhados e especificações de design da estação de batalha imperial conhecida como a Estrela da Morte e os transmitiu à frota da Aliança Rebelde. Forças imperiais sob o comando de Darth Vader logo capturaram a Princesa Leia e a tripulação do Tantive IV.');
insert into resposta(id, resposta) values('58', 'o Darth Vader usa um Sabre de Luz de cor vermelha');
insert into resposta(id, resposta) values('59', 'o Darth Vader usa um Sabre de Luz de cor vermelha');
insert into resposta(id, resposta) values('60', 'o Darth Vader usa um Sabre de Luz de cor vermelha');
insert into resposta(id, resposta) values('61', 'o Darth Vader usa um Sabre de Luz de cor vermelha');
insert into resposta(id, resposta) values('62', 'o Darth Vader usa um Sabre de Luz de cor vermelha');
insert into resposta(id, resposta) values('63', 'o Darth Vader usa um Sabre de Luz de cor vermelha');
insert into resposta(id, resposta) values('64', 'Darth Vader nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade. ');
insert into resposta(id, resposta) values('65', 'Darth Vader nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade. ');
insert into resposta(id, resposta) values('66', 'Darth Vader nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade. ');
insert into resposta(id, resposta) values('67', 'como jedi teve como aprendiz Ahsoka Tano e como o Sith Darth Vader teve como aprendiz O Grande Inquisidor');
insert into resposta(id, resposta) values('68', 'Darth Vader nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade. ');
insert into resposta(id, resposta) values('69', 'Darth Vader nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade. ');
insert into resposta(id, resposta) values('70', 'Darth Vader nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade. ');
insert into resposta(id, resposta) values('71', 'Percebendo que ele estava se tornando o que ele buscava destruir, Skywalker arremessou longe seu sabre de luz e se declarou um Jedi. Enfurecido, Sidious lançou relâmpagos da Força contra Luke. Vader agarrou o Imperador com o que restava de seus braços e ergueu seu mestre, levando-o para o vão do reator da estação. A partir desse momento, Darth Vader deixou de existir e Anakin Skywalker, Cavaleiro Jedi, ressurgiu. Enfurecido com a traição de seu aprendiz, Sidious lançou um ataque ainda mais poderoso contra Anakin, Sidious apenas pensava em causar a seu agora ex-aprendiz ainda mais dor, embora ele pudesse ter usado seus poderes para se salvar. Com o Imperador danificando severa e permanentemente sua armadura e seu suporte à vida, Anakin jogou seu ex-mestre no chão. Ao matar Darth Sidious e terminar seu reino, o Jedi redimido cumpriu seu destino de restaurar o equilíbrio à Força');
insert into resposta(id, resposta) values('72', 'Eu acho ele um incrivel Jedi e Sith, ele é um dos meus personagens favoritos.');
insert into resposta(id, resposta) values('73', 'Uma das figuras centrais da saga, Anakin é um dos mais lendários entre os cavaleiros Jedi. Ele serviu a República Galáctica, mas acabou tornando-se o lorde negro Sith conhecido como Darth Vader. Teve uma vida sofrida como escravo em Tatooine, mas foi libertado pelo Jedi Qui-Gon Jinn, que o fez ingressar na ordem Jedi. Mais tarde, passou para o Lado Negro da Força como aprendiz de Darth Sidious.');
insert into resposta(id, resposta) values('74', 'Darth Vader, nascido como Anakin Skywalker, é o protagonista da trilogia prequela e antagonista da trilogia original da série de filmes Star Wars (Guerra nas Estrelas), tendo participado de seis episódios (A Ameaça Fantasma, Ataque dos Clones, A Vingança dos Sith, Uma Nova Esperança, O Império Contra-Ataca e O Retorno de Jedi) e também participou do spin-off Rogue One. Suas principais características são a armadura preta e a ruidosa respiração mecânica. É constantemente citado na cultura pop como um dos personagens mais icônicos de todos os tempos. É um dos poucos personagens da saga que estiveram presentes e tiveram ao menos uma menção em todos os 8 episódios lançados até hoje.');
insert into resposta(id, resposta) values('75', 'Darth Vader, nascido como Anakin Skywalker, é o protagonista da trilogia prequela e antagonista da trilogia original da série de filmes Star Wars (Guerra nas Estrelas), tendo participado de seis episódios (A Ameaça Fantasma, Ataque dos Clones, A Vingança dos Sith, Uma Nova Esperança, O Império Contra-Ataca e O Retorno de Jedi) e também participou do spin-off Rogue One. Suas principais características são a armadura preta e a ruidosa respiração mecânica. É constantemente citado na cultura pop como um dos personagens mais icônicos de todos os tempos. É um dos poucos personagens da saga que estiveram presentes e tiveram ao menos uma menção em todos os 8 episódios lançados até hoje.');
insert into resposta(id, resposta) values('76', 'Darth Vader, nascido como Anakin Skywalker, é o protagonista da trilogia prequela e antagonista da trilogia original da série de filmes Star Wars (Guerra nas Estrelas), tendo participado de seis episódios (A Ameaça Fantasma, Ataque dos Clones, A Vingança dos Sith, Uma Nova Esperança, O Império Contra-Ataca e O Retorno de Jedi) e também participou do spin-off Rogue One. Suas principais características são a armadura preta e a ruidosa respiração mecânica. É constantemente citado na cultura pop como um dos personagens mais icônicos de todos os tempos. É um dos poucos personagens da saga que estiveram presentes e tiveram ao menos uma menção em todos os 8 episódios lançados até hoje.');
insert into resposta(id, resposta) values('77', 'A mãe de Anakin é a Shimi Skywalker, já falecida que ocorreu devido à captura pelo Povo da Areia, o que influenciou diretamente na transição de Anakin Skywalker para virar Darth Vader.');
insert into resposta(id, resposta) values('78', 'A mãe de Anakin é a Shimi Skywalker, já falecida que ocorreu devido à captura pelo Povo da Areia, o que influenciou diretamente na transição de Anakin Skywalker para virar Darth Vader. Padmé Amidala é a esposa já falecida, tendo 2 filhos Leia Organa e Luke Skywalker. Han Solo é seu genro, marido de Leia onde teve um filho chamado Ben Solo. E Owen Lars é seu meio-Irmão falecido.');
insert into resposta(id, resposta) values('79', 'No Episódio I Shmi Skywalker, a mãe do pequeno Anakin, conta ao mestre Jedi Qui-Gon Jinn que ela engravidou sem ter tido relação com ninguém. Ou seja, o futuro Darth Vader não tinha pai.');
insert into resposta(id, resposta) values('80', 'Qui-Gon Jinn foi o seu mestre não oficialmente, Obi-Wan Kenobi foi mestre Jedi e por fim quando se tornou Sith seu mestre foi o Palpatine conhecido por Darth Sidious');
insert into resposta(id, resposta) values('81', 'Qui-Gon Jinn foi o seu mestre não oficialmente, Obi-Wan Kenobi foi mestre Jedi e por fim quando se tornou Sith seu mestre foi o Palpatine conhecido por Darth Sidious');
insert into resposta(id, resposta) values('82', 'Qui-Gon Jinn foi o seu mestre não oficialmente, Obi-Wan Kenobi foi mestre Jedi e por fim quando se tornou Sith seu mestre foi o Palpatine conhecido por Darth Sidious');
insert into resposta(id, resposta) values('83', 'o planeta natal de Darth Vader É Tatooine');
insert into resposta(id, resposta) values('84', 'o planeta natal de Darth Vader É Tatooine');
insert into resposta(id, resposta) values('85', 'Luke, Eu sou seu pai!');
insert into resposta(id, resposta) values('86', 'ele aparece no EPISÓDIO III, EPISÓDIO IV, EPISÓDIO V, EPISÓDIO VI');
insert into resposta(id, resposta) values('87', 'ele aparece no EPISÓDIO III, EPISÓDIO IV, EPISÓDIO V, EPISÓDIO VI');
insert into resposta(id, resposta) values('88', 'ele é um humano');
insert into resposta(id, resposta) values('89', 'ele é um humano');
insert into resposta(id, resposta) values('90', 'o ator que interpretou Darth Vader foi David Prowse, e James Earl Jones deu a voz na versão original.');
insert into resposta(id, resposta) values('91', 'o ator que interpretou Darth Vader foi David Prowse, e James Earl Jones deu a voz na versão original.');
insert into resposta(id, resposta) values('92', 'o Anakin tem um Sabre de luz azul');
insert into resposta(id, resposta) values('93', 'o Anakin tem um Sabre de luz azul');
insert into resposta(id, resposta) values('94', 'o Anakin tem um Sabre de luz azul');
insert into resposta(id, resposta) values('95', 'o Anakin tem um Sabre de luz azul');
insert into resposta(id, resposta) values('96', 'o Anakin tem um Sabre de luz azul');
insert into resposta(id, resposta) values('97', 'Nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade ja como Darth vader.');
insert into resposta(id, resposta) values('98', 'Nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade ja como Darth vader.');
insert into resposta(id, resposta) values('99', 'Nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade ja como Darth vader.');
insert into resposta(id, resposta) values('100', 'como jedi teve como aprendiz Ahsoka Tano e como o Sith Darth Vader teve como aprendiz O Grande Inquisidor');
insert into resposta(id, resposta) values('101', 'Nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade ja como Darth vader.');
insert into resposta(id, resposta) values('102', 'Nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade ja como Darth vader.');
insert into resposta(id, resposta) values('103', 'Nasceu em 42 ABY e morreu 4 DBY, na estrela da Morte II sob Endor durante a Batalha de Endor, com 46 anos de idade ja como Darth vader.');
insert into resposta(id, resposta) values('104', 'Percebendo que ele estava se tornando o que ele buscava destruir, Skywalker arremessou longe seu sabre de luz e se declarou um Jedi. Enfurecido, Sidious lançou relâmpagos da Força contra Luke. Vader agarrou o Imperador com o que restava de seus braços e ergueu seu mestre, levando-o para o vão do reator da estação. A partir desse momento, Darth Vader deixou de existir e Anakin Skywalker, Cavaleiro Jedi, ressurgiu. Enfurecido com a traição de seu aprendiz, Sidious lançou um ataque ainda mais poderoso contra Anakin, Sidious apenas pensava em causar a seu agora ex-aprendiz ainda mais dor, embora ele pudesse ter usado seus poderes para se salvar. Com o Imperador danificando severa e permanentemente sua armadura e seu suporte à vida, Anakin jogou seu ex-mestre no chão. Ao matar Darth Sidious e terminar seu reino, o Jedi redimido cumpriu seu destino de restaurar o equilíbrio à Força');
insert into resposta(id, resposta) values('105', 'ele é um grande personagem, sem ele não teria o Darth Vader');
insert into resposta(id, resposta) values('106', 'Uma das figuras centrais da saga, Anakin é um dos mais lendários entre os cavaleiros Jedi. Ele serviu a República Galáctica, mas acabou tornando-se o lorde negro Sith conhecido como Darth Vader. Teve uma vida sofrida como escravo em Tatooine, mas foi libertado pelo Jedi Qui-Gon Jinn, que o fez ingressar na ordem Jedi. Mais tarde, passou para o Lado Negro da Força como aprendiz de Darth Sidious.');
insert into resposta(id, resposta) values('107', 'Uma das figuras centrais da saga, Anakin é um dos mais lendários entre os cavaleiros Jedi. Ele serviu a República Galáctica, mas acabou tornando-se o lorde negro Sith conhecido como Darth Vader. Teve uma vida sofrida como escravo em Tatooine, mas foi libertado pelo Jedi Qui-Gon Jinn, que o fez ingressar na ordem Jedi. Mais tarde, passou para o Lado Negro da Força como aprendiz de Darth Sidious.');
insert into resposta(id, resposta) values('108', 'Uma das figuras centrais da saga, Anakin é um dos mais lendários entre os cavaleiros Jedi. Ele serviu a República Galáctica, mas acabou tornando-se o lorde negro Sith conhecido como Darth Vader. Teve uma vida sofrida como escravo em Tatooine, mas foi libertado pelo Jedi Qui-Gon Jinn, que o fez ingressar na ordem Jedi. Mais tarde, passou para o Lado Negro da Força como aprendiz de Darth Sidious.');
insert into resposta(id, resposta) values('109', 'Uma das figuras centrais da saga, Anakin é um dos mais lendários entre os cavaleiros Jedi. Ele serviu a República Galáctica, mas acabou tornando-se o lorde negro Sith conhecido como Darth Vader. Teve uma vida sofrida como escravo em Tatooine, mas foi libertado pelo Jedi Qui-Gon Jinn, que o fez ingressar na ordem Jedi. Mais tarde, passou para o Lado Negro da Força como aprendiz de Darth Sidious.');
insert into resposta(id, resposta) values('110', 'A mãe de Anakin é a Shimi Skywalker, já falecida que ocorreu devido à captura pelo Povo da Areia, o que influenciou diretamente na transição de Anakin Skywalker para virar Darth Vader.');
insert into resposta(id, resposta) values('111', 'A mãe de Anakin é a Shimi Skywalker, já falecida que ocorreu devido à captura pelo Povo da Areia, o que influenciou diretamente na transição de Anakin Skywalker para virar Darth Vader. Padmé Amidala é a esposa já falecida, tendo 2 filhos Leia Organa e Luke Skywalker. Han Solo é seu genro, marido de Leia onde teve um filho chamado Ben Solo. E Owen Lars é seu meio-Irmão falecido.');
insert into resposta(id, resposta) values('112', 'No Episódio I Shmi Skywalker, a mãe do pequeno Anakin, conta ao mestre Jedi Qui-Gon Jinn que ela engravidou sem ter tido relação com ninguém. Ou seja, o futuro Darth Vader não tinha pai.');
insert into resposta(id, resposta) values('113', 'como jedi teve como aprendiz Ahsoka Tano e como o Sith Darth Vader teve como aprendiz O Grande Inquisidor');
insert into resposta(id, resposta) values('114', 'Qui-Gon Jinn foi o seu mestre não oficialmente, Obi-Wan Kenobi foi mestre Jedi e por fim quando se tornou Sith seu mestre foi o Palpatine conhecido por Darth Sidious');
insert into resposta(id, resposta) values('115', 'Qui-Gon Jinn foi o seu mestre não oficialmente, Obi-Wan Kenobi foi mestre Jedi e por fim quando se tornou Sith seu mestre foi o Palpatine conhecido por Darth Sidious');
insert into resposta(id, resposta) values('116', 'o planeta natal de Darth Vader É Tatooine');
insert into resposta(id, resposta) values('117', 'o planeta natal de Darth Vader É Tatooine');
insert into resposta(id, resposta) values('118', 'Agora a diversão vai começar.');
insert into resposta(id, resposta) values('119', 'ele aparece no EPISÓDIO I, EPISÓDIO II, EPISÓDIO III, já como Darth Vader apareceu no EPISÓDIO IV, EPISÓDIO V, EPISÓDIO VI');
insert into resposta(id, resposta) values('120', 'ele aparece no EPISÓDIO I, EPISÓDIO II, EPISÓDIO III, já como Darth Vader apareceu no EPISÓDIO IV, EPISÓDIO V, EPISÓDIO VI');
insert into resposta(id, resposta) values('121', 'ele é um humano');
insert into resposta(id, resposta) values('122', 'ele é um humano');
insert into resposta(id, resposta) values('123', 'como criança Jake Lloyd, e como adulto foi interpretado por Hayden Christensen');
insert into resposta(id, resposta) values('124', 'como criança Jake Lloyd, e como adulto foi interpretado por Hayden Christensen');
insert into resposta(id, resposta) values('125', 'A arma que ele utiliza é um Sabre de luz azul');
insert into resposta(id, resposta) values('126', 'A arma que ele utiliza é um Sabre de luz azul');
insert into resposta(id, resposta) values('127', 'A arma que ele utiliza é um Sabre de luz azul');
insert into resposta(id, resposta) values('128', 'A arma que ele utiliza é um Sabre de luz azul');
insert into resposta(id, resposta) values('129', 'A arma que ele utiliza é um Sabre de luz azul');
insert into resposta(id, resposta) values('130', 'A arma que ele utiliza é um Sabre de luz azul');
insert into resposta(id, resposta) values('131', 'Obi-Wan nasceu em 57 ABY e morreu 50 horas antes da Batalha de Yavin, morrendo com 57 anos de idade');
insert into resposta(id, resposta) values('132', 'Obi-Wan nasceu em 57 ABY e morreu 50 horas antes da Batalha de Yavin, morrendo com 57 anos de idade');
insert into resposta(id, resposta) values('133', 'Obi-Wan nasceu em 57 ABY e morreu 50 horas antes da Batalha de Yavin, morrendo com 57 anos de idade');
insert into resposta(id, resposta) values('134', 'os aprendises de Obi-Wan eram Anakin Skywalker Luke Skywalker');
insert into resposta(id, resposta) values('135', 'Obi-Wan nasceu em 57 ABY e morreu 50 horas antes da Batalha de Yavin, morrendo com 57 anos de idade');
insert into resposta(id, resposta) values('136', 'Obi-Wan nasceu em 57 ABY e morreu 50 horas antes da Batalha de Yavin, morrendo com 57 anos de idade');
insert into resposta(id, resposta) values('137', 'Obi-Wan nasceu em 57 ABY e morreu 50 horas antes da Batalha de Yavin, morrendo com 57 anos de idade');
insert into resposta(id, resposta) values('138', 'Ele encontrou Vader na estrela da Morte quando ele, Han, e Luke foram salvar Leia, e os dois se comprometeram em um duelo final. Durante esse período, Vader assinalou que sua idade o deixou fraco, mas Kenobi disse a seu ex-aprendiz que ele não venceria porque ele se tornaria mais poderoso do que Vader pudesse imaginar, mesmo que ele conseguisse matá-lo. Os dois abriram caminho, assim como a equipe se reuniu para abordar a Falcon. Ao levantar a lâmina para se render e respirar fundo, Vader o atingiu e seu corpo desapareceu, pois ele se tornou um com a Força. Incapaz de recuperar o corpo de seu mestre, Luke foi forçado a escapar na Falcon com todos os outros.');
insert into resposta(id, resposta) values('139', '--');
insert into resposta(id, resposta) values('140', 'Um dos mais respeitados mestres Jedi da Antiga República, Obi-Wan Kenobi foi mentor tanto de Anakin Skywaler (que posteriormente viria a se tornar Darth Vader) quanto do seu filho, Luke. Especialista em infiltração, foi um dos principais comandantes nas Guerras Clônicas e, ao fim do conflito, com a extinção dos Jedi, tomou para si a responsabilidade de guardar o filho do seu antigo amigo.');
insert into resposta(id, resposta) values('141', 'Um dos mais respeitados mestres Jedi da Antiga República, Obi-Wan Kenobi foi mentor tanto de Anakin Skywaler (que posteriormente viria a se tornar Darth Vader) quanto do seu filho, Luke. Especialista em infiltração, foi um dos principais comandantes nas Guerras Clônicas e, ao fim do conflito, com a extinção dos Jedi, tomou para si a responsabilidade de guardar o filho do seu antigo amigo.');
insert into resposta(id, resposta) values('142', 'Um dos mais respeitados mestres Jedi da Antiga República, Obi-Wan Kenobi foi mentor tanto de Anakin Skywaler (que posteriormente viria a se tornar Darth Vader) quanto do seu filho, Luke. Especialista em infiltração, foi um dos principais comandantes nas Guerras Clônicas e, ao fim do conflito, com a extinção dos Jedi, tomou para si a responsabilidade de guardar o filho do seu antigo amigo.');
insert into resposta(id, resposta) values('143', 'Um dos mais respeitados mestres Jedi da Antiga República, Obi-Wan Kenobi foi mentor tanto de Anakin Skywaler (que posteriormente viria a se tornar Darth Vader) quanto do seu filho, Luke. Especialista em infiltração, foi um dos principais comandantes nas Guerras Clônicas e, ao fim do conflito, com a extinção dos Jedi, tomou para si a responsabilidade de guardar o filho do seu antigo amigo.');
insert into resposta(id, resposta) values('144', 'Esta informarção não exise em nenhum dos meus registros.');
insert into resposta(id, resposta) values('145', 'Esta informarção não exise em nenhum dos meus registros.');
insert into resposta(id, resposta) values('146', 'Esta informarção não exise em nenhum dos meus registros.');
insert into resposta(id, resposta) values('147', 'os aprendises de Obi-Wan eram Anakin Skywalker Luke Skywalker');
insert into resposta(id, resposta) values('148', 'os mestres conhecidos de Obi-Wan, são Qui-Gon Jinn Yoda');
insert into resposta(id, resposta) values('149', 'os mestres conhecidos de Obi-Wan, são Qui-Gon Jinn Yoda');
insert into resposta(id, resposta) values('150', 'Stewjon foi um planeta na galáxia que foi o planeta natal de Obi-Wan Kenobi,');
insert into resposta(id, resposta) values('151', 'Stewjon foi um planeta na galáxia que foi o planeta natal de Obi-Wan Kenobi,');
insert into resposta(id, resposta) values('152', 'Se você me derrubar, me tornarei mais poderoso do que você pode imaginar.');
insert into resposta(id, resposta) values('153', 'ele aparece no EPISÓDIO I, EPISÓDIO II, EPISÓDIO III, EPISÓDIO IV, EPISÓDIO V, EPISÓDIO VI');
insert into resposta(id, resposta) values('154', 'ele aparece no EPISÓDIO I, EPISÓDIO II, EPISÓDIO III, EPISÓDIO IV, EPISÓDIO V, EPISÓDIO VI');
insert into resposta(id, resposta) values('155', 'ele é um Humano');
insert into resposta(id, resposta) values('156', 'ele é um Humano');
insert into resposta(id, resposta) values('157', 'ele foi interpretado Sir Alec Guinness nos episodios IV VI e Ewan McGregor no episodio I, III, VII');
insert into resposta(id, resposta) values('158', 'ele foi interpretado Sir Alec Guinness nos episodios IV VI e Ewan McGregor no episodio I, III, VII');
insert into resposta(id, resposta) values('159', 'a arma que ela utiliza é um blaster de mão');
insert into resposta(id, resposta) values('160', 'a arma que ela utiliza é um blaster de mão');
insert into resposta(id, resposta) values('161', 'a arma que ela utiliza é um blaster de mão');
insert into resposta(id, resposta) values('162', 'Nasceu pouco após a execução da Ordem 66, mais ou menos 19 anos antes da Batalha de Yavin, até o fim dos episodios 6, ele ainda estava viva');
insert into resposta(id, resposta) values('163', 'Nasceu pouco após a execução da Ordem 66, mais ou menos 19 anos antes da Batalha de Yavin, até o fim dos episodios 6, ele ainda estava viva');
insert into resposta(id, resposta) values('164', 'Nasceu pouco após a execução da Ordem 66, mais ou menos 19 anos antes da Batalha de Yavin, até o fim dos episodios 6, ele ainda estava viva');
insert into resposta(id, resposta) values('165', 'Nasceu pouco após a execução da Ordem 66, mais ou menos 19 anos antes da Batalha de Yavin, até o fim dos episodios 6, ele ainda estava viva');
insert into resposta(id, resposta) values('166', 'Nasceu pouco após a execução da Ordem 66, mais ou menos 19 anos antes da Batalha de Yavin, até o fim dos episodios 6, ele ainda estava viva');
insert into resposta(id, resposta) values('167', 'Nasceu pouco após a execução da Ordem 66, mais ou menos 19 anos antes da Batalha de Yavin, até o fim dos episodios 6, ele ainda estava viva');
insert into resposta(id, resposta) values('168', 'Nasceu pouco após a execução da Ordem 66, mais ou menos 19 anos antes da Batalha de Yavin, até o fim dos episodios 6, ele ainda estava viva');
insert into resposta(id, resposta) values('169', 'Leia Organa (nascida Leia Amidala Skywalker) é uma das protagonistas da trilogia clássica (Episódios IV, V e VI). É irmã gêmea de Luke Skywalker e filha biológica da ex-rainha de Naboo Padmé Amidala e do Cavaleiro Jedi Anakin Skywalker. Leia nasceu no final da Guerras Clônicas. Com a morte de sua mãe e a transformação de seu pai em Darth Vader, foi separada de seu irmão gêmeo e entregue aos cuidados do Senador Bail Organa e de sua esposa Breha Organa. Bail encabeçava a família real de Alderaan, o que conferiu a Leia o título de princesa.');
insert into resposta(id, resposta) values('170', 'Leia Organa (nascida Leia Amidala Skywalker) é uma das protagonistas da trilogia clássica (Episódios IV, V e VI). É irmã gêmea de Luke Skywalker e filha biológica da ex-rainha de Naboo Padmé Amidala e do Cavaleiro Jedi Anakin Skywalker. Leia nasceu no final da Guerras Clônicas. Com a morte de sua mãe e a transformação de seu pai em Darth Vader, foi separada de seu irmão gêmeo e entregue aos cuidados do Senador Bail Organa e de sua esposa Breha Organa. Bail encabeçava a família real de Alderaan, o que conferiu a Leia o título de princesa.');
insert into resposta(id, resposta) values('171', 'Leia Organa (nascida Leia Amidala Skywalker) é uma das protagonistas da trilogia clássica (Episódios IV, V e VI). É irmã gêmea de Luke Skywalker e filha biológica da ex-rainha de Naboo Padmé Amidala e do Cavaleiro Jedi Anakin Skywalker. Leia nasceu no final da Guerras Clônicas. Com a morte de sua mãe e a transformação de seu pai em Darth Vader, foi separada de seu irmão gêmeo e entregue aos cuidados do Senador Bail Organa e de sua esposa Breha Organa. Bail encabeçava a família real de Alderaan, o que conferiu a Leia o título de princesa.');
insert into resposta(id, resposta) values('172', 'Leia Organa (nascida Leia Amidala Skywalker) é uma das protagonistas da trilogia clássica (Episódios IV, V e VI). É irmã gêmea de Luke Skywalker e filha biológica da ex-rainha de Naboo Padmé Amidala e do Cavaleiro Jedi Anakin Skywalker. Leia nasceu no final da Guerras Clônicas. Com a morte de sua mãe e a transformação de seu pai em Darth Vader, foi separada de seu irmão gêmeo e entregue aos cuidados do Senador Bail Organa e de sua esposa Breha Organa. Bail encabeçava a família real de Alderaan, o que conferiu a Leia o título de princesa.');
insert into resposta(id, resposta) values('173', 'Leia é filha de Padmé Amidala e Anakin Skywalker (conhecido também por Darth Vader), irmã gemea de Luke Skywalker, tendo como marido Han Solo e tendo um filho Ben Solo. E com a morte de Padmé e com Anakin virando Darth Vader, ela foi adotado ainda como criança por Bail Organa.');
insert into resposta(id, resposta) values('174', 'Leia é filha de Padmé Amidala e Anakin Skywalker (conhecido também por Darth Vader), irmã gemea de Luke Skywalker, tendo como marido Han Solo e tendo um filho Ben Solo. E com a morte de Padmé e com Anakin virando Darth Vader, ela foi adotado ainda como criança por Bail Organa.');
insert into resposta(id, resposta) values('175', 'Leia é filha de Padmé Amidala e Anakin Skywalker (conhecido também por Darth Vader), irmã gemea de Luke Skywalker, tendo como marido Han Solo e tendo um filho Ben Solo. E com a morte de Padmé e com Anakin virando Darth Vader, ela foi adotado ainda como criança por Bail Organa.');
insert into resposta(id, resposta) values('176', 'o planeta natal dela é Alderaan');
insert into resposta(id, resposta) values('177', 'o planeta natal dela é Alderaan');
insert into resposta(id, resposta) values('178', 'Ajude-me, Obi Wan, você é minha última esperança.');
insert into resposta(id, resposta) values('179', 'ela aparece no episodio IV, V, VI');
insert into resposta(id, resposta) values('180', 'ela aparece no episodio IV, V, VI');
insert into resposta(id, resposta) values('181', 'ela é uma humana');
insert into resposta(id, resposta) values('182', 'ela é uma humana');
insert into resposta(id, resposta) values('183', 'ela foi interpretada por Carrie Fisher');
insert into resposta(id, resposta) values('184', 'ela foi interpretada por Carrie Fisher');
insert into resposta(id, resposta) values('185', 'teste');
insert into resposta(id, resposta) values('186', 'teste');
insert into resposta(id, resposta) values('187', 'ele usa um sabre de luz de cor verde');
insert into resposta(id, resposta) values('188', 'ele usa um sabre de luz de cor verde');
insert into resposta(id, resposta) values('189', 'ele usa um sabre de luz de cor verde');
insert into resposta(id, resposta) values('190', 'ele usa um sabre de luz de cor verde');
insert into resposta(id, resposta) values('191', 'ele usa um sabre de luz de cor verde');
insert into resposta(id, resposta) values('192', 'ele usa um sabre de luz de cor verde');
insert into resposta(id, resposta) values('193', 'ele nasceu 19 ABY, em Polis, e até o fim dos acontecimentos do episodio VI ele ainda estava vivo');
insert into resposta(id, resposta) values('194', 'ele nasceu 19 ABY, em Polis, e até o fim dos acontecimentos do episodio VI ele ainda estava vivo');
insert into resposta(id, resposta) values('195', 'ele nasceu 19 ABY, em Polis, e até o fim dos acontecimentos do episodio VI ele ainda estava vivo');
insert into resposta(id, resposta) values('196', 'não teve aprendizes, até onde eu sei');
insert into resposta(id, resposta) values('197', 'ele nasceu 19 ABY, em Polis, e até o fim dos acontecimentos do episodio VI ele ainda estava vivo');
insert into resposta(id, resposta) values('198', 'ele nasceu 19 ABY, em Polis, e até o fim dos acontecimentos do episodio VI ele ainda estava vivo');
insert into resposta(id, resposta) values('199', 'ele nasceu 19 ABY, em Polis, e até o fim dos acontecimentos do episodio VI ele ainda estava vivo');
insert into resposta(id, resposta) values('200', 'ele nasceu 19 ABY, em Polis, e até o fim dos acontecimentos do episodio VI ele ainda estava vivo');
insert into resposta(id, resposta) values('201', '--');
insert into resposta(id, resposta) values('202', 'Luke Skywalker foi o protagonista da trilogia original. Uma figura importante na luta da Aliança Rebelde contra o Império Galáctico, ele foi o irmão gêmeo da líder rebelde Princesa Leia Organa de Alderaan, foi amigo do mercenário Han Solo, aprendiz do Mestre Jedi Obi-Wan ""Ben"" Kenobi, e o filho do Jedi caído Darth Vader (Anakin Skywalker) e da Rainha de Naboo/Senadora da República Padmé Amidala."');
insert into resposta(id, resposta) values('203', 'Até então um jovem órfão criado por um casal de fazendeiros de Tatooine, Luke descobre o seu destino ao cruzar com os droids C3PO e R2D2. Filho de Anakin Skywalker, encontra seu antigo mestre, Obi-Wan, salva a princesa Leia (que posteriormente descobriria ser sua irmã), destrói a principal arma do Império, a Estrela da Morte, se torna um dos líderes da Aliança Rebelde e finalmente ajuda a derrubar o Imperador Palpatine.');
insert into resposta(id, resposta) values('204', 'Até então um jovem órfão criado por um casal de fazendeiros de Tatooine, Luke descobre o seu destino ao cruzar com os droids C3PO e R2D2. Filho de Anakin Skywalker, encontra seu antigo mestre, Obi-Wan, salva a princesa Leia (que posteriormente descobriria ser sua irmã), destrói a principal arma do Império, a Estrela da Morte, se torna um dos líderes da Aliança Rebelde e finalmente ajuda a derrubar o Imperador Palpatine.');
insert into resposta(id, resposta) values('205', 'Luke Skywalker foi o protagonista da trilogia original. Uma figura importante na luta da Aliança Rebelde contra o Império Galáctico, ele foi o irmão gêmeo da líder rebelde Princesa Leia Organa de Alderaan, foi amigo do mercenário Han Solo, aprendiz do Mestre Jedi Obi-Wan ""Ben"" Kenobi, e o filho do Jedi caído Darth Vader (Anakin Skywalker) e da Rainha de Naboo/Senadora da República Padmé Amidala."');
insert into resposta(id, resposta) values('206', 'Luke é filho de Padmé Amidala e Anakin Skywalker (conhecido também por Darth Vader), Irmão gemeo de Leia Organa,');
insert into resposta(id, resposta) values('207', 'Luke é filho de Padmé Amidala e Anakin Skywalker (conhecido também por Darth Vader), Irmão gemeo de Leia Organa,');
insert into resposta(id, resposta) values('208', 'Luke é filho de Padmé Amidala e Anakin Skywalker (conhecido também por Darth Vader), Irmão gemeo de Leia Organa,');
insert into resposta(id, resposta) values('209', 'Luke até então não treinou ninguém. Mas teve como mestre Obi-Wan Kenobi e Yoda');
insert into resposta(id, resposta) values('210', 'Luke até então não treinou ninguém. Mas teve como mestre Obi-Wan Kenobi e Yoda');
insert into resposta(id, resposta) values('211', 'Luke até então não treinou ninguém. Mas teve como mestre Obi-Wan Kenobi e Yoda');
insert into resposta(id, resposta) values('212', 'ele foi criado em Tatooine');
insert into resposta(id, resposta) values('213', 'ele foi criado em Tatooine');
insert into resposta(id, resposta) values('214', 'Eu nunca vou cair para o lado escuro. Você falhou, alteza. Sou um Jedi, como meu pai antes de mim');
insert into resposta(id, resposta) values('215', 'Ele aparece no episodio IV, V e VI');
insert into resposta(id, resposta) values('216', 'Ele aparece no episodio IV, V e VI');
insert into resposta(id, resposta) values('217', 'ele é um humano');
insert into resposta(id, resposta) values('218', 'ele é um humano');
insert into resposta(id, resposta) values('219', 'interpretado por Mark Hamill');
insert into resposta(id, resposta) values('220', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('221', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('222', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('223', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('224', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('225', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('226', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('227', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('228', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('229', 'Os aprendizes de Yoda foram Dookan, antes de se tornar Darth Tyranus, Obi-Wan Kenobi, e Luke Skywalker. E as informações sobre o mestre de Yoda, também não se conta nos registros da series, quem seria ele');
insert into resposta(id, resposta) values('230', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('231', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('232', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('233', 'Mestre Yoda morreu de velice.');
insert into resposta(id, resposta) values('234', 'Um dos melhores e maiores mestres de todos os tempos');
insert into resposta(id, resposta) values('235', 'Um dos mais antigos membros do Conselho Jedi, Mestre Yoda treina novos padawans há pelo menos 800 anos. Tido como um dos Jedi mais poderoso de todos os tempos, falhou em perceber a aproximação dos Sith que causou o fim da República, mas treinou Luke Skywalker para que pudesse derrotar o Império.');
insert into resposta(id, resposta) values('236', 'Medindo 76 centímetros de altura, Yoda é um membro masculino de uma raça cujo nome nunca foi revelado. Ele foi o Grão Mestre da Ordem Jedi durante as Guerras Clônicas, um dos membros mais importantes do Alto Conselho Jedi nos últimos dias da República Galáctica, e um dos mais sábios e poderosos Jedi de todos os tempos. Tendo vivido por muito tempo (veio a falecer com aprox. 900 anos de idade), ele tinha excepcionais habilidades no combate de sabre de luz, onde usava as técnicas acrobáticas da Forma IV, além de um fenomenal conhecimento sobre a Força. De 300 ABY até 19 ABY ele treinou quase todos os Jedi da Galáxia ? como Grande Mestre, ele instruia todos os Younglings do Templo Jedi antes deles serem adotados por um mestre, tendo Anakin Skywalkersido uma exceção quanto a isso.');
insert into resposta(id, resposta) values('237', 'Um dos mais antigos membros do Conselho Jedi, Mestre Yoda treina novos padawans há pelo menos 800 anos. Tido como um dos Jedi mais poderoso de todos os tempos, falhou em perceber a aproximação dos Sith que causou o fim da República, mas treinou Luke Skywalker para que pudesse derrotar o Império.');
insert into resposta(id, resposta) values('238', 'Medindo 76 centímetros de altura, Yoda é um membro masculino de uma raça cujo nome nunca foi revelado. Ele foi o Grão Mestre da Ordem Jedi durante as Guerras Clônicas, um dos membros mais importantes do Alto Conselho Jedi nos últimos dias da República Galáctica, e um dos mais sábios e poderosos Jedi de todos os tempos. Tendo vivido por muito tempo (veio a falecer com aprox. 900 anos de idade), ele tinha excepcionais habilidades no combate de sabre de luz, onde usava as técnicas acrobáticas da Forma IV, além de um fenomenal conhecimento sobre a Força. De 300 ABY até 19 ABY ele treinou quase todos os Jedi da Galáxia ? como Grande Mestre, ele instruia todos os Younglings do Templo Jedi antes deles serem adotados por um mestre, tendo Anakin Skywalkersido uma exceção quanto a isso.');
insert into resposta(id, resposta) values('239', 'Informações como especie, raça, planata natal, parentes não estão nenhum registro sobre a series');
insert into resposta(id, resposta) values('240', 'Informações como especie, raça, planata natal, parentes não estão nenhum registro sobre a series');
insert into resposta(id, resposta) values('241', 'Informações como especie, raça, planata natal, parentes não estão nenhum registro sobre a series');
insert into resposta(id, resposta) values('242', 'Os aprendizes de Yoda foram Dookan, antes de se tornar Darth Tyranus, Obi-Wan Kenobi, e Luke Skywalker. E as informações sobre o mestre de Yoda, também não se conta nos registros da series, quem seria ele');
insert into resposta(id, resposta) values('243', 'Os aprendizes de Yoda foram Dookan, antes de se tornar Darth Tyranus, Obi-Wan Kenobi, e Luke Skywalker. E as informações sobre o mestre de Yoda, também não se conta nos registros da series, quem seria ele');
insert into resposta(id, resposta) values('244', 'Os aprendizes de Yoda foram Dookan, antes de se tornar Darth Tyranus, Obi-Wan Kenobi, e Luke Skywalker. E as informações sobre o mestre de Yoda, também não se conta nos registros da series, quem seria ele');
insert into resposta(id, resposta) values('245', 'Informações como especie, raça, planata natal, parentes não estão nenhum registro sobre a series');
insert into resposta(id, resposta) values('246', 'Informações como especie, raça, planata natal, parentes não estão nenhum registro sobre a series');
insert into resposta(id, resposta) values('247', 'Julga-me pelo meu tamanho? Hun? E não deveria. Aliada minha a Força é. E poderosa aliada ela é.');
insert into resposta(id, resposta) values('248', 'Aparece no episodio II, III, IV, V, VI');
insert into resposta(id, resposta) values('249', 'Aparece no episodio II, III, IV, V, VI');
insert into resposta(id, resposta) values('250', 'Informações como especie, raça, planata natal, parentes não estão nenhum registro sobre a series');
insert into resposta(id, resposta) values('251', 'Informações como especie, raça, planata natal, parentes não estão nenhum registro sobre a series');
insert into resposta(id, resposta) values('252', 'Frank Oz foi a voz original, e Guilherme Briggs a voz brasileira');
insert into resposta(id, resposta) values('253', 'Frank Oz foi a voz original, e Guilherme Briggs a voz brasileira');
insert into resposta(id, resposta) values('254', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('255', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('256', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('257', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('258', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('259', 'o mestre Yoda tem um sabre de luz verde');
insert into resposta(id, resposta) values('260', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('261', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('262', 'Ele nasceu em 896 ABY, e morreu em 4 DBY, em Dagobah. Morrendo com 900 anos');
insert into resposta(id, resposta) values('263', 'Os aprendizes de Yoda foram Dookan, antes de se tornar Darth Tyranus, Obi-Wan Kenobi, e Luke Skywalker. E as informações sobre o mestre de Yoda, também não se conta nos registros da series, quem seria ele');
insert into resposta(id, resposta) values('270', 'Azul, verde, castanho, roxo, vermelho');
insert into resposta(id, resposta) values('271', 'Azul, verde, castanho, roxo, vermelho');
insert into resposta(id, resposta) values('272', 'é a Padmé Amidala');
insert into resposta(id, resposta) values('273', 'é a Padmé Amidala');
insert into resposta(id, resposta) values('274', 'a arma que o Palpatine, vulgo Darth Sirus usa é um sabre de luz vermelho');
insert into resposta(id, resposta) values('275', 'a arma que o Palpatine, vulgo Darth Sirus usa é um sabre de luz vermelho');
insert into resposta(id, resposta) values('276', 'a arma que o Palpatine, vulgo Darth Sirus usa é um sabre de luz vermelho');
insert into resposta(id, resposta) values('277', 'a arma que o Palpatine, vulgo Darth Sirus usa é um sabre de luz vermelho');
insert into resposta(id, resposta) values('278', 'a arma que o Palpatine, vulgo Darth Sirus usa é um sabre de luz vermelho');
insert into resposta(id, resposta) values('279', 'a arma que o Palpatine, vulgo Darth Sirus usa é um sabre de luz vermelho');
insert into resposta(id, resposta) values('280', '88 anos ABY, Naboo, e morreu em 4 anos DBY a bordo da Segunda Estrela da Morte sobre Endor, morto por Darth Vader, depois que o mesmo voltou para o lado dos Jedis');
insert into resposta(id, resposta) values('281', '88 anos ABY, Naboo, e morreu em 4 anos DBY a bordo da Segunda Estrela da Morte sobre Endor, morto por Darth Vader, depois que o mesmo voltou para o lado dos Jedis');
insert into resposta(id, resposta) values('282', '88 anos ABY, Naboo, e morreu em 4 anos DBY a bordo da Segunda Estrela da Morte sobre Endor, morto por Darth Vader, depois que o mesmo voltou para o lado dos Jedis');
insert into resposta(id, resposta) values('283', 'Foi mestre de Darth Maul, Darth Tyranus, Darth Vader e foi treinado por Darth Plagueis');
insert into resposta(id, resposta) values('284', '88 anos ABY, Naboo, e morreu em 4 anos DBY a bordo da Segunda Estrela da Morte sobre Endor, morto por Darth Vader, depois que o mesmo voltou para o lado dos Jedis');
insert into resposta(id, resposta) values('285', '88 anos ABY, Naboo, e morreu em 4 anos DBY a bordo da Segunda Estrela da Morte sobre Endor, morto por Darth Vader, depois que o mesmo voltou para o lado dos Jedis');
insert into resposta(id, resposta) values('286', '88 anos ABY, Naboo, e morreu em 4 anos DBY a bordo da Segunda Estrela da Morte sobre Endor, morto por Darth Vader, depois que o mesmo voltou para o lado dos Jedis');
insert into resposta(id, resposta) values('287', '88 anos ABY, Naboo, e morreu em 4 anos DBY a bordo da Segunda Estrela da Morte sobre Endor, morto por Darth Vader, depois que o mesmo voltou para o lado dos Jedis');
insert into resposta(id, resposta) values('288', 'Principal vilão de Star Wars, o Imperador Palpatine é um dos Lordes Sith mais poderosos da história, que atende pelo nome de Darth Sidious. Graças as suas habilidades de manipulação, foi o responsável pela destruição da Ordem Jedi e pela instauração do Império Galáctico. Como senador de Naboo, ele articulou secretamente uma série de eventos que o tornaram chanceler da Velha República e, durante as Guerras Clónicas, acumulou poderes emergenciais até se auto-proclamar imperador. Foi o responsável por trazer o jovem aprendiz Anakim Skywalker para o lado negro da força, quando assumiu o título de Darth Vader. Morreu pouco antes da explosão da segunda Estrela da Morte, durante a batalha de Endor.');
insert into resposta(id, resposta) values('289', 'Principal vilão de Star Wars, o Imperador Palpatine é um dos Lordes Sith mais poderosos da história, que atende pelo nome de Darth Sidious. Graças as suas habilidades de manipulação, foi o responsável pela destruição da Ordem Jedi e pela instauração do Império Galáctico. Como senador de Naboo, ele articulou secretamente uma série de eventos que o tornaram chanceler da Velha República e, durante as Guerras Clónicas, acumulou poderes emergenciais até se auto-proclamar imperador. Foi o responsável por trazer o jovem aprendiz Anakim Skywalker para o lado negro da força, quando assumiu o título de Darth Vader. Morreu pouco antes da explosão da segunda Estrela da Morte, durante a batalha de Endor.');
insert into resposta(id, resposta) values('290', 'Principal vilão de Star Wars, o Imperador Palpatine é um dos Lordes Sith mais poderosos da história, que atende pelo nome de Darth Sidious. Graças as suas habilidades de manipulação, foi o responsável pela destruição da Ordem Jedi e pela instauração do Império Galáctico. Como senador de Naboo, ele articulou secretamente uma série de eventos que o tornaram chanceler da Velha República e, durante as Guerras Clónicas, acumulou poderes emergenciais até se auto-proclamar imperador. Foi o responsável por trazer o jovem aprendiz Anakim Skywalker para o lado negro da força, quando assumiu o título de Darth Vader. Morreu pouco antes da explosão da segunda Estrela da Morte, durante a batalha de Endor.');
insert into resposta(id, resposta) values('291', 'Darth Sidious, nascido Sheev Palpatine, (também conhecido como Senador Palpatine, Supremo Chanceler Palpatine, Chanceler Palpatine, Imperador Palpatine, ou simplesmente O Imperador) é, juntamente com Darth Vader, o principal vilão da saga Star Wars.');
insert into resposta(id, resposta) values('292', 'Darth Sidious, nascido Sheev Palpatine, (também conhecido como Senador Palpatine, Supremo Chanceler Palpatine, Chanceler Palpatine, Imperador Palpatine, ou simplesmente O Imperador) é, juntamente com Darth Vader, o principal vilão da saga Star Wars.');
insert into resposta(id, resposta) values('293', 'Assim como Yoda, Palpatine tem muitos detalhes de seu passado não revelados.');
insert into resposta(id, resposta) values('294', 'Assim como Yoda, Palpatine tem muitos detalhes de seu passado não revelados.');
insert into resposta(id, resposta) values('295', 'Assim como Yoda, Palpatine tem muitos detalhes de seu passado não revelados.');
insert into resposta(id, resposta) values('296', 'Foi mestre de Darth Maul, Darth Tyranus, Darth Vader e foi treinado por Darth Plagueis');
insert into resposta(id, resposta) values('297', 'Foi mestre de Darth Maul, Darth Tyranus, Darth Vader e foi treinado por Darth Plagueis');
insert into resposta(id, resposta) values('298', 'Foi mestre de Darth Maul, Darth Tyranus, Darth Vader e foi treinado por Darth Plagueis');
insert into resposta(id, resposta) values('299', 'Naboo');
insert into resposta(id, resposta) values('300', 'Naboo');
insert into resposta(id, resposta) values('301', 'O lado sombrio é o caminho para várias habilidades que alguns consideram como não-naturais.');
insert into resposta(id, resposta) values('302', 'dos episodios de I até VI');
insert into resposta(id, resposta) values('303', 'dos episodios de I até VI');
insert into resposta(id, resposta) values('304', 'Humano');
insert into resposta(id, resposta) values('305', 'Humano');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

insert into valor(id_valor, valor, dado, personagem_id_personagem) values('4', 'Sobre', 'A Força era um campo de energia que se conectava com todos os seres vivos na galáxia. O poder da Força poderia ser utilizado por indivíduos que eram sensíveis a ela, um poder que era intermediado pelas midi-chlorians. A Força tinha muitos nomes alternativos. Os Lasats, por exemplo, a chamavam de a Ashla, e a descreviam como "o espírito da galáxia". A Força enquanto conceito existia por bem mais de 25000 anos', '3');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('5', 'Resumo sobre', 'A Força era um campo de energia que se conectava com todos os seres vivos na galáxia. O poder da Força poderia ser utilizado por indivíduos que eram sensíveis a ela, um poder que era intermediado pelas midi-chlorians. A Força tinha muitos nomes alternativos. Os Lasats, por exemplo, a chamavam de a Ashla, e a descreviam como "o espírito da galáxia". A Força enquanto conceito existia por bem mais de 25000 anos', '3');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('6', 'Sobre', 'Humanos eram uma espécie bípede com simetria bilateral nativa do planeta Coruscant. Eram normalmente encontrados espalhados pela galáxia, desde mundos como Naboo até lugares desérticos como Tatooine. Humanos eram conhecidos por engajarem em diferentes atividades, como política e caça de recompensas. Algumas espécies que apresentavam estrutura esquelética semelhante a dos humanos eram apelidados de "humanoides".', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('7', 'Designação', 'seres Sencientes', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('8', 'Altura média', 'certa de 1,85 metros ', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('9', 'Cor de pele', 'variações de marrom', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('10', 'Cor do cabelo', 'Preto, loiro, castanho, vermelho', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('11', 'Cor dos olhos', 'Azul, verde, castanho, roxo, vermelho', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('12', 'Distinções', 'Bípedes com simetria bilateral e tem o Polegar opositor', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('13', 'Planeta natal', 'Desconhecido, provavelmente Coruscant', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('14', 'Língua', 'a língua  Básico Padrão Galáctico', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('15', 'Membros Conhecidos', 'alguns dos membros conhecidos são Padmé Amidala, Lando Calrissian, Dookan, Jango Fett, Qui-Gon Jinn, Obi-Wan Kenobi, Palpatine, Mace Windu, Anakin Skywalker, Luke Skywalker, Han Solo, Leia Organa Solo', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('16', 'espectativa de vida', 'em media 70 anos', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('17', 'Resumo Sobre', 'Humanos eram uma espécie bípede com simetria bilateral nativa do planeta Coruscant. Eram normalmente encontrados espalhados pela galáxia, desde mundos como Naboo até lugares desérticos como Tatooine. Humanos eram conhecidos por engajarem em diferentes atividades, como política e caça de recompensas. Algumas espécies que apresentavam estrutura esquelética semelhante a dos humanos eram apelidados de "humanoides".', '4');
insert into valor(id_valor, valor, dado, personagem_id_personagem) values('18', 'esposa', 'é a Padmé Amidala', '5');
