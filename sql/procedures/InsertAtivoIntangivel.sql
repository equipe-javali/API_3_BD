DELIMITER $

CREATE PROCEDURE InsertAtivoIntangivel(
    IN nome VARCHAR(100),
    IN custo_aquisicao INT,
    IN tipo VARCHAR(20),
    IN tag VARCHAR(20),
    IN grau_importancia INT,
    IN status_ativo VARCHAR(50),
    IN id_responsavel INT,
    IN id_nota_fiscal INT,
    IN descricao VARCHAR(500),
    IN numero_identificacao VARCHAR(50),
    IN data_aquisicao DATE,
    IN data_expiracao DATE
)
BEGIN
    INSERT INTO Ativo(
        nome,
        custo_aquisicao,
        tipo,
        tag,
        grau_importancia,
        status_ativo,
        id_responsavel,
        id_nota_fiscal,
        descricao,
        numero_identificacao,
        ultima_atualizacao
    )
    VALUES(
        nome,
        custo_aquisicao,
        tipo,
        tag,
        grau_importancia,
        status_ativo,
        id_responsavel,
        id_nota_fiscal,
        descricao,
        numero_identificacao,
        NOW()
    );

    SET @id_ativo = LAST_INSERT_ID();

    INSERT INTO AtivoIntangivel(
        id_ativo,
        data_aquisicao,
        data_expiracao
    )
    VALUES(
        @id_ativo,
        data_aquisicao,
        data_expiracao
    );
END$

DELIMITER ;
-- EXEC InsertAtivoIntangivel(...)