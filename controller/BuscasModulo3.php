<?php
//http://alicebot.wikidot.com/aiml:pt-br:cybernet:cybora
//http://alicebot.wikidot.com/aiml:pt-br:cybernet:cybora:substitutions-xml
//http://re.granbery.edu.br/artigos/MjQ0.pdf
//http://aberto.univem.edu.br/bitstream/handle/11077/964/Monografia_Rafael_Luiz_de_Macedo.pdf
//http://ftp.nchu.edu.tw/MySQL/doc/refman/4.1/pt/fulltext-search.html

//tecnica de full texto sql
//
//mysql> CREATE TABLE articles (
//          id INT UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
//          title VARCHAR(200),
//          body TEXT,
//          FULLTEXT (title,body)
//        ) ENGINE=InnoDB;
//Query OK, 0 rows affected (0.08 sec)
//
//mysql> INSERT INTO articles (title,body) VALUES
//        ('MySQL Tutorial','DBMS stands for DataBase ...'),
//        ('How To Use MySQL Well','After you went through a ...'),
//        ('Optimizing MySQL','In this tutorial we will show ...'),
//        ('1001 MySQL Tricks','1. Never run mysqld as root. 2. ...'),
//        ('MySQL vs. YourSQL','In the following database comparison ...'),
//        ('MySQL Security','When configured properly, MySQL ...');
//Query OK, 6 rows affected (0.01 sec)
//Records: 6  Duplicates: 0  Warnings: 0
//
//mysql> SELECT * FROM articles
//        WHERE MATCH (title,body)
//        AGAINST ('database' IN NATURAL LANGUAGE MODE);
//+----+-------------------+------------------------------------------+
//| id | title             | body                                     |
//+----+-------------------+------------------------------------------+
//|  1 | MySQL Tutorial    | DBMS stands for DataBase ...             |
//|  5 | MySQL vs. YourSQL | In the following database comparison ... |
//+----+-------------------+------------------------------------------+
//2 rows in set (0.00 sec)


//SELECT * FROM `pergunta` WHERE MATCH (`pergunta`) AGAINST ('quem pai falou eu sou seu anakin' IN NATURAL LANGUAGE MODE)
//
//SELECT `id_pergunta`,`pergunta`,MATCH (`pergunta`) AGAINST('patrick ' IN NATURAL LANGUAGE MODE) as oi FROM `pergunta` order BY oi desc
//http://ftp.nchu.edu.tw/MySQL/doc/refman/4.1/pt/fulltext-search.html



