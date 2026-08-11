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
    `ididsciplina` int,
    FOREIGN KEY (`ididsciplina`) REFERENCES `disciplina`(`id`)
);

CREATE TABLE `autor`(
    `matricula`int PRIMARY KEY,
    `nome`char (100),
    `email` char(100),
);

CREATE TABLE `trabalhocantor`(
    `idtrabalho`int,
    `matriculaautor`int,
    FOREIGN KEY (`idtrabalho`) REFERENCES `trabalho`(`id`)
    FOREIGN KEY (`matriculaautor`) REFERENCES `cantor`(`matricula`)
);
