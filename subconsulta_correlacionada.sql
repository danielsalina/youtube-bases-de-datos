-- ------------------------------- SUBCONSULTA CORRELACIONADA -----------------------------------

-- Seleccionamos el id_cliente y nombre de la tabla clientes donde la cantidad de nuestra subconsulta
-- sea mayor a 2
SELECT id_cliente, nombre
FROM clientes
WHERE (SELECT COUNT(*) FROM pedidos WHERE pedidos.id_cliente = clientes.id_cliente) > 2;