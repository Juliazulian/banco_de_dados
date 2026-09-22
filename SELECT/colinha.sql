--Mostrar todos os produtos
SELECT * FROM `produtos`;

--Apenas nome e fabricante dos produtos
SELECT `nome`, `fabricante` FROM `produtos`;

--Filtrar por fabricante específico
SELECT * FROM `produtos` WHERE `fabricante`='GamerGear'

--Filtrar pela categoria 1 (Notebooks)
SELECT * FROM `produtos` WHERE `idCategoria_fk` = 1;

--Filtrar produtos com estoque maior que 15
SELECT * FROM `produtos` WHERE `estoque` > 15;

--Filtrar produtos com data de cadastro antes de março de 2024
--Padrão: ano-mes-dia
SELECT * FROM `produtos` WHERE `dtCategoria` < '2024-03-01' ;

--Produtos que tenham 'laptop' no nome
SELECT * FROM `produtos` WHERE `nome` LIKE '%laptop%';

