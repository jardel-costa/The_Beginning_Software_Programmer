-- SQLite
CREATE TABLE diretores (
    id_diretor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL
);

INSERT INTO diretores (nome) VALUES 
('Christopher Nolan'), 
('Quentin Tarantino');

CREATE TABLE filmes (
    id_filme INTEGER PRIMARY KEY AUTOINCREMENT,
    titulo VARCHAR(255) NOT NULL,
    ano INTEGER,
    id_diretor INTEGER,
    FOREIGN KEY (id_diretor) REFERENCES diretores(id_diretor)
);

CREATE TABLE atores (
    id_ator INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE elenco (
    id_filme INTEGER,
    id_ator INTEGER,
    PRIMARY KEY (id_filme, id_ator),
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
    FOREIGN KEY (id_ator) REFERENCES atores(id_ator)
);

INSERT INTO filmes (titulo, ano, id_diretor) VALUES
('A Origem', 2010, 1),
('Pulp Fiction', 1994, 2);

INSERT INTO atores (nome) VALUES 
('Leonardo DiCaprio'),
('John Travolta'),
('Samuel L. Jackson');

INSERT INTO elenco (id_filme, id_ator) VALUES
(1, 1), 
(2, 2), 
(2, 3);

SELECT 
    f.titulo AS Titulo_Filme, 
    d.nome AS Nome_Diretor
FROM filmes AS f
JOIN diretores AS d ON f.id_diretor = d.id_diretor;

SELECT 
    a.nome AS Nome_Ator
FROM atores AS a
JOIN elenco AS e ON a.id_ator = e.id_ator
WHERE e.id_filme = 2;