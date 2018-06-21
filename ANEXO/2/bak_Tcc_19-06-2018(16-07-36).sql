-- Derfaut
insert into defaut(id_defaut, pergunta, resposta) values('1', '1', 'não entendi a sua pergunta poderia ser mais claro?');
insert into defaut(id_defaut, pergunta, resposta) values('2', '1', 'Uééé o que é isso que tu está me dizendo?');

--dicionario
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

-- `expressoes` 

insert into expressoes(idexpressoes, expressao) values('1', 'você');
insert into expressoes(idexpressoes, expressao) values('8', 'Darth');
insert into expressoes(idexpressoes, expressao) values('9', 'Vader');
insert into expressoes(idexpressoes, expressao) values('10', 'quem');
insert into expressoes(idexpressoes, expressao) values('11', 'dia');
insert into expressoes(idexpressoes, expressao) values('12', 'tarde');
insert into expressoes(idexpressoes, expressao) values('13', 'noite');
insert into expressoes(idexpressoes, expressao) values('14', 'Star Wars');
insert into expressoes(idexpressoes, expressao) values('15', 'Anakin Skywalker');

--  `keywords` (

insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('1', 'oi', '1', '::1', '8');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('7', 'significado  vida  universo  tudo mais', '1', '::1', '5');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('15', 'esposa  Anakin Skywalker', '1', '::1', '30');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('16', 'Anakin Skywalker', '1', '::1', '31');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('17', 'cor  sabre  Yoda', '1', '::1', '32');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('18', 'execute order 66', '1', '::1', '4');
insert into keywords(id_key, keyword, valida, quem_fez, pergunta_keyworks) values('22', 'sentido  vida  universo', '1', '::1', '37');

--  `pergunta_keyworks` 
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('1', 'EXECUTE ORDER 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('2', 'execute order 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('3', 'execute ordem 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('4', 'EXECUTE ORDEM 66', '1', 'System', '', '2');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('5', 'Qual sentido da vida do universo e tudo mais?', '1', 'System', '', '1');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('6', 'Me diga uma frase famosa de Star Wars ?', '1', 'System', '', '4');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('7', 'oi', '1', '::1', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('10', 'teste', '1', '::1', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('13', 'Qual o significado da vida do universo e tudo mais', '1', '::1', '', '1');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('30', 'qual é a esposa de Anakin Skywalker', '1', '::1', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('31', 'quem é Anakin Skywalker', '1', '::1', '', '');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('32', 'qual é a cor do sabre do Yoda', '1', '::1', '', '5');
insert into pergunta_keyworks(idpergunta_keyworks, pergunta_key, valida, quem_fez, Ativador_de_conversa, resposta_id) values('37', 'qual sentido da vida do universo', '1', '::1', '', '1');

-- `resposta` (

insert into resposta(id, resposta) values('1', '42');
insert into resposta(id, resposta) values('2', '=YES MY LORD=');
insert into resposta(id, resposta) values('3', '==saudacao==');
insert into resposta(id, resposta) values('4', '==fraseSW==');
insert into resposta(id, resposta) values('5', 'verde');
-- user
insert into user(id_user, login, senha, nivel, ativo, frase, frase_resposta) values('8', 'root', 'd9b1d7db4cd6e70935368a1efb10e377', '3', '1', '', '');
