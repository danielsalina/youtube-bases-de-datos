-- -------------------------------- LEFT JOIN ------------------------------------------

-- Creamos la tabla estudiantes
CREATE TABLE estudiantes (
	id_estudiante INT PRIMARY KEY,
	nombre_estudiante VARCHAR(100)
);

-- Insertamos data en la tabla estudiantes
INSERT INTO estudiantes (id_estudiante, nombre_estudiante)
VALUES  (1, "fulano"),
		(2, "sutano"),
		(3, "mengano");

-- Creamos la tabla graduados y la llave foranea id_estudiante de la tabla estudiantes
CREATE TABLE graduados (
	id_graduado INT,
	id_estudiante INT,
	carrera VARCHAR(100),
	FOREIGN KEY (id_estudiante) REFERENCES estudiantes (id_estudiante)
);

-- Insertamos data en la tabla graduados
INSERT INTO graduados (id_graduado, id_estudiante, carrera)
VALUES  (1,1,"Analisis y Diseño De Sistemas"),
		(2,2, "Ingeniero de Software");

-- Agregamos la columna fecha_egreso a la tabla graduados
ALTER TABLE graduados ADD COLUMN fecha_egreso DATE;

-- Actualizamos la fecha de egreso del id_estudiante 2
UPDATE graduados SET fecha_egreso = "2020-07-30" WHERE id_estudiante = 2;

-- Seleccionamos los campos nombre_estudiante de la tabla estudiantes, carrera y fecha_egreso
-- De la tabla graduados, luego hacemos una consulta inicial a la tabla estudiantes y unimos
-- Ese resultado con el LEFT JOIN hacia la tabla graduados donde el criterio para buscar las 
-- Coincidencias es el valor del campo id_estudiante
SELECT estudiantes.nombre_estudiante, graduados.carrera, graduados.fecha_egreso
FROM estudiantes
LEFT JOIN graduados ON estudiantes.id_estudiante = graduados.id_estudiante;