-- Criando a tabela 'cidades' para armazenar informações sobre cidades
CREATE TABLE cidades (
    id INT PRIMARY KEY,                -- Identificador único da cidade
    nome VARCHAR(60) NOT NULL,        -- Nome da cidade, não pode ser nulo
    populacao INT                     -- População da cidade
);

-- Criando a tabela 'alunos' para armazenar informações sobre alunos
CREATE TABLE alunos (
    id INT PRIMARY KEY,                -- Identificador único do aluno
    nome VARCHAR(60) NOT NULL,        -- Nome do aluno, não pode ser nulo
    data_nasc DATE,                   -- Data de nascimento do aluno
    cidades_id INT,                   -- ID da cidade associada ao aluno
    FOREIGN KEY (cidades_id) REFERENCES cidades(id)  -- Chave estrangeira referenciando a tabela 'cidades'
);

-- Inserindo dados na tabela 'cidades'
INSERT INTO cidades (id, nome, populacao) VALUES
(1, 'São Paulo', 12325232),         -- Primeira cidade com ID 1
(2, 'Rio de Janeiro', 6747815),     -- Segunda cidade com ID 2
(3, 'Belo Horizonte', 2521564),     -- Terceira cidade com ID 3
(4, 'Curitiba', 1962496),           -- Quarta cidade com ID 4
(5, 'Salvador', 2922307);           -- Quinta cidade com ID 5

-- Inserindo dados na tabela 'alunos'
INSERT INTO alunos (id, nome, data_nasc, cidades_id) VALUES
(1, 'Ana Silva', '2000-05-15', 1),  -- Primeiro aluno, associado à cidade de São Paulo
(2, 'João Pereira', '1998-11-22', 2); -- Segundo aluno, associado à cidade do Rio de Janeiro
