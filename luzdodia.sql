CREATE DATABASE db_luzdodia;
USE db_luzdodia;
CREATE TABLE tb_aulos(
id bigint AUTO_INCREMENT ,
nome varchar(255) NOT NULL,
idade int NOT NULL,
nota decimal(3,1) NOT NULL,
sexo varchar(255) NOT NULL,
PRIMARY KEY (id)
);
INSERT INTO tb_aulos(nome, idade,nota,sexo)
VALUES ("Bryan","10",8.5,"masculino"),
("Vinicius","12",9.0,"masculino"),
("Sponja","11",9.5,"masculino"),
("Felipe","12",8.0,"masculino"),
("Pablo","10",6.0,"masculino"),
("Luiza","12",4.3,"feminino"),
("amanda","10",5.0,"feminino"),
("Gabriel","13",7.5,"masculino");

SELECT * FROM tb_aulos;
SELECT * FROM tb_aulos WHERE nota > 7.0 ;
SELECT * FROM tb_aulos WHERE nota < 7.0
