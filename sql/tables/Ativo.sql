CREATE TABLE Ativo (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    custo_aquisicao INT,
    tipo VARCHAR(20),
    tag VARCHAR(20),
    grau_importancia INT,
    status_ativo VARCHAR(50),
    id_responsavel INT,
    id_nota_fiscal INT,
    descricao VARCHAR(500),
    numero_identificacao VARCHAR(50),
    ultima_atualizacao DATE,
    FOREIGN KEY (id_responsavel) REFERENCES Usuario(id)
);