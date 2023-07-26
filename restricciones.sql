-- ----------------------------------- RESTRICCIONES -----------------------------------------

-- CASCADE: Cuando se define una restricción FOREIGN KEY con la opción CASCADE, cualquier operación
-- de actualización o eliminación en la tabla padre se propagará automáticamente a la tabla hija. 
-- Es decir, si se actualiza o elimina una fila en la tabla padre, las filas correspondientes en la 
-- tabla hija también se actualizarán o eliminarán automáticamente.
CREATE TABLE Usuarios (
	id_usuario INT PRIMARY KEY,
	nombre_usuario VARCHAR(50)
);

INSERT INTO Usuarios (id_usuario, nombre_usuario) VALUES (1,"fulano"), (2,"mengano"), (3,"Sutano");

CREATE TABLE pedidos (
	id_pedido INT PRIMARY KEY,
	id_usuario INT,
	informacion_pedido VARCHAR(255),
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO pedidos (id_pedido, id_usuario, informacion_pedido) VALUES (1,1,"Hamburguesa 4*4"),
(2,1,"Papel de baño"), (3,1,"Sopa ligera"), (4,1,"Manzana"), (5,2,"Ensalada de frutas");

UPDATE Usuarios SET id_usuario = 5 WHERE id_usuario = 1;

DELETE FROM Usuarios WHERE id_usuario = 5;

-- SET NULL: Con la restricción SET NULL, si se realiza una operación de actualización o eliminación en
-- la tabla padre, los valores correspondientes en la tabla hija se establecerán en NULL. Esto significa
-- que si se actualiza o elimina una fila en la tabla padre, la columna en la tabla hija que tiene la
-- restricción FOREIGN KEY se establecerá en NULL.
CREATE TABLE pedidos (
	id_pedido INT PRIMARY KEY,
	id_usuario INT,
	informacion_pedido VARCHAR(255),
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario) ON DELETE SET NULL
);

DELETE FROM Usuarios WHERE id_usuario = 1;


-- RESTRICT: Con la restricción RESTRICT, se impide cualquier operación de actualización o eliminación
-- que viole la restricción FOREIGN KEY. Si se intenta realizar una operación que rompa la restricción,
-- se producirá un error y se bloqueará la operación.
CREATE TABLE pedidos (
	id_pedido INT PRIMARY KEY,
	id_usuario INT,
	informacion_pedido VARCHAR(255),
	FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario) ON DELETE RESTRICT ON UPDATE RESTRICT
);

DELETE FROM Usuarios WHERE id_usuario = 1;