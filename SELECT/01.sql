--Listar todas as informações da tabela de animais
SELECT * FROM `animais`;

--Listar apenas o nome, email e cidade de todos os tutores
SELECT `nome`, `email`, `cidade` FROM `tutores`;

--Listar o nome e a especialidade de todos os veterinários
SELECT `nome`, `especialidade` FROM `veterinários`;

--Listar apenas o motivo e o custo de todas as consultas
SELECT `motivo`, `custo` FROM `consultas`;