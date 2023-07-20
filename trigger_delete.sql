-- ------------------------------- TRIGGER DELETE -----------------------------------

-- Creamos la tabla productos_eliminados
CREATE TABLE productos_eliminados (
	id_producto INT,
	nombre_producto VARCHAR(100),
	id_categoria INT,
	precio DECIMAL(10,2),
	usuario VARCHAR(50),
	fecha_eliminacion DATETIME
);

-- Creamos el trigger productos_AD que se ejecutará después de que se elimine un registro
-- En nuestra tabla productos 
CREATE TRIGGER productos_AD AFTER DELETE ON productos FOR EACH ROW
INSERT INTO productos_eliminados (id_producto, nombre_producto, id_categoria, precio, usuario, fecha_eliminacion)
VALUES (OLD.id_producto, OLD.nombre_producto, OLD.id_categoria, OLD.precio, CURRENT_USER(), NOW())

-- Eliminamos el producto con id_producto 1 de la tabla productos para ejecutar nuestro trigger 
DELETE FROM productos WHERE id_producto = 1;