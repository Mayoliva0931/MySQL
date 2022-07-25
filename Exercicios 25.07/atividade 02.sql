/*
ATIVIDADE 2

Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
CREATE DATABASE DB_SERVICO;

USE DB_SERVICO;

CREATE TABLE TB_PRODUTOS(
ID BIGINT AUTO_INCREMENT,
NOME CHAR(255),
CODIGO BIGINT,
MARCA CHAR(255),
PRECO DOUBLE,
PRIMARY KEY(ID)
);

INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("TELEVISÃO", 34213 , "LG", 4000.00);
INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("FOGÃO", 35423 , "CONSUL", 1900.00);
INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("GELADEIRA", 43214 , "ELETROLUX", 5000.00);
INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("SOFA", 765476, "ESTOFADOS", 3450.00);
INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("MESA DE CANTO", 564321 , "MADEIRAS", 560.00);
INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("XBOX", 87456 , "XBOX", 4000.00);
INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("MICROONDAS", 65784 , "BRASTEMP", 1000.00);
INSERT INTO TB_PRODUTOS(NOME, CODIGO, MARCA, PRECO ) value ("CAFETEIRA", 567432 , "MONDIAL", 540.00);

SELECT * FROM TB_PRODUTOS WHERE PRECO > 500;
SELECT * FROM TB_PRODUTOS WHERE PRECO < 500;

UPDATE TB_PRODUTOS SET PRECO = 300 WHERE id = 8; 

