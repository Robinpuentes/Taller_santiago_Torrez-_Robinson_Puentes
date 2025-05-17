DROP DATABASE IF EXISTS db_tarea;
CREATE DATABASE db_tarea;
USE db_tarea;
CREATE TABLE producto (
	codigo INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100),
    precio Double,
    codigo_fabricante INT(10)
);
CREATE TABLE fabricante (
	codigo INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100)
);
ALTER TABLE producto
ADD CONSTRAINT fk_codigo_fabricante 
FOREIGN KEY (codigo_fabricante)
REFERENCES fabricante(codigo);
