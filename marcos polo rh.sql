CREATE DATABASE db_marcospolo;
USE db_marcospolo;

CREATE TABLE tb_rh(
id  bigint AUTO_INCREMENT ,
nome varchar(255) NOT NULL ,
data_admissao date NOT NULL,
cargo varchar(255) NOT NULL,
salario decimal (8,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_rh (nome,data_admissao,cargo,salario)
VALUES ( "Felipe", "2022-10-05","gerente" , 5000.00),
( "Vinicius", "2018-05-15","supervisor" , 4000.00),
( "Bryan", "2022-12-01","estagiario" , 1300.00),
( "Gabriel", "2022-04-12","vendedor" , 1800.00),
( "Rafa", "2021-02-14","auxilar administrativo" , 3500.00);

SELECT * FROM tb_rh;
SELECT * FROM tb_rh WHERE salario > 2000.00;
SELECT * FROM tb_rh WHERE salario < 2000.00;
UPDATE tb_rh SET  salario = 7000.00 WHERE id = 1;
