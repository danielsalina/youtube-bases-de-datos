-- -------------------------------- EXPRESIONES REGULARES ------------------------------------
-- Seleccionamos todos los campos de la tabla ventas, filtramos por el campo producto utilizando
-- una expresión regular que coincida con cualquier caracter de la letra a hasta la lertra z
SELECT * FROM ventas WHERE producto REGEXP "[A-Z]";

-- Seleccionamos todos los campos de la tabla ventas, filtramos por el campo producto utilizando
-- una expresión regular que coincida con cualquier caracter de la letra v hasta la lertra z
SELECT * FROM ventas WHERE producto REGEXP "[V-Z]";

-- Seleccionamos todos los campos de la tabla ventas, filtramos por el campo precio_unitario
-- utilizando una expresión regular que coincida con cualquier valor del 0 hasta el 9
SELECT * FROM ventas WHERE precio_unitario REGEXP "[0-9]";

-- Seleccionamos todos los campos de la tabla ventas, filtramos por el campo precio_unitario
-- utilizando una expresión regular que coincida con cualquier valor que empiece del 5
-- hasta el 9
SELECT * FROM ventas WHERE precio_unitario REGEXP "^[5-9]$";

-- Seleccionamos todos los campos de la tabla clientes, filtramos por el campo correo
-- utilizando una expresión regular que termine con el valor de @lito.com
SELECT * FROM clientes WHERE correo REGEXP "@lito.com$";

-- Seleccionamos todos los campos de la tabla productos, filtramos por el campo cantidad
-- utilizando una expresión regular que empiece con el valor de 1 y termine con cualquier
-- valor entre el rango de 0 y 9
SELECT * FROM productos WHERE cantidad REGEXP "^1[0-9]";

-- Seleccionamos todos los campos de la tabla productos, filtramos por el campo cantidad
-- utilizando una expresión regular que unicamente traiga los valores que empiecen en 1 y
-- terminen con un digito del 0 hasta el 9
SELECT * FROM productos WHERE cantidad REGEXP "^1[0-9]$";

-- Seleccionamos todos los campos de la tabla productos, filtramos por el campo descripcion
-- utilizando una expresión regular que unicamente traiga todas las coincidencias de la
-- palabra para
SELECT * FROM productos WHERE descripcion REGEXP "(para)";

-- Seleccionamos todos los campos de la tabla productos, filtramos por el campo descripcion
-- utilizando una expresión regular que unicamente traiga todas las coincidencias de la
-- palabra para y las letras b y m
SELECT * FROM productos WHERE descripcion REGEXP "(para|b|m)";