CREATE VIEW vw_receber_cliente AS 
SELECT r.idContaReceber, r.DataVencimento, r.Valor, c.Nome, c.CPF
FROM ContaReceber r
JOIN Cliente c ON 
r.Cliente_ID = c.idCliente;

SELECT * FROM vw_receber_cliente;