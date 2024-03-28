CREATE TABLE Usuario (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    nascimento DATE,
    departamento VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100)
);