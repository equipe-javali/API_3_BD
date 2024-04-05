CREATE TABLE AtivoTangivel (
    id_ativo SERIAL PRIMARY KEY,
    garantia DATE,
    taxa_depreciacao NUMERIC(2),
    periodo_depreciacao VARCHAR(30)
);