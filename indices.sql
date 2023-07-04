-- -------------------------------- INDICES ------------------------------------

-- Mostramos los indices que tenemos en la tabla personas
SHOW INDEX FROM personas;

-- Creamos la tabla personas
CREATE TABLE personas (
	dni INT,
	nombre varchar (40),
	apellido varchar (40),
	edad INT
);

-- Añadimos como llave primaria a los campos dni y apellido de la tabla personas
ALTER TABLE personas ADD CONSTRAINT pk_persona PRIMARY KEY (dni, apellido);

-- Añadimos como campo unico al campo dni de la tabla personas
ALTER TABLE personas ADD CONSTRAINT uq_dni UNIQUE (dni);

-- Añadimos como campos unicos a los campos dni y apellido de la tabla personas
ALTER TABLE personas ADD CONSTRAINT uq_nombre_completo UNIQUE (nombre, apellido);

-- Añadimos el indice i_edad al campo edad de la tabla personas
CREATE INDEX i_edad ON personas (edad);
-- Añadimos el indice i_nombre_completo a los campos nombre y apellido de la tabla personas
CREATE INDEX i_nombre_completo ON personas (nombre, apellido);

-- Eliminamos el indice i_nombre_completo de la tabla personas
ALTER TABLE personas DROP INDEX i_nombre_completo;

-- Eliminamos el campo unico uq_dni de la tabla personas
ALTER TABLE personas DROP CONSTRAINT uq_dni;

-- Eliminamos la primary key de la tabla personas
ALTER TABLE personas DROP PRIMARY KEY;

-- Insertamos el dni 123 y la edad de 20 en la tabla personas
INSERT INTO personas (dni, edad) 
VALUES (123,20)

-- Eliminamos todos los registros de la tabla personas y reiniciamos el contador autoincremental
TRUNCATE TABLE personas;

-- Eliminamos la tabla personas
DROP TABLE personas;