-- Proceso insert_productos
USE `db_tarea`;
DROP procedure IF EXISTS `insert_productos`;

DELIMITER $$
USE `db_tarea`$$
CREATE DEFINER=root@localhost PROCEDURE insert_producto(
IN nombre VARCHAR (100),
IN precio double,
IN codigo_fabricante INT(10)
)
BEGIN
INSERT INTO producto(nombre, precio,codigo_fabricante)
VALUES (nombre, precio, codigo_fabricante);

END$$

DELIMITER ;


-- Proceso insert_fabricante
USE `db_tarea`;
DROP procedure IF EXISTS `Insert_fabricante`;

DELIMITER $$
USE `db_tarea`$$
CREATE DEFINER=root@localhost PROCEDURE Insert_fabricante(
IN nombre VARCHAR (100)
)
BEGIN
INSERT INTO fabricante(nombre)
VALUES(nombre);

END$$

DELIMITER ;

