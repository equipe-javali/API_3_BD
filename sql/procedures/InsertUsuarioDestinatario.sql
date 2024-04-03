CREATE OR REPLACE FUNCTION InsertUsuarioDestinatario(
    nome VARCHAR(100),
    cpf VARCHAR(11),
    nascimento DATE,
    departamento VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100)
)
RETURNS VOID AS $$
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
END;
$$ LANGUAGE plpgsql;
-- CALL InsertUsuarioDestinatario(...)