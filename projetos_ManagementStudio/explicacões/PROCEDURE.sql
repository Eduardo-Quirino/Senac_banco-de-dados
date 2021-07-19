CREATE PROCEDURE Buscar_telefone --criada variavel buscar
@Busca VARCHAR(20) --variavel de busca
AS
SELECT nome, telefone FROM Cliente --campos selecionados
WHERE telefone = @Busca --resultado de onde buscar

---------------------------------------------------------
--EXECUTAR PROCEDURE
EXECUTE Buscar_telefone '99999-8888'
