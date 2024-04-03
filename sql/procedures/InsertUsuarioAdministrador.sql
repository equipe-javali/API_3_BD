CREATE OR REPLACE FUNCTION InsertUsuarioAdministrador(
    nome VARCHAR(100),
    cpf VARCHAR(11),
    nascimento DATE,
    departamento VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100),
    senha VARCHAR(60)
)
RETURNS VOID AS $$
DECLARE
    id_usuario INT;
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

    id_usuario := currval(pg_get_serial_sequence('Usuario', 'id'));

    INSERT INTO UsuarioLogin(id, senha)
    VALUES(id_usuario, senha);
END;
$$ LANGUAGE plpgsql;
-- CALL InsertUsuarioAdministrador(...)