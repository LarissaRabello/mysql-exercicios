CREATE DATABASE IF NOT EXISTS db_pizzaria_legal;
USE db_pizzaria_legal;

DROP TABLE IF EXISTS tb_categorias;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS tb_pizzas;

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    borda_recheada BOOLEAN,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES
("Salgada", "Pizzas tradicionais salgadas"),
("Doce", "Pizzas doces e sobremesas"),
("Especial", "Sabores diferenciados e gourmets"),
("Vegana", "Pizzas sem ingredientes de origem animal"),
("Premium", "Ingredientes nobres e selecionados");

INSERT INTO tb_pizzas (nome, tamanho, preco, borda_recheada, categoria_id)
VALUES
("Margherita", "Grande", 42.90, FALSE, 1),
("Calabresa", "Grande", 49.90, TRUE, 1),
("Chocolate", "Média", 55.00, FALSE, 2),
("Prestígio", "Média", 60.00, TRUE, 2),
("Trufada Gourmet", "Grande", 89.90, FALSE, 3),
("Veggie Mix", "Grande", 47.50, FALSE, 4),
("Pepperoni Premium", "Grande", 72.00, TRUE, 5),
("Quatro Queijos", "Grande", 46.50, FALSE, 1);

SELECT * 
FROM tb_pizzas
WHERE preco > 45.00;

SELECT *
FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT *
FROM tb_pizzas
WHERE nome LIKE '%m%' OR nome LIKE '%M%';

SELECT p.id, p.nome, p.preco, c.tipo, c.descricao
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.nome, p.preco, c.tipo
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.tipo = "Doce";