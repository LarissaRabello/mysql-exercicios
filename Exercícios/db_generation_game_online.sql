CREATE DATABASE IF NOT EXISTS db_generation_game_online;
USE db_generation_game_online;

DROP TABLE IF EXISTS tb_classes;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS tb_personagens;

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    altura DECIMAL(4,2) NOT NULL,
    idade INT,
    nivel INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (ataque, defesa, categoria)
VALUES
(10366, 8597, "Super-poder"),
(7843, 12872, "Vítima"),
(9451, 10359, "Super-mind"),
(18366, 5971, "Super-ataque"),
(19455, 18684, "Super-defesa");

INSERT INTO tb_personagens (nome, altura, idade, nivel, classe_id)
VALUES
("Eleven", 1.65, 18, 236, 1),
("Vecna", 1.88, 20, 240, 3),
("Max", 1.65, 18, 232, 2),
("Lucas", 1.75, 19, 226, 4),
("Dustin", 1.63, 19, 229, 2),
("Mike", 1.77, 19, 227, 1),
("Will", 1.66, 19, 236, 3),
("Nancy", 1.66, 20, 228, 5);

SELECT p.nome, c.ataque
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.ataque > 2000;

SELECT p.nome, c.defesa
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.defesa BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagens
WHERE nome LIKE '%c%' OR nome LIKE '%C%';

SELECT p.id, p.nome, p.idade, p.nivel, c.categoria, c.ataque, c.defesa
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id;

SELECT p.nome, c.categoria
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.id
WHERE c.categoria = "Super-poder";




