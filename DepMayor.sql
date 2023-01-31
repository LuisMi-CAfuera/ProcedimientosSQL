DROP PROCEDURE IF EXISTS DepMayor;
DELIMITER //
CREATE PROCEDURE DepMayor(OUTER mayor VARCHAR(30))
BEGIN
SET mayor = (
SELECT dptos.nombre
FROM dptos
JOIN empleados ON dptos.idD = empleados.idD
GROUP BY dptos.nombre
ORDER BY COUNT(empleados.idD) DESC
LIMIT 1
);
END//
DELIMITER ;

