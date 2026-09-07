-- OBJETIVO: Inserir dados nas tabelas, e atualizar os dados da tabela
-- CONCEITOS: INSERT, UPDATE

INSERT INTO Cliente (id_cliente, nome, cpf, status) 
VALUES (1020, 'Matheus', '1214', 'Ativo');

INSERT INTO Cliente (id_cliente, nome, cpf, status)
VALUES (1030, 'João', '1215', 'Ativo');

INSERT INTO Veiculo (id_cliente, id_veiculo, placa, ano)
VALUES (1020, 10, 'ABB-1040', 2024);

INSERT INTO Veiculo (id_cliente, id_veiculo, placa, ano)
VALUES (1020, 11, 'ABB-1020', 2023);

INSERT INTO Veiculo (id_cliente, id_veiculo, placa, ano)
VALUES (1030, 13, 'ABB-1050', 2022);

INSERT INTO Ordem_servico (id_veiculo, valor, status)
VALUES (11, 2500.00, 'Em andamento');

INSERT INTO Ordem_servico (id_veiculo, valor, status)
VALUES (11, 3000.00, 'Pendente');

INSERT INTO Ordem_servico (id_veiculo, valor, status)
VALUES (10, 4600.00, 'Concluida');

INSERT INTO Ordem_servico (id_veiculo, valor, status)
VALUES (10, 1670.00, 'Cancelada');

UPDATE Cliente
SET status = 'Inativo'
WHERE id_cliente = 1020;

UPDATE Cliente
SET nome = 'Lucas'
WHERE id_cliente = 1030;

UPDATE Ordem_servico
SET valor = 3350.60
WHERE id_os = 3;

UPDATE Ordem_servico
SET valor = 4850.00
WHERE id_os = 2;