-- --------------------------------- OPERADOR UNION ----------------------------------------

-- Creamos la tabla usuarios_activos
CREATE TABLE usuarios_activos (
	id_usuario INT,
	nombre_usuario VARCHAR(50),
	edad INT,
	correo VARCHAR(100),
	fecha_alta DATE,
	fecha_baja DATE
);

-- Insertamos data en la tabla usuarios_activos
INSERT INTO usuarios_activos (id_usuario, nombre_usuario, edad, correo, fecha_alta)
VALUES  (1,"fulano",18,"fulano@gmail.com","2000-01-01"),
		(2,"mengano",18,"mengano@gmail.com","2010-01-01"),
		(3,"sutano",18,"sutano@gmail.com","2020-01-01");

-- Creamos la tabla usuarios_inactivos
CREATE TABLE usuarios_inactivos (
	id_usuario INT,
	nombre_usuario VARCHAR(50),
	edad INT,
	correo VARCHAR(100),
	fecha_alta DATE,
	fecha_baja DATE
);

-- Insertamos data en la tabla usuarios_inactivos
INSERT INTO usuarios_inactivos (id_usuario, nombre_usuario, edad, correo, fecha_alta, fecha_baja)
VALUES  (2,"mengano",18,"mengano@gmail.com","2010-01-01", "2010-12-31"),
		(3,"sutano",18,"sutano@gmail.com","2020-01-01", "2020-12-31");

-- Seleccionamos los campos nombre, edad, fecha_alta y fecha_baja de la tabla usuarios_activos
-- Luego el resultado de esa consulta la unimos con el resultado de la consulta que tenemos
-- De la tabla usuarios_inactivos con los mismos campos nombre, edad, fecha_alta y fecha_baja
SELECT nombre, edad, fecha_alta, fecha_baja FROM usuarios_activos
UNION
SELECT nombre_usuario, edad, fecha_alta, fecha_baja FROM usuarios_inactivos