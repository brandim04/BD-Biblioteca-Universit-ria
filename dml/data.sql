--Segunda parte, inserção de daos - DML-

INSERT INTO autor (nome) VALUES
('Seymour Lipschutz'),
('James Stewart'),
('Halliday, Resnick e Walker'),
('Atkins e Jones'),
('Bruce Alberts et al.'),
('Morton L. Schagrin'),
('Thomas H. Cormen et al.'),
('Andrew S. Tanenbaum'),
('Thomas Sowell'),
('Boris Fausto');

INSERT INTO categoria (nome) VALUES
('Matemática'),
('Cálculo'),
('Física'),
('Química'),
('Biologia Molecular'),
('Lógica'),
('Ciência da Computação'),
('Sistemas Operacionais'),
('Economia'),
('História');

INSERT INTO livro (titulo, ano_publicacao, autor_id, categoria_id) VALUES
('Introdução à Álgebra Linear', 1997, 1, 1),
('Cálculo Volume 1', 2010, 2, 2),
('Fundamentos da Física Volume 1 - Mecânica', 2018, 3, 3),
('Química Geral e Inorgânica', 2006, 4, 4),
('Biologia Molecular da Célula', 2015, 5, 5),
('Lógica Matemática', 1985, 6, 6),
('Estruturas de Dados e Algoritmos', 2009, 7, 7),
('Sistemas Operacionais Modernos', 2001, 8, 8),
('Economia para Leigos', 2007, 9, 9),
('História do Brasil', 1995, 10, 10);

INSERT INTO curso(nome) VALUES
('Engenharia de Software'),
('Fisioterapia'),
('Nutrição'),
('Pscicologia'),
('Direito'),
('Medicina'),
('Administração'),
('Ciência da Computação'),
('Arquitetura'),
('Enfermagem');

INSERT INTO aluno(nome, curso_id, matricula, email, telefone) VALUES
('Larissa Brandim', 1, 12402134, 'brandimlarissa.sa@gmail.com', '86988540388'),
('Vitória Vilar', 4, 12345678, 'vitoria@email.com', '86988005577'),
('Taís Oliveira', 3, 11234567, 'tais@email.com', '86912345678'),
('Maria Santos', 2, 12234567, 'maria@email.com', '40028922'),
('Pedro Queiroz', 5,  12334567, 'pedro@email.com', '86988571496'),
('João Silva', 6, 12344567, 'joao@email.com', '86999112233'),
('Ana Raíssa', 7, 12345567, 'ana.raissa@email.com', '86999223344'),
('Carlos Samuel', 8, 12345667, 'carlo@email.com', '86999334455'),
('Mariana Ellen', 9, 12345677, 'mariana@email.com', '86999445566'),
('Rafael Ribeiro', 10, 1234568, 'rafael@email.com', '86999556677');

INSERT INTO emprestimo (data_emprestimo, devolucao_prevista, devolucao_real, devolvido, aluno_id, livro_id) VALUES
('2025-02-01', '2025-02-15', '2025-02-15', TRUE, 1, 1),
('2022-01-05', '2022-01-20', '2022-01-25', TRUE, 2, 2),
('2025-09-10', '2025-09-25', NULL, FALSE, 3, 3),
('2024-01-15', '2024-01-29', '2024-01-28', TRUE, 4, 4),
('2021-02-20', '2021-03-03', '2021-03-10', TRUE, 5, 5),
('2022-11-25', '2022-11-08', NULL, FALSE, 6, 6),
('2025-03-01', '2025-03-14', '2025-03-21', TRUE, 7, 7),
('2024-10-05', '2024-10-19', '2024-10-15', TRUE, 8, 8),
('2021-02-10', '2021-04-24', NULL, FALSE, 9, 9), 
('2025-04-15', '2025-04-29', '2025-05-06', TRUE, 10, 10), 
('2023-11-20', '2023-12-03', '2023-12-03', TRUE, 1, 3),
('2024-06-25', '2024-07-08', '2024-07-12', TRUE, 2, 4),
('2021-03-01', '2021-03-15', NULL, FALSE, 3, 5),
('2022-07-05', '2022-07-19', '2022-07-19', TRUE, 4, 6),
('2023-04-10', '2023-04-25', '2023-05-01', TRUE, 5, 7),
('2024-08-15', '2024-08-29', NULL, FALSE, 6, 8),
('2021-09-20', '2021-10-04', '2021-10-11', TRUE, 7, 9),
('2022-06-25', '2022-07-09', '2022-07-09', TRUE, 8, 10),
('2023-10-01', '2023-10-15', NULL, FALSE, 9, 1),
('2024-08-05', '2024-08-19', '2024-08-26', TRUE, 10, 2);

INSERT INTO multa (valor, emprestimo_id, aluno_id, paga) VALUES
(5.00, 2, 2, FALSE),
(10.00, 5, 5, FALSE),
(7.00, 7, 7, TRUE),
(3.00, 10, 10, FALSE),
(6.00, 12, 2, FALSE),
(8.00, 15, 5, FALSE),
(4.00, 17, 7, FALSE),
(2.00, 20, 10, FALSE),
(9.00, 12, 2, FALSE),
(11.00, 15, 5, FALSE);

--Terceira parte, atualizar e deletar - DML -

UPDATE aluno
SET curso_id = 1
WHERE nome = 'Carlos Samuel';

UPDATE livro
SET ano_publicacao = 2024
WHERE titulo = 'Economia para Leigos';

UPDATE aluno
SET nome = 'Larissa Gabriela'
WHERE id = 1;

DELETE FROM aluno
WHERE nome = 'Rafael Souza';

DELETE FROM emprestimo
WHERE id = 1;

-- Quarta parte, consultas :/ - DML -

-- livros publicados antes de 2000 e com a letra 'A' no título.
SELECT titulo, ano_publicacao
FROM livro
WHERE ano_publicacao < 2000 AND titulo ILIKE '%A%';

--aluno que começa com 'L'
SELECT * FROM aluno
WHERE nome ILIKE 'L%';

--autores em ordem alfabética
SELECT nome
FROM autor
ORDER BY nome;

--numero total de livros
SELECT COUNT(id) AS total_livros
FROM livro;

-- media do valor das multas
SELECT ROUND(AVG(valor), 2) AS media_multas
FROM multa;

--telefones que começam com 086
SELECT nome, telefone
FROM aluno
WHERE telefone LIKE '86%';

--livros que terminam com a ou comçam com H
SELECT titulo
FROM livro
WHERE titulo LIKE '%a' OR titulo LIKE 'H%';

--livros em ordem alfabetica
SELECT titulo
FROM livro
ORDER BY titulo ASC;

-- livro que cada aluno pegou
SELECT a.nome AS nome_aluno, l.titulo AS titulo_livro
FROM aluno a
JOIN emprestimo e ON a.id = e.aluno_id
JOIN livro l ON e.livro_id = l.id;

--categoria dos livros
SELECT l.titulo AS Livro, c.nome AS categoria
FROM livro l
JOIN categoria c ON l.categoria_id = c.id;

--autor de cada livro
SELECT l.titulo AS livro, a.nome AS autor
FROM livro l
JOIN autor a ON l.autor_id = a.id;

--curso de cada aluno em ordem decrescente
SELECT a.nome AS nome_aluno, c.nome AS nome_curso
FROM aluno a
JOIN curso c ON a.curso_id = c.id
ORDER BY c.nome DESC;
