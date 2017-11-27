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
CREATE SCHEMA IF NOT EXISTS `tcc` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
-- -----------------------------------------------------
-- Schema tcc
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema tcc
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tcc` DEFAULT CHARACTER SET utf8 ;
USE `tcc` ;

-- -----------------------------------------------------
-- Table `temp`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `temp` ;

CREATE TABLE IF NOT EXISTS `temp` (
  `id_temp` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` TEXT NULL COMMENT '',
  PRIMARY KEY (`id_temp`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `propriedade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `propriedade` ;

CREATE TABLE IF NOT EXISTS `propriedade` (
  `id_propriedade` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `propriedade` TEXT NULL COMMENT '',
  `valo` TEXT NULL COMMENT '',
  `temp_id_temp` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id_propriedade`)  COMMENT '',
  CONSTRAINT `fk_propriedade_temp`
    FOREIGN KEY (`temp_id_temp`)
    REFERENCES `temp` (`id_temp`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_propriedade_temp_idx` ON `propriedade` (`temp_id_temp` ASC)  COMMENT '';


-- -----------------------------------------------------
-- Table `personagem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `personagem` ;

CREATE TABLE IF NOT EXISTS `personagem` (
  `id_personagem` INT NOT NULL COMMENT '',
  `nome` TEXT NULL COMMENT '',
  PRIMARY KEY (`id_personagem`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `valor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `valor` ;

CREATE TABLE IF NOT EXISTS `valor` (
  `id_valor` INT NOT NULL COMMENT '',
  `valor` TEXT NULL COMMENT '',
  `personagem_id_personagem` INT NOT NULL COMMENT '',
  PRIMARY KEY (`id_valor`)  COMMENT '',
  CONSTRAINT `fk_valor_personagem1`
    FOREIGN KEY (`personagem_id_personagem`)
    REFERENCES `personagem` (`id_personagem`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_valor_personagem1_idx` ON `valor` (`personagem_id_personagem` ASC)  COMMENT '';

USE `tcc` ;

-- -----------------------------------------------------
-- Table `defaut`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `defaut` ;

CREATE TABLE IF NOT EXISTS `defaut` (
  `id_defaut` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` INT(1) NOT NULL DEFAULT '1' COMMENT '',
  `resposta` TEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  PRIMARY KEY (`id_defaut`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `dicionario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dicionario` ;

CREATE TABLE IF NOT EXISTS `dicionario` (
  `id_dicionario` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `expressao` TEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `significado` TEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  PRIMARY KEY (`id_dicionario`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `log_conversa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `log_conversa` ;

CREATE TABLE IF NOT EXISTS `log_conversa` (
  `id_log_conversa` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `conversa` LONGTEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `ip` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `data_inc` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `data_fim` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  PRIMARY KEY (`id_log_conversa`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `respota`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `respota` ;

CREATE TABLE IF NOT EXISTS `respota` (
  `id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `resposta` TEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX `id` ON `respota` (`id` ASC)  COMMENT '';


-- -----------------------------------------------------
-- Table `perg_sem_resp`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `perg_sem_resp` ;

CREATE TABLE IF NOT EXISTS `perg_sem_resp` (
  `id_perg_sem_resp` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` TEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `data` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `resposta` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `ip` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `resposta_pergunta` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_perg_sem_resp`)  COMMENT '',
  CONSTRAINT `perg_sem_resp_ibfk_1`
    FOREIGN KEY (`resposta_pergunta`)
    REFERENCES `respota` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `resposta_pergunta` ON `perg_sem_resp` (`resposta_pergunta` ASC)  COMMENT '';


-- -----------------------------------------------------
-- Table `perg_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `perg_user` ;

CREATE TABLE IF NOT EXISTS `perg_user` (
  `id_perg_user` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `valida` INT(11) NOT NULL DEFAULT '1' COMMENT '',
  `data` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `respota_perg_user` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_perg_user`)  COMMENT '',
  CONSTRAINT `perg_user_ibfk_1`
    FOREIGN KEY (`respota_perg_user`)
    REFERENCES `respota` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `rpu` ON `perg_user` (`respota_perg_user` ASC)  COMMENT '';


-- -----------------------------------------------------
-- Table `pergunta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pergunta` ;

CREATE TABLE IF NOT EXISTS `pergunta` (
  `id_pergunta` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `pergunta` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `valida` INT(11) NOT NULL DEFAULT '1' COMMENT '',
  `resposta_pergunta` INT(11) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_pergunta`)  COMMENT '',
  CONSTRAINT `pergunta_ibfk_1`
    FOREIGN KEY (`resposta_pergunta`)
    REFERENCES `respota` (`id`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `resposta_pergunta` ON `pergunta` (`resposta_pergunta` ASC)  COMMENT '';


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `login` VARCHAR(90) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `senha` VARCHAR(90) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `nivel` INT(1) NOT NULL DEFAULT '1' COMMENT '',
  `ativo` INT(1) NOT NULL DEFAULT '1' COMMENT '',
  `frase` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  `frase_respota` TEXT CHARACTER SET 'utf8' NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id_user`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `report`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `report` ;

CREATE TABLE IF NOT EXISTS `report` (
  `id_report` INT(11) NOT NULL AUTO_INCREMENT COMMENT '',
  `email` VARCHAR(90) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `nome` VARCHAR(90) CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `texto` TEXT CHARACTER SET 'utf8' NOT NULL COMMENT '',
  `visto` INT(1) NOT NULL COMMENT '',
  `data_envio` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '',
  `data_visto` DATETIME NOT NULL COMMENT '',
  `visuaizado_por` INT(11) NOT NULL COMMENT '',
   `ip` VARCHAR(60)  CHARACTER SET 'utf8' NOT NULL COMMENT '', 
  PRIMARY KEY (`id_report`)  COMMENT '',
  CONSTRAINT `report_ibfk_1`
    FOREIGN KEY (`visuaizado_por`)
    REFERENCES `user` (`id_user`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `vp` ON `report` (`visuaizado_por` ASC)  COMMENT '';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
