CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo VARCHAR(255) NOT NULL,
    dataadmissao DATE,
	salario DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, cargo, dataadmissao, salario) 
VALUES 
("Larissa","Desenvolvedora FullStack", "2026-01-05", 6000.00);

SELECT * FROM tb_colaboradores;

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(6,2);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cargo, dataadmissao, salario) 
VALUES 
("Dua","Desenvolvedora Android", "2026-01-05", 5000.00),
("Taylor","Desenvolvedora Back-End", "2026-01-05", 3500.00),
("Adele","Desenvolvedora Front-End", "2026-01-05", 7000.00),
("Harry","Desenvolvedora Android", "2026-01-05", 5000.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2.000;

INSERT INTO tb_colaboradores(nome, cargo, dataadmissao, salario)
VALUES 
("BLACKPINK","Analista de Dados", "2026-01-05", 1500.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

ALTER TABLE tb_colaboradores ADD nivel VARCHAR(255);

UPDATE tb_colaboradores SET nivel = "Junior" WHERE Id = 1;
UPDATE tb_colaboradores SET nivel = "Junior" WHERE Id = 2;
UPDATE tb_colaboradores SET nivel = "Junior" WHERE Id = 3;
UPDATE tb_colaboradores SET nivel = "Junior" WHERE Id = 4;
UPDATE tb_colaboradores SET nivel = "Junior" WHERE Id = 5;
UPDATE tb_colaboradores SET nivel = "Estagio" WHERE Id = 6;
