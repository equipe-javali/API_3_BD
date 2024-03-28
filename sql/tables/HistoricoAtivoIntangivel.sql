CREATE TABLE HistoricoAtivoIntangivel (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_ativo_Intangivel INT,
    data_alteracao DATE,
    nome VARCHAR(100),
    custo_aquisicao INT,
    data_aquisicao DATE,
    data_expiracao DATE,
    numero_identificacao INT,
    tipo VARCHAR(20)(50),
    tag VARCHAR(20)(50),
    grau_importancia INT,
    status VARCHAR(50),
    ultima_atualizacao DATE,
    id_responsavel INT,
    descricao VARCHAR(500),
    id_nota_fiscal INT,
    FOREIGN KEY (id_ativo_Intangivel) REFERENCES AtivoIntangivel(id),
    FOREIGN KEY (id_responsavel) REFERENCES Usuario(id),
    FOREIGN KEY (id_nota_fiscal) REFERENCES NotaFiscal(id)
)