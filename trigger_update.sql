-- ------------------------------- TRIGGER UPDATE -----------------------------------

-- Creamos la tabla productos_actualizados
CREATE TABLE productos_actualizados (
	id_producto_anterior INT,
	nombre_producto_anterior VARCHAR(100),
	precio_anterior DECIMAL(10,2),
	id_categoria_anterior INT,
	id_producto_nuevo INT,
	nombre_producto_nuevo VARCHAR(100),
	precio_nuevo DECIMAL(10,2),
	id_categoria_nuevo INT,
	usuario VARCHAR(50),
	fecha_insertado DATE
);

-- Creamos el trigger productos_BU que se ejecutará antes de que se actualice un registro en la
-- Tabla productos
CREATE TRIGGER productos_BU BEFORE UPDATE ON productos FOR EACH ROW
INSERT INTO productos_actualizados
(id_producto_anterior, nombre_producto_anterior, precio_anterior, id_categoria_anterior,
id_producto_nuevo, nombre_producto_nuevo, precio_nuevo, id_categoria_nuevo, usuario, fecha_insertado)
VALUES
(OLD.id_producto, OLD.nombre_producto, OLD.precio, OLD.id_categoria,
NEW.id_producto, NEW.nombre_producto, NEW.precio, NEW.id_categoria, current_user(),
now())

-- Actualizamos el campo precio de nuestra tabla productos para ejecutar nuestro trigger
UPDATE productos SET precio = precio + 10;