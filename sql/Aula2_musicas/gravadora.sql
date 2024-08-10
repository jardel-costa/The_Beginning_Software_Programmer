gravadora.sql
CREATE table artista (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(20) UNIQUE
)
 
CREATE table musica (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(30) NOT NULL
)
 
create TABLE gravacao (
  id SERIAL PRIMARY KEY,
  duracao_seg INT NOT NULL
)

INSERT INTO artista (nome)
	VALUES
    ('Pitty'),
    ('Rita Lee'), 
    ('Paula Toller')
    
  SELECT * FROM artista
  
  INSERT INTO musica (nome)
	VALUES
    ('Equalize'),
    ('Ovelha Negra'), 
    ('Como Eu Quero')
    
  SELECT * FROM musica  
  
   INSERT INTO gravacao (duracao_seg)
	VALUES
    (232),
    (202), 
    (200),
    (309)
    
   SELECT * FROM gravacao
   
   INSERT INTO artista (nome)
	VALUES
    ('Fernanda Abreu')
    
    SELECT * from artista
    
    INSERT INTO musica (nome)
	VALUES
    ('Rio 40 Graus')
    
    INSERT INTO gravacao (duracao_seg)
	VALUES
    (309)
    
    Alter TABLE musica add COLUMN duracao_seg INT
    
    SELECT * FROM musica
    
    INSERT INTO musica (nome, duracao_seg)
	VALUES
    ('Equalize', 232),
    ('Ovelha Negra', 202), 
    ('Como Eu Quero', 200),
    ('Rio 40 Graus', 309)
    
       
    
    
        Alter TABLE musica add COLUMN artista_id INT
        
        Alter TABLE musica add CONSTRAINT fk_artista
        FOREIGN KEY (artista_id) REFERENCES artista(ID)
        
        SELECT * FROM artista
        
        UPDATE musica SET artista_id = 4 WHERE nome='Rio 40 Graus'
        
        SELECT * FROM musica
        
        Alter TABLE musica DROP CONSTRAINT fk_artista
        
        ALTER TABLE musica ADD CONSTRAINT fk_artista
        FOREIGN KEY (artista_id) REFERENCES artista(ID) on DELETE CASCADE
        
        DELETE FROM artista WHERE nome = 'Paula Toller'
        
        SELECT * FROM artista
        
        SELECT * FROM musica
        
        
DELETE from musica WHERE nome='Rio 40 Graus'