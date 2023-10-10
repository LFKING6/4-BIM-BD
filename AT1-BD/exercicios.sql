CREATE TABLE nomes (
    nome VARCHAR(150)
);

INSERT INTO nomes (nome)
VALUES
    ('Roberto'),
    ('Roberta'),
    ('João'),
    ('Maria Clara');

SELECT UPPER(nome) FROM nomes

SELECT nome, LENGTH(nome)
FROM nomes;

SELECT
    CASE
        WHEN nome LIKE '%João%' THEN CONCAT('Sr. ', nome)
        ELSE CONCAT('Sra. ', nome)
    END
FROM nomes;

CREATE TABLE produtos (
    produto VARCHAR(100),
    preco DECIMAL(10, 2),
    quantidade INT
);

INSERT INTO produtos (produto, preco, quantidade)
VALUES
    ('Produto A', 10.50, 5),
    ('Produto B', 20.75, 3),
    ('Produto C', 15.00, 0);

SELECT produto, ROUND(preco, 2)
FROM produtos;

SELECT produto, ABS(quantidade)
FROM produtos;

SELECT AVG(preco)
FROM produtos;

CREATE TABLE eventos (
    data_evento DATE
);

INSERT INTO eventos (data_evento)
VALUES
    ('2023-05-19'),
    ('2023-11-28'),
    ('2023-08-23');

INSERT INTO eventos (data_evento)
VALUES (NOW());

SELECT DATEDIFF('2023-08-23', '2023-05-19')FROM eventos;

SELECT data_evento, DAYNAME(data_evento)FROM eventos;

SELECT produto,
    IF(quantidade > 0, 'Em estoque', 'Fora de estoque')
FROM produtos;

SELECT produto,
    CASE
        WHEN preco < 20.00 THEN 'Barato'
        WHEN preco >= 20.00 AND preco < 30.00 THEN 'Médio'
        ELSE 'Caro'
    END
FROM produtos;

CREATE FUNCTION TOTAL_VALOR(preco DECIMAL(10, 2), quantidade INT)
RETURNS DECIMAL(10, 2)
BEGIN
    RETURN preco * quantidade;
END;

SELECT produto, quantidade, TOTAL_VALOR(preco, quantidade)FROM produtos;

