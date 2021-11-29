SELECT Empleados.apellido Empleado, Departamentos.nombre Departamentos
FROM Empleados
INNER JOIN Departamentos ON Departamentos.id=Empleados.idDepartamento;