--Crear una funcion para obtener el departamento con mayor numero de empleados.En caso de haber varios el que tenga el idD mas alto
DROP FUNCTION IF EXISTS mayor;
DELIMITER //
CREATE FUNCTION mayor()
RETURNS VARCHAR(30)
BEGIN
DECLARE mayor VARCHAR(30);
SET mayor = (
SELECT dptos.nombre
FROM dptos
JOIN empleados ON dptos.idD = empleados.idD
GROUP BY dptos.nombre
ORDER BY COUNT(empleados.idD) DESC
LIMIT 1
);
RETURN mayor;
END//
DELIMITER ;



