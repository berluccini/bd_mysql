-- criar comentario
CREATE DATABASE db_quintanda;

USE db_quintanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT ,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade,data_validade,preco)
VALUES ( "tomate", 100, "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade,data_validade,preco)
VALUES ( "maça", 100, "2023-12-18", 11.00),
( "laranja", 100, "2023-12-10", 15.00),
( "banana", 100, "2023-12-15", 11.90),
( "uva", 100, "2023-12-9", 30.00),
( "melancia", 100, "2023-12-23", 20.00);



SELECT * FROM tb_produtos;
-- com where e a indetificacao;
-- com where e >< pesquisar com valores ou numeros;
-- or = ou,  and = e , 
-- where not e o atributo ele nao tras esse especifico;





-- 0000,00

ALTER TABLE tb_produtos  MODIFY preco decimal(6,2);

UPDATE tb_produtos SET preco = 11.90 WHERE id = 4;

-- desligar a trava;
-- SET SQL_SAFE_UPDATES = 1;

-- DROP TABLE tb_produtos;
-- apagar tabela;

-- DROP DATABASE ;
-- apaga o bancode dados inteiro;

DELETE FROM tb_produtos WHERE id = 3;
-- deletar um id ou tudo sem where;

INSERT INTO tb_produtos(nome, quantidade,data_validade,preco)
VALUES ( "jabuticaba", 200, "2023-12-25", 45.00);

ALTER TABLE tb_produtos ADD descricao varchar(255);
-- inserir atributo

ALTER TABLE td_produtos CHANGE nome nome_produto varchar(255); 
-- editar atributo

SELECT nome,preco FROM tb_produtos;
SELECT @@collation_database;
ALTER TABLE td_produros DROP descricao;
-- excluir atributo

SELECT nome, concat( ' R$', FORMAT (preco,2, 'pt_br')) AS preco FROM tb_produtos;
SELECT nome, date_format(data_validade, '%d%m%Y') AS data_validade FROM tb_produtos;