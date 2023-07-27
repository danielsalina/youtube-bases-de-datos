-- ----------------------------------- TRANSACCIONES -----------------------------------------

BEGIN; -- Inicia una transacción. Después de esta instrucción, todas las operaciones siguientes 
-- formarán parte de la transacción actual.
	INSERT INTO usuarios (id_usuario, nombre_usuario) VALUES (4,"Coné");
	DELETE FROM usuarios WHERE id_usuario = 1;
	INSERT INTO pedidos (id_pedido, id_usuario, informacion_pedido) VALUES (6,4,"Una botella de agua");
	INSERT INTO categorias (id_categoria, nombre_categoria) VALUES (5,"Golosinas");

COMMIT; -- Confirma una transacción y aplica los cambios realizados. Después de esta instrucción,
-- los cambios se vuelven permanentes.

ROLLBACK; -- Cancela una transacción y deshace todos los cambios realizados desde el último punto
-- de confirmación. La base de datos vuelve al estado anterior a la transacción.