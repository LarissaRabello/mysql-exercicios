CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Hidráulica', 'Produtos para instalações hidráulicas'),
('Elétrica', 'Produtos para instalações elétricas'),
('Pintura', 'Tintas e materiais para pintura'),
('Ferramentas', 'Ferramentas manuais e elétricas'),
('Estrutura', 'Materiais estruturais');

INSERT INTO tb_produtos (nome, marca, preco, estoque, categoria_id) VALUES
('Cano PVC 50mm', 'Tigre', 45.90, 120, 1),
('Conduíte 20mm', 'Fortlev', 32.50, 200, 2),
('Tinta Acrílica 18L', 'Suvinil', 189.90, 40, 3),
('Marreta 1kg', 'Tramontina', 79.90, 25, 4),
('Saco de Cimento 50kg', 'Votoran', 36.00, 100, 5),
('Caixa d’água 500L', 'Fortlev', 420.00, 10, 1),
('Alicate Universal', 'Tramontina', 58.00, 60, 4),
('Rolo de Pintura 23cm', 'Atlas', 27.00, 80, 3);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome = 'Hidráulica';
