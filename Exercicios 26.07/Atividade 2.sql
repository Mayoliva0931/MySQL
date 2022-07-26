/* ATIVIDADES 2

Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
Insira 5 registros na tabela tb_categorias.
Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
cadastro varchar(255),
endereço varchar(255),
primary key(id)
); 

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255),
preco double,
tamanho varchar(255),
refrigerante varchar(225),
primary key(id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

select * from tb_categorias;
select * from tb_pizzas;

insert into tb_categorias (cadastro, endereço) value ('sim','Rua Veneza');
insert into tb_categorias (cadastro, endereço) value ('não','Rua das Flores');
insert into tb_categorias (cadastro, endereço) value ('sim','Rua José de Oliveira');
insert into tb_categorias (cadastro, endereço) value ('não','Rua das Laranjeiras');
insert into tb_categorias (cadastro, endereço) value ('sim','Avenida Brasil ');

insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("calabresa", 25.00, "broto", "coca cola", 1);
insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("mussarela", 30.00, "grande", "soda", 3);
insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("protuguesa", 50.00, "grande", "fanta", 5);
insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("brocolis", 32.00, "broto", "guarana", 2);
insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("frango c/catupiry", 45.00, "grande", "dolly", 1);
insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("calabresa", 35.00, "grande", "sprite", 1);
insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("napolitana", 38.00, "broto", "fanta", 4);
insert into tb_pizzas (sabor, preco, tamanho, refrigerante, categorias_id) value ("Marguerita", 34.00, "grande", "coca cola", 1);

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco >= 50 and preco <= 100;

select * from tb_pizzas where sabor like "%M%";

select * from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id;

select tb_pizzas.sabor, tb_categorias.cadastro, tb_categorias.endereço from tb_pizzas 
inner join tb_categorias on tb_categorias.id = tb_pizzas.categorias_id where tb_categorias.cadastro = "sim";
