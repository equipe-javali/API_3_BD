CREATE TABLE AtivoTangivel (
    id_ativo SERIAL PRIMARY KEY,
    garantia DATE,
    taxa_depreciacao DECIMAL,
    periodo_depreciacao VARCHAR(30)
);