CREATE TABLE `grupo` (
    `id` int PRIMARY KEY,
    `nome` varchar(100),
    `grauimportancia` int
);

CREATE TABLE `contato`(
    `id` int PRIMARY KEY,
    `ocupacao` varchar (100),
    `endereco` varchar (150),
    `email` varchar (50),
    `idgrupo` int,
    FOREIGN KEY (idgrupo) REFERENCES grupo(id)
);

CREATE TABLE `telefone`(
    `id` int PRIMARY KEY,
    `rotulo` int,
    `numero`int,
    `idcontato`int,
    FOREIGN KEY (idcontato) REFERENCES contato(id)
);