CREATE TABLE AtivoIntangivel (
    id_ativo SERIAL PRIMARY KEY,
    data_expiracao DATE,
    taxa_amortizacao NUMERIC(2),
    periodo_amortizacao VARCHAR(30)
);