-- 1. Criar o banco de dados
CREATE DATABASE FatecDB;
USE FatecDB;

-------------------------------------------------------
-- 2. Tabela de Estudantes
-------------------------------------------------------
CREATE TABLE tblEstudantes (
    idEstudante INT AUTO_INCREMENT PRIMARY KEY,
    nomeCompleto VARCHAR(150) NOT NULL,
    dataNascimento DATE,
    cpf VARCHAR(14) UNIQUE,
    emailInstitucional VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    endereco VARCHAR(200),
    curso VARCHAR(100),
    semestreAtual INT,
    sexo CHAR(1)
);








-------------------------------------------------------
-- 3. Tabela de Disciplinas
-------------------------------------------------------
CREATE TABLE tblDisciplinas (
    idDisciplina INT AUTO_INCREMENT PRIMARY KEY,
    nomeDisciplina VARCHAR(120) NOT NULL,
    cargaHoraria INT,
    professorResponsavel VARCHAR(150)
);

-------------------------------------------------------
-- 4. Tabela de Matriculas (Relacionamento N:M)
-------------------------------------------------------
CREATE TABLE tblMatriculas (
    idMatricula INT AUTO_INCREMENT PRIMARY KEY,
    idEstudante INT NOT NULL,
    idDisciplina INT NOT NULL,
    anoLetivo INT NOT NULL,
    semestre INT NOT NULL,

    -- Um estudante não pode se matricular duas vezes na mesma disciplina
    UNIQUE (idEstudante, idDisciplina),

    FOREIGN KEY (idEstudante) REFERENCES tblEstudantes(idEstudante)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (idDisciplina) REFERENCES tblDisciplinas(idDisciplina)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);




-- Populando tblDisciplinas (5 disciplinas)
INSERT INTO tblDisciplinas (nomeDisciplina, cargaHoraria, professorResponsavel)
VALUES
('Gestão Ágil de Projetos de Software', 80, 'José Mario Themoteo'),
('Estrutura de Dados', 80, 'Prof. Ana Silva'),
('Banco de Dados', 80, 'Prof. Marcos Oliveira'),
('Engenharia de Software', 80, 'Prof. Carla Mendes'),
('Programação Web', 80, 'Prof. João Pereira');


-- 2. Populando tblEstudantes

INSERT INTO tblEstudantes 
(nomeCompleto, dataNascimento, cpf, emailInstitucional, telefone, endereco, curso, semestreAtual, sexo)
VALUES
('ADRIANO RIBEIRO DA SILVA', NULL, NULL, 'adriano.silva@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('DIEGO VINICIUS SANTIAGO COELHO', NULL, NULL, 'diego.coelho@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('FELIPE MESSIAS DOS SANTOS', NULL, NULL, 'felipe.santos@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('GABRIELLY DA SILVA MOURA', NULL, NULL, 'gabrielly.moura@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'F'),
('GUSTAVO RODRIGUES DA COSTA', NULL, NULL, 'gustavo.costa@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('ISIS DE LIMA COSTA', NULL, NULL, 'isis.costa@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'F'),
('JACKELINE SANTOS DO NASCIMENTO', NULL, NULL, 'jackeline.nascimento@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'F'),
('JOSE VINICIUS SILVA DE SOUZA', NULL, NULL, 'jose.vinicius@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('LEONARDO CAMPOS DE ALMEIDA', NULL, NULL, 'leonardo.almeida@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('PAULO RICARDO LUNARDI DA SILVA', NULL, NULL, 'paulo.silva@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('RENATA RAMOS DOS SANTOS', NULL, NULL, 'renata.santos@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'F'),
('ROBSON OLIVEIRA', NULL, NULL, 'robson.oliveira@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('RODRIGO JORDAO KASSAHARA', NULL, NULL, 'rodrigo.kassahara@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M'),
('SAMUEL LOPES MACARIO', NULL, NULL, 'samuel.macario@fatec.sp.gov.br', NULL, NULL, 'DSM', 2, 'M');



-- 3. Populando tblMatriculas
INSERT INTO tblMatriculas (idEstudante, idDisciplina, anoLetivo, semestre)
VALUES
(1, 1, 2025, 1), (1, 3, 2025, 1), (1, 5, 2025, 1),
(2, 1, 2025, 1), (2, 3, 2025, 1), (2, 5, 2025, 1),
(3, 1, 2025, 1), (3, 3, 2025, 1), (3, 5, 2025, 1),
(4, 1, 2025, 1), (4, 3, 2025, 1), (4, 5, 2025, 1),
(5, 1, 2025, 1), (5, 3, 2025, 1), (5, 5, 2025, 1),
(6, 1, 2025, 1), (6, 3, 2025, 1), (6, 5, 2025, 1),
(7, 1, 2025, 1), (7, 3, 2025, 1), (7, 5, 2025, 1),
(8, 1, 2025, 1), (8, 3, 2025, 1), (8, 5, 2025, 1),
(9, 1, 2025, 1), (9, 3, 2025, 1), (9, 5, 2025, 1),
(10, 1, 2025, 1), (10, 3, 2025, 1), (10, 5, 2025, 1),
(11, 1, 2025, 1), (11, 3, 2025, 1), (11, 5, 2025, 1),
(12, 1, 2025, 1), (12, 3, 2025, 1), (12, 5, 2025, 1),
(13, 1, 2025, 1), (13, 3, 2025, 1), (13, 5, 2025, 1),
(14, 1, 2025, 1), (14, 3, 2025, 1), (14, 5, 2025, 1);


-- 1. Liste todos os estudantes cadastrados na tabela tblEstudantes.
SELECT * FROM tblEstudantes;

-- 2. Exiba apenas os nomes e e-mails dos estudantes.
SELECT nomeCompleto, emailInstitucional 
FROM tblEstudantes;

-- 3. Liste todos os estudantes do curso DSM.
SELECT * 
FROM tblEstudantes
WHERE curso = 'DSM';

-- 4. Mostre todos os estudantes do sexo feminino.
SELECT * 
FROM tblEstudantes
WHERE sexo = 'F';

-- 5. Exiba os estudantes em ordem alfabética crescente pelo nome.
SELECT * 
FROM tblEstudantes
ORDER BY nomeCompleto ASC;

-- 6. Liste os estudantes que estão no 2º semestre.
SELECT * 
FROM tblEstudantes
WHERE semestreAtual = 2;

-- 7. Mostre todas as disciplinas cadastradas na tabela tblDisciplinas.
SELECT * 
FROM tblDisciplinas;

-- 8. Exiba apenas o nome das disciplinas e o nome dos professores responsáveis.
SELECT nomeDisciplina, professorResponsavel
FROM tblDisciplinas;

-- 9. Liste as disciplinas cuja carga horária seja maior que 70 horas.
SELECT * 
FROM tblDisciplinas
WHERE cargaHoraria > 70;

-- 10. Exiba todas as matrículas realizadas no ano letivo de 2025.
SELECT * 
FROM tblMatriculas
WHERE anoLetivo = 2025;


-- 11. Nome do estudante + disciplina matriculada
SELECT e.nomeCompleto, d.nomeDisciplina
FROM tblMatriculas m
JOIN tblEstudantes e ON m.idEstudante = e.idEstudante
JOIN tblDisciplinas d ON m.idDisciplina = d.idDisciplina;