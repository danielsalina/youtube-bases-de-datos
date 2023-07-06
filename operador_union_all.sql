-- -------------------------------- OPERADOR UNION ALL ------------------------------------------	

-- Creamos la tabla empleados_ventas
CREATE TABLE empleados_ventas (
	id_empleado INT,
	nombre_empleado VARCHAR(50),
	departamento VARCHAR(50)
);	

-- Insertamos data en la tabla empleados_ventas
INSERT INTO empleados_ventas (id_empleado, nombre_empleado, departamento)
VALUES  (1,"fulano","ventas"),
		(2,"sutano","ventas"),
		(3,"mengano","ventas");

-- Creamos la tabla empleados_servicios_cliente
CREATE TABLE empleados_servicio_cliente (
	id_empleado INT,
	nombre_empleado VARCHAR(50),
	departamento VARCHAR(50)
);	

-- Insertamos data en la tabla empleados_servicios_cliente
INSERT INTO empleados_servicio_cliente (id_empleado, nombre_empleado, departamento)
VALUES  (1,"fulano","servicio al cliente"),
		(2,"sutano","servicio al cliente"),
		(3,"mengano","servicio al cliente");	

-- Realizamos nuestra consulta a la tabla empleados ventas y unimos ese resultado con el
-- Operador UNION ALL, el resultado de la consulta a la tabla empleados_servicio_cliente  
SELECT * FROM empleados_ventas
UNION ALL
SELECT * FROM empleados_servicio_cliente