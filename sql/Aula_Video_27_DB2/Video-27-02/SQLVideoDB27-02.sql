-- SQLite
CREATE TABLE artista (
id integer PRIMARY KEY,
nome VARCHAR(20) UNIQUE
);

INSERT INTO artista (nome) VALUES
    ('Tom Jobim'), 
    ('Elis Regina');

CREATE TABLE musica (
id integer PRIMARY KEY,
nome VARCHAR(30) NOT NULL,
duracao_seg INT NOT NULL
);

INSERT INTO musica (nome, duracao_seg) VALUES
    ('Aguas de Março', 210); 

CREATE TABLE artista_musica (
    fk_id_artista integer NOT NULL,
    fk_id_musica integer NOT NULL,
    CONSTRAINT artista_musica_pk PRIMARY KEY (fk_id_artista, fk_id_musica),
    CONSTRAINT fk_artista FOREIGN KEY (fk_id_artista) REFERENCES artista(id),
    CONSTRAINT fk_musica FOREIGN KEY (fk_id_musica) REFERENCES musica(id)
);

INSERT INTO artista_musica (fk_id_artista, fk_id_musica) VALUES
    (1, 1),
    (2, 1);

INSERT INTO artista (nome) VALUES
    ('Frank Sinatra');

INSERT INTO musica (nome, duracao_seg) VALUES
    ('Garota de Ipanema', 120); 

INSERT INTO artista_musica (fk_id_artista, fk_id_musica) VALUES
    (1, 2),
    (3, 2);
