CREATE TABLE Cliente (
  Cod_cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(255) NULL,
  Telefone VARCHAR(20) NULL,
  Telefone2 VARCHAR(20) NULL,
  Rua VARCHAR(45) NULL,
  Numero VARCHAR(20) NULL,
  Complemento VARCHAR(45) NULL,
  CEP VARCHAR(20) NULL,
  Cidade VARCHAR(45) NULL,
  Estado VARCHAR(20) NULL,
  Tipo_cliente VARCHAR(20) NULL,
  CPF_CNPJ VARCHAR(20) NULL,
  RG_IE VARCHAR(20) NULL,
  PRIMARY KEY(Cod_cliente)
);

CREATE TABLE Editora (
  Cod_editora INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Contato VARCHAR(45) NULL,
  Email VARCHAR(45) NULL,
  Nome_editora VARCHAR(45) NULL,
  Tel_contato VARCHAR(20) NULL,
  PRIMARY KEY(Cod_editora)
);

CREATE TABLE Estoque (
  Cod_livro INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Qtd_estoque INTEGER UNSIGNED NULL,
  PRIMARY KEY(Cod_livro)
);

CREATE TABLE Itens_Pedido (
  Num_pedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Pedido_Num_pedido INTEGER UNSIGNED NOT NULL,
  Livro_Cod_Livro INTEGER UNSIGNED NOT NULL,
  Qtd_pedido INTEGER UNSIGNED NULL,
  Valores_itens_pedido FLOAT NULL,
  PRIMARY KEY(Num_pedido),
  INDEX Itens_Pedido_FKIndex1(Livro_Cod_Livro),
  INDEX Itens_Pedido_FKIndex2(Pedido_Num_pedido)
);

CREATE TABLE Livro (
  Cod_Livro INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Estoque_Cod_livro INTEGER UNSIGNED NOT NULL,
  Editora_Cod_editora INTEGER UNSIGNED NOT NULL,
  Nome_Livro VARCHAR(255) NULL,
  Autor VARCHAR(45) NULL,
  Preco FLOAT NULL,
  Categoria VARCHAR(45) NULL,
  ISBN VARCHAR(20) NULL,
  Ano DATE NULL,
  Cod_editora INTEGER UNSIGNED NULL,
  PRIMARY KEY(Cod_Livro),
  INDEX Livro_FKIndex1(Editora_Cod_editora),
  INDEX Livro_FKIndex2(Estoque_Cod_livro)
);

CREATE TABLE Pedido (
  Num_pedido INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Cliente_Cod_cliente INTEGER UNSIGNED NOT NULL,
  Data_pedido DATE NULL,
  Valor_pedido FLOAT NULL,
  PRIMARY KEY(Num_pedido),
  INDEX Pedido_FKIndex1(Cliente_Cod_cliente)
);


