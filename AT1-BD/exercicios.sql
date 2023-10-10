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