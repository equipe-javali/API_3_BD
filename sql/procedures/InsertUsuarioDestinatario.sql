DELIMITER $

CREATE PROCEDURE InsertUsuarioDestinatario(
    IN nome VARCHAR(100),
    IN cpf VARCHAR(11),
    IN nascimento DATE,
    IN departamento VARCHAR(20),
    IN telefone VARCHAR(20),
    IN email VARCHAR(100)
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
END$

DELIMITER ;
-- CALL InsertUsuarioDestinatario(...)