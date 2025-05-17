USE db_tarea;

-- Insert_fabricante
CALL Insert_fabricante("Asus");
CALL insert_fabricante("Lenovo");
CALL insert_fabricante("Hewlett-Packard");
CALL insert_fabricante("Samsung");
CALL insert_fabricante("Seagate");
CALL insert_fabricante("Crucial");
CALL insert_fabricante("Gigabyte");
CALL insert_fabricante("Huawei");
CALL insert_fabricante("Xiaomi");
SELECT * FROM fabricante;

-- Insert_Producto


CALL insert_producto("Disco_duro_SATA3_1TB",86.99, 5);
CALL insert_producto("Memoria_RAM_DDR4_8GB",120, 6);
CALL insert_producto("Disco_SSDD_1_TB",150.99,4);
CALL insert_producto("GeForce_GTX_1050Ti",185,7);
CALL insert_producto("GeForce_GTX_1080_Xtreme",755,6);
CALL insert_producto("Monitor_24_LED_Full_HD",202,1);
CALL insert_producto("Monitor_27_LED_Full_HD",245.99,1);
CALL insert_producto("Portatil_Yoga_520",559,2);
CALL insert_producto("Portatil_Ideapd_320",444,2);
CALL insert_producto("Impresora_HP_Deskjet_3720",59.99,3);
CALL insert_producto("Impresora_HP_Laserjet_Pro_M26nw",180,3);
SELECT * FROM producto;

-- Consultas sobre una tabla
# 1. Lista el nombre de todos los productos que hay en la tabla producto.
SELECT nombre FROM producto;
# 2. Lista los nombres y los precios de todos los productos de la tabla producto.
SELECT nombre,precio FROM producto;
# 3. Lista todas las columnas de la tabla producto.
SELECT * FROM producto;
# 4. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
SELECT nombre ,precio ,(precio * 0.899) AS precio_euro FROM producto;
# 5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
SELECT nombre AS nombre_de_producto ,precio AS Dolares ,(precio * 0.899) AS Euros FROM producto;
# 6. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
SELECT UPPER(nombre) AS nombre FROM producto;
# 7. Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula
SELECT LOWER(nombre) AS nombre FROM producto;
# 8. Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
SELECT nombre, UPPER(LEFT(nombre, 2)) AS iniciales_mayuscula FROM fabricante;
# 9. Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
SELECT nombre , ROUND(precio) AS precio FROM producto;
# 10. Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
SELECT nombre, TRUNCATE(precio,0) AS precio_truncado FROM producto;
# 11. Lista el identificador de los fabricantes que tienen productos en la tabla producto.
SELECT codigo FROM producto;
# 12. Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.
SELECT DISTINCT codigo FROM producto;
# 13. Lista los nombres de los fabricantes ordenados de forma ascendente
SELECT nombre FROM fabricante ORDER BY nombre ASC;
# 14. Lista los nombres de los fabricantes ordenados de forma descendente.
SELECT nombre FROM fabricante ORDER BY nombre DESC;
# 15. Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;
# 16. Devuelve una lista con las 5 primeras filas de la tabla fabricante.
SELECT * FROM fabricante LIMIT 5;
# 17. Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.
SELECT * FROM fabricante LIMIT 2 OFFSET 3;
-- 18 Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT) 
SELECT nombre, precio FROM producto ORDER BY  precio ASC LIMIT 1;
-- 19 Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT) 
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
-- 20  Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
-- 21  Lista el nombre de los productos que tienen un precio menor o igual a 120€.
SELECT nombre FROM producto WHERE precio <= 120;
-- 22  Lista el nombre de los productos que tienen un precio mayor o igual a 400€. 
SELECT nombre FROM producto WHERE precio >= 400;
-- 23 Lista el nombre de los productos que no tienen un precio mayor o igual a 400€. 
SELECT nombre FROM producto WHERE precio < 400;
-- 24 Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN. 
SELECT nombre, precio FROM producto WHERE precio > 80 AND precio < 300;
-- 25 Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN. 
SELECT nombre, precio FROM producto WHERE precio BETWEEN 60 AND 200;
-- 26 Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6. 
SELECT nombre, precio, codigo_fabricante FROM producto WHERE precio > 200 AND codigo_fabricante = 6;
-- 27 Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN. 
SELECT nombre, codigo_fabricante FROM producto
WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;
-- 28 . Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN. 
SELECT nombre, codigo_fabricante FROM producto WHERE codigo_fabricante IN (1, 3, 5);
-- 29 Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100
-- el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos. 
SELECT nombre, precio * 100 AS céntimos FROM producto;
-- 30 Lista los nombres de los fabricantes cuyo nombre empiece por la letra S. 
SELECT nombre FROM fabricante WHERE nombre LIKE 'S%';
-- 31 Lista los nombres de los fabricantes cuyo nombre termine por la vocal e. 
SELECT nombre FROM fabricante WHERE nombre LIKE '%e';
-- 32 Lista los nombres de los fabricantes cuyo nombre contenga el carácter w. 
SELECT nombre FROM fabricante WHERE nombre LIKE '%w%';
-- 33 . Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres. 
SELECT nombre FROM fabricante WHERE LENGTH(nombre) = 4;
-- 34 Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre. 
SELECT nombre FROM producto WHERE nombre LIKE '%Portátil%';
-- 35 Devuelve una lista con el nombre de todos los productos que contienen la cadena 
-- Monitor en el nombre y tienen un precio inferior a 215 €. 
SELECT nombre FROM producto WHERE nombre LIKE '%Monitor%' AND precio < 215;
-- 36. Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. 
-- Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).
SELECT nombre, precio FROM producto WHERE precio >= 180
ORDER BY precio DESC, nombre ASC;

-- 1.1.4 Consultas multitabla (Composición interna)
# 1. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos.
-- Mysql 1
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo;
-- Mysql 2
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;
# 2. Devuelve una lista con el nombre del producto, precio y nombre de fabricante de todos los productos de la base de datos. Ordene el resultado por el nombre del fabricante, por orden alfabético.
-- Mysql 1
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo ORDER BY f.nombre ASC;
-- Mysql 2
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.nombre ASC;
# 3. Devuelve una lista con el identificador del producto, nombre del producto, identificador del fabricante y nombre del fabricante, de todos los productos de la base de datos.
-- Mysql 1
SELECT p.codigo AS producto_codigo, p.nombre, f.nombre AS fabricante, f.codigo AS fabricante_id FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo;
-- Mysql 2
SELECT p.codigo AS producto_id, p.nombre, f.codigo AS fabricante_id, f.nombre AS fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;
# 4. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más barato
-- Mysql 1
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo ORDER BY p.precio ASC LIMIT 1;
-- Mysql 2
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p  JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio ASC LIMIT 1;
# 5. Devuelve el nombre del producto, su precio y el nombre de su fabricante, del producto más caro.
-- Mysql 1
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo ORDER BY p.precio DESC LIMIT 1;
-- Mysql 2
SELECT p.nombre, p.precio, f.nombre AS fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio DESC LIMIT 1;
# 6. Devuelve una lista de todos los productos del fabricante Lenovo.
-- Mysql 1
SELECT p.* FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo and f.nombre = 'Lenovo';
-- Mysql 2
SELECT p.* FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo';
# 7. Devuelve una lista de todos los productos del fabricante Crucial que tengan un precio mayor que 200€.
-- Mysql 1
SELECT p.* FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Crucial' AND p.precio > 200;
-- Mysql 2
<<<<<<< HEAD
<<<<<<< HEAD

=======
SELECT p.* FROM producto p JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial' AND p.precio > 200;
>>>>>>> 6f4c23b5387bb914baf050bab43e0b2a86a117ca
# 8. Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett Packardy Seagate. Sin utilizar el operador IN. 
-- Mysql 1
SELECT p.nombre AS nombre_producto, f.nombre AS nombre_fabricante FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo   AND (f.nombre = 'Asus' OR f.nombre = 'Hewlett-Packard' OR f.nombre = 'Seagate');
-- Mysql 2
SELECT p.nombre AS nombre_producto, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus' OR f.nombre = 'Hewlett-Packard' OR f.nombre = 'Seagate';
# 9.Devuelve un listado con todos los productos de los fabricantes Asus, Hewlett Packardy Seagate. Utilizando el operador IN.
-- Mysql 1
SELECT p.nombre AS nombre_producto, f.nombre AS nombre_fabricante FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo   AND f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');
-- Mysql 2
SELECT p.nombre AS nombre_producto, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');
# 10.. Devuelve un listado con el nombre y el precio de todos los productos de los fabricantes cuyo nombre termine por la vocal e
-- Mysql 1
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo   AND f.nombre LIKE '%e';
-- Mysql 2
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE '%e';
# 11.. Devuelve un listado con el nombre y el precio de todos los productos cuyo nombre de fabricante contenga el carácter w en su nombre
-- Mysql 1
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo   AND f.nombre LIKE '%w%';
-- Mysql 2
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre LIKE '%w%';
# 12. Devuelve un listado con el nombre de producto, precio y nombre de fabricante, de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado  en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente) 
-- Mysql 1
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo   AND p.precio >= 180 ORDER BY p.precio DESC, p.nombre ASC;
-- Mysql 2
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo
WHERE p.precio >= 180 ORDER BY p.precio DESC, p.nombre ASC;

# 13. Devuelve un listado con el identificador y el nombre de fabricante, solamente de aquellos fabricantes que tienen productos asociados en la base de datos.
-- Mysql 1
SELECT DISTINCT f.codigo AS codigo_fabricante, f.nombre AS nombre_fabricante FROM fabricante f, producto p WHERE f.codigo = p.codigo_fabricante;
-- Mysql 2
SELECT DISTINCT f.codigo AS codigo_fabricante, f.nombre AS nombre_fabricante FROM fabricante f INNER JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 1.1.5 Consultas multitabla (Composición externa) 
-- Resuelva todas las consultas utilizando las cláusulas LEFT JOIN y RIGHT JOIN. 
# 1. Devuelve un listado de todos los fabricantes que existen en la base de datos, junto con los productos que tiene cada uno de ellos. El listado deberá mostrar también aquellos fabricantes que no tienen productos asociados. 
SELECT f.nombre AS nombre_fabricante, p.nombre AS nombre_producto FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante;

#2. Devuelve un listado donde sólo aparezcan aquellos fabricantes que no tienen ningún producto asociado. 
SELECT f.nombre AS nombre_fabricante FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.nombre IS NULL;

#3. ¿Pueden existir productos que no estén relacionados con un fabricante? Justifique su respuesta.
SELECT p.nombre AS nombre_producto FROM producto p LEFT JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.codigo IS NULL;

-- 1.1.6 Consultas resumen
# 1. Calcula el número total de productos que hay en la tabla productos. 
SELECT COUNT(*) AS total_productos FROM producto;
# 2.Calcula el número total de fabricantes que hay en la tabla fabricante. 
SELECT COUNT(*) AS total_fabricantes FROM fabricante;
# 3. Calcula el número de valores distintos de identificador de fabricante aparecen en la tabla productos. 
SELECT AVG(precio) AS precio_medio FROM producto;
# 4. Calcula la media del precio de todos los productos. 
 SELECT AVG(precio) AS precio_medio FROM producto;
# 5. Calcula el precio más barato de todos los productos. 
SELECT MIN(precio) AS precio_minimo FROM producto;
# 6. Calcula el precio más caro de todos los productos.  
SELECT MAX(precio) AS precio_maximo FROM producto;
# 7. Lista el nombre y el precio del producto más barato. 
SELECT nombre, precio FROM producto WHERE precio = (SELECT MIN(precio) FROM producto);
# 8. Lista el nombre y el precio del producto más caro. 
SELECT nombre, precio FROM producto WHERE precio = (SELECT MAX(precio) FROM producto);
# 9. Calcula la suma de los precios de todos los productos. 
SELECT SUM(precio) AS suma_precios FROM producto;
# 10. Calcula el número de productos que tiene el fabricante Asus. 
SELECT COUNT(*) AS numero_productos_asus FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus';
# 11. Calcula la media del precio de todos los productos del fabricante Asus. 
SELECT AVG(p.precio) AS precio_medio_asus FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus';
# 12. Calcula el precio más barato de todos los productos del fabricante Asus
SELECT MIN(p.precio) AS precio_minimo_asus FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus';
# 13. Calcula el precio más caro de todos los productos del fabricante Asus. 
SELECT MAX(p.precio) AS precio_maximo_asus FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus';
# 14. Calcula la suma de todos los productos del fabricante Asus. 
SELECT SUM(p.precio) AS suma_precios_asus FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus';
# 15. Muestra el precio máximo, precio mínimo, precio medio y el número total de productos que tiene el fabricante Crucial. 
SELECT MAX(p.precio) AS precio_maximo_crucial, MIN(p.precio) AS precio_minimo_crucial,     AVG(p.precio) AS precio_medio_crucial,
COUNT(*) AS numero_total_productos_crucial FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial';
# 16. Muestra el número total de productos que tiene cada uno de los fabricantes. El listado también debe incluir los fabricantes que no tienen ningún producto. El 
#resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número de productos que tiene. Ordene el resultado descendentemente por el número de productos. 
SELECT f.nombre AS nombre_fabricante,     COUNT(p.codigo) AS numero_productos FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante
GROUP BY f.nombre ORDER BY numero_productos DESC;
# 17. Muestra el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes. El resultado mostrará el nombre del fabricante junto con los datos que se solicitan. 
SELECT f.nombre AS nombre_fabricante,
    MAX(p.precio) AS precio_maximo,
    MIN(p.precio) AS precio_minimo,
    AVG(p.precio) AS precio_medio
FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.nombre;

# 18. Muestra el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. No es 
# necesario mostrar el nombre del fabricante, con el identificador del fabricante es suficiente. 
SELECT f.codigo AS codigo_fabricante,
    MAX(p.precio) AS precio_maximo,
    MIN(p.precio) AS precio_minimo,
    AVG(p.precio) AS precio_medio,
    COUNT(*) AS numero_total_productos FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.codigo HAVING AVG(p.precio) > 200;

# 19. Muestra el nombre de cada fabricante, junto con el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. Es necesario mostrar el nombre del fabricante. 
SELECT f.nombre AS nombre_fabricante,
    MAX(p.precio) AS precio_maximo,
    MIN(p.precio) AS precio_minimo,
    AVG(p.precio) AS precio_medio,
    COUNT(*) AS numero_total_productos FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.nombre HAVING AVG(p.precio) > 200;

# 20. Calcula el número de productos que tienen un precio mayor o igual a 180€. 
SELECT COUNT(*) AS numero_productos_alto_precio FROM producto WHERE precio >= 180;

# 21. Calcula el número de productos que tiene cada fabricante con un precio mayor o igual a 180€. 
SELECT f.nombre AS nombre_fabricante, COUNT(p.codigo) AS numero_productos_alto_precio FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.precio >= 180 GROUP BY f.nombre;

# 22. Lista el precio medio los productos de cada fabricante, mostrando solamente el identificador del fabricante. 
SELECT f.codigo AS codigo_fabricante, AVG(p.precio) AS precio_medio FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.codigo;

# 23. Lista el precio medio los productos de cada fabricante, mostrando solamente el nombre del fabricante. 
SELECT f.nombre AS nombre_fabricante, AVG(p.precio) AS precio_medio FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.nombre;

# 24. Lista los nombres de los fabricantes cuyos productos tienen un precio medio mayor o igual a 150€. 
SELECT f.nombre AS nombre_fabricante FROM fabricante f 
JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.nombre HAVING AVG(p.precio) >= 150;

# 25. Devuelve un listado con los nombres de los fabricantes que tienen 2 o más productos. 
SELECT f.nombre AS nombre_fabricante FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.nombre HAVING COUNT(p.codigo) >= 2;

# 26. Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. No es necesario mostrar el nombre de los fabricantes que no tienen productos que cumplan la condición.
SELECT f.nombre AS nombre_fabricante, COUNT(p.codigo) AS numero_productos_alto_precio FROM fabricante f
JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.precio >= 220 GROUP BY f.nombre;

# 27.  Devuelve un listado con los nombres de los fabricantes y el número de productos que tiene cada uno con un precio superior o igual a 220 €. El listado debe mostrar el 
# nombre de todos los fabricantes, es decir, si hay algún fabricante que no tiene productos con un precio superior o igual a 220€ deberá aparecer en el listado con un valor igual a 0 en el número de productos. 
SELECT f.nombre AS nombre_fabricante, COUNT(p.codigo) AS numero_productos_alto_precio FROM fabricante f
LEFT JOIN producto p ON f.codigo = p.codigo_fabricante AND p.precio >= 220 GROUP BY f.nombre;

# 28.  Devuelve un listado con los nombres de los fabricantes donde la suma del precio de todos sus productos es superior a 1000 €.
SELECT f.nombre AS nombre_fabricante FROM fabricante f 
JOIN producto p ON f.codigo = p.codigo_fabricante GROUP BY f.nombre HAVING SUM(p.precio) > 1000;

# 29. Devuelve un listado con el nombre del producto más caro que tiene cada fabricante. El resultado debe tener tres columnas: nombre del producto, precio y nombre del 
# fabricante. El resultado tiene que estar ordenado alfabéticamente de menor a mayor por el nombre del fabricante.
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante FROM producto p
JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE (p.codigo_fabricante, p.precio) IN (
SELECT codigo_fabricante, MAX(precio) FROM producto GROUP BY codigo_fabricante) ORDER BY nombre_fabricante ASC;

-- 1.1.7 Subconsultas (En la cláusula WHERE)
-- 1.1.7.1 Con operadores básicos de comparación
# 1. Devuelve todos los productos del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT p.*, f.nombre AS fabricante FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND f.nombre = 'Lenovo';
# 2. Devuelve todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. (Sin utilizar INNER JOIN).
SELECT p.*, f.nombre FROM producto p, fabricante f WHERE p.codigo_fabricante = f.codigo AND p.precio = (SELECT MAX( p2.precio) FROM producto p2, fabricante f2 WHERE p2.codigo_fabricante = f2.codigo AND f2.nombre = 'Lenovo');

<<<<<<< HEAD
=======
SELECT p.* FROM producto p JOIN fabricante f on p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial' AND p.precio > 200;
>>>>>>> c1019705cf45a549a27aec145383501ad70b3b64
=======
>>>>>>> 6f4c23b5387bb914baf050bab43e0b2a86a117ca

