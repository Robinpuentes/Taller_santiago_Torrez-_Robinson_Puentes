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
SELECT nombre,codigo_fabricante FROM productos ORDER BY codigo_fabricante ASC; 

