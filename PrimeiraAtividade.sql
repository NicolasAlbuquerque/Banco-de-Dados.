
-- comando para cria o banco de dados 
CREATE DATABASE db_quitanda;

-- comando que india ao mysql o banco de dados que estamos trabalhando.
USE db_quitanda;

-- criar a tabela 
CREATE TABLE tb_produtos(
-- nome das colunas e valores que ela vai aceitar.
	id BIGINT AUTO_INCREMENT, -- big int o tipo do dado / Auto_Increment é para definir automaticamnete 
    nome_produto VARCHAR(255),
	preco DECIMAL(6,2), -- seis numeros no total, dois após a virgula.	    

	PRIMARY KEY (id)
);


-- linguagem de manipulação de dados abaixo.

-- comando que tras todos os dados da tabela de produtos
-- * siginifica todos
SELECT * FROM  tb_produtos;

-- inserindo dados na tabela
INSERT INTO tb_produtos(nome_produto,preco) VALUES("Maçã", 3.00);
INSERT INTO tb_produtos(nome_produto,preco)VALUES("Goiaba", 4.00);
INSERT INTO tb_produtos(nome_produto,preco)VALUES("Banana", 6.00),("Amora",10.00),("Laranja",6.00),("Limão",5.00);

-- desativa o modo seguro E PERMITE UPDATE E DELETE
SET SQL_SAFE_UPDATES=0;

-- atualizar dado dentro da minha tabela



UPDATE tb_produtos SET nome_produto = "Maça" WHERE id = 1;
UPDATE tb_produtos SET nome_produto = "Pêra" WHERE id = 2;
UPDATE tb_produtos SET nome_produto = "Caju" WHERE id = 3;
UPDATE tb_produtos SET nome_produto = "Banana" WHERE id = 4;
UPDATE tb_produtos SET nome_produto = "Laranja" WHERE id = 5;
UPDATE tb_produtos SET nome_produto = "Goiaba" WHERE id = 6;
UPDATE tb_produtos SET nome_produto = "Uva" WHERE id = 7;




