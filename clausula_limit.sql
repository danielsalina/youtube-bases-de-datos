-- -------------------------------- CLÁUSULA LIMIT ------------------------------------

-- Seleccionamos todos los campos de la tabla productos y mostramos los primeros 2 registros
SELECT * FROM productos LIMIT 2;

-- Seleccionamos todos los campos de la tabla productos y mostramos desde el primer registro
-- seguido de los próximos 2
SELECT * FROM productos LIMIT 0, 2;

-- Seleccionamos todos los campos de la tabla productos, ordenamos por el campo cantidad y
-- mostramos de manera descendente los últimos 3 registros según los de mayor cantidad
SELECT * FROM productos ORDER BY cantidad DESC LIMIT 3;

-- Seleccionamos los campos distintos de la tabla productos y mostramos los primeros 5 registros
SELECT DISTINCT categoria FROM productos LIMIT 5;