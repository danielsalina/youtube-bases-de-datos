-- ------------------------------- TRIGGER CON BLOQUE DE LÓGICA --------------------------------

-- Creamos la tabla empleados
CREATE TABLE empleados (
	id_empleado INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	nombre VARCHAR (100),
	apellido VARCHAR (100),
	salario DECIMAL(10,2),
	departamento VARCHAR(100)
);

-- Insertamos datos en nuestra tabla empleados
INSERT INTO empleados (nombre, apellido, departamento) 
VALUES  ("Sutana", "Sutanita", "IT");

-- Creamos el trigger establecer_salario_minimo que se ejecutará antes de insertar registros en
-- Nuestra tabla empleados. Utilizamos el delimitador con el simbolo // para indicar donde comienza
-- Y donde termina el bloque de nuestro trigger. Adicionalmente utilizamos el bloque BEGIN para
-- Colocar nuestro bloque de lógica y cerramos nuestro bloque de lógica utilizando la keyword END
-- Nuestro trigger chequea si se da de alta un empleado con el salario en NULL y en ese caso seteamos
-- El valor a 5000
DELIMITER //

	CREATE TRIGGER establecer_salario_minimo BEFORE INSERT ON empleados FOR EACH ROW
	
		BEGIN
			IF (NEW.salario IS NULL) THEN
				SET NEW.salario = 5000;
			END IF;
		END //

DELIMITER ;

-- Creamos el trigger revisar_precioBU que se ejecutará antes de actualizar registros en
-- Nuestra tabla productos. 
-- Nuestro trigger chequea si el precio es menor a 0 y lo setea con el precio anterior
-- Si el precio es mayor a 500 entonces seteamos el precio anterior
DELIMITER //
CREATE TRIGGER revisar_precioBU BEFORE UPDATE ON productos FOR EACH ROW
	BEGIN
		IF (NEW.precio < 0) THEN
			-- SET NEW.precio = 0;
		       SET NEW.precio = OLD.precio;
		ELSEIF (NEW.precio > 500) THEN
			-- SET NEW.precio = 500;
	   		   SET NEW.precio = OLD.precio;
		END IF;
	END //
DELIMITER ;

-- Eliminamos nuestro trigger revisar_precioBU
DROP TRIGGER revisar_precioBU;

-- Actualizamos el campo precio de nuestra tabla productos para ejecutar nuestro trigger
UPDATE productos SET precio = 250 WHERE id_producto = 10;