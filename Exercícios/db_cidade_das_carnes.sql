CREATE DATABASE IF NOT EXISTS db_cidade_das_carnes;
USE db_cidade_das_carnes;

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
    preco_kg DECIMAL(7,2) NOT NULL,
    origem VARCHAR(255) NOT NULL,
    estoque_kg DECIMAL(6,2) NOT NULL,
    categoria_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao)
VALUES
("Bovinos", "Carnes provenientes de gado bovino"),
("Suínos", "Carnes provenientes de porcos"),
("Aves", "Carnes de aves em geral"),
("Peixes", "Peixes e frutos do mar"),
("Embutidos", "Produtos processados e defumados");

INSERT INTO tb_produtos (nome, preco_kg, origem, estoque_kg, categoria_id)
VALUES
("Picanha", 89.90, "Frigorífico São João", 50.0, 1),
("Alcatra", 64.50, "Fazenda Ouro Verde", 80.0, 1),
("Linguiça Toscana", 29.90, "Sadia", 40.0, 5),
("Costelinha Suína", 38.00, "Perdigão", 60.0, 2),
("Frango Inteiro", 12.90, "Granja Boa Vista", 120.0, 3),
("Coxa e Sobrecoxa", 15.50, "Granja Santa Maria", 100.0, 3),
("Salmão", 115.00, "Mar Azul Pescados", 25.0, 4),
("Bacalhau", 149.90, "Porto de Lisboa", 15.0, 4);

SELECT *
FROM tb_produtos
WHERE preco_kg > 50.00;

SELECT *
FROM tb_produtos
WHERE preco_kg BETWEEN 50.00 AND 150.00;

SELECT *
FROM tb_produtos
WHERE nome LIKE '%c%' OR nome LIKE '%C%';

SELECT p.id, p.nome, p.preco_kg, p.origem, c.tipo, c.descricao
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

SELECT p.nome, p.preco_kg, c.tipo
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.tipo = "Aves";