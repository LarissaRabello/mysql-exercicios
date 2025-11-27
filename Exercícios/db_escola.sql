CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
    ID BIGINT AUTO_INCREMENT,
	Nome VARCHAR(255) NOT NULL,
	Sobrenome VARCHAR(255) NOT NULL,
    Nota1 INT,
	Nota2 INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_alunos(Nome, Sobrenome, Nota1, Nota2) 
VALUES 
("Larissa","Silva", 10, 10),
("Guilherme","Silva", 9, 10),
("Lucas","Silva", 10, 10),
("Sabrina","Soares", 7, 8),
("Sophia","Soares", 10, 10),
("Bernardo","Farias", 6, 7),
("Junior","Farias", 8, 10);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE Nota1 > 7;

SELECT * FROM tb_alunos WHERE Nota1 < 7;

UPDATE tb_alunos SET Nota1 = 7 WHERE ID = 6;
