CREATE DATABASE loja;
USE loja;

CREATE TABLE tblProdutos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL,
    marca VARCHAR(50),
    data_validade DATE,
    fornecedor VARCHAR(100),
    em_estoque BOOLEAN DEFAULT TRUE
);

-- Inserir os registros
INSERT INTO tblProdutos (id_produto, nome, categoria, descricao, preco, quantidade, marca, data_validade, fornecedor, em_estoque) VALUES
(1, 'Notebook', 'Eletrônicos', 'Notebook com 8GB RAM e 256GB SSD', 3500.00, 20, 'Dell', NULL, 'Dell Brasil', TRUE),
(2, 'Smartphone', 'Eletrônicos', 'Smartphone com 128GB de armazenamento', 2500.00, 15, 'Samsung', NULL, 'Samsung Brasil', TRUE),
(3, 'Geladeira', 'Eletrodomésticos', 'Geladeira com capacidade de 350L', 2800.00, 10, 'Brastemp', '2025-12-31', 'Brastemp', TRUE),
(4, 'Fogão', 'Eletrodomésticos', 'Fogão 4 bocas', 1500.00, 5, 'Electrolux', '2026-01-15', 'Electrolux', TRUE),
(5, 'Cadeira Gamer', 'Móveis', 'Cadeira confortável para jogos', 800.00, 25, 'ThunderX3', NULL, 'Mobly', TRUE),
(6, 'Mesa de Escritório', 'Móveis', 'Mesa de escritório em madeira', 600.00, 12, 'CasaMob', NULL, 'TokStok', TRUE),
(7, 'Smart TV', 'Eletrônicos', 'Smart TV 50" 4K', 3500.00, 8, 'LG', NULL, 'LG Brasil', TRUE),
(8, 'Micro-ondas', 'Eletrodomésticos', 'Micro-ondas 20L', 400.00, 20, 'Panasonic', '2026-08-01', 'Panasonic', TRUE),
(9, 'Cafeteira', 'Eletrodomésticos', 'Cafeteira automática 220V', 300.00, 18, 'Philips', '2024-11-01', 'Philips', FALSE),
(10, 'Bicicleta', 'Esportes', 'Bicicleta para trilhas e estrada', 1500.00, 7, 'Caloi', NULL, 'Caloi Brasil', TRUE);

-- 01- Verificar os dados inseridos
SELECT * FROM tblProdutos;

-- 02 -filtrar todos os registros da tabela produtos (nome,preco,quantidade)
SELECT nome,preco,quantidade FROM tblProdutos;

-- 03- SELECIONAR SOMENTE OS PRODUTOS QUE O PRECO SEJA ,MAIOR QUE 2500
SELECT * FROM tblProdutos
WHERE quantidade >= 2500;

-- 04- selecionar um intervalo entre 10 e 20 
SELECT * FROM tblProdutos
WHERE quantidade >= 15 and quantidade <=20;

-- 05- selecionando com texto
SELECT * FROM tblProdutos
WHERE categoria = 'Eletrônicos' OR categoria ='Esportes';

-- 06 - selecionando mais colunas 
SELECT * FROM tblProdutos 
WHERE (categoria = 'Eletrônicos' OR categoria = 'Esportes') 
AND quantidade = 8;

