DROP PROCEDURE IF EXISTS Informe;
DELIMITER //
CREATE PROCEDURE Informe()
BEGIN
SELECT dptos.nom,dptos.bloque,dptos.pto
FROM dptos
JOIN empleados ON dptos.idD = empleados.idD
GROUP BY dptos.nom
ORDER BY COUNT(empleados.idD) DESC,dptos.idD DESC;
END//