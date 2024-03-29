-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mini_mundo_editora
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mini_mundo_editora
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mini_mundo_editora` DEFAULT CHARACTER SET utf8 ;
USE `mini_mundo_editora`;

-- -----------------------------------------------------
-- Table `mini-mundo-editora`.`FUNCIONARIOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`FUNCIONARIOS` (
  `cpf` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(60) NOT NULL,
  `nomesocial` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `sexo` CHAR(1) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `data_adm` DATE NOT NULL,
  `data_dem` DATE NOT NULL,
  `salario` DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (`cpf`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`LIVRARIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`LIVRARIA` (
  `cnpj` VARCHAR(45) NOT NULL,
  `nome_livraria` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`cnpj`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`VENDA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`VENDA` (
  `Id_venda` INT NOT NULL,
  `data` DATE NOT NULL,
  `cumpom_fiscal` VARCHAR(45) NOT NULL,
  `desconto` DECIMAL(4,2) NOT NULL,
  `valor_total` DECIMAL(6,2) NOT NULL,
  `FUNCIONARIOS_cpf` VARCHAR(14) NOT NULL,
  `LIVRARIA_cnpj` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_venda`),
  INDEX `fk_VENDA_FUNCIONARIOS_idx` (`FUNCIONARIOS_cpf` ASC) VISIBLE,
  INDEX `fk_VENDA_LIVRARIA1_idx` (`LIVRARIA_cnpj` ASC) VISIBLE,
  CONSTRAINT `fk_VENDA_FUNCIONARIOS`
    FOREIGN KEY (`FUNCIONARIOS_cpf`)
    REFERENCES `mini_mundo_editora`.`FUNCIONARIOS` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_VENDA_LIVRARIA1`
    FOREIGN KEY (`LIVRARIA_cnpj`)
    REFERENCES `mini_mundo_editora`.`LIVRARIA` (`cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`DEPARTAMENTO` (
  `id` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `local` VARCHAR(45) NOT NULL,
  `horario` VARCHAR(30) NOT NULL,
  `GERENCIA_FUNCIONARIOS_cpf` VARCHAR(14) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`EDITORA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`EDITORA` (
  `cnpj_editora` VARCHAR(18) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `DEPARTAMENTO_id` INT NOT NULL,
  PRIMARY KEY (`cnpj_editora`),
  INDEX `fk_EDITORA_DEPARTAMENTO1_idx` (`DEPARTAMENTO_id` ASC) VISIBLE,
  CONSTRAINT `fk_EDITORA_DEPARTAMENTO1`
    FOREIGN KEY (`DEPARTAMENTO_id`)
    REFERENCES `mini_mundo_editora`.`DEPARTAMENTO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`EXEMPLARES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`EXEMPLARES` (
  `Id_exemplares` INT NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `codigo_barra` VARCHAR(45) NOT NULL,
  `descricao` VARCHAR(150) NOT NULL,
  `quantidade` VARCHAR(45) NOT NULL,
  `EDITORA_cnpj_editora` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Id_exemplares`),
  INDEX `fk_EXEMPLARES_EDITORA1_idx` (`EDITORA_cnpj_editora` ASC) VISIBLE,
  CONSTRAINT `fk_EXEMPLARES_EDITORA1`
    FOREIGN KEY (`EDITORA_cnpj_editora`)
    REFERENCES `mini_mundo_editora`.`EDITORA` (`cnpj_editora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`AUTORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`AUTORES` (
  `cpf` VARCHAR(14) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `sexo` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(11) NOT NULL,
  `DEPARTAMENTO_id` INT NOT NULL,
  PRIMARY KEY (`cpf`),
  INDEX `fk_AUTORES_DEPARTAMENTO1_idx` (`DEPARTAMENTO_id` ASC) VISIBLE,
  CONSTRAINT `fk_AUTORES_DEPARTAMENTO1`
    FOREIGN KEY (`DEPARTAMENTO_id`)
    REFERENCES `mini_mundo_editora`.`DEPARTAMENTO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`ENDERECO_FUNCIONARIO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`ENDERECO_FUNCIONARIO` (
  `FUNCIONARIOS_cpf` VARCHAR(14) NOT NULL,
  `UF` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `comp` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`FUNCIONARIOS_cpf`),
  CONSTRAINT `fk_ENDERECO_FUNCIONARIO_FUNCIONARIOS1`
    FOREIGN KEY (`FUNCIONARIOS_cpf`)
    REFERENCES `mini_mundo_editora`.`FUNCIONARIOS` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`CARGO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`CARGO` (
  `cbo` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cbo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`TRABALHAM`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`TRABALHAM` (
  `DEPARTAMENTO_id` INT NOT NULL,
  `CARGO_cbo` INT NOT NULL,
  `FUNCIONARIOS_cpf` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`DEPARTAMENTO_id`, `CARGO_cbo`, `FUNCIONARIOS_cpf`),
  INDEX `fk_TRABALHAM_DEPARTAMENTO1_idx` (`DEPARTAMENTO_id` ASC) VISIBLE,
  INDEX `fk_TRABALHAM_CARGO1_idx` (`CARGO_cbo` ASC) VISIBLE,
  INDEX `fk_TRABALHAM_FUNCIONARIOS1_idx` (`FUNCIONARIOS_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_TRABALHAM_DEPARTAMENTO1`
    FOREIGN KEY (`DEPARTAMENTO_id`)
    REFERENCES `mini_mundo_editora`.`DEPARTAMENTO` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TRABALHAM_CARGO1`
    FOREIGN KEY (`CARGO_cbo`)
    REFERENCES `mini_mundo_editora`.`CARGO` (`cbo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TRABALHAM_FUNCIONARIOS1`
    FOREIGN KEY (`FUNCIONARIOS_cpf`)
    REFERENCES `mini_mundo_editora`.`FUNCIONARIOS` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`ITENS_VENDA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`ITENS_VENDA` (
  `VENDA_Id_venda` INT NOT NULL,
  `EXEMPLARES_Id_exemplares` INT NOT NULL,
  `quantidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`VENDA_Id_venda`, `EXEMPLARES_Id_exemplares`),
  INDEX `fk_ITENS_VENDA_VENDA1_idx` (`VENDA_Id_venda` ASC) VISIBLE,
  INDEX `fk_ITENS_VENDA_EXEMPLARES1_idx` (`EXEMPLARES_Id_exemplares` ASC) VISIBLE,
  CONSTRAINT `fk_ITENS_VENDA_VENDA1`
    FOREIGN KEY (`VENDA_Id_venda`)
    REFERENCES `mini_mundo_editora`.`VENDA` (`Id_venda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ITENS_VENDA_EXEMPLARES1`
    FOREIGN KEY (`EXEMPLARES_Id_exemplares`)
    REFERENCES `mini_mundo_editora`.`EXEMPLARES` (`Id_exemplares`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`AREA_CONHECIMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`AREA_CONHECIMENTO` (
  `codigo` INT NOT NULL,
  `nome_area` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codigo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`GERENCIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`GERENCIA` (
  `FUNCIONARIOS_cpf` VARCHAR(14) NOT NULL,
  `funcaoGrat` DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (`FUNCIONARIOS_cpf`),
  INDEX `fk_GERENCIA_FUNCIONARIOS1_idx` (`FUNCIONARIOS_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_GERENCIA_FUNCIONARIOS1`
    FOREIGN KEY (`FUNCIONARIOS_cpf`)
    REFERENCES `mini_mundo_editora`.`FUNCIONARIOS` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`ENDERECO_LIVRARIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`ENDERECO_LIVRARIA` (
  `LIVRARIA_cnpj` VARCHAR(45) NOT NULL,
  `UF` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `comp` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`LIVRARIA_cnpj`),
  CONSTRAINT `fk_ENDERECO_LIVRARIA_LIVRARIA1`
    FOREIGN KEY (`LIVRARIA_cnpj`)
    REFERENCES `mini_mundo_editora`.`LIVRARIA` (`cnpj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`ENDERECO_AUTORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`ENDERECO_AUTORES` (
  `AUTORES_cpf` VARCHAR(14) NOT NULL,
  `UF` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `comp` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`AUTORES_cpf`),
  CONSTRAINT `fk_ENDERECO_AUTORES_AUTORES1`
    FOREIGN KEY (`AUTORES_cpf`)
    REFERENCES `mini_mundo_editora`.`AUTORES` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`AUTORES_has_EXEMPLARES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`AUTORES_has_EXEMPLARES` (
  `AUTORES_cpf` VARCHAR(14) NOT NULL,
  `EXEMPLARES_Id_exemplares` INT NOT NULL,
  PRIMARY KEY (`AUTORES_cpf`, `EXEMPLARES_Id_exemplares`),
  INDEX `fk_AUTORES_has_EXEMPLARES_EXEMPLARES1_idx` (`EXEMPLARES_Id_exemplares` ASC) VISIBLE,
  INDEX `fk_AUTORES_has_EXEMPLARES_AUTORES1_idx` (`AUTORES_cpf` ASC) VISIBLE,
  CONSTRAINT `fk_AUTORES_has_EXEMPLARES_AUTORES1`
    FOREIGN KEY (`AUTORES_cpf`)
    REFERENCES `mini_mundo_editora`.`AUTORES` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AUTORES_has_EXEMPLARES_EXEMPLARES1`
    FOREIGN KEY (`EXEMPLARES_Id_exemplares`)
    REFERENCES `mini_mundo_editora`.`EXEMPLARES` (`Id_exemplares`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mini_mundo_editora`.`EXEMPLARES_has_AREA_CONHECIMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mini_mundo_editora`.`EXEMPLARES_has_AREA_CONHECIMENTO` (
  `EXEMPLARES_Id_exemplares` INT NOT NULL,
  `AREA_CONHECIMENTO_codigo` INT NOT NULL,
  PRIMARY KEY (`EXEMPLARES_Id_exemplares`, `AREA_CONHECIMENTO_codigo`),
  INDEX `fk_EXEMPLARES_has_AREA_CONHECIMENTO_AREA_CONHECIMENTO1_idx` (`AREA_CONHECIMENTO_codigo` ASC) VISIBLE,
  INDEX `fk_EXEMPLARES_has_AREA_CONHECIMENTO_EXEMPLARES1_idx` (`EXEMPLARES_Id_exemplares` ASC) VISIBLE,
  CONSTRAINT `fk_EXEMPLARES_has_AREA_CONHECIMENTO_EXEMPLARES1`
    FOREIGN KEY (`EXEMPLARES_Id_exemplares`)
    REFERENCES `mini_mundo_editora`.`EXEMPLARES` (`Id_exemplares`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_EXEMPLARES_has_AREA_CONHECIMENTO_AREA_CONHECIMENTO1`
    FOREIGN KEY (`AREA_CONHECIMENTO_codigo`)
    REFERENCES `mini_mundo_editora`.`AREA_CONHECIMENTO` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- Alter Table --
alter table funcionarios add column ctps VARCHAR(15) after telefone;

alter table autores add column rg VARCHAR(12) after nome;

alter table exemplares add column ano_de_publicacao INT after descricao;

alter table exemplares add column `compra/aluguel` VARCHAR(20) after ano_de_publicacao;

alter table departamento add column email VARCHAR(50) after telefone;


-- DROPS --
/*drop view ContatoAutores;*/

/*drop view editoraArea;*/

/*drop database mini_mundo_editora;*/


