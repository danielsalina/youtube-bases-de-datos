-- -------------------------------- SUBCONSULTA DE LISTA --------------------------------------

-- Añadimos la columna categoria en la tabla productos
ALTER TABLE productos ADD COLUMN categoria VARCHAR(100);

-- Seleccionamos todos los campos de la tabla productos donde el precio sea menor que cualquiera  de
-- los valores que tenemos en nuestra subconsulta que obtiene el valor de los precios de nuestras
-- categorias en nuestra tabla productos
SELECT * FROM productos WHERE precio < ANY
	(SELECT precio FROM productos WHERE categoria = "tecnologia")

-- Creamos la tabla categorias
CREATE TABLE categorias (
	id_categoria INT PRIMARY KEY NOT NULL,
	nombre_categoria VARCHAR(100)
);

-- Insertamos data en nuestra tabla categorias
INSERT INTO categorias (id_categoria, nombre_categoria)
VALUES  (1, "Ropa"),
		(2,"Calzado"),
		(3,"Tecnologia"),
		(4,"Articulos de oficina");

-- Creamos la tabla articulos
CREATE TABLE articulos (
  id_articulo int unsigned NOT NULL AUTO_INCREMENT,
  nombre_articulo varchar(50),
  precio decimal(10,2),
  id_categoria int NOT NULL,
  PRIMARY KEY (id_articulo),
  FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- Insertamos data en nuestra tabla articos
INSERT INTO articulos (id_articulos,nombre_articulos,precio,id_categoria) VALUES
	 (1,'Coche de bebé',250000.00,5),
	 (2,'Cortina de humo',7500.00,4),
	 (3,'Cuaderno lineal',2500.00,4),
	 (4,'Campera Azul',30000.00,1),
	 (5,'Notebook',350000.00,3);

-- Seleccionamos el id_articulo y el nombre_articulo de nuestra tabla articulos donde el id_categoria
-- incluya los valores del id_categoria de nuestra tabla categorias donde el id_categoria sea 5
SELECT id_articulos, nombre_articulos
FROM articulos
WHERE id_categoria IN (SELECT id_categoria FROM categorias WHERE id_categoria=5);