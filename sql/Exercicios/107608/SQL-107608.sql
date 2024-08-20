-- SQLite
CREATE TABLE produtos (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE log_preco (
    id_log INTEGER PRIMARY KEY AUTOINCREMENT,
    id_produto INTEGER NOT NULL,
    preco_antigo DECIMAL(10, 2),
    preco_novo DECIMAL(10, 2),
    data_alteracao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Trigger será executado após um comando UPDATE que altere a coluna preco na tabela produtos:
CREATE TRIGGER IF NOT EXISTS registrar_alteracao_preco
AFTER UPDATE OF preco ON produtos
BEGIN
  INSERT INTO log_preco(id_produto, preco_antigo, preco_novo) 
  VALUES (old.id_produto, old.preco, new.preco);
END;

-- Testando Trigger --

-- Insira um produto:
INSERT INTO produtos (nome, preco) VALUES ('Camiseta', 29.90);

-- Atualize o preço do produto:
UPDATE produtos SET preco = 34.90 WHERE id_produto = 1;

-- Verificando a tabela log:
SELECT * FROM log_preco;

-- Verá um registro na tabela log_preco com o id_produto 1, o preco_antigo 29.90 e o preco_novo 34.90.
-- Obs#1: Este exemplo demonstra um trigger AFTER UPDATE, mas você pode usar outros tipos de triggers (BEFORE, INSTEAD OF) e ações (INSERT, DELETE) conforme a necessidade.
-- Obs#2: A função CURRENT_TIMESTAMP registra automaticamente a data e hora da alteração.