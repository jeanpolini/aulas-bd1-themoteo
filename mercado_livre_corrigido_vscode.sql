CREATE DATABASE dbMercadoLivre;

USE dbMercadoLivre;

CREATE TABLE tblProdutos (
    id_produto INT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL,
    marca VARCHAR(100),
    data_validade DATE,
    fornecedor VARCHAR(255),
    em_estoque BOOLEAN NOT NULL
);

SELECT * FROM tblProdutos;

INSERT INTO tblProdutos (
    id_produto,
    nome,
    categoria,
    descricao,
    preco,
    quantidade,
    marca,
    data_validade,
    fornecedor,
    em_estoque
) VALUES (
    1,
    'Arroz tipo 1',
    'Alimentos',
    'Arroz branco tipo 1 - pacote 5kg',
    29.90,
    100,
    'Tio Joao',
    '2026-12-31',
    'Fornecedor ABC',
    TRUE
);