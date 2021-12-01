SELECT Empleados.apellido Empleado, Departamentos.nombre Departamento 
FROM Empleados LEFT JOIN Departamentos
ON Empleados.idDepartamento = Departamentos.id