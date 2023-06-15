-- -------------------------------- TRABAJANDO CON LOS OPERADORES ----------------------------

-- Añadimos la columna edad en la tabla clientes
ALTER TABLE clientes ADD COLUMN edad INT;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo edad sea distinto a 25
SELECT * FROM clientes WHERE edad != 25;

-- -- Seleccionamos todos los campos de la tabla clientes donde el valor del campo edad sea igual a 25
SELECT * FROM clientes WHERE edad = 25;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo edad sea mayor a 18
SELECT * FROM clientes WHERE edad > 18;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo edad sea mayor o igual a 18
SELECT * FROM clientes WHERE edad >= 18;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo edad sea menor a 18
SELECT * FROM clientes WHERE edad < 18;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo edad sea menor o igual a 18
SELECT * FROM clientes WHERE edad <= 18;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo nombre no sean
-- mengano, mengano3, mengano4, mengano5, mengano6
SELECT * FROM clientes WHERE nombre NOT IN ("mengano","mengano3","mengano4","mengano5","mengano6");

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo nombre sea igual a
-- mengano y el valor del campo edad sea igual a 26
SELECT * FROM clientes WHERE nombre = "mengano" AND edad = 26;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo nombre sea igual a
-- mengano o el valor del campo edad sea igual a 25
SELECT * FROM clientes WHERE nombre = "mengano" OR edad = 25;

-- Seleccionamos todos los campos de la tabla clientes donde el valor del campo nombre sea igual a
-- mengano, el valor del campo edad sea igual a 51, el valor del campo direccion sea igual a No sé
-- o el valor del campo nombre sea igual a juan
SELECT * FROM clientes WHERE (nombre = "mengano" AND edad = 51 AND direccion = "No sé")
OR (nombre = "juan");