-- ----------------------------------- VIEWS -----------------------------------------

-- Creamos nuestra vista v_productos_ropa que nos mostrará todos los campos de la de la categoría
-- Electro tabla productos
CREATE VIEW v_productos_ropa AS SELECT * FROM productos WHERE categoria = "Electro";

-- Insertamos datos en la tabla productos
INSERT INTO productos (nombre, precio, cantidad, descripcion, categoria) 
VALUES ("Microfono", 100, 57, "Mircofono para grabar mis videos", "Tecno"),
		("Monitor", 80, 17, "Monitor para la PC", "Tecno"),
		("Teclado", 27, 180, "Teclado mecanico", "Tecno"),
		("Camara Web", 10, 767, "Camara para mis grabaciones", "Tecno"),
		("Licuadora", 400, 77, "Licuadora para batidos", "Electro"),
		('Microfono',100,2,'Mircofono para grabar mis videos','Tecno'),
	 	('Monitor',80,17,'Monitor para la PC','Tecno'),
	 	('Teclado',27,180,'Teclado mecanico','Tecno'),
	 	('Camara Web',10,767,'Camara para mis grabaciones','Tecno'),
	 	('Licuadora',400,77,'Licuadora para batidos','Electro'),
	 	('Licuadora',20000,7,'Licuadora para batidos','Electro'),
	 	('Televisor',400000,17,'TV LG 70"','Electro'),
	 	('Botas',80000,51,'Botas Para la lluvia','Ropa'),
	 	('Sillón',110000,25,'Sillón para Living','Hogar'),
	 	('Balón',35000,42,'Balón De Basket','Deportes'),
	 	('Celular',500000,15,'Celular Samsung','Tecno'),
	 	('Reloj',250000,8,'Reloj De Oro','Joyería'),
	 	('Aire Acondicionado',20000,9,'Aire Acondicionado Samsung','Hogar'),
	 	('Escritorio',85000,70,'Escriotorio de Oficina','Muebles'),
	 	('Alfombra',53000,33,'Alfombra de Lana','Hogar'),
	 	('Lampara',47000,11,'Lampara Moderna','Muebles');;

-- Invocamos a nuestra vista v_productos_ropa
SELECT * FROM v_productos_ropa;

-- Modificamos nuestra vista v_productos_ropa para que ahora nos muestre todos los campos de la categoria
-- Tecno de nuestra tabla productos
ALTER VIEW v_productos_ropa AS SELECT * FROM productos WHERE categoria = "Tecno";

-- Creamos nuestra vista v_estudiantes que internamente tiene los campos nombre_estudiante de la tabla 
-- estudiantes, carrera y fecha_egreso De la tabla graduados, luego hacemos una consulta inicial a la 
-- tabla estudiantes y unimos Ese resultado con el LEFT JOIN hacia la tabla graduados donde el criterio
-- para buscar las Coincidencias es el valor del campo id_estudiante, luego seleccionamos los campos 
-- nombre_estudiante de la tabla estudiantes, carrera y fecha_egreso
-- De la tabla graduados, luego hacemos una consulta inicial a la tabla estudiantes y unimos
-- Ese resultado con el RIGHT JOIN hacia la tabla graduados donde el criterio para buscar las 
-- Coincidencias es el valor del campo id_estudiante y por ultimo unimos los resultados de
-- Ambas consultas en una sola utilizando el operador union
CREATE VIEW v_estudiantes AS
SELECT estudiantes.nombre_estudiante, graduados.carrera, graduados.fecha_egreso
FROM estudiantes
LEFT JOIN graduados ON estudiantes.id_estudiante = graduados.id_estudiante
UNION ALL
SELECT estudiantes.nombre_estudiante, graduados.carrera, graduados.fecha_egreso 
FROM estudiantes
RIGHT JOIN graduados ON estudiantes.id_estudiante = graduados.id_estudiante;

-- Invocamos a nuestra vista v_estudiantes
SELECT * FROM v_estudiantes;