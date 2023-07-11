-- -------------------------------- RIGHT JOIN ------------------------------------------

-- Seleccionamos los campos nombre_estudiante de la tabla estudiantes, carrera y fecha_egreso
-- De la tabla graduados, luego hacemos una consulta inicial a la tabla estudiantes y unimos
-- Ese resultado con el RIGHT JOIN hacia la tabla graduados donde el criterio para buscar las 
-- Coincidencias es el valor del campo id_estudiante
SELECT estudiantes.nombre_estudiante, graduados.carrera, graduados.fecha_egreso 
FROM estudiantes
RIGHT JOIN graduados ON estudiantes.id_estudiante = graduados.id_estudiante;

-- Insertamos data en la tabla graduados
INSERT INTO graduados (id_graduado, carrera, fecha_egreso)
VALUES (3, "COCINA VENEZOLANA", "2000-01-01")


-- -------------------------------- FULL OUTER JOIN ------------------------------------------

-- Seleccionamos los campos nombre_estudiante de la tabla estudiantes, carrera y fecha_egreso
-- De la tabla graduados, luego hacemos una consulta inicial a la tabla estudiantes y unimos
-- Ese resultado con el LEFT JOIN hacia la tabla graduados donde el criterio para buscar las 
-- Coincidencias es el valor del campo id_estudiante, luego seleccionamos los campos 
-- nombre_estudiante de la tabla estudiantes, carrera y fecha_egreso
-- De la tabla graduados, luego hacemos una consulta inicial a la tabla estudiantes y unimos
-- Ese resultado con el RIGHT JOIN hacia la tabla graduados donde el criterio para buscar las 
-- Coincidencias es el valor del campo id_estudiante y por ultimo unimos los resultados de
-- Ambas consultas en una sola utilizando el operador union
SELECT estudiantes.nombre_estudiante, graduados.carrera, graduados.fecha_egreso
FROM estudiantes
LEFT JOIN graduados ON estudiantes.id_estudiante = graduados.id_estudiante
UNION ALL
SELECT estudiantes.nombre_estudiante, graduados.carrera, graduados.fecha_egreso 
FROM estudiantes
RIGHT JOIN graduados ON estudiantes.id_estudiante = graduados.id_estudiante;