-- SQLite-107591.sql
CREATE TABLE clientes (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_cadastro DATE NOT NULL
);

INSERT INTO clientes (nome, data_cadastro) VALUES
('Alice', '2023-10-25'),
('Bob', '2023-10-26'),
('Carlos', '2023-10-26'),
('Diana', '2023-10-27'),
('Eva', '2023-10-27'),
('Fábio', '2023-10-27');

CREATE OR REPLACE FUNCTION total_clientes_cadastrados_dia(data_escolhida DATE)
RETURNS INTEGER AS $$
BEGIN
  RETURN (
    SELECT COUNT(*)
    FROM clientes
    WHERE data_cadastro = data_escolhida
  );
END;
$$ LANGUAGE plpgsql;

SELECT total_clientes_cadastrados_dia('2023-10-26');