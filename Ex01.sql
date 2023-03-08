CREATE DATABASE bd_RH;
USE bd_RecursosHumanos;

CREATE TABLE tb_Funcionarios(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    salario decimal(10,2),
    cpf VARCHAR(14),
     PRIMARY KEY (id)
    
);

INSERT INTO tb_Funcionarios(nome,cargo,salario,cpf)VALUES("Nicolas","Dev Junior", 4700.00, "445.244.856-88"),("Ariane","Dev Junior", 4700.00, "485.254.876-55"),("Arthur","Dev Junior", 4700.00, "475.879.474-74"),("Valdir","Rh", 1200.00, "777.254.456.23"),("Elisabett","Rh", 2100.00, "789.145.234-87");


    UPDATE tb_funcionarios SET cargo = "Dev Pleno" WHERE id = 1;
	UPDATE tb_funcionarios SET cargo = "Dev Pleno" WHERE id = 2;
	UPDATE tb_funcionarios SET salario = 5000.00 WHERE id = 1;
	UPDATE tb_funcionarios SET salario = 5000.00 WHERE id = 2;
	UPDATE tb_funcionarios SET salario = 1500.00 WHERE id = 3;



 SELECT * FROM  tb_Funcionarios  ;
    SELECT * FROM  tb_Funcionarios  WHERE salario > 2000.00;
    SELECT * FROM  tb_Funcionarios  WHERE salario < 2000.00;