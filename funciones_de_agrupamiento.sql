-- -------------------------------- FUNCIONES AGRUPADAS ------------------------------------

-- Obtenemos la cantidad total de los productos
SELECT COUNT(*) AS total_productos FROM productos;

-- Sumamos el precio total de nuestros productos
SELECT SUM(precio) AS total_ventas FROM productos;

-- Obtenemos el promedio de nuestros precios
SELECT AVG(precio) AS precio_promedio FROM productos;

-- Obtenemos el precio maximo
SELECT MAX(precio) AS precio_maximo FROM productos;

-- Obtenemos el precio minimo
SELECT MIN(precio) AS precio_minimo FROM productos;

-- Obtenemos el precio maximo, lo agrupamos por nombre y precio y ordenamos por precio de mayor a menor
SELECT nombre, precio, MAX(precio) AS precio_maximo 
FROM productos
GROUP BY nombre, precio
ORDER BY precio DESC;

-- Insertamos un nuevo producto a la tabla productos
INSERT INTO productos (nombre, precio, cantidad, descripcion, categoria) 
VALUES ("Licuadora", 20000, 7, "Licuadora para batidos", "Electro")