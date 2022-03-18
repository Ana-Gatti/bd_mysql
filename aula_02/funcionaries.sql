/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização. */

/*criando data base*/
CREATE DATABASE db_funcionaries;

/*selecionando o banco de dados*/
USE db_funcionaries;

/*criar tabela*/
CREATE TABLE tb_funcionaries(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
cpf varchar (255) NOT NULL,
admissão date,
cargo varchar (255) NOT NULL,
salario decimal NOT NULL, 
PRIMARY KEY (id)
);

/* inserir dados na tabela */
INSERT INTO tb_funcionaries (nome, cpf, admissão, cargo, salario)
VALUES ("Alessandra Souza", "12345678912", "2021-03-18", "Dev. Jr", 5500.00 );

INSERT INTO tb_funcionaries (nome, cpf, admissão, cargo, salario)
VALUES ("Thiago Tomita", "21365478633", "2019-10-05", "Dev. Pleno", 7900.00 );

INSERT INTO tb_funcionaries (nome, cpf, admissão, cargo, salario)
VALUES ("Jhonnatan Caique", "56476523477", "2021-03-18", "Dev. Sênior", 11000.00 );

INSERT INTO tb_funcionaries (nome, cpf, admissão, cargo, salario)
VALUES ("Esmeralda Neves", "43216788945", "2019-05-16", "Dev. Sênior", 11000.00 );

INSERT INTO tb_funcionaries (nome, cpf, admissão, cargo, salario)
VALUES ("Ana Paula Gatti", "34522237812", "2016-06-15", "Supervisora", 15000.00 );

/* exibir tabela*/
SELECT * FROM tb_funcionaries;

/* exibir conforme condição*/
SELECT * FROM tb_funcionaries WHERE salario > 2000.00;

SELECT * FROM tb_funcionaries WHERE salario < 2000.00;

/* atualizar dados*/
UPDATE tb_funcionaries SET salario = 7000.00  WHERE id = 1;
