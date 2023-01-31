Use ejemplo;
DROP PROCEDURE IF EXISTS alta;
DELIMITER //
CREATE PROCEDURE alta (IN idE smallint(6), IN apellido VARCHAR(15),IN dir VARCHAR(30),IN fecha_alta DATE,IN salario float(6,2),IN idD tinyint(4))
BEGIN

--Que inserte todos los valores pasados por parametro
INSERT INTO empleados VALUES (idE,apellido,dir,fecha_alta,salario,idD);

END//
DELIMITER;

