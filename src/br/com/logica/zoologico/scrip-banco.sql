-- criar schema ou banco

CREATE SCHEMA `zoo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci ;

-- script para criar uma tabela

CREATE TABLE `zoo`.`animal` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `especie` VARCHAR(20) NOT NULL,
  `idade` INT NULL,
  `estavivo` TINYINT NULL,
  PRIMARY KEY (`codigo`));

  DDL - DATA DEFINITION LANGUAGE - LINGUAGEM DE DEFINIÇÃO DE DADOS
CREATE TABLE
ALTER TABLE
DROP TABLE

DML - DATA MANIPULATION LANGUAGE - LINGUAGEM DE MANUNIPULAÇÃO DE DADOS
CREATE   ---- INSERT  ---- INSERIR
READ     ---- SELECT  ---- CONSULTAR
UPDATE   ---- UPDATE  ---- ALTERAR 
DELETE   ---- DELETE  ---- EXCLUIR