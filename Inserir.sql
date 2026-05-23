INSERT INTO Estado (Nome, UF)
values 
('São Paulo', 'SP'),
('Paraná', 'PR'),
('Minas Gerais', 'MG');

INSERT INTO Municipio (Estado_ID, Nome, CodigoIBGE)
VALUES 
(1, 'Franca', 3516200),
(2, 'Curitiba', 4106902),
(3, 'Uberaba', 3170107);

INSERT INTO Cliente (Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID)
VALUES 
('Denisander Vivan', '12345678915', '999999999', 'Rua dos bobos', '0', 1, '14407000', 1),
('Geani Aparecida de Souza', '78945613212', '888888888', 'Rua dos pinschers', '0', 2, '80000000', 2),
('James Heloiso de Sousa', '45678913452', '7777777777', 'Rua dos meninos bonitos', '0', 3, '38000000', 3);

INSERT INTO ContaReceber (Cliente_ID, FaturaVenda_ID, DataConta, DataVencimento, Valor, Situacao, Cliente_idCliente)
VALUES 
(4, 12345, '2025/02/10', '2026/10/10', 230.30, '1', 4),
(5, 23456, '2025/08/24', '2025/12/12', 245.22, '2', 5),
(6, 78945, '2025/09/28', '2026/01/01', 510.20, '3', 6);



