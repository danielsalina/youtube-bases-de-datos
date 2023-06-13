-- -------------------------------- TRABAJANDO CON INSERT ----------------------------

-- Manera 1 (menos conocida)
INSERT INTO clientes VALUES (0, "pepe2", "pepito2", "pepe@pepito.com2", 55555555, "desconocida");

-- Manera 2 (medianamente conocida)
INSERT INTO clientes SET
	nombre="juan", apellido="mengano", correo="mengano@gmail.com2", telefono=555,
	direccion="desconocida también";

-- Manera 3 (la más conocida)
INSERT INTO clientes (apellido, correo, telefono, direccion, nombre)
	VALUES ("sutano", "fulano@lito.com22", 77777777, "No sé", "mengano"),

INSERT INTO clientes (apellido, correo, telefono, direccion, nombre)
	VALUES ("sutano", "fulano@lito.com22", 77777777, "No sé", "mengano"),
			("sutano3", "fulano@lito.com3", 3333, "No sé3", "mengano3"),
			("sutano4", "fulano@lito.com4", 4333, "No sé4", "mengano4"),
			("sutano5", "fulano@lito.com5", 75777, "No sé5", "mengano5"),
			("sutano6", "fulano@lito.com6", 3363, "No sé6", "mengano6"),
			("sutano9", "fulano@lito.com9", 4339, "No sé94", "mengano9");