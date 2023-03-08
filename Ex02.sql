CREATE DATABASE bd_Ecommerce;
USE  bd_Ecommerce;

CREATE TABLE tb_Produto(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
	preco DECIMAL(6,2), 
    quantidade BIGINT(200),
    colecao VARCHAR(255)
    

);
INSERT INTO tb_Produto(nome_produto,preco,quantidade,colecao)VALUES("Saia",50.20,50,"Verão"),("Blusa de Moletom", 120.00,54,"Inverno"),("Bermuda", 70.00,100,"Verão"),("Calça Jeans", 150.00,200,"Outono"),("Cardigan", 250.00,10,"Primavera"),("Calça de Moletom", 100.00,58,"Outono"),("Shorts jeans", 80.00,54,"Verão"),("Calça Sarja", 170.00,54,"Outono"),("Bermuda de moletom", 70.00,100,"Outono");
 SELECT * FROM  tb_Produto;

SET SQL_SAFE_UPDATES=0;
 UPDATE tb_Produto SET quantidade = 200 WHERE id = 1;
 UPDATE tb_Produto SET preco = 510.00 WHERE id = 1;

 
 
     SELECT * FROM  tb_Produto  WHERE preco > 500.00;
	 SELECT * FROM  tb_Produto  WHERE preco < 500.00;


 

