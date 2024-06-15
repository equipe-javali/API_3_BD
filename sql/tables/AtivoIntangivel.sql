CREATE TABLE ativointangivel (
    id_ativo BIGINT NOT NULL,
    data_expiracao DATE,
    taxa_amortizacao NUMERIC(10, 2),
    periodo_amortizacao VARCHAR(30),
    CONSTRAINT ativointangivel_pkey PRIMARY KEY (id_ativo),
    CONSTRAINT ativointangivel_id_ativo_key UNIQUE (id_ativo),
    CONSTRAINT ativointangivel_id_ativo_fkey FOREIGN KEY (id_ativo) REFERENCES ativo (id) ON UPDATE CASCADE ON DELETE CASCADE
);
