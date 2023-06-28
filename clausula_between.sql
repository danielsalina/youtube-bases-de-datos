-- -------------------------------- CLÁUSULA BETWEEN ------------------------------------

-- Seleccionamos todos los campos de la tabla ventas, filtramos por el campo cantidad donde
-- el valor sea mayor o igual que 5 y menor o igual que 10 utilizando los operadoradores
-- > = < AND
SELECT * FROM ventas WHERE cantidad >= 5 AND cantidad <= 10;

-- Seleccionamos todos los campos de la tabla ventas, filtramos por el campo cantidad donde
-- el valor sea mayor o igual que 5 y menor o igual que 10 utilizando la cláusula BETWEEN
SELECT * FROM ventas WHERE cantidad BETWEEN 5 AND 10;

-- Seleccionamos todos los campos de la tabla empleados, filtramos por el campo salario donde
-- el valor sea mayor o igual que 200000 y menor o igual que 210000
SELECT * FROM empleados WHERE salario BETWEEN 200000 AND 210000;

-- Seleccionamos todos los campos de la tabla ventas, filtramos por el campo fecha_venta donde
-- el valor sea mayor o igual que 2023-01-01 y menor o igual que 2023-01-05
SELECT * FROM ventas WHERE fecha_venta BETWEEN "2023-01-01" AND "2023-01-05";

-- Añadimos la columna fecha_venta con el tipo de dato DATE a la tabla  ventas
ALTER TABLE ventas ADD COLUMN fecha_venta DATE;

-- Eliminamos todos los datos de la tabla ventas
TRUNCATE TABLE ventas;

-- Insertamos la data en la tabla ventas
INSERT INTO ventas (id_venta,producto,precio_unitario,cantidad,fecha_venta) VALUES
	 (1,'Teclado',1500,1,'2023-01-01'),
	 (2,'Microfono',15000,1,'2023-01-01'),
	 (3,'Monitor',105000,2,'2023-02-01'),
	 (4,'Camara Web',25000,2,'2023-01-09'),
	 (5,'Licuadora',50000,3,'2023-01-08'),
	 (6,'Televisor',500000,3,'2023-01-07'),
	 (7,'Botas',15000,11,'2023-01-04'),
	 (8,'Sillón',105000,5,'2023-01-06'),
	 (9,'Balón',15000,2,'2023-01-05'),
	 (10,'Celular',1500000,3,'2023-01-04'),
	 (11,'Reloj',150000,3,'2023-01-03'),
	 (12,'Aire Acondicionado',150000,3,'2023-01-02'),
	 (13,'Escritorio',7009,2,'2023-02-01'),
	 (14,'Alfombra',13000,2,'2023-03-01'),
	 (15,'Lampara',8540,3,'2023-04-01'),
	 (16,'Microfono',6,1,'2023-05-01'),
	 (17,'Teclado',1500,1,'2023-06-01'),
	 (18,'Teclado',7,3,'2023-07-01'),
	 (19,'Teclado',105000,1,'2023-08-01'),
	 (20,'Camara Web',25000,3,'2023-09-01'),
	 (21,'Camara Web',50000,2,'2023-10-01'),
	 (22,'Camara Web',9,2,'2023-11-01'),
	 (23,'Camara Web',15000,2,'2023-12-01'),
	 (24,'Sillón',105000,1,'2023-12-10'),
	 (25,'Balón',15000,5,'2023-01-01'),
	 (26,'Celular',1500000,4,'2023-01-03'),
	 (27,'Celular',150000,5,'2023-01-01'),
	 (28,'Celular',150000,3,'2023-02-01'),
	 (29,'Escritorio',8,5,'2023-09-01'),
	 (30,'Alfombra',13000,1,'2023-08-01'),
	 (31,'Alfombra',8540,10,'2023-08-08'),
	 (32,'Alfombra',6490,5,'2023-07-07');