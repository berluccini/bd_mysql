CREATE DATABASE db_gastos;
USE db_gastos;

CREATE TABLE tb_mensal(
id  bigint AUTO_INCREMENT ,
nome varchar(255) NOT NULL ,
valor decimal (6,2),
data_validade date NOT NULL,
salario decimal (8,2),
PRIMARY KEY (id)
);
INSERT INTO tb_mensal (nome,valor,data_validade,salario)
VALUES ("cartoes","2500.00","2024-01-05",3400.00),
("agualuz","300.00","2024-01-05","3400.00"),
("internet",200.00,"2024-01-05","3400.00"),
("pensao",396.00,"2024-01-05","3400.00"),
("aluguel","700.00","2024-01-05",3400.00),
("reserva","100.00","2024-01-05","3400.00");

SELECT * FROM tb_mensal;

DROP TABLE tb_mensal;