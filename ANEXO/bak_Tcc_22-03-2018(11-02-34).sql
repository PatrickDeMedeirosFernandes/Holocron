

CREATE TABLE `defaut` (
  `id_defaut` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` int(1) NOT NULL DEFAULT '1',
  `resposta` text NOT NULL,
  PRIMARY KEY (`id_defaut`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

insert into defaut(id_defaut, pergunta, resposta) values('1', '1', 'não entendi a sua pergunta, pode ser mais claro?');
insert into defaut(id_defaut, pergunta, resposta) values('2', '1', 'vamos falar sobre outra coisa ....');

CREATE TABLE `dicionario` (
  `id_dicionario` int(11) NOT NULL AUTO_INCREMENT,
  `expressao` text NOT NULL,
  `significado` text NOT NULL,
  PRIMARY KEY (`id_dicionario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

insert into dicionario(id_dicionario, expressao, significado) values('4', 'vc', 'voce');

CREATE TABLE `log_conversa` (
  `id_log_conversa` int(11) NOT NULL AUTO_INCREMENT,
  `conversa` longtext NOT NULL,
  `ip` varchar(45) NOT NULL,
  `data_inc` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_fim` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log_conversa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `perg_sem_resp` (
  `id_perg_sem_resp` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text NOT NULL,
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resposta` text,
  `ip` varchar(45) NOT NULL,
  `resposta_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perg_sem_resp`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('1', 'teste', '2017-12-13 12:41:45', 'testeoo', '', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('2', 'quem é o Yoda', '2017-12-14 19:50:35', '', '::1', '27');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('3', 'oi', '2017-12-14 20:09:40', '', '::1', '26');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('4', 'que e o yoda', '2017-12-14 20:46:26', '', '::1', '27');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('5', 'Bom dia', '2017-12-15 08:33:03', '', '::1', '26');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('6', 'O que é Holocron', '2017-12-15 08:33:16', '', '::1', '28');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('7', 'Quem é o seu pai', '2017-12-15 08:42:00', '', '::1', '29');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('8', 'Por que o filho de Han Solo o mata', '2017-12-15 09:02:35', '', '::1', '30');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('9', 'Quais são as armas dos Storm Troopers', '2017-12-15 09:03:22', '', '::1', '32');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('10', 'o que são StormTroopers', '2017-12-15 09:06:35', '', '::1', '31');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('11', 'o que são clonetroopers', '2017-12-15 09:06:52', '', '::1', '34');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('12', 'o que é um blaster', '2017-12-15 09:10:52', '', '::1', '33');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('13', 'o que é Star Wars', '2017-12-15 09:59:56', '', '::1', '35');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('14', 'o que é StarWars', '2017-12-15 10:00:01', '', '::1', '35');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('15', 'BOA NOITE', '2017-12-15 10:17:51', '', '::1', '26');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('16', 'boa tarde[', '2017-12-15 10:35:54', '', '::1', '26');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('17', 'sjahkjdhas', '2017-12-15 11:35:55', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('18', 'A

        ', '2018-03-19 09:35:27', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('19', 'Dd

        ', '2018-03-19 11:11:57', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('20', 'Dd

        ', '2018-03-19 11:13:20', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('21', 'Boa tarde:

        ', '2018-03-19 11:24:00', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('22', 'Bom dia

        ', '2018-03-19 11:24:16', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('23', 'Bom dia

        ', '2018-03-19 11:24:28', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('24', 'Boa noite

        ', '2018-03-19 11:24:36', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('25', 'Boa noite

        ', '2018-03-19 11:24:45', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('26', 'Quais são as armas dos Storm Trooper', '2018-03-22 09:55:15', '', '::1', '32');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('27', 'Quais são as armas dos Storm Trooper', '2018-03-22 09:56:49', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('28', 'Uui tft', '2018-03-22 10:19:58', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('29', 'Utyyu', '2018-03-22 10:20:09', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('30', '46941649sgjgdshldgshl', '2018-03-22 10:20:31', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('31', 'Cu', '2018-03-22 10:20:46', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('32', 'Cu', '2018-03-22 10:20:53', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('33', 'Cu', '2018-03-22 10:21:06', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('34', 'ONDE fica tATUINI', '2018-03-22 10:35:52', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('35', 'Vai tu te fuder', '2018-03-22 10:37:32', '', '::1', '');
insert into perg_sem_resp(id_perg_sem_resp, pergunta, data, resposta, ip, resposta_pergunta) values('36', 'Hitler', '2018-03-22 10:38:02', '', '::1', '');

CREATE TABLE `perg_user` (
  `id_perg_user` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `data` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `respota_perg_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perg_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('1', 'Teste

        ', '1', '2018-03-19 10:02:09', '0');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('2', 'Quem é a esposa de anakin

        ', '1', '2018-03-19 10:03:26', '1');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('3', 'Quem é Yoda

        ', '1', '2018-03-19 10:09:24', '27');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('4', 'Oi

        ', '1', '2018-03-19 10:16:51', '26');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('5', 'Quais são as armas dos Storme Troopers

        ', '1', '2018-03-19 10:18:45', '32');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('6', 'Quais são as armas dos Storm Troopers

        ', '1', '2018-03-19 10:18:57', '32');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('7', 'Boa tarde

        ', '1', '2018-03-19 10:19:13', '26');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('8', 'Boa tarde/

        ', '1', '2018-03-19 11:00:32', '26');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('9', 'Boa noite

        ', '1', '2018-03-19 11:25:17', '26');
insert into perg_user(id_perg_user, pergunta, valida, data, respota_perg_user) values('10', 'Boa noite

        ', '1', '2018-03-19 11:25:17', '26');

CREATE TABLE `pergunta` (
  `id_pergunta` int(11) NOT NULL AUTO_INCREMENT,
  `pergunta` text,
  `valida` int(11) NOT NULL DEFAULT '1',
  `resposta_pergunta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('1', 'quem é a esposa de anakin', '1', '1');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('2', 'que disse a frase eu sou seu pai', '1', '2');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('3', 'quem disse a frase eu sou seu pai', '1', '2');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('4', 'quem é a esposa de anakin', '1', '1');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('5', 'quem disse a frase eu sou seu pai', '1', '3');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('6', 'que disse a frase eu sou seu pai', '1', '3');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('7', 'quem são os filhos de Anakin Skywalker ', '1', '37');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('8', 'Boa tarde', '1', '26');
insert into pergunta(id_pergunta, pergunta, valida, resposta_pergunta) values('9', 'patrcik', '1', '38');

CREATE TABLE `personagem` (
  `id_personagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text CHARACTER SET utf8 COLLATE utf8_german2_ci,
  PRIMARY KEY (`id_personagem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `propriedade` (
  `id_propriedade` int(11) NOT NULL AUTO_INCREMENT,
  `propriedade` text CHARACTER SET utf8 COLLATE utf8_german2_ci,
  `valo` text CHARACTER SET utf8 COLLATE utf8_german2_ci,
  `temp_id_temp` int(11) NOT NULL,
  PRIMARY KEY (`id_propriedade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `report` (
  `id_report` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `nome` varchar(90) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `texto` text CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  `visto` int(1) NOT NULL,
  `data_envio` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_visto` datetime DEFAULT NULL,
  `visuaizado_por` int(11) DEFAULT NULL,
  `ip` varchar(60) CHARACTER SET utf8 COLLATE utf8_german2_ci NOT NULL,
  PRIMARY KEY (`id_report`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

insert into report(id_report, email, nome, texto, visto, data_envio, data_visto, visuaizado_por, ip) values('1', 'oi', '', 'oi
', '1', '2017-12-12 11:16:05', '2017-12-12 12:43:47', '3', '::1');
insert into report(id_report, email, nome, texto, visto, data_envio, data_visto, visuaizado_por, ip) values('2', 'as', '', 'asjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoaasjojsoa', '1', '2017-12-12 12:44:12', '2017-12-12 12:44:21', '3', '::1');
insert into report(id_report, email, nome, texto, visto, data_envio, data_visto, visuaizado_por, ip) values('3', 'PATRCIK@EMAIL', '', 'não funcionao bot
', '1', '2017-12-14 21:16:27', '2017-12-14 21:16:34', '3', '::1');
insert into report(id_report, email, nome, texto, visto, data_envio, data_visto, visuaizado_por, ip) values('4', 'teste', 'teste', 'oi
', '1', '2017-12-15 08:32:55', '2017-12-15 09:00:55', '5', '::1');
insert into report(id_report, email, nome, texto, visto, data_envio, data_visto, visuaizado_por, ip) values('5', 'patrick@email', 'Patrick', 'oi testentdo asaois 
', '0', '2017-12-15 09:22:10', '', '', '::1');
insert into report(id_report, email, nome, texto, visto, data_envio, data_visto, visuaizado_por, ip) values('6', 'email@meueamil', 'Genoveva', 'pq ele não ta responde direito minhas perguntas?', '0', '2017-12-15 11:05:38', '', '', '::1');
insert into report(id_report, email, nome, texto, visto, data_envio, data_visto, visuaizado_por, ip) values('7', 'patrick@email', 'Patrick', 'oi como vai vocÊ', '1', '2017-12-15 11:34:02', '2017-12-15 11:34:14', '3', '::1');

CREATE TABLE `respota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resposta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

insert into respota(id, resposta) values('1', 'Padmé
');
insert into respota(id, resposta) values('2', 'Darth Vader disse para o Luke
');
insert into respota(id, resposta) values('3', 'Darth Vader disse para o Luke
');
insert into respota(id, resposta) values('7', 'Luke Skywalker  e Princesa Leia Organa, que ele teve com a Senadora Padmé Amidala.');
insert into respota(id, resposta) values('26', '==saudacao==');
insert into respota(id, resposta) values('27', ' Yoda é um membro masculino de uma raça cujo nome nunca foi revelado. Ele foi o Grão Mestre da Ordem Jedi durante as Guerras Clônicas, um dos membros mais importantes do Alto Conselho Jedi nos últimos dias da República Galáctica, e um dos mais sábios e poderosos Jedi de todos os tempos.');
insert into respota(id, resposta) values('28', 'Um holocron, abreviação de crônica holográfica, foi um dispositivo cristalino lapidado orgânico, em que os Jedi antigos armazenavam quantidades fenomenais de dados, bem como o guardião do holocron. Os Sith também tinham sua própria forma de tecnologia de holocron, e parecem anteriores aos Jedi na utilização da tecnologia em pelo menos três mil anos.<br><b> E tbm é o nome que meu pai me deu </b>');
insert into respota(id, resposta) values('29', 'Meu pai é o Darth Vader -q, zuera é o Patrick de Medeiros Fernandes,  graduando na melhor faculdade de todas, o Faculade Senac de Pelotas
');
insert into respota(id, resposta) values('30', 'vamo falar sobre outra, coisa, esse assunto é complicado e não gosto de lembrar ;~;');
insert into respota(id, resposta) values('31', 'Stormtroopers foram tropas de assalto do Império Galáctico. Cidadãos contrários ao regime os chamavam de cabeças de balde, um apelido pejorativo inspirado nos capacetes dos stormtroopers. Eles utilizavam armadura branca sobre um macacão preto que, além de criar uma imagem impositiva, era equipado com uma variedade de equipamentos de sobrevivência e controle de temperatura que permitiam que seu usuário sobrevivesse na maioria dos ambientes, mas ofereciam proteção limitada contra tiros de blaster.');
insert into respota(id, resposta) values('32', 'Eles tem uma variedade de armas, mas a arma mais básica é o blaster');
insert into respota(id, resposta) values('33', 'Um Blaster era qualquer tipo de arma à distância que disparava tiros de intensa energia de plasma, muitas vezes confundida como lasers. Operando sob os mesmos princípios que o armamento do laser, os blasters convertiam o gás rico em energia a um feixe de partícula incandescente que poderia derreter através dos alvos.');
insert into respota(id, resposta) values('34', 'Soldados clones formavam um exército de clones idênticos, geneticamente modificados, criados para servir à República Galáctica no Grande Exército da República durante as Guerras Clônicas. Criados em uma taxa de crescimento acelerada e em laboratórios e fábricas no planeta Kamino, os soldados eram treinados durante seus primeiros dez anos de suas vidas para serem uma das forças militares mais eficientes da história galáctica.');
insert into respota(id, resposta) values('35', 'Star Wars (Guerra nas Estrelas (título no Brasil) ou Guerra das Estrelas (título em Portugal)) é uma franquia do tipo space opera estadunidense criada pelo cineasta George Lucas que conta com uma série de oito filmes de fantasia científica e um spin-off. O primeiro filme foi lançado apenas com o título Star Wars em 25 de maio de 1977, e tornou-se um fenômeno mundial inesperado de cultura popular, sendo responsável pelo início da &quot;era dos blockbusters&quot;: Super produções cinematográficas que fazem sucesso nas bilheterias e viram franquias com brinquedos, jogos, livros, etc. ');
insert into respota(id, resposta) values('36', 'o
');
insert into respota(id, resposta) values('37', 'teste');
insert into respota(id, resposta) values('38', 'tste');

CREATE TABLE `temp` (
  `id_temp` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text CHARACTER SET utf8 COLLATE utf8_german2_ci,
  PRIMARY KEY (`id_temp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(90) NOT NULL,
  `senha` varchar(90) NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT '1',
  `ativo` int(1) NOT NULL DEFAULT '1',
  `frase` text,
  `frase_respota` text,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

insert into user(id_user, login, senha, nivel, ativo, frase, frase_respota) values('0', 'root', 'd9b1d7db4cd6e70935368a1efb10e377', '3', '1', '', '');
insert into user(id_user, login, senha, nivel, ativo, frase, frase_respota) values('1', 'P', 'd9b1d7db4cd6e70935368a1efb10e377', '0', '1', 'NULL', 'NULL');
insert into user(id_user, login, senha, nivel, ativo, frase, frase_respota) values('3', 'root', 'd9b1d7db4cd6e70935368a1efb10e377', '3', '1', '', '');
insert into user(id_user, login, senha, nivel, ativo, frase, frase_respota) values('4', 'glad', 'd9b1d7db4cd6e70935368a1efb10e377', '2', '1', 'NULL', 'NULL');
insert into user(id_user, login, senha, nivel, ativo, frase, frase_respota) values('5', 'lv1', 'd9b1d7db4cd6e70935368a1efb10e377', '1', '1', 'NULL', 'NULL');
insert into user(id_user, login, senha, nivel, ativo, frase, frase_respota) values('6', 'lv0', 'd9b1d7db4cd6e70935368a1efb10e377', '0', '1', 'NULL', 'NULL');

CREATE TABLE `valor` (
  `id_valor` int(11) NOT NULL AUTO_INCREMENT,
  `valor` text CHARACTER SET utf8 COLLATE utf8_german2_ci,
  `dado` text CHARACTER SET utf8 COLLATE utf8_german2_ci,
  `personagem_id_personagem` int(11) NOT NULL,
  PRIMARY KEY (`id_valor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

