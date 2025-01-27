CREATE TABLE  restaurantes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    foto VARCHAR(255),
    horarios_funcionamento TEXT NOT NULL
);

CREATE TABLE  produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco NUMERIC (10, 2) NOT NULL,
    categoria VARCHAR(255),
    foto VARCHAR(255),
    restaurante_id BIGINT NOT NULL,
    FOREIGN KEY (restaurante_id) REFERENCES restaurantes(id) ON DELETE CASCADE
);

CREATE TABLE promocoes(
    id SERIAL PRIMARY KEY,
    descricao TEXT,
    preco_promotion NUMERIC(10,2),
    dias TEXT,
    horario_inicio TIME,
    horario_termino TIME,
    produtos_id BIGINT NOT NULL,
    FOREIGN KEY (produtos_id) REFERENCES produtos(id) ON DELETE CASCADE
);