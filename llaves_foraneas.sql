-- ---------------------------------- FOREIGN KEY (LLAVES FORANEAS)-----------------------------

-- Creamos la tabla usuarios
CREATE TABLE usuarios (
	id_usuario INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre_usuario VARCHAR(50),
	direccion VARCHAR(100)
);

-- Insertamos datos en la tabla usuarios
INSERT INTO usuarios (nombre_usuario, direccion)
VALUES  ("fulano", "calle principal 123"),
		("sutano", "avenida central 456"),
		("mengano", "vereda final 789");

-- Creamos la tabla productos
CREATE TABLE productos (
	id_producto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre_producto VARCHAR(50),
	precio DECIMAL(10,2)
);

-- Insertamos data en la tabla de productos
INSERT INTO productos (nombre_producto, precio)
VALUES  ("camiseta", 19.22),
		("pantalon", 29.99),
		("zapatos", 39.99);

-- Creamos la tabla carrito con la llave foranea id_usuario
CREATE TABLE carrito (
	id_carrito INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_usuario INT UNSIGNED,
	fecha_creacion DATE,
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);

-- Insertamos data en la tabla carrito
INSERT INTO carrito (id_usuario, fecha_creacion)
VALUES  (1, "2023-06-01"),
		(2, "2023-06-02"),
		(3, "2023-06-03"),
		(3, "2023-06-08");

-- Creamos la tabla detallesCompra con las llaves foraneas id_carrito y id_producto
CREATE TABLE detallesCompra (
	id_detalle INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	id_carrito INT UNSIGNED,
	id_producto INT UNSIGNED,
	cantidad INT UNSIGNED,
	FOREIGN KEY (id_carrito) REFERENCES carrito(id_carrito),
	FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

-- Insertamos data en la tabla detallesCompra
INSERT INTO detallesCompra (id_carrito, id_producto, cantidad)
VALUES  (1,1,2),
		(1,3,1),
		(2,2,3),
		(2,3,2);
