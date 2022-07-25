/*
ATIVIDADE 3

Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE DB_ESCOLAR;

USE DB_ESCOLAR;

CREATE TABLE TB_ALUNOS(
ID BIGINT AUTO_INCREMENT,
NOME CHAR(255),
RA BIGINT,
SERIE CHAR(255),
NOTA DOUBLE,
primary key(ID)
);


INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('MAYARA', 34521347898,'8°ANO', 7.5);
INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('CATARINA', 345213478456,'7°ANO', 8.0);
INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('PYETRA', 34521347897,'9°ANO', 5.7);
INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('JANAINA', 34521347324,'7°ANO', 6.0);
INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('MARIA', 34521347235, '9°ANO', 9.0);
INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('ANA', 34521347634,'8°ANO', 9.5);
INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('ROGERIO', 34521347259,'5°ANO', 5.0);
INSERT INTO TB_ALUNOS (NOME, RA, SERIE, NOTA) VALUE ('KAUE', 34521347987, '7°ANO', 10.0);

SELECT * FROM TB_ALUNOS WHERE NOTA > 7.0;
SELECT * FROM TB_ALUNOS WHERE NOTA < 7.0;

UPDATE TB_ALUNOS SET NOTA = 6.0 WHERE ID = 7;


