-- criar schema ou banco

CREATE SCHEMA `zoo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci ;

-- script para criar uma tabela

CREATE TABLE `zoo`.`animal` (
  `codigo` INT NOT NULL AUTO_INCREMENT,
  `especie` VARCHAR(20) NOT NULL,
  `idade` INT NULL,
  `estavivo` TINYINT NULL,
  PRIMARY KEY (`codigo`));
  
  
  
-- DEFINIÇOES DE COMANDOS
  DDL - DATA DEFINITION LANGUAGE - LINGUAGEM DE DEFINIÇÃO DE DADOS
CREATE TABLE
ALTER TABLE
DROP TABLE

DML - DATA MANIPULATION LANGUAGE - LINGUAGEM DE MANUNIPULAÇÃO DE DADOS
CREATE   ---- INSERT  ---- INSERIR
READ     ---- SELECT  ---- CONSULTAR
UPDATE   ---- UPDATE  ---- ALTERAR 
DELETE   ---- DELETE  ---- EXCLUIR


--inserindo registros 

use zoo;

INSERT INTO animal(especie, idade, estavivo)values("rato",2,1);
INSERT INTO animal(especie, idade, estavivo)values("cachorro",5,1);
INSERT INTO animal(especie, idade, estavivo)values("hipopotamo",8,1);
INSERT INTO animal(especie, idade, estavivo)values("canelo",3,0);

-- consultando os registros

SELECT especie, idade, estavivo FROM animal;


