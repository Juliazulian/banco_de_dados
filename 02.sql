CREATE TABLE `cantor`(
    `id`int PRIMARY KEY,
    `nome`varchar (100),
);

CREATE TABLE `musica`(
    `id`int PRIMARY KEY,
    `titulo` varchar(100),
    `letra` text,
);

CREATE TABLE `gravacao`(
    `id`int PRIMARY KEY,
    `duracao` time,
    `idcantor`int,
    `idmusica`int,
    FOREIGN KEY (`idcantor`) REFERENCES `cantor`(`id`),
    FOREIGN KEY (`idmusica`) REFERENCES `musica`(`id`)
);

CREATE TABLE `compositor`(
    `cpf`int PRIMARY KEY,
    `nome`varchar(100)
);

CREATE TABLE `musicacompositor`(
    `cpfcompositor` int,
    `idmusica` int,
    FOREIGN KEY (`idmusica`) REFERENCES `compositor` (`cpf`)
    FOREIGN KEY (`idmusica`) REFERENCES `musica` (`id`)
);