-- -------------------------------- CLÁUSULA ORDER BY ------------------------------------

-- Seleccionamos todos los campos de la tabla ventas y ordenamos de menor a mayor según el
-- campo producto
SELECT * FROM ventas ORDER BY producto;

-- Seleccionamos todos los campos de la tabla ventas y ordenamos de mayor a menor según el
-- campo producto
SELECT * FROM ventas ORDER BY producto DESC;

-- Seleccionamos todos los campos de la tabla ventas y ordenamos de menor a mayor según el
-- campo cantidad
SELECT * FROM ventas ORDER BY cantidad;

-- Seleccionamos todos los campos de la tabla ventas y ordenamos mayor a menor según el
-- campo cantidad
SELECT * FROM ventas ORDER BY cantidad DESC;

-- Seleccionamos todos los campos de la tabla ventas y ordenamos de menor a mayor según los
-- campos cantidad y producto
SELECT * FROM ventas ORDER BY cantidad, producto;

-- Seleccionamos todos los campos de la tabla ventas y ordenamos de mayor a menor según el
-- campo cantidad y luego ordenamos de menor a mayor según el campo producto
SELECT * FROM ventas ORDER BY cantidad DESC, producto;

-- Seleccionamos todos los campos de la tabla ventas, filtramos los productos con el campo
-- precio unitario mayor o igual que 100000 y por último ordenamos nuestro resultado
-- de menor a mayor según el campo producto
SELECT * FROM ventas WHERE precio_unitario >= 100000 ORDER BY producto;

-- Seleccionamos todos los campos de la tabla ventas, filtramos los productos con el campor
-- precio unitario mayor o igual que 100000 y por último ordenamos nuestro resultado
-- de mayor a menor según el campo producto
SELECT * FROM ventas WHERE precio_unitario >= 100000 ORDER BY producto DESC;

-- Seleccionamos todos los campos de la tabla ventas, filtramos los productos con el campo
-- fecha venta mayores o iguales a 2023-01-01 y 2023-01-05, por último ordenamos nuestro 
-- resultado de menor a mayor según el campo fecha venta
SELECT * FROM ventas 
WHERE fecha_venta 
BETWEEN "2023-01-01" AND "2023-01-05"
ORDER BY fecha_venta;