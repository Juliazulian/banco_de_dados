-- 1
SELECT `nome` AS 'Nome do Tutor',
       `cidade` AS 'Cidade'
FROM `Tutores`;

-- 2
SELECT `nome` AS 'Veterinário(a)',
       `especialidade` AS 'Especialidade'
FROM `Veterinarios`;

-- 3
SELECT `nome` AS 'Nome do Animal',
       `peso_kg` AS 'Peso (kg)'
FROM `Animais`;

-- 4
SELECT `dtConsulta` AS 'Data da Consulta',
       `custo` AS 'Valor (R$)'
FROM `Consultas`;

-- 5
SELECT `nome`
FROM `Tutores`
ORDER BY `nome` ASC;

-- 6
SELECT `nome`
FROM `Animais`
ORDER BY `nome` DESC;

-- 7
SELECT `nome`, `peso_kg`
FROM `Animais`
ORDER BY `peso_kg` DESC;

-- 8
SELECT `motivo`, `custo`
FROM `Consultas`
ORDER BY `custo` ASC;

-- 9
SELECT `nome`, `dtNascimento`
FROM `Animais`
ORDER BY `dtNascimento` DESC;

-- 10
SELECT `nome`, `dtNascimento`
FROM `Animais`
ORDER BY `dtNascimento` ASC;

-- 11
SELECT `motivo`, `dtConsulta`
FROM `Consultas`
ORDER BY `dtConsulta` DESC;

-- 12
SELECT `nome`, `especie`
FROM `Animais`
ORDER BY `especie` ASC, `nome` ASC;

-- 13
SELECT * FROM `Animais` 
ORDER BY `idAnimal` LIMIT 5,0;

-- 14
SELECT * FROM `Consultas`
ORDER BY `idConsultas` LIMIT 3;