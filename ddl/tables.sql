-- Primeira parte,  criaçaõ de tabelase alterações - DDL--
CREATE TABLE autor(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE categoria(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE livro(
	id SERIAL PRIMARY KEY,
	titulo VARCHAR(150) NOT NULL,
	ano_publicacao INT,
	autor_id INT REFERENCES autor(id),
	categoria_id INT REFERENCES categoria(id)
);

CREATE TABLE livro_categoria (
    livro_id INT,
    categoria_id INT
);

CREATE TABLE livro_autor (
    livro_id INT,
    autor_id INT
);

CREATE TABLE curso(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE aluno(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	matricula INT NOT NULL UNIQUE,
	email VARCHAR(100) NOT NULL UNIQUE,
	curso_id INT REFERENCES curso(id)
);

CREATE TABLE emprestimo(
	id SERIAL PRIMARY KEY,
	data_emprestimo DATE NOT NULL,
	devolucao_prevista DATE NOT NULL,
	devolucao_real DATE,
	devolvido BOOLEAN DEFAULT FALSE,
	aluno_id INT REFERENCES aluno(id),
	livro_id INT REFERENCES livro(id)
);

CREATE TABLE livro_emprestimo (
    livro_id INT,
    categoria_id INT
);

CREATE TABLE multa(
	id SERIAL PRIMARY KEY,
	valor DECIMAL(6,2) CHECK (valor >=0),
	emprestimo_id INT REFERENCES emprestimo(id),
	aluno_id INT REFERENCES aluno(id)
);

ALTER TABLE aluno ADD telefone VARCHAR(15) NOT NULL;
ALTER TABLE autor ADD nacionalidade VARCHAR(100);
ALTER TABLE multa ADD paga BOOLEAN DEFAULT FALSE;
