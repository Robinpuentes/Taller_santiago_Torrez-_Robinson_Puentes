CALL insert_fabricante(1, "Asus");
CALL insert_fabricante(2, "lenovo");
CALL insert_fabricante(3, "Hewlett-Packard");
CALL insert_fabricante(4, "Samsung");
CALL insert_fabricante(5, "Seagate");
CALL insert_fabricante(6, "Crucial");
CALL insert_fabricante(7, "Gigabyte");
CALL insert_fabricante(8, "Huawei");
CALL insert_fabricante(9, "Xiaomi");
SELECT * FROM fabricante;


-- ------------- Insert_fabricante 

CALL insert_productos(1,"Disco_duro_SATA3_1TB",86.99, 5);
CALL insert_productos(2,"Memoria_RAM_DDR4_8GB",120, 6);
CALL insert_productos(3,"Disco_SSDD_1_TB",150.99,4);
CALL insert_productos(4,"GeForce_GTX_1050Ti",185,7);
CALL insert_productos(5,"GeForce_GTX_1080_Xtreme",755,6);
CALL insert_productos(6,"Monitor_24_LED_Full_HD",202,1);
CALL insert_productos(7,"Monitor_27_LED_Full_HD",245.99,1);
CALL insert_productos(8,"Portatil_Yoga_520",559,2);
CALL insert_productos(9,"Portatil_Ideapd_320",444,1);
CALL insert_productos(10,"Impresora_HP_Deskjet_3720",59.99,3);
CALL insert_productos(11,"Impresora_HP_Laserjet_Pro_M26nw",180,3);

# Ejercicio 1
SELECT nombre FROM productos;
# Ejercicio 2
SELECT nombre,precio FROM productos;
# Ejercicio 3
SELECT nombre,precio AS precio_dolar,(precio * 0.899) AS precio_euro FROM productos;
# Ejercicio 4


