-- para apagar meu banco de dados.
-- DROP database db_generation_game_online;
-- use db_generation_game_online;
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- tabela da direita
CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255),
    arma VARCHAR(255),
    asas BOOLEAN
);
-- tabela da esquerda
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    nivel BIGINT,
    ataque INT,
    defesa INT
  
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes (classe,arma,asas) 
VALUES  ("Dark Wizard", "Staff", true),
		("Dark Knight ", "Sword", false),
		("Muse Elf", "Arrow", true),
		("Summoner", "Staff", true),
		("Magic Gladiator", "Staff/Sword", false),
        ("Dark Lord", "Horse", false);
        
INSERT INTO tb_personagens (nome, nivel, ataque, defesa) 
VALUES  ("Nicolas", 2700, 3500,1500),
		("Rafael ", 1500, 2450,1300),
		("Paulo", 3000, 500,500),
        ("Ariane", 2000, 1500,1500),
        ("José", 2500, 1000,1500),
        ("Arthur", 2000, 2500,2500),
        ("Bruno", 2000, 500,500);
        
-- Adicionando a nova coluna na tabela personagem
 ALTER TABLE tb_personagens ADD classe_id BIGINT;
 
-- Adicionando a constraint
ALTER TABLE tb_personagens ADD CONSTRAINT fk_pensonagens_classes
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

-- alterando os valores
UPDATE tb_personagens SET classe_id = 1 WHERE id = 1;     
UPDATE tb_personagens SET classe_id = 2 WHERE id = 2;     
UPDATE tb_personagens SET classe_id = 2 WHERE id = 3;
UPDATE tb_personagens SET classe_id = 1 WHERE id = 4;  
UPDATE tb_personagens SET classe_id = 4 WHERE id = 5;
UPDATE tb_personagens SET classe_id = 5 WHERE id = 6;    
UPDATE tb_personagens SET classe_id = 0 WHERE id = 7;  
UPDATE tb_personagens SET classe_id = 5 WHERE id = 8;  


INSERT INTO tb_personagens (nome, nivel, ataque, defesa) 
VALUES  ("Nicolas2", 2700, 3500,1500);

SELECT * FROM  tb_personagens;

SELECT * FROM  tb_personagens WHERE ataque > 2000;
SELECT * FROM  tb_personagens WHERE ataque < 2000;
SELECT * FROM  tb_personagens WHERE nivel BETWEEN 1000 AND 2000;
SELECT * FROM  tb_personagens WHERE nome LIKE "c%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes
 ON tb_classes.id = tb_personagens.classe_id;


SELECT * FROM tb_personagens
right JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;
 
SELECT * FROM tb_personagens
left JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
 ON tb_classes.id = tb_personagens.classe_id WHERE classe = "Muse Elf";

