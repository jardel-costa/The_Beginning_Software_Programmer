-- SQLite
CREATE Table alunos (
    id_alunos INTEGER PRIMARY KEY ,
    nomes VARCHAR(15) ,
    matricula INT ,
    email VARCHAR(30) ,
    endereco VARCHAR(30) ,
    telefone VARCHAR(15)
)

INSERT INTO alunos (
	nomes,
	matricula,
	email,
	endereco,
	telefone
)
VALUES
	(
		'Jooão Carlos',
		1234,
		'Jcarlos@gmail.com',
		'Rua 13 de Maio',
		'(11)7825-4489'
	)

    Select * from alunos

INSERT INTO alunos (
	nomes,
	matricula,
	email,
	endereco,
	telefone
)
VALUES
	(
		'José Vitor',
		2345,
		'Jvitor@gmail.com',
		'Rua da Saudade',
		'(11)7825-6589'
	)

    Select * from alunos

INSERT INTO alunos (
	nomes,
	matricula,
	email,
	endereco,
	telefone
)
VALUES
	(
		'Paulo André',
		3456,
		'Pandr@gmail.com',
		'Rua do SOl',
		'(11)7825-4495'
	)

    Select * from alunos

    update alunos
        SET nomes = 'João Carlos'
        Where id_alunos = 1;

Select * from alunos

CREATE TABLE emprestimo (
    codigo INTEGER PRIMARY KEY,
    data_hora VARCHAR(20),
	data_volta VARCHAR(20),
    matr_aluno INT,  
    FOREIGN KEY (matr_aluno) REFERENCES alunos (matricula)    
)

Select * from emprestimo

INSERT INTO emprestimo (
	data_hora,
	data_volta,
	matr_aluno
	)
VALUES
	(
		'12/03/2022 | 15:25',
		'15/03/2022',
		1234
	)

	Select * from emprestimo

INSERT INTO emprestimo (
	data_hora,
	data_volta,
	matr_aluno
	)
VALUES
	(
		'15/03/2022 | 14:32',
		'18/03/2022',
		3456
	)

INSERT INTO emprestimo (
	data_hora,
	data_volta,
	matr_aluno
	)
VALUES
	(
		'20/03/2022 | 03:51',
		'23/03/2022',
		2345
	)	

Select * from emprestimo

CREATE Table livros (
    cod_livros INTEGER PRIMARY KEY ,
    titulo VARCHAR(50),
    autor VARCHAR(30),
    cod_sessao INTEGER
    )

INSERT INTO livros (
	titulo,
	autor,
	cod_sessao
	)
VALUES
	(
		'Modelo Conceitual e Diagramas ER',
		'Pressman, Roger S.',
		03
	),
	(
		'Livro 2: Modelo Relacional e Álgebra Relacional',
		'Heuser, Carlos Alberto',
		01
	),
	(
		'Livro 3: Linguagem SQL',
		'Beighley, Lynn',
		02
	)	

	Select * from livros


CREATE Table sessao (
    id_codigo INTEGER PRIMARY KEY ,
    descricao VARCHAR(50),
    localizacao VARCHAR(30)
    )

INSERT INTO sessao (
	descricao,
	localizacao
	)
VALUES
	(
		'Sessao1',
		'Partilheira1'
	),
	(
		'Sessao2',
		'Partilheira2'
	),
	(
		'Sessao3',
		'Partilheira3'
	)

	SELECT * FROM sessao

	CREATE Table livro_emprestimo (
    id_livro INTEGER NOT NULL ,
    cod_emprestimo INTEGER NOT NULL
    )

INSERT INTO livro_emprestimo (
	id_livro,
	cod_emprestimo
	)
VALUES
	(
		3,
		1
	),
	(
		1,
		3
	),
	(
		2,
		2
	)

	SELECT * FROM livro_emprestimo
