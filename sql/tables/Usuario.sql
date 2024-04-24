CREATE TABLE Usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    nascimento DATE,
    departamento VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100),
    status VARCHAR(100)
);
