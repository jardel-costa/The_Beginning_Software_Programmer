-- SQLite
CREATE TABLE instrumento (
  id_instrumento SERIAL PRIMARY KEY, 
  nome VARCHAR(8) NOT NULL,
  preco FLOAT NOT NULL,
  em_promocao BOOLEAN
  )

insert INTO instrumento (nome, preco) VALUES ('piano', 2499.99)

SELECT * from instrumento

insert INTO instrumento (nome, preco, em_promocao) VALUES ('violão', 149.99, TRUE)

insert INTO instrumento (nome, preco, em_promocao) VALUES ('flauta', 89.99, FALSE)

SELECT nome from instrumento

SELECT nome, preco from 
    
insert INTO instrumento (nome, preco) VALUES ('gaita', 65)

insert INTO instrumento (nome, preco) VALUES ('sanfona', 1849.99)

SELECT nome, preco from instrumento WHERE (preco < 150)

SELECT preco, nome, em_promocao from instrumento

SELECT preco, nome, em_promocao from instrumento WHERE (id_instrumento = 2)
    
SELECT preco, nome, em_promocao from instrumento WHERE (em_promocao = TRUE)
     
SELECT preco, nome, em_promocao from instrumento WHERE (nome = 'violão')

CREATE TABLE vendedor (
  id_vendedor SERIAL PRIMARY KEY, 
  nome VARCHAR(30) NOT NULL 
)

   insert INTO vendedor (nome) VALUES ('Paula')
   insert INTO vendedor (nome) VALUES ('Joao')
  insert INTO vendedor (nome) VALUES ('Pedro')
  insert INTO vendedor (nome) VALUES ('Jose')
  SELECT * from vendedor