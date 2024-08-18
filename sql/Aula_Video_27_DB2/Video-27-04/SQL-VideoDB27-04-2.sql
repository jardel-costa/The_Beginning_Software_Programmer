-- SQLite
CREATE TABLE meio_pagamento (
ID INTEGER PRIMARY KEY,
nome VARCHAR(18) NOT NULL    
);

INSERT INTO meio_pagamento (nome) VALUES
    ('dinheiro'),
    ('cartão de crédito'),
    ('cartão de dédito')

ALTER TABLE estadia ADD COLUMN data_entrada varchar(48)
ALTER TABLE estadia ADD COLUMN data_saida varchar(48)
ALTER TABLE estadia ADD COLUMN valor_total FLOAT
ALTER TABLE estadia ADD COLUMN fk_id_meio_pagamento INTEGER 
ALTER TABLE estadia ADD CONSTRAINT fk_meio_pagamento FOREIGN KEY (fk_id_meio_pagamento) REFERENCES meio_pagamento(ID);

UPDATE estadia
    SET data_entrada = '2022-08-16T08:54:00'
    WHERE ID = 5

UPDATE estadia
    SET data_saida = '2022-08-16T08:54:00',
        valor_total = 148.99,
        fk_id_meio_pagamento = 1
    WHERE ID = 5

UPDATE estadia
    SET data_entrada = '2022-08-16T08:54:00',
        data_saida = '2022-08-16T08:54:00',
        valor_total = 148.99,
        fk_id_meio_pagamento = 1
    WHERE ID = 2
