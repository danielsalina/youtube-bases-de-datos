-- -------------------------------- INNER JOIN ------------------------------------------	

-- Creamos la tabla clientes
CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY,
	nombre VARCHAR(50)
);

-- Insertamos data en la tabla clientes
INSERT INTO clientes (id_cliente, nombre)
VALUES  (1, "fulano"),
		(2, "sutano"),
		(3, "mengano");

-- Creamos la tabla pedidos con la llave foranea id_cliente de la tabla clientes
CREATE TABLE pedidos (
	id_pedido INT,
	id_cliente INT,
	nombre_producto VARCHAR(100),
	FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);

-- Insertamos data en la tabla pedidos
INSERT INTO pedidos (id_pedido, id_cliente, nombre_producto)
VALUES  (1, 1, "hamburguesa 4 * 4"),
		(2,1, "pepito con carne"),
		(3,2,"perro caliente"),
		(4,2,"enrrollado"),
		(5,2,"perro caliente sin papas");

-- Seleccionamos el campo nombre de la tabla clientes y el campo nombre_producto de la
-- Tabla pedidos, luego hacemos una consulta inicial a la tabla clientes con todos los
-- Registros de dicha tabla, luego nos traemos las coincidencias que tenemos en las
-- Tablas clientes y pedidos según las coincidencias que tengan en el campo id_cliente
SELECT clientes.nombre, pedidos.nombre_producto
FROM clientes
LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;