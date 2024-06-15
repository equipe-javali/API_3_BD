CREATE TABLE usuariologin (
    id BIGINT NOT NULL,
    senha VARCHAR(60) NOT NULL,
    CONSTRAINT usuariologin_pkey PRIMARY KEY (id),
    CONSTRAINT usuariologin_id_key UNIQUE (id),
    CONSTRAINT usuariologin_id_fkey FOREIGN KEY (id) REFERENCES usuario (id) ON UPDATE CASCADE ON DELETE CASCADE
);
