CREATE TABLE Ativo (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    custo_aquisicao INT,
    tipo VARCHAR(20),
    tag VARCHAR(20),
    grau_importancia INT,
    status VARCHAR(50),
    id_responsavel INT,
    id_nota_fiscal INT,
    descricao VARCHAR(500),
    numero_identificacao VARCHAR(50),
    ultima_atualizacao DATE,
    data_aquisicao DATE,
    marca VARCHAR(100),
    campos_personalizados TEXT,
    FOREIGN KEY (id_responsavel) REFERENCES Usuario(id)
);