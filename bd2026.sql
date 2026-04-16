-- passo 1 -criando um base de dados

create database DBEscola;

-- passo 2 - selecionando a base de dados DBEscola
use DBEscola;

-- passo 3 - criando uma tabela funcionario
create table tblfuncionarios1(
 cod integer(2),
 nome varchar(250),
 sexo varchar(1),
 salario integer(2),
 setor varchar(2)   


 );

-- passo 4 filtrando o que tem dentro da tabela tblfuncionarios
select * from tblfuncionarios;