CREATE DATABASE db_variedades;
USE db_variedades;
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT ,
nome varchar(255) NOT NULL,
quantidade int NOT NULL,
descricao varchar (255) NOT NULL,
preco decimal NOT NULL,
PRIMARY KEY (id)
);
INSERT INTO tb_produtoS(nome, quantidade,descricao,preco)
VALUES ("capacete","300","capacete vermelho com preto", 500.00),
("luvas","200","protecao para as maos",120.00),
("antenas","400","protecao contra linhas ",50.00),
("carregador","300","carregador de celular para moto", 80.00),
("manopla","200","manopla esportiva", 150.00),
("capadechuva","300","capa de chuva ", 150.00),
("bag","300","axulia no transporte de carga", 200.00),
("assento","300","protecao para assento com insolante termico ", 600.00);

SELECT * FROM tb_produtoS;
SELECT * FROM tb_produtoS WHERE preco > 500.00;
SELECT * FROM tb_produtoS WHERE preco < 500.00;
UPDATE tb_produtoS SET preco = 700.00 WHERE id = 1;