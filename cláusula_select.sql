-- -------------------------------- TRABAJANDO CON SELECT ----------------------------

-- Seleccionamos el campo nombre de la tabla clientes
SELECT nombre FROM clientes;

-- Seleccionamos todos (por eso el asterisco) los campos de la tabla clientes
SELECT * FROM clientes;

-- Utilizamos la función count para contar todos los registros de nuestra tabla clientes
SELECT COUNT(*) FROM clientes;

-- Utilizamos la función count y le asignamos el alias cantidad, para contar todos los registros
-- de nuestra tabla clientes 
SELECT COUNT(*) AS cantidad FROM clientes;

-- Seleccionamos todos los registros de nuestra tabla clientes donde (cláusula where) el campo
-- nombre sea igual a mengano
SELECT * FROM clientes WHERE nombre = "mengano";

-- Seleccionamos todos los registros de nuestra tabla clientes donde (cláusula where) el campo
-- nombre sea igual a mengano y/o pepe (usamos IN para pasar más de 1 opción)
SELECT * FROM clientes WHERE nombre IN ("mengano", "pepe");

-- Seleccionamos todos los registros de nuestra tabla clientes que empiecen en el campo nombre
-- (por eso usamos el operador LIKE) con la letra m sin importar como terminan (por eso le agregamos
-- el simbolo %)
SELECT * FROM clientes WHERE nombre LIKE "M%";

-- Seleccionamos todos los registros de nuestra tabla clientes que empiecen en el campo correo
-- con cualquier cosa (por eso usamos el % al principio) pero que terminen con gmail.com2
SELECT * FROM clientes WHERE correo LIKE "%gmail.com2";

-- Seleccionamos todos los registros de nuestra tabla clientes que incluyan en el campo direccion
-- el string con, sin importar como empieza y/o termina la cadena (por eso el % al principio y final)
SELECT * FROM clientes WHERE direccion LIKE "%con%";

-- Seleccionamos todos los registros de nuestra tabla clientes que al principio del campo nombre no incluya
-- (por eso usamos el operador NOT antes del LIKE) la letra m sin importar como terminan (por eso le agregamos
-- el simbolo %)
SELECT * FROM clientes WHERE nombre NOT LIKE "M%";

-- Seleccionamos todos los registros de nuestra tabla clientes que empiecen en el campo correo
-- con cualquier cosa (por eso usamos el % al principio) pero que al terminar no incluyan gmail.com2
SELECT * FROM clientes WHERE correo NOT LIKE "%gmail.com2";

-- Seleccionamos todos los registros de nuestra tabla clientes que no incluyan en el campo direccion
-- el string con, sin importar como empieza y/o termina la cadena (por eso el % al principio y final)
SELECT * FROM clientes WHERE direccion NOT LIKE "%con%";