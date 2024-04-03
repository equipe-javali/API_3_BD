CREATE OR REPLACE FUNCTION InsertAtivoIntangivel(
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
    -- AtivoTangivel
    data_expiracao DATE,
    taxa_amortizacao DECIMAL,
    periodo_amortizacao VARCHAR(30)
    -- AtivoTangivel
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
        campos_personalizados
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
        marca,
        campos_personalizados
    );

    -- id do ativo
    id_ativo := currval(pg_get_serial_sequence('Ativo', 'id'));

    INSERT INTO AtivoIntangivel(
        id_ativo,
        data_expiracao,
        taxa_amortizacao,
        periodo_amortizacao
    )
    VALUES(
        id_ativo,
        data_expiracao,
        taxa_amortizacao,
        periodo_amortizacao
    );
END;
$$ LANGUAGE plpgsql;
-- CALL InsertAtivoIntangivel(...)