--CRIA A TABELA DE VISUALIZAÇÃO
CREATE VIEW vwEmailMarketing
AS
SELECT nome, e_mail FROM Cliente;
---------------------------------------------------------
--CONSULTA TABELA
SELECT * FROM vwEmailMarketing;


