DELIMITER $

CREATE PROCEDURE SelectOneUsuario(
    IN id_usuario INT
)
BEGIN
    SELECT *
    FROM Usuario u
    WHERE u.id = id_usuario;
END$

DELIMITER ;
-- CALL SelectOneUsuario(...)