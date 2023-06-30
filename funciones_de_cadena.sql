-- -------------------------------- FUNCIONES DE CADENA ------------------------------------	

-- Mostramos la frase "curso de sql" asignandole el alias funciones_sql
SELECT ("CURSO DE SQL") AS FUNCIONES_SQL;

-- Transformamos la frase "curso de sql" a minuscula con la funcion lower
SELECT LOWER("CURSO DE SQL") AS MINUSCULA_LOWER;

-- Transformamos la frase "curso de sql" a minuscula con la funcion lcase
SELECT LCASE("CURSO DE SQL") AS MINUSCULA_LCASE;

-- Transformamos la frase "curso de sql" a mayuscula con la funcion upper
SELECT UPPER("curso de sql") AS MAYUSCULA_UPPER;

-- Transformamos la frase "curso de sql" a mayuscula con la funcion ucase
SELECT UCASE("curso de sql") AS MAYUSCULA_UCASE;

-- Seleccionamos los primeros 8 caracteres de la frase "curso de sql"
SELECT LEFT("CURSO DE SQL", 8) AS FUNCION_LEFT;

-- Seleccionamos los últimos 6 caracteres de la frase "curso de sql"
SELECT RIGHT("CURSO DE SQL", 6) AS FUNCION_RIGHT;

-- Contamos la longitud de la frase "curso de sql"
SELECT LENGTH("CURSO DE SQL") AS FUNCION_LENGTH;

-- Repetimos 2 veces la frase "curso de sql"
SELECT REPEAT("CURSO DE SQL", 2) AS FUNCION_REPEAT;

-- Invertimos el orden de derecha a izquierda de la frase "curso de sql"
SELECT REVERSE("CURSO DE SQL") AS FUNCION_REVERSE; 

-- Reemplazamos la letra s por las letras "ss" de la frase "curso de sql"
SELECT REPLACE("CURSO DE SQL", "S", "SS") AS FUNCION_REPLEACE;

-- Eliminamos los espacios en blanco que estan a la izquierda de la frase "curso de sql"
SELECT LTRIM("     CURSO DE SQL") AS FUNCION_LTRIM;

-- Eliminamos los espacios en blanco que estan a la derecha de la frase "curso de sql"
SELECT RTRIM("CURSO DE SQL                    ") AS FUNCION_RTRIM;

-- Eliminamos los espacios en blanco que estan a la izquierda y derecha
-- de la frase "curso de sql"
SELECT TRIM("     CURSO DE SQL         ") AS FUNCION_TRIM;

-- Concatenamos los strings "CURSO ", " DE ", "SQL DESDE CERO"
SELECT CONCAT("CURSO ", " DE ", "SQL DESDE CERO") AS FUNCION_CONCAT;

-- Concatenamos los strings "CURSOS", "SQL", "CURSO_DE_SQL.SQL" con el separador /
SELECT CONCAT_WS("/", "CURSOS", "SQL", "CURSO_DE_SQL.SQL") AS FUNCION_CONCAT_WS;

-- Concatenamos los strings "CURSOS", "SQL", "CURSO_DE_SQL.SQL" con el separador /
-- y lo convertimos en minuscula
SELECT LOWER(CONCAT_WS("/", "CURSOS", "SQL", "CURSO_DE_SQL.SQL")) AS FUNCION_CONCAT_WS;