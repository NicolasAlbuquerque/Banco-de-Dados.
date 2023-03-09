CREATE DATABASE db_RegistroEscolas;

USE db_RegistroEscolas;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    nota DECIMAL(4,2),
	matricula VARCHAR(255),
    turma VARCHAR(255),
	periodo VARCHAR(255),
    transporte BOOLEAN
);
 

INSERT INTO tb_estudantes(nome, nota, matricula, turma,periodo,
transporte) VALUES("Jonas", 10.00,"c789","61", "Integral",true),
("Nick", 10.00,"a123","61", "Integral",true),
("Kevin", 6.00,"d896","61", "Noturno",true),
("Joe", 10.00,"a184","61", "Integral",true),
("Wallace", 8.00,"b456","61", "Integral",false),
("Nicolas", 10.00,"a847","61", "Integral",true),
("Cleubio", 7.00,"a123","61", "Integral",true),
("Mitch", 10.00,"a784","61", "Integral",true);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota >= 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

SET SQL_SAFE_UPDATES=0;

 UPDATE tb_estudantes 
 SET nota=10, matricula = 7070
 WHERE id=7;
