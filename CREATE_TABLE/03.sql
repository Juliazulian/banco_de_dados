CREATE TABLE `disciplina`(
    `id`int PRIMARY KEY,
    `nome`char (100),
    `ano/semestre`int,
    `cargahoraria` int,
);

CREATE TABLE `trabalho`(
    `id`int PRIMARY KEY,
    `titulo`char (100),
    `arquivo`varchar,
    `dataentrega` DATE,
    `nota` FLOAT,
    `iddisciplina` int,
    FOREIGN KEY (`iddisciplina`) REFERENCES `disciplina`(`id`)
);

CREATE TABLE `autor` (
    `matricula` int PRIMARY KEY,
    `nome` varchar(100),
    `email` varchar(100)
);

CREATE TABLE `trabalhoautor` (
    `idtrabalho` int,
    `matriculaautor` int,
    PRIMARY KEY (`idtrabalho`, `matriculaautor`),
    FOREIGN KEY (`idtrabalho`) REFERENCES `trabalho`(`id`),
    FOREIGN KEY (`matriculaautor`) REFERENCES `autor`(`matricula`)
);
