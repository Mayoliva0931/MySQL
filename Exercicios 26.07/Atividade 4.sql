/*ATIVIDADE 4

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categorias(
id bigint auto_increment,
cadastro varchar(255),
bairro varchar(255),
primary key(id)
); 

create table tb_produtos(
id bigint auto_increment,
bovina varchar(225),
frango varchar(225),
peixe varchar(225),
preco double,
primary key(id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias (cadastro, bairro) value ('sim','Veneza');
insert into tb_categorias (cadastro, bairro) value ('não','Jd. das Flores');
insert into tb_categorias (cadastro, bairro) value ('sim','Veloso');
insert into tb_categorias (cadastro, bairro) value ('não','Baronesa');
insert into tb_categorias (cadastro, bairro) value ('sim','Santo Antonio');

insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Acém", "Asa", "bacalhau", 120.00, 1);
insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Alcantra", "coração", "piramutaba", 80.00, 2);
insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Carne moída", "Coxinha da asa", "Peroá", 85, 3);
insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Contra filé", "Filezinho", "Salmão", 150.00, 4);
insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Coxão duro", "Frango inteiro", "Sardinha", 59.00, 5);
insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Filé mignon", "Frango a passarinho", "Surubim", 135.00, 2);
insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Fraldinha", "Peito", "Tilápia", 75.00, 1);
insert into tb_produtos (bovina, frango, peixe, preco, categorias_id) value ("Picanha", "Coxa com sobrecoxa", "Salmão", 150.00, 3);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco >= 50 and preco <= 150;

select * from tb_produtos where bovina like "%C%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select tb_produtos.frango, tb_categorias.cadastro, tb_categorias.bairro from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.cadastro = "sim";
