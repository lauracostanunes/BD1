-- Comando para criar um novo BD:
CREATE DATABASE Aula01

-- Comando para "entrar" no BD que foi criado:
USE Aula01

-- Comando para criar uma nova tabela:
CREATE TABLE alunos(
	RA int,
	nome varchar(80),
	fone varchar(30), -- Colocar como varchar é uma convenção
	data_nasc date
	)

-- Comando para consulta de dados de uma tabela
SELECT * FROM alunos

-- Cadastrar um novo registro ba tabela criada:
INSERT INTO alunos
VALUES (1234567, 'ANA', '1699985522', '2002/10/02') -- Data precisa estar nos padrões americanos