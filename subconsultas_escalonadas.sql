-- -------------------------------- SUBCONSULTA ESCALONADA --------------------------------------

-- Seleccionamos el nombre y precio de la tabla productos donde el precio sea menor que el resultado
-- de la subconsulta del promedio de todos los valores de la tabla productos
SELECT nombre_producto, precio
FROM productos
WHERE precio < (SELECT AVG(precio) FROM productos);

-- Insertamos valores en la tabla productos
INSERT INTO productos (id_producto, nombre_producto, precio)
VALUES  (4,"microfono", 75),
		(5,"camara web", 50),
		(6,"Samsung S23", 100),
		(7, "Cuaderno lineal", 10),
		(8,"Boligrafo", 5),
		(9, "Borrador", 3),
		(10, "Auriculares", 30);

-- Seleccionamos el id_cliente, nombre de la tabla clientes, adicionalmente nos traemos el total
-- de los pedidos en la tabla pedidos donde el id_cliente sea igual tanto en la tabla pedidos como 
-- en la tabla clientes
SELECT id_cliente, nombre,
	(SELECT COUNT(*) FROM pedidos
	WHERE pedidos.id_cliente = clientes.id_cliente) AS total_pedidos 
FROM clientes;