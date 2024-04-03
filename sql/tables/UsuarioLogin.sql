CREATE TABLE UsuarioLogin (
    id SERIAL PRIMARY KEY,
    senha VARCHAR(60) NOT NULL,
    FOREIGN KEY (id) REFERENCES Usuario(id)
);