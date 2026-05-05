CREATE TABLE aluno (
  RA int,
  nome varchar(80),
  fone varchar(30),
  pai varchar(80),
  mae varchar(80),
  data_nasc date
  )
 
INSERT INTO aluno
VALUES (102030, 'ANA', '16998786523', 'JOSÉ', 'MARIA', '2002/12/18')

INSERT INTO aluno
VALUES (203040, 'BIA', '17994557621', 'MÁRIO', 'ÂNGELA', '2003/02/25')

INSERT INTO aluno
VALUES (304050, 'CARLOS', '18990765432', 'LUAN', 'ELEONOR', '2002/10/14')
  
-- Comando para acrescentar nova coluna
ALTER TABLE aluno
 ADD email varchar(50);
  
SELECT * FROM aluno

-- Comando para excluir uma coluna da tabela
ALTER TABLE aluno
 DROP COLUMN pai
 
 -- Comando para atualizar valores de uma coluna de tabela
 -- CUIDADO! Este comando precisa de um filtro para não afetar todas as linhas de tabela
 UPDATE aluno SET email = 'contato@aluno.com.br'
 WHERE RA = 102030
 -- Comando WHERE pode ser usado para filtrar linhas da tabela junto com outros comandos. EX:
 SELECT * FROM aluno
 WHERE RA > 150000
 
 SELECT * FROM aluno
 WHERE mae <> 'ANA' -- Mãe é diferente de Ana
 
 -- Comando para excluir registros da tabela (apagar a linha);
 DELETE aluno
 WHERE mae = 'ÂNGELA'
 
 -- Ver o conteúdo da tabela após excluir todos os registros
SELECT * FROM aluno;

-- Ordenar o resultado de uma coluna
SELECT * FROM aluno
ORDER BY data_nasc

-- Ordenar o resultado de uma coluna ao contrário
SELECT * FROM aluno
ORDER BY data_nasc DESC