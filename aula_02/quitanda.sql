-- Criando Banco de dados Quitanda
CREATE DATABASE db_quitanda;

-- Selecionando o banco de dados
USE db_quitanda;

-- Criar tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

-- Inserir dados na tabela 

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("chuchu", 20, "2022-04-18", 3.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("tomate", 80, "2022-03-19", 16.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("cenoura", 30, "2022-05-29", 13.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
VALUES ("morango", 1, "2022-03-20", 8.50);

SELECT * FROM	 tb_produtos;

-- Atualizar dados na tabela
UPDATE tb_produtos SET preco = 8.50 WHERE id = 7;

DELETE FROM tb_produtos WHERE id = 1;
DELETE FROM tb_produtos WHERE id = 2;

/*Alterar estrutura na tabela*/

ALTER TABLE tb_produtos MODIFY preco decimal (8,2);

ALTER TABLE tb_produtos ADD descricao varchar (255);