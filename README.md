# **Banco de Dados**   <img src="https://img.icons8.com/ios/452/database.png" alt="Banco de dados Ícone - Download Grátis, PNG e Vetores" style="zoom:25%;" />

**(OPÇÃO SCRIPT DE CRIAÇÃO MANUAL)**

CREATE DATABASE Exemplo_01
 ON PRIMARY
 (NAME = 'Exemplo_01', FILENAME = 'c:\ti20\Exemplo_01\mdf\Exemplo_01.mdf',
 SIZE = 10MB, MAXSIZE = 64, FILEGROWTH = 10%)
 LOG ON
 (NAME = 'Exemplo_01_log', FILENAME = 'c:\ti20\Exemplo_01\ldf\Exemplo_01_log.ldf',
 SIZE = 10MB, MAXSIZE = 64, FILEGROWTH = 10%)

**CRIAÇÃO DE TABELAS:**

- ***CREATE DATABASE***

> USE Exemplo_01
>
> CREATE TABLE Clinete(
> codigo INT IDENTITY(1,1),
> nome VARCHAR(30) NOT NULL,
> estado VARCHAR(20) NOT NULL,
> telefone VARCHAR(12) NOT NULL
>
> CONSTRAINT PK_Clientes
> PRIMARY KEY(codigo)
> );

USE: indica qual BD será utilizado

CREATE TABLE: Cria tabelas no BD

CONSTRAINT: Cria restrições para colunas no Banco de Dados, como se fossem regras

PRIMARY KEY: chave primária

IDENTITY(1,1): campo autonumerado

o primeiro 1 significa que a numeração começa a partir de 1

e o segundo 1 é o valor somado a cada novo cadastro na tabela

INSERT INTO nome_tabela(lista_campos) VALUES (lista_dados)

**Inserir dados:**

> USE Exemplo_01
> INSERT INTO Cliente (nome, estado, telefone)
> VALUES ('Alex','São Paulo','99999-9999');
>
> INSERT INTO Cliente (nome, estado, telefone)
> VALUES ('Richard','Rio de Janeiro','99999-8888');
>
> INSERT INTO Cliente (nome, estado, telefone)
> VALUES ('Alexandre','Minas Gerais','99999-7777');

Exemplo2:

> USE Exemplo_01
> INSERT INTO Cliente (nome, estado, telefone)
> VALUES ('Alex','São Paulo','99999-9999');
>
> INSERT INTO Cliente (nome, estado, telefone)
> VALUES ('Richard','Rio de Janeiro','99999-8888');
>
> INSERT INTO Cliente (nome, estado, telefone)
> VALUES ('Alexandre','Minas Gerais','99999-7777');
>
> INSERT INTO Cliente 
> VALUES ('Ozeas','São Paulo','99977-6666');

- **SELECT**-faz a seleção de dados
  1. ** faz - a seleção de todos os dados da tabela*

  2. *FROM - a  partir de* 

*EXEMPLO:* 

> SELECT* FROM Cliente;

Exemplo2:

> SELECT* FROM Cliente;
>
> **OU**
>
> SELECT codigo, nome, estado, telefone FROM Cliente
> WHERE nome = 'Alex'

- **LIKE -** operador, seleciona parcialmente uma string e usa - se por exemplo para o final a constante %

  >SELECT codigo, nome FROM Cliente
  >WHERE nome LIKE 'Alex%' 

- **ORDER BY-** ordena um campo ou mais

  > SELECT nome, estado FROM Cliente
  > ORDER BY nome,estado

- **UPDATE [colunas] SETE campo -** atualiza dados da tabela

  Exemplo:

  >UPDATE Cliente SET telefone = '21582-5500'
  >WHERE nome  = 'Richard'

- **ALTER TABLE -** insere novos campos 

  sintaxe

  > ALTER TABLE [ coluna ] ADD nome [ tipo de dados ]

  Exemplo:

  > ALTER TABLE Clinete
  > ADD e_mail VARCHAR(30);
  >
  > SELECT*FROM Cliente --mostra os campos alterados após inclusão

  Exemplo2:

  >UPDATE Cliente --insere novos dados
  >SET e_mail = 'alex@senacsp.br'
  >WHERE nome  = 'Alex';
  >
  >UPDATE Cliente 
  >SET e_mail = 'richard@senacsp.br'
  >WHERE nome  = 'Richard';
  >
  >UPDATE Cliente 
  >SET e_mail = 'alexandre@senacsp.br'
  >WHERE nome  = 'Alexandre';
  >UPDATE Cliente 
  >SET e_mail = 'ozeas@senacsp.br'
  >WHERE nome  = 'Ozeas';
  >
  >SELECT *FROM Cliente --mostra dados alterados

  **DELETE -** deleta banco de dados e campos selecionados
  
  Exemplo:
  
  > SELECT * FROM Clie --seleciona o campo da tabela 
  > DELETE FROM Cliente WHERE nome = 'Ozeas' --deleta campo selecionado
  > SELECT *FROM Cliente--mostra tabela
  
  **VIEWS -** tabelas virtuais ( exibições, visualizações, visões de usuário ), tabelas de consultas que permite visualizar determinadas tabelas por usuários
  
  sintaxe
  
  **CREATE VIEW** <nome da tabela> **AS** < *SELECT, FROM, WHERE* > 
  
  Exemplo:
  
  > --CRIA A TABELA DE VISUALIZAÇÃO
  > CREATE VIEW vwEmailMarketing
  > AS
  > SELECT nome, e_mail FROM Cliente;
  >
  > -------------------------------------------------------
  >
  > --CONSULTA TABELA
  > SELECT * FROM vwEmailMarketing;

**STORED PROCEDURE -** rotinas de repetição, coleção de programas criados (comandos SQL), que são executados dentro do BD. Para criar um **SP**, precisamos ter uma tabela já criada.

Sintaxe

> CREATE PROCEDORE
>
> @campo de busca TIPO DE DADOS 
>
> WHERE
>
> EXECUTE

Exemplo:

> CREATE PROCEDURE Buscar_telefone --criada variavel buscar
> @Busca VARCHAR(20) --variavel de busca
> AS
> SELECT nome, telefone FROM Cliente --campos selecionados
> WHERE telefone = @Busca --resultado da variavel
>
> ---------------------------------------------------------
> --executa busca
> EXECUTE Buscar_telefone '99999-9999'



**TRIGGER -** procedimento que é disparado quando uma ação especifica ocorre, toda vez que houver uma alteração na tabela( inclusão, exclusão, atualização ), o gatilho é disparado.

Sintaxe

> CREATE TRIGGER
>
> ON ( em )
>
> FOR INSERT ( deverá ser inserido )
>
> AS BEGIN ( início da ação )
>
> DECLARE ( declaração de variáveis )
>
> INSERTED ( tabela temporária criada APENAS dentro do trigger )

1. Exemplo: Sintaxe envio de email:

   >  CREATE TRIGGER trEnvia_Email_Cliente --variavel
   > ON Cliente
   > FOR INSERT
   > AS
   > BEGIN

2. Exemplo:

>CREATE TRIGGER trEnvia_Email_Cliente
>ON Cliente
>FOR INSERT
>AS
>BEGIN
>
>DECLARE 
>	@nome      VARCHAR(50),
>	@estado    VARCHAR(50),
>	@telefone  VARCHAR(50),
>	@e_mail    VARCHAR(50); 
>
>SELECT
>	@nome = nome,
>	@estado = estado,
>	@telefone = telefone,
>	@e_mail = e_mail
>
>FROM
>		INSERTED
>-VALUES('alex@senacsp.br','Cliente cadastrado com sucesso')
>
>END

- *Consultar :*
  -  select *from Cliente
  - select *from Envia_Email 



















