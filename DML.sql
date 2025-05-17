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
# 18 Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT) 
SELECT nombre, precio FROM producto ORDER BY  precio ASC LIMIT 1;
# 19 Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT) 
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
# 20  Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.
SELECT nombre,codigo_fabricante FROM producto ORDER BY codigo_fabricante ASC; 
