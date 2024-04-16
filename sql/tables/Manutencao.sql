CREATE TABLE Manutencao (
    id SERIAL PRIMARY KEY,
    id_ativo INT,
    data_inicio DATE,
    data_fim DATE,
    custo NUMERIC,
    tipo INT,
    descricao VARCHAR(200),
    localizacao VARCHAR(100),
    id_nota_fiscal INT,
    FOREIGN KEY (id_ativo) REFERENCES Ativo(id),
    FOREIGN KEY (id_nota_fiscal) REFERENCES NotaFiscal(id)
);