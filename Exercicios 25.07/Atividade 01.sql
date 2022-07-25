/*
ATIVIDADE 01

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

*/

CREATE database db_servico_rh;

use db_servico_rh;


CREATE TABLE tb_colaboradores (
	id bigint auto_increment,
    nome char(255),
    salario double,
    cpf char(255),
    cargo char(255),
    primary key(id)
);


INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Mayara", 13000.00, "43923478998", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Catarina", 16000.00, "43923478996", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Pyetra", 7000.00, "43923478923", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Kaio", 9000.00, "43923478945", "dev");
INSERT INTO tb_colaboradores(nome, salario, cpf, cargo) value("Kaue", 5000.00, "43923478976", "dev");


SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1200 WHERE id = 1; 


