DELIMITER $

CREATE PROCEDURE InsertUsuarioAdministrador(
    IN nome VARCHAR(100),
    IN cpf VARCHAR(11),
    IN nascimento DATE,
    IN departamento VARCHAR(20),
    IN telefone VARCHAR(20),
    IN email VARCHAR(100),
    IN senha VARCHAR(60)
)
BEGIN
    INSERT INTO Usuario(
        nome,
        cpf,
        nascimento,
        departamento,
        telefone,
        email
    )
    VALUES(
        nome,
        cpf,
        nascimento,
        departamento,
        telefone,
        email
    );

    SET @id_usuario = LAST_INSERT_ID();

    INSERT INTO UsuarioLogin(id, senha)
    VALUES(@id_usuario, senha);
END$

DELIMITER ;
-- CALL InsertUsuarioAdministrador(...)