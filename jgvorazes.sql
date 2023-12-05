CREATE DATABASE db_jgvorazes;

USE db_jgvorazes;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
arma varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (tipo,arma)
VALUES ("guerreiro","espada/lança"),
("arqueiro","arco/flexa"),
("mago","cajado/varinha"),
("curandeiro","tomo/poçâo"),
("heroi","espada sagrada/escudo");
SELECT * FROM tb_classes;
-- DROP TABLE tb_classes;

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(255),
attack bigint,
defesa bigint,
nivel INT,
classes_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id));

INSERT INTO tb_personagens(nome,attack,defesa,nivel, classes_id)
VALUES ("Bryan","500",3000,"50","1"),
("Felipe","5000",1000,"100","5"),
("Pablo","4500",1500,"80","3"),
("Vinicios","3800",2000,"70","4"),
("Sponja","1900",3500,"30","2"),
("Gabriel","1950",2000,"20","1"),
("Luiza","1700",5000,"50","3"),
("amanda","1500",4000,"60","2");

-- DROP TABLE tb_personagens;
select * from tb_personagens;
SELECT * FROM tb_personagens WHERE attack > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000 order by defesa;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
 SELECT nome,attack,defesa, tb_classes.tipo 
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_personagens.classes_id = tb_classes.id;
SELECT nome,attack,defesa, tb_classes.tipo
 FROM tb_personagens INNER JOIN tb_classes
 ON tb_personagens.classes_id = tb_classes.id WHERE tb_classes.tipo = "guerreiro";
 
 
