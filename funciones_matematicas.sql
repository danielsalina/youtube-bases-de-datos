-- ------------------------------ ALGUNAS FUNCIONES MATEMÁTICAS --------------------------

-- Sumamos 10 + 10
SELECT 10 + 10 AS SUMA;

-- Restamos 10 - 7
SELECT 10 - 7 AS RESTA;

-- Multiplicamos 10 * 3
SELECT 10 * 3 AS MULTIPLICACIÓN;

-- Dividimos 10 / 2
SELECT 10 / 2 AS DIVISIÓN;

-- Obtenemos el modulo de 10 / 3
SELECT MOD(10,3) AS MÓDULO;

-- Redondeamos un numero decimal hacia arriba
SELECT CEILING(10.9) AS REDONDEO_HACIA_ARRIBA;

-- Redondeamos un numero decimal hacia abajo
SELECT FLOOR(10.9) AS REDONDEO_HACIA_ABAJO;

-- Redondeamos un decimal hacia arriba cuando el punto flotante es igual mayor que 5
-- Y redondeamos hacia abajo cuando el punto flotante es igual o menor que 4
SELECT ROUND(10.4) AS REDONDEO_CON_ROUND;

-- Obtenemos la potencia de 5 * 5
SELECT POWER(5,2) AS POTENCIA;

-- Obtenemos la raiz cuadrada de 9
SELECT SQRT(9) AS RAÍZ_CUADRADA;