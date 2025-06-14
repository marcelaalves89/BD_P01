-- MySQL Script generated by MySQL Workbench
-- Thu Sep 26 21:11:05 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Marcela
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Marcela
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Marcela` DEFAULT CHARACTER SET utf8 ;
USE `Marcela` ;

-- -----------------------------------------------------
-- Table `Marcela`.`Pessoa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Marcela`.`Pessoa` (
  `idPessoa` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  PRIMARY KEY (`idPessoa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Marcela`.`Endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Marcela`.`Endereco` (
  `idEndereco` INT NULL,
  `bairro` VARCHAR(45) NULL,
  `rua` VARCHAR(45) NULL,
  `cep` VARCHAR(45) NULL,
  `Pessoa_idPessoa` INT NOT NULL,
  PRIMARY KEY (`idEndereco`),
  INDEX `fk_Endereco_Pessoa_idx` (`Pessoa_idPessoa` ASC) VISIBLE,
  CONSTRAINT `fk_Endereco_Pessoa`
    FOREIGN KEY (`Pessoa_idPessoa`)
    REFERENCES `Marcela`.`Pessoa` (`idPessoa`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
