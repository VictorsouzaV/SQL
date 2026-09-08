-- OBJETIVO: Criar as tabelas necessárias para um banco de dados de uma oficina, configurar as primary key, unique, check
-- CONCEITOS: CREATE, ALTER

CREATE TABLE Cliente (
	id_cliente int NOT NULL,
    nome varchar(30) NOT NULL,
    cpf int,
    status varchar(10));

CREATE TABLE Veiculo (
	id_veiculo int NOT NULL,
    placa varchar(10) NOT NULL,
    ano int);

CREATE TABLE Ordem_servico (
    id_os int AUTO_INCREMENT PRIMARY KEY,
    id_veiculo int NOT NULL,
    valor decimal(10,2),
    status varchar(12) DEFAULT 'Pendente');

ALTER TABLE Cliente 
ADD CONSTRAINT cliente_pk 
PRIMARY KEY (id_cliente);

ALTER TABLE Cliente
ADD CONSTRAINT cliente_cpf_uq
UNIQUE (cpf);

ALTER TABLE Cliente
ADD CONSTRAINT cliente_status_ck
CHECK (status IN ('Ativo', 'Inativo'));
    
ALTER TABLE Veiculo
ADD CONSTRAINT veiculo_pk
PRIMARY KEY (id_veiculo);

ALTER TABLE Veiculo
ADD CONSTRAINT veiculo_placa_uq
UNIQUE (placa);

ALTER TABLE Veiculo
ADD CONSTRAINT veiculo_ano_ck
CHECK (ano >= 1980);

ALTER TABLE Veiculo 
ADD id_cliente int;

ALTER TABLE Veiculo
ADD CONSTRAINT cliente_veiculo_fk
FOREIGN KEY (id_cliente)
REFERENCES Cliente (id_cliente);

ALTER TABLE Cliente 
MODIFY COLUMN 
status varchar(10) DEFAULT 'Ativo';

ALTER TABLE Ordem_servico 
ADD CONSTRAINT veiculo_servico_pk
FOREIGN KEY (id_veiculo) 
REFERENCES Veiculo (id_veiculo);

ALTER TABLE Ordem_servico 
ADD CONSTRAINT valor_ck
CHECK (valor > 0);

ALTER TABLE Ordem_servico 
ADD CONSTRAINT status_ck
CHECK (status IN ('Pendente', 'Em andamento', 'Cancelada', 'Concluida'));