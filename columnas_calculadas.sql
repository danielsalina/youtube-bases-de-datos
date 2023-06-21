-- -------------------------------- COLUMNAS CALCULADAS ------------------------------------

-- Creamos la tabla productos
CREATE TABLE productos(
	id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR(100),
	precio INT,
	cantidad INT,
	descripcion TEXT
);

-- Añadimos la columna categoria a la tabla productos
ALTER TABLE productos ADD COLUMN categoria VARCHAR(150);

-- Insertamos datos en la tabla productos
INSERT INTO productos (nombre, precio, cantidad, descripcion, categoria) 
VALUES ("Microfono", 100, 57, "Mircofono para grabar mis videos", "Tecno"),
		("Monitor", 80, 17, "Monitor para la PC", "Tecno"),
		("Teclado", 27, 180, "Teclado mecanico", "Tecno"),
		("Camara Web", 10, 767, "Camara para mis grabaciones", "Tecno"),
		("Licuadora", 400, 77, "Licuadora para batidos", "Electro");

-- Calculamos el subtotal de precio por cantidad
SELECT nombre, precio, cantidad, (precio * cantidad) AS subtotal FROM productos;

-- Calculamos el descuento de precio por cantidad por el 0.21 porciento
SELECT nombre, precio, cantidad, (precio * cantidad * 0.21 / 100) AS descuento FROM productos;

-- Calculamos el total de precio por cantidad restandole el precio por cantidad por el 0.21
SELECT nombre, precio, cantidad, (precio * cantidad - (precio * cantidad * 0.21 / 100))
AS total FROM productos;

-- Calculamos el total despues del descuento e iva
SELECT nombre,cantidad, precio,
(precio * cantidad) AS subtotal, (precio * cantidad * 21 / 100) AS IVA,
((precio * cantidad) - (precio * cantidad * 21 / 100)) AS total
FROM productos;