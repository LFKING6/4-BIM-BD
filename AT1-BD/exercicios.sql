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
