USE Exemplo_01
--Inserir dados 
INSERT INTO Cliente (nome, estado, telefone)
VALUES ('Alex','São Paulo','99999-9999');

INSERT INTO Cliente (nome, estado, telefone)
VALUES ('Richard','Rio de Janeiro','99999-8888');

INSERT INTO Cliente (nome, estado, telefone)
VALUES ('Alexandre','Minas Gerais','99999-7777');

INSERT INTO Cliente 
VALUES ('Ozeas','São Paulo','99977-6666');

SELECT* FROM Cliente;

--mostra informações da tabela com todos os dados de Alex 
SELECT codigo, nome, estado, telefone FROM Cliente
WHERE nome = 'Alex'

--mostra se ixiste dados de Alex 
SELECT codigo, nome FROM Cliente
WHERE nome LIKE 'Alex%'


--ordena um campo ou mais
SELECT nome, estado FROM Cliente
ORDER BY nome,estado  --desc decresente

------------------------------------------------------------
--atualiza dados da tabela
SELECT nome, telefone FROM Cliente
WHERE NOME  = 'Richard'

UPDATE Cliente SET telefone = '21582-5500'
WHERE nome  = 'Richard'