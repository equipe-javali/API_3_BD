CREATE TABLE AtivoIntangivel (
    id_ativo SERIAL PRIMARY KEY,
    data_expiracao DATE,
    taxa_amortizacao DECIMAL,
    periodo_amortizacao VARCHAR(30)
);