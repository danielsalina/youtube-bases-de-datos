-- ------------------------------ ACTUALIZANDO Y ELIMINANDO REGISTROS --------------------------
-- Actualizamos el campo direccion donde el id_cliente sea igual a 1 de la tabla clientes
UPDATE clientes SET direccion = "Av.1 Calle Principal, Casa #7" WHERE id_cliente = 1;

-- Actualizamos los campos correo, telefono y edad donde el id_cliente sea igual a 1 de la tabla clientes
UPDATE clientes SET correo = "correo_de_pepe@gmail.com", telefono = 5, edad = 70 
WHERE id_cliente = 1;

-- Actualizamos el campo direccion de todos los registros de la tabla clientes
UPDATE clientes SET direccion = "Av.1 Calle Principal, Casa #7";

-- Eliminamos el id_cliente 1 de la tabla clientes
DELETE FROM clientes WHERE id_cliente = 1;

-- Eliminamos todos los registros de la tabla clientes (pero no reiniciamos el contador de la Primary Key)
DELETE FROM clientes;

-- Eliminamos todos los registros de la tabla clientes (reiniciamos el contador de la Primary Key)
TRUNCATE TABLE clientes; 