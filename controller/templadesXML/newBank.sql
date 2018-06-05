-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema tcc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tcc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tcc` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema tcc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tcc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tcc` DEFAULT CHARACTER SET utf8 ;
USE `tcc` ;

-- -----------------------------------------------------
-- Table `tcc`.`resposta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`resposta` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `resposta` TEXT NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '',
  UNIQUE INDEX `id` (`id` ASC)  COMMENT '',
  FULLTEXT INDEX `resposta` (`resposta` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 41
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`pergunta_keyworks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`pergunta_keyworks` (
  `idpergunta_keyworks` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta_key` TEXT NOT NULL COMMENT '',
  `valida` INT(1) NULL COMMENT '',
  `quem_fez` INT(1) NULL COMMENT '',
  `resposta_id` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`idpergunta_keyworks`)  COMMENT '',
  INDEX `fk_pergunta_keyworks_resposta_idx` (`resposta_id` ASC)  COMMENT '',
  CONSTRAINT `fk_pergunta_keyworks_resposta`
    FOREIGN KEY (`resposta_id`)
    REFERENCES `tcc`.`resposta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tcc`.`keywords`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`keywords` (
  `id_key` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `keyword` TEXT NULL COMMENT '',
  `valida` INT(1) NULL COMMENT '',
  `quem_fez` INT(1) NULL COMMENT '',
  `pergunta_keyworks` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id_key`)  COMMENT '',
  INDEX `fk_keywords_pergunta_keyworks1_idx` (`pergunta_keyworks` ASC)  COMMENT '',
  CONSTRAINT `fk_keywords_pergunta_keyworks1`
    FOREIGN KEY (`pergunta_keyworks`)
    REFERENCES `tcc`.`pergunta_keyworks` (`idpergunta_keyworks`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tcc`.`expressoes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`expressoes` (
  `idexpressoes` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `expressao` TEXT NULL COMMENT '',
  PRIMARY KEY (`idexpressoes`)  COMMENT '')
ENGINE = InnoDB;

USE `tcc` ;

-- -----------------------------------------------------
-- Table `tcc`.`defaut`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`defaut` (
  `id_defaut` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` INT(1) NOT NULL DEFAULT '1' COMMENT '',
  `resposta` TEXT NOT NULL COMMENT '',
  PRIMARY KEY (`id_defaut`)  COMMENT '',
  FULLTEXT INDEX `resposta` (`resposta` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`dicionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`dicionario` (
  `id_dicionario` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `expressao--tira--` TEXT NOT NULL COMMENT '',
  `significado` TEXT NOT NULL COMMENT '',
  `expressoes_idexpressoes` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id_dicionario`)  COMMENT '',
  FULLTEXT INDEX `expressao` (`expressao--tira--` ASC)  COMMENT '',
  FULLTEXT INDEX `significado` (`significado` ASC)  COMMENT '',
  INDEX `fk_dicionario_expressoes1_idx` (`expressoes_idexpressoes` ASC)  COMMENT '',
  CONSTRAINT `fk_dicionario_expressoes1`
    FOREIGN KEY (`expressoes_idexpressoes`)
    REFERENCES `tcc`.`expressoes` (`idexpressoes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`log_conversa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`log_conversa` (
  `id_log_conversa` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `conversa` LONGTEXT NOT NULL COMMENT '',
  `ip` VARCHAR(45) NOT NULL COMMENT '',
  `data_inc` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `data_fim` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id_log_conversa`)  COMMENT '',
  FULLTEXT INDEX `conversa` (`conversa` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`perg_sem_resp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`perg_sem_resp` (
  `id_perg_sem_resp` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` TEXT NOT NULL COMMENT '',
  `data` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `resposta` TEXT NULL DEFAULT NULL COMMENT '',
  `ip` VARCHAR(45) NOT NULL COMMENT '',
  `resposta_pergunta` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_perg_sem_resp`)  COMMENT '',
  FULLTEXT INDEX `pergunta` (`pergunta` ASC)  COMMENT '',
  FULLTEXT INDEX `resposta` (`resposta` ASC)  COMMENT '',
  INDEX `fk_perg_sem_resp_resposta_idx` (`resposta_pergunta` ASC)  COMMENT '',
  CONSTRAINT `fk_perg_sem_resp_resposta`
    FOREIGN KEY (`resposta_pergunta`)
    REFERENCES `tcc`.`resposta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 46
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`perg_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`perg_user` (
  `id_perg_user` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` TEXT NULL DEFAULT NULL COMMENT '',
  `valida` INT(11) NOT NULL DEFAULT '1' COMMENT '',
  `data` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `resposta_perg_user` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_perg_user`)  COMMENT '',
  FULLTEXT INDEX `pergunta` (`pergunta` ASC)  COMMENT '',
  INDEX `fk_perg_user_resposta1_idx` (`resposta_perg_user` ASC)  COMMENT '',
  CONSTRAINT `fk_perg_user_resposta1`
    FOREIGN KEY (`resposta_perg_user`)
    REFERENCES `tcc`.`resposta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`pergunta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`pergunta` (
  `id_pergunta` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` TEXT NULL DEFAULT NULL COMMENT '',
  `valida` INT(11) NOT NULL DEFAULT '1' COMMENT '',
  `resposta_pergunta` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_pergunta`)  COMMENT '',
  FULLTEXT INDEX `pergunta` (`pergunta` ASC)  COMMENT '',
  INDEX `fk_pergunta_resposta1_idx` (`resposta_pergunta` ASC)  COMMENT '',
  CONSTRAINT `fk_pergunta_resposta1`
    FOREIGN KEY (`resposta_pergunta`)
    REFERENCES `tcc`.`resposta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`personagem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`personagem` (
  `id_personagem` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_personagem`)  COMMENT '',
  FULLTEXT INDEX `nome` (`nome` ASC)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`temp`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`temp` (
  `id_temp` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_temp`)  COMMENT '',
  FULLTEXT INDEX `nome` (`nome` ASC)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`propriedade`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`propriedade` (
  `id_propriedade` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `propriedade` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `valo` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `temp_id_temp` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`id_propriedade`)  COMMENT '',
  FULLTEXT INDEX `propriedade` (`propriedade` ASC)  COMMENT '',
  FULLTEXT INDEX `valo` (`valo` ASC)  COMMENT '',
  INDEX `fk_propriedade_temp1_idx` (`temp_id_temp` ASC)  COMMENT '',
  CONSTRAINT `fk_propriedade_temp1`
    FOREIGN KEY (`temp_id_temp`)
    REFERENCES `tcc`.`temp` (`id_temp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`user` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `login` VARCHAR(90) NOT NULL COMMENT '',
  `senha` VARCHAR(90) NOT NULL COMMENT '',
  `nivel` INT(1) NOT NULL DEFAULT '1' COMMENT '',
  `ativo` INT(1) NOT NULL DEFAULT '1' COMMENT '',
  `frase` TEXT NULL DEFAULT NULL COMMENT '',
  `frase_resposta` TEXT NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_user`)  COMMENT '')
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`report`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`report` (
  `id_report` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `email` VARCHAR(90) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `nome` VARCHAR(90) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `texto` TEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `visto` INT(1) NOT NULL COMMENT '',
  `data_envio` DATETIME NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `data_visto` DATETIME NULL DEFAULT NULL COMMENT '',
  `visuaizado_por` INT(11) NULL DEFAULT NULL COMMENT '',
  `ip` VARCHAR(60) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  PRIMARY KEY (`id_report`)  COMMENT '',
  FULLTEXT INDEX `email` (`email` ASC)  COMMENT '',
  FULLTEXT INDEX `nome` (`nome` ASC)  COMMENT '',
  FULLTEXT INDEX `texto` (`texto` ASC)  COMMENT '',
  FULLTEXT INDEX `ip` (`ip` ASC)  COMMENT '',
  INDEX `fk_report_user1_idx` (`visuaizado_por` ASC)  COMMENT '',
  CONSTRAINT `fk_report_user1`
    FOREIGN KEY (`visuaizado_por`)
    REFERENCES `tcc`.`user` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `tcc`.`valor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tcc`.`valor` (
  `id_valor` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `valor` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `dado` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `personagem_id_personagem` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`id_valor`)  COMMENT '',
  FULLTEXT INDEX `dado` (`dado` ASC)  COMMENT '',
  FULLTEXT INDEX `valor` (`valor` ASC)  COMMENT '',
  INDEX `fk_valor_personagem1_idx` (`personagem_id_personagem` ASC)  COMMENT '',
  CONSTRAINT `fk_valor_personagem1`
    FOREIGN KEY (`personagem_id_personagem`)
    REFERENCES `tcc`.`personagem` (`id_personagem`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = latin1;

USE `tcc` ;

-- -----------------------------------------------------
-- function compare_title
-- -----------------------------------------------------

DELIMITER $$
USE `tcc`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `compare_title`(`title` VARCHAR(255) CHARSET utf8mb4, `keyword` VARCHAR(255) CHARSET utf8mb4) RETURNS int(11)
BEGIN
 
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

DELIMITER ;

-- -----------------------------------------------------
-- function levenshtein
-- -----------------------------------------------------

DELIMITER $$
USE `tcc`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `levenshtein`(`s1` VARCHAR(255) CHARSET utf8mb4, `s2` VARCHAR(255) CHARSET utf8mb4) RETURNS int(11)
BEGIN
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

DELIMITER ;

-- -----------------------------------------------------
-- function levenshtein_ratio
-- -----------------------------------------------------

DELIMITER $$
USE `tcc`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `levenshtein_ratio`(`s1` VARCHAR(255) CHARSET utf8mb4, `s2` VARCHAR(255) CHARSET utf8mb4) RETURNS int(11)
BEGIN
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

-- -----------------------------------------------------
-- procedure split
-- -----------------------------------------------------

DELIMITER $$
USE `tcc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `split`(IN `input` TEXT CHARSET utf8mb4, IN `delim` VARCHAR(10) CHARSET utf8mb4)
begin
 
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

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
