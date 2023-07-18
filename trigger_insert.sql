-- ------------------------------- TRIGGER INSERT -----------------------------------

-- Creamos la tabla productos_triggers
CREATE TABLE productos_triggers (
	id_producto INT,
	nombre_producto VARCHAR (100),
	precio DECIMAL (10,2),
	usuario VARCHAR(50),
	fecha_insertado DATETIME
);

-- Creamos el trigger productos_AI que se estará ejecutando después de insertar data en la tabla productos
-- Nuestro trigger insertará por cada nuevo registro los nuevos valores en nuestra tabla productos_IA
CREATE TRIGGER productos_AI AFTER INSERT ON productos FOR EACH ROW
INSERT INTO productos_triggers (id_producto, nombre_producto, precio, usuario, fecha_insertado)
VALUES (NEW.id_producto, NEW.nombre_producto, NEW.precio, CURRENT_USER(), NOW())

-- Insertamos data en la tabla productos para ejecutar nuestro trigger
INSERT INTO productos (nombre_producto, precio, id_categoria) 
VALUES  ("Buzo", 49.99, 1),
		("Gorra", 59.99, 6),
		("Reloj", 49.99, 6);