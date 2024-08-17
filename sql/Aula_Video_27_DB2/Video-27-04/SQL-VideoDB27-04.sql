-- SQLite
-- quarto (numero, valordiaria, vista)

CREATE TABLE quarto (
Numero INT NOT NULL PRIMARY KEY, 
valor_diaria FLOAT NOT NULL,
vista_mar BOOLEAN
);

-- cliente (nome, RG, tel)

CREATE TABLE cliente (
ID INTEGER PRIMARY KEY,
nome VARCHAR(45) NOT NULL,
RG VARCHAR(15) NOT NULL,
telefone VARCHAR(12) NOT NULL
);

INSERT INTO quarto (Numero, valor_diaria, vista_mar) VALUES
    (101, 74.99, TRUE),
    (102, 54.50, FALSE),
    (201, 110, TRUE);

INSERT INTO cliente (nome, RG, telefone) VALUES
    ('Joao Pereira', '12345678', '(11)98765432'),
    ('Rafael Alves', '98765432', '(12)91234567');

CREATE TABLE estadia (
    id INTEGER PRIMARY KEY,
    fk_id_quarto INT NOT NULL,
    fk_id_cliente INTEGER NOT NULL,
    CONSTRAINT fk_quarto FOREIGN KEY (fk_id_quarto) REFERENCES quarto(Numero),
    CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(ID)
);

INSERT INTO estadia (fk_id_quarto, fk_id_cliente) VALUES
    (101, 1),
    (102, 2),
    (103, 1),
    (102, 2);

INSERT INTO estadia (fk_id_quarto, fk_id_cliente) VALUES
    (201, 1);