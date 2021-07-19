SELECT Cliente.Nome, Pedido.Data_pedido, Pedido.Valor_pedido FROM Cliente
INNER JOIN Pedido
ON (Cliente.Cod_Cliente = Pedido.Cliente_cod_cliente)