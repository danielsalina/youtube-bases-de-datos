-- -------------------------------- CLÁUSULA HAVING ------------------------------------

-- Insertamos nuevos productos a la tabla productos
INSERT INTO productos (nombre,precio,cantidad,descripcion,categoria) VALUES
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
	 ('Lampara',47000,11,'Lampara Moderna','Muebles');

-- Creamos la tabla ventas
CREATE TABLE ventas(
	id_venta INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	producto VARCHAR(100),
	precio_unitario INT,
	cantidad INT
);

-- Insertamos datos en nuestra tabla ventas
INSERT INTO ventas (id_venta,producto,precio_unitario,cantidad) 
VALUES(1,'Teclado',1500,57),
	 (2,'Microfono',15000,105),
	 (3,'Monitor',105000,17),
	 (4,'Camara Web',25000,500),
	 (5,'Licuadora',50000,5),
	 (6,'Televisor',500000,1005),
	 (7,'Botas',15000,68),
	 (8,'Sillón',105000,752),
	 (9,'Balón',15000,3514),
	 (10,'Celular',1500000,78135),
	 (11,'Reloj',150000,21651),
	 (12,'Aire Acondicionado',150000,151616),
	 (13,'Escritorio',7000,512),
	 (14,'Alfombra',13000,21584),
	 (15,'Lampara',8540,10),
	 (16,'Microfono',6490,515);
	
-- Creamos la tabla empleados
CREATE TABLE empleados (
	id_empleado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR (100),
	apellido VARCHAR (100),
	salario DECIMAL(10,2),
	departamento VARCHAR(100)
);

-- Insertamos datos en nuestra tabla empleados
INSERT INTO empleados (nombre, apellido, salario, departamento) 
VALUES  ("Fulano", "Fulanito", 200000, "Cobranzas"),
		("Mengano", "Menganito", 205000, "Control De Calidad"),
		("Sutano", "Sutanito", 210000, "Tesoreria"),
		("Dinesh", "Chugtai", 310000, "IT"),
		("Gilfoyle", "Bertram", 310001, "IT"),
		("Richard", "Hendricks", 2100000, "CEO"),
		("Jared", "Dunn", 2150000, "IT");

-- Seleccionamos todas las categorias, de la tabla productos las agrupamos y mostramos las mayores o igual a 3
SELECT categoria, COUNT(*) AS total
FROM productos
GROUP BY categoria
HAVING COUNT(*) >=3

-- Seleccionamos todos los productos, de la tabla ventas las agrupamos por los productos
-- y mostramos los que tengan una cantidad mayor o igual a 100
SELECT producto, SUM(cantidad) AS cantidad_total
FROM ventas
GROUP BY producto
HAVING SUM(cantidad) >= 100

-- Seleccionamos todos los productos, de la tabla ventas las agrupamos por los productos
-- y mostramos los que tengan una cantidad mayor o igual a 100 y mayor a un precio unitario de 1000
SELECT producto, SUM(cantidad) AS cantidad_total
FROM ventas
GROUP BY producto
HAVING SUM(cantidad) >= 100 AND MIN(precio_unitario) > 100000

-- Seleccionamos todos los departamentos, de la tabla empleados las agrupamos por departamento
-- y mostramos los que tengan una cantidad mayor o igual a 1
SELECT departamento, COUNT(*) AS cantidad_empleados
FROM empleados
GROUP BY departamento
HAVING COUNT(*) >= 1