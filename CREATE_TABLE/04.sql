CREATE TABLE `usuario`(
    `id`int PRIMARY KEY,
    `ctgpreferido` varchar (`150`),
    `cidade` varchar (100),
    `sexo` varchar (20),
    `idade` int,
    `nome`varchar (100),
);

CREATE TABLE `foto`(
    `id`int PRIMARY KEY,
    `arquivo`char,
    `formato`varchar (30),
    `idusuario`int ,
    FOREIGN KEY (`idusuario`) REFERENCES `usuario`(`id`)
);

CREATE TABLE `avalia`(
    `id`int PRIMARY KEY,
    `avaliacao` varchar (300),
    `avaliador` int,
    `avaliado`int,
    FOREIGN KEY (`avaliador`) REFERENCES `usuario`(`id`)
    FOREIGN KEY (`avaliado`) REFERENCES `usuario`(`id`)
);
