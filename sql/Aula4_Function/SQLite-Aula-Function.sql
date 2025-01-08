--SQL-Aula-Function.sql
CREATE FUNCTION soma(num1 INT, num2 INT)
    RETURNS INT AS 
    BEGIN
        RETURN num1 + num2;
    END;

SELECT soma(3,4);
    
CREATE FUNCTION IF NOT EXISTS soma(num1 INT, num2 INT)
    RETURNS INT AS
    BEGIN
        RETURN num1 + num2;
    END;

    SELECT soma(2,4);
    
    
CREATE FUNCTION multiplix (num1 INT, num2 INT)
	RETURNS INT AS
    BEGIN
    	RETURN num1*num2;
    END
    
SELECT multiplix(3,4);
    
CREATE or REPLACE FUNCTION desconto (preco FLOAT, porcento FLOAT)
   	RETURNS FLOAT AS $$
    BEGIN
        RETURN preco * (1- porcento);
    END
  
        
SELECT desconto (150, 0.25);
   
  CREATE TABLE produto (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nome VARCHAR(16) NOT NULL UNIQUE,
  preco FLOAT NOT NULL
);
 
INSERT INTO produto (nome, preco) VALUES
  ('Bicicleta', 789.90),
  ('Patins', 234.50),
  ('Scooter', 450.00);
  
SELECT * FROM produto
   
   SELECT
   	nome AS "nome do produto",
    preco as "preco original",
    desconto(preco, 0.25) as "preco com desconto"
   FROM
   	produto
    
   


 
