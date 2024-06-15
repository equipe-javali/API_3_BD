CREATE TABLE notafiscal (
    id BIGINT GENERATED BY DEFAULT AS IDENTITY,
    documento BYTEA,
    tipo_documento VARCHAR(30),
    nome VARCHAR(50),
    CONSTRAINT NotaFiscal_pkey PRIMARY KEY (id),
    CONSTRAINT notafiscal_nome_check CHECK ((LENGTH(nome) <= 50))
);
