CREATE DATABASE IF NOT EXISTS db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

DROP TABLE IF EXISTS tb_categorias;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS tb_produtos;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES
("Medicamento", "Remédios em geral de uso controlado ou comum"),
("Higiene", "Produtos de higiene pessoal"),
("Cosmético", "Produtos estéticos e de beleza"),
("Vitaminas", "Vitaminas e suplementos"),
("Infantil", "Produtos voltados para bebês e crianças");

INSERT INTO tb_produtos (nome, marca, preco, quantidade_estoque, categoria_id)
VALUES
("Dipirona 500mg", "Medley", 8.50, 120, 1),
("Ibuprofeno 400mg", "Neo Química", 14.90, 80, 1),
("Shampoo Anticaspa", "Clear", 32.00, 50, 2),
("Creme Corporal", "Nivea", 27.90, 70, 3),
("Base Líquida", "Maybelline", 59.90, 60, 3),
("Vitamina C 500mg", "Sundown", 45.00, 40, 4),
("Fralda Infantil G", "Pampers", 89.90, 30, 5),
("Sabonete Líquido", "Dove", 16.50, 100, 2);

SELECT *
FROM tb_produtos
WHERE preco > 50.00;

SELECT *
FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT *
FROM tb_produtos
WHERE nome LIKE '%c%' OR nome LIKE '%C%';

SELECT p.id, p.nome, p.marca, p.preco, c.tipo, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.preco, c.tipo
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.tipo = "Cosmético";