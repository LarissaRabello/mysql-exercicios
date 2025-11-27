CREATE DATABASE db_ecommercest;

USE db_ecommercest;

CREATE TABLE tb_produtos(
    ID BIGINT AUTO_INCREMENT,
	Produto VARCHAR(255) NOT NULL,
	Categoria VARCHAR(255) NOT NULL,
    Estoque INT,
	Preço DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(Produto, Categoria, Estoque, Preço) 
VALUES 
("Camiseta Stranger Things","Roupas", 500, 59.90),
("Moletom Stranger Things","Roupas", 800, 159.90),
("Boné Dustin Henderson","Acessórios", 1500, 39.90),
("Par de Meia Vecna","Roupas", 700, 19.90),
("Fone de ouvido Max Mayfield","Eletrônicos", 15, 259.90),
("Mochila Lucas Sinclair","Acessórios", 80, 179.90),
("Jaqueta de Couro Billy","Roupas", 5, 459.90),
("Calça Jeans Skinny Robin Bucky","Roupas", 500, 99.90);

ALTER TABLE tb_produtos MODIFY Preço DECIMAL(6,2);

SELECT * FROM tb_produtos WHERE Preço > 500.00;

SELECT * FROM tb_produtos WHERE Preço < 500.00;

UPDATE tb_produtos SET Preço = 559.00 WHERE ID = 7;


