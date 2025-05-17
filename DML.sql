USE db_tarea;
CALL Insert_fabricante("Asus");
CALL insert_fabricante("lenovo");
CALL insert_fabricante("Hewlett-Packard");
CALL insert_fabricante("Samsung");
CALL insert_fabricante("Seagate");
CALL insert_fabricante("Crucial");
CALL insert_fabricante("Gigabyte");
CALL insert_fabricante("Huawei");
CALL insert_fabricante("Xiaomi");
SELECT * FROM fabricante;


-- ------------- Insert_fabricante 

CALL insert_productos("Disco_duro_SATA3_1TB",86.99, 5);
CALL insert_productos("Memoria_RAM_DDR4_8GB",120, 6);
CALL insert_productos("Disco_SSDD_1_TB",150.99,4);
CALL insert_productos("GeForce_GTX_1050Ti",185,7);
CALL insert_productos("GeForce_GTX_1080_Xtreme",755,6);
CALL insert_productos("Monitor_24_LED_Full_HD",202,1);
CALL insert_productos("Monitor_27_LED_Full_HD",245.99,1);
CALL insert_productos("Portatil_Yoga_520",559,2);
CALL insert_productos("Portatil_Ideapd_320",444,2);
CALL insert_productos("Impresora_HP_Deskjet_3720",59.99,3);
CALL insert_productos("Impresora_HP_Laserjet_Pro_M26nw",180,3);
SELECT * FROM productos;
# Ejercicio 1
SELECT nombre FROM productos;
# Ejercicio 2
SELECT nombre,precio FROM productos;
# Ejercicio 3
SELECT nombre ,precio AS precio_dolar,(precio * 0.899) AS precio_euro FROM productos;
# Ejercicio 4
SELECT nombre AS nombre_de_producto ,precio AS Dolares ,(precio * 0.899) AS Euro FROM productos;

SELECT upper(nombre) AS "Nombre Mayuscula",  precio FROM productos;

-- 18 Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT) 
SELECT nombre, precio FROM productos ORDER BY  precio ASC LIMIT 1;

-- 19 Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT) 
SELECT nombre, precio FROM productos ORDER BY precio DESC LIMIT 1;

-- 20  Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
SELECT nombre FROM productos WHERE codigo_fabricante = 2;

-- 21  Lista el nombre de los productos que tienen un precio menor o igual a 120€.
SELECT nombre FROM productos WHERE precio <= 120;

-- 22  Lista el nombre de los productos que tienen un precio mayor o igual a 400€. 
SELECT nombre FROM productos WHERE precio >= 400;

-- 23 Lista el nombre de los productos que no tienen un precio mayor o igual a 400€. 
SELECT nombre FROM productos WHERE precio < 400;

-- 24 Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN. 
SELECT nombre, precio FROM productos WHERE precio > 80 AND precio < 300;

-- 25 Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN. 
SELECT nombre, precio FROM productos WHERE precio BETWEEN 60 AND 200;

-- 26 Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6. 
SELECT nombre, precio, codigo_fabricante FROM productos WHERE precio > 200 AND codigo_fabricante = 6;

-- 27 Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN. 
SELECT nombre, codigo_fabricante FROM productos
WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;

-- 28 . Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN. 
SELECT nombre, codigo_fabricante FROM productos WHERE codigo_fabricante IN (1, 3, 5);

-- 29 Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100
-- el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos. 
SELECT nombre, precio * 100 AS céntimos FROM productos;

-- 30 Lista los nombres de los fabricantes cuyo nombre empiece por la letra S. 
SELECT nombre FROM fabricante WHERE nombre LIKE 'S%';

-- 31 Lista los nombres de los fabricantes cuyo nombre termine por la vocal e. 
SELECT nombre FROM fabricante WHERE nombre LIKE '%e';

-- 32 Lista los nombres de los fabricantes cuyo nombre contenga el carácter w. 
SELECT nombre FROM fabricante WHERE nombre LIKE '%w%';

-- 33 . Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres. 
SELECT nombre FROM fabricante WHERE LENGTH(nombre) = 4;

-- 34 Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre. 
SELECT nombre FROM productos WHERE nombre LIKE '%Portátil%';

-- 35 Devuelve una lista con el nombre de todos los productos que contienen la cadena 
-- Monitor en el nombre y tienen un precio inferior a 215 €. 
SELECT nombre FROM productos WHERE nombre LIKE '%Monitor%' AND precio < 215;

-- 36. Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. 
-- Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).
SELECT nombre, precio FROM productos WHERE precio >= 180
ORDER BY precio DESC, nombre ASC;








