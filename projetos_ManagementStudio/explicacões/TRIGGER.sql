--CRIAÇÃO DE UM EXEMPLO PARA ENVIO DE E-MAIL AUTOMATICO
CREATE TABLE Envia_Email --criação tabela 
(
IDenvia_email INT IDENTITY(1,1),
Destinatario VARCHAR(50),
Assunto VARCHAR(50),
Mensagem VARCHAR(100)
);

----------------------------------------------------------
CREATE TRIGGER trEnvia_Email_Cliente
ON Cliente
FOR INSERT
AS
BEGIN

DECLARE 
	@nome      VARCHAR(50),
	@estado    VARCHAR(50),
	@telefone  VARCHAR(50),
	@e_mail    VARCHAR(50); 

	SELECT
	@nome = nome,
	@estado = estado,
	@telefone = telefone,
	@e_mail = e_mail

	FROM
		INSERTED
-VALUES('alex@senacsp.br','Cliente cadastrado com sucesso')
END

select *from Cliente
select *from Envia_Email