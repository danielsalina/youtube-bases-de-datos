-- ------------------------------- STORE PROCEDURE --------------------------------

-- Creamos el procedimiento almacenado sp_mostrar_clientes para mostrar todos los campos de la
-- Tabla clientes
CREATE PROCEDURE sp_mostrar_clientes()
	SELECT * FROM clientes;
-- Llamamos a nuestro procedimiento almacenado sp_mostrar_clientes
CALL sp_mostrar_clientes();

-- Creamos nuestro procedimiento almacenado sp_mostrar_categorias para mostrar todos los campos
-- De nuestra tabla categotias
DELIMITER //
	CREATE PROCEDURE sp_mostrar_categorias()
		BEGIN
			SELECT * FROM categorias;
		END //
DELIMITER ;
-- Llamamos a nuestri procedimiento almacenado sp_mostrar_categorias
CALL sp_mostrar_categorias();

-- Creamos nuestro procedimiento almacenado sp_parametros_entrada que recibirá un parámetro de entrada
-- de tipo entero. Nuestro procedimiento crea la variable anio_actual y la seteamos con el valor 2023
-- También creamos la variable edad y seteamos el valor que obtenemos de la operación aritmetica de
-- Ela año actual menos el año de nacimiento. Por últimos seleccionamos la variable edad para mostrala
DELIMITER //
CREATE PROCEDURE sp_parametros_entrada(IN anio_nacimiento INT)
	BEGIN
		DECLARE anio_actual INT DEFAULT 2023;
		DECLARE edad INT;
	
		SET edad = anio_actual - anio_nacimiento;
	
		SELECT edad;
	END //
DELIMITER ;

-- Llamamos a nuestro procedimiento almacenado sp_parametros_entrada y le pasamos el parámetro de entrada
CALL sp_parametros_entrada(2010);

-- Creamos nuestro procedimiento almacenado sp_parametros_entrada_salida que tendrá un parámetro de
-- Entrada y uno de salida
DELIMITER //
CREATE PROCEDURE sp_parametros_entrada_salida(IN anio_nacimiento INT, OUT edad INT)
	BEGIN
		DECLARE anio_actual INT DEFAULT 2023;
	
		SET edad = anio_actual - anio_nacimiento;
	END //
DELIMITER ;
-- Llamamos a nuestro procedimiento almacenado sp_parametros_entrada_salida y le pasamos el parametro de entrada y
-- Salida
CALL sp_parametros_entrada_salida(1990, @edad);
-- Imprimimos nuestra variable edad
SELECT @edad;

-- Creamos nuestro procedimiento almacenado que recibirá 3 parámetros, 2 de ellos serán de entrada/salida
-- Y el último será de salida.
-- Nuestro procedimiento almecenado simplemente se encargará de concatenar 2 strings e imprimiremos el
-- Resultado en la variable rdo
DELIMITER //
CREATE PROCEDURE sp_parametro_entradaYsalida(INOUT cadena1 VARCHAR(255), INOUT cadena2 VARCHAR(255), OUT rdo VARCHAR(255))
	BEGIN
  		SET cadena1 = "Hola";
  		SET cadena2 = 'Dani';
  		SET rdo = CONCAT(cadena1, ' ', cadena2);
	END //
DELIMITER ;
CALL youtube_db.sp_parametro_entradaYsalida(?,?,?);