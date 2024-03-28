DELIMITER $

CREATE PROCEDURE SelectAllAtivo()
BEGIN
    SELECT
        a.id,
        a.nome,
        u.nome as nome_responsavel,
        a.tipo,
        -- localizacao?
        u.departamento as departamento
    FROM Ativo a
    LEFT JOIN Usuario u ON a.id_responsavel = u.id
    GROUP BY a.id, a.nome, u.nome, a.tipo, u.departamento;
END$

DELIMITER ;
-- CALL SelectAllAtivo()