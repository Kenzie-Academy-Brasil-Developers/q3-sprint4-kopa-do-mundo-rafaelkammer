CREATE DATABASE kopa_db;

CREATE TABLE kopas(
    id          BIGSERIAL PRIMARY KEY,
    selecao     VARCHAR(128) UNIQUE,
    qut_copas   INTEGER
);

INSERT INTO
    kopas(selecao, qut_copas)
VALUES
    (Brasil,5),
    (Alemanha,5),
    (Itália,4),
    (Argentina,2),
    (França,2),
    (Uruguai,2),
    (Inglaterra,1),
    (Espanha,1),
    (Japão,1);

UPDATE kopas SET qut_copas = 4 WHERE selecao = "Alemanha";

DELETE FROM kopas WHERE selecao = "Japão";

SELECT * FROM kopas