CREATE OR REPLACE FUNCTION InsertAtivoTangivel(
    nome VARCHAR(100),
    custo_aquisicao INT,
    tipo VARCHAR(20),
    tag VARCHAR(20),
    grau_importancia INT,
    status VARCHAR(50),
    id_responsavel INT,
    -- NotaFiscal
    tipo_documento VARCHAR(30),
    documento TEXT,
    -- NotaFiscal
    descricao VARCHAR(500),
    numero_identificacao VARCHAR(50),
    ultima_atualizacao DATE,
    data_aquisicao DATE,
    marca VARCHAR(100),
    campos_personalizados TEXT,
    -- AtivoIntangivel
    garantia DATE,
    taxa_depreciacao DECIMAL,
    periodo_depreciacao VARCHAR(30)
    -- AtivoIntangivel
)
RETURNS VOID AS $$
DECLARE
    id_ativo INT;
    id_nota_fiscal INT;
BEGIN
    INSERT INTO NotaFiscal(
        tipo_documento,
        documento
    )
    VALUES(
        tipo_documento,
        documento
    );

    -- id da nota fiscal
    id_nota_fiscal := currval(pg_get_serial_sequence('NotaFiscal', 'id'));

    INSERT INTO Ativo(
        nome,
        custo_aquisicao,
        tipo,
        tag,
        grau_importancia,
        status,
        id_responsavel,
        id_nota_fiscal,
        descricao,
        numero_identificacao,
        ultima_atualizacao,
        data_aquisicao,
        marca,
        campos_personalizados,
        garantia,
        taxa_depreciacao,
        periodo_depreciacao
    )
    VALUES(
        nome,
        custo_aquisicao,
        tipo,
        tag,
        grau_importancia,
        status,
        id_responsavel,
        id_nota_fiscal,
        descricao,
        numero_identificacao,
        NOW(),
        data_aquisicao,
        marca,
        campos_personalizados,
        garantia,
        taxa_depreciacao,
        periodo_depreciacao
    );

    id_ativo := currval(pg_get_serial_sequence('Ativo', 'id'));

    INSERT INTO AtivoTangivel(
        id_ativo,
        garantia,
        taxa_depreciacao,
        periodo_depreciacao
    )
    VALUES(
        @id_ativo,
        garantia,
        taxa_depreciacao,
        periodo_depreciacao
    );
END;
$$ LANGUAGE plpgsql;
-- CALL InsertAtivoTangivel(...)