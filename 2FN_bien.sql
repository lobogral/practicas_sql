PRAGMA foreign_keys = ON;

CREATE TABLE Empleados (
  Empleado TEXT,
  LugarTrabajo TEXT,
  PRIMARY KEY(Empleado)
);

CREATE TABLE HabilidadesEmpleados (
  Empleado TEXT,
  Habilidad TEXT,
  PRIMARY KEY(Empleado, Habilidad),
  FOREIGN KEY (Empleado) REFERENCES Empleados(Empleado)
);


INSERT INTO Empleados VALUES
("Jones", "114 Main Street"),
("Bravo", "73 Industrial Way"),
("Ellis", "73 Industrial Way"),
("Harrison", "73 Industrial Way");


INSERT INTO HabilidadesEmpleados VALUES 
("Jones", "Mecanografía"),
("Jones", "Taquigrafía"),
("Jones", "Tallado"),
("Bravo", "Limpieza ligera"),
("Ellis", "Alquimia"),
("Ellis", "Malabarismo"),
("Harrison", "Limpieza ligera");


SELECT Empleados.Empleado, Empleados.LugarTrabajo, HabilidadesEmpleados.Habilidad
FROM Empleados
INNER JOIN HabilidadesEmpleados ON Empleados.Empleado=HabilidadesEmpleados.Empleado;

DROP TABLE HabilidadesEmpleados;
DROP TABLE Empleados;