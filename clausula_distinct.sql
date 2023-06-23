-- -------------------------------- CLÁUSULA DISTINC ------------------------------------

-- Insertamos datos en nuestra tabla ventas
INSERT INTO ventas (id_venta,producto,precio_unitario,cantidad) 
VALUES	 (1,'Teclado',1500,1),
	 	 (2,'Microfono',15000,1),
	 	 (3,'Monitor',105000,2),
	 	 (4,'Camara Web',25000,2),
	 	 (5,'Licuadora',50000,3),
	 	 (6,'Televisor',500000,3),
	 	 (7,'Botas',15000,11),
	 	 (8,'Sillón',105000,5),
	 	 (9,'Balón',15000,2),
	 	 (10,'Celular',1500000,3),
	 	 (11,'Reloj',150000,3),
	 	 (12,'Aire Acondicionado',150000,3),
	 	 (13,'Escritorio',7000,2),
	 	 (14,'Alfombra',13000,2),
	 	 (15,'Lampara',8540,3),
	 	 (16,'Microfono',6490,1),
	 	 (17,'Teclado',1500,1),
	 	 (18,'Teclado',15000,3),
	 	 (19,'Teclado',105000,1),
	 	 (20,'Camara Web',25000,3),
	 	 (21,'Camara Web',50000,2),
	 	 (22,'Camara Web',500000,2),
	 	 (23,'Camara Web',15000,2),
	 	 (24,'Sillón',105000,1),
	 	 (25,'Balón',15000,5),
	 	 (26,'Celular',1500000,4),
	 	 (27,'Celular',150000,5),
	 	 (28,'Celular',150000,3),
	 	 (29,'Escritorio',7000,5),
	 	 (30,'Alfombra',13000,1),
	 	 (31,'Alfombra',8540,10),
	 	 (32,'Alfombra',6490,5);

-- Seleccionamos del campo categoria, de la tabla productos, los registros unicos
SELECT DISTINCT categoria FROM productos;

-- Seleccionamos del campo precio, de la tabla productos, los registros unicos
SELECT DISTINCT precio FROM productos;

-- Seleccionamos del campo producto, de la tabla ventas, los registros unicos
SELECT DISTINCT producto FROM ventas;

-- Seleccionamos del campo cantidad, de la tabla ventas, los registros unicos
SELECT DISTINCT cantidad FROM ventas;

-- Seleccionamos del campo precio_unitario, de la tabla ventas, los registros unicos
SELECT DISTINCT precio_unitario FROM ventas;