-- use ruann_campos_curso;
use ruann_campos_teste;

-- QUESTÃO 7

-- a) Inserir pelo menos duas turmas diferentes na tabela de turma;
INSERT INTO turma (codigo_turma, nome_turma) VALUES
('1007','Data Science'),
('1008', 'Back End'),
('1009', 'Front End'); 

select *
from turma;

-- b) Inserir pelo menos 1 aluno alocado em cada uma destas turmas na tabela aluno //
-- (todos com NULL na coluna aluno_alocado);
INSERT INTO aluno (nome_aluno, aluno_alocado, id_turma) VALUES
('Ruann Campos', null, 1),
('Ana Gabrielly', null, 1),
('José Raul', null, 2),
('Maria José', null, 3);

select *
from aluno;

-- c) Inserir pelo menos 2 alunos não alocados em nenhuma turma na tabela aluno //
-- (todos com NULL na coluna aluno_alocado);
INSERT INTO aluno (nome_aluno, aluno_alocado) VALUES
('José Gabriel', null),
('Maria Fernanda', null);

select *
from aluno;

-- d) Atualizar a coluna aluno_alocado da tabela aluno, de modo que os alunos associados //
-- a uma disciplina recebam o valor True e alunos não 
-- TRUE
update aluno
set aluno_alocado = True
where id_turma is not null;

-- FALSE
update aluno
set aluno_alocado = False
where id_turma is null;

select *
from aluno;