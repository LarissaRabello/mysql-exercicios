CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    nivel VARCHAR(100) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Java', 'Cursos voltados ao ecossistema Java'),
('Python', 'Cursos sobre desenvolvimento em Python'),
('Front-end', 'Cursos de desenvolvimento Web'),
('Banco de Dados', 'Cursos sobre bancos de dados'),
('DevOps', 'Cursos relacionados a infraestrutura e automação');

INSERT INTO tb_cursos (nome, carga_horaria, preco, nivel, categoria_id) VALUES
('Java Fundamentos', 40, 550.00, 'Iniciante', 1),
('Java Web com Spring', 60, 890.00, 'Intermediário', 1),
('Python para Dados', 50, 750.00, 'Intermediário', 2),
('Python Essencial', 30, 480.00, 'Iniciante', 2),
('HTML e CSS', 20, 250.00, 'Iniciante', 3),
('JavaScript Completo', 45, 620.00, 'Intermediário', 3),
('MySQL do Zero ao Avançado', 35, 530.00, 'Intermediário', 4),
('DevOps com Docker', 55, 970.00, 'Avançado', 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT * FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Java';
