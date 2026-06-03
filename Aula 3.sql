CREATE DATABASE EscolaTeste

-- Comando para "entrar" em um BD:
USE EscolaTeste

-- Para criar uma nova TABELA neste BD:
CREATE TABLE alunos (
  RA int,
  nome char(400), -- mínimo e máximo de 400 caracteres. Se não preencher, o sistema preenche sozinho com "espaços em branco"
  fone varchar(20), -- varchar para máximo de 20 caracteres
  mae varchar(50),
  pai varchar(50),
  data_nasc datetime -- para data e hora
  )

SELECT * FROM alunos

-- Cadastrar um novo registro na tabela preenchendo algumas lacunas:
INSERT INTO alunos (RA, pai, mae, nome)
VALUES (102030, 'JOSÉ', 'MARIA', 'ANA')

ALTER TABLE alunos
ADD naturalidade VARCHAR(80)

ALTER TABLE alunos
ALTER  COLUMN nome VARCHAR(80) NOT NULL

-- Inserir novo registro sem passar valor para campo obrigatório (ERRO)
INSERT INTO alunos (RA, mae)
VALUES ('203040', 'PAULA')

SELECT * FROM alunos;
