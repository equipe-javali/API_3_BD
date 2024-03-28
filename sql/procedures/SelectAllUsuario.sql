DELIMITER $

CREATE PROCEDURE SelectAllUsuario()
BEGIN
    SELECT
        u.id,
        u.nome,
        u.telefone,
        u.email,
        u.departamento,
        count(a.id_responsavel)
    FROM Usuario u
    LEFT JOIN Ativo a ON u.id = a.id_responsavel
    GROUP BY u.id, u.nome, u.email, u.departamento;
END$

DELIMITER ;
-- CALL SelectAllUsuario()