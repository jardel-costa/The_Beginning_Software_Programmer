-- SQLite
-- SQLite
CREATE TABLE cliente (
  id INTEGER PRIMARY KEY,
  nome VARCHAR(16) not NULL,
  sobrenome VARCHAR(24) not NULL,
  idade INT,
  pais VARCHAR(4)
);
 
CREATE TABLE produto (
  ID INTEGER PRIMARY KEY,
  item VARCHAR(48) NOT NULL,
  marca VARCHAR (24) NOT NULL
);
 
CREATE TABLE pedido (
  id INTEGER PRIMARY KEY,
  fk_id_cliente INT NOT NULL,
  fk_id_produto INT NOT NULL,
  quantidade INT NOT NULL,
  CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id),
  CONSTRAINT fk_produto FOREIGN KEY (fk_id_produto) REFERENCES produto(id)
);
 
INSERT INTO cliente (nome, sobrenome, idade, pais) VALUES
  ('João', 'Alves', 48, 'BR'),
  ('Roberto', 'Garcia', 36, 'MX'),
  ('Dario', 'Rubens', 39, 'ARG'),
  ('Julia', 'Lopes', 28, 'PE'),
  ('Rebeca', 'Giglio', 54, 'IT');
 
INSERT INTO produto (item, marca) VALUES
  ('teclado', 'Logitech'),
  ('mouse', 'HP'),
  ('monitor', 'LG'),
  ('mousepad', 'Logitech');
 
INSERT INTO pedido (fk_id_produto, fk_id_cliente, quantidade) VALUES
  (1, 4, 200),
  (2, 4, 800),
  (3, 3, 100),
  (1, 1, 400),
  (4, 2, 1200);

SELECT * FROM pedido 
JOIN produto on pedido.fk_id_produto = produto.id
JOIN cliente on pedido.fk_id_cliente = cliente.id

SELECT cliente.nome as "Nome do Cliente",
		cliente.sobrenome AS "Sobrenome do Cliente",
        produto.item as "Nome do Produto",
        produto.marca as "Marca do Produto",
        pedido.quantidade as "Quantidade do Pedido"
FROM pedido 
JOIN produto on pedido.fk_id_produto = produto.id
RIGHT JOIN cliente on pedido.fk_id_cliente = cliente.id