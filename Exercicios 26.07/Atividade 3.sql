/* ATIVIDADE 3

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
*/
create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
cadastro varchar(255),
endereço varchar(255),
primary key(id)
); 

create table tb_produtos(
id bigint auto_increment,
medicamentos varchar(225),
Fitness varchar(225),
higiene varchar(225),
preco double,
primary key(id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias (cadastro, endereço) value ('sim','Rua Veneza');
insert into tb_categorias (cadastro, endereço) value ('não','Rua das Flores');
insert into tb_categorias (cadastro, endereço) value ('sim','Rua José de Oliveira');
insert into tb_categorias (cadastro, endereço) value ('não','Rua das Laranjeiras');
insert into tb_categorias (cadastro, endereço) value ('sim','Avenida Brasil ');

insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Antigripais", "Cereais", "Shampoos", 60.00, 1);
insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Sulfonilureias", " Shakes", "Sabonete", 45.00, 5);
insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Corticoides", "Isotônicos", "Desodorantes", 70.00, 3);
insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Cimetidina", "Emagrecedores", "Absorventes", 85.00, 4);
insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Antileucotrienos", "Shakes", "Escovas de Dentes", 40.00, 2);
insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Captopril 25mg", "Isotônicos", "lenços umedecidos", 38.00, 1);
insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Omeprazol", "Whey", "Sabonete", 97.00, 5);
insert into tb_produtos (medicamentos, Fitness , higiene, preco, categorias_id) value ("Hidroclorotiazida 25mg", "Energéticos", "Desodorantes", 56.00, 2);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco >= 5 and preco <= 60;

select * from tb_produtos where medicamentos like "%C%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select tb_produtos.medicamentos, tb_categorias.cadastro, tb_categorias.endereço from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.cadastro = "sim";

