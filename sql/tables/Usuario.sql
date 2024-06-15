CREATE TABLE usuario (
    id BIGSERIAL,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    nascimento DATE,
    departamento VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100),
    status VARCHAR,
    perfil SMALLINT,
    tipo_foto VARCHAR(30),
    dados_foto BYTEA,
    CONSTRAINT usuario_pkey PRIMARY KEY (id),
    CONSTRAINT usuario_tipo_foto_check CHECK ((LENGTH(tipo_foto) <= 30))
);
