-- DROP DATABASE IF EXISTS `empresa`; -- Apaga o database, se ele já existir
-- CREATE DATABASE `empresa`;
-- USE `empresa`;
-- CREATE TABLE `cliente` (
--  `cpf` CHAR(14) PRIMARY KEY,
--  `nome` VARCHAR(100) NOT NULL,
--  `telefone` BIGINT NOT NULL
-- );
-- CREATE TABLE `empregado` (
--  `cpf` CHAR(14) PRIMARY KEY,
--  `nome` VARCHAR(100) NOT NULL,
--  `cargo` VARCHAR(100) NOT NULL
-- );
-- CREATE TABLE `projeto` (
--  `codProj` INT PRIMARY KEY AUTO_INCREMENT,
--  `nome` VARCHAR(100) NOT NULL,
--  `descricao` VARCHAR(100) NOT NULL,
--  `preco` DECIMAL(10,2) NOT NULL,
--  `dtFim` DATE NOT NULL,
--  `dtEstimada` DATE NOT NULL,
--  `dtSolicitacao` DATE NOT NULL,
--  `cpfGerente` CHAR(14) NOT NULL,
--  `cpfCliente` CHAR(14) NOT NULL,
--  FOREIGN KEY (`cpfCliente`) REFERENCES `cliente`(`cpf`),
--  FOREIGN KEY (`cpfGerente`) REFERENCES `empregado`(`cpf`)
-- );
-- CREATE TABLE `projEmp` (
--  `codProj` INT,
--  `cpfEmpregado` CHAR(14),
--  `hrTrab` FLOAT
-- );
-- ALTER TABLE `projEmp` 
-- ADD CONSTRAINT PRIMARY KEY (`codProj`, `cpfEmpregado`);
-- ALTER TABLE `projEmp` 
-- ADD CONSTRAINT FOREIGN KEY (`cpfEmpregado`) REFERENCES `empregado`(`cpf`);
-- ALTER TABLE `projEmp` 
-- ADD CONSTRAINT FOREIGN KEY (`codProj`) REFERENCES `projeto`(`codProj`);

-- 1. Insira um cliente chamado João da Silva, CPF 111.111.111-11, telefone 48991234567.

INSERT INTO `cliente` (`cpf`, `nome`, `telefone`)
VALUES ('111.111.111-11', 'João da Silva', '48991234567')
-- 2. Insira um cliente chamado Maria Oliveira, CPF 222.222.222-22, telefone 48997654321

INSERT INTO `cliente`(`cpf`, `nome`, `telefone`)
VALUES (`222.222.222-22`, ` Maria Oliveira`, `48997654321`)
-- 3. Cadastre o empregado Carlos Pereira, CPF 333.333.333-33, com cargo de "Analista de Sistemas"

INSERT INTO `cliente`(`nome`, `cpf`, `cargo`)
VALUES (`Carlos Pereira`, `333.333.333-33`, `Analista de sistemas`)
-- 4. Cadastre o empregado Ana Souza, CPF 444.444.444-44, com cargo de "Gerente de Projetos".

INSERT INTO `cliente`(`nome`, `cpf`, `cargo`)
VALUES (`Ana Souza`, `444.444.444-44`, `Gerente de Projetos`)
-- 5. Insira um projeto chamado "Sistema de Vendas", descrição "Plataforma para e-commerce", preço 15000.00, data de fim 2025-12-01, data 
-- estimada 2025-11-15, solicitação em 2025-09-10, gerenciado pela funcionária 444.444.444-44 e para o cliente 111.111.111-11.

