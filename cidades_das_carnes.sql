CREATE DATABASE db_cidade_das_carne;
USE db_cidade_das_carne;

CREATE TABLE tb_categorias(  
id bigint AUTO_INCREMENT,
tipo varchar(255),
kilo int,
primary key (id)
);
insert into tb_categorias(tipo,kilo)
values("bovino",10),
("suino",5),
("avicula",3),
("Piscícola",3),
("ovina",5);
select * from tb_categorias;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco int,
kg bigint,
dtvalidade date,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome,preco,kg,dtvalidade,categoria_id)
VALUES ("contra file",49.00,1,"2024-01-05",1),
("picanha",70.00,1,"2024-01-20",1),
("pernil",30.00,1,"2024-01-03",1),
("pernil",12.00,1,"2024-01-02",2),
("peito de peru",60.00,1,"2024-02-05",3),
("panceta",43.00,1,"2024-01-17",2),
("carre",59.00,1,"2024-01-15",5),
("salmao",43.00,1,"2023-12-31",4);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00 order by preco DESC;
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
SELECT nome,preco,kg,dtvalidade,tb_categorias.tipo 
 FROM tb_produtos INNER JOIN tb_categorias
 ON tb_produtos.categoria_id = tb_categorias.id;
SELECT nome,preco,kg,dtvalidade,tb_categorias.tipo 
 FROM tb_produtos INNER JOIN tb_categorias
 ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.tipo = "bovino";