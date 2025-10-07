--Usar um banco ja criado
USE db_escola_T;

--INSERIR UM REGISTRO NA TABELA ESCOLA
INSERT INTO tb_escola (nome, endereco)
VALUES ('Torloni', 'Estrada das lágrimas, 579 - São José');

SELECT * FROM tb_escola;

INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Tarde', 4, '2A'),
(2, 'Manha', 4, '2A'),
(2, 'Noite', 4, '2A');

SELECT * FROM tb_turma;

INSERT INTO tb_prova(nome_professor, materia, duracao, nota, data_prova)
VALUES
('Ana Claudia', 'Educacao Fisica', '13:15:00', 10, '2025-09-25'),
('Rogeria', 'Matematica', '14:20:00', 10, '2025-09-26'),
('Adair', 'Sociologia', '15:05:00', 10, '2025-09-25'),
('Marcia', 'Geografia', '15:55:00', 10, '2025-09-26'),
('Elvis', 'Química', '16:45:00', 10, '2025-09-25'),
('Ivan Mossniy', 'Biologia', '17:45:00', 10, '2025-09-26');
SELECT * FROM tb_prova;

INSERT INTO tb_aluno(nome, CPF, matricula, data_nasc, id_escola)
VALUES('Stephani Dandara', '80553290853', '38878283', '2009-03-18', 1);

INSERT INTO tb_aluno(nome, CPF, matricula, data_nasc, id_escola)
VALUES
('Mateus Latorre', '83245352806', '23456789', '2009-06-11', 1),
('Hevillyn Cristina', '03767842854', '34567836', '2008-05-22', 1),
('Felipe Fontes', '43830744825', '453456438', '2009-01-11', 1),
('Maria Eduarda', '42478069873', '32345678', '2008-02-22', 1);

SELECT * FROM tb_aluno;

--APAGAR UM REGISTRO PELO SEU INDENTIFICADOR
DELETE FROM tb_aluno
WHERE id = '1'
SELECT * FROM tb_aluno;

--ATUALIZAR UM REGISTRO PELO SEU INDENTIFICADOR
UPDATE tb_aluno
SET data_nasc = '2008-09-28' 
WHERE nome = 'Maria Eduarda Freitas'
SELECT * FROM tb_aluno;

UPDATE tb_aluno
SET data_nasc = '2008-09-22'
WHERE nome = 'Hevillyn'
SELECT * FROM tb_aluno;

UPDATE tb_aluno
SET data_nasc = '2008-02-22'
WHERE nome = 'Felipe Fontes'
SELECT * FROM tb_aluno;

UPDATE tb_aluno
SET data_nasc = '2009-05-30'
WHERE nome = 'Mateus Latorre'
SELECT * FROM tb_aluno;

INSERT INTO tb_turma_prova(id_turma, id_prova, id_escola)
VALUES