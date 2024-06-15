CREATE TABLE ativotangivel (
    id_ativo BIGINT NOT NULL,
    marca VARCHAR(100),
    garantia DATE,
    taxa_depreciacao NUMERIC(10, 2),
    periodo_depreciacao VARCHAR(30),
    CONSTRAINT ativotangivel_pkey PRIMARY KEY (id_ativo),
    CONSTRAINT ativotangivel_id_ativo_fkey FOREIGN KEY (id_ativo) REFERENCES ativo (id) ON UPDATE CASCADE ON DELETE CASCADE
);
